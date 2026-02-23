`timescale 1ns / 1ps
//------------------------------------------------------------------------------
// Module: comp_burst
//
// Description:
// -----------
// Burst analysis, alignment, classification, and statistical pre-processing
// stage operating on envelope and phase data delivered in groups of four
// samples per cycle.
//
// The module buffers a complete burst in BRAM, performs envelope-based burst
// detection and alignment, de-trends phase using an initial frequency estimate,
// and computes refined frequency and statistical measures through a staged,
// high-throughput pipeline.
//
// The design is optimized for very high clock rates (~500 MHz) by strictly
// avoiding long combinational paths and distributing computation across
// multiple pipeline stages.
//
//
// High-level operation:
// ---------------------
//
// 1) Burst buffering (rt_clk → clk domain crossing)
//    - Incoming envelope and phase samples are written into FIFOs in the
//      real-time clock domain and transferred into the processing clock domain.
//    - Samples are stored internally as four-sample words in BRAM.
//    - Metadata (sample index, frequency, angle) is captured per burst.
//
//
// 2) Envelope scanning and burst detection (p1: burst_size)
//    - Two-directional scan over the full burst:
//        • Forward scan  : detects first sample ≥ min_env
//        • Reverse scan  : detects last  sample ≥ min_env
//    - Simultaneously tracks:
//        • Maximum envelope value
//        • Position of maximum
//
//    Outputs:
//        • Burst start (absolute sample index)
//        • Burst size
//        • Maximum envelope and its position
//
//    Note:
//        Scans always run across the full burst to avoid edge artifacts.
//
//
// 3) Stream reshaping (p2: one_to_four)
//    - Converts scalar stream into four-sample groups for efficient SIMD-style
//      downstream processing.
//    - Maintains burst alignment and enables parallel arithmetic.
//
//
//
// 4) Phase de-trending and statistics accumulation (p3: comp_stat)
//
//    Phase processing:
//        - A predicted phase ramp is generated:
//              pred_phase[n+1] = pred_phase[n] + freq
//
//        - De-trended phase:
//              phase_diff = measured_phase - pred_phase
//
//        - A refined frequency estimate is computed from phase evolution,
//          removing residual linear drift.
//
//    Statistical accumulation:
//        - Envelope mean
//        - Envelope squared sum
//        - Phase squared sum (de-trended)
//        - Frequency deviation squared sum
//
//    These are accumulated in a streaming manner using DSP blocks.
//
//
// 5) Position-aware reformatting (p4: pos_to_four)
//    - Converts position-indexed stream back into four-sample groups.
//    - Aligns data relative to burst structure (e.g., max position).
//
//
//
// 6) Final staging and output packaging (p5)
//    - Registers final results:
//        • Sample index
//        • Corrected frequency
//        • Angle
//        • Burst size
//        • Maximum envelope
//        • Envelope mean
//        • Second-order statistics:
//              env_sum2, phase_sum2, freq_sum2
//
//
//
// Signal classification (implicit design intent):
// ----------------------------------------------
// The computed statistics enable classification of signal types:
//
//   • Pulse signals:
//       - Strong peak (max_env >> mean_env)
//       - Phase aligned around peak
//
//   • Continuous / FM signals:
//       - Low envelope variation (mean ≈ max)
//       - Frequency variance > 0
//
// This classification can be used downstream to decide whether to:
//   - Forward full raw data, or
//   - Emit only metadata/statistics
//
//
//
// Data format and assumptions:
// ----------------------------
// - Envelope samples:
//       • 16-bit signed, expected non-negative
//       • Overflow not expected (bit[15] should remain 0)
//
// - Phase samples:
//       • 20-bit signed internal precision
//       • May be truncated to 16-bit for external interfaces
//
// - Input:
//       • Always four samples per cycle
//       • Burst size is a multiple of four
//
// - Internal storage:
//       • BRAM organized as four-sample words
//
//
//
// Sample indexing:
// ----------------
// - Absolute sample index is 62-bit input.
// - Internally propagated and adjusted during burst detection.
// - Output corresponds to detected burst start.
//
//
//
// Pipeline and timing:
// --------------------
// - Fully pipelined architecture with no long combinational paths.
// - BRAM read latency: 2 cycles (accounted for in scan control).
// - All arithmetic (including accumulation and division) is staged.
// - Divider latency is hidden by buffering and replay scheduling.
//
// - Designed to meet ~500 MHz on Ultrascale+.
//
//
//
// Numerical considerations:
// -------------------------
// - Phase is de-trended before variance computation to avoid artificial growth.
// - Frequency correction is derived from accumulated phase behavior across
//   the burst:
//
//       freq_correction ≈ sum(phase differences) / (N * (N - 1) / 2)
//
// - The term N*(N-1)/2 is always even, allowing exact division-by-two via shift.
//
// - Variance measures:
//       • Phase variance     → phase_sum2
//       • Frequency variance → freq_sum2
//
// - These enable detection of FM modulation and phase stability.
//
//
//
// Outputs:
// --------
// - err_no_data:
//       Asserted if no sample exceeds min_env.
//
// - Streamed internal outputs:
//       • Envelope and phase (aligned and corrected)
//
// - Metadata:
//       • Sample index
//       • Burst size
//       • Max envelope + position
//       • Mean envelope
//       • Frequency (corrected)
//       • Second-order statistics
//
//
//
// Design philosophy:
// ------------------
// - Favor multi-cycle, pipelined arithmetic over single-cycle wide logic.
// - Use BRAM + replay instead of combinational fanout.
// - Keep DSP usage localized and predictable.
// - Ensure deterministic latency per stage.
//
//------------------------------------------------------------------------------
// Author:      Leif Ekblad
//------------------------------------------------------------------------------
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

    wire err_no_data;

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
    reg filling;
    
	reg [61:0] in_sample;
    reg [19:0] in_freq;
    reg [15:0] in_angle;
    
    reg [15:0] env_0;
    reg [15:0] env_1;
    reg [15:0] env_2;
    reg [15:0] env_3;
    
    reg [19:0] phase_0;
    reg [19:0] phase_1;
    reg [19:0] phase_2;
    reg [19:0] phase_3;
    
    reg [8:0] wr_ptr_in;
    reg mem_wr;

    reg [19:0] p1_freq;
    reg [15:0] p1_angle;
	wire [63:0] p1_sample;
	wire [10:0] p1_size;
	wire [10:0] p1_max_pos;
	wire [15:0] p1_max_env;
    
    wire p1_wr;
    wire [15:0] p1_env;
    wire [19:0] p1_phase;

    wire p2_idle;
    wire p2_done;

    reg [63:0] p2_sample;
    reg [19:0] p2_freq;
    reg [15:0] p2_angle;
	reg [10:0] p2_size;
	reg [10:0] p2_max_pos;
	reg [15:0] p2_max_env;
    
    wire p2_wr;
    wire [15:0] p2_env_0;
    wire [15:0] p2_env_1;
    wire [15:0] p2_env_2;
    wire [15:0] p2_env_3;

    wire [19:0] p2_phase_0;
    wire [19:0] p2_phase_1;
    wire [19:0] p2_phase_2;
    wire [19:0] p2_phase_3;

    wire p3_idle;
    wire p3_done;

	reg [63:0] p3_sample;
    wire [19:0] p3_freq;
    reg [15:0] p3_angle;
	reg [10:0] p3_size;
	reg [10:0] p3_max_pos;
	reg [15:0] p3_max_env;
	wire [15:0] p3_env_mean;
    wire [47:0] p3_env_sum2;
    wire [47:0] p3_phase_sum2;
    wire [47:0] p3_freq_sum2;
        
    wire p3_wr;
    wire [10:0] p3_pos;
    wire [15:0] p3_env;
    wire [15:0] p3_phase;

    wire p4_idle;
    wire p4_done;
	
	reg [63:0] p4_sample;
    reg [19:0] p4_freq;
    reg [15:0] p4_angle;
	reg [10:0] p4_size;
	reg [15:0] p4_max_env;
	reg [15:0] p4_env_mean;
    reg [47:0] p4_env_sum2;
    reg [47:0] p4_phase_sum2;
    reg [47:0] p4_freq_sum2;
    
    wire p4_wr;
    wire [15:0] p4_env_0;
    wire [15:0] p4_env_1;
    wire [15:0] p4_env_2;
    wire [15:0] p4_env_3;
    wire [15:0] p4_phase_0;
    wire [15:0] p4_phase_1;
    wire [15:0] p4_phase_2;
    wire [15:0] p4_phase_3;

    wire p5_idle = 1;

    reg [63:0] p5_sample;
    reg [19:0] p5_freq;
    reg [15:0] p5_angle;
	reg [10:0] p5_size;
	reg [15:0] p5_max_env;
	reg [15:0] p5_env_mean;
    reg [47:0] p5_env_sum2;
    reg [47:0] p5_phase_sum2;
    reg [47:0] p5_freq_sum2;
    
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

	burst_size p1_i (
		.clk(clk),
        .reset(reset),
        .min_env(min_env),
        .burst(burst),
        .sample_in(in_sample),
        .wr(mem_wr),
        .env_0(env_0),
        .env_1(env_1),
        .env_2(env_2),
        .env_3(env_3),
        .phase_0(phase_0),
        .phase_1(phase_1),
        .phase_2(phase_2),
        .phase_3(phase_3),
        .no_data(err_no_data),
        .done(p1_done),
        .sample(p1_sample),
        .size(p1_size),
        .max_pos(p1_max_pos),
        .max_env(p1_max_env),
        .active(p1_wr),
        .env(p1_env),
        .phase(p1_phase)
    );

	one_to_four p2_i (
		.clk(clk),
        .reset(reset),
        .wr(p1_wr),
        .env(p1_env),
        .phase(p1_phase),
        .size(p1_size),
        .read_back(p1_done),
		.allowed(p3_idle),
        .idle(p2_idle),
        .done(p2_done),
        .active(p2_wr),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3)
	);

	comp_stat p3_i (
		.clk(clk),
        .reset(reset),
        .wr(p2_wr),
        .freq(p2_freq),
        .size(p2_size),
        .max_pos(p2_max_pos),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .allowed(p4_idle),
        .idle(p3_idle),
        .active(p3_wr),
        .pos(p3_pos),
        .env(p3_env),
        .phase(p3_phase),
        .done(p3_done),
        .adj_freq(p3_freq),
        .env_mean(p3_env_mean),
        .env_sum2(p3_env_sum2),
        .phase_sum2(p3_phase_sum2),
        .freq_sum2(p3_freq_sum2)
	);

	pos_to_four p4_i (
		.clk(clk),
        .reset(reset),
        .wr(p3_wr),
        .pos(p3_pos),
        .env(p3_env),
        .phase(p3_phase),
        .size(p3_size),
        .allowed(p5_idle),
        .read_back(p3_done),
        .idle(p4_idle),
        .done(p4_done),
        .active(p4_wr),
        .env_0(p4_env_0),
        .env_1(p4_env_1),
        .env_2(p4_env_2),
        .env_3(p4_env_3),
        .phase_0(p4_phase_0),
        .phase_1(p4_phase_1),
        .phase_2(p4_phase_2),
        .phase_3(p4_phase_3)
	);

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(idle),                // input wire [0:0]  probe3
		.probe1(p1_wr),               // input wire [0:0]  probe3
		.probe2(p1_done),             // input wire [0:0]  probe3
		.probe3(p2_idle),             // input wire [0:0]  probe3
		.probe4(p2_wr),               // input wire [0:0]  probe3
		.probe5(p2_done),             // input wire [0:0]  probe3
		.probe6(p3_idle),             // input wire [0:0]  probe3
		.probe7(p3_wr),               // input wire [0:0]  probe3
		.probe8(p3_done),             // input wire [0:0]  probe3
		.probe9(p4_idle),             // input wire [0:0]  probe3
		.probe10(p4_wr),              // input wire [0:0]  probe3
		.probe11(p4_done),            // input wire [0:0]  probe3
		.probe12(p5_sample),          // input wire [63:0]  probe3
		.probe13(p5_freq),            // input wire [19:0]  probe3
		.probe14(p5_angle),           // input wire [15:0]  probe3
		.probe15(p5_size),            // input wire [10:0]  probe3
		.probe16(p5_max_env),         // input wire [15:0]  probe3
		.probe17(p5_env_mean),        // input wire [15:0]  probe3
		.probe18(p5_env_sum2),        // input wire [47:0]  probe3
		.probe19(p5_phase_sum2),      // input wire [47:0]  probe3
		.probe20(p5_freq_sum2)        // input wire [47:0]  probe3
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
            begin
                filling <= 0;
                p1_freq <= in_freq;
                p1_angle <= in_angle;
            end
        end
    end

    always @(posedge clk) 
	begin
		if (filling & !rt_data_empty)
		begin
            env_0 <= rt_data_out[15:0];
            env_1 <= rt_data_out[31:16];
            env_2 <= rt_data_out[47:32];
            env_3 <= rt_data_out[63:48];

            phase_0 <= rt_data_out[83:64];
            phase_1 <= rt_data_out[103:84];
            phase_2 <= rt_data_out[123:104];
            phase_3 <= rt_data_out[143:124];

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
        if (p1_done)
		begin
            p2_sample <= p1_sample;
            p2_freq <= p1_freq;
            p2_angle <= p1_angle;
            p2_size <= p1_size;
            p2_max_pos <= p1_max_pos;
            p2_max_env <= p1_max_env;
        end
    end
    
    always @(posedge clk) 
    begin
        if (p2_done)
		begin
            p3_sample <= p2_sample;
            p3_angle <= p2_angle;
            p3_size <= p2_size;
            p3_max_pos <= p2_max_pos;
            p3_max_env <= p2_max_env;
        end
    end
    
    always @(posedge clk) 
    begin
        if (p3_done)
		begin
            p4_sample <= p3_sample;
            p4_freq <= p3_freq;
            p4_angle <= p3_angle;
            p4_size <= p3_size;
            p4_max_env <= p3_max_env;
            p4_env_mean <= p3_env_mean;
            p4_env_sum2 <= p3_env_sum2;
            p4_phase_sum2 <= p3_phase_sum2;
            p4_freq_sum2 <= p3_freq_sum2;
        end
    end
    
    always @(posedge clk) 
    begin
        if (p4_done)
		begin
            p5_sample <= p4_sample;
            p5_freq <= p4_freq;
            p5_angle <= p4_angle;
            p5_size <= p4_size;
            p5_max_env <= p4_max_env;
            p5_env_mean <= p4_env_mean;
            p5_env_sum2 <= p4_env_sum2;
            p5_phase_sum2 <= p4_phase_sum2;
            p5_freq_sum2 <= p4_freq_sum2;
        end
    end
    
  end
    
endgenerate

endmodule
