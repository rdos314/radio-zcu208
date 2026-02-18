`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module: comp_burst
//
// Description:
// -----------
// Burst analysis, alignment, and pre-conditioning stage operating on envelope
// and phase data delivered in groups of four samples per cycle.
//
// The module buffers one complete burst in internal BRAM and performs a
// two-pass analysis over the envelope data to detect the burst region and
// characterize its peak. Phase data is processed in parallel and de-trended
// using an initial frequency estimate, followed by a local frequency correction
// derived from phase differences near the burst maximum.
//
// The output of this block is a cleaned, stationary phase series and aligned
// envelope data suitable for accurate mean and variance estimation in the
// downstream statistics module.
//
//
// High-level operation:
// ---------------------
// 1) Burst buffering
//    - Incoming envelope and phase samples are written to BRAM as groups of
//      four samples ("four-sample words").
//    - curr_size tracks the number of four-sample words in the burst.
//
// 2) Envelope scanning (two concurrent passes)
//    - Upward scan   : from burst start towards burst end
//    - Downward scan : from burst end towards burst start
//
//    During scanning the following are detected:
//      - First envelope sample >= min_env   (burst start index)
//      - Last  envelope sample >= min_env   (burst end index)
//      - Maximum envelope value and its position (both scans)
//
//    Both scans always run to the opposite end of the burst to avoid early
//    termination artifacts.
//
// 3) Burst characterization
//    From the scan results, the module computes:
//      - Absolute sample number of the detected burst start
//      - Burst size (in samples)
//      - Burst-relative position of the envelope maximum
//      - Maximum envelope value
//
// 4) Phase prediction and de-trending
//    - Phase samples are de-trended using a predicted phase accumulator:
//          pred_phase[n+1] = pred_phase[n] + in_freq
//    - Phase difference is formed as:
//          phase_diff = measured_phase - predicted_phase
//
//    This removes the bulk linear phase ramp associated with the initial
//    frequency estimate.
//
// 5) Local frequency correction
//    - A small window of phase difference samples is selected around the
//      envelope maximum (highest SNR region).
//    - The phase drift across 8 consecutive one_to_four output packets is
//      measured:
//          df_diff = phase_diff[start] - phase_diff[start + 8]
//
//    - The frequency is corrected using:
//          freq_corrected = freq_initial - (df_diff / 8)
//
//    This removes residual frequency error so the phase difference series is
//    approximately stationary (zero mean, bounded variance).
//
// 6) Data handoff
//    - Corrected frequency, envelope data, phase data, and metadata are passed
//      to the downstream statistics module (comp_stat).
//
//
// Data format and assumptions:
// -----------------------------
// - Envelope samples are signed 16-bit values but assumed non-negative
//   (bit[15] must remain zero; overflow is not expected).
// - Phase samples are signed 20-bit values.
// - Input samples always arrive in groups of four.
// - Burst size is always a multiple of four samples.
// - Internal BRAM stores data in four-sample words.
//
// curr_size represents the number of four-sample words in the burst, not the
// number of individual samples.
//
//
// Sample indexing:
// ----------------
// - The input provides the absolute sample number of the first sample in the
//   burst.
// - The module internally increments this value during scanning and outputs
//   the absolute sample number corresponding to the detected burst start.
// - Sample numbering is handled as a 64-bit integer using chained 16-bit
//   counters.
//
//
// Pipeline and timing notes:
// --------------------------
// - BRAM read and comparison introduce a fixed two-cycle latency.
// - Scan termination compares against index value '2' to compensate for this
//   pipeline delay.
// - Envelope scanning, phase de-trending, and data streaming overlap in time.
// - Frequency correction is computed once per burst and applied before
//   statistics processing begins.
// - The design is intended to meet high clock rates (≈500 MHz) without
//   dividers or long combinational paths.
//
//
// Outputs:
// --------
// - err_no_data : Asserted if no envelope sample exceeds min_env.
// - Corrected envelope and phase data are streamed internally to downstream
//   processing blocks.
// - Burst metadata (sample index, size, max position, max envelope, corrected
//   frequency) is forwarded alongside the data.
//
//
// Numerical considerations:
// -------------------------
// - Phase variance is computed on de-trended, frequency-corrected phase data
//   to avoid variance growth caused by residual linear phase ramps.
// - Frequency correction is derived from high-SNR samples near the envelope
//   maximum to minimize noise sensitivity.
// - No catastrophic cancellation occurs in variance calculations when the
//   downstream mean is near zero.
//
//------------------------------------------------------------------------------
// Author:      Leif Ekblad
//------------------------------

module comp_burst(
    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

	input wire rt_clk,
	input wire rt_start,
	input wire [61:0] rt_sample,
    input wire [19:0] rt_freq,
    input wire [15:0] rt_angle,

	input wire rt_wr,    
    input wire [15:0] rt_env_0, 
    input wire [15:0] rt_env_1, 
    input wire [15:0] rt_env_2,  
    input wire [15:0] rt_env_3,  
  
    input wire [19:0] rt_phase_0,
    input wire [19:0] rt_phase_1,
    input wire [19:0] rt_phase_2,
    input wire [19:0] rt_phase_3,
    
    input wire clk,
    input wire reset,
    output reg idle
);

    wire [39:0] config_data_adr_in;
    assign config_data_adr_in[7:0] = config_adr;
    assign config_data_adr_in[39:8] = config_data;

    wire [39:0] config_data_adr_out;
    wire [7:0] cfg_adr = config_data_adr_out[7:0];
    wire [31:0] cfg_data = config_data_adr_out[39:8];
    reg cfg_rd;
    wire cfg_empty;
    
    reg [15:0] min_env;

    reg err_no_data;

	reg rt_meta_wr;
	reg [97:0] rt_meta_in;

	reg rt_meta_rd;
	wire rt_meta_empty;
	wire [97:0] rt_meta_out;

	reg rt_data_wr;
	reg [143:0] rt_data_in;

	reg rt_data_rd;
	wire rt_data_empty;
	wire [143:0] rt_data_out;

	reg burst;
	reg [61:0] in_sample;
    reg [19:0] in_freq;
    reg [15:0] in_angle;
    
    reg [63:0] env_in;
    reg [79:0] phase_in;
    reg [8:0] wr_ptr_in;
    reg mem_wr;
	reg pend_start;
    reg scan_start;

    (* ram_style = "block" *) reg [63:0] mem_env_up [0:511];
    (* ram_style = "block" *) reg [63:0] mem_env_down [0:511];
    (* ram_style = "block" *) reg [79:0] mem_phase [0:511];

    reg [8:0] wr_ptr;
    
    reg [16:0] env_sum_lsb_0;
    reg [16:0] env_sum_lsb_1;
    reg [16:0] env_sum_lsb_2;
    reg [16:0] env_sum_lsb_3;
    
    reg [8:0] env_sum_msb_0;
    reg [8:0] env_sum_msb_1;
    reg [8:0] env_sum_msb_2;
    reg [8:0] env_sum_msb_3;

    reg [1:0] mean_stage;

    reg [16:0] env_sum_lsb_01;
    reg [16:0] env_sum_lsb_23;
    reg [9:0] env_sum_msb_01;
    reg [9:0] env_sum_msb_23;

    reg [16:0] env_sum_lsb;
    reg [9:0] env_sum_msb;
    reg [23:0] env_sum;

	reg div_start;
	wire div_done;
	wire [39:0] div_result;
	wire [15:0] div_mean = div_result[31:16];
	reg mean_done;
	reg [15:0] mean;
        
    reg [8:0] env_up_ptr;
    reg [63:0] env_up;
    reg [10:0] env_up_adr;
    reg [10:0] env_up_ind;
    reg [15:0] env_up_val;
    wire [15:0] env_up_0 = env_up[15:0];
    wire [15:0] env_up_1 = env_up[31:16];
    wire [15:0] env_up_2 = env_up[47:32];
    wire [15:0] env_up_3 = env_up[63:48];

    reg [8:0] env_down_ptr;
    reg [63:0] env_down;
    reg [10:0] env_down_adr;
    reg [10:0] env_down_ind;
    reg [15:0] env_down_val;
    wire [15:0] env_down_0 = env_down[15:0];
    wire [15:0] env_down_1 = env_down[31:16];
    wire [15:0] env_down_2 = env_down[47:32];
    wire [15:0] env_down_3 = env_down[63:48];

    reg [79:0] phase_out;
    reg [10:0] phase_ind;
    reg [19:0] phase_val;
	reg [21:0] pred_phase;
    wire [19:0] phase_0 = phase_out[19:0];
    wire [19:0] phase_1 = phase_out[39:20];
    wire [19:0] phase_2 = phase_out[59:40];
    wire [19:0] phase_3 = phase_out[79:60];

    reg [15:0] sample_counter_0;
    reg [15:0] sample_counter_1;
    reg [15:0] sample_counter_2;
    reg [15:0] sample_counter_3;
    reg sample_ov_0;
    reg sample_ov_1;
    reg sample_ov_2;

    reg filling;
    reg complete_1;
    reg complete_2;
	reg complete_3;
   
    reg run_env_start;
    reg run_env_end;
    reg run_env;
    reg load_env;
	reg comp_env;
	reg load_env_start;
	reg inc_env_sample;

    reg [8:0] curr_size;

    reg env_has_start;
    reg [10:0] env_start_ind;
    reg [10:0] env_up_max_ind;
    reg [15:0] env_up_max_val;

    reg env_has_end;
    reg [10:0] env_end_ind;
    reg [10:0] env_down_max_ind;
    reg [15:0] env_down_max_val;

	reg df_active;
	reg df_done;
	reg [8:0] df_start;
	reg [8:0] df_ind;
	reg [3:0] df_count;
	reg [19:0] df_low;
	reg [19:0] df_diff;

	reg [63:0] p2_sample;
    reg [19:0] p2_freq;
    reg [15:0] p2_angle;
	reg [10:0] p2_size;
	reg [10:0] p2_max_pos;
	reg [15:0] p2_max_env;
    
    reg p2_wr;

    reg [15:0] p2_env;
    reg [15:0] p2_phase;
	reg [19:0] p2_phase_diff;

    wire p2_idle;
    wire p2_active;
    reg p2_done;

    wire [15:0] p2_env_0;
    wire [15:0] p2_env_1;
    wire [15:0] p2_env_2;
    wire [15:0] p2_env_3;

    wire [15:0] p2_phase_0;
    wire [15:0] p2_phase_1;
    wire [15:0] p2_phase_2;
    wire [15:0] p2_phase_3;

    wire [19:0] p2_phase_diff_0;
    wire [19:0] p2_phase_diff_1;
    wire [19:0] p2_phase_diff_2;
    wire [19:0] p2_phase_diff_3;

	reg [63:0] p3_sample;
    reg [19:0] p3_freq;
    reg [15:0] p3_angle;
	reg [10:0] p3_size;
	reg [10:0] p3_max_pos;
	reg [15:0] p3_max_env;

    wire p3_idle;
    wire p3_active;
    
    wire [10:0] p3_pos;
    wire [15:0] p3_env;
    wire [15:0] p3_phase;
    
    wire p3_done;
    wire [31:0] p3_env_sum;
    wire [47:0] p3_env_sum2;
    wire [31:0] p3_phase_sum;
    wire [47:0] p3_phase_sum2;

    reg [63:0] temp_sample;
    reg [19:0] temp_freq;
    reg [15:0] temp_angle;
    reg [15:0] temp_size;
	reg [15:0] temp_mean;
	reg temp_active;
    reg [10:0] temp_pos;
    reg [15:0] temp_env;
    reg [15:0] temp_phase;    
	
	reg [15:0] env_diff;
	reg [15:0] phase_diff;
	reg stat_reset;
	wire [47:0] env_sum_p;
	wire [47:0] env_sqr_p;
    wire [47:0] env_sum2_p;
	wire [47:0] phase_sum_p;
	wire [47:0] phase_sqr_p;
    wire [47:0] phase_sum2_p;
    
    reg stat_active;
    reg [2:0] load_stat_delay;
    reg [23:0] stat_env_sum;
    reg [47:0] stat_env_sqr;
    reg [23:0] stat_phase_sum;
    reg [47:0] stat_phase_sqr;
    
    reg [2:0] stat_sqr_delay;
    reg stat_div_sum_start;
    reg stat_div_sum_pend;
    reg stat_div_sqr_start;
    reg stat_div_sqr_pend;
    wire stat_env_div_sum_done;
    wire stat_env_div_sqr_done;
    wire [39:0] stat_env_div_sum_data;
    wire [15:0] stat_env_div_sum = stat_env_div_sum_data[31:16];
    wire [63:0] stat_env_div_sqr_data;
    wire [47:0] stat_env_div_sqr = stat_env_div_sqr_data[63:16];
    wire stat_phase_div_sum_done;
    wire stat_phase_div_sqr_done;
    wire [39:0] stat_phase_div_sum_data;
    wire [15:0] stat_phase_div_sum = stat_phase_div_sum_data[31:16];
    wire [63:0] stat_phase_div_sqr_data;
    wire [47:0] stat_phase_div_sqr = stat_phase_div_sqr_data[63:16];

    reg [2:0] stat_nvar_delay;
    reg [16:0] stat_env_nvar0;
    reg [16:0] stat_env_nvar1;
    reg [15:0] stat_env_nvar2;
    reg [31:0] stat_env_nvar;
    reg [16:0] stat_phase_nvar0;
    reg [16:0] stat_phase_nvar1;
    reg [15:0] stat_phase_nvar2;
    reg [31:0] stat_phase_nvar;

	reg [63:0] p4_sample;
    reg [19:0] p4_freq;
    reg [15:0] p4_angle;
	reg [10:0] p4_size;
	reg [15:0] p4_max_env;
	reg [15:0] p4_env_mean;
	reg [15:0] p4_phase_mean;
	
	fifo_config fifo_config_i (
		.rst(reset),                   // input wire rst
		.wr_clk(config_clk),           // input wire wr_clk
		.rd_clk(clk),                  // input wire rd_clk
		.din(config_data_adr_in),      // input wire [39 : 0] din
		.wr_en(config_wr),             // input wire wr_en
		.rd_en(cfg_rd),                // input wire rd_en
		.dout(config_data_adr_out),    // output wire [39 : 0] dout
		.empty(cfg_empty)              // output wire empty
	);

	fifo_stat_meta fifo_rt_meta_i (
		.rst(reset),           // input wire rst
		.wr_clk(rt_clk),       // input wire wr_clk
		.rd_clk(clk),          // input wire rd_clk
		.din(rt_meta_in),      // input wire [97 : 0] din
		.wr_en(rt_meta_wr),    // input wire wr_en
		.rd_en(rt_meta_rd),    // input wire rd_en
		.dout(rt_meta_out),    // output wire [97 : 0] dout
		.empty(rt_meta_empty)  // output wire empty
	);

	fifo_stat_data fifo_rt_data_i (
		.rst(reset),       	     // input wire rst
		.wr_clk(rt_clk),	     // input wire wr_clk
		.rd_clk(clk),		     // input wire rd_clk
		.din(rt_data_in),        // input wire [143 : 0] din
		.wr_en(rt_data_wr),      // input wire wr_en
		.rd_en(rt_data_rd),      // input wire rd_en
		.dout(rt_data_out),      // output wire [143 : 0] dout
		.empty(rt_data_empty)    // output wire empty
	);

	div_burst_mean div_mean_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(div_start),               // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata(curr_size),                // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(div_start),              // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata(env_sum),                 // input wire [23 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(div_done),                   // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(div_result)                   // output wire [39 : 0] m_axis_dout_tdata
	);

	one_to_four p2_i (
		.clk(clk),
        .reset(reset),
        .wr(p2_wr),
        .env(p2_env),
        .phase(p2_phase),
		.phase_diff(p2_phase_diff),
        .size(p2_size),
        .read_back(p2_done),
		.allowed(p3_idle),
        .idle(p2_idle),
        .active(p2_active),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .phase_diff_0(p2_phase_diff_0),
        .phase_diff_1(p2_phase_diff_1),
        .phase_diff_2(p2_phase_diff_2),
        .phase_diff_3(p2_phase_diff_3)
	);

	comp_stat p3_i (
		.clk(clk),
        .reset(reset),
        .wr(p2_active),
        .freq(p3_freq),
        .size(p3_size),
        .max_pos(p3_max_pos),
        .est_mean(mean),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .idle(p3_idle),
        .active(p3_active),
        .pos(p3_pos),
        .env(p3_env),
        .phase(p3_phase),
        .done(p3_done),
        .env_sum(p3_env_sum),
        .env_sum2(p3_env_sum2),
        .phase_sum(p3_phase_sum),
        .phase_sum2(p3_phase_sum2)
	);
	
    dsp_add16 add_env_i (
        .CLK(clk),           // input wire CLK
        .SCLR(stat_reset),   // input wire SCLR
        .A(env_diff),        // input wire [15 : 0] A
        .P(env_sum_p)        // output wire [47 : 0] P
    );

    dsp_sqr16 sqr_env_i (
        .CLK(clk),           // input wire CLK
        .SCLR(stat_reset),   // input wire SCLR
        .A(env_diff),        // input wire [15 : 0] A
        .P(env_sqr_p)        // output wire [47 : 0] P
    );

    mul_stat24 sum2_env_i (
        .CLK(clk),               // input wire CLK
        .A(stat_env_sum),        // input wire [23 : 0] A
        .B(stat_env_sum),        // input wire [23 : 0] B
        .P(env_sum2_p)           // output wire [47 : 0] P
    );

	div_burst_mean div_env_sum_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(stat_div_sum_start),      // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata(curr_size),                // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(stat_div_sum_start),     // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata(stat_env_sum),            // input wire [23 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(stat_env_div_sum_done),      // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(stat_env_div_sum_data)        // output wire [39 : 0] m_axis_dout_tdata
	);

    div_stat_48 div_env_sqr_i (
        .aclk(clk),                                       // input wire aclk
        .s_axis_divisor_tvalid(stat_div_sqr_start),       // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(p4_size),                   // input wire [15 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(stat_div_sqr_start),      // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(env_sum2_p),               // input wire [47 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(stat_env_div_sqr_done),       // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(stat_env_div_sqr_data)         // output wire [63 : 0] m_axis_dout_tdata
    );
	
    dsp_add16 add_phase_i (
        .CLK(clk),           // input wire CLK
        .SCLR(stat_reset),   // input wire SCLR
        .A(phase_diff),      // input wire [15 : 0] A
        .P(phase_sum_p)      // output wire [47 : 0] P
    );
	
    dsp_sqr16 sqr_phase_i (
        .CLK(clk),           // input wire CLK
        .SCLR(stat_reset),   // input wire SCLR
        .A(phase_diff),      // input wire [15 : 0] A
        .P(phase_sqr_p)      // output wire [47 : 0] P
    );

    mul_stat24 sum2_phase_i (
        .CLK(clk),               // input wire CLK
        .A(stat_phase_sum),      // input wire [23 : 0] A
        .B(stat_phase_sum),      // input wire [23 : 0] B
        .P(phase_sum2_p)         // output wire [47 : 0] P
    );

	div_burst_mean div_phase_sum_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(stat_div_sum_start),      // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata(p4_size),                  // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(stat_div_sum_start),     // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata(stat_phase_sum),          // input wire [23 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(stat_phase_div_sum_done),    // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(stat_phase_div_sum_data)      // output wire [39 : 0] m_axis_dout_tdata
	);

    div_stat_48 div_phase_i (
        .aclk(clk),                                       // input wire aclk
        .s_axis_divisor_tvalid(stat_div_sqr_start),       // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(p4_size),                   // input wire [15 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(stat_div_sqr_start),      // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(phase_sum2_p),             // input wire [47 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(stat_phase_div_sqr_done),     // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(stat_phase_div_sqr_data)       // output wire [63 : 0] m_axis_dout_tdata
    );

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(burst),               // input wire [0:0]  probe3
		.probe1(filling),             // input wire [0:0]  probe3
		.probe2(rt_data_empty),       // input wire [0:0]  probe3
		.probe3(mem_wr),              // input wire [0:0]  probe3
		.probe4(wr_ptr_in),           // input wire [8:0]  probe3
		.probe5(env_in),              // input wire [63:0]  probe3
		.probe6(env_up_ptr),          // input wire [8:0]  probe3
		.probe7(env_up),              // input wire [63:0]  probe3
		.probe8(pend_start),          // input wire [0:0]  probe3
		.probe9(scan_start),          // input wire [0:0]  probe3
		.probe10(run_env),             // input wire [0:0]  probe3
		.probe11(p2_wr),               // input wire [0:0]  probe3
		.probe12(p2_env),              // input wire [15:0]  probe3
		.probe13(p3_done),             // input wire [0:0]  probe3
		.probe14(stat_active),         // input wire [0:0]  probe3
		.probe15(env_diff),           // input wire [15:0]  probe3
		.probe16(phase_diff),         // input wire [15:0]  probe3
		.probe17(env_sum_p),          // input wire [47:0]  probe3
		.probe18(env_sum2_p),         // input wire [47:0]  probe3
		.probe19(env_sqr_p),          // input wire [47:0]  probe3
		.probe20(phase_sum_p),        // input wire [47:0]  probe3
		.probe21(phase_sum2_p),       // input wire [47:0]  probe3
		.probe22(phase_sqr_p),        // input wire [47:0]  probe3
		.probe23(stat_sqr_delay),     // input wire [2:0]  probe3
		.probe24(load_stat_delay),    // input wire [2:0]  probe3
		.probe25(stat_env_sum),       // input wire [23:0]  probe3
		.probe26(stat_env_sqr),       // input wire [47:0]  probe3
		.probe27(stat_phase_sum),     // input wire [23:0]  probe3
		.probe28(stat_phase_sqr)     // input wire [47:0]  probe3
	);
	
generate
  begin : comp_burst

    always @(posedge clk) 
	begin
        if (cfg_empty)
           cfg_rd <= 0;
        else
            cfg_rd <= 1;
    end

    always @(posedge clk) 
	begin
        if (cfg_rd)
        begin
            case (cfg_adr)
                0 : min_env <= cfg_data[15:0];
            endcase            
        end
    end

    always @(posedge rt_clk) 
    begin
	   if (rt_wr)
       begin
            rt_data_in[15:0] <= rt_env_0;
            rt_data_in[31:16] <= rt_env_1;
            rt_data_in[47:32] <= rt_env_2;
            rt_data_in[63:48] <= rt_env_3;

            rt_data_in[83:64] <= rt_phase_0;
            rt_data_in[103:84] <= rt_phase_1;
            rt_data_in[123:104] <= rt_phase_2;
            rt_data_in[143:124] <= rt_phase_3;
			
			rt_data_wr <= 1;
       end
       else
			rt_data_wr <= 0;
    end

    always @(posedge rt_clk) 
    begin
	   if (rt_start)
       begin
            rt_meta_in[61:0] <= rt_sample;
            rt_meta_in[81:62] <= rt_freq;
            rt_meta_in[97:82] <= rt_angle;
			
			rt_meta_wr <= 1;
       end
       else
			rt_meta_wr <= 0;
    end

    always @(posedge clk) 
	begin
		if (rt_meta_empty | !p2_idle)
		begin
			rt_meta_rd <= 0;
			burst <= 0;
		end
		else
		begin
			rt_meta_rd <= 1;
            in_sample <= rt_meta_out[61:0];
            in_freq <= rt_meta_out[81:62];
            in_angle <= rt_meta_out[97:82];
			burst <= 1;
		end
	end

    always @(posedge clk) 
    begin
        if (burst)
            filling <= 1;
        else
        begin
            if (rt_data_empty)
                filling <= 0;
        end
    end

    always @(posedge clk) 
	begin
		if (filling & !rt_data_empty)
		begin
            env_in <= rt_data_out[63:0];
            phase_in <= rt_data_out[143:64];
            rt_data_rd <= 1;
			mem_wr <= 1;
		end
		else
		begin
			mem_wr <= 0;
            rt_data_rd <= 0;
        end
	end

    always @(posedge clk) 
	begin
        if (filling | !rt_data_empty | !rt_meta_empty)
	        idle <= 0;
	    else
	        idle <= 1;
	end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env_up[wr_ptr_in] <= env_in;
    end
    
    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env_down[wr_ptr_in] <= env_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)    
            mem_phase[wr_ptr_in] <= phase_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)    
        begin
            env_sum_lsb_0 <= {1'b0, env_sum_lsb_0[15:0]} + {1'b0, env_in[15:0]};
            env_sum_lsb_1 <= {1'b0, env_sum_lsb_1[15:0]} + {1'b0, env_in[31:16]};
            env_sum_lsb_2 <= {1'b0, env_sum_lsb_2[15:0]} + {1'b0, env_in[47:32]};
            env_sum_lsb_3 <= {1'b0, env_sum_lsb_3[15:0]} + {1'b0, env_in[63:48]};
        end
        else
        begin
            if (burst)
            begin
                env_sum_lsb_0 <= 0;
                env_sum_lsb_1 <= 0;
                env_sum_lsb_2 <= 0;
                env_sum_lsb_3 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (mem_wr)    
        begin
            env_sum_msb_0 <= env_sum_msb_0 + env_sum_lsb_0[16];
            env_sum_msb_1 <= env_sum_msb_1 + env_sum_lsb_1[16];
            env_sum_msb_2 <= env_sum_msb_2 + env_sum_lsb_2[16];
            env_sum_msb_3 <= env_sum_msb_3 + env_sum_lsb_3[16];
        end
        else
        begin
            if (burst)
            begin
                env_sum_msb_0 <= 0;
                env_sum_msb_1 <= 0;
                env_sum_msb_2 <= 0;
                env_sum_msb_3 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (scan_start)    
            mean_stage <= 3;
        else
        begin
            if (reset)
                mean_stage <= 0;
            else
            begin
                if (mean_stage)
                    mean_stage <= mean_stage - 1;
            end
        end
    end

    always @(posedge clk) 
    begin
        case (mean_stage)
            3 :
            begin
                env_sum_lsb_01 <= {1'b0, env_sum_lsb_0[15:0]} + {1'b0, env_sum_lsb_1[15:0]} + env_sum_lsb_0[16] + env_sum_lsb_1[16];
                env_sum_lsb_23 <= {1'b0, env_sum_lsb_2[15:0]} + {1'b0, env_sum_lsb_3[15:0]} + env_sum_lsb_2[16] + env_sum_lsb_3[16];
                env_sum_msb_01 <= {1'b0, env_sum_msb_0} + {1'b0, env_sum_msb_1};
                env_sum_msb_23 <= {1'b0, env_sum_msb_2} + {1'b0, env_sum_msb_3};
				div_start <= 0;
            end

            2 :
            begin
                env_sum_lsb <= {1'b0, env_sum_lsb_01[16:1]} + {1'b0, env_sum_lsb_23[16:1]} + {1'b0, env_sum_msb_01[0], 15'b000000000000000} +  + {1'b0, env_sum_msb_23[0], 15'b000000000000000};
                env_sum_msb <= {1'b0, env_sum_msb_01[9:1]} + {1'b0, env_sum_msb_23[9:1]};
				div_start <= 0;
            end

            1 :
            begin
                env_sum[14:0] <= env_sum_lsb[15:1];
                env_sum[23:15] <= env_sum_msb[8:0] + env_sum_lsb[16];
				div_start <= 1;
            end
			
			0: div_start <= 0;
        endcase
    end
    
    always @(posedge clk) 
    begin
        env_up <= mem_env_up[env_up_ptr];
    end

    always @(posedge clk) 
    begin
        env_down <= mem_env_down[env_down_ptr];
    end

    always @(posedge clk) 
    begin
        phase_out <= mem_phase[env_up_ptr];
    end
        
    always @(posedge clk) 
    begin
        if (mem_wr)
        begin
            wr_ptr <= wr_ptr + 1;
            scan_start <= 0;
        end
        else
        begin
            if (reset)
            begin
                curr_size <= 0;
                scan_start <= 0;
            end
            else
            begin
				if (wr_ptr)
				begin
					curr_size <= wr_ptr;
                    scan_start <= 1;
				end
				else
                    scan_start <= 0;
			end

            wr_ptr <= 0;            
        end
    end

    always @(posedge clk) 
    begin
        wr_ptr_in <= wr_ptr;
    end

    always @(posedge clk) 
    begin
        load_env_start <= run_env_start;
        inc_env_sample <= load_env_start;
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            sample_counter_0 <= sample_counter_0 + 1;
            if (sample_counter_0 == 16'hFFFE)
                sample_ov_0 <= 1;
            else
                sample_ov_0 <= 0;
        end
        else
        begin
            if (burst)
            begin
                sample_counter_0[1:0] <= 0;
                sample_counter_0[15:2] <= in_sample[13:0];
            end
            else
            begin
                if (sample_counter_0 == 16'hFFFE)
                    sample_ov_0 <= 1;
                else
                    sample_ov_0 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            if (sample_ov_0)
                sample_counter_1 <= sample_counter_1 + 1;
            else
            begin
                if (sample_counter_1 == 16'hFFFF)
                    sample_ov_1 <= 1;
                else
                    sample_ov_1 <= 0;
            end
        end
        else
        begin
            if (burst)
                sample_counter_1[15:0] <= in_sample[29:14];
            else
            begin
                if (sample_counter_1 == 16'hFFFF)
                    sample_ov_1 <= 1;
                else
                    sample_ov_1 <= 0;
            end
        end        
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            if (sample_ov_0 & sample_ov_1)
                sample_counter_2 <= sample_counter_2 + 1;
            else
            begin
                if (sample_counter_2 == 16'hFFFF)
                    sample_ov_2 <= 1;
                else
                    sample_ov_2 <= 0;
            end
        end
        else
        begin
            if (burst)
                sample_counter_2[15:0] <= in_sample[45:30];
            else
            begin
                if (sample_counter_2 == 16'hFFFF)
                    sample_ov_2 <= 1;
                else
                    sample_ov_2 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            if (sample_ov_0 & sample_ov_1 & sample_ov_2)
                sample_counter_3 <= sample_counter_3 + 1;
        end
        else
        begin
            if (burst)
                sample_counter_3[15:0] <= in_sample[61:46];
        end
    end

    always @(posedge clk) 
    begin
        load_env <= run_env;
        comp_env <= load_env;
    end

    always @(posedge clk) 
    begin
        if (scan_start)
		begin
            run_env <= 1;
			complete_1 <= 0;
			err_no_data <= 0;
		end
        else
        begin
            if (run_env)
            begin
                if (env_down_ind == 2)
				begin
                    run_env <= 0;
					if (run_env_end | run_env_start)
					begin
						err_no_data <= 1;
						complete_1 <= 0;
					end
					else
					begin
						err_no_data <= 0;
						complete_1 <= 1;
					end
				end
				else
				begin
					err_no_data <= 0;
					complete_1 <= 0;
				end
            end
            else
			begin
				err_no_data <= 0;
				complete_1 <= 0;
				
                if (reset)
                    run_env <= 0;
			end
        end
    end

    always @(posedge clk) 
    begin
        if (load_env)
        begin
            env_up_adr <= env_up_adr + 1;

            if (env_up_adr[1:0] == 2)
                env_up_ptr <= env_up_ptr + 1;
        end
        else
        begin
            env_up_ptr <= 0;
            env_up_adr <= 0;
        end
    end

    always @(posedge clk) 
    begin
        env_up_ind <= env_up_adr;
    end

    always @(posedge clk) 
    begin
        case (env_up_adr[1:0])
            0: env_up_val <= env_up_0;
            1: env_up_val <= env_up_1;
            2: env_up_val <= env_up_2;
            3: env_up_val <= env_up_3;
        endcase
    end

    always @(posedge clk) 
    begin
        if (scan_start)
        begin
            run_env_start <= 1;
            p2_wr <= 0;
        end
        else
        begin
            if (comp_env)
            begin
                if (env_up_val > env_up_max_val)
                begin
                    env_up_max_ind <= env_up_ind;
                    env_up_max_val <= env_up_val;
                end

                if (run_env_start)
                begin
                    if (env_up_val >= min_env)
                    begin
                        p2_wr <= 1;
                        run_env_start <= 0;
                        env_start_ind <= env_up_ind;
                    end
                end            
            end
            else
            begin
                env_up_max_val <= 0;
                p2_wr <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (load_env)
        begin
            env_down_adr <= env_down_adr - 1;

            if (env_down_adr[1:0] == 1)
                env_down_ptr <= env_down_ptr - 1;
        end
        else
        begin
            env_down_ptr <= curr_size - 2;
            env_down_adr[1:0] <= 3;
            env_down_adr[10:2] <= curr_size - 2;
        end
    end

    always @(posedge clk) 
    begin
        env_down_ind <= env_down_adr;
    end

    always @(posedge clk) 
    begin
        case (env_down_adr[1:0])
            0: env_down_val <= env_down_0;
            1: env_down_val <= env_down_1;
            2: env_down_val <= env_down_2;
            3: env_down_val <= env_down_3;
        endcase
    end

    always @(posedge clk) 
    begin
        if (scan_start)
            run_env_end <= 1;
        else
        begin
            if (comp_env)
            begin
                if (env_down_val > env_down_max_val)
                begin
                    env_down_max_ind <= env_down_ind;
                    env_down_max_val <= env_down_val;
                end

                if (run_env_end)
                begin
                    if (env_down_val >= min_env)
                    begin
                        run_env_end <= 0;
                        env_end_ind <= env_down_ind;
                    end
                end            
            end
            else
                env_down_max_val <= 0;
        end
    end

    always @(posedge clk) 
    begin
        case (env_up_adr[1:0])
            0: phase_val <= phase_0;
            1: phase_val <= phase_1;
            2: phase_val <= phase_2;
            3: phase_val <= phase_3;
        endcase
    end

    always @(posedge clk) 
    begin
		if (scan_start)
			pred_phase <= {phase_val, 2'b00};
		else
			pred_phase <= pred_phase + {2'b00, in_freq};
	end

    always @(posedge clk) 
    begin
        p2_env <= env_up_val;
        p2_phase <= phase_val[19:4];
		p2_phase_diff <= phase_val - pred_phase[21:2];
    end

    always @(posedge clk) 
    begin
		if (reset)
			pend_start <= 0;
		else
		begin
			if (complete_1)
				pend_start <= 1;
			else
			begin
				if (complete_2)
					pend_start <= 0;
			end
		end
	end

    always @(posedge clk) 
    begin
        if (reset)
            mean_done <= 0;
        else
        begin
    		if (div_done)
	   	   begin
		  	   mean_done <= 1;
    		   mean <= div_mean;
    	   end
    	   else
    	   begin
    	       if (complete_2)
    	           mean_done <= 0;
    	   end
		end
	end

    always @(posedge clk) 
    begin
		if (pend_start)
		begin
			if (mean_done)
				complete_2 <= 1;
			else
				complete_2 <= 0;
		end
		else
			complete_2 <= 0;
	end
			
    always @(posedge clk) 
    begin
        complete_3 <= complete_2;
        p2_done <= complete_3;
    end

    always @(posedge clk) 
    begin
		if (complete_2)
		begin
			p2_sample[15:0] <= sample_counter_0;
			p2_sample[31:16] <= sample_counter_1;
			p2_sample[47:32] <= sample_counter_2;
			p2_sample[63:48] <= sample_counter_3;
            p2_freq <= in_freq;
            p2_angle <= in_angle;
			p2_size <= env_end_ind - env_start_ind + 1;
			p2_max_pos <= ((env_down_max_ind + env_up_max_ind) >> 1) - env_start_ind;
			p2_max_env <= env_up_max_val;
		end
	end

    always @(posedge clk) 
    begin
		if (complete_3)
		begin
			if (p2_max_pos[10:4])
			begin
				if (p2_size[10:2] - p2_max_pos[10:2] <= 4)
					df_start <= p2_size[10:2] - 9;
				else
					df_start <= p2_max_pos[10:2] - 4;
			end
			else
				df_start <= 0;
		end
	end

    always @(posedge clk) 
    begin
        if (p2_active)
		begin
			if (df_active)
			begin
				if (df_count == 7)
				begin
					df_active <= 0;
					df_diff <= p2_phase_diff_0 - df_low;
					df_done <= 1;
				end
				else
				begin
					df_count <= df_count + 1;
					df_done <= 0;
				end
			end
			else
			begin
				df_count <= 0;
				df_done <= 0;
				
				if (df_ind == df_start)
				begin
					df_active <= 1;
					df_low <= p2_phase_diff_0;
				end
			end
			df_ind <= df_ind + 1;
		end
		else
		begin
			df_ind <= 0;
			df_active <= 0;
            df_count <= 0;
			df_done <= 0;
		end
	end

    always @(posedge clk) 
    begin
        if (df_done)
		begin
            p3_sample <= p2_sample;
            p3_freq <= p2_freq + {df_diff[19], df_diff[19], df_diff[19], df_diff[19:3]};
            p3_angle <= p2_angle;
            p3_size <= p2_size;
            p3_max_pos <= p2_max_pos;
            p3_max_env <= p2_max_env;
        end
    end

    always @(posedge clk) 
    begin
		temp_active <= p3_active;

		if (p3_active)
		begin
			temp_sample <= p3_sample;
			temp_freq <= p3_freq;
			temp_angle <= p3_angle;
			temp_size <= p3_size;
			temp_mean <= mean;
			temp_pos <= p3_pos;
			temp_env <= p3_env;
			temp_phase <= p3_phase;
		end
		else
		begin
			temp_pos <= 0;
			temp_phase <= 0;
			temp_env <= 0;
		end		
    end

    always @(posedge clk) 
    begin
        if (p3_active & stat_active)
        begin
            env_diff <= p3_env - mean;
            phase_diff <= p3_phase;
        end
        else
        begin
            env_diff <= 0;
            phase_diff <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (reset)
        begin
            stat_active <= 0;
            load_stat_delay <= 0;
        end
        else
        begin
            if (p3_done & stat_active)
            begin
                stat_active <= 0;
                load_stat_delay <= 7;
            end
            else
            begin
                if (load_stat_delay)
                    load_stat_delay <= load_stat_delay - 1;
                    
                if (p3_active)
                    stat_active <= 1;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (reset | (load_stat_delay == 1))
            stat_reset <= 1;
        else
            stat_reset <= 0;
    end

    always @(posedge clk) 
    begin
        if (load_stat_delay == 1)
        begin
            p4_sample <= p3_sample;
            p4_freq <= p3_freq;
            p4_angle <= p3_angle;
            p4_size <= p3_size;
            p4_max_env <= p3_max_env;
            
            casex (env_sum_p[47:23])
                25'b0000000000000000000000000: stat_env_sum <= env_sum_p[23:0];
                25'b1111111111111111111111111: stat_env_sum <= env_sum_p[23:0];
                25'b1xxxxxxxxxxxxxxxxxxxxxxxx: stat_env_sum <= 24'h80001;  
                25'b0xxxxxxxxxxxxxxxxxxxxxxxx: stat_env_sum <= 24'h7FFFF;  
            endcase

            casex (phase_sum_p[47:23])
                25'b0000000000000000000000000: stat_phase_sum <= phase_sum_p[23:0];
                25'b1111111111111111111111111: stat_phase_sum <= phase_sum_p[23:0];
                25'b1xxxxxxxxxxxxxxxxxxxxxxxx: stat_phase_sum <= 24'h80001;  
                25'b0xxxxxxxxxxxxxxxxxxxxxxxx: stat_phase_sum <= 24'h7FFFF;  
            endcase

            stat_env_sqr <= env_sqr_p;
            stat_phase_sqr <= phase_sqr_p;
            stat_sqr_delay <= 7;
        end
        else
        begin
            if (reset)
                stat_sqr_delay <= 0;
            else
            begin
                if (stat_sqr_delay)
                    stat_sqr_delay <= stat_sqr_delay - 1;
            end
        end
    end


    always @(posedge clk) 
    begin
        if (stat_sqr_delay == 7)
        begin
            stat_div_sum_start <= 1;
            stat_div_sum_pend <= 1;
        end
        else
        begin
            stat_div_sum_start <= 0;            

            if (reset)
                stat_div_sum_pend <= 0;
            else
            begin
                if (stat_div_sum_pend & stat_env_div_sum_done & stat_phase_div_sum_done)
                begin
                    p4_env_mean <= mean + stat_env_div_sum;
                    p4_phase_mean <= stat_phase_div_sum;
                    stat_div_sum_pend <= 0;
                end
            end
        end            
    end

    always @(posedge clk) 
    begin
        if (stat_sqr_delay == 1)
        begin
            stat_div_sqr_start <= 1;
            stat_div_sqr_pend <= 1;
        end
        else
        begin
            stat_div_sqr_start <= 0;            

            if (reset)
            begin
                stat_div_sqr_pend <= 0;
                stat_nvar_delay <= 0;
            end
            else
            begin
                if (stat_div_sqr_pend & stat_env_div_sqr_done & stat_phase_div_sqr_done)
                begin
                    stat_nvar_delay <= 4;
                    stat_div_sqr_pend <= 0;
                end
                else
                begin
                    if (stat_nvar_delay)
                        stat_nvar_delay <= stat_nvar_delay - 1;
                end
            end
        end            
    end

    always @(posedge clk) 
    begin
        case (stat_nvar_delay)
            4:  stat_env_nvar0 <= {1'b0, stat_env_sqr[15:0]} - {1'b0, stat_env_div_sqr[15:0]};
            3:  stat_env_nvar1 <= {1'b0, stat_env_sqr[31:16]} - {1'b0, stat_env_div_sqr[31:16]}  - {16'h0000, stat_env_nvar0[16]};
            2:  stat_env_nvar2 <= stat_env_sqr[47:32] - stat_env_div_sqr[47:32] - {15'h0000, stat_env_nvar1[16]};
            1:  stat_env_nvar <= {stat_env_nvar2[15:0], stat_env_nvar1[15:0], stat_env_nvar0[15:0]};
        endcase
    end

    always @(posedge clk) 
    begin
        case (stat_nvar_delay)
            4:  stat_phase_nvar0 <= {1'b0, stat_phase_sqr[15:0]} - {1'b0, stat_phase_div_sqr[15:0]};
            3:  stat_phase_nvar1 <= {1'b0, stat_phase_sqr[31:16]} - {1'b0, stat_phase_div_sqr[31:16]}  - {16'h0000, stat_phase_nvar0[16]};
            2:  stat_phase_nvar2 <= stat_phase_sqr[47:32] - stat_phase_div_sqr[47:32] - {15'h0000, stat_phase_nvar1[16]};
            1:  stat_phase_nvar <= {stat_phase_nvar2[15:0], stat_phase_nvar1[15:0], stat_phase_nvar0[15:0]};
        endcase
    end

    
  end
    
endgenerate

endmodule
