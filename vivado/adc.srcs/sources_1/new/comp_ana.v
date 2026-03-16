`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 14:06:36
// Design Name: 
// Module Name: comp_env_phase
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module comp_ana(
    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire fifo_clk,
    
    input wire fifo_active,
    input wire [63:0] fifo_re,
    input wire [63:0] fifo_im,

	input wire fifo_burst,
	input wire [15:0] fifo_sample,
	input wire [8:0] fifo_size,
	input wire [19:0] fifo_freq,
	input wire [15:0] fifo_angle,
	input wire [9:0] fifo_doa_error,
	
	input wire axi_clk,

    input wire pl_clk,
    input wire clk,
    input wire reset
);

    reg local_config_wr;
    reg [7:0] local_config_adr;
    reg [31:0] local_config_data;

	(* ASYNC_REG="TRUE" *)	reg  stat_0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_2_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_2_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_3_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_3_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_4_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_4_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_5_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_5_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_6_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_6_reset_2;

    wire stat_idle_in_0;
    reg stat_idle_sync_0;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_idle_2;

    wire stat_idle_in_1;
    reg stat_idle_sync_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_idle_2;

    wire stat_idle_in_2;
    reg stat_idle_sync_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_2_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_2_idle_2;

    wire stat_idle_in_3;
    reg stat_idle_sync_3;
	(* ASYNC_REG="TRUE" *)	reg  stat_3_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_3_idle_2;

    wire stat_idle_in_4;
    reg stat_idle_sync_4;
	(* ASYNC_REG="TRUE" *)	reg  stat_4_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_4_idle_2;

    wire stat_idle_in_5;
    reg stat_idle_sync_5;
	(* ASYNC_REG="TRUE" *)	reg  stat_5_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_5_idle_2;

    wire stat_idle_in_6;
    reg stat_idle_sync_6;
	(* ASYNC_REG="TRUE" *)	reg  stat_6_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_6_idle_2;
	
    reg reset_int;
  
    reg [127:0] raw_in_data;
    reg raw_wr;

    wire [127:0] raw_out_1;
    reg raw_rd;
    wire raw_empty;
    reg [4:0] raw_delay;
    reg raw_run;

    reg [127:0] raw_out_2;
    reg [127:0] raw_out_data;
  
    reg [15:0] raw_sample;
    
    reg [15:0] sample_counter_0;
    reg [15:0] sample_counter_1;
    reg [15:0] sample_counter_2;
    reg [13:0] sample_counter_3;
    reg sample_ov_0;
    reg sample_ov_1;
    reg sample_ov_2;

    wire [63:0] raw_re = raw_out_data[63:0];
    wire [63:0] raw_im = raw_out_data[127:64];

    reg [15:0] re_0;
    reg [15:0] re_1;
    reg [15:0] re_2;
    reg [15:0] re_3;

    reg [15:0] im_0;
    reg [15:0] im_1;
    reg [15:0] im_2;
    reg [15:0] im_3;

    reg [70:0] ana_in_data;
    reg ana_wr;
  
    wire [70:0] ana_out_data;
    reg ana_rd;
    wire ana_empty;
    reg ana_trig;
    wire [15:0] curr_sample = ana_out_data[15:0];

    reg run;
    reg [15:0] sample;
    reg [8:0] count;
    reg [8:0] size;

    wire [3:0] valid;

    wire [15:0] env_0;  
    wire [15:0] env_1;  
    wire [15:0] env_2;  
    wire [15:0] env_3;  
  
    wire [19:0] phase_0;
    wire [19:0] phase_1;
    wire [19:0] phase_2;
    wire [19:0] phase_3;

	reg [61:0] pend_sample;
    reg [19:0] pend_freq;
    reg [15:0] pend_angle;
    reg [9:0] pend_doa_error;
    
    wire stat_clk_0_raw;
    wire stat_clk_1_raw;
    wire stat_clk_2_raw;
    wire stat_clk_3_raw;
    wire stat_clk_4_raw;
    wire stat_clk_5_raw;
    wire stat_clk_6_raw;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_0, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_0;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_1, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_1;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_2, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_2;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_3, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_3;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_4, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_4;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_5, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_5;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_6, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_6;
	
	reg stat_reset_0;
	reg stat_reset_1;
	reg stat_reset_2;
	reg stat_reset_3;
	reg stat_reset_4;
	reg stat_reset_5;
	reg stat_reset_6;

    reg curr_error;
    reg [2:0] curr_stat;
	reg [7:0] stat_start;
	reg [7:0] stat_wr;    
	reg [7:0] stat_idle;
	
	reg [61:0] stat_sample [0:6];
    reg [19:0] stat_freq [0:6];
    reg [15:0] stat_angle [0:6];
    reg [9:0] stat_doa_error [0:6];

    reg [15:0] stat_env_0 [0:6]; 
    reg [15:0] stat_env_1 [0:6];
    reg [15:0] stat_env_2 [0:6];  
    reg [15:0] stat_env_3 [0:6];
  
    reg [19:0] stat_phase_0 [0:6];
    reg [19:0] stat_phase_1 [0:6];
    reg [19:0] stat_phase_2 [0:6];
    reg [19:0] stat_phase_3 [0:6];

// axi domain

	localparam STAT_NONE = 2'b00;
	localparam STAT_A = 2'b01;
	localparam STAT_B = 2'b10;
	localparam STAT_COMP = 2'b11;

    wire [6:0] axi_pend;
    wire [6:0] axi_avail;
    wire [19:0] axi_pos [0:6];
    reg [6:0] axi_get;
    wire [6:0] axi_active;
    wire [255:0] axi_data [0:6];
	
	reg [1:0] axi_state_01;
	reg [1:0] axi_state_23;
	reg [1:0] axi_state_45;
	reg [1:0] axi_state_6;
	
	reg [19:0] axi_diff_01;
	reg [19:0] axi_diff_23;
	reg [19:0] axi_diff_45;

	reg axi_ok_01;
	reg axi_ok_23;
	reg axi_ok_45;
	reg axi_ok_6;
	
	reg axi_ind_01;
	reg axi_ind_23;
	reg axi_ind_45;

	reg [1:0] axi_state_03;
	reg [1:0] axi_state_46;

	reg [19:0] axi_diff_03;
	reg [19:0] axi_diff_46;

	reg axi_ok_03;
	reg axi_ok_46;

	reg [1:0] axi_ind_03;
	reg [1:0] axi_ind_46;

	reg [1:0] axi_state;
	reg [19:0] axi_diff;
	reg axi_ok;
	reg [2:0] axi_ind;

    clk_wiz_stat clk_wiz_stat_i (
       .clk_in1(pl_clk) ,              // input clk_in1
       .clk_out1(stat_clk_0_raw),     // output clk_out1
       .clk_out2(stat_clk_1_raw),     // output clk_out2
       .clk_out3(stat_clk_2_raw),     // output clk_out3
       .clk_out4(stat_clk_3_raw),     // output clk_out4
       .clk_out5(stat_clk_4_raw),     // output clk_out5
       .clk_out6(stat_clk_5_raw),     // output clk_out6
       .clk_out7(stat_clk_6_raw)      // output clk_out7
    );

	BUFG stat_clk_0_i (
		.I			(stat_clk_0_raw),
		.O			(stat_clk_0));

	BUFG stat_clk_1_i (
		.I			(stat_clk_1_raw),
		.O			(stat_clk_1));

	BUFG stat_clk_2_i (
		.I			(stat_clk_2_raw),
		.O			(stat_clk_2));

	BUFG stat_clk_3_i (
		.I			(stat_clk_3_raw),
		.O			(stat_clk_3));

	BUFG stat_clk_4_i (
		.I			(stat_clk_4_raw),
		.O			(stat_clk_4));

	BUFG stat_clk_5_i (
		.I			(stat_clk_5_raw),
		.O			(stat_clk_5));

	BUFG stat_clk_6_i (
		.I			(stat_clk_6_raw),
		.O			(stat_clk_6));

    fifo_comp_ana fifo_ana_i (
        .rst(reset_int),              // input wire rst
        .wr_clk(fifo_clk),            // input wire wr_clk
        .rd_clk(clk),                 // input wire rd_clk
        .din(ana_in_data),            // input wire [70 : 0] din
        .wr_en(ana_wr),               // input wire wr_en
        .rd_en(ana_rd),               // input wire rd_en
        .dout(ana_out_data),          // output wire [70 : 0] dout
        .empty(ana_empty)             // output wire empty
    );

    fifo_comp_raw fifo_raw_i (
        .rst(reset_int),               // input wire rst
        .wr_clk(fifo_clk),             // input wire wr_clk
        .rd_clk(clk),                  // input wire rd_clk
        .din(raw_in_data),             // input wire [127 : 0] din
        .wr_en(raw_wr),                // input wire wr_en
        .rd_en(raw_rd),                // input wire rd_en
        .dout(raw_out_1),              // output wire [127 : 0] dout
        .empty(raw_empty)              // output wire empty
    );

    morlet_to_phase_env phase_env_i_0 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_0, 8'h00}),
        .im({im_0, 8'h00}),
        .valid(valid[0]),
        .env(env_0),
        .phase(phase_0)
    );

    morlet_to_phase_env phase_env_i_1 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_1, 8'h00}),
        .im({im_1, 8'h00}),
        .valid(valid[1]),
        .env(env_1),
        .phase(phase_1)
    );

    morlet_to_phase_env phase_env_i_2 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_2, 8'h00}),
        .im({im_2, 8'h00}),
        .valid(valid[2]),
        .env(env_2),
        .phase(phase_2)
    );

    morlet_to_phase_env phase_env_i_3 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_3, 8'h00}),
        .im({im_3, 8'h00}),
        .valid(valid[3]),
        .env(env_3),
        .phase(phase_3)
    );

    comp_burst burst_0(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[0]),
        .rt_sample(stat_sample[0]),
        .rt_freq(stat_freq[0]),
        .rt_angle(stat_angle[0]),
        .rt_doa_error(stat_doa_error[0]),
        .rt_wr(stat_wr[0]),    
        .rt_env_0(stat_env_0[0]), 
        .rt_env_1(stat_env_1[0]), 
        .rt_env_2(stat_env_2[0]), 
        .rt_env_3(stat_env_3[0]), 
        .rt_phase_0(stat_phase_0[0]),
        .rt_phase_1(stat_phase_1[0]),
        .rt_phase_2(stat_phase_2[0]),
        .rt_phase_3(stat_phase_3[0]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[0]),
        .axi_avail(axi_avail[0]),
        .axi_sample(axi_pos[0]),
        .axi_get(axi_get[0]),
        .axi_wr(axi_active[0]),
        .axi_data(axi_data[0]),
        .clk(stat_clk_0),
        .reset(stat_reset_0),
        .idle(stat_idle_in_0)
    );

    comp_burst burst_1(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[1]),
        .rt_sample(stat_sample[1]),
        .rt_freq(stat_freq[1]),
        .rt_angle(stat_angle[1]),
        .rt_doa_error(stat_doa_error[1]),
        .rt_wr(stat_wr[1]),    
        .rt_env_0(stat_env_0[1]), 
        .rt_env_1(stat_env_1[1]), 
        .rt_env_2(stat_env_2[1]), 
        .rt_env_3(stat_env_3[1]), 
        .rt_phase_0(stat_phase_0[1]),
        .rt_phase_1(stat_phase_1[1]),
        .rt_phase_2(stat_phase_2[1]),
        .rt_phase_3(stat_phase_3[1]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[1]),
        .axi_avail(axi_avail[1]),
        .axi_sample(axi_pos[1]),
        .axi_get(axi_get[1]),
        .axi_wr(axi_active[1]),
        .axi_data(axi_data[1]),
        .clk(stat_clk_1),
        .reset(stat_reset_1),
        .idle(stat_idle_in_1)
    );

    comp_burst burst_2(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[2]),
        .rt_sample(stat_sample[2]),
        .rt_freq(stat_freq[2]),
        .rt_angle(stat_angle[2]),
        .rt_doa_error(stat_doa_error[2]),
        .rt_wr(stat_wr[2]),    
        .rt_env_0(stat_env_0[2]), 
        .rt_env_1(stat_env_1[2]), 
        .rt_env_2(stat_env_2[2]), 
        .rt_env_3(stat_env_3[2]), 
        .rt_phase_0(stat_phase_0[2]),
        .rt_phase_1(stat_phase_1[2]),
        .rt_phase_2(stat_phase_2[2]),
        .rt_phase_3(stat_phase_3[2]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[2]),
        .axi_avail(axi_avail[2]),
        .axi_sample(axi_pos[2]),
        .axi_get(axi_get[2]),
        .axi_wr(axi_active[2]),
        .axi_data(axi_data[2]),
        .clk(stat_clk_2),
        .reset(stat_reset_2),
        .idle(stat_idle_in_2)
    );

    comp_burst burst_3(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[3]),
        .rt_sample(stat_sample[3]),
        .rt_freq(stat_freq[3]),
        .rt_angle(stat_angle[3]),
        .rt_doa_error(stat_doa_error[3]),
        .rt_wr(stat_wr[3]),    
        .rt_env_0(stat_env_0[3]), 
        .rt_env_1(stat_env_1[3]), 
        .rt_env_2(stat_env_2[3]), 
        .rt_env_3(stat_env_3[3]), 
        .rt_phase_0(stat_phase_0[3]),
        .rt_phase_1(stat_phase_1[3]),
        .rt_phase_2(stat_phase_2[3]),
        .rt_phase_3(stat_phase_3[3]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[3]),
        .axi_avail(axi_avail[3]),
        .axi_sample(axi_pos[3]),
        .axi_get(axi_get[3]),
        .axi_wr(axi_active[3]),
        .axi_data(axi_data[3]),
        .clk(stat_clk_3),
        .reset(stat_reset_3),
        .idle(stat_idle_in_3)
    );

    comp_burst burst_4(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[4]),
        .rt_sample(stat_sample[4]),
        .rt_freq(stat_freq[4]),
        .rt_angle(stat_angle[4]),
        .rt_doa_error(stat_doa_error[4]),
        .rt_wr(stat_wr[4]),    
        .rt_env_0(stat_env_0[4]), 
        .rt_env_1(stat_env_1[4]), 
        .rt_env_2(stat_env_2[4]), 
        .rt_env_3(stat_env_3[4]), 
        .rt_phase_0(stat_phase_0[4]),
        .rt_phase_1(stat_phase_1[4]),
        .rt_phase_2(stat_phase_2[4]),
        .rt_phase_3(stat_phase_3[4]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[4]),
        .axi_avail(axi_avail[4]),
        .axi_sample(axi_pos[4]),
        .axi_get(axi_get[4]),
        .axi_wr(axi_active[4]),
        .axi_data(axi_data[4]),
        .clk(stat_clk_4),
        .reset(stat_reset_4),
        .idle(stat_idle_in_4)
    );

    comp_burst burst_5(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[5]),
        .rt_sample(stat_sample[5]),
        .rt_freq(stat_freq[5]),
        .rt_angle(stat_angle[5]),
        .rt_doa_error(stat_doa_error[5]),
        .rt_wr(stat_wr[5]),    
        .rt_env_0(stat_env_0[5]), 
        .rt_env_1(stat_env_1[5]), 
        .rt_env_2(stat_env_2[5]), 
        .rt_env_3(stat_env_3[5]), 
        .rt_phase_0(stat_phase_0[5]),
        .rt_phase_1(stat_phase_1[5]),
        .rt_phase_2(stat_phase_2[5]),
        .rt_phase_3(stat_phase_3[5]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[5]),
        .axi_avail(axi_avail[5]),
        .axi_sample(axi_pos[5]),
        .axi_get(axi_get[5]),
        .axi_wr(axi_active[5]),
        .axi_data(axi_data[5]),
        .clk(stat_clk_5),
        .reset(stat_reset_5),
        .idle(stat_idle_in_5)
    );

    comp_burst burst_6(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[6]),
        .rt_sample(stat_sample[6]),
        .rt_freq(stat_freq[6]),
        .rt_angle(stat_angle[6]),
        .rt_doa_error(stat_doa_error[6]),
        .rt_wr(stat_wr[6]),    
        .rt_env_0(stat_env_0[6]), 
        .rt_env_1(stat_env_1[6]), 
        .rt_env_2(stat_env_2[6]), 
        .rt_env_3(stat_env_3[6]), 
        .rt_phase_0(stat_phase_0[6]),
        .rt_phase_1(stat_phase_1[6]),
        .rt_phase_2(stat_phase_2[6]),
        .rt_phase_3(stat_phase_3[6]),
        .axi_clk(axi_clk),
        .axi_pend(axi_pend[6]),
        .axi_avail(axi_avail[6]),
        .axi_sample(axi_pos[6]),
        .axi_get(axi_get[6]),
        .axi_wr(axi_active[6]),
        .axi_data(axi_data[6]),
        .clk(stat_clk_6),
        .reset(stat_reset_6),
        .idle(stat_idle_in_6)
    );

	ila_3 ila_fifo (
		.clk(fifo_clk),                    // input wire clk
		.probe0(ana_wr),                   // input wire [0:0]  probe3
		.probe1(ana_in_data[15:0])         // input wire [15:0]  probe3
	);

	ila_1 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(ana_trig),            // input wire [0:0]  probe3
		.probe1(ana_empty),           // input wire [0:0]  probe3
		.probe2(ana_rd),              // input wire [0:0]  probe3
		.probe3(run),                 // input wire [0:0]  probe3
		.probe4(size),                // input wire [8:0]  probe3
		.probe5(count),               // input wire [8:0]  probe3
		.probe6(valid),               // input wire [3:0]  probe3
		.probe7(curr_error),          // input wire [0:0]  probe3
		.probe8(curr_stat),           // input wire [2:0]  probe3
		.probe9(stat_start),          // input wire [7:0]  probe3
		.probe10(stat_wr),             // input wire [7:0]  probe3
		.probe11(stat_idle)            // input wire [7:0]  probe3
	);

	ila_5 ila_axi (
		.clk(axi_clk),                    // input wire clk
		.probe0(stat_pend),               // input wire [6:0]  probe3
		.probe1(stat_avail),              // input wire [6:0]  probe3
		.probe2(stat_get),                // input wire [6:0]  probe3
		.probe3(stat_active),             // input wire [6:0]  probe3
		.probe4(axi_pos[0]),              // input wire [19:0]  probe3
		.probe5(axi_pos[1]),              // input wire [19:0]  probe3
		.probe6(axi_pos[2]),              // input wire [19:0]  probe3
		.probe7(axi_pos[3]),              // input wire [19:0]  probe3
		.probe8(axi_state_01),            // input wire [1:0]  probe3
		.probe9(axi_state_23),            // input wire [1:0]  probe3
		.probe10(axi_state_45),           // input wire [1:0]  probe3
		.probe11(axi_state_6),            // input wire [1:0]  probe3
		.probe12(axi_diff_01[19]),        // input wire [0:0]  probe3
		.probe13(axi_diff_23[19]),        // input wire [0:0]  probe3
		.probe14(axi_diff_45[19]),        // input wire [0:0]  probe3
		.probe15(axi_ok_01),              // input wire [0:0]  probe3
		.probe16(axi_ok_23),              // input wire [0:0]  probe3
		.probe17(axi_ok_45),              // input wire [0:0]  probe3
		.probe18(axi_ok_6),               // input wire [0:0]  probe3
		.probe19(axi_ind_01),             // input wire [0:0]  probe3
		.probe20(axi_ind_23),             // input wire [0:0]  probe3
		.probe21(axi_ind_45),             // input wire [0:0]  probe3
		.probe22(axi_state_03),           // input wire [1:0]  probe3
		.probe23(axi_state_46),           // input wire [1:0]  probe3
		.probe24(axi_diff_03[19]),        // input wire [0:0]  probe3
		.probe25(axi_diff_46[19]),        // input wire [0:0]  probe3
		.probe26(axi_ok_03),              // input wire [0:0]  probe3
		.probe27(axi_ok_46),              // input wire [0:0]  probe3
		.probe28(axi_ind_03),             // input wire [1:0]  probe3
		.probe29(axi_ind_46),             // input wire [1:0]  probe3
		.probe30(axi_state),              // input wire [1:0]  probe3
		.probe31(axi_diff[19]),           // input wire [0:0]  probe3
		.probe32(axi_ok),                 // input wire [0:0]  probe3
		.probe33(axi_ind),                // input wire [2:0]  probe3
		.probe34(axi_data[0][15:0]),      // input wire [15:0]  probe3
		.probe35(axi_data[1][15:0]),      // input wire [15:0]  probe3
		.probe36(axi_data[2][15:0]),      // input wire [15:0]  probe3
		.probe37(axi_data[3][15:0])       // input wire [15:0]  probe3
	);


generate
  begin : comp_ana

	always @(posedge config_clk) 
	begin
        local_config_wr <= config_wr;
        local_config_adr <= config_adr;
        local_config_data <= config_data;
    end

	always @(posedge stat_clk_0) 
	begin
		stat_0_reset_1 <= reset_int;
		stat_0_reset_2 <= stat_0_reset_1;
		stat_reset_0 <= stat_0_reset_2;
	end

	always @(posedge stat_clk_1) 
	begin
		stat_1_reset_1 <= reset_int;
		stat_1_reset_2 <= stat_1_reset_1;
		stat_reset_1 <= stat_1_reset_2;
	end

	always @(posedge stat_clk_2) 
	begin
		stat_2_reset_1 <= reset_int;
		stat_2_reset_2 <= stat_2_reset_1;
		stat_reset_2 <= stat_2_reset_2;
	end

	always @(posedge stat_clk_3) 
	begin
		stat_3_reset_1 <= reset_int;
		stat_3_reset_2 <= stat_3_reset_1;
		stat_reset_3 <= stat_3_reset_2;
	end

	always @(posedge stat_clk_4) 
	begin
		stat_4_reset_1 <= reset_int;
		stat_4_reset_2 <= stat_4_reset_1;
		stat_reset_4 <= stat_4_reset_2;
	end

	always @(posedge stat_clk_5) 
	begin
		stat_5_reset_1 <= reset_int;
		stat_5_reset_2 <= stat_5_reset_1;
		stat_reset_5 <= stat_5_reset_2;
	end

	always @(posedge stat_clk_6) 
	begin
		stat_6_reset_1 <= reset_int;
		stat_6_reset_2 <= stat_6_reset_1;
		stat_reset_6 <= stat_6_reset_2;
	end

	always @(posedge stat_clk_0) 
	begin
	    stat_idle_sync_0 <= stat_idle_in_0;
	end
	
	always @(posedge clk) 
	begin
		stat_0_idle_1 <= stat_idle_sync_0;
		stat_0_idle_2 <= stat_0_idle_1;
		stat_idle[0] <= stat_0_idle_2 & !stat_wr[0] & !stat_start[0];
	end

	always @(posedge stat_clk_1) 
	begin
	    stat_idle_sync_1 <= stat_idle_in_1;
	end
	
	always @(posedge clk) 
	begin
		stat_1_idle_1 <= stat_idle_sync_1;
		stat_1_idle_2 <= stat_1_idle_1;
		stat_idle[1] <= stat_1_idle_2 & !stat_wr[1] & !stat_start[1];
	end

	always @(posedge stat_clk_2) 
	begin
	    stat_idle_sync_2 <= stat_idle_in_2;
	end
	
	always @(posedge clk) 
	begin
		stat_2_idle_1 <= stat_idle_sync_2;
		stat_2_idle_2 <= stat_2_idle_1;
		stat_idle[2] <= stat_2_idle_2 & !stat_wr[2] & !stat_start[2];
	end

	always @(posedge stat_clk_3) 
	begin
	    stat_idle_sync_3 <= stat_idle_in_3;
	end
	
	always @(posedge clk) 
	begin
		stat_3_idle_1 <= stat_idle_sync_3;
		stat_3_idle_2 <= stat_3_idle_1;
		stat_idle[3] <= stat_3_idle_2 & !stat_wr[3] & !stat_start[3];
	end

	always @(posedge stat_clk_4) 
	begin
	    stat_idle_sync_4 <= stat_idle_in_4;
	end
	
	always @(posedge clk) 
	begin
		stat_4_idle_1 <= stat_idle_sync_4;
		stat_4_idle_2 <= stat_4_idle_1;
		stat_idle[4] <= stat_4_idle_2 & !stat_wr[4] & !stat_start[4];
	end

	always @(posedge stat_clk_5) 
	begin
	    stat_idle_sync_5 <= stat_idle_in_5;
	end
	
	always @(posedge clk) 
	begin
		stat_5_idle_1 <= stat_idle_sync_5;
		stat_5_idle_2 <= stat_5_idle_1;
		stat_idle[5] <= stat_5_idle_2 & !stat_wr[5] & !stat_start[5];
	end

	always @(posedge stat_clk_6) 
	begin
	    stat_idle_sync_6 <= stat_idle_in_6;
	end
	
	always @(posedge clk) 
	begin
		stat_6_idle_1 <= stat_idle_sync_6;
		stat_6_idle_2 <= stat_6_idle_1;
		stat_idle[6] <= stat_6_idle_2 & !stat_wr[6] & !stat_start[6];
	end

	always @(posedge fifo_clk) 
    begin
		if (fifo_active)
		begin
			raw_in_data[63:0] <= fifo_re;
            raw_in_data[127:64] <= fifo_im;
            raw_wr <= 1;
		end
		else
            raw_wr <= 0;
    end

    always @(posedge fifo_clk) 
    begin
	   if (fifo_burst)
       begin
            ana_in_data[15:0] <= fifo_sample;
            ana_in_data[24:16] <= fifo_size;
            ana_in_data[44:25] <= fifo_freq;
            ana_in_data[60:45] <= fifo_angle;
            ana_in_data[70:61] <= fifo_doa_error;
            ana_wr <= 1;
       end
       else
            ana_wr <= 0;
    end

    always @(posedge clk) 
    begin
	   if (raw_empty)
	   begin
	       raw_delay <= 5'b11111;
           raw_rd <= 0;
       end
	   else
	   begin
	       if (raw_delay)
	       begin
	           raw_rd <= 0;
	           raw_delay <= raw_delay - 1;
	       end
	       else
	           raw_rd <= 1;
       end
    end

    always @(posedge clk) 
    begin
        raw_out_2 <= raw_out_1;
        raw_out_data <= raw_out_2;
    end

    always @(posedge clk) 
	begin
        if (raw_rd & (!raw_empty))
        begin
            raw_run <= 1;

            re_0 <= raw_re[15:0];
            re_1 <= raw_re[31:16];
            re_2 <= raw_re[47:32];
            re_3 <= raw_re[63:48];

            im_0 <= raw_im[15:0];
            im_1 <= raw_im[31:16];
            im_2 <= raw_im[47:32];
            im_3 <= raw_im[63:48];
        end
        else
            raw_run <= 0;
	end

    always @(posedge clk) 
    begin
		if (valid)
			raw_sample <= raw_sample + 1;
		else
			raw_sample <= 0;
	end

    always @(posedge clk) 
    begin
		if (valid)
        begin
            sample_counter_0 <= sample_counter_0 + 1;
            if (sample_counter_0 == 16'hFFFE)
                sample_ov_0 <= 1;
            else
                sample_ov_0 <= 0;
        end
        else
        begin
            sample_counter_0 <= 0;
            sample_ov_0 <= 0;
        end
    end

    always @(posedge clk) 
    begin
		if (valid)
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
            sample_counter_1 <= 0;
            sample_ov_1 <= 0;
        end
    end

    always @(posedge clk) 
    begin
		if (valid)
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
            sample_counter_2 <= 0;
            sample_ov_2 <= 0;
        end
    end

    always @(posedge clk) 
    begin
		if (valid)
        begin
            if (sample_ov_0 & sample_ov_1 & sample_ov_2)
                sample_counter_3 <= sample_counter_3 + 1;
        end
        else
            sample_counter_3 <= 0;
    end
                    
    always @(posedge clk) 
	begin
        reset_int <= reset;
    end

    always @(posedge clk) 
	begin
        if (valid)
        begin
            if (curr_sample == raw_sample)
                ana_trig <= 1;
            else
                ana_trig <= 0;
        end
        else
            ana_trig <= 0;
    end

    always @(posedge clk) 
	begin
        if (ana_trig & !ana_empty)
        begin
     	    curr_error <= 0;
	        casex (stat_idle)
	            7'bxxxxxx1 : curr_stat <= 0;
	            7'bxxxxx10 : curr_stat <= 1;
	            7'bxxxx100 : curr_stat <= 2;
	            7'bxxx1000 : curr_stat <= 3;
	            7'bxx10000 : curr_stat <= 4;
	            7'bx100000 : curr_stat <= 5;
	            7'b1000000 : curr_stat <= 6;
	            default: curr_error <= 1;
    	    endcase
    	end
    end
    
    always @(posedge clk) 
	begin
		if (curr_error)
            stat_start <= 0;
		else
		begin
			if (count == 1)
			begin
				stat_sample[curr_stat] <= pend_sample;
				stat_freq[curr_stat] <= pend_freq;
				stat_angle[curr_stat] <= pend_angle;
				stat_doa_error[curr_stat] <= pend_doa_error;
				stat_start[curr_stat] <= 1;
			end
			else
				stat_start <= 0;
		end
	end

    always @(posedge clk) 
	begin
        if (ana_trig & !ana_empty)
        begin
            ana_rd <= 1;
            run <= 1;
            size <= ana_out_data[24:16];
            count <= ana_out_data[24:16];
            stat_wr <= 0;
			
            pend_sample <= {sample_counter_3, sample_counter_2, sample_counter_1, sample_counter_0};
            pend_freq <= ana_out_data[44:25];
            pend_angle <= ana_out_data[60:45];
            pend_doa_error <= ana_out_data[70:61];
        end
        else
        begin
            ana_rd <= 0;
			
			if (curr_error)
			begin
                run <= 0;
                stat_wr <= 0;
                count <= 0;
			end
			else
			begin
				if (count)
				begin
					count <= count - 1;
					stat_wr[curr_stat] <= 1;

					stat_env_0[curr_stat] <= env_0;
					stat_env_1[curr_stat] <= env_1;
					stat_env_2[curr_stat] <= env_2;
					stat_env_3[curr_stat] <= env_3;

					stat_phase_0[curr_stat] <= phase_0;
					stat_phase_1[curr_stat] <= phase_1;
					stat_phase_2[curr_stat] <= phase_2;
					stat_phase_3[curr_stat] <= phase_3;                        
				end
				else
				begin
					run <= 0;
					stat_wr <= 0;
					count <= 0;
				end
            end
        end
	end

    always @(posedge axi_clk) 
	begin
		case (axi_pend[1:0])
			2'b00: axi_state_01 <= STAT_NONE;
			2'b01: axi_state_01 <= STAT_A;
			2'b10: axi_state_01 <= STAT_B;
			2'b11:
			begin
				axi_state_01 <= STAT_COMP;
				axi_diff_01 <= axi_pos[1] - axi_pos[0];
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		case (axi_pend[3:2])
			2'b00: axi_state_23 <= STAT_NONE;
			2'b01: axi_state_23 <= STAT_A;
			2'b10: axi_state_23 <= STAT_B;
			2'b11:
			begin
				axi_state_23 <= STAT_COMP;
				axi_diff_23 <= axi_pos[3] - axi_pos[2];
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		case (axi_pend[5:4])
			2'b00: axi_state_45 <= STAT_NONE;
			2'b01: axi_state_45 <= STAT_A;
			2'b10: axi_state_45 <= STAT_B;
			2'b11:
			begin
				axi_state_45 <= STAT_COMP;
				axi_diff_45 <= axi_pos[5] - axi_pos[4];
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		if (axi_pend[6])
			axi_state_6 <= STAT_A;
		else
			axi_state_6 <= STAT_NONE;
	end

    always @(posedge axi_clk) 
	begin
		axi_ok_01 <= 1;

		case (axi_state_01)
			STAT_NONE: axi_ok_01 <= 0;
			STAT_A: axi_ind_01 <= 0;
			STAT_B: axi_ind_01 <= 1;
			STAT_COMP: axi_ind_01 <= axi_diff_01[19];
		endcase
	end

    always @(posedge axi_clk) 
	begin
		axi_ok_23 <= 1;
		
		case (axi_state_23)
			STAT_NONE: axi_ok_23 <= 0;
			STAT_A: axi_ind_23 <= 0;
			STAT_B: axi_ind_23 <= 1;
			STAT_COMP: axi_ind_23 <= axi_diff_23[19];
		endcase
	end

    always @(posedge axi_clk) 
	begin
		axi_ok_45 <= 1;
		
		case (axi_state_45)
			STAT_NONE: axi_ok_45 <= 0;
			STAT_A: axi_ind_45 <= 0;
			STAT_B: axi_ind_45 <= 1;
			STAT_COMP: axi_ind_45 <= axi_diff_45[19];
		endcase
	end

    always @(posedge axi_clk) 
	begin
 	    if (axi_state_6 == STAT_NONE)
    		axi_ok_6 <= 0;
        else
            axi_ok_6 <= 1;
	end

    always @(posedge axi_clk) 
	begin
		case ({axi_ok_23, axi_ok_01})
			2'b00: axi_state_03 <= STAT_NONE;
			2'b01: axi_state_03 <= STAT_A;
			2'b10: axi_state_03 <= STAT_B;
			2'b11:
			begin
				axi_state_03 <= STAT_COMP;
				axi_diff_03 <=  axi_pos[2 + axi_ind_23] - axi_pos[axi_ind_01];
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		case ({axi_ok_6, axi_ok_45})
			2'b00: axi_state_46 <= STAT_NONE;
			2'b01: axi_state_46 <= STAT_A;
			2'b10: axi_state_46 <= STAT_B;
			2'b11:
			begin
				axi_state_46 <= STAT_COMP;
				axi_diff_46 <=  axi_pos[6] - axi_pos[4 + axi_ind_45];
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		axi_ok_03 <= 1;
		
		case (axi_state_03)
			STAT_NONE: axi_ok_03 <= 0;
			STAT_A: axi_ind_03 <= {1'b0, axi_ind_01};
			STAT_B: axi_ind_03 <= {1'b1, axi_ind_23};
			STAT_COMP: 
			begin
				if (axi_diff_03[19])
					axi_ind_03 <= {1'b1, axi_ind_23};
				else
					axi_ind_03 <= {1'b0, axi_ind_01};
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		axi_ok_46 <= 1;
		
	    case (axi_state_46)
			STAT_NONE: axi_ok_46 <= 0;
			STAT_A: axi_ind_46 <= {1'b0, axi_ind_45};
			STAT_B: axi_ind_46 <= 2'b10;
			STAT_COMP: 
			begin
				if (axi_diff_46[19])
					axi_ind_46 <= 2'b10;
				else
					axi_ind_46 <= {1'b0, axi_ind_45};
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		case ({axi_ok_46, axi_ok_03})
			2'b00: axi_state <= STAT_NONE;
			2'b01: axi_state <= STAT_A;
			2'b10: axi_state <= STAT_B;
			2'b11:
			begin
				axi_state <= STAT_COMP;
				axi_diff <=  axi_pos[4 + axi_ind_46] - axi_pos[axi_ind_03];
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
		axi_ok <= 1;
		case (axi_state)
			STAT_NONE: axi_ok <= 0;
			STAT_A: axi_ind <= {1'b0, axi_ind_03};
			STAT_B: axi_ind <= {1'b1, axi_ind_46};
			STAT_COMP: 
			begin
				if (axi_diff[19])
					axi_ind <= {1'b1, axi_ind_46};
				else
					axi_ind <= {1'b0, axi_ind_03};
			end
		endcase
	end

    always @(posedge axi_clk) 
	begin
        if (axi_get[0])
            axi_get[0] <= 0;
        else
            axi_get[0] <= axi_avail[0];
    end

    always @(posedge axi_clk) 
	begin
        if (axi_get[1])
            axi_get[1] <= 0;
        else
            axi_get[1] <= axi_avail[1];
    end

    always @(posedge axi_clk) 
	begin
        if (axi_get[2])
            axi_get[2] <= 0;
        else
            axi_get[2] <= axi_avail[2];
    end

    always @(posedge axi_clk) 
	begin
        if (axi_get[3])
            axi_get[3] <= 0;
        else
            axi_get[3] <= axi_avail[3];
    end

    always @(posedge axi_clk) 
	begin
        if (axi_get[4])
            axi_get[4] <= 0;
        else
            axi_get[4] <= axi_avail[4];
    end

    always @(posedge axi_clk) 
	begin
        if (axi_get[5])
            axi_get[5] <= 0;
        else
            axi_get[5] <= axi_avail[5];
    end

    always @(posedge axi_clk) 
	begin
        if (axi_get[6])
            axi_get[6] <= 0;
        else
            axi_get[6] <= axi_avail[6];
    end

  end
    
endgenerate

endmodule
