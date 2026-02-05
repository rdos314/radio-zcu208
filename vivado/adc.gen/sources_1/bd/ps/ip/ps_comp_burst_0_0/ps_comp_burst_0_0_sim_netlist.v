// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb  5 00:11:20 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_burst_0_0/ps_comp_burst_0_0_sim_netlist.v
// Design      : ps_comp_burst_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_comp_burst_0_0,comp_burst,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "comp_burst,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_comp_burst_0_0
   (config_clk,
    config_wr,
    config_adr,
    config_data,
    rt_clk,
    rt_enable,
    rt_start,
    rt_sample,
    rt_freq,
    rt_angle,
    rt_wr,
    rt_env_0,
    rt_env_1,
    rt_env_2,
    rt_env_3,
    rt_phase_0,
    rt_phase_1,
    rt_phase_2,
    rt_phase_3,
    clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rt_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rt_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana1_clk, INSERT_VIP 0" *) input rt_clk;
  input rt_enable;
  input rt_start;
  input [61:0]rt_sample;
  input [19:0]rt_freq;
  input [15:0]rt_angle;
  input rt_wr;
  input [15:0]rt_env_0;
  input [15:0]rt_env_1;
  input [15:0]rt_env_2;
  input [15:0]rt_env_3;
  input [19:0]rt_phase_0;
  input [19:0]rt_phase_1;
  input [19:0]rt_phase_2;
  input [19:0]rt_phase_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_stat_high_0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire config_wr;
  wire reset;
  wire [15:0]rt_angle;
  wire rt_clk;
  wire rt_enable;
  wire [15:0]rt_env_0;
  wire [15:0]rt_env_1;
  wire [15:0]rt_env_2;
  wire [15:0]rt_env_3;
  wire [19:0]rt_freq;
  wire [19:0]rt_phase_0;
  wire [61:0]rt_sample;
  wire rt_start;
  wire rt_wr;

  ps_comp_burst_0_0_comp_burst inst
       (.clk(clk),
        .config_adr(config_adr),
        .config_clk(config_clk),
        .config_data(config_data),
        .config_wr(config_wr),
        .reset(reset),
        .rt_angle(rt_angle),
        .rt_clk(rt_clk),
        .rt_enable(rt_enable),
        .rt_env_0(rt_env_0),
        .rt_env_1(rt_env_1),
        .rt_env_2(rt_env_2),
        .rt_env_3(rt_env_3),
        .rt_freq(rt_freq),
        .rt_phase_0(rt_phase_0),
        .rt_phase_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rt_phase_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rt_phase_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rt_sample(rt_sample),
        .rt_start(rt_start),
        .rt_wr(rt_wr));
endmodule

(* ORIG_REF_NAME = "comp_burst" *) 
module ps_comp_burst_0_0_comp_burst
   (config_clk,
    config_wr,
    config_adr,
    config_data,
    rt_clk,
    rt_enable,
    rt_start,
    rt_sample,
    rt_freq,
    rt_angle,
    rt_wr,
    rt_env_0,
    rt_env_1,
    rt_env_2,
    rt_env_3,
    rt_phase_0,
    rt_phase_1,
    rt_phase_2,
    rt_phase_3,
    clk,
    reset);
  input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  input rt_clk;
  input rt_enable;
  input rt_start;
  input [61:0]rt_sample;
  input [19:0]rt_freq;
  input [15:0]rt_angle;
  input rt_wr;
  input [15:0]rt_env_0;
  input [15:0]rt_env_1;
  input [15:0]rt_env_2;
  input [15:0]rt_env_3;
  input [19:0]rt_phase_0;
  input [19:0]rt_phase_1;
  input [19:0]rt_phase_2;
  input [19:0]rt_phase_3;
  input clk;
  input reset;

  (* MARK_DEBUG *) wire burst;
  wire cfg_empty;
  wire cfg_rd;
  wire clk;
  wire \comp_burst.burst_i_1_n_0 ;
  wire \comp_burst.cfg_rd_i_1_n_0 ;
  wire \comp_burst.complete_1_i_1_n_0 ;
  wire \comp_burst.complete_1_i_2_n_0 ;
  wire \comp_burst.complete_1_i_3_n_0 ;
  wire \comp_burst.complete_1_reg_n_0 ;
  wire \comp_burst.curr_size[8]_i_1_n_0 ;
  wire \comp_burst.curr_size[8]_i_2_n_0 ;
  wire \comp_burst.curr_size[8]_i_3_n_0 ;
  wire \comp_burst.df_active_i_1_n_0 ;
  wire \comp_burst.df_active_reg_n_0 ;
  wire \comp_burst.df_count[0]_i_1_n_0 ;
  wire \comp_burst.df_count[1]_i_1_n_0 ;
  wire \comp_burst.df_count[2]_i_1_n_0 ;
  wire \comp_burst.df_count[2]_i_3_n_0 ;
  wire \comp_burst.df_count[3]_i_1_n_0 ;
  wire \comp_burst.df_count_reg_n_0_[0] ;
  wire \comp_burst.df_count_reg_n_0_[1] ;
  wire \comp_burst.df_count_reg_n_0_[2] ;
  wire \comp_burst.df_count_reg_n_0_[3] ;
  wire \comp_burst.df_diff[0]_i_1_n_0 ;
  wire \comp_burst.df_diff[10]_i_1_n_0 ;
  wire \comp_burst.df_diff[11]_i_1_n_0 ;
  wire \comp_burst.df_diff[12]_i_1_n_0 ;
  wire \comp_burst.df_diff[13]_i_1_n_0 ;
  wire \comp_burst.df_diff[14]_i_1_n_0 ;
  wire \comp_burst.df_diff[15]_i_10_n_0 ;
  wire \comp_burst.df_diff[15]_i_12_n_0 ;
  wire \comp_burst.df_diff[15]_i_13_n_0 ;
  wire \comp_burst.df_diff[15]_i_14_n_0 ;
  wire \comp_burst.df_diff[15]_i_15_n_0 ;
  wire \comp_burst.df_diff[15]_i_16_n_0 ;
  wire \comp_burst.df_diff[15]_i_17_n_0 ;
  wire \comp_burst.df_diff[15]_i_18_n_0 ;
  wire \comp_burst.df_diff[15]_i_19_n_0 ;
  wire \comp_burst.df_diff[15]_i_1_n_0 ;
  wire \comp_burst.df_diff[15]_i_3_n_0 ;
  wire \comp_burst.df_diff[15]_i_4_n_0 ;
  wire \comp_burst.df_diff[15]_i_5_n_0 ;
  wire \comp_burst.df_diff[15]_i_6_n_0 ;
  wire \comp_burst.df_diff[15]_i_7_n_0 ;
  wire \comp_burst.df_diff[15]_i_8_n_0 ;
  wire \comp_burst.df_diff[15]_i_9_n_0 ;
  wire \comp_burst.df_diff[16]_i_1_n_0 ;
  wire \comp_burst.df_diff[17]_i_1_n_0 ;
  wire \comp_burst.df_diff[18]_i_1_n_0 ;
  wire \comp_burst.df_diff[19]_i_10_n_0 ;
  wire \comp_burst.df_diff[19]_i_11_n_0 ;
  wire \comp_burst.df_diff[19]_i_12_n_0 ;
  wire \comp_burst.df_diff[19]_i_1_n_0 ;
  wire \comp_burst.df_diff[19]_i_3_n_0 ;
  wire \comp_burst.df_diff[19]_i_4_n_0 ;
  wire \comp_burst.df_diff[19]_i_5_n_0 ;
  wire \comp_burst.df_diff[19]_i_6_n_0 ;
  wire \comp_burst.df_diff[19]_i_7_n_0 ;
  wire \comp_burst.df_diff[19]_i_9_n_0 ;
  wire \comp_burst.df_diff[1]_i_1_n_0 ;
  wire \comp_burst.df_diff[2]_i_1_n_0 ;
  wire \comp_burst.df_diff[3]_i_1_n_0 ;
  wire \comp_burst.df_diff[4]_i_1_n_0 ;
  wire \comp_burst.df_diff[5]_i_1_n_0 ;
  wire \comp_burst.df_diff[6]_i_1_n_0 ;
  wire \comp_burst.df_diff[7]_i_10_n_0 ;
  wire \comp_burst.df_diff[7]_i_12_n_0 ;
  wire \comp_burst.df_diff[7]_i_13_n_0 ;
  wire \comp_burst.df_diff[7]_i_14_n_0 ;
  wire \comp_burst.df_diff[7]_i_15_n_0 ;
  wire \comp_burst.df_diff[7]_i_16_n_0 ;
  wire \comp_burst.df_diff[7]_i_17_n_0 ;
  wire \comp_burst.df_diff[7]_i_18_n_0 ;
  wire \comp_burst.df_diff[7]_i_1_n_0 ;
  wire \comp_burst.df_diff[7]_i_3_n_0 ;
  wire \comp_burst.df_diff[7]_i_4_n_0 ;
  wire \comp_burst.df_diff[7]_i_5_n_0 ;
  wire \comp_burst.df_diff[7]_i_6_n_0 ;
  wire \comp_burst.df_diff[7]_i_7_n_0 ;
  wire \comp_burst.df_diff[7]_i_8_n_0 ;
  wire \comp_burst.df_diff[7]_i_9_n_0 ;
  wire \comp_burst.df_diff[8]_i_1_n_0 ;
  wire \comp_burst.df_diff[9]_i_1_n_0 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_0 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_1 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_10 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_11 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_12 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_13 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_14 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_15 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_2 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_3 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_4 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_5 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_6 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_7 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_8 ;
  wire \comp_burst.df_diff_reg[15]_i_11_n_9 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_0 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_1 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_2 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_3 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_4 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_5 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_6 ;
  wire \comp_burst.df_diff_reg[15]_i_2_n_7 ;
  wire \comp_burst.df_diff_reg[19]_i_2_n_5 ;
  wire \comp_burst.df_diff_reg[19]_i_2_n_6 ;
  wire \comp_burst.df_diff_reg[19]_i_2_n_7 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_12 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_13 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_14 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_15 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_5 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_6 ;
  wire \comp_burst.df_diff_reg[19]_i_8_n_7 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_0 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_1 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_10 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_11 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_12 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_13 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_14 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_15 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_2 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_3 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_4 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_5 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_6 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_7 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_8 ;
  wire \comp_burst.df_diff_reg[7]_i_11_n_9 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_0 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_1 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_2 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_3 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_4 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_5 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_6 ;
  wire \comp_burst.df_diff_reg[7]_i_2_n_7 ;
  wire \comp_burst.df_done_i_1_n_0 ;
  wire \comp_burst.df_ind[0]_i_1_n_0 ;
  wire \comp_burst.df_ind[1]_i_1_n_0 ;
  wire \comp_burst.df_ind[2]_i_1_n_0 ;
  wire \comp_burst.df_ind[3]_i_1_n_0 ;
  wire \comp_burst.df_ind[4]_i_1_n_0 ;
  wire \comp_burst.df_ind[5]_i_1_n_0 ;
  wire \comp_burst.df_ind[6]_i_1_n_0 ;
  wire \comp_burst.df_ind[7]_i_1_n_0 ;
  wire \comp_burst.df_ind[8]_i_2_n_0 ;
  wire \comp_burst.df_ind[8]_i_3_n_0 ;
  wire \comp_burst.df_ind_reg_n_0_[0] ;
  wire \comp_burst.df_ind_reg_n_0_[1] ;
  wire \comp_burst.df_ind_reg_n_0_[2] ;
  wire \comp_burst.df_ind_reg_n_0_[3] ;
  wire \comp_burst.df_ind_reg_n_0_[4] ;
  wire \comp_burst.df_ind_reg_n_0_[5] ;
  wire \comp_burst.df_ind_reg_n_0_[6] ;
  wire \comp_burst.df_ind_reg_n_0_[7] ;
  wire \comp_burst.df_ind_reg_n_0_[8] ;
  wire \comp_burst.df_low[19]_i_1_n_0 ;
  wire \comp_burst.df_low[19]_i_2_n_0 ;
  wire \comp_burst.df_low[19]_i_3_n_0 ;
  wire \comp_burst.df_low[19]_i_4_n_0 ;
  wire \comp_burst.df_start[0]_i_10_n_0 ;
  wire \comp_burst.df_start[0]_i_11_n_0 ;
  wire \comp_burst.df_start[0]_i_12_n_0 ;
  wire \comp_burst.df_start[0]_i_13_n_0 ;
  wire \comp_burst.df_start[0]_i_14_n_0 ;
  wire \comp_burst.df_start[0]_i_15_n_0 ;
  wire \comp_burst.df_start[0]_i_16_n_0 ;
  wire \comp_burst.df_start[0]_i_17_n_0 ;
  wire \comp_burst.df_start[0]_i_18_n_0 ;
  wire \comp_burst.df_start[0]_i_19_n_0 ;
  wire \comp_burst.df_start[0]_i_20_n_0 ;
  wire \comp_burst.df_start[0]_i_21_n_0 ;
  wire \comp_burst.df_start[0]_i_22_n_0 ;
  wire \comp_burst.df_start[0]_i_23_n_0 ;
  wire \comp_burst.df_start[0]_i_24_n_0 ;
  wire \comp_burst.df_start[0]_i_25_n_0 ;
  wire \comp_burst.df_start[0]_i_26_n_0 ;
  wire \comp_burst.df_start[0]_i_27_n_0 ;
  wire \comp_burst.df_start[0]_i_28_n_0 ;
  wire \comp_burst.df_start[0]_i_29_n_0 ;
  wire \comp_burst.df_start[0]_i_2_n_0 ;
  wire \comp_burst.df_start[0]_i_30_n_0 ;
  wire \comp_burst.df_start[0]_i_31_n_0 ;
  wire \comp_burst.df_start[0]_i_3_n_0 ;
  wire \comp_burst.df_start[0]_i_4_n_0 ;
  wire \comp_burst.df_start[0]_i_8_n_0 ;
  wire \comp_burst.df_start[0]_i_9_n_0 ;
  wire \comp_burst.df_start[3]_i_2_n_0 ;
  wire \comp_burst.df_start[4]_i_2_n_0 ;
  wire \comp_burst.df_start[4]_i_3_n_0 ;
  wire \comp_burst.df_start[5]_i_2_n_0 ;
  wire \comp_burst.df_start[5]_i_3_n_0 ;
  wire \comp_burst.df_start[6]_i_2_n_0 ;
  wire \comp_burst.df_start[6]_i_3_n_0 ;
  wire \comp_burst.df_start[7]_i_1_n_0 ;
  wire \comp_burst.df_start[7]_i_3_n_0 ;
  wire \comp_burst.df_start[7]_i_4_n_0 ;
  wire \comp_burst.df_start[8]_i_10_n_0 ;
  wire \comp_burst.df_start[8]_i_11_n_0 ;
  wire \comp_burst.df_start[8]_i_12_n_0 ;
  wire \comp_burst.df_start[8]_i_13_n_0 ;
  wire \comp_burst.df_start[8]_i_14_n_0 ;
  wire \comp_burst.df_start[8]_i_15_n_0 ;
  wire \comp_burst.df_start[8]_i_16_n_0 ;
  wire \comp_burst.df_start[8]_i_17_n_0 ;
  wire \comp_burst.df_start[8]_i_18_n_0 ;
  wire \comp_burst.df_start[8]_i_19_n_0 ;
  wire \comp_burst.df_start[8]_i_1_n_0 ;
  wire \comp_burst.df_start[8]_i_20_n_0 ;
  wire \comp_burst.df_start[8]_i_21_n_0 ;
  wire \comp_burst.df_start[8]_i_22_n_0 ;
  wire \comp_burst.df_start[8]_i_2_n_0 ;
  wire \comp_burst.df_start[8]_i_3_n_0 ;
  wire \comp_burst.df_start[8]_i_4_n_0 ;
  wire \comp_burst.df_start[8]_i_5_n_0 ;
  wire \comp_burst.df_start[8]_i_7_n_0 ;
  wire \comp_burst.df_start[8]_i_8_n_0 ;
  wire \comp_burst.df_start[8]_i_9_n_0 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_0 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_1 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_2 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_3 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_4 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_5 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_6 ;
  wire \comp_burst.df_start_reg[0]_i_5_n_7 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_1 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_2 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_3 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_4 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_5 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_6 ;
  wire \comp_burst.df_start_reg[0]_i_6_n_7 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_0 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_1 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_2 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_3 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_4 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_5 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_6 ;
  wire \comp_burst.df_start_reg[0]_i_7_n_7 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_0 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_1 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_2 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_3 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_4 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_5 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_6 ;
  wire \comp_burst.df_start_reg[8]_i_6_n_7 ;
  wire \comp_burst.df_start_reg_n_0_[0] ;
  wire \comp_burst.df_start_reg_n_0_[1] ;
  wire \comp_burst.df_start_reg_n_0_[2] ;
  wire \comp_burst.df_start_reg_n_0_[3] ;
  wire \comp_burst.df_start_reg_n_0_[4] ;
  wire \comp_burst.df_start_reg_n_0_[5] ;
  wire \comp_burst.df_start_reg_n_0_[6] ;
  wire \comp_burst.df_start_reg_n_0_[7] ;
  wire \comp_burst.df_start_reg_n_0_[8] ;
  wire \comp_burst.env_down_adr[10]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[10]_i_2_n_0 ;
  wire \comp_burst.env_down_adr[10]_i_3_n_0 ;
  wire \comp_burst.env_down_adr[2]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[3]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[4]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[4]_i_2_n_0 ;
  wire \comp_burst.env_down_adr[5]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[5]_i_2_n_0 ;
  wire \comp_burst.env_down_adr[6]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[6]_i_2_n_0 ;
  wire \comp_burst.env_down_adr[7]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[7]_i_2_n_0 ;
  wire \comp_burst.env_down_adr[8]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[8]_i_2_n_0 ;
  wire \comp_burst.env_down_adr[9]_i_1_n_0 ;
  wire \comp_burst.env_down_adr[9]_i_2_n_0 ;
  wire \comp_burst.env_down_adr_reg_n_0_[0] ;
  wire \comp_burst.env_down_adr_reg_n_0_[10] ;
  wire \comp_burst.env_down_adr_reg_n_0_[1] ;
  wire \comp_burst.env_down_adr_reg_n_0_[2] ;
  wire \comp_burst.env_down_adr_reg_n_0_[3] ;
  wire \comp_burst.env_down_adr_reg_n_0_[4] ;
  wire \comp_burst.env_down_adr_reg_n_0_[5] ;
  wire \comp_burst.env_down_adr_reg_n_0_[6] ;
  wire \comp_burst.env_down_adr_reg_n_0_[7] ;
  wire \comp_burst.env_down_adr_reg_n_0_[8] ;
  wire \comp_burst.env_down_adr_reg_n_0_[9] ;
  wire \comp_burst.env_down_max_ind[10]_i_1_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_10_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_11_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_12_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_13_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_14_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_15_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_16_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_17_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_18_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_1_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_3_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_4_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_5_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_6_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_7_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_8_n_0 ;
  wire \comp_burst.env_down_max_val[15]_i_9_n_0 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_0 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_1 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_2 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_3 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_4 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_5 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_6 ;
  wire \comp_burst.env_down_max_val_reg[15]_i_2_n_7 ;
  wire \comp_burst.env_down_ptr[3]_i_2_n_0 ;
  wire \comp_burst.env_down_ptr[5]_i_2_n_0 ;
  wire \comp_burst.env_down_ptr[7]_i_2_n_0 ;
  wire \comp_burst.env_down_ptr[8]_i_3_n_0 ;
  wire [8:0]\comp_burst.env_down_ptr_reg ;
  wire \comp_burst.env_down_val[0]_i_1_n_0 ;
  wire \comp_burst.env_down_val[10]_i_1_n_0 ;
  wire \comp_burst.env_down_val[11]_i_1_n_0 ;
  wire \comp_burst.env_down_val[12]_i_1_n_0 ;
  wire \comp_burst.env_down_val[13]_i_1_n_0 ;
  wire \comp_burst.env_down_val[14]_i_1_n_0 ;
  wire \comp_burst.env_down_val[15]_i_1_n_0 ;
  wire \comp_burst.env_down_val[1]_i_1_n_0 ;
  wire \comp_burst.env_down_val[2]_i_1_n_0 ;
  wire \comp_burst.env_down_val[3]_i_1_n_0 ;
  wire \comp_burst.env_down_val[4]_i_1_n_0 ;
  wire \comp_burst.env_down_val[5]_i_1_n_0 ;
  wire \comp_burst.env_down_val[6]_i_1_n_0 ;
  wire \comp_burst.env_down_val[7]_i_1_n_0 ;
  wire \comp_burst.env_down_val[8]_i_1_n_0 ;
  wire \comp_burst.env_down_val[9]_i_1_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_10_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_11_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_12_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_13_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_14_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_15_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_16_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_17_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_18_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_1_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_3_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_4_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_5_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_6_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_7_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_8_n_0 ;
  wire \comp_burst.env_end_ind[10]_i_9_n_0 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_0 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_1 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_2 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_3 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_4 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_5 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_6 ;
  wire \comp_burst.env_end_ind_reg[10]_i_2_n_7 ;
  wire \comp_burst.env_start_ind[10]_i_10_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_11_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_12_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_13_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_14_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_15_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_16_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_17_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_18_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_1_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_3_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_4_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_5_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_6_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_7_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_8_n_0 ;
  wire \comp_burst.env_start_ind[10]_i_9_n_0 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_0 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_1 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_2 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_3 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_4 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_5 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_6 ;
  wire \comp_burst.env_start_ind_reg[10]_i_2_n_7 ;
  wire \comp_burst.env_up_adr[0]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[10]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[10]_i_2_n_0 ;
  wire \comp_burst.env_up_adr[1]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[2]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[3]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[4]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[5]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[6]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[7]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[8]_i_1_n_0 ;
  wire \comp_burst.env_up_adr[9]_i_1_n_0 ;
  wire \comp_burst.env_up_adr_reg_n_0_[0] ;
  wire \comp_burst.env_up_adr_reg_n_0_[10] ;
  wire \comp_burst.env_up_adr_reg_n_0_[1] ;
  wire \comp_burst.env_up_adr_reg_n_0_[2] ;
  wire \comp_burst.env_up_adr_reg_n_0_[3] ;
  wire \comp_burst.env_up_adr_reg_n_0_[4] ;
  wire \comp_burst.env_up_adr_reg_n_0_[5] ;
  wire \comp_burst.env_up_adr_reg_n_0_[6] ;
  wire \comp_burst.env_up_adr_reg_n_0_[7] ;
  wire \comp_burst.env_up_adr_reg_n_0_[8] ;
  wire \comp_burst.env_up_adr_reg_n_0_[9] ;
  wire \comp_burst.env_up_max_ind[10]_i_1_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_10_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_11_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_12_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_13_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_14_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_15_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_16_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_17_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_18_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_19_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_2_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_4_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_5_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_6_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_7_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_8_n_0 ;
  wire \comp_burst.env_up_max_val[15]_i_9_n_0 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_0 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_1 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_2 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_3 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_4 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_5 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_6 ;
  wire \comp_burst.env_up_max_val_reg[15]_i_3_n_7 ;
  wire \comp_burst.env_up_max_val_reg_n_0_[0] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[10] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[11] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[12] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[13] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[14] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[15] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[1] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[2] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[3] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[4] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[5] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[6] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[7] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[8] ;
  wire \comp_burst.env_up_max_val_reg_n_0_[9] ;
  wire \comp_burst.env_up_ptr[0]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[1]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[2]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[3]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[4]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[5]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[6]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[7]_i_1_n_0 ;
  wire \comp_burst.env_up_ptr[8]_i_2_n_0 ;
  wire \comp_burst.env_up_ptr[8]_i_3_n_0 ;
  wire \comp_burst.env_up_ptr[8]_i_4_n_0 ;
  wire \comp_burst.env_up_val[0]_i_1_n_0 ;
  wire \comp_burst.env_up_val[10]_i_1_n_0 ;
  wire \comp_burst.env_up_val[11]_i_1_n_0 ;
  wire \comp_burst.env_up_val[12]_i_1_n_0 ;
  wire \comp_burst.env_up_val[13]_i_1_n_0 ;
  wire \comp_burst.env_up_val[14]_i_1_n_0 ;
  wire \comp_burst.env_up_val[15]_i_1_n_0 ;
  wire \comp_burst.env_up_val[1]_i_1_n_0 ;
  wire \comp_burst.env_up_val[2]_i_1_n_0 ;
  wire \comp_burst.env_up_val[3]_i_1_n_0 ;
  wire \comp_burst.env_up_val[4]_i_1_n_0 ;
  wire \comp_burst.env_up_val[5]_i_1_n_0 ;
  wire \comp_burst.env_up_val[6]_i_1_n_0 ;
  wire \comp_burst.env_up_val[7]_i_1_n_0 ;
  wire \comp_burst.env_up_val[8]_i_1_n_0 ;
  wire \comp_burst.env_up_val[9]_i_1_n_0 ;
  wire \comp_burst.filling_i_1_n_0 ;
  wire \comp_burst.filling_i_2_n_0 ;
  wire \comp_burst.mem_env_down_reg_n_68 ;
  wire \comp_burst.mem_env_down_reg_n_69 ;
  wire \comp_burst.mem_env_down_reg_n_70 ;
  wire \comp_burst.mem_env_down_reg_n_71 ;
  wire \comp_burst.mem_env_down_reg_n_72 ;
  wire \comp_burst.mem_env_down_reg_n_73 ;
  wire \comp_burst.mem_env_down_reg_n_74 ;
  wire \comp_burst.mem_env_down_reg_n_75 ;
  wire \comp_burst.mem_env_down_reg_n_76 ;
  wire \comp_burst.mem_env_down_reg_n_77 ;
  wire \comp_burst.mem_env_down_reg_n_78 ;
  wire \comp_burst.mem_env_down_reg_n_79 ;
  wire \comp_burst.mem_env_down_reg_n_80 ;
  wire \comp_burst.mem_env_down_reg_n_81 ;
  wire \comp_burst.mem_env_down_reg_n_82 ;
  wire \comp_burst.mem_env_down_reg_n_83 ;
  wire \comp_burst.mem_env_down_reg_n_84 ;
  wire \comp_burst.mem_env_down_reg_n_85 ;
  wire \comp_burst.mem_env_down_reg_n_86 ;
  wire \comp_burst.mem_env_down_reg_n_87 ;
  wire \comp_burst.mem_env_down_reg_n_88 ;
  wire \comp_burst.mem_env_down_reg_n_89 ;
  wire \comp_burst.mem_env_down_reg_n_90 ;
  wire \comp_burst.mem_env_down_reg_n_91 ;
  wire \comp_burst.mem_env_down_reg_n_92 ;
  wire \comp_burst.mem_env_down_reg_n_93 ;
  wire \comp_burst.mem_env_down_reg_n_94 ;
  wire \comp_burst.mem_env_down_reg_n_95 ;
  wire \comp_burst.mem_env_down_reg_n_96 ;
  wire \comp_burst.mem_env_down_reg_n_97 ;
  wire \comp_burst.mem_env_down_reg_n_98 ;
  wire \comp_burst.mem_env_down_reg_n_99 ;
  wire \comp_burst.mem_env_up_reg_n_68 ;
  wire \comp_burst.mem_env_up_reg_n_69 ;
  wire \comp_burst.mem_env_up_reg_n_70 ;
  wire \comp_burst.mem_env_up_reg_n_71 ;
  wire \comp_burst.mem_env_up_reg_n_72 ;
  wire \comp_burst.mem_env_up_reg_n_73 ;
  wire \comp_burst.mem_env_up_reg_n_74 ;
  wire \comp_burst.mem_env_up_reg_n_75 ;
  wire \comp_burst.mem_env_up_reg_n_76 ;
  wire \comp_burst.mem_env_up_reg_n_77 ;
  wire \comp_burst.mem_env_up_reg_n_78 ;
  wire \comp_burst.mem_env_up_reg_n_79 ;
  wire \comp_burst.mem_env_up_reg_n_80 ;
  wire \comp_burst.mem_env_up_reg_n_81 ;
  wire \comp_burst.mem_env_up_reg_n_82 ;
  wire \comp_burst.mem_env_up_reg_n_83 ;
  wire \comp_burst.mem_env_up_reg_n_84 ;
  wire \comp_burst.mem_env_up_reg_n_85 ;
  wire \comp_burst.mem_env_up_reg_n_86 ;
  wire \comp_burst.mem_env_up_reg_n_87 ;
  wire \comp_burst.mem_env_up_reg_n_88 ;
  wire \comp_burst.mem_env_up_reg_n_89 ;
  wire \comp_burst.mem_env_up_reg_n_90 ;
  wire \comp_burst.mem_env_up_reg_n_91 ;
  wire \comp_burst.mem_env_up_reg_n_92 ;
  wire \comp_burst.mem_env_up_reg_n_93 ;
  wire \comp_burst.mem_env_up_reg_n_94 ;
  wire \comp_burst.mem_env_up_reg_n_95 ;
  wire \comp_burst.mem_env_up_reg_n_96 ;
  wire \comp_burst.mem_env_up_reg_n_97 ;
  wire \comp_burst.mem_env_up_reg_n_98 ;
  wire \comp_burst.mem_env_up_reg_n_99 ;
  wire \comp_burst.mem_phase_reg_0_n_124 ;
  wire \comp_burst.mem_phase_reg_0_n_125 ;
  wire \comp_burst.mem_phase_reg_0_n_126 ;
  wire \comp_burst.mem_phase_reg_0_n_127 ;
  wire \comp_burst.mem_phase_reg_0_n_128 ;
  wire \comp_burst.mem_phase_reg_0_n_129 ;
  wire \comp_burst.mem_phase_reg_0_n_130 ;
  wire \comp_burst.mem_phase_reg_0_n_131 ;
  wire \comp_burst.mem_phase_reg_0_n_68 ;
  wire \comp_burst.mem_phase_reg_0_n_69 ;
  wire \comp_burst.mem_phase_reg_0_n_70 ;
  wire \comp_burst.mem_phase_reg_0_n_71 ;
  wire \comp_burst.mem_phase_reg_0_n_72 ;
  wire \comp_burst.mem_phase_reg_0_n_73 ;
  wire \comp_burst.mem_phase_reg_0_n_74 ;
  wire \comp_burst.mem_phase_reg_0_n_75 ;
  wire \comp_burst.mem_phase_reg_0_n_76 ;
  wire \comp_burst.mem_phase_reg_0_n_77 ;
  wire \comp_burst.mem_phase_reg_0_n_78 ;
  wire \comp_burst.mem_phase_reg_0_n_79 ;
  wire \comp_burst.mem_phase_reg_0_n_80 ;
  wire \comp_burst.mem_phase_reg_0_n_81 ;
  wire \comp_burst.mem_phase_reg_0_n_82 ;
  wire \comp_burst.mem_phase_reg_0_n_83 ;
  wire \comp_burst.mem_phase_reg_0_n_84 ;
  wire \comp_burst.mem_phase_reg_0_n_85 ;
  wire \comp_burst.mem_phase_reg_0_n_86 ;
  wire \comp_burst.mem_phase_reg_0_n_87 ;
  wire \comp_burst.mem_phase_reg_0_n_88 ;
  wire \comp_burst.mem_phase_reg_0_n_89 ;
  wire \comp_burst.mem_phase_reg_0_n_90 ;
  wire \comp_burst.mem_phase_reg_0_n_91 ;
  wire \comp_burst.mem_phase_reg_0_n_92 ;
  wire \comp_burst.mem_phase_reg_0_n_93 ;
  wire \comp_burst.mem_phase_reg_0_n_94 ;
  wire \comp_burst.mem_phase_reg_0_n_95 ;
  wire \comp_burst.mem_phase_reg_0_n_96 ;
  wire \comp_burst.mem_phase_reg_0_n_97 ;
  wire \comp_burst.mem_phase_reg_0_n_98 ;
  wire \comp_burst.mem_phase_reg_0_n_99 ;
  wire \comp_burst.min_env[15]_i_2_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_3_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_4_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_5_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_6_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_7_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_8_n_0 ;
  wire \comp_burst.p2_max_pos[10]_i_9_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_10_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_11_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_12_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_13_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_14_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_15_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_16_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_17_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_18_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_19_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_3_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_4_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_5_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_6_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_7_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_8_n_0 ;
  wire \comp_burst.p2_max_pos[7]_i_9_n_0 ;
  wire [10:0]\comp_burst.p2_max_pos_reg00_out ;
  wire [10:1]\comp_burst.p2_max_pos_reg2 ;
  wire \comp_burst.p2_max_pos_reg[10]_i_1_n_6 ;
  wire \comp_burst.p2_max_pos_reg[10]_i_1_n_7 ;
  wire \comp_burst.p2_max_pos_reg[10]_i_2_n_6 ;
  wire \comp_burst.p2_max_pos_reg[10]_i_2_n_7 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_0 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_1 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_2 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_3 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_4 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_5 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_6 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_1_n_7 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_0 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_1 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_2 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_3 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_4 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_5 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_6 ;
  wire \comp_burst.p2_max_pos_reg[7]_i_2_n_7 ;
  wire \comp_burst.p2_phase_diff[15]_i_11_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_12_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_13_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_14_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_15_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_16_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_17_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_18_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_2_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_3_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_4_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_5_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_6_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_7_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_8_n_0 ;
  wire \comp_burst.p2_phase_diff[15]_i_9_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_10_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_2_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_3_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_4_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_5_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_7_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_8_n_0 ;
  wire \comp_burst.p2_phase_diff[19]_i_9_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_11_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_12_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_13_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_14_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_15_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_16_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_17_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_2_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_3_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_4_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_5_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_6_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_7_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_8_n_0 ;
  wire \comp_burst.p2_phase_diff[7]_i_9_n_0 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_0 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_1 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_10 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_11 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_12 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_13 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_14 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_15 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_2 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_3 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_4 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_5 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_6 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_7 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_8 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_10_n_9 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_0 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_1 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_2 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_3 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_4 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_5 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_6 ;
  wire \comp_burst.p2_phase_diff_reg[15]_i_1_n_7 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_1_n_5 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_1_n_6 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_1_n_7 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_12 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_13 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_14 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_15 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_5 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_6 ;
  wire \comp_burst.p2_phase_diff_reg[19]_i_6_n_7 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_0 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_1 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_10 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_11 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_12 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_13 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_14 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_15 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_2 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_3 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_4 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_5 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_6 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_7 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_8 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_10_n_9 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_0 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_1 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_2 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_3 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_4 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_5 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_6 ;
  wire \comp_burst.p2_phase_diff_reg[7]_i_1_n_7 ;
  wire \comp_burst.p2_size[0]_i_1_n_0 ;
  wire \comp_burst.p2_size[10]_i_10_n_0 ;
  wire \comp_burst.p2_size[10]_i_11_n_0 ;
  wire \comp_burst.p2_size[10]_i_12_n_0 ;
  wire \comp_burst.p2_size[10]_i_13_n_0 ;
  wire \comp_burst.p2_size[10]_i_14_n_0 ;
  wire \comp_burst.p2_size[10]_i_15_n_0 ;
  wire \comp_burst.p2_size[10]_i_16_n_0 ;
  wire \comp_burst.p2_size[10]_i_1_n_0 ;
  wire \comp_burst.p2_size[10]_i_4_n_0 ;
  wire \comp_burst.p2_size[10]_i_5_n_0 ;
  wire \comp_burst.p2_size[10]_i_6_n_0 ;
  wire \comp_burst.p2_size[10]_i_7_n_0 ;
  wire \comp_burst.p2_size[10]_i_8_n_0 ;
  wire \comp_burst.p2_size[10]_i_9_n_0 ;
  wire \comp_burst.p2_size[1]_i_1_n_0 ;
  wire \comp_burst.p2_size[2]_i_1_n_0 ;
  wire \comp_burst.p2_size[3]_i_1_n_0 ;
  wire \comp_burst.p2_size[4]_i_1_n_0 ;
  wire \comp_burst.p2_size[5]_i_1_n_0 ;
  wire \comp_burst.p2_size[6]_i_1_n_0 ;
  wire \comp_burst.p2_size[7]_i_1_n_0 ;
  wire \comp_burst.p2_size[8]_i_1_n_0 ;
  wire \comp_burst.p2_size[9]_i_1_n_0 ;
  wire [10:0]\comp_burst.p2_size_reg1 ;
  wire \comp_burst.p2_size_reg[10]_i_2_n_6 ;
  wire \comp_burst.p2_size_reg[10]_i_2_n_7 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_0 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_1 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_2 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_3 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_4 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_5 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_6 ;
  wire \comp_burst.p2_size_reg[10]_i_3_n_7 ;
  wire \comp_burst.p2_wr_i_1_n_0 ;
  wire \comp_burst.p2_wr_reg_n_0 ;
  wire \comp_burst.p3_freq[15]_i_2_n_0 ;
  wire \comp_burst.p3_freq[15]_i_3_n_0 ;
  wire \comp_burst.p3_freq[15]_i_4_n_0 ;
  wire \comp_burst.p3_freq[15]_i_5_n_0 ;
  wire \comp_burst.p3_freq[15]_i_6_n_0 ;
  wire \comp_burst.p3_freq[15]_i_7_n_0 ;
  wire \comp_burst.p3_freq[15]_i_8_n_0 ;
  wire \comp_burst.p3_freq[15]_i_9_n_0 ;
  wire \comp_burst.p3_freq[19]_i_2_n_0 ;
  wire \comp_burst.p3_freq[19]_i_3_n_0 ;
  wire \comp_burst.p3_freq[19]_i_4_n_0 ;
  wire \comp_burst.p3_freq[19]_i_5_n_0 ;
  wire \comp_burst.p3_freq[19]_i_6_n_0 ;
  wire \comp_burst.p3_freq[7]_i_2_n_0 ;
  wire \comp_burst.p3_freq[7]_i_3_n_0 ;
  wire \comp_burst.p3_freq[7]_i_4_n_0 ;
  wire \comp_burst.p3_freq[7]_i_5_n_0 ;
  wire \comp_burst.p3_freq[7]_i_6_n_0 ;
  wire \comp_burst.p3_freq[7]_i_7_n_0 ;
  wire \comp_burst.p3_freq[7]_i_8_n_0 ;
  wire \comp_burst.p3_freq[7]_i_9_n_0 ;
  wire [19:0]\comp_burst.p3_freq_reg0 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_0 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_1 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_2 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_3 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_4 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_5 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_6 ;
  wire \comp_burst.p3_freq_reg[15]_i_1_n_7 ;
  wire \comp_burst.p3_freq_reg[19]_i_1_n_5 ;
  wire \comp_burst.p3_freq_reg[19]_i_1_n_6 ;
  wire \comp_burst.p3_freq_reg[19]_i_1_n_7 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_0 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_1 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_2 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_3 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_4 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_5 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_6 ;
  wire \comp_burst.p3_freq_reg[7]_i_1_n_7 ;
  wire \comp_burst.phase_val[0]_i_1_n_0 ;
  wire \comp_burst.phase_val[10]_i_1_n_0 ;
  wire \comp_burst.phase_val[11]_i_1_n_0 ;
  wire \comp_burst.phase_val[12]_i_1_n_0 ;
  wire \comp_burst.phase_val[13]_i_1_n_0 ;
  wire \comp_burst.phase_val[14]_i_1_n_0 ;
  wire \comp_burst.phase_val[15]_i_1_n_0 ;
  wire \comp_burst.phase_val[16]_i_1_n_0 ;
  wire \comp_burst.phase_val[17]_i_1_n_0 ;
  wire \comp_burst.phase_val[18]_i_1_n_0 ;
  wire \comp_burst.phase_val[19]_i_1_n_0 ;
  wire \comp_burst.phase_val[1]_i_1_n_0 ;
  wire \comp_burst.phase_val[2]_i_1_n_0 ;
  wire \comp_burst.phase_val[3]_i_1_n_0 ;
  wire \comp_burst.phase_val[4]_i_1_n_0 ;
  wire \comp_burst.phase_val[5]_i_1_n_0 ;
  wire \comp_burst.phase_val[6]_i_1_n_0 ;
  wire \comp_burst.phase_val[7]_i_1_n_0 ;
  wire \comp_burst.phase_val[8]_i_1_n_0 ;
  wire \comp_burst.phase_val[9]_i_1_n_0 ;
  wire \comp_burst.pred_phase[15]_i_10_n_0 ;
  wire \comp_burst.pred_phase[15]_i_11_n_0 ;
  wire \comp_burst.pred_phase[15]_i_12_n_0 ;
  wire \comp_burst.pred_phase[15]_i_13_n_0 ;
  wire \comp_burst.pred_phase[15]_i_14_n_0 ;
  wire \comp_burst.pred_phase[15]_i_15_n_0 ;
  wire \comp_burst.pred_phase[15]_i_16_n_0 ;
  wire \comp_burst.pred_phase[15]_i_17_n_0 ;
  wire \comp_burst.pred_phase[15]_i_2_n_0 ;
  wire \comp_burst.pred_phase[15]_i_3_n_0 ;
  wire \comp_burst.pred_phase[15]_i_4_n_0 ;
  wire \comp_burst.pred_phase[15]_i_5_n_0 ;
  wire \comp_burst.pred_phase[15]_i_6_n_0 ;
  wire \comp_burst.pred_phase[15]_i_7_n_0 ;
  wire \comp_burst.pred_phase[15]_i_8_n_0 ;
  wire \comp_burst.pred_phase[15]_i_9_n_0 ;
  wire \comp_burst.pred_phase[21]_i_10_n_0 ;
  wire \comp_burst.pred_phase[21]_i_11_n_0 ;
  wire \comp_burst.pred_phase[21]_i_2_n_0 ;
  wire \comp_burst.pred_phase[21]_i_3_n_0 ;
  wire \comp_burst.pred_phase[21]_i_4_n_0 ;
  wire \comp_burst.pred_phase[21]_i_5_n_0 ;
  wire \comp_burst.pred_phase[21]_i_6_n_0 ;
  wire \comp_burst.pred_phase[21]_i_7_n_0 ;
  wire \comp_burst.pred_phase[21]_i_8_n_0 ;
  wire \comp_burst.pred_phase[21]_i_9_n_0 ;
  wire \comp_burst.pred_phase[7]_i_10_n_0 ;
  wire \comp_burst.pred_phase[7]_i_11_n_0 ;
  wire \comp_burst.pred_phase[7]_i_12_n_0 ;
  wire \comp_burst.pred_phase[7]_i_13_n_0 ;
  wire \comp_burst.pred_phase[7]_i_14_n_0 ;
  wire \comp_burst.pred_phase[7]_i_15_n_0 ;
  wire \comp_burst.pred_phase[7]_i_16_n_0 ;
  wire \comp_burst.pred_phase[7]_i_17_n_0 ;
  wire \comp_burst.pred_phase[7]_i_2_n_0 ;
  wire \comp_burst.pred_phase[7]_i_3_n_0 ;
  wire \comp_burst.pred_phase[7]_i_4_n_0 ;
  wire \comp_burst.pred_phase[7]_i_5_n_0 ;
  wire \comp_burst.pred_phase[7]_i_6_n_0 ;
  wire \comp_burst.pred_phase[7]_i_7_n_0 ;
  wire \comp_burst.pred_phase[7]_i_8_n_0 ;
  wire \comp_burst.pred_phase[7]_i_9_n_0 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_0 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_1 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_10 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_11 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_12 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_13 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_14 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_15 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_2 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_3 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_4 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_5 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_6 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_7 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_8 ;
  wire \comp_burst.pred_phase_reg[15]_i_1_n_9 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_10 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_11 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_12 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_13 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_14 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_15 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_3 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_4 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_5 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_6 ;
  wire \comp_burst.pred_phase_reg[21]_i_1_n_7 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_0 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_1 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_10 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_11 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_12 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_13 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_14 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_15 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_2 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_3 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_4 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_5 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_6 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_7 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_8 ;
  wire \comp_burst.pred_phase_reg[7]_i_1_n_9 ;
  wire \comp_burst.run_env_end_i_1_n_0 ;
  wire \comp_burst.run_env_i_1_n_0 ;
  wire \comp_burst.run_env_i_2_n_0 ;
  wire \comp_burst.run_env_i_3_n_0 ;
  wire \comp_burst.run_env_reg_n_0 ;
  wire \comp_burst.run_env_start_i_1_n_0 ;
  wire \comp_burst.scan_start_i_1_n_0 ;
  wire \comp_burst.scan_start_i_2_n_0 ;
  wire \comp_burst.wr_ptr[0]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[1]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[2]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[3]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[4]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[5]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[6]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[7]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[8]_i_1_n_0 ;
  wire \comp_burst.wr_ptr[8]_i_2_n_0 ;
  wire \comp_burst.wr_ptr[8]_i_3_n_0 ;
  wire comp_env;
  (* MARK_DEBUG *) wire complete_2;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire [23:0]config_data_adr_out;
  wire config_wr;
  wire [8:0]curr_size;
  wire [19:0]data0;
  wire df_count;
  (* MARK_DEBUG *) wire [19:0]df_diff;
  wire df_done;
  wire [0:0]df_ind;
  wire [19:0]df_low;
  wire [31:0]df_start2;
  wire [15:0]env_down_2;
  wire [15:0]env_down_3;
  wire [1:0]env_down_adr0;
  wire [10:0]env_down_ind;
  wire [10:0]env_down_max_ind;
  wire [15:0]env_down_max_val;
  wire env_down_ptr0;
  wire [15:0]env_down_val;
  wire [10:0]env_end_ind;
  wire [63:0]env_in;
  wire env_in0;
  wire [10:0]env_start_ind;
  wire [15:0]env_up_2;
  wire [15:0]env_up_3;
  wire [0:0]env_up_adr;
  wire [10:0]env_up_ind;
  wire [10:0]env_up_max_ind;
  wire [0:0]env_up_max_val;
  wire [8:0]env_up_ptr;
  wire [15:0]env_up_val;
  wire filling;
  (* MARK_DEBUG *) wire [15:0]in_angle;
  (* MARK_DEBUG *) wire [19:0]in_freq;
  wire load_env;
  (* MARK_DEBUG *) wire mem_wr;
  wire [15:0]min_env;
  wire min_env0;
  (* MARK_DEBUG *) wire p2_active;
  wire p2_done;
  wire [15:0]p2_env;
  wire [15:0]p2_env_0;
  wire [15:0]p2_env_1;
  wire [15:0]p2_env_2;
  wire [15:0]p2_env_3;
  (* MARK_DEBUG *) wire [19:0]p2_freq;
  (* MARK_DEBUG *) wire [10:0]p2_max_pos;
  wire [15:0]p2_phase;
  wire [15:0]p2_phase_0;
  wire [15:0]p2_phase_1;
  wire [15:0]p2_phase_2;
  wire [15:0]p2_phase_3;
  wire [19:0]p2_phase_diff;
  wire [19:0]p2_phase_diff02_out;
  (* MARK_DEBUG *) wire [19:0]p2_phase_diff_0;
  (* MARK_DEBUG *) wire [19:0]p2_phase_diff_1;
  (* MARK_DEBUG *) wire [19:0]p2_phase_diff_2;
  (* MARK_DEBUG *) wire [19:0]p2_phase_diff_3;
  (* MARK_DEBUG *) wire [10:0]p2_size;
  (* MARK_DEBUG *) wire [19:0]p3_freq;
  wire [10:0]p3_max_pos;
  wire [10:0]p3_size;
  wire [7:0]p_0_in1_in__0;
  wire [8:0]p_0_in__0;
  wire [19:0]phase_2;
  wire [19:0]phase_3;
  wire [79:0]phase_in;
  wire [19:0]phase_val;
  wire [21:0]pred_phase;
  wire reset;
  wire [15:0]rt_angle;
  wire rt_clk;
  wire rt_data_empty;
  wire [143:0]rt_data_in;
  wire rt_data_in1;
  wire [143:0]rt_data_out;
  wire rt_data_rd;
  wire rt_data_wr;
  wire rt_enable;
  wire [15:0]rt_env_0;
  wire [15:0]rt_env_1;
  wire [15:0]rt_env_2;
  wire [15:0]rt_env_3;
  wire [19:0]rt_freq;
  wire rt_meta_empty;
  wire [97:0]rt_meta_in;
  wire rt_meta_in1;
  wire [97:62]rt_meta_out;
  wire rt_meta_rd;
  wire rt_meta_wr;
  wire [19:0]rt_phase_0;
  wire [61:0]rt_sample;
  wire rt_start;
  wire rt_wr;
  wire run_env_end;
  wire run_env_start;
  (* MARK_DEBUG *) wire scan_start;
  wire [8:0]wr_ptr;
  wire [7:3]\NLW_comp_burst.df_diff_reg[19]_i_2_CO_UNCONNECTED ;
  wire [7:4]\NLW_comp_burst.df_diff_reg[19]_i_2_O_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.df_diff_reg[19]_i_8_CO_UNCONNECTED ;
  wire [7:4]\NLW_comp_burst.df_diff_reg[19]_i_8_O_UNCONNECTED ;
  wire [7:7]\NLW_comp_burst.df_start_reg[0]_i_6_CO_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.env_down_max_val_reg[15]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.env_end_ind_reg[10]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.env_start_ind_reg[10]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.env_up_max_val_reg[15]_i_3_O_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_down_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_down_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_down_reg_DBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_down_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_down_reg_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_down_reg_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_down_reg_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_down_reg_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_down_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_down_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_down_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_down_reg_CASDOUTPB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_down_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_down_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.mem_env_down_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_comp_burst.mem_env_down_reg_RDADDRECC_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_up_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_up_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_up_reg_DBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_env_up_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_up_reg_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_up_reg_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_up_reg_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_up_reg_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_up_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_env_up_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_up_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_up_reg_CASDOUTPB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_up_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_env_up_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.mem_env_up_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_comp_burst.mem_env_up_reg_RDADDRECC_UNCONNECTED ;
  wire \NLW_comp_burst.mem_phase_reg_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_phase_reg_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_phase_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_comp_burst.mem_phase_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_phase_reg_0_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_phase_reg_0_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_phase_reg_0_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_phase_reg_0_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_phase_reg_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_comp_burst.mem_phase_reg_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_phase_reg_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_burst.mem_phase_reg_0_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_comp_burst.mem_phase_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_comp_burst.mem_phase_reg_0_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_comp_burst.mem_phase_reg_1_CASDINA_UNCONNECTED ;
  wire [15:0]\NLW_comp_burst.mem_phase_reg_1_CASDINB_UNCONNECTED ;
  wire [1:0]\NLW_comp_burst.mem_phase_reg_1_CASDINPA_UNCONNECTED ;
  wire [1:0]\NLW_comp_burst.mem_phase_reg_1_CASDINPB_UNCONNECTED ;
  wire [15:0]\NLW_comp_burst.mem_phase_reg_1_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_comp_burst.mem_phase_reg_1_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_comp_burst.mem_phase_reg_1_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_comp_burst.mem_phase_reg_1_CASDOUTPB_UNCONNECTED ;
  wire [15:8]\NLW_comp_burst.mem_phase_reg_1_DOUTADOUT_UNCONNECTED ;
  wire [15:0]\NLW_comp_burst.mem_phase_reg_1_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_comp_burst.mem_phase_reg_1_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_comp_burst.mem_phase_reg_1_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:2]\NLW_comp_burst.p2_max_pos_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.p2_max_pos_reg[10]_i_1_O_UNCONNECTED ;
  wire [7:2]\NLW_comp_burst.p2_max_pos_reg[10]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.p2_max_pos_reg[10]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_comp_burst.p2_max_pos_reg[7]_i_2_O_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.p2_phase_diff_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_comp_burst.p2_phase_diff_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.p2_phase_diff_reg[19]_i_6_CO_UNCONNECTED ;
  wire [7:4]\NLW_comp_burst.p2_phase_diff_reg[19]_i_6_O_UNCONNECTED ;
  wire [7:2]\NLW_comp_burst.p2_size_reg[10]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.p2_size_reg[10]_i_2_O_UNCONNECTED ;
  wire [7:3]\NLW_comp_burst.p3_freq_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_comp_burst.p3_freq_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:5]\NLW_comp_burst.pred_phase_reg[21]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_comp_burst.pred_phase_reg[21]_i_1_O_UNCONNECTED ;
  wire NLW_fifo_config_i_full_UNCONNECTED;
  wire NLW_fifo_config_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_config_i_wr_rst_busy_UNCONNECTED;
  wire [39:24]NLW_fifo_config_i_dout_UNCONNECTED;
  wire NLW_fifo_rt_data_i_full_UNCONNECTED;
  wire NLW_fifo_rt_data_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_rt_data_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_rt_meta_i_full_UNCONNECTED;
  wire [61:0]NLW_fifo_rt_meta_i_dout_UNCONNECTED;
  wire NLW_p3_i_active_UNCONNECTED;
  wire NLW_p3_i_done_UNCONNECTED;
  wire [15:0]NLW_p3_i_env_UNCONNECTED;
  wire [31:0]NLW_p3_i_env_sum_UNCONNECTED;
  wire [47:0]NLW_p3_i_env_sum2_UNCONNECTED;
  wire [15:0]NLW_p3_i_max_phase_UNCONNECTED;
  wire [15:0]NLW_p3_i_phase_UNCONNECTED;
  wire [31:0]NLW_p3_i_phase_sum_UNCONNECTED;
  wire [47:0]NLW_p3_i_phase_sum2_UNCONNECTED;
  wire [10:0]NLW_p3_i_pos_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.burst_i_1 
       (.I0(rt_meta_empty),
        .O(\comp_burst.burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.burst_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.burst_i_1_n_0 ),
        .Q(burst),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.cfg_rd_i_1 
       (.I0(cfg_empty),
        .O(\comp_burst.cfg_rd_i_1_n_0 ));
  FDRE \comp_burst.cfg_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.cfg_rd_i_1_n_0 ),
        .Q(cfg_rd),
        .R(1'b0));
  FDRE \comp_burst.comp_env_reg 
       (.C(clk),
        .CE(1'b1),
        .D(load_env),
        .Q(comp_env),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \comp_burst.complete_1_i_1 
       (.I0(\comp_burst.complete_1_i_2_n_0 ),
        .I1(env_down_ind[2]),
        .I2(env_down_ind[1]),
        .I3(env_down_ind[0]),
        .I4(\comp_burst.complete_1_i_3_n_0 ),
        .O(\comp_burst.complete_1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \comp_burst.complete_1_i_2 
       (.I0(scan_start),
        .I1(run_env_end),
        .I2(env_down_ind[9]),
        .I3(env_down_ind[10]),
        .I4(run_env_start),
        .I5(\comp_burst.run_env_reg_n_0 ),
        .O(\comp_burst.complete_1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_burst.complete_1_i_3 
       (.I0(env_down_ind[5]),
        .I1(env_down_ind[6]),
        .I2(env_down_ind[3]),
        .I3(env_down_ind[4]),
        .I4(env_down_ind[8]),
        .I5(env_down_ind[7]),
        .O(\comp_burst.complete_1_i_3_n_0 ));
  FDRE \comp_burst.complete_1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.complete_1_i_1_n_0 ),
        .Q(\comp_burst.complete_1_reg_n_0 ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.complete_2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.complete_1_reg_n_0 ),
        .Q(complete_2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.curr_size[8]_i_1 
       (.I0(reset),
        .I1(mem_wr),
        .O(\comp_burst.curr_size[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \comp_burst.curr_size[8]_i_2 
       (.I0(wr_ptr[4]),
        .I1(wr_ptr[3]),
        .I2(wr_ptr[6]),
        .I3(wr_ptr[5]),
        .I4(\comp_burst.curr_size[8]_i_3_n_0 ),
        .I5(mem_wr),
        .O(\comp_burst.curr_size[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.curr_size[8]_i_3 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[7]),
        .I2(wr_ptr[8]),
        .I3(wr_ptr[2]),
        .I4(wr_ptr[1]),
        .O(\comp_burst.curr_size[8]_i_3_n_0 ));
  FDRE \comp_burst.curr_size_reg[0] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[0]),
        .Q(curr_size[0]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[1] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[1]),
        .Q(curr_size[1]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[2] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[2]),
        .Q(curr_size[2]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[3] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[3]),
        .Q(curr_size[3]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[4] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[4]),
        .Q(curr_size[4]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[5] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[5]),
        .Q(curr_size[5]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[6] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[6]),
        .Q(curr_size[6]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[7] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[7]),
        .Q(curr_size[7]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  FDRE \comp_burst.curr_size_reg[8] 
       (.C(clk),
        .CE(\comp_burst.curr_size[8]_i_2_n_0 ),
        .D(wr_ptr[8]),
        .Q(curr_size[8]),
        .R(\comp_burst.curr_size[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FF010000)) 
    \comp_burst.df_active_i_1 
       (.I0(\comp_burst.df_low[19]_i_2_n_0 ),
        .I1(\comp_burst.df_low[19]_i_3_n_0 ),
        .I2(\comp_burst.df_low[19]_i_4_n_0 ),
        .I3(\comp_burst.df_active_reg_n_0 ),
        .I4(p2_active),
        .I5(\comp_burst.df_diff[19]_i_3_n_0 ),
        .O(\comp_burst.df_active_i_1_n_0 ));
  FDRE \comp_burst.df_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_active_i_1_n_0 ),
        .Q(\comp_burst.df_active_reg_n_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_count[0]_i_1 
       (.I0(\comp_burst.df_count_reg_n_0_[0] ),
        .O(\comp_burst.df_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_count[1]_i_1 
       (.I0(\comp_burst.df_count_reg_n_0_[1] ),
        .I1(\comp_burst.df_count_reg_n_0_[0] ),
        .O(\comp_burst.df_count[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \comp_burst.df_count[2]_i_1 
       (.I0(p2_active),
        .I1(\comp_burst.df_active_reg_n_0 ),
        .O(\comp_burst.df_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \comp_burst.df_count[2]_i_2 
       (.I0(\comp_burst.df_count_reg_n_0_[3] ),
        .I1(\comp_burst.df_count_reg_n_0_[2] ),
        .I2(\comp_burst.df_count_reg_n_0_[1] ),
        .I3(\comp_burst.df_count_reg_n_0_[0] ),
        .O(df_count));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \comp_burst.df_count[2]_i_3 
       (.I0(\comp_burst.df_count_reg_n_0_[2] ),
        .I1(\comp_burst.df_count_reg_n_0_[1] ),
        .I2(\comp_burst.df_count_reg_n_0_[0] ),
        .O(\comp_burst.df_count[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \comp_burst.df_count[3]_i_1 
       (.I0(\comp_burst.df_count_reg_n_0_[3] ),
        .I1(\comp_burst.df_count_reg_n_0_[2] ),
        .I2(\comp_burst.df_count_reg_n_0_[1] ),
        .I3(\comp_burst.df_count_reg_n_0_[0] ),
        .O(\comp_burst.df_count[3]_i_1_n_0 ));
  FDRE \comp_burst.df_count_reg[0] 
       (.C(clk),
        .CE(df_count),
        .D(\comp_burst.df_count[0]_i_1_n_0 ),
        .Q(\comp_burst.df_count_reg_n_0_[0] ),
        .R(\comp_burst.df_count[2]_i_1_n_0 ));
  FDRE \comp_burst.df_count_reg[1] 
       (.C(clk),
        .CE(df_count),
        .D(\comp_burst.df_count[1]_i_1_n_0 ),
        .Q(\comp_burst.df_count_reg_n_0_[1] ),
        .R(\comp_burst.df_count[2]_i_1_n_0 ));
  FDRE \comp_burst.df_count_reg[2] 
       (.C(clk),
        .CE(df_count),
        .D(\comp_burst.df_count[2]_i_3_n_0 ),
        .Q(\comp_burst.df_count_reg_n_0_[2] ),
        .R(\comp_burst.df_count[2]_i_1_n_0 ));
  FDRE \comp_burst.df_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_count[3]_i_1_n_0 ),
        .Q(\comp_burst.df_count_reg_n_0_[3] ),
        .R(\comp_burst.df_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[0]_i_1 
       (.I0(data0[0]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[0]),
        .O(\comp_burst.df_diff[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[10]_i_1 
       (.I0(data0[10]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[10]),
        .O(\comp_burst.df_diff[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[11]_i_1 
       (.I0(data0[11]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[11]),
        .O(\comp_burst.df_diff[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[12]_i_1 
       (.I0(data0[12]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[12]),
        .O(\comp_burst.df_diff[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[13]_i_1 
       (.I0(data0[13]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[13]),
        .O(\comp_burst.df_diff[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[14]_i_1 
       (.I0(data0[14]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[14]),
        .O(\comp_burst.df_diff[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[15]_i_1 
       (.I0(data0[15]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[15]),
        .O(\comp_burst.df_diff[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_10 
       (.I0(p2_phase_diff_0[8]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_15 ),
        .O(\comp_burst.df_diff[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_12 
       (.I0(df_low[15]),
        .O(\comp_burst.df_diff[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_13 
       (.I0(df_low[14]),
        .O(\comp_burst.df_diff[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_14 
       (.I0(df_low[13]),
        .O(\comp_burst.df_diff[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_15 
       (.I0(df_low[12]),
        .O(\comp_burst.df_diff[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_16 
       (.I0(df_low[11]),
        .O(\comp_burst.df_diff[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_17 
       (.I0(df_low[10]),
        .O(\comp_burst.df_diff[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_18 
       (.I0(df_low[9]),
        .O(\comp_burst.df_diff[15]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[15]_i_19 
       (.I0(df_low[8]),
        .O(\comp_burst.df_diff[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_3 
       (.I0(p2_phase_diff_0[15]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_8 ),
        .O(\comp_burst.df_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_4 
       (.I0(p2_phase_diff_0[14]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_9 ),
        .O(\comp_burst.df_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_5 
       (.I0(p2_phase_diff_0[13]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_10 ),
        .O(\comp_burst.df_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_6 
       (.I0(p2_phase_diff_0[12]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_11 ),
        .O(\comp_burst.df_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_7 
       (.I0(p2_phase_diff_0[11]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_12 ),
        .O(\comp_burst.df_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_8 
       (.I0(p2_phase_diff_0[10]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_13 ),
        .O(\comp_burst.df_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[15]_i_9 
       (.I0(p2_phase_diff_0[9]),
        .I1(\comp_burst.df_diff_reg[15]_i_11_n_14 ),
        .O(\comp_burst.df_diff[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[16]_i_1 
       (.I0(data0[16]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[16]),
        .O(\comp_burst.df_diff[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[17]_i_1 
       (.I0(data0[17]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[17]),
        .O(\comp_burst.df_diff[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[18]_i_1 
       (.I0(data0[18]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[18]),
        .O(\comp_burst.df_diff[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[19]_i_1 
       (.I0(data0[19]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[19]),
        .O(\comp_burst.df_diff[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[19]_i_10 
       (.I0(df_low[18]),
        .O(\comp_burst.df_diff[19]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[19]_i_11 
       (.I0(df_low[17]),
        .O(\comp_burst.df_diff[19]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[19]_i_12 
       (.I0(df_low[16]),
        .O(\comp_burst.df_diff[19]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \comp_burst.df_diff[19]_i_3 
       (.I0(\comp_burst.df_active_reg_n_0 ),
        .I1(\comp_burst.df_count_reg_n_0_[0] ),
        .I2(\comp_burst.df_count_reg_n_0_[1] ),
        .I3(\comp_burst.df_count_reg_n_0_[2] ),
        .I4(\comp_burst.df_count_reg_n_0_[3] ),
        .O(\comp_burst.df_diff[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[19]_i_4 
       (.I0(\comp_burst.df_diff_reg[19]_i_8_n_12 ),
        .I1(p2_phase_diff_0[19]),
        .O(\comp_burst.df_diff[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[19]_i_5 
       (.I0(p2_phase_diff_0[18]),
        .I1(\comp_burst.df_diff_reg[19]_i_8_n_13 ),
        .O(\comp_burst.df_diff[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[19]_i_6 
       (.I0(p2_phase_diff_0[17]),
        .I1(\comp_burst.df_diff_reg[19]_i_8_n_14 ),
        .O(\comp_burst.df_diff[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[19]_i_7 
       (.I0(p2_phase_diff_0[16]),
        .I1(\comp_burst.df_diff_reg[19]_i_8_n_15 ),
        .O(\comp_burst.df_diff[19]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[19]_i_9 
       (.I0(df_low[19]),
        .O(\comp_burst.df_diff[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[1]_i_1 
       (.I0(data0[1]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[1]),
        .O(\comp_burst.df_diff[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[2]_i_1 
       (.I0(data0[2]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[2]),
        .O(\comp_burst.df_diff[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[3]_i_1 
       (.I0(data0[3]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[3]),
        .O(\comp_burst.df_diff[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[4]_i_1 
       (.I0(data0[4]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[4]),
        .O(\comp_burst.df_diff[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[5]_i_1 
       (.I0(data0[5]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[5]),
        .O(\comp_burst.df_diff[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[6]_i_1 
       (.I0(data0[6]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[6]),
        .O(\comp_burst.df_diff[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[7]_i_1 
       (.I0(data0[7]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[7]),
        .O(\comp_burst.df_diff[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_10 
       (.I0(p2_phase_diff_0[0]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_15 ),
        .O(\comp_burst.df_diff[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_12 
       (.I0(df_low[7]),
        .O(\comp_burst.df_diff[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_13 
       (.I0(df_low[6]),
        .O(\comp_burst.df_diff[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_14 
       (.I0(df_low[5]),
        .O(\comp_burst.df_diff[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_15 
       (.I0(df_low[4]),
        .O(\comp_burst.df_diff[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_16 
       (.I0(df_low[3]),
        .O(\comp_burst.df_diff[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_17 
       (.I0(df_low[2]),
        .O(\comp_burst.df_diff[7]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_diff[7]_i_18 
       (.I0(df_low[1]),
        .O(\comp_burst.df_diff[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_3 
       (.I0(p2_phase_diff_0[7]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_8 ),
        .O(\comp_burst.df_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_4 
       (.I0(p2_phase_diff_0[6]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_9 ),
        .O(\comp_burst.df_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_5 
       (.I0(p2_phase_diff_0[5]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_10 ),
        .O(\comp_burst.df_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_6 
       (.I0(p2_phase_diff_0[4]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_11 ),
        .O(\comp_burst.df_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_7 
       (.I0(p2_phase_diff_0[3]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_12 ),
        .O(\comp_burst.df_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_8 
       (.I0(p2_phase_diff_0[2]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_13 ),
        .O(\comp_burst.df_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_diff[7]_i_9 
       (.I0(p2_phase_diff_0[1]),
        .I1(\comp_burst.df_diff_reg[7]_i_11_n_14 ),
        .O(\comp_burst.df_diff[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[8]_i_1 
       (.I0(data0[8]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[8]),
        .O(\comp_burst.df_diff[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.df_diff[9]_i_1 
       (.I0(data0[9]),
        .I1(\comp_burst.df_diff[19]_i_3_n_0 ),
        .I2(df_diff[9]),
        .O(\comp_burst.df_diff[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[0] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[0]_i_1_n_0 ),
        .Q(df_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[10] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[10]_i_1_n_0 ),
        .Q(df_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[11] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[11]_i_1_n_0 ),
        .Q(df_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[12] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[12]_i_1_n_0 ),
        .Q(df_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[13] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[13]_i_1_n_0 ),
        .Q(df_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[14] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[14]_i_1_n_0 ),
        .Q(df_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[15] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[15]_i_1_n_0 ),
        .Q(df_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_diff_reg[15]_i_11 
       (.CI(\comp_burst.df_diff_reg[7]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_diff_reg[15]_i_11_n_0 ,\comp_burst.df_diff_reg[15]_i_11_n_1 ,\comp_burst.df_diff_reg[15]_i_11_n_2 ,\comp_burst.df_diff_reg[15]_i_11_n_3 ,\comp_burst.df_diff_reg[15]_i_11_n_4 ,\comp_burst.df_diff_reg[15]_i_11_n_5 ,\comp_burst.df_diff_reg[15]_i_11_n_6 ,\comp_burst.df_diff_reg[15]_i_11_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\comp_burst.df_diff_reg[15]_i_11_n_8 ,\comp_burst.df_diff_reg[15]_i_11_n_9 ,\comp_burst.df_diff_reg[15]_i_11_n_10 ,\comp_burst.df_diff_reg[15]_i_11_n_11 ,\comp_burst.df_diff_reg[15]_i_11_n_12 ,\comp_burst.df_diff_reg[15]_i_11_n_13 ,\comp_burst.df_diff_reg[15]_i_11_n_14 ,\comp_burst.df_diff_reg[15]_i_11_n_15 }),
        .S({\comp_burst.df_diff[15]_i_12_n_0 ,\comp_burst.df_diff[15]_i_13_n_0 ,\comp_burst.df_diff[15]_i_14_n_0 ,\comp_burst.df_diff[15]_i_15_n_0 ,\comp_burst.df_diff[15]_i_16_n_0 ,\comp_burst.df_diff[15]_i_17_n_0 ,\comp_burst.df_diff[15]_i_18_n_0 ,\comp_burst.df_diff[15]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_diff_reg[15]_i_2 
       (.CI(\comp_burst.df_diff_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_diff_reg[15]_i_2_n_0 ,\comp_burst.df_diff_reg[15]_i_2_n_1 ,\comp_burst.df_diff_reg[15]_i_2_n_2 ,\comp_burst.df_diff_reg[15]_i_2_n_3 ,\comp_burst.df_diff_reg[15]_i_2_n_4 ,\comp_burst.df_diff_reg[15]_i_2_n_5 ,\comp_burst.df_diff_reg[15]_i_2_n_6 ,\comp_burst.df_diff_reg[15]_i_2_n_7 }),
        .DI(p2_phase_diff_0[15:8]),
        .O(data0[15:8]),
        .S({\comp_burst.df_diff[15]_i_3_n_0 ,\comp_burst.df_diff[15]_i_4_n_0 ,\comp_burst.df_diff[15]_i_5_n_0 ,\comp_burst.df_diff[15]_i_6_n_0 ,\comp_burst.df_diff[15]_i_7_n_0 ,\comp_burst.df_diff[15]_i_8_n_0 ,\comp_burst.df_diff[15]_i_9_n_0 ,\comp_burst.df_diff[15]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[16] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[16]_i_1_n_0 ),
        .Q(df_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[17] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[17]_i_1_n_0 ),
        .Q(df_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[18] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[18]_i_1_n_0 ),
        .Q(df_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[19] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[19]_i_1_n_0 ),
        .Q(df_diff[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_diff_reg[19]_i_2 
       (.CI(\comp_burst.df_diff_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.df_diff_reg[19]_i_2_CO_UNCONNECTED [7:3],\comp_burst.df_diff_reg[19]_i_2_n_5 ,\comp_burst.df_diff_reg[19]_i_2_n_6 ,\comp_burst.df_diff_reg[19]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,p2_phase_diff_0[18:16]}),
        .O({\NLW_comp_burst.df_diff_reg[19]_i_2_O_UNCONNECTED [7:4],data0[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\comp_burst.df_diff[19]_i_4_n_0 ,\comp_burst.df_diff[19]_i_5_n_0 ,\comp_burst.df_diff[19]_i_6_n_0 ,\comp_burst.df_diff[19]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_diff_reg[19]_i_8 
       (.CI(\comp_burst.df_diff_reg[15]_i_11_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.df_diff_reg[19]_i_8_CO_UNCONNECTED [7:3],\comp_burst.df_diff_reg[19]_i_8_n_5 ,\comp_burst.df_diff_reg[19]_i_8_n_6 ,\comp_burst.df_diff_reg[19]_i_8_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_comp_burst.df_diff_reg[19]_i_8_O_UNCONNECTED [7:4],\comp_burst.df_diff_reg[19]_i_8_n_12 ,\comp_burst.df_diff_reg[19]_i_8_n_13 ,\comp_burst.df_diff_reg[19]_i_8_n_14 ,\comp_burst.df_diff_reg[19]_i_8_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\comp_burst.df_diff[19]_i_9_n_0 ,\comp_burst.df_diff[19]_i_10_n_0 ,\comp_burst.df_diff[19]_i_11_n_0 ,\comp_burst.df_diff[19]_i_12_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[1] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[1]_i_1_n_0 ),
        .Q(df_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[2] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[2]_i_1_n_0 ),
        .Q(df_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[3] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[3]_i_1_n_0 ),
        .Q(df_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[4] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[4]_i_1_n_0 ),
        .Q(df_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[5] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[5]_i_1_n_0 ),
        .Q(df_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[6] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[6]_i_1_n_0 ),
        .Q(df_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[7] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[7]_i_1_n_0 ),
        .Q(df_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_diff_reg[7]_i_11 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_diff_reg[7]_i_11_n_0 ,\comp_burst.df_diff_reg[7]_i_11_n_1 ,\comp_burst.df_diff_reg[7]_i_11_n_2 ,\comp_burst.df_diff_reg[7]_i_11_n_3 ,\comp_burst.df_diff_reg[7]_i_11_n_4 ,\comp_burst.df_diff_reg[7]_i_11_n_5 ,\comp_burst.df_diff_reg[7]_i_11_n_6 ,\comp_burst.df_diff_reg[7]_i_11_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\comp_burst.df_diff_reg[7]_i_11_n_8 ,\comp_burst.df_diff_reg[7]_i_11_n_9 ,\comp_burst.df_diff_reg[7]_i_11_n_10 ,\comp_burst.df_diff_reg[7]_i_11_n_11 ,\comp_burst.df_diff_reg[7]_i_11_n_12 ,\comp_burst.df_diff_reg[7]_i_11_n_13 ,\comp_burst.df_diff_reg[7]_i_11_n_14 ,\comp_burst.df_diff_reg[7]_i_11_n_15 }),
        .S({\comp_burst.df_diff[7]_i_12_n_0 ,\comp_burst.df_diff[7]_i_13_n_0 ,\comp_burst.df_diff[7]_i_14_n_0 ,\comp_burst.df_diff[7]_i_15_n_0 ,\comp_burst.df_diff[7]_i_16_n_0 ,\comp_burst.df_diff[7]_i_17_n_0 ,\comp_burst.df_diff[7]_i_18_n_0 ,df_low[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_diff_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_diff_reg[7]_i_2_n_0 ,\comp_burst.df_diff_reg[7]_i_2_n_1 ,\comp_burst.df_diff_reg[7]_i_2_n_2 ,\comp_burst.df_diff_reg[7]_i_2_n_3 ,\comp_burst.df_diff_reg[7]_i_2_n_4 ,\comp_burst.df_diff_reg[7]_i_2_n_5 ,\comp_burst.df_diff_reg[7]_i_2_n_6 ,\comp_burst.df_diff_reg[7]_i_2_n_7 }),
        .DI(p2_phase_diff_0[7:0]),
        .O(data0[7:0]),
        .S({\comp_burst.df_diff[7]_i_3_n_0 ,\comp_burst.df_diff[7]_i_4_n_0 ,\comp_burst.df_diff[7]_i_5_n_0 ,\comp_burst.df_diff[7]_i_6_n_0 ,\comp_burst.df_diff[7]_i_7_n_0 ,\comp_burst.df_diff[7]_i_8_n_0 ,\comp_burst.df_diff[7]_i_9_n_0 ,\comp_burst.df_diff[7]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[8] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[8]_i_1_n_0 ),
        .Q(df_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.df_diff_reg[9] 
       (.C(clk),
        .CE(p2_active),
        .D(\comp_burst.df_diff[9]_i_1_n_0 ),
        .Q(df_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \comp_burst.df_done_i_1 
       (.I0(\comp_burst.df_count_reg_n_0_[3] ),
        .I1(\comp_burst.df_count_reg_n_0_[2] ),
        .I2(\comp_burst.df_count_reg_n_0_[1] ),
        .I3(\comp_burst.df_count_reg_n_0_[0] ),
        .I4(\comp_burst.df_active_reg_n_0 ),
        .I5(p2_active),
        .O(\comp_burst.df_done_i_1_n_0 ));
  FDRE \comp_burst.df_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_done_i_1_n_0 ),
        .Q(df_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_ind[0]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[0] ),
        .O(\comp_burst.df_ind[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_ind[1]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[0] ),
        .I1(\comp_burst.df_ind_reg_n_0_[1] ),
        .O(\comp_burst.df_ind[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \comp_burst.df_ind[2]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[2] ),
        .I1(\comp_burst.df_ind_reg_n_0_[0] ),
        .I2(\comp_burst.df_ind_reg_n_0_[1] ),
        .O(\comp_burst.df_ind[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.df_ind[3]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[1] ),
        .I1(\comp_burst.df_ind_reg_n_0_[0] ),
        .I2(\comp_burst.df_ind_reg_n_0_[2] ),
        .I3(\comp_burst.df_ind_reg_n_0_[3] ),
        .O(\comp_burst.df_ind[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \comp_burst.df_ind[4]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[4] ),
        .I1(\comp_burst.df_ind_reg_n_0_[1] ),
        .I2(\comp_burst.df_ind_reg_n_0_[0] ),
        .I3(\comp_burst.df_ind_reg_n_0_[2] ),
        .I4(\comp_burst.df_ind_reg_n_0_[3] ),
        .O(\comp_burst.df_ind[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \comp_burst.df_ind[5]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[5] ),
        .I1(\comp_burst.df_ind_reg_n_0_[3] ),
        .I2(\comp_burst.df_ind_reg_n_0_[2] ),
        .I3(\comp_burst.df_ind_reg_n_0_[0] ),
        .I4(\comp_burst.df_ind_reg_n_0_[1] ),
        .I5(\comp_burst.df_ind_reg_n_0_[4] ),
        .O(\comp_burst.df_ind[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \comp_burst.df_ind[6]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[6] ),
        .I1(\comp_burst.df_ind_reg_n_0_[4] ),
        .I2(\comp_burst.df_ind[8]_i_3_n_0 ),
        .I3(\comp_burst.df_ind_reg_n_0_[5] ),
        .O(\comp_burst.df_ind[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \comp_burst.df_ind[7]_i_1 
       (.I0(\comp_burst.df_ind_reg_n_0_[7] ),
        .I1(\comp_burst.df_ind_reg_n_0_[5] ),
        .I2(\comp_burst.df_ind[8]_i_3_n_0 ),
        .I3(\comp_burst.df_ind_reg_n_0_[4] ),
        .I4(\comp_burst.df_ind_reg_n_0_[6] ),
        .O(\comp_burst.df_ind[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.df_ind[8]_i_1 
       (.I0(p2_active),
        .O(df_ind));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \comp_burst.df_ind[8]_i_2 
       (.I0(\comp_burst.df_ind_reg_n_0_[8] ),
        .I1(\comp_burst.df_ind_reg_n_0_[6] ),
        .I2(\comp_burst.df_ind_reg_n_0_[4] ),
        .I3(\comp_burst.df_ind[8]_i_3_n_0 ),
        .I4(\comp_burst.df_ind_reg_n_0_[5] ),
        .I5(\comp_burst.df_ind_reg_n_0_[7] ),
        .O(\comp_burst.df_ind[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \comp_burst.df_ind[8]_i_3 
       (.I0(\comp_burst.df_ind_reg_n_0_[3] ),
        .I1(\comp_burst.df_ind_reg_n_0_[2] ),
        .I2(\comp_burst.df_ind_reg_n_0_[0] ),
        .I3(\comp_burst.df_ind_reg_n_0_[1] ),
        .O(\comp_burst.df_ind[8]_i_3_n_0 ));
  FDRE \comp_burst.df_ind_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[0]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[0] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[1]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[1] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[2]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[2] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[3]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[3] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[4]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[4] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[5]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[5] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[6]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[6] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[7]_i_1_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[7] ),
        .R(df_ind));
  FDRE \comp_burst.df_ind_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.df_ind[8]_i_2_n_0 ),
        .Q(\comp_burst.df_ind_reg_n_0_[8] ),
        .R(df_ind));
  LUT5 #(
    .INIT(32'h00010000)) 
    \comp_burst.df_low[19]_i_1 
       (.I0(\comp_burst.df_low[19]_i_2_n_0 ),
        .I1(\comp_burst.df_low[19]_i_3_n_0 ),
        .I2(\comp_burst.df_low[19]_i_4_n_0 ),
        .I3(\comp_burst.df_active_reg_n_0 ),
        .I4(p2_active),
        .O(\comp_burst.df_low[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \comp_burst.df_low[19]_i_2 
       (.I0(\comp_burst.df_ind_reg_n_0_[1] ),
        .I1(\comp_burst.df_start_reg_n_0_[1] ),
        .I2(\comp_burst.df_ind_reg_n_0_[2] ),
        .I3(\comp_burst.df_start_reg_n_0_[2] ),
        .I4(\comp_burst.df_start_reg_n_0_[0] ),
        .I5(\comp_burst.df_ind_reg_n_0_[0] ),
        .O(\comp_burst.df_low[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \comp_burst.df_low[19]_i_3 
       (.I0(\comp_burst.df_start_reg_n_0_[8] ),
        .I1(\comp_burst.df_ind_reg_n_0_[8] ),
        .I2(\comp_burst.df_ind_reg_n_0_[7] ),
        .I3(\comp_burst.df_start_reg_n_0_[7] ),
        .I4(\comp_burst.df_ind_reg_n_0_[6] ),
        .I5(\comp_burst.df_start_reg_n_0_[6] ),
        .O(\comp_burst.df_low[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \comp_burst.df_low[19]_i_4 
       (.I0(\comp_burst.df_ind_reg_n_0_[4] ),
        .I1(\comp_burst.df_start_reg_n_0_[4] ),
        .I2(\comp_burst.df_ind_reg_n_0_[5] ),
        .I3(\comp_burst.df_start_reg_n_0_[5] ),
        .I4(\comp_burst.df_start_reg_n_0_[3] ),
        .I5(\comp_burst.df_ind_reg_n_0_[3] ),
        .O(\comp_burst.df_low[19]_i_4_n_0 ));
  FDRE \comp_burst.df_low_reg[0] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[0]),
        .Q(df_low[0]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[10] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[10]),
        .Q(df_low[10]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[11] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[11]),
        .Q(df_low[11]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[12] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[12]),
        .Q(df_low[12]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[13] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[13]),
        .Q(df_low[13]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[14] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[14]),
        .Q(df_low[14]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[15] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[15]),
        .Q(df_low[15]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[16] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[16]),
        .Q(df_low[16]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[17] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[17]),
        .Q(df_low[17]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[18] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[18]),
        .Q(df_low[18]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[19] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[19]),
        .Q(df_low[19]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[1] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[1]),
        .Q(df_low[1]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[2] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[2]),
        .Q(df_low[2]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[3] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[3]),
        .Q(df_low[3]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[4] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[4]),
        .Q(df_low[4]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[5] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[5]),
        .Q(df_low[5]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[6] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[6]),
        .Q(df_low[6]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[7] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[7]),
        .Q(df_low[7]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[8] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[8]),
        .Q(df_low[8]),
        .R(1'b0));
  FDRE \comp_burst.df_low_reg[9] 
       (.C(clk),
        .CE(\comp_burst.df_low[19]_i_1_n_0 ),
        .D(p2_phase_diff_0[9]),
        .Q(df_low[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    \comp_burst.df_start[0]_i_1 
       (.I0(p2_size[2]),
        .I1(\comp_burst.df_start[8]_i_4_n_0 ),
        .I2(\comp_burst.df_start[0]_i_2_n_0 ),
        .I3(\comp_burst.df_start[0]_i_3_n_0 ),
        .I4(\comp_burst.df_start[0]_i_4_n_0 ),
        .I5(p2_max_pos[2]),
        .O(p_0_in1_in__0[0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_10 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_11 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_12 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_13 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_14 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFD0202FD)) 
    \comp_burst.df_start[0]_i_15 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_size[10]),
        .I4(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_16 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_17 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_18 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_19 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.df_start[0]_i_2 
       (.I0(df_start2[12]),
        .I1(df_start2[4]),
        .I2(df_start2[31]),
        .I3(df_start2[10]),
        .I4(\comp_burst.df_start[8]_i_12_n_0 ),
        .O(\comp_burst.df_start[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_20 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_21 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_22 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_23 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_24 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_25 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_26 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_27 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_28 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_29 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.df_start[0]_i_3 
       (.I0(df_start2[25]),
        .I1(df_start2[18]),
        .I2(df_start2[30]),
        .I3(df_start2[13]),
        .I4(\comp_burst.df_start[8]_i_10_n_0 ),
        .O(\comp_burst.df_start[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_30 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_31 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_burst.df_start[0]_i_4 
       (.I0(df_start2[8]),
        .I1(df_start2[20]),
        .I2(df_start2[22]),
        .I3(df_start2[5]),
        .I4(df_start2[19]),
        .I5(df_start2[16]),
        .O(\comp_burst.df_start[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_8 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \comp_burst.df_start[0]_i_9 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[10]),
        .O(\comp_burst.df_start[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \comp_burst.df_start[1]_i_1 
       (.I0(p2_size[2]),
        .I1(p2_size[3]),
        .I2(\comp_burst.df_start[8]_i_4_n_0 ),
        .I3(\comp_burst.df_start[8]_i_5_n_0 ),
        .I4(p2_max_pos[3]),
        .O(p_0_in1_in__0[1]));
  LUT6 #(
    .INIT(64'h0000E100FFFFE1FF)) 
    \comp_burst.df_start[2]_i_1 
       (.I0(p2_size[2]),
        .I1(p2_size[3]),
        .I2(p2_size[4]),
        .I3(\comp_burst.df_start[8]_i_4_n_0 ),
        .I4(\comp_burst.df_start[8]_i_5_n_0 ),
        .I5(p2_max_pos[4]),
        .O(p_0_in1_in__0[2]));
  LUT6 #(
    .INIT(64'hFF9F00900090FF9F)) 
    \comp_burst.df_start[3]_i_1 
       (.I0(p2_size[5]),
        .I1(\comp_burst.df_start[3]_i_2_n_0 ),
        .I2(\comp_burst.df_start[8]_i_4_n_0 ),
        .I3(\comp_burst.df_start[8]_i_5_n_0 ),
        .I4(p2_max_pos[5]),
        .I5(p2_max_pos[4]),
        .O(p_0_in1_in__0[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \comp_burst.df_start[3]_i_2 
       (.I0(p2_size[4]),
        .I1(p2_size[3]),
        .I2(p2_size[2]),
        .O(\comp_burst.df_start[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF9F00900090FF9F)) 
    \comp_burst.df_start[4]_i_1 
       (.I0(p2_size[6]),
        .I1(\comp_burst.df_start[4]_i_2_n_0 ),
        .I2(\comp_burst.df_start[8]_i_4_n_0 ),
        .I3(\comp_burst.df_start[8]_i_5_n_0 ),
        .I4(\comp_burst.df_start[4]_i_3_n_0 ),
        .I5(p2_max_pos[6]),
        .O(p_0_in1_in__0[4]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \comp_burst.df_start[4]_i_2 
       (.I0(p2_size[5]),
        .I1(p2_size[2]),
        .I2(p2_size[3]),
        .I3(p2_size[4]),
        .O(\comp_burst.df_start[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_burst.df_start[4]_i_3 
       (.I0(p2_max_pos[5]),
        .I1(p2_max_pos[4]),
        .O(\comp_burst.df_start[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF6F00600060FF6F)) 
    \comp_burst.df_start[5]_i_1 
       (.I0(p2_size[7]),
        .I1(\comp_burst.df_start[5]_i_2_n_0 ),
        .I2(\comp_burst.df_start[8]_i_4_n_0 ),
        .I3(\comp_burst.df_start[8]_i_5_n_0 ),
        .I4(\comp_burst.df_start[5]_i_3_n_0 ),
        .I5(p2_max_pos[7]),
        .O(p_0_in1_in__0[5]));
  LUT5 #(
    .INIT(32'h00015555)) 
    \comp_burst.df_start[5]_i_2 
       (.I0(p2_size[6]),
        .I1(p2_size[4]),
        .I2(p2_size[3]),
        .I3(p2_size[2]),
        .I4(p2_size[5]),
        .O(\comp_burst.df_start[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_burst.df_start[5]_i_3 
       (.I0(p2_max_pos[6]),
        .I1(p2_max_pos[4]),
        .I2(p2_max_pos[5]),
        .O(\comp_burst.df_start[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF6F00600060FF6F)) 
    \comp_burst.df_start[6]_i_1 
       (.I0(p2_size[8]),
        .I1(\comp_burst.df_start[6]_i_2_n_0 ),
        .I2(\comp_burst.df_start[8]_i_4_n_0 ),
        .I3(\comp_burst.df_start[8]_i_5_n_0 ),
        .I4(p2_max_pos[8]),
        .I5(\comp_burst.df_start[6]_i_3_n_0 ),
        .O(p_0_in1_in__0[6]));
  LUT6 #(
    .INIT(64'h0000000000005557)) 
    \comp_burst.df_start[6]_i_2 
       (.I0(p2_size[5]),
        .I1(p2_size[2]),
        .I2(p2_size[3]),
        .I3(p2_size[4]),
        .I4(p2_size[6]),
        .I5(p2_size[7]),
        .O(\comp_burst.df_start[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.df_start[6]_i_3 
       (.I0(p2_max_pos[7]),
        .I1(p2_max_pos[5]),
        .I2(p2_max_pos[4]),
        .I3(p2_max_pos[6]),
        .O(\comp_burst.df_start[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \comp_burst.df_start[7]_i_1 
       (.I0(complete_2),
        .I1(\comp_burst.df_start[8]_i_2_n_0 ),
        .I2(p2_max_pos[10]),
        .O(\comp_burst.df_start[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0060FF6FFF6F0060)) 
    \comp_burst.df_start[7]_i_2 
       (.I0(p2_size[9]),
        .I1(\comp_burst.df_start[7]_i_3_n_0 ),
        .I2(\comp_burst.df_start[8]_i_4_n_0 ),
        .I3(\comp_burst.df_start[8]_i_5_n_0 ),
        .I4(p2_max_pos[9]),
        .I5(\comp_burst.df_start[7]_i_4_n_0 ),
        .O(p_0_in1_in__0[7]));
  LUT4 #(
    .INIT(16'h0001)) 
    \comp_burst.df_start[7]_i_3 
       (.I0(p2_size[7]),
        .I1(p2_size[6]),
        .I2(\comp_burst.df_start[4]_i_2_n_0 ),
        .I3(p2_size[8]),
        .O(\comp_burst.df_start[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \comp_burst.df_start[7]_i_4 
       (.I0(p2_max_pos[8]),
        .I1(p2_max_pos[6]),
        .I2(p2_max_pos[4]),
        .I3(p2_max_pos[5]),
        .I4(p2_max_pos[7]),
        .O(\comp_burst.df_start[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4444D044)) 
    \comp_burst.df_start[8]_i_1 
       (.I0(\comp_burst.df_start[8]_i_2_n_0 ),
        .I1(p2_max_pos[10]),
        .I2(\comp_burst.df_start[8]_i_3_n_0 ),
        .I3(\comp_burst.df_start[8]_i_4_n_0 ),
        .I4(\comp_burst.df_start[8]_i_5_n_0 ),
        .O(\comp_burst.df_start[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.df_start[8]_i_10 
       (.I0(df_start2[3]),
        .I1(df_start2[24]),
        .I2(df_start2[11]),
        .I3(df_start2[14]),
        .O(\comp_burst.df_start[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.df_start[8]_i_11 
       (.I0(df_start2[10]),
        .I1(df_start2[31]),
        .I2(df_start2[4]),
        .I3(df_start2[12]),
        .O(\comp_burst.df_start[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.df_start[8]_i_12 
       (.I0(df_start2[7]),
        .I1(df_start2[9]),
        .I2(df_start2[21]),
        .I3(df_start2[27]),
        .O(\comp_burst.df_start[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hA956)) 
    \comp_burst.df_start[8]_i_13 
       (.I0(p2_size[9]),
        .I1(p2_max_pos[8]),
        .I2(\comp_burst.df_start[8]_i_21_n_0 ),
        .I3(p2_max_pos[9]),
        .O(\comp_burst.df_start[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.df_start[8]_i_14 
       (.I0(p2_size[8]),
        .I1(\comp_burst.df_start[8]_i_21_n_0 ),
        .I2(p2_max_pos[8]),
        .O(\comp_burst.df_start[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    \comp_burst.df_start[8]_i_15 
       (.I0(p2_size[7]),
        .I1(p2_max_pos[6]),
        .I2(p2_max_pos[5]),
        .I3(p2_max_pos[4]),
        .I4(\comp_burst.df_start[8]_i_22_n_0 ),
        .I5(p2_max_pos[7]),
        .O(\comp_burst.df_start[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    \comp_burst.df_start[8]_i_16 
       (.I0(p2_size[6]),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[4]),
        .I4(p2_max_pos[5]),
        .I5(p2_max_pos[6]),
        .O(\comp_burst.df_start[8]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \comp_burst.df_start[8]_i_17 
       (.I0(p2_size[5]),
        .I1(p2_max_pos[4]),
        .I2(p2_max_pos[3]),
        .I3(p2_max_pos[2]),
        .I4(p2_max_pos[5]),
        .O(\comp_burst.df_start[8]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hA956)) 
    \comp_burst.df_start[8]_i_18 
       (.I0(p2_size[4]),
        .I1(p2_max_pos[2]),
        .I2(p2_max_pos[3]),
        .I3(p2_max_pos[4]),
        .O(\comp_burst.df_start[8]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.df_start[8]_i_19 
       (.I0(p2_size[3]),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .O(\comp_burst.df_start[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_burst.df_start[8]_i_2 
       (.I0(p2_max_pos[7]),
        .I1(p2_max_pos[5]),
        .I2(p2_max_pos[4]),
        .I3(p2_max_pos[6]),
        .I4(p2_max_pos[8]),
        .I5(p2_max_pos[9]),
        .O(\comp_burst.df_start[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.df_start[8]_i_20 
       (.I0(p2_size[2]),
        .I1(p2_max_pos[2]),
        .O(\comp_burst.df_start[8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_burst.df_start[8]_i_21 
       (.I0(p2_max_pos[7]),
        .I1(p2_max_pos[3]),
        .I2(p2_max_pos[2]),
        .I3(p2_max_pos[4]),
        .I4(p2_max_pos[5]),
        .I5(p2_max_pos[6]),
        .O(\comp_burst.df_start[8]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_burst.df_start[8]_i_22 
       (.I0(p2_max_pos[2]),
        .I1(p2_max_pos[3]),
        .O(\comp_burst.df_start[8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \comp_burst.df_start[8]_i_3 
       (.I0(p2_size[10]),
        .I1(p2_size[9]),
        .I2(p2_size[7]),
        .I3(p2_size[6]),
        .I4(\comp_burst.df_start[4]_i_2_n_0 ),
        .I5(p2_size[8]),
        .O(\comp_burst.df_start[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000057)) 
    \comp_burst.df_start[8]_i_4 
       (.I0(df_start2[2]),
        .I1(df_start2[0]),
        .I2(df_start2[1]),
        .I3(\comp_burst.df_start[8]_i_7_n_0 ),
        .I4(\comp_burst.df_start[8]_i_8_n_0 ),
        .O(\comp_burst.df_start[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.df_start[8]_i_5 
       (.I0(\comp_burst.df_start[0]_i_4_n_0 ),
        .I1(\comp_burst.df_start[8]_i_9_n_0 ),
        .I2(\comp_burst.df_start[8]_i_10_n_0 ),
        .I3(\comp_burst.df_start[8]_i_11_n_0 ),
        .I4(\comp_burst.df_start[8]_i_12_n_0 ),
        .O(\comp_burst.df_start[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.df_start[8]_i_7 
       (.I0(df_start2[6]),
        .I1(df_start2[15]),
        .I2(df_start2[26]),
        .I3(df_start2[29]),
        .O(\comp_burst.df_start[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_burst.df_start[8]_i_8 
       (.I0(df_start2[17]),
        .I1(df_start2[23]),
        .I2(df_start2[28]),
        .O(\comp_burst.df_start[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.df_start[8]_i_9 
       (.I0(df_start2[13]),
        .I1(df_start2[30]),
        .I2(df_start2[18]),
        .I3(df_start2[25]),
        .O(\comp_burst.df_start[8]_i_9_n_0 ));
  FDRE \comp_burst.df_start_reg[0] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[0]),
        .Q(\comp_burst.df_start_reg_n_0_[0] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_start_reg[0]_i_5 
       (.CI(\comp_burst.df_start_reg[8]_i_6_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_start_reg[0]_i_5_n_0 ,\comp_burst.df_start_reg[0]_i_5_n_1 ,\comp_burst.df_start_reg[0]_i_5_n_2 ,\comp_burst.df_start_reg[0]_i_5_n_3 ,\comp_burst.df_start_reg[0]_i_5_n_4 ,\comp_burst.df_start_reg[0]_i_5_n_5 ,\comp_burst.df_start_reg[0]_i_5_n_6 ,\comp_burst.df_start_reg[0]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p2_size[10]}),
        .O(df_start2[15:8]),
        .S({\comp_burst.df_start[0]_i_8_n_0 ,\comp_burst.df_start[0]_i_9_n_0 ,\comp_burst.df_start[0]_i_10_n_0 ,\comp_burst.df_start[0]_i_11_n_0 ,\comp_burst.df_start[0]_i_12_n_0 ,\comp_burst.df_start[0]_i_13_n_0 ,\comp_burst.df_start[0]_i_14_n_0 ,\comp_burst.df_start[0]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_start_reg[0]_i_6 
       (.CI(\comp_burst.df_start_reg[0]_i_7_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.df_start_reg[0]_i_6_CO_UNCONNECTED [7],\comp_burst.df_start_reg[0]_i_6_n_1 ,\comp_burst.df_start_reg[0]_i_6_n_2 ,\comp_burst.df_start_reg[0]_i_6_n_3 ,\comp_burst.df_start_reg[0]_i_6_n_4 ,\comp_burst.df_start_reg[0]_i_6_n_5 ,\comp_burst.df_start_reg[0]_i_6_n_6 ,\comp_burst.df_start_reg[0]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(df_start2[31:24]),
        .S({\comp_burst.df_start[0]_i_16_n_0 ,\comp_burst.df_start[0]_i_17_n_0 ,\comp_burst.df_start[0]_i_18_n_0 ,\comp_burst.df_start[0]_i_19_n_0 ,\comp_burst.df_start[0]_i_20_n_0 ,\comp_burst.df_start[0]_i_21_n_0 ,\comp_burst.df_start[0]_i_22_n_0 ,\comp_burst.df_start[0]_i_23_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_start_reg[0]_i_7 
       (.CI(\comp_burst.df_start_reg[0]_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_start_reg[0]_i_7_n_0 ,\comp_burst.df_start_reg[0]_i_7_n_1 ,\comp_burst.df_start_reg[0]_i_7_n_2 ,\comp_burst.df_start_reg[0]_i_7_n_3 ,\comp_burst.df_start_reg[0]_i_7_n_4 ,\comp_burst.df_start_reg[0]_i_7_n_5 ,\comp_burst.df_start_reg[0]_i_7_n_6 ,\comp_burst.df_start_reg[0]_i_7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(df_start2[23:16]),
        .S({\comp_burst.df_start[0]_i_24_n_0 ,\comp_burst.df_start[0]_i_25_n_0 ,\comp_burst.df_start[0]_i_26_n_0 ,\comp_burst.df_start[0]_i_27_n_0 ,\comp_burst.df_start[0]_i_28_n_0 ,\comp_burst.df_start[0]_i_29_n_0 ,\comp_burst.df_start[0]_i_30_n_0 ,\comp_burst.df_start[0]_i_31_n_0 }));
  FDRE \comp_burst.df_start_reg[1] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[1]),
        .Q(\comp_burst.df_start_reg_n_0_[1] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[2] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[2]),
        .Q(\comp_burst.df_start_reg_n_0_[2] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[3] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[3]),
        .Q(\comp_burst.df_start_reg_n_0_[3] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[4] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[4]),
        .Q(\comp_burst.df_start_reg_n_0_[4] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[5] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[5]),
        .Q(\comp_burst.df_start_reg_n_0_[5] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[6] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[6]),
        .Q(\comp_burst.df_start_reg_n_0_[6] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[7] 
       (.C(clk),
        .CE(complete_2),
        .D(p_0_in1_in__0[7]),
        .Q(\comp_burst.df_start_reg_n_0_[7] ),
        .R(\comp_burst.df_start[7]_i_1_n_0 ));
  FDRE \comp_burst.df_start_reg[8] 
       (.C(clk),
        .CE(complete_2),
        .D(\comp_burst.df_start[8]_i_1_n_0 ),
        .Q(\comp_burst.df_start_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.df_start_reg[8]_i_6 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.df_start_reg[8]_i_6_n_0 ,\comp_burst.df_start_reg[8]_i_6_n_1 ,\comp_burst.df_start_reg[8]_i_6_n_2 ,\comp_burst.df_start_reg[8]_i_6_n_3 ,\comp_burst.df_start_reg[8]_i_6_n_4 ,\comp_burst.df_start_reg[8]_i_6_n_5 ,\comp_burst.df_start_reg[8]_i_6_n_6 ,\comp_burst.df_start_reg[8]_i_6_n_7 }),
        .DI(p2_size[9:2]),
        .O(df_start2[7:0]),
        .S({\comp_burst.df_start[8]_i_13_n_0 ,\comp_burst.df_start[8]_i_14_n_0 ,\comp_burst.df_start[8]_i_15_n_0 ,\comp_burst.df_start[8]_i_16_n_0 ,\comp_burst.df_start[8]_i_17_n_0 ,\comp_burst.df_start[8]_i_18_n_0 ,\comp_burst.df_start[8]_i_19_n_0 ,\comp_burst.df_start[8]_i_20_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.env_down_adr[0]_i_1 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .O(env_down_adr0[0]));
  LUT6 #(
    .INIT(64'hFF00A9A900FFA9A9)) 
    \comp_burst.env_down_adr[10]_i_1 
       (.I0(curr_size[8]),
        .I1(\comp_burst.env_down_adr[10]_i_2_n_0 ),
        .I2(curr_size[7]),
        .I3(\comp_burst.env_down_adr[10]_i_3_n_0 ),
        .I4(load_env),
        .I5(\comp_burst.env_down_adr_reg_n_0_[10] ),
        .O(\comp_burst.env_down_adr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_burst.env_down_adr[10]_i_2 
       (.I0(curr_size[5]),
        .I1(curr_size[3]),
        .I2(curr_size[1]),
        .I3(curr_size[2]),
        .I4(curr_size[4]),
        .I5(curr_size[6]),
        .O(\comp_burst.env_down_adr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.env_down_adr[10]_i_3 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[8] ),
        .I1(\comp_burst.env_down_adr_reg_n_0_[6] ),
        .I2(\comp_burst.env_down_adr[7]_i_2_n_0 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[7] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[9] ),
        .O(\comp_burst.env_down_adr[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_burst.env_down_adr[1]_i_1 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I1(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .O(env_down_adr0[1]));
  LUT5 #(
    .INIT(32'hFCAA03AA)) 
    \comp_burst.env_down_adr[2]_i_1 
       (.I0(curr_size[0]),
        .I1(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I3(load_env),
        .I4(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .O(\comp_burst.env_down_adr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC000355555555)) 
    \comp_burst.env_down_adr[3]_i_1 
       (.I0(curr_size[1]),
        .I1(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[3] ),
        .I5(load_env),
        .O(\comp_burst.env_down_adr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9999F00F)) 
    \comp_burst.env_down_adr[4]_i_1 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[4] ),
        .I1(\comp_burst.env_down_adr[4]_i_2_n_0 ),
        .I2(curr_size[2]),
        .I3(curr_size[1]),
        .I4(load_env),
        .O(\comp_burst.env_down_adr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.env_down_adr[4]_i_2 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .I1(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[3] ),
        .O(\comp_burst.env_down_adr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFA9A9A9A9)) 
    \comp_burst.env_down_adr[5]_i_1 
       (.I0(curr_size[3]),
        .I1(curr_size[1]),
        .I2(curr_size[2]),
        .I3(\comp_burst.env_down_adr[5]_i_2_n_0 ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[5] ),
        .I5(load_env),
        .O(\comp_burst.env_down_adr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.env_down_adr[5]_i_2 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[3] ),
        .I1(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[4] ),
        .O(\comp_burst.env_down_adr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h99999999F0F0F00F)) 
    \comp_burst.env_down_adr[6]_i_1 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[6] ),
        .I1(\comp_burst.env_down_adr[7]_i_2_n_0 ),
        .I2(curr_size[4]),
        .I3(\comp_burst.env_down_adr[6]_i_2_n_0 ),
        .I4(curr_size[3]),
        .I5(load_env),
        .O(\comp_burst.env_down_adr[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_burst.env_down_adr[6]_i_2 
       (.I0(curr_size[1]),
        .I1(curr_size[2]),
        .O(\comp_burst.env_down_adr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0000F99999999)) 
    \comp_burst.env_down_adr[7]_i_1 
       (.I0(curr_size[5]),
        .I1(\comp_burst.env_down_adr[8]_i_2_n_0 ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[6] ),
        .I3(\comp_burst.env_down_adr[7]_i_2_n_0 ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[7] ),
        .I5(load_env),
        .O(\comp_burst.env_down_adr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_burst.env_down_adr[7]_i_2 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[4] ),
        .I1(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[3] ),
        .I5(\comp_burst.env_down_adr_reg_n_0_[5] ),
        .O(\comp_burst.env_down_adr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h99999999F0F0F00F)) 
    \comp_burst.env_down_adr[8]_i_1 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[8] ),
        .I1(\comp_burst.env_down_adr[9]_i_2_n_0 ),
        .I2(curr_size[6]),
        .I3(\comp_burst.env_down_adr[8]_i_2_n_0 ),
        .I4(curr_size[5]),
        .I5(load_env),
        .O(\comp_burst.env_down_adr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.env_down_adr[8]_i_2 
       (.I0(curr_size[3]),
        .I1(curr_size[1]),
        .I2(curr_size[2]),
        .I3(curr_size[4]),
        .O(\comp_burst.env_down_adr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0000F99999999)) 
    \comp_burst.env_down_adr[9]_i_1 
       (.I0(\comp_burst.env_down_adr[10]_i_2_n_0 ),
        .I1(curr_size[7]),
        .I2(\comp_burst.env_down_adr_reg_n_0_[8] ),
        .I3(\comp_burst.env_down_adr[9]_i_2_n_0 ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[9] ),
        .I5(load_env),
        .O(\comp_burst.env_down_adr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_burst.env_down_adr[9]_i_2 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[6] ),
        .I1(\comp_burst.env_down_adr[7]_i_2_n_0 ),
        .I2(\comp_burst.env_down_adr_reg_n_0_[7] ),
        .O(\comp_burst.env_down_adr[9]_i_2_n_0 ));
  FDSE \comp_burst.env_down_adr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(env_down_adr0[0]),
        .Q(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .S(env_up_adr));
  FDRE \comp_burst.env_down_adr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[10]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[10] ),
        .R(1'b0));
  FDSE \comp_burst.env_down_adr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_down_adr0[1]),
        .Q(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .S(env_up_adr));
  FDRE \comp_burst.env_down_adr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[2]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[3]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[4]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[5]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[6]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[7]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[8]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_adr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr[9]_i_1_n_0 ),
        .Q(\comp_burst.env_down_adr_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .Q(env_down_ind[0]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[10] ),
        .Q(env_down_ind[10]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .Q(env_down_ind[1]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[2] ),
        .Q(env_down_ind[2]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[3] ),
        .Q(env_down_ind[3]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[4] ),
        .Q(env_down_ind[4]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[5] ),
        .Q(env_down_ind[5]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[6] ),
        .Q(env_down_ind[6]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[7] ),
        .Q(env_down_ind[7]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[8] ),
        .Q(env_down_ind[8]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ind_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_adr_reg_n_0_[9] ),
        .Q(env_down_ind[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \comp_burst.env_down_max_ind[10]_i_1 
       (.I0(scan_start),
        .I1(comp_env),
        .I2(\comp_burst.env_down_max_val_reg[15]_i_2_n_0 ),
        .O(\comp_burst.env_down_max_ind[10]_i_1_n_0 ));
  FDRE \comp_burst.env_down_max_ind_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[0]),
        .Q(env_down_max_ind[0]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[10] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[10]),
        .Q(env_down_max_ind[10]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[1]),
        .Q(env_down_max_ind[1]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[2]),
        .Q(env_down_max_ind[2]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[3]),
        .Q(env_down_max_ind[3]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[4]),
        .Q(env_down_max_ind[4]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[5]),
        .Q(env_down_max_ind[5]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[6]),
        .Q(env_down_max_ind[6]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[7]),
        .Q(env_down_max_ind[7]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[8]),
        .Q(env_down_max_ind[8]),
        .R(1'b0));
  FDRE \comp_burst.env_down_max_ind_reg[9] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_ind[10]_i_1_n_0 ),
        .D(env_down_ind[9]),
        .Q(env_down_max_ind[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.env_down_max_val[15]_i_1 
       (.I0(\comp_burst.env_down_max_val_reg[15]_i_2_n_0 ),
        .I1(scan_start),
        .O(\comp_burst.env_down_max_val[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_10 
       (.I0(env_down_val[1]),
        .I1(env_down_max_val[1]),
        .I2(env_down_val[0]),
        .I3(env_down_max_val[0]),
        .O(\comp_burst.env_down_max_val[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_11 
       (.I0(env_down_max_val[15]),
        .I1(env_down_val[15]),
        .I2(env_down_max_val[14]),
        .I3(env_down_val[14]),
        .O(\comp_burst.env_down_max_val[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_12 
       (.I0(env_down_max_val[13]),
        .I1(env_down_val[13]),
        .I2(env_down_max_val[12]),
        .I3(env_down_val[12]),
        .O(\comp_burst.env_down_max_val[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_13 
       (.I0(env_down_max_val[11]),
        .I1(env_down_val[11]),
        .I2(env_down_max_val[10]),
        .I3(env_down_val[10]),
        .O(\comp_burst.env_down_max_val[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_14 
       (.I0(env_down_max_val[9]),
        .I1(env_down_val[9]),
        .I2(env_down_max_val[8]),
        .I3(env_down_val[8]),
        .O(\comp_burst.env_down_max_val[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_15 
       (.I0(env_down_max_val[7]),
        .I1(env_down_val[7]),
        .I2(env_down_max_val[6]),
        .I3(env_down_val[6]),
        .O(\comp_burst.env_down_max_val[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_16 
       (.I0(env_down_max_val[5]),
        .I1(env_down_val[5]),
        .I2(env_down_max_val[4]),
        .I3(env_down_val[4]),
        .O(\comp_burst.env_down_max_val[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_17 
       (.I0(env_down_max_val[3]),
        .I1(env_down_val[3]),
        .I2(env_down_max_val[2]),
        .I3(env_down_val[2]),
        .O(\comp_burst.env_down_max_val[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_down_max_val[15]_i_18 
       (.I0(env_down_max_val[1]),
        .I1(env_down_val[1]),
        .I2(env_down_max_val[0]),
        .I3(env_down_val[0]),
        .O(\comp_burst.env_down_max_val[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_3 
       (.I0(env_down_val[15]),
        .I1(env_down_max_val[15]),
        .I2(env_down_val[14]),
        .I3(env_down_max_val[14]),
        .O(\comp_burst.env_down_max_val[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_4 
       (.I0(env_down_val[13]),
        .I1(env_down_max_val[13]),
        .I2(env_down_val[12]),
        .I3(env_down_max_val[12]),
        .O(\comp_burst.env_down_max_val[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_5 
       (.I0(env_down_val[11]),
        .I1(env_down_max_val[11]),
        .I2(env_down_val[10]),
        .I3(env_down_max_val[10]),
        .O(\comp_burst.env_down_max_val[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_6 
       (.I0(env_down_val[9]),
        .I1(env_down_max_val[9]),
        .I2(env_down_val[8]),
        .I3(env_down_max_val[8]),
        .O(\comp_burst.env_down_max_val[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_7 
       (.I0(env_down_val[7]),
        .I1(env_down_max_val[7]),
        .I2(env_down_val[6]),
        .I3(env_down_max_val[6]),
        .O(\comp_burst.env_down_max_val[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_8 
       (.I0(env_down_val[5]),
        .I1(env_down_max_val[5]),
        .I2(env_down_val[4]),
        .I3(env_down_max_val[4]),
        .O(\comp_burst.env_down_max_val[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_down_max_val[15]_i_9 
       (.I0(env_down_val[3]),
        .I1(env_down_max_val[3]),
        .I2(env_down_val[2]),
        .I3(env_down_max_val[2]),
        .O(\comp_burst.env_down_max_val[15]_i_9_n_0 ));
  FDRE \comp_burst.env_down_max_val_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[0]),
        .Q(env_down_max_val[0]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[10] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[10]),
        .Q(env_down_max_val[10]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[11] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[11]),
        .Q(env_down_max_val[11]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[12] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[12]),
        .Q(env_down_max_val[12]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[13] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[13]),
        .Q(env_down_max_val[13]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[14] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[14]),
        .Q(env_down_max_val[14]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[15] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[15]),
        .Q(env_down_max_val[15]),
        .R(env_up_max_val));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \comp_burst.env_down_max_val_reg[15]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.env_down_max_val_reg[15]_i_2_n_0 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_1 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_2 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_3 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_4 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_5 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_6 ,\comp_burst.env_down_max_val_reg[15]_i_2_n_7 }),
        .DI({\comp_burst.env_down_max_val[15]_i_3_n_0 ,\comp_burst.env_down_max_val[15]_i_4_n_0 ,\comp_burst.env_down_max_val[15]_i_5_n_0 ,\comp_burst.env_down_max_val[15]_i_6_n_0 ,\comp_burst.env_down_max_val[15]_i_7_n_0 ,\comp_burst.env_down_max_val[15]_i_8_n_0 ,\comp_burst.env_down_max_val[15]_i_9_n_0 ,\comp_burst.env_down_max_val[15]_i_10_n_0 }),
        .O(\NLW_comp_burst.env_down_max_val_reg[15]_i_2_O_UNCONNECTED [7:0]),
        .S({\comp_burst.env_down_max_val[15]_i_11_n_0 ,\comp_burst.env_down_max_val[15]_i_12_n_0 ,\comp_burst.env_down_max_val[15]_i_13_n_0 ,\comp_burst.env_down_max_val[15]_i_14_n_0 ,\comp_burst.env_down_max_val[15]_i_15_n_0 ,\comp_burst.env_down_max_val[15]_i_16_n_0 ,\comp_burst.env_down_max_val[15]_i_17_n_0 ,\comp_burst.env_down_max_val[15]_i_18_n_0 }));
  FDRE \comp_burst.env_down_max_val_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[1]),
        .Q(env_down_max_val[1]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[2]),
        .Q(env_down_max_val[2]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[3]),
        .Q(env_down_max_val[3]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[4]),
        .Q(env_down_max_val[4]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[5]),
        .Q(env_down_max_val[5]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[6]),
        .Q(env_down_max_val[6]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[7]),
        .Q(env_down_max_val[7]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[8]),
        .Q(env_down_max_val[8]),
        .R(env_up_max_val));
  FDRE \comp_burst.env_down_max_val_reg[9] 
       (.C(clk),
        .CE(\comp_burst.env_down_max_val[15]_i_1_n_0 ),
        .D(env_down_val[9]),
        .Q(env_down_max_val[9]),
        .R(env_up_max_val));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \comp_burst.env_down_ptr[0]_i_1 
       (.I0(\comp_burst.env_down_ptr_reg [0]),
        .I1(load_env),
        .I2(curr_size[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD11D)) 
    \comp_burst.env_down_ptr[1]_i_1 
       (.I0(curr_size[1]),
        .I1(load_env),
        .I2(\comp_burst.env_down_ptr_reg [0]),
        .I3(\comp_burst.env_down_ptr_reg [1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hA9A9A9A9FF0000FF)) 
    \comp_burst.env_down_ptr[2]_i_1 
       (.I0(\comp_burst.env_down_ptr_reg [2]),
        .I1(\comp_burst.env_down_ptr_reg [1]),
        .I2(\comp_burst.env_down_ptr_reg [0]),
        .I3(curr_size[2]),
        .I4(curr_size[1]),
        .I5(load_env),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hFF0000FFA9A9A9A9)) 
    \comp_burst.env_down_ptr[3]_i_1 
       (.I0(curr_size[3]),
        .I1(curr_size[1]),
        .I2(curr_size[2]),
        .I3(\comp_burst.env_down_ptr[3]_i_2_n_0 ),
        .I4(\comp_burst.env_down_ptr_reg [3]),
        .I5(load_env),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_burst.env_down_ptr[3]_i_2 
       (.I0(\comp_burst.env_down_ptr_reg [1]),
        .I1(\comp_burst.env_down_ptr_reg [0]),
        .I2(\comp_burst.env_down_ptr_reg [2]),
        .O(\comp_burst.env_down_ptr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h99999999F0F0F00F)) 
    \comp_burst.env_down_ptr[4]_i_1 
       (.I0(\comp_burst.env_down_ptr_reg [4]),
        .I1(\comp_burst.env_down_ptr[5]_i_2_n_0 ),
        .I2(curr_size[4]),
        .I3(\comp_burst.env_down_adr[6]_i_2_n_0 ),
        .I4(curr_size[3]),
        .I5(load_env),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hFFF0000F99999999)) 
    \comp_burst.env_down_ptr[5]_i_1 
       (.I0(curr_size[5]),
        .I1(\comp_burst.env_down_adr[8]_i_2_n_0 ),
        .I2(\comp_burst.env_down_ptr_reg [4]),
        .I3(\comp_burst.env_down_ptr[5]_i_2_n_0 ),
        .I4(\comp_burst.env_down_ptr_reg [5]),
        .I5(load_env),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.env_down_ptr[5]_i_2 
       (.I0(\comp_burst.env_down_ptr_reg [2]),
        .I1(\comp_burst.env_down_ptr_reg [0]),
        .I2(\comp_burst.env_down_ptr_reg [1]),
        .I3(\comp_burst.env_down_ptr_reg [3]),
        .O(\comp_burst.env_down_ptr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h99999999F0F0F00F)) 
    \comp_burst.env_down_ptr[6]_i_1 
       (.I0(\comp_burst.env_down_ptr_reg [6]),
        .I1(\comp_burst.env_down_ptr[7]_i_2_n_0 ),
        .I2(curr_size[6]),
        .I3(\comp_burst.env_down_adr[8]_i_2_n_0 ),
        .I4(curr_size[5]),
        .I5(load_env),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hFFF09999000F9999)) 
    \comp_burst.env_down_ptr[7]_i_1 
       (.I0(\comp_burst.env_down_adr[10]_i_2_n_0 ),
        .I1(curr_size[7]),
        .I2(\comp_burst.env_down_ptr[7]_i_2_n_0 ),
        .I3(\comp_burst.env_down_ptr_reg [6]),
        .I4(load_env),
        .I5(\comp_burst.env_down_ptr_reg [7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_burst.env_down_ptr[7]_i_2 
       (.I0(\comp_burst.env_down_ptr_reg [4]),
        .I1(\comp_burst.env_down_ptr_reg [2]),
        .I2(\comp_burst.env_down_ptr_reg [0]),
        .I3(\comp_burst.env_down_ptr_reg [1]),
        .I4(\comp_burst.env_down_ptr_reg [3]),
        .I5(\comp_burst.env_down_ptr_reg [5]),
        .O(\comp_burst.env_down_ptr[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \comp_burst.env_down_ptr[8]_i_1 
       (.I0(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I1(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I2(load_env),
        .O(env_down_ptr0));
  LUT6 #(
    .INIT(64'hFF00A9A900FFA9A9)) 
    \comp_burst.env_down_ptr[8]_i_2 
       (.I0(curr_size[8]),
        .I1(\comp_burst.env_down_adr[10]_i_2_n_0 ),
        .I2(curr_size[7]),
        .I3(\comp_burst.env_down_ptr[8]_i_3_n_0 ),
        .I4(load_env),
        .I5(\comp_burst.env_down_ptr_reg [8]),
        .O(p_0_in__0[8]));
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_burst.env_down_ptr[8]_i_3 
       (.I0(\comp_burst.env_down_ptr_reg [6]),
        .I1(\comp_burst.env_down_ptr[7]_i_2_n_0 ),
        .I2(\comp_burst.env_down_ptr_reg [7]),
        .O(\comp_burst.env_down_ptr[8]_i_3_n_0 ));
  FDRE \comp_burst.env_down_ptr_reg[0] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[0]),
        .Q(\comp_burst.env_down_ptr_reg [0]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[1] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[1]),
        .Q(\comp_burst.env_down_ptr_reg [1]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[2] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[2]),
        .Q(\comp_burst.env_down_ptr_reg [2]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[3] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[3]),
        .Q(\comp_burst.env_down_ptr_reg [3]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[4] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[4]),
        .Q(\comp_burst.env_down_ptr_reg [4]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[5] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[5]),
        .Q(\comp_burst.env_down_ptr_reg [5]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[6] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[6]),
        .Q(\comp_burst.env_down_ptr_reg [6]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[7] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[7]),
        .Q(\comp_burst.env_down_ptr_reg [7]),
        .R(1'b0));
  FDRE \comp_burst.env_down_ptr_reg[8] 
       (.C(clk),
        .CE(env_down_ptr0),
        .D(p_0_in__0[8]),
        .Q(\comp_burst.env_down_ptr_reg [8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[0]_i_1 
       (.I0(env_down_2[0]),
        .I1(env_down_3[0]),
        .I2(\comp_burst.mem_env_down_reg_n_99 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_83 ),
        .O(\comp_burst.env_down_val[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[10]_i_1 
       (.I0(env_down_2[10]),
        .I1(env_down_3[10]),
        .I2(\comp_burst.mem_env_down_reg_n_89 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_73 ),
        .O(\comp_burst.env_down_val[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[11]_i_1 
       (.I0(env_down_2[11]),
        .I1(env_down_3[11]),
        .I2(\comp_burst.mem_env_down_reg_n_88 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_72 ),
        .O(\comp_burst.env_down_val[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[12]_i_1 
       (.I0(env_down_2[12]),
        .I1(env_down_3[12]),
        .I2(\comp_burst.mem_env_down_reg_n_87 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_71 ),
        .O(\comp_burst.env_down_val[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[13]_i_1 
       (.I0(env_down_2[13]),
        .I1(env_down_3[13]),
        .I2(\comp_burst.mem_env_down_reg_n_86 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_70 ),
        .O(\comp_burst.env_down_val[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[14]_i_1 
       (.I0(env_down_2[14]),
        .I1(env_down_3[14]),
        .I2(\comp_burst.mem_env_down_reg_n_85 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_69 ),
        .O(\comp_burst.env_down_val[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[15]_i_1 
       (.I0(env_down_2[15]),
        .I1(env_down_3[15]),
        .I2(\comp_burst.mem_env_down_reg_n_84 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_68 ),
        .O(\comp_burst.env_down_val[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[1]_i_1 
       (.I0(env_down_2[1]),
        .I1(env_down_3[1]),
        .I2(\comp_burst.mem_env_down_reg_n_98 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_82 ),
        .O(\comp_burst.env_down_val[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[2]_i_1 
       (.I0(env_down_2[2]),
        .I1(env_down_3[2]),
        .I2(\comp_burst.mem_env_down_reg_n_97 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_81 ),
        .O(\comp_burst.env_down_val[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[3]_i_1 
       (.I0(env_down_2[3]),
        .I1(env_down_3[3]),
        .I2(\comp_burst.mem_env_down_reg_n_96 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_80 ),
        .O(\comp_burst.env_down_val[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[4]_i_1 
       (.I0(env_down_2[4]),
        .I1(env_down_3[4]),
        .I2(\comp_burst.mem_env_down_reg_n_95 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_79 ),
        .O(\comp_burst.env_down_val[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[5]_i_1 
       (.I0(env_down_2[5]),
        .I1(env_down_3[5]),
        .I2(\comp_burst.mem_env_down_reg_n_94 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_78 ),
        .O(\comp_burst.env_down_val[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[6]_i_1 
       (.I0(env_down_2[6]),
        .I1(env_down_3[6]),
        .I2(\comp_burst.mem_env_down_reg_n_93 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_77 ),
        .O(\comp_burst.env_down_val[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[7]_i_1 
       (.I0(env_down_2[7]),
        .I1(env_down_3[7]),
        .I2(\comp_burst.mem_env_down_reg_n_92 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_76 ),
        .O(\comp_burst.env_down_val[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[8]_i_1 
       (.I0(env_down_2[8]),
        .I1(env_down_3[8]),
        .I2(\comp_burst.mem_env_down_reg_n_91 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_75 ),
        .O(\comp_burst.env_down_val[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \comp_burst.env_down_val[9]_i_1 
       (.I0(env_down_2[9]),
        .I1(env_down_3[9]),
        .I2(\comp_burst.mem_env_down_reg_n_90 ),
        .I3(\comp_burst.env_down_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_down_adr_reg_n_0_[0] ),
        .I5(\comp_burst.mem_env_down_reg_n_74 ),
        .O(\comp_burst.env_down_val[9]_i_1_n_0 ));
  FDRE \comp_burst.env_down_val_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[0]_i_1_n_0 ),
        .Q(env_down_val[0]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[10]_i_1_n_0 ),
        .Q(env_down_val[10]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[11]_i_1_n_0 ),
        .Q(env_down_val[11]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[12]_i_1_n_0 ),
        .Q(env_down_val[12]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[13]_i_1_n_0 ),
        .Q(env_down_val[13]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[14]_i_1_n_0 ),
        .Q(env_down_val[14]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[15]_i_1_n_0 ),
        .Q(env_down_val[15]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[1]_i_1_n_0 ),
        .Q(env_down_val[1]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[2]_i_1_n_0 ),
        .Q(env_down_val[2]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[3]_i_1_n_0 ),
        .Q(env_down_val[3]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[4]_i_1_n_0 ),
        .Q(env_down_val[4]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[5]_i_1_n_0 ),
        .Q(env_down_val[5]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[6]_i_1_n_0 ),
        .Q(env_down_val[6]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[7]_i_1_n_0 ),
        .Q(env_down_val[7]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[8]_i_1_n_0 ),
        .Q(env_down_val[8]),
        .R(1'b0));
  FDRE \comp_burst.env_down_val_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_down_val[9]_i_1_n_0 ),
        .Q(env_down_val[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \comp_burst.env_end_ind[10]_i_1 
       (.I0(run_env_end),
        .I1(\comp_burst.env_end_ind_reg[10]_i_2_n_0 ),
        .I2(scan_start),
        .I3(comp_env),
        .O(\comp_burst.env_end_ind[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_10 
       (.I0(env_down_val[1]),
        .I1(min_env[1]),
        .I2(env_down_val[0]),
        .I3(min_env[0]),
        .O(\comp_burst.env_end_ind[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_11 
       (.I0(env_down_val[15]),
        .I1(min_env[15]),
        .I2(env_down_val[14]),
        .I3(min_env[14]),
        .O(\comp_burst.env_end_ind[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_12 
       (.I0(env_down_val[13]),
        .I1(min_env[13]),
        .I2(env_down_val[12]),
        .I3(min_env[12]),
        .O(\comp_burst.env_end_ind[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_13 
       (.I0(env_down_val[11]),
        .I1(min_env[11]),
        .I2(env_down_val[10]),
        .I3(min_env[10]),
        .O(\comp_burst.env_end_ind[10]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_14 
       (.I0(env_down_val[9]),
        .I1(min_env[9]),
        .I2(env_down_val[8]),
        .I3(min_env[8]),
        .O(\comp_burst.env_end_ind[10]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_15 
       (.I0(env_down_val[7]),
        .I1(min_env[7]),
        .I2(env_down_val[6]),
        .I3(min_env[6]),
        .O(\comp_burst.env_end_ind[10]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_16 
       (.I0(env_down_val[5]),
        .I1(min_env[5]),
        .I2(env_down_val[4]),
        .I3(min_env[4]),
        .O(\comp_burst.env_end_ind[10]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_17 
       (.I0(env_down_val[3]),
        .I1(min_env[3]),
        .I2(env_down_val[2]),
        .I3(min_env[2]),
        .O(\comp_burst.env_end_ind[10]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_end_ind[10]_i_18 
       (.I0(env_down_val[1]),
        .I1(min_env[1]),
        .I2(env_down_val[0]),
        .I3(min_env[0]),
        .O(\comp_burst.env_end_ind[10]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_3 
       (.I0(env_down_val[15]),
        .I1(min_env[15]),
        .I2(env_down_val[14]),
        .I3(min_env[14]),
        .O(\comp_burst.env_end_ind[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_4 
       (.I0(env_down_val[13]),
        .I1(min_env[13]),
        .I2(env_down_val[12]),
        .I3(min_env[12]),
        .O(\comp_burst.env_end_ind[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_5 
       (.I0(env_down_val[11]),
        .I1(min_env[11]),
        .I2(env_down_val[10]),
        .I3(min_env[10]),
        .O(\comp_burst.env_end_ind[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_6 
       (.I0(env_down_val[9]),
        .I1(min_env[9]),
        .I2(env_down_val[8]),
        .I3(min_env[8]),
        .O(\comp_burst.env_end_ind[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_7 
       (.I0(env_down_val[7]),
        .I1(min_env[7]),
        .I2(env_down_val[6]),
        .I3(min_env[6]),
        .O(\comp_burst.env_end_ind[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_8 
       (.I0(env_down_val[5]),
        .I1(min_env[5]),
        .I2(env_down_val[4]),
        .I3(min_env[4]),
        .O(\comp_burst.env_end_ind[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_end_ind[10]_i_9 
       (.I0(env_down_val[3]),
        .I1(min_env[3]),
        .I2(env_down_val[2]),
        .I3(min_env[2]),
        .O(\comp_burst.env_end_ind[10]_i_9_n_0 ));
  FDRE \comp_burst.env_end_ind_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[0]),
        .Q(env_end_ind[0]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[10] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[10]),
        .Q(env_end_ind[10]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \comp_burst.env_end_ind_reg[10]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\comp_burst.env_end_ind_reg[10]_i_2_n_0 ,\comp_burst.env_end_ind_reg[10]_i_2_n_1 ,\comp_burst.env_end_ind_reg[10]_i_2_n_2 ,\comp_burst.env_end_ind_reg[10]_i_2_n_3 ,\comp_burst.env_end_ind_reg[10]_i_2_n_4 ,\comp_burst.env_end_ind_reg[10]_i_2_n_5 ,\comp_burst.env_end_ind_reg[10]_i_2_n_6 ,\comp_burst.env_end_ind_reg[10]_i_2_n_7 }),
        .DI({\comp_burst.env_end_ind[10]_i_3_n_0 ,\comp_burst.env_end_ind[10]_i_4_n_0 ,\comp_burst.env_end_ind[10]_i_5_n_0 ,\comp_burst.env_end_ind[10]_i_6_n_0 ,\comp_burst.env_end_ind[10]_i_7_n_0 ,\comp_burst.env_end_ind[10]_i_8_n_0 ,\comp_burst.env_end_ind[10]_i_9_n_0 ,\comp_burst.env_end_ind[10]_i_10_n_0 }),
        .O(\NLW_comp_burst.env_end_ind_reg[10]_i_2_O_UNCONNECTED [7:0]),
        .S({\comp_burst.env_end_ind[10]_i_11_n_0 ,\comp_burst.env_end_ind[10]_i_12_n_0 ,\comp_burst.env_end_ind[10]_i_13_n_0 ,\comp_burst.env_end_ind[10]_i_14_n_0 ,\comp_burst.env_end_ind[10]_i_15_n_0 ,\comp_burst.env_end_ind[10]_i_16_n_0 ,\comp_burst.env_end_ind[10]_i_17_n_0 ,\comp_burst.env_end_ind[10]_i_18_n_0 }));
  FDRE \comp_burst.env_end_ind_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[1]),
        .Q(env_end_ind[1]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[2]),
        .Q(env_end_ind[2]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[3]),
        .Q(env_end_ind[3]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[4]),
        .Q(env_end_ind[4]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[5]),
        .Q(env_end_ind[5]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[6]),
        .Q(env_end_ind[6]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[7]),
        .Q(env_end_ind[7]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[8]),
        .Q(env_end_ind[8]),
        .R(1'b0));
  FDRE \comp_burst.env_end_ind_reg[9] 
       (.C(clk),
        .CE(\comp_burst.env_end_ind[10]_i_1_n_0 ),
        .D(env_down_ind[9]),
        .Q(env_end_ind[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.env_in[63]_i_1 
       (.I0(filling),
        .I1(rt_data_empty),
        .O(env_in0));
  FDRE \comp_burst.env_in_reg[0] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[0]),
        .Q(env_in[0]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[10] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[10]),
        .Q(env_in[10]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[11] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[11]),
        .Q(env_in[11]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[12] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[12]),
        .Q(env_in[12]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[13] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[13]),
        .Q(env_in[13]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[14] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[14]),
        .Q(env_in[14]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[15] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[15]),
        .Q(env_in[15]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[16] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[16]),
        .Q(env_in[16]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[17] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[17]),
        .Q(env_in[17]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[18] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[18]),
        .Q(env_in[18]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[19] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[19]),
        .Q(env_in[19]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[1] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[1]),
        .Q(env_in[1]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[20] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[20]),
        .Q(env_in[20]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[21] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[21]),
        .Q(env_in[21]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[22] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[22]),
        .Q(env_in[22]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[23] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[23]),
        .Q(env_in[23]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[24] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[24]),
        .Q(env_in[24]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[25] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[25]),
        .Q(env_in[25]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[26] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[26]),
        .Q(env_in[26]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[27] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[27]),
        .Q(env_in[27]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[28] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[28]),
        .Q(env_in[28]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[29] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[29]),
        .Q(env_in[29]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[2] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[2]),
        .Q(env_in[2]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[30] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[30]),
        .Q(env_in[30]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[31] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[31]),
        .Q(env_in[31]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[32] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[32]),
        .Q(env_in[32]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[33] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[33]),
        .Q(env_in[33]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[34] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[34]),
        .Q(env_in[34]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[35] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[35]),
        .Q(env_in[35]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[36] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[36]),
        .Q(env_in[36]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[37] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[37]),
        .Q(env_in[37]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[38] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[38]),
        .Q(env_in[38]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[39] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[39]),
        .Q(env_in[39]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[3] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[3]),
        .Q(env_in[3]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[40] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[40]),
        .Q(env_in[40]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[41] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[41]),
        .Q(env_in[41]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[42] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[42]),
        .Q(env_in[42]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[43] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[43]),
        .Q(env_in[43]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[44] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[44]),
        .Q(env_in[44]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[45] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[45]),
        .Q(env_in[45]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[46] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[46]),
        .Q(env_in[46]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[47] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[47]),
        .Q(env_in[47]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[48] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[48]),
        .Q(env_in[48]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[49] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[49]),
        .Q(env_in[49]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[4] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[4]),
        .Q(env_in[4]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[50] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[50]),
        .Q(env_in[50]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[51] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[51]),
        .Q(env_in[51]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[52] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[52]),
        .Q(env_in[52]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[53] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[53]),
        .Q(env_in[53]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[54] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[54]),
        .Q(env_in[54]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[55] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[55]),
        .Q(env_in[55]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[56] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[56]),
        .Q(env_in[56]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[57] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[57]),
        .Q(env_in[57]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[58] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[58]),
        .Q(env_in[58]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[59] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[59]),
        .Q(env_in[59]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[5] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[5]),
        .Q(env_in[5]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[60] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[60]),
        .Q(env_in[60]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[61] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[61]),
        .Q(env_in[61]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[62] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[62]),
        .Q(env_in[62]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[63] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[63]),
        .Q(env_in[63]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[6] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[6]),
        .Q(env_in[6]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[7] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[7]),
        .Q(env_in[7]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[8] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[8]),
        .Q(env_in[8]),
        .R(1'b0));
  FDRE \comp_burst.env_in_reg[9] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[9]),
        .Q(env_in[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \comp_burst.env_start_ind[10]_i_1 
       (.I0(\comp_burst.env_start_ind_reg[10]_i_2_n_0 ),
        .I1(run_env_start),
        .I2(scan_start),
        .I3(comp_env),
        .O(\comp_burst.env_start_ind[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_10 
       (.I0(env_up_val[1]),
        .I1(min_env[1]),
        .I2(env_up_val[0]),
        .I3(min_env[0]),
        .O(\comp_burst.env_start_ind[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_11 
       (.I0(min_env[15]),
        .I1(env_up_val[15]),
        .I2(min_env[14]),
        .I3(env_up_val[14]),
        .O(\comp_burst.env_start_ind[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_12 
       (.I0(min_env[13]),
        .I1(env_up_val[13]),
        .I2(min_env[12]),
        .I3(env_up_val[12]),
        .O(\comp_burst.env_start_ind[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_13 
       (.I0(min_env[11]),
        .I1(env_up_val[11]),
        .I2(min_env[10]),
        .I3(env_up_val[10]),
        .O(\comp_burst.env_start_ind[10]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_14 
       (.I0(min_env[9]),
        .I1(env_up_val[9]),
        .I2(min_env[8]),
        .I3(env_up_val[8]),
        .O(\comp_burst.env_start_ind[10]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_15 
       (.I0(min_env[7]),
        .I1(env_up_val[7]),
        .I2(min_env[6]),
        .I3(env_up_val[6]),
        .O(\comp_burst.env_start_ind[10]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_16 
       (.I0(min_env[5]),
        .I1(env_up_val[5]),
        .I2(min_env[4]),
        .I3(env_up_val[4]),
        .O(\comp_burst.env_start_ind[10]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_17 
       (.I0(min_env[3]),
        .I1(env_up_val[3]),
        .I2(min_env[2]),
        .I3(env_up_val[2]),
        .O(\comp_burst.env_start_ind[10]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_start_ind[10]_i_18 
       (.I0(min_env[1]),
        .I1(env_up_val[1]),
        .I2(min_env[0]),
        .I3(env_up_val[0]),
        .O(\comp_burst.env_start_ind[10]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_3 
       (.I0(env_up_val[15]),
        .I1(min_env[15]),
        .I2(env_up_val[14]),
        .I3(min_env[14]),
        .O(\comp_burst.env_start_ind[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_4 
       (.I0(env_up_val[13]),
        .I1(min_env[13]),
        .I2(env_up_val[12]),
        .I3(min_env[12]),
        .O(\comp_burst.env_start_ind[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_5 
       (.I0(env_up_val[11]),
        .I1(min_env[11]),
        .I2(env_up_val[10]),
        .I3(min_env[10]),
        .O(\comp_burst.env_start_ind[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_6 
       (.I0(env_up_val[9]),
        .I1(min_env[9]),
        .I2(env_up_val[8]),
        .I3(min_env[8]),
        .O(\comp_burst.env_start_ind[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_7 
       (.I0(env_up_val[7]),
        .I1(min_env[7]),
        .I2(env_up_val[6]),
        .I3(min_env[6]),
        .O(\comp_burst.env_start_ind[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_8 
       (.I0(env_up_val[5]),
        .I1(min_env[5]),
        .I2(env_up_val[4]),
        .I3(min_env[4]),
        .O(\comp_burst.env_start_ind[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_start_ind[10]_i_9 
       (.I0(env_up_val[3]),
        .I1(min_env[3]),
        .I2(env_up_val[2]),
        .I3(min_env[2]),
        .O(\comp_burst.env_start_ind[10]_i_9_n_0 ));
  FDRE \comp_burst.env_start_ind_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[0]),
        .Q(env_start_ind[0]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[10] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[10]),
        .Q(env_start_ind[10]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \comp_burst.env_start_ind_reg[10]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\comp_burst.env_start_ind_reg[10]_i_2_n_0 ,\comp_burst.env_start_ind_reg[10]_i_2_n_1 ,\comp_burst.env_start_ind_reg[10]_i_2_n_2 ,\comp_burst.env_start_ind_reg[10]_i_2_n_3 ,\comp_burst.env_start_ind_reg[10]_i_2_n_4 ,\comp_burst.env_start_ind_reg[10]_i_2_n_5 ,\comp_burst.env_start_ind_reg[10]_i_2_n_6 ,\comp_burst.env_start_ind_reg[10]_i_2_n_7 }),
        .DI({\comp_burst.env_start_ind[10]_i_3_n_0 ,\comp_burst.env_start_ind[10]_i_4_n_0 ,\comp_burst.env_start_ind[10]_i_5_n_0 ,\comp_burst.env_start_ind[10]_i_6_n_0 ,\comp_burst.env_start_ind[10]_i_7_n_0 ,\comp_burst.env_start_ind[10]_i_8_n_0 ,\comp_burst.env_start_ind[10]_i_9_n_0 ,\comp_burst.env_start_ind[10]_i_10_n_0 }),
        .O(\NLW_comp_burst.env_start_ind_reg[10]_i_2_O_UNCONNECTED [7:0]),
        .S({\comp_burst.env_start_ind[10]_i_11_n_0 ,\comp_burst.env_start_ind[10]_i_12_n_0 ,\comp_burst.env_start_ind[10]_i_13_n_0 ,\comp_burst.env_start_ind[10]_i_14_n_0 ,\comp_burst.env_start_ind[10]_i_15_n_0 ,\comp_burst.env_start_ind[10]_i_16_n_0 ,\comp_burst.env_start_ind[10]_i_17_n_0 ,\comp_burst.env_start_ind[10]_i_18_n_0 }));
  FDRE \comp_burst.env_start_ind_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[1]),
        .Q(env_start_ind[1]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[2]),
        .Q(env_start_ind[2]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[3]),
        .Q(env_start_ind[3]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[4]),
        .Q(env_start_ind[4]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[5]),
        .Q(env_start_ind[5]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[6]),
        .Q(env_start_ind[6]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[7]),
        .Q(env_start_ind[7]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[8]),
        .Q(env_start_ind[8]),
        .R(1'b0));
  FDRE \comp_burst.env_start_ind_reg[9] 
       (.C(clk),
        .CE(\comp_burst.env_start_ind[10]_i_1_n_0 ),
        .D(env_up_ind[9]),
        .Q(env_start_ind[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.env_up_adr[0]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .O(\comp_burst.env_up_adr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \comp_burst.env_up_adr[10]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[8] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .I2(\comp_burst.env_up_adr[10]_i_2_n_0 ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[7] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[9] ),
        .I5(\comp_burst.env_up_adr_reg_n_0_[10] ),
        .O(\comp_burst.env_up_adr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \comp_burst.env_up_adr[10]_i_2 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[5] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[3] ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .I5(\comp_burst.env_up_adr_reg_n_0_[4] ),
        .O(\comp_burst.env_up_adr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.env_up_adr[1]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .O(\comp_burst.env_up_adr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \comp_burst.env_up_adr[2]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .O(\comp_burst.env_up_adr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.env_up_adr[3]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[3] ),
        .O(\comp_burst.env_up_adr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp_burst.env_up_adr[4]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[3] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[4] ),
        .O(\comp_burst.env_up_adr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \comp_burst.env_up_adr[5]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[3] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[4] ),
        .I5(\comp_burst.env_up_adr_reg_n_0_[5] ),
        .O(\comp_burst.env_up_adr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.env_up_adr[6]_i_1 
       (.I0(\comp_burst.env_up_adr[10]_i_2_n_0 ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .O(\comp_burst.env_up_adr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \comp_burst.env_up_adr[7]_i_1 
       (.I0(\comp_burst.env_up_adr[10]_i_2_n_0 ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[7] ),
        .O(\comp_burst.env_up_adr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.env_up_adr[8]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .I1(\comp_burst.env_up_adr[10]_i_2_n_0 ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[7] ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[8] ),
        .O(\comp_burst.env_up_adr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp_burst.env_up_adr[9]_i_1 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[7] ),
        .I1(\comp_burst.env_up_adr[10]_i_2_n_0 ),
        .I2(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .I3(\comp_burst.env_up_adr_reg_n_0_[8] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[9] ),
        .O(\comp_burst.env_up_adr[9]_i_1_n_0 ));
  FDRE \comp_burst.env_up_adr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[0]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[10]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[10] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[1]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[2]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[3]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[3] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[4]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[4] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[5]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[5] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[6]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[7]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[7] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[8]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[8] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_adr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr[9]_i_1_n_0 ),
        .Q(\comp_burst.env_up_adr_reg_n_0_[9] ),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ind_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .Q(env_up_ind[0]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[10] ),
        .Q(env_up_ind[10]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .Q(env_up_ind[1]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[2] ),
        .Q(env_up_ind[2]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[3] ),
        .Q(env_up_ind[3]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[4] ),
        .Q(env_up_ind[4]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[5] ),
        .Q(env_up_ind[5]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[6] ),
        .Q(env_up_ind[6]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[7] ),
        .Q(env_up_ind[7]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[8] ),
        .Q(env_up_ind[8]),
        .R(1'b0));
  FDRE \comp_burst.env_up_ind_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_adr_reg_n_0_[9] ),
        .Q(env_up_ind[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \comp_burst.env_up_max_ind[10]_i_1 
       (.I0(scan_start),
        .I1(comp_env),
        .I2(\comp_burst.env_up_max_val_reg[15]_i_3_n_0 ),
        .O(\comp_burst.env_up_max_ind[10]_i_1_n_0 ));
  FDRE \comp_burst.env_up_max_ind_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[0]),
        .Q(env_up_max_ind[0]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[10] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[10]),
        .Q(env_up_max_ind[10]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[1]),
        .Q(env_up_max_ind[1]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[2]),
        .Q(env_up_max_ind[2]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[3]),
        .Q(env_up_max_ind[3]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[4]),
        .Q(env_up_max_ind[4]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[5]),
        .Q(env_up_max_ind[5]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[6]),
        .Q(env_up_max_ind[6]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[7]),
        .Q(env_up_max_ind[7]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[8]),
        .Q(env_up_max_ind[8]),
        .R(1'b0));
  FDRE \comp_burst.env_up_max_ind_reg[9] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_ind[10]_i_1_n_0 ),
        .D(env_up_ind[9]),
        .Q(env_up_max_ind[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \comp_burst.env_up_max_val[15]_i_1 
       (.I0(comp_env),
        .I1(scan_start),
        .O(env_up_max_val));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_10 
       (.I0(env_up_val[3]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[3] ),
        .I2(env_up_val[2]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[2] ),
        .O(\comp_burst.env_up_max_val[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_11 
       (.I0(env_up_val[1]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[1] ),
        .I2(env_up_val[0]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[0] ),
        .O(\comp_burst.env_up_max_val[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_12 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[15] ),
        .I1(env_up_val[15]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[14] ),
        .I3(env_up_val[14]),
        .O(\comp_burst.env_up_max_val[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_13 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[13] ),
        .I1(env_up_val[13]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[12] ),
        .I3(env_up_val[12]),
        .O(\comp_burst.env_up_max_val[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_14 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[11] ),
        .I1(env_up_val[11]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[10] ),
        .I3(env_up_val[10]),
        .O(\comp_burst.env_up_max_val[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_15 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[9] ),
        .I1(env_up_val[9]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[8] ),
        .I3(env_up_val[8]),
        .O(\comp_burst.env_up_max_val[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_16 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[7] ),
        .I1(env_up_val[7]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[6] ),
        .I3(env_up_val[6]),
        .O(\comp_burst.env_up_max_val[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_17 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[5] ),
        .I1(env_up_val[5]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[4] ),
        .I3(env_up_val[4]),
        .O(\comp_burst.env_up_max_val[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_18 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[3] ),
        .I1(env_up_val[3]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[2] ),
        .I3(env_up_val[2]),
        .O(\comp_burst.env_up_max_val[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \comp_burst.env_up_max_val[15]_i_19 
       (.I0(\comp_burst.env_up_max_val_reg_n_0_[1] ),
        .I1(env_up_val[1]),
        .I2(\comp_burst.env_up_max_val_reg_n_0_[0] ),
        .I3(env_up_val[0]),
        .O(\comp_burst.env_up_max_val[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.env_up_max_val[15]_i_2 
       (.I0(\comp_burst.env_up_max_val_reg[15]_i_3_n_0 ),
        .I1(scan_start),
        .O(\comp_burst.env_up_max_val[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_4 
       (.I0(env_up_val[15]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[15] ),
        .I2(env_up_val[14]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[14] ),
        .O(\comp_burst.env_up_max_val[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_5 
       (.I0(env_up_val[13]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[13] ),
        .I2(env_up_val[12]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[12] ),
        .O(\comp_burst.env_up_max_val[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_6 
       (.I0(env_up_val[11]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[11] ),
        .I2(env_up_val[10]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[10] ),
        .O(\comp_burst.env_up_max_val[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_7 
       (.I0(env_up_val[9]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[9] ),
        .I2(env_up_val[8]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[8] ),
        .O(\comp_burst.env_up_max_val[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_8 
       (.I0(env_up_val[7]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[7] ),
        .I2(env_up_val[6]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[6] ),
        .O(\comp_burst.env_up_max_val[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \comp_burst.env_up_max_val[15]_i_9 
       (.I0(env_up_val[5]),
        .I1(\comp_burst.env_up_max_val_reg_n_0_[5] ),
        .I2(env_up_val[4]),
        .I3(\comp_burst.env_up_max_val_reg_n_0_[4] ),
        .O(\comp_burst.env_up_max_val[15]_i_9_n_0 ));
  FDRE \comp_burst.env_up_max_val_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[0]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[0] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[10] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[10]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[10] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[11] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[11]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[11] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[12] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[12]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[12] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[13] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[13]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[13] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[14] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[14]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[14] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[15] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[15]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[15] ),
        .R(env_up_max_val));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \comp_burst.env_up_max_val_reg[15]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.env_up_max_val_reg[15]_i_3_n_0 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_1 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_2 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_3 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_4 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_5 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_6 ,\comp_burst.env_up_max_val_reg[15]_i_3_n_7 }),
        .DI({\comp_burst.env_up_max_val[15]_i_4_n_0 ,\comp_burst.env_up_max_val[15]_i_5_n_0 ,\comp_burst.env_up_max_val[15]_i_6_n_0 ,\comp_burst.env_up_max_val[15]_i_7_n_0 ,\comp_burst.env_up_max_val[15]_i_8_n_0 ,\comp_burst.env_up_max_val[15]_i_9_n_0 ,\comp_burst.env_up_max_val[15]_i_10_n_0 ,\comp_burst.env_up_max_val[15]_i_11_n_0 }),
        .O(\NLW_comp_burst.env_up_max_val_reg[15]_i_3_O_UNCONNECTED [7:0]),
        .S({\comp_burst.env_up_max_val[15]_i_12_n_0 ,\comp_burst.env_up_max_val[15]_i_13_n_0 ,\comp_burst.env_up_max_val[15]_i_14_n_0 ,\comp_burst.env_up_max_val[15]_i_15_n_0 ,\comp_burst.env_up_max_val[15]_i_16_n_0 ,\comp_burst.env_up_max_val[15]_i_17_n_0 ,\comp_burst.env_up_max_val[15]_i_18_n_0 ,\comp_burst.env_up_max_val[15]_i_19_n_0 }));
  FDRE \comp_burst.env_up_max_val_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[1]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[1] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[2]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[2] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[3]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[3] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[4]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[4] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[5]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[5] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[6]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[6] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[7]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[7] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[8]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[8] ),
        .R(env_up_max_val));
  FDRE \comp_burst.env_up_max_val_reg[9] 
       (.C(clk),
        .CE(\comp_burst.env_up_max_val[15]_i_2_n_0 ),
        .D(env_up_val[9]),
        .Q(\comp_burst.env_up_max_val_reg_n_0_[9] ),
        .R(env_up_max_val));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.env_up_ptr[0]_i_1 
       (.I0(env_up_ptr[0]),
        .O(\comp_burst.env_up_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.env_up_ptr[1]_i_1 
       (.I0(env_up_ptr[0]),
        .I1(env_up_ptr[1]),
        .O(\comp_burst.env_up_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \comp_burst.env_up_ptr[2]_i_1 
       (.I0(env_up_ptr[0]),
        .I1(env_up_ptr[1]),
        .I2(env_up_ptr[2]),
        .O(\comp_burst.env_up_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.env_up_ptr[3]_i_1 
       (.I0(env_up_ptr[1]),
        .I1(env_up_ptr[0]),
        .I2(env_up_ptr[2]),
        .I3(env_up_ptr[3]),
        .O(\comp_burst.env_up_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp_burst.env_up_ptr[4]_i_1 
       (.I0(env_up_ptr[2]),
        .I1(env_up_ptr[0]),
        .I2(env_up_ptr[1]),
        .I3(env_up_ptr[3]),
        .I4(env_up_ptr[4]),
        .O(\comp_burst.env_up_ptr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \comp_burst.env_up_ptr[5]_i_1 
       (.I0(env_up_ptr[3]),
        .I1(env_up_ptr[1]),
        .I2(env_up_ptr[0]),
        .I3(env_up_ptr[2]),
        .I4(env_up_ptr[4]),
        .I5(env_up_ptr[5]),
        .O(\comp_burst.env_up_ptr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.env_up_ptr[6]_i_1 
       (.I0(\comp_burst.env_up_ptr[8]_i_4_n_0 ),
        .I1(env_up_ptr[6]),
        .O(\comp_burst.env_up_ptr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \comp_burst.env_up_ptr[7]_i_1 
       (.I0(\comp_burst.env_up_ptr[8]_i_4_n_0 ),
        .I1(env_up_ptr[6]),
        .I2(env_up_ptr[7]),
        .O(\comp_burst.env_up_ptr[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.env_up_ptr[8]_i_1 
       (.I0(load_env),
        .O(env_up_adr));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.env_up_ptr[8]_i_2 
       (.I0(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I1(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .O(\comp_burst.env_up_ptr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.env_up_ptr[8]_i_3 
       (.I0(env_up_ptr[6]),
        .I1(\comp_burst.env_up_ptr[8]_i_4_n_0 ),
        .I2(env_up_ptr[7]),
        .I3(env_up_ptr[8]),
        .O(\comp_burst.env_up_ptr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \comp_burst.env_up_ptr[8]_i_4 
       (.I0(env_up_ptr[5]),
        .I1(env_up_ptr[3]),
        .I2(env_up_ptr[1]),
        .I3(env_up_ptr[0]),
        .I4(env_up_ptr[2]),
        .I5(env_up_ptr[4]),
        .O(\comp_burst.env_up_ptr[8]_i_4_n_0 ));
  FDRE \comp_burst.env_up_ptr_reg[0] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[0]_i_1_n_0 ),
        .Q(env_up_ptr[0]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[1] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[1]_i_1_n_0 ),
        .Q(env_up_ptr[1]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[2] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[2]_i_1_n_0 ),
        .Q(env_up_ptr[2]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[3] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[3]_i_1_n_0 ),
        .Q(env_up_ptr[3]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[4] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[4]_i_1_n_0 ),
        .Q(env_up_ptr[4]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[5] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[5]_i_1_n_0 ),
        .Q(env_up_ptr[5]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[6] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[6]_i_1_n_0 ),
        .Q(env_up_ptr[6]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[7] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[7]_i_1_n_0 ),
        .Q(env_up_ptr[7]),
        .R(env_up_adr));
  FDRE \comp_burst.env_up_ptr_reg[8] 
       (.C(clk),
        .CE(\comp_burst.env_up_ptr[8]_i_2_n_0 ),
        .D(\comp_burst.env_up_ptr[8]_i_3_n_0 ),
        .Q(env_up_ptr[8]),
        .R(env_up_adr));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[0]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_83 ),
        .I1(\comp_burst.mem_env_up_reg_n_99 ),
        .I2(env_up_3[0]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[0]),
        .O(\comp_burst.env_up_val[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[10]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_73 ),
        .I1(\comp_burst.mem_env_up_reg_n_89 ),
        .I2(env_up_3[10]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[10]),
        .O(\comp_burst.env_up_val[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[11]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_72 ),
        .I1(\comp_burst.mem_env_up_reg_n_88 ),
        .I2(env_up_3[11]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[11]),
        .O(\comp_burst.env_up_val[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[12]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_71 ),
        .I1(\comp_burst.mem_env_up_reg_n_87 ),
        .I2(env_up_3[12]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[12]),
        .O(\comp_burst.env_up_val[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[13]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_70 ),
        .I1(\comp_burst.mem_env_up_reg_n_86 ),
        .I2(env_up_3[13]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[13]),
        .O(\comp_burst.env_up_val[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[14]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_69 ),
        .I1(\comp_burst.mem_env_up_reg_n_85 ),
        .I2(env_up_3[14]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[14]),
        .O(\comp_burst.env_up_val[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[15]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_68 ),
        .I1(\comp_burst.mem_env_up_reg_n_84 ),
        .I2(env_up_3[15]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[15]),
        .O(\comp_burst.env_up_val[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[1]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_82 ),
        .I1(\comp_burst.mem_env_up_reg_n_98 ),
        .I2(env_up_3[1]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[1]),
        .O(\comp_burst.env_up_val[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[2]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_81 ),
        .I1(\comp_burst.mem_env_up_reg_n_97 ),
        .I2(env_up_3[2]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[2]),
        .O(\comp_burst.env_up_val[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[3]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_80 ),
        .I1(\comp_burst.mem_env_up_reg_n_96 ),
        .I2(env_up_3[3]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[3]),
        .O(\comp_burst.env_up_val[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[4]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_79 ),
        .I1(\comp_burst.mem_env_up_reg_n_95 ),
        .I2(env_up_3[4]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[4]),
        .O(\comp_burst.env_up_val[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[5]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_78 ),
        .I1(\comp_burst.mem_env_up_reg_n_94 ),
        .I2(env_up_3[5]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[5]),
        .O(\comp_burst.env_up_val[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[6]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_77 ),
        .I1(\comp_burst.mem_env_up_reg_n_93 ),
        .I2(env_up_3[6]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[6]),
        .O(\comp_burst.env_up_val[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[7]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_76 ),
        .I1(\comp_burst.mem_env_up_reg_n_92 ),
        .I2(env_up_3[7]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[7]),
        .O(\comp_burst.env_up_val[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[8]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_75 ),
        .I1(\comp_burst.mem_env_up_reg_n_91 ),
        .I2(env_up_3[8]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[8]),
        .O(\comp_burst.env_up_val[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.env_up_val[9]_i_1 
       (.I0(\comp_burst.mem_env_up_reg_n_74 ),
        .I1(\comp_burst.mem_env_up_reg_n_90 ),
        .I2(env_up_3[9]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(env_up_2[9]),
        .O(\comp_burst.env_up_val[9]_i_1_n_0 ));
  FDRE \comp_burst.env_up_val_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[0]_i_1_n_0 ),
        .Q(env_up_val[0]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[10]_i_1_n_0 ),
        .Q(env_up_val[10]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[11]_i_1_n_0 ),
        .Q(env_up_val[11]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[12]_i_1_n_0 ),
        .Q(env_up_val[12]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[13]_i_1_n_0 ),
        .Q(env_up_val[13]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[14]_i_1_n_0 ),
        .Q(env_up_val[14]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[15]_i_1_n_0 ),
        .Q(env_up_val[15]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[1]_i_1_n_0 ),
        .Q(env_up_val[1]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[2]_i_1_n_0 ),
        .Q(env_up_val[2]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[3]_i_1_n_0 ),
        .Q(env_up_val[3]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[4]_i_1_n_0 ),
        .Q(env_up_val[4]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[5]_i_1_n_0 ),
        .Q(env_up_val[5]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[6]_i_1_n_0 ),
        .Q(env_up_val[6]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[7]_i_1_n_0 ),
        .Q(env_up_val[7]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[8]_i_1_n_0 ),
        .Q(env_up_val[8]),
        .R(1'b0));
  FDRE \comp_burst.env_up_val_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.env_up_val[9]_i_1_n_0 ),
        .Q(env_up_val[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \comp_burst.filling_i_1 
       (.I0(filling),
        .I1(rt_data_empty),
        .I2(\comp_burst.filling_i_2_n_0 ),
        .I3(burst),
        .O(\comp_burst.filling_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \comp_burst.filling_i_2 
       (.I0(1'b1),
        .I1(rt_data_empty),
        .O(\comp_burst.filling_i_2_n_0 ));
  FDRE \comp_burst.filling_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.filling_i_1_n_0 ),
        .Q(filling),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[0] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[82]),
        .Q(in_angle[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[10] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[92]),
        .Q(in_angle[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[11] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[93]),
        .Q(in_angle[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[12] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[94]),
        .Q(in_angle[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[13] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[95]),
        .Q(in_angle[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[14] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[96]),
        .Q(in_angle[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[15] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[97]),
        .Q(in_angle[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[1] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[83]),
        .Q(in_angle[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[2] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[84]),
        .Q(in_angle[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[3] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[85]),
        .Q(in_angle[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[4] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[86]),
        .Q(in_angle[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[5] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[87]),
        .Q(in_angle[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[6] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[88]),
        .Q(in_angle[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[7] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[89]),
        .Q(in_angle[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[8] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[90]),
        .Q(in_angle[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_angle_reg[9] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[91]),
        .Q(in_angle[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[0] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[62]),
        .Q(in_freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[10] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[72]),
        .Q(in_freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[11] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[73]),
        .Q(in_freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[12] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[74]),
        .Q(in_freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[13] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[75]),
        .Q(in_freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[14] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[76]),
        .Q(in_freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[15] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[77]),
        .Q(in_freq[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[16] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[78]),
        .Q(in_freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[17] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[79]),
        .Q(in_freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[18] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[80]),
        .Q(in_freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[19] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[81]),
        .Q(in_freq[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[1] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[63]),
        .Q(in_freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[2] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[64]),
        .Q(in_freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[3] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[65]),
        .Q(in_freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[4] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[66]),
        .Q(in_freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[5] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[67]),
        .Q(in_freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[6] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[68]),
        .Q(in_freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[7] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[69]),
        .Q(in_freq[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[8] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[70]),
        .Q(in_freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.in_freq_reg[9] 
       (.C(clk),
        .CE(\comp_burst.burst_i_1_n_0 ),
        .D(rt_meta_out[71]),
        .Q(in_freq[9]),
        .R(1'b0));
  FDRE \comp_burst.load_env_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.run_env_reg_n_0 ),
        .Q(load_env),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "comp_burst/comp_burst.mem_env_down_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \comp_burst.mem_env_down_reg 
       (.ADDRARDADDR({\comp_burst.env_down_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({wr_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_comp_burst.mem_env_down_reg_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_comp_burst.mem_env_down_reg_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_comp_burst.mem_env_down_reg_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_comp_burst.mem_env_down_reg_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_comp_burst.mem_env_down_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_comp_burst.mem_env_down_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_comp_burst.mem_env_down_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_comp_burst.mem_env_down_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_comp_burst.mem_env_down_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_comp_burst.mem_env_down_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_comp_burst.mem_env_down_reg_DBITERR_UNCONNECTED ),
        .DINADIN(env_in[31:0]),
        .DINBDIN(env_in[63:32]),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({\comp_burst.mem_env_down_reg_n_68 ,\comp_burst.mem_env_down_reg_n_69 ,\comp_burst.mem_env_down_reg_n_70 ,\comp_burst.mem_env_down_reg_n_71 ,\comp_burst.mem_env_down_reg_n_72 ,\comp_burst.mem_env_down_reg_n_73 ,\comp_burst.mem_env_down_reg_n_74 ,\comp_burst.mem_env_down_reg_n_75 ,\comp_burst.mem_env_down_reg_n_76 ,\comp_burst.mem_env_down_reg_n_77 ,\comp_burst.mem_env_down_reg_n_78 ,\comp_burst.mem_env_down_reg_n_79 ,\comp_burst.mem_env_down_reg_n_80 ,\comp_burst.mem_env_down_reg_n_81 ,\comp_burst.mem_env_down_reg_n_82 ,\comp_burst.mem_env_down_reg_n_83 ,\comp_burst.mem_env_down_reg_n_84 ,\comp_burst.mem_env_down_reg_n_85 ,\comp_burst.mem_env_down_reg_n_86 ,\comp_burst.mem_env_down_reg_n_87 ,\comp_burst.mem_env_down_reg_n_88 ,\comp_burst.mem_env_down_reg_n_89 ,\comp_burst.mem_env_down_reg_n_90 ,\comp_burst.mem_env_down_reg_n_91 ,\comp_burst.mem_env_down_reg_n_92 ,\comp_burst.mem_env_down_reg_n_93 ,\comp_burst.mem_env_down_reg_n_94 ,\comp_burst.mem_env_down_reg_n_95 ,\comp_burst.mem_env_down_reg_n_96 ,\comp_burst.mem_env_down_reg_n_97 ,\comp_burst.mem_env_down_reg_n_98 ,\comp_burst.mem_env_down_reg_n_99 }),
        .DOUTBDOUT({env_down_3,env_down_2}),
        .DOUTPADOUTP(\NLW_comp_burst.mem_env_down_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_comp_burst.mem_env_down_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_comp_burst.mem_env_down_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_comp_burst.mem_env_down_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_comp_burst.mem_env_down_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "comp_burst/comp_burst.mem_env_up_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \comp_burst.mem_env_up_reg 
       (.ADDRARDADDR({env_up_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({wr_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_comp_burst.mem_env_up_reg_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_comp_burst.mem_env_up_reg_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_comp_burst.mem_env_up_reg_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_comp_burst.mem_env_up_reg_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_comp_burst.mem_env_up_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_comp_burst.mem_env_up_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_comp_burst.mem_env_up_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_comp_burst.mem_env_up_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_comp_burst.mem_env_up_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_comp_burst.mem_env_up_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_comp_burst.mem_env_up_reg_DBITERR_UNCONNECTED ),
        .DINADIN(env_in[31:0]),
        .DINBDIN(env_in[63:32]),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({\comp_burst.mem_env_up_reg_n_68 ,\comp_burst.mem_env_up_reg_n_69 ,\comp_burst.mem_env_up_reg_n_70 ,\comp_burst.mem_env_up_reg_n_71 ,\comp_burst.mem_env_up_reg_n_72 ,\comp_burst.mem_env_up_reg_n_73 ,\comp_burst.mem_env_up_reg_n_74 ,\comp_burst.mem_env_up_reg_n_75 ,\comp_burst.mem_env_up_reg_n_76 ,\comp_burst.mem_env_up_reg_n_77 ,\comp_burst.mem_env_up_reg_n_78 ,\comp_burst.mem_env_up_reg_n_79 ,\comp_burst.mem_env_up_reg_n_80 ,\comp_burst.mem_env_up_reg_n_81 ,\comp_burst.mem_env_up_reg_n_82 ,\comp_burst.mem_env_up_reg_n_83 ,\comp_burst.mem_env_up_reg_n_84 ,\comp_burst.mem_env_up_reg_n_85 ,\comp_burst.mem_env_up_reg_n_86 ,\comp_burst.mem_env_up_reg_n_87 ,\comp_burst.mem_env_up_reg_n_88 ,\comp_burst.mem_env_up_reg_n_89 ,\comp_burst.mem_env_up_reg_n_90 ,\comp_burst.mem_env_up_reg_n_91 ,\comp_burst.mem_env_up_reg_n_92 ,\comp_burst.mem_env_up_reg_n_93 ,\comp_burst.mem_env_up_reg_n_94 ,\comp_burst.mem_env_up_reg_n_95 ,\comp_burst.mem_env_up_reg_n_96 ,\comp_burst.mem_env_up_reg_n_97 ,\comp_burst.mem_env_up_reg_n_98 ,\comp_burst.mem_env_up_reg_n_99 }),
        .DOUTBDOUT({env_up_3,env_up_2}),
        .DOUTPADOUTP(\NLW_comp_burst.mem_env_up_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_comp_burst.mem_env_up_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_comp_burst.mem_env_up_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_comp_burst.mem_env_up_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_comp_burst.mem_env_up_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "comp_burst/comp_burst.mem_phase_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \comp_burst.mem_phase_reg_0 
       (.ADDRARDADDR({env_up_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({wr_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_comp_burst.mem_phase_reg_0_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_comp_burst.mem_phase_reg_0_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_comp_burst.mem_phase_reg_0_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_comp_burst.mem_phase_reg_0_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_comp_burst.mem_phase_reg_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_comp_burst.mem_phase_reg_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_comp_burst.mem_phase_reg_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_comp_burst.mem_phase_reg_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_comp_burst.mem_phase_reg_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_comp_burst.mem_phase_reg_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_comp_burst.mem_phase_reg_0_DBITERR_UNCONNECTED ),
        .DINADIN(phase_in[31:0]),
        .DINBDIN(phase_in[63:32]),
        .DINPADINP(phase_in[67:64]),
        .DINPBDINP(phase_in[71:68]),
        .DOUTADOUT({\comp_burst.mem_phase_reg_0_n_68 ,\comp_burst.mem_phase_reg_0_n_69 ,\comp_burst.mem_phase_reg_0_n_70 ,\comp_burst.mem_phase_reg_0_n_71 ,\comp_burst.mem_phase_reg_0_n_72 ,\comp_burst.mem_phase_reg_0_n_73 ,\comp_burst.mem_phase_reg_0_n_74 ,\comp_burst.mem_phase_reg_0_n_75 ,\comp_burst.mem_phase_reg_0_n_76 ,\comp_burst.mem_phase_reg_0_n_77 ,\comp_burst.mem_phase_reg_0_n_78 ,\comp_burst.mem_phase_reg_0_n_79 ,\comp_burst.mem_phase_reg_0_n_80 ,\comp_burst.mem_phase_reg_0_n_81 ,\comp_burst.mem_phase_reg_0_n_82 ,\comp_burst.mem_phase_reg_0_n_83 ,\comp_burst.mem_phase_reg_0_n_84 ,\comp_burst.mem_phase_reg_0_n_85 ,\comp_burst.mem_phase_reg_0_n_86 ,\comp_burst.mem_phase_reg_0_n_87 ,\comp_burst.mem_phase_reg_0_n_88 ,\comp_burst.mem_phase_reg_0_n_89 ,\comp_burst.mem_phase_reg_0_n_90 ,\comp_burst.mem_phase_reg_0_n_91 ,\comp_burst.mem_phase_reg_0_n_92 ,\comp_burst.mem_phase_reg_0_n_93 ,\comp_burst.mem_phase_reg_0_n_94 ,\comp_burst.mem_phase_reg_0_n_95 ,\comp_burst.mem_phase_reg_0_n_96 ,\comp_burst.mem_phase_reg_0_n_97 ,\comp_burst.mem_phase_reg_0_n_98 ,\comp_burst.mem_phase_reg_0_n_99 }),
        .DOUTBDOUT({phase_3[3:0],phase_2,\comp_burst.mem_phase_reg_0_n_124 ,\comp_burst.mem_phase_reg_0_n_125 ,\comp_burst.mem_phase_reg_0_n_126 ,\comp_burst.mem_phase_reg_0_n_127 ,\comp_burst.mem_phase_reg_0_n_128 ,\comp_burst.mem_phase_reg_0_n_129 ,\comp_burst.mem_phase_reg_0_n_130 ,\comp_burst.mem_phase_reg_0_n_131 }),
        .DOUTPADOUTP(phase_3[7:4]),
        .DOUTPBDOUTP(phase_3[11:8]),
        .ECCPARITY(\NLW_comp_burst.mem_phase_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_comp_burst.mem_phase_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_comp_burst.mem_phase_reg_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "comp_burst/comp_burst.mem_phase_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "79" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \comp_burst.mem_phase_reg_1 
       (.ADDRARDADDR({env_up_ptr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({wr_ptr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_comp_burst.mem_phase_reg_1_CASDINA_UNCONNECTED [15:0]),
        .CASDINB(\NLW_comp_burst.mem_phase_reg_1_CASDINB_UNCONNECTED [15:0]),
        .CASDINPA(\NLW_comp_burst.mem_phase_reg_1_CASDINPA_UNCONNECTED [1:0]),
        .CASDINPB(\NLW_comp_burst.mem_phase_reg_1_CASDINPB_UNCONNECTED [1:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_comp_burst.mem_phase_reg_1_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_comp_burst.mem_phase_reg_1_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_comp_burst.mem_phase_reg_1_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_comp_burst.mem_phase_reg_1_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DINADIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,phase_in[79:72]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT({\NLW_comp_burst.mem_phase_reg_1_DOUTADOUT_UNCONNECTED [15:8],phase_3[19:12]}),
        .DOUTBDOUT(\NLW_comp_burst.mem_phase_reg_1_DOUTBDOUT_UNCONNECTED [15:0]),
        .DOUTPADOUTP(\NLW_comp_burst.mem_phase_reg_1_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_comp_burst.mem_phase_reg_1_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr}));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.mem_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(mem_wr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \comp_burst.min_env[15]_i_1 
       (.I0(cfg_rd),
        .I1(\comp_burst.min_env[15]_i_2_n_0 ),
        .I2(config_data_adr_out[0]),
        .I3(config_data_adr_out[7]),
        .I4(config_data_adr_out[5]),
        .I5(config_data_adr_out[6]),
        .O(min_env0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_burst.min_env[15]_i_2 
       (.I0(config_data_adr_out[3]),
        .I1(config_data_adr_out[4]),
        .I2(config_data_adr_out[1]),
        .I3(config_data_adr_out[2]),
        .O(\comp_burst.min_env[15]_i_2_n_0 ));
  FDRE \comp_burst.min_env_reg[0] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[8]),
        .Q(min_env[0]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[10] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[18]),
        .Q(min_env[10]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[11] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[19]),
        .Q(min_env[11]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[12] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[20]),
        .Q(min_env[12]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[13] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[21]),
        .Q(min_env[13]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[14] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[22]),
        .Q(min_env[14]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[15] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[23]),
        .Q(min_env[15]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[1] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[9]),
        .Q(min_env[1]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[2] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[10]),
        .Q(min_env[2]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[3] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[11]),
        .Q(min_env[3]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[4] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[12]),
        .Q(min_env[4]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[5] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[13]),
        .Q(min_env[5]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[6] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[14]),
        .Q(min_env[6]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[7] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[15]),
        .Q(min_env[7]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[8] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[16]),
        .Q(min_env[8]),
        .R(1'b0));
  FDRE \comp_burst.min_env_reg[9] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data_adr_out[17]),
        .Q(min_env[9]),
        .R(1'b0));
  FDRE \comp_burst.p2_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(complete_2),
        .Q(p2_done),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[0]),
        .Q(p2_env[0]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[10]),
        .Q(p2_env[10]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[11]),
        .Q(p2_env[11]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[12]),
        .Q(p2_env[12]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[13]),
        .Q(p2_env[13]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[14]),
        .Q(p2_env[14]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[15]),
        .Q(p2_env[15]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[1]),
        .Q(p2_env[1]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[2]),
        .Q(p2_env[2]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[3]),
        .Q(p2_env[3]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[4]),
        .Q(p2_env[4]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[5]),
        .Q(p2_env[5]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[6]),
        .Q(p2_env[6]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[7]),
        .Q(p2_env[7]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[8]),
        .Q(p2_env[8]),
        .R(1'b0));
  FDRE \comp_burst.p2_env_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_up_val[9]),
        .Q(p2_env[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[0] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[0]),
        .Q(p2_freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[10] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[10]),
        .Q(p2_freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[11] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[11]),
        .Q(p2_freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[12] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[12]),
        .Q(p2_freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[13] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[13]),
        .Q(p2_freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[14] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[14]),
        .Q(p2_freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[15] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[15]),
        .Q(p2_freq[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[16] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[16]),
        .Q(p2_freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[17] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[17]),
        .Q(p2_freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[18] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[18]),
        .Q(p2_freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[19] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[19]),
        .Q(p2_freq[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[1] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[1]),
        .Q(p2_freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[2] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[2]),
        .Q(p2_freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[3] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[3]),
        .Q(p2_freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[4] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[4]),
        .Q(p2_freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[5] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[5]),
        .Q(p2_freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[6] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[6]),
        .Q(p2_freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[7] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[7]),
        .Q(p2_freq[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[8] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[8]),
        .Q(p2_freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_freq_reg[9] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(in_freq[9]),
        .Q(p2_freq[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \comp_burst.p2_max_pos[10]_i_3 
       (.I0(env_start_ind[9]),
        .I1(env_start_ind[7]),
        .I2(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I3(env_start_ind[6]),
        .I4(env_start_ind[8]),
        .I5(env_start_ind[10]),
        .O(\comp_burst.p2_max_pos[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \comp_burst.p2_max_pos[10]_i_4 
       (.I0(\comp_burst.p2_max_pos_reg2 [10]),
        .I1(env_start_ind[9]),
        .I2(env_start_ind[7]),
        .I3(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I4(env_start_ind[6]),
        .I5(env_start_ind[8]),
        .O(\comp_burst.p2_max_pos[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \comp_burst.p2_max_pos[10]_i_5 
       (.I0(\comp_burst.p2_max_pos_reg2 [9]),
        .I1(env_start_ind[8]),
        .I2(env_start_ind[6]),
        .I3(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I4(env_start_ind[7]),
        .O(\comp_burst.p2_max_pos[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[10]_i_6 
       (.I0(env_down_max_ind[10]),
        .I1(env_up_max_ind[10]),
        .O(\comp_burst.p2_max_pos[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[10]_i_7 
       (.I0(env_down_max_ind[9]),
        .I1(env_up_max_ind[9]),
        .O(\comp_burst.p2_max_pos[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[10]_i_8 
       (.I0(env_down_max_ind[8]),
        .I1(env_up_max_ind[8]),
        .O(\comp_burst.p2_max_pos[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_burst.p2_max_pos[10]_i_9 
       (.I0(env_start_ind[4]),
        .I1(env_start_ind[2]),
        .I2(env_start_ind[0]),
        .I3(env_start_ind[1]),
        .I4(env_start_ind[3]),
        .I5(env_start_ind[5]),
        .O(\comp_burst.p2_max_pos[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_10 
       (.I0(\comp_burst.p2_max_pos_reg2 [1]),
        .I1(env_start_ind[0]),
        .O(\comp_burst.p2_max_pos[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_11 
       (.I0(env_down_max_ind[7]),
        .I1(env_up_max_ind[7]),
        .O(\comp_burst.p2_max_pos[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_12 
       (.I0(env_down_max_ind[6]),
        .I1(env_up_max_ind[6]),
        .O(\comp_burst.p2_max_pos[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_13 
       (.I0(env_down_max_ind[5]),
        .I1(env_up_max_ind[5]),
        .O(\comp_burst.p2_max_pos[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_14 
       (.I0(env_down_max_ind[4]),
        .I1(env_up_max_ind[4]),
        .O(\comp_burst.p2_max_pos[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_15 
       (.I0(env_down_max_ind[3]),
        .I1(env_up_max_ind[3]),
        .O(\comp_burst.p2_max_pos[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_16 
       (.I0(env_down_max_ind[2]),
        .I1(env_up_max_ind[2]),
        .O(\comp_burst.p2_max_pos[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_17 
       (.I0(env_down_max_ind[1]),
        .I1(env_up_max_ind[1]),
        .O(\comp_burst.p2_max_pos[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_18 
       (.I0(env_down_max_ind[0]),
        .I1(env_up_max_ind[0]),
        .O(\comp_burst.p2_max_pos[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \comp_burst.p2_max_pos[7]_i_19 
       (.I0(env_start_ind[4]),
        .I1(env_start_ind[2]),
        .I2(env_start_ind[0]),
        .I3(env_start_ind[1]),
        .I4(env_start_ind[3]),
        .I5(env_start_ind[5]),
        .O(\comp_burst.p2_max_pos[7]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \comp_burst.p2_max_pos[7]_i_3 
       (.I0(\comp_burst.p2_max_pos_reg2 [8]),
        .I1(env_start_ind[7]),
        .I2(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I3(env_start_ind[6]),
        .O(\comp_burst.p2_max_pos[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.p2_max_pos[7]_i_4 
       (.I0(\comp_burst.p2_max_pos_reg2 [7]),
        .I1(env_start_ind[6]),
        .I2(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .O(\comp_burst.p2_max_pos[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_max_pos[7]_i_5 
       (.I0(\comp_burst.p2_max_pos_reg2 [6]),
        .I1(\comp_burst.p2_max_pos[7]_i_19_n_0 ),
        .O(\comp_burst.p2_max_pos[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \comp_burst.p2_max_pos[7]_i_6 
       (.I0(\comp_burst.p2_max_pos_reg2 [5]),
        .I1(env_start_ind[4]),
        .I2(env_start_ind[2]),
        .I3(env_start_ind[0]),
        .I4(env_start_ind[1]),
        .I5(env_start_ind[3]),
        .O(\comp_burst.p2_max_pos[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \comp_burst.p2_max_pos[7]_i_7 
       (.I0(\comp_burst.p2_max_pos_reg2 [4]),
        .I1(env_start_ind[3]),
        .I2(env_start_ind[1]),
        .I3(env_start_ind[0]),
        .I4(env_start_ind[2]),
        .O(\comp_burst.p2_max_pos[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \comp_burst.p2_max_pos[7]_i_8 
       (.I0(\comp_burst.p2_max_pos_reg2 [3]),
        .I1(env_start_ind[2]),
        .I2(env_start_ind[0]),
        .I3(env_start_ind[1]),
        .O(\comp_burst.p2_max_pos[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.p2_max_pos[7]_i_9 
       (.I0(\comp_burst.p2_max_pos_reg2 [2]),
        .I1(env_start_ind[1]),
        .I2(env_start_ind[0]),
        .O(\comp_burst.p2_max_pos[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[0] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [0]),
        .Q(p2_max_pos[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[10] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [10]),
        .Q(p2_max_pos[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_max_pos_reg[10]_i_1 
       (.CI(\comp_burst.p2_max_pos_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.p2_max_pos_reg[10]_i_1_CO_UNCONNECTED [7:2],\comp_burst.p2_max_pos_reg[10]_i_1_n_6 ,\comp_burst.p2_max_pos_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\comp_burst.p2_max_pos_reg2 [10:9]}),
        .O({\NLW_comp_burst.p2_max_pos_reg[10]_i_1_O_UNCONNECTED [7:3],\comp_burst.p2_max_pos_reg00_out [10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\comp_burst.p2_max_pos[10]_i_3_n_0 ,\comp_burst.p2_max_pos[10]_i_4_n_0 ,\comp_burst.p2_max_pos[10]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_max_pos_reg[10]_i_2 
       (.CI(\comp_burst.p2_max_pos_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.p2_max_pos_reg[10]_i_2_CO_UNCONNECTED [7:2],\comp_burst.p2_max_pos_reg[10]_i_2_n_6 ,\comp_burst.p2_max_pos_reg[10]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,env_down_max_ind[9:8]}),
        .O({\NLW_comp_burst.p2_max_pos_reg[10]_i_2_O_UNCONNECTED [7:3],\comp_burst.p2_max_pos_reg2 [10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\comp_burst.p2_max_pos[10]_i_6_n_0 ,\comp_burst.p2_max_pos[10]_i_7_n_0 ,\comp_burst.p2_max_pos[10]_i_8_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[1] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [1]),
        .Q(p2_max_pos[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[2] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [2]),
        .Q(p2_max_pos[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[3] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [3]),
        .Q(p2_max_pos[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[4] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [4]),
        .Q(p2_max_pos[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[5] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [5]),
        .Q(p2_max_pos[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[6] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [6]),
        .Q(p2_max_pos[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[7] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [7]),
        .Q(p2_max_pos[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_max_pos_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_max_pos_reg[7]_i_1_n_0 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_1 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_2 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_3 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_4 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_5 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_6 ,\comp_burst.p2_max_pos_reg[7]_i_1_n_7 }),
        .DI(\comp_burst.p2_max_pos_reg2 [8:1]),
        .O(\comp_burst.p2_max_pos_reg00_out [7:0]),
        .S({\comp_burst.p2_max_pos[7]_i_3_n_0 ,\comp_burst.p2_max_pos[7]_i_4_n_0 ,\comp_burst.p2_max_pos[7]_i_5_n_0 ,\comp_burst.p2_max_pos[7]_i_6_n_0 ,\comp_burst.p2_max_pos[7]_i_7_n_0 ,\comp_burst.p2_max_pos[7]_i_8_n_0 ,\comp_burst.p2_max_pos[7]_i_9_n_0 ,\comp_burst.p2_max_pos[7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_max_pos_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_max_pos_reg[7]_i_2_n_0 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_1 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_2 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_3 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_4 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_5 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_6 ,\comp_burst.p2_max_pos_reg[7]_i_2_n_7 }),
        .DI(env_down_max_ind[7:0]),
        .O({\comp_burst.p2_max_pos_reg2 [7:1],\NLW_comp_burst.p2_max_pos_reg[7]_i_2_O_UNCONNECTED [0]}),
        .S({\comp_burst.p2_max_pos[7]_i_11_n_0 ,\comp_burst.p2_max_pos[7]_i_12_n_0 ,\comp_burst.p2_max_pos[7]_i_13_n_0 ,\comp_burst.p2_max_pos[7]_i_14_n_0 ,\comp_burst.p2_max_pos[7]_i_15_n_0 ,\comp_burst.p2_max_pos[7]_i_16_n_0 ,\comp_burst.p2_max_pos[7]_i_17_n_0 ,\comp_burst.p2_max_pos[7]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[8] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [8]),
        .Q(p2_max_pos[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_max_pos_reg[9] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_max_pos_reg00_out [9]),
        .Q(p2_max_pos[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_11 
       (.I0(pred_phase[17]),
        .O(\comp_burst.p2_phase_diff[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_12 
       (.I0(pred_phase[16]),
        .O(\comp_burst.p2_phase_diff[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_13 
       (.I0(pred_phase[15]),
        .O(\comp_burst.p2_phase_diff[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_14 
       (.I0(pred_phase[14]),
        .O(\comp_burst.p2_phase_diff[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_15 
       (.I0(pred_phase[13]),
        .O(\comp_burst.p2_phase_diff[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_16 
       (.I0(pred_phase[12]),
        .O(\comp_burst.p2_phase_diff[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_17 
       (.I0(pred_phase[11]),
        .O(\comp_burst.p2_phase_diff[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[15]_i_18 
       (.I0(pred_phase[10]),
        .O(\comp_burst.p2_phase_diff[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_2 
       (.I0(phase_val[15]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_8 ),
        .O(\comp_burst.p2_phase_diff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_3 
       (.I0(phase_val[14]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_9 ),
        .O(\comp_burst.p2_phase_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_4 
       (.I0(phase_val[13]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_10 ),
        .O(\comp_burst.p2_phase_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_5 
       (.I0(phase_val[12]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_11 ),
        .O(\comp_burst.p2_phase_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_6 
       (.I0(phase_val[11]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_12 ),
        .O(\comp_burst.p2_phase_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_7 
       (.I0(phase_val[10]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_13 ),
        .O(\comp_burst.p2_phase_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_8 
       (.I0(phase_val[9]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_14 ),
        .O(\comp_burst.p2_phase_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[15]_i_9 
       (.I0(phase_val[8]),
        .I1(\comp_burst.p2_phase_diff_reg[15]_i_10_n_15 ),
        .O(\comp_burst.p2_phase_diff[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[19]_i_10 
       (.I0(pred_phase[18]),
        .O(\comp_burst.p2_phase_diff[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[19]_i_2 
       (.I0(phase_val[19]),
        .I1(\comp_burst.p2_phase_diff_reg[19]_i_6_n_12 ),
        .O(\comp_burst.p2_phase_diff[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[19]_i_3 
       (.I0(phase_val[18]),
        .I1(\comp_burst.p2_phase_diff_reg[19]_i_6_n_13 ),
        .O(\comp_burst.p2_phase_diff[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[19]_i_4 
       (.I0(phase_val[17]),
        .I1(\comp_burst.p2_phase_diff_reg[19]_i_6_n_14 ),
        .O(\comp_burst.p2_phase_diff[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[19]_i_5 
       (.I0(phase_val[16]),
        .I1(\comp_burst.p2_phase_diff_reg[19]_i_6_n_15 ),
        .O(\comp_burst.p2_phase_diff[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[19]_i_7 
       (.I0(pred_phase[21]),
        .O(\comp_burst.p2_phase_diff[19]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[19]_i_8 
       (.I0(pred_phase[20]),
        .O(\comp_burst.p2_phase_diff[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[19]_i_9 
       (.I0(pred_phase[19]),
        .O(\comp_burst.p2_phase_diff[19]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_11 
       (.I0(pred_phase[9]),
        .O(\comp_burst.p2_phase_diff[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_12 
       (.I0(pred_phase[8]),
        .O(\comp_burst.p2_phase_diff[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_13 
       (.I0(pred_phase[7]),
        .O(\comp_burst.p2_phase_diff[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_14 
       (.I0(pred_phase[6]),
        .O(\comp_burst.p2_phase_diff[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_15 
       (.I0(pred_phase[5]),
        .O(\comp_burst.p2_phase_diff[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_16 
       (.I0(pred_phase[4]),
        .O(\comp_burst.p2_phase_diff[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_phase_diff[7]_i_17 
       (.I0(pred_phase[3]),
        .O(\comp_burst.p2_phase_diff[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_2 
       (.I0(phase_val[7]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_8 ),
        .O(\comp_burst.p2_phase_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_3 
       (.I0(phase_val[6]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_9 ),
        .O(\comp_burst.p2_phase_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_4 
       (.I0(phase_val[5]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_10 ),
        .O(\comp_burst.p2_phase_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_5 
       (.I0(phase_val[4]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_11 ),
        .O(\comp_burst.p2_phase_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_6 
       (.I0(phase_val[3]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_12 ),
        .O(\comp_burst.p2_phase_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_7 
       (.I0(phase_val[2]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_13 ),
        .O(\comp_burst.p2_phase_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_8 
       (.I0(phase_val[1]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_14 ),
        .O(\comp_burst.p2_phase_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_phase_diff[7]_i_9 
       (.I0(phase_val[0]),
        .I1(\comp_burst.p2_phase_diff_reg[7]_i_10_n_15 ),
        .O(\comp_burst.p2_phase_diff[7]_i_9_n_0 ));
  FDRE \comp_burst.p2_phase_diff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[0]),
        .Q(p2_phase_diff[0]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[10]),
        .Q(p2_phase_diff[10]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[11]),
        .Q(p2_phase_diff[11]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[12]),
        .Q(p2_phase_diff[12]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[13]),
        .Q(p2_phase_diff[13]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[14]),
        .Q(p2_phase_diff[14]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[15]),
        .Q(p2_phase_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_phase_diff_reg[15]_i_1 
       (.CI(\comp_burst.p2_phase_diff_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_phase_diff_reg[15]_i_1_n_0 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_1 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_2 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_3 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_4 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_5 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_6 ,\comp_burst.p2_phase_diff_reg[15]_i_1_n_7 }),
        .DI(phase_val[15:8]),
        .O(p2_phase_diff02_out[15:8]),
        .S({\comp_burst.p2_phase_diff[15]_i_2_n_0 ,\comp_burst.p2_phase_diff[15]_i_3_n_0 ,\comp_burst.p2_phase_diff[15]_i_4_n_0 ,\comp_burst.p2_phase_diff[15]_i_5_n_0 ,\comp_burst.p2_phase_diff[15]_i_6_n_0 ,\comp_burst.p2_phase_diff[15]_i_7_n_0 ,\comp_burst.p2_phase_diff[15]_i_8_n_0 ,\comp_burst.p2_phase_diff[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_phase_diff_reg[15]_i_10 
       (.CI(\comp_burst.p2_phase_diff_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_phase_diff_reg[15]_i_10_n_0 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_1 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_2 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_3 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_4 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_5 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_6 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\comp_burst.p2_phase_diff_reg[15]_i_10_n_8 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_9 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_10 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_11 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_12 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_13 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_14 ,\comp_burst.p2_phase_diff_reg[15]_i_10_n_15 }),
        .S({\comp_burst.p2_phase_diff[15]_i_11_n_0 ,\comp_burst.p2_phase_diff[15]_i_12_n_0 ,\comp_burst.p2_phase_diff[15]_i_13_n_0 ,\comp_burst.p2_phase_diff[15]_i_14_n_0 ,\comp_burst.p2_phase_diff[15]_i_15_n_0 ,\comp_burst.p2_phase_diff[15]_i_16_n_0 ,\comp_burst.p2_phase_diff[15]_i_17_n_0 ,\comp_burst.p2_phase_diff[15]_i_18_n_0 }));
  FDRE \comp_burst.p2_phase_diff_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[16]),
        .Q(p2_phase_diff[16]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[17]),
        .Q(p2_phase_diff[17]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[18]),
        .Q(p2_phase_diff[18]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[19]),
        .Q(p2_phase_diff[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_phase_diff_reg[19]_i_1 
       (.CI(\comp_burst.p2_phase_diff_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.p2_phase_diff_reg[19]_i_1_CO_UNCONNECTED [7:3],\comp_burst.p2_phase_diff_reg[19]_i_1_n_5 ,\comp_burst.p2_phase_diff_reg[19]_i_1_n_6 ,\comp_burst.p2_phase_diff_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_val[18:16]}),
        .O({\NLW_comp_burst.p2_phase_diff_reg[19]_i_1_O_UNCONNECTED [7:4],p2_phase_diff02_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\comp_burst.p2_phase_diff[19]_i_2_n_0 ,\comp_burst.p2_phase_diff[19]_i_3_n_0 ,\comp_burst.p2_phase_diff[19]_i_4_n_0 ,\comp_burst.p2_phase_diff[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_phase_diff_reg[19]_i_6 
       (.CI(\comp_burst.p2_phase_diff_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.p2_phase_diff_reg[19]_i_6_CO_UNCONNECTED [7:3],\comp_burst.p2_phase_diff_reg[19]_i_6_n_5 ,\comp_burst.p2_phase_diff_reg[19]_i_6_n_6 ,\comp_burst.p2_phase_diff_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_comp_burst.p2_phase_diff_reg[19]_i_6_O_UNCONNECTED [7:4],\comp_burst.p2_phase_diff_reg[19]_i_6_n_12 ,\comp_burst.p2_phase_diff_reg[19]_i_6_n_13 ,\comp_burst.p2_phase_diff_reg[19]_i_6_n_14 ,\comp_burst.p2_phase_diff_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\comp_burst.p2_phase_diff[19]_i_7_n_0 ,\comp_burst.p2_phase_diff[19]_i_8_n_0 ,\comp_burst.p2_phase_diff[19]_i_9_n_0 ,\comp_burst.p2_phase_diff[19]_i_10_n_0 }));
  FDRE \comp_burst.p2_phase_diff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[1]),
        .Q(p2_phase_diff[1]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[2]),
        .Q(p2_phase_diff[2]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[3]),
        .Q(p2_phase_diff[3]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[4]),
        .Q(p2_phase_diff[4]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[5]),
        .Q(p2_phase_diff[5]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[6]),
        .Q(p2_phase_diff[6]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[7]),
        .Q(p2_phase_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_phase_diff_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_phase_diff_reg[7]_i_1_n_0 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_1 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_2 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_3 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_4 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_5 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_6 ,\comp_burst.p2_phase_diff_reg[7]_i_1_n_7 }),
        .DI(phase_val[7:0]),
        .O(p2_phase_diff02_out[7:0]),
        .S({\comp_burst.p2_phase_diff[7]_i_2_n_0 ,\comp_burst.p2_phase_diff[7]_i_3_n_0 ,\comp_burst.p2_phase_diff[7]_i_4_n_0 ,\comp_burst.p2_phase_diff[7]_i_5_n_0 ,\comp_burst.p2_phase_diff[7]_i_6_n_0 ,\comp_burst.p2_phase_diff[7]_i_7_n_0 ,\comp_burst.p2_phase_diff[7]_i_8_n_0 ,\comp_burst.p2_phase_diff[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_phase_diff_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_phase_diff_reg[7]_i_10_n_0 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_1 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_2 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_3 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_4 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_5 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_6 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\comp_burst.p2_phase_diff_reg[7]_i_10_n_8 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_9 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_10 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_11 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_12 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_13 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_14 ,\comp_burst.p2_phase_diff_reg[7]_i_10_n_15 }),
        .S({\comp_burst.p2_phase_diff[7]_i_11_n_0 ,\comp_burst.p2_phase_diff[7]_i_12_n_0 ,\comp_burst.p2_phase_diff[7]_i_13_n_0 ,\comp_burst.p2_phase_diff[7]_i_14_n_0 ,\comp_burst.p2_phase_diff[7]_i_15_n_0 ,\comp_burst.p2_phase_diff[7]_i_16_n_0 ,\comp_burst.p2_phase_diff[7]_i_17_n_0 ,pred_phase[2]}));
  FDRE \comp_burst.p2_phase_diff_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[8]),
        .Q(p2_phase_diff[8]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_diff_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_phase_diff02_out[9]),
        .Q(p2_phase_diff[9]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[4]),
        .Q(p2_phase[0]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[14]),
        .Q(p2_phase[10]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[15]),
        .Q(p2_phase[11]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[16]),
        .Q(p2_phase[12]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[17]),
        .Q(p2_phase[13]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[18]),
        .Q(p2_phase[14]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[19]),
        .Q(p2_phase[15]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[5]),
        .Q(p2_phase[1]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[6]),
        .Q(p2_phase[2]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[7]),
        .Q(p2_phase[3]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[8]),
        .Q(p2_phase[4]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[9]),
        .Q(p2_phase[5]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[10]),
        .Q(p2_phase[6]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[11]),
        .Q(p2_phase[7]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[12]),
        .Q(p2_phase[8]),
        .R(1'b0));
  FDRE \comp_burst.p2_phase_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_val[13]),
        .Q(p2_phase[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p2_size[0]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [0]),
        .O(\comp_burst.p2_size[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \comp_burst.p2_size[10]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [9]),
        .I1(\comp_burst.p2_size_reg1 [7]),
        .I2(\comp_burst.p2_size[10]_i_4_n_0 ),
        .I3(\comp_burst.p2_size_reg1 [6]),
        .I4(\comp_burst.p2_size_reg1 [8]),
        .I5(\comp_burst.p2_size_reg1 [10]),
        .O(\comp_burst.p2_size[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_size[10]_i_10 
       (.I0(env_end_ind[5]),
        .I1(\comp_burst.p2_max_pos[7]_i_19_n_0 ),
        .O(\comp_burst.p2_size[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \comp_burst.p2_size[10]_i_11 
       (.I0(env_end_ind[4]),
        .I1(env_start_ind[4]),
        .I2(env_start_ind[2]),
        .I3(env_start_ind[0]),
        .I4(env_start_ind[1]),
        .I5(env_start_ind[3]),
        .O(\comp_burst.p2_size[10]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \comp_burst.p2_size[10]_i_12 
       (.I0(env_end_ind[3]),
        .I1(env_start_ind[3]),
        .I2(env_start_ind[1]),
        .I3(env_start_ind[0]),
        .I4(env_start_ind[2]),
        .O(\comp_burst.p2_size[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \comp_burst.p2_size[10]_i_13 
       (.I0(env_end_ind[2]),
        .I1(env_start_ind[2]),
        .I2(env_start_ind[0]),
        .I3(env_start_ind[1]),
        .O(\comp_burst.p2_size[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.p2_size[10]_i_14 
       (.I0(env_end_ind[1]),
        .I1(env_start_ind[1]),
        .I2(env_start_ind[0]),
        .O(\comp_burst.p2_size[10]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_size[10]_i_15 
       (.I0(env_end_ind[0]),
        .I1(env_start_ind[0]),
        .O(\comp_burst.p2_size[10]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.p2_size[10]_i_16 
       (.I0(env_start_ind[8]),
        .I1(env_start_ind[6]),
        .I2(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I3(env_start_ind[7]),
        .I4(env_start_ind[9]),
        .O(\comp_burst.p2_size[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \comp_burst.p2_size[10]_i_4 
       (.I0(\comp_burst.p2_size_reg1 [4]),
        .I1(\comp_burst.p2_size_reg1 [2]),
        .I2(\comp_burst.p2_size_reg1 [0]),
        .I3(\comp_burst.p2_size_reg1 [1]),
        .I4(\comp_burst.p2_size_reg1 [3]),
        .I5(\comp_burst.p2_size_reg1 [5]),
        .O(\comp_burst.p2_size[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.p2_size[10]_i_5 
       (.I0(\comp_burst.p2_size[10]_i_16_n_0 ),
        .I1(env_end_ind[10]),
        .I2(env_start_ind[10]),
        .O(\comp_burst.p2_size[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \comp_burst.p2_size[10]_i_6 
       (.I0(env_end_ind[9]),
        .I1(env_start_ind[9]),
        .I2(env_start_ind[7]),
        .I3(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I4(env_start_ind[6]),
        .I5(env_start_ind[8]),
        .O(\comp_burst.p2_size[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \comp_burst.p2_size[10]_i_7 
       (.I0(env_end_ind[8]),
        .I1(env_start_ind[8]),
        .I2(env_start_ind[6]),
        .I3(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I4(env_start_ind[7]),
        .O(\comp_burst.p2_size[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \comp_burst.p2_size[10]_i_8 
       (.I0(env_end_ind[7]),
        .I1(env_start_ind[7]),
        .I2(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .I3(env_start_ind[6]),
        .O(\comp_burst.p2_size[10]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \comp_burst.p2_size[10]_i_9 
       (.I0(env_end_ind[6]),
        .I1(env_start_ind[6]),
        .I2(\comp_burst.p2_max_pos[10]_i_9_n_0 ),
        .O(\comp_burst.p2_size[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p2_size[1]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [0]),
        .I1(\comp_burst.p2_size_reg1 [1]),
        .O(\comp_burst.p2_size[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \comp_burst.p2_size[2]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [1]),
        .I1(\comp_burst.p2_size_reg1 [0]),
        .I2(\comp_burst.p2_size_reg1 [2]),
        .O(\comp_burst.p2_size[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.p2_size[3]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [2]),
        .I1(\comp_burst.p2_size_reg1 [0]),
        .I2(\comp_burst.p2_size_reg1 [1]),
        .I3(\comp_burst.p2_size_reg1 [3]),
        .O(\comp_burst.p2_size[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp_burst.p2_size[4]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [3]),
        .I1(\comp_burst.p2_size_reg1 [1]),
        .I2(\comp_burst.p2_size_reg1 [0]),
        .I3(\comp_burst.p2_size_reg1 [2]),
        .I4(\comp_burst.p2_size_reg1 [4]),
        .O(\comp_burst.p2_size[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \comp_burst.p2_size[5]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [4]),
        .I1(\comp_burst.p2_size_reg1 [2]),
        .I2(\comp_burst.p2_size_reg1 [0]),
        .I3(\comp_burst.p2_size_reg1 [1]),
        .I4(\comp_burst.p2_size_reg1 [3]),
        .I5(\comp_burst.p2_size_reg1 [5]),
        .O(\comp_burst.p2_size[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_burst.p2_size[6]_i_1 
       (.I0(\comp_burst.p2_size[10]_i_4_n_0 ),
        .I1(\comp_burst.p2_size_reg1 [6]),
        .O(\comp_burst.p2_size[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \comp_burst.p2_size[7]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [6]),
        .I1(\comp_burst.p2_size[10]_i_4_n_0 ),
        .I2(\comp_burst.p2_size_reg1 [7]),
        .O(\comp_burst.p2_size[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \comp_burst.p2_size[8]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [7]),
        .I1(\comp_burst.p2_size[10]_i_4_n_0 ),
        .I2(\comp_burst.p2_size_reg1 [6]),
        .I3(\comp_burst.p2_size_reg1 [8]),
        .O(\comp_burst.p2_size[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \comp_burst.p2_size[9]_i_1 
       (.I0(\comp_burst.p2_size_reg1 [8]),
        .I1(\comp_burst.p2_size_reg1 [6]),
        .I2(\comp_burst.p2_size[10]_i_4_n_0 ),
        .I3(\comp_burst.p2_size_reg1 [7]),
        .I4(\comp_burst.p2_size_reg1 [9]),
        .O(\comp_burst.p2_size[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[0] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[0]_i_1_n_0 ),
        .Q(p2_size[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[10] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[10]_i_1_n_0 ),
        .Q(p2_size[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_size_reg[10]_i_2 
       (.CI(\comp_burst.p2_size_reg[10]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.p2_size_reg[10]_i_2_CO_UNCONNECTED [7:2],\comp_burst.p2_size_reg[10]_i_2_n_6 ,\comp_burst.p2_size_reg[10]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,env_end_ind[9:8]}),
        .O({\NLW_comp_burst.p2_size_reg[10]_i_2_O_UNCONNECTED [7:3],\comp_burst.p2_size_reg1 [10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\comp_burst.p2_size[10]_i_5_n_0 ,\comp_burst.p2_size[10]_i_6_n_0 ,\comp_burst.p2_size[10]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p2_size_reg[10]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p2_size_reg[10]_i_3_n_0 ,\comp_burst.p2_size_reg[10]_i_3_n_1 ,\comp_burst.p2_size_reg[10]_i_3_n_2 ,\comp_burst.p2_size_reg[10]_i_3_n_3 ,\comp_burst.p2_size_reg[10]_i_3_n_4 ,\comp_burst.p2_size_reg[10]_i_3_n_5 ,\comp_burst.p2_size_reg[10]_i_3_n_6 ,\comp_burst.p2_size_reg[10]_i_3_n_7 }),
        .DI(env_end_ind[7:0]),
        .O(\comp_burst.p2_size_reg1 [7:0]),
        .S({\comp_burst.p2_size[10]_i_8_n_0 ,\comp_burst.p2_size[10]_i_9_n_0 ,\comp_burst.p2_size[10]_i_10_n_0 ,\comp_burst.p2_size[10]_i_11_n_0 ,\comp_burst.p2_size[10]_i_12_n_0 ,\comp_burst.p2_size[10]_i_13_n_0 ,\comp_burst.p2_size[10]_i_14_n_0 ,\comp_burst.p2_size[10]_i_15_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[1] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[1]_i_1_n_0 ),
        .Q(p2_size[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[2] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[2]_i_1_n_0 ),
        .Q(p2_size[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[3] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[3]_i_1_n_0 ),
        .Q(p2_size[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[4] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[4]_i_1_n_0 ),
        .Q(p2_size[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[5] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[5]_i_1_n_0 ),
        .Q(p2_size[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[6] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[6]_i_1_n_0 ),
        .Q(p2_size[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[7] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[7]_i_1_n_0 ),
        .Q(p2_size[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[8] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[8]_i_1_n_0 ),
        .Q(p2_size[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p2_size_reg[9] 
       (.C(clk),
        .CE(\comp_burst.complete_1_reg_n_0 ),
        .D(\comp_burst.p2_size[9]_i_1_n_0 ),
        .Q(p2_size[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF080)) 
    \comp_burst.p2_wr_i_1 
       (.I0(\comp_burst.env_start_ind_reg[10]_i_2_n_0 ),
        .I1(run_env_start),
        .I2(comp_env),
        .I3(\comp_burst.p2_wr_reg_n_0 ),
        .O(\comp_burst.p2_wr_i_1_n_0 ));
  FDRE \comp_burst.p2_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.p2_wr_i_1_n_0 ),
        .Q(\comp_burst.p2_wr_reg_n_0 ),
        .R(scan_start));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_2 
       (.I0(p2_freq[15]),
        .I1(df_diff[18]),
        .O(\comp_burst.p3_freq[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_3 
       (.I0(p2_freq[14]),
        .I1(df_diff[17]),
        .O(\comp_burst.p3_freq[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_4 
       (.I0(p2_freq[13]),
        .I1(df_diff[16]),
        .O(\comp_burst.p3_freq[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_5 
       (.I0(p2_freq[12]),
        .I1(df_diff[15]),
        .O(\comp_burst.p3_freq[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_6 
       (.I0(p2_freq[11]),
        .I1(df_diff[14]),
        .O(\comp_burst.p3_freq[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_7 
       (.I0(p2_freq[10]),
        .I1(df_diff[13]),
        .O(\comp_burst.p3_freq[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_8 
       (.I0(p2_freq[9]),
        .I1(df_diff[12]),
        .O(\comp_burst.p3_freq[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[15]_i_9 
       (.I0(p2_freq[8]),
        .I1(df_diff[11]),
        .O(\comp_burst.p3_freq[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.p3_freq[19]_i_2 
       (.I0(df_diff[19]),
        .O(\comp_burst.p3_freq[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_burst.p3_freq[19]_i_3 
       (.I0(p2_freq[18]),
        .I1(p2_freq[19]),
        .O(\comp_burst.p3_freq[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_burst.p3_freq[19]_i_4 
       (.I0(p2_freq[17]),
        .I1(p2_freq[18]),
        .O(\comp_burst.p3_freq[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[19]_i_5 
       (.I0(df_diff[19]),
        .I1(p2_freq[17]),
        .O(\comp_burst.p3_freq[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[19]_i_6 
       (.I0(df_diff[19]),
        .I1(p2_freq[16]),
        .O(\comp_burst.p3_freq[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_2 
       (.I0(p2_freq[7]),
        .I1(df_diff[10]),
        .O(\comp_burst.p3_freq[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_3 
       (.I0(p2_freq[6]),
        .I1(df_diff[9]),
        .O(\comp_burst.p3_freq[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_4 
       (.I0(p2_freq[5]),
        .I1(df_diff[8]),
        .O(\comp_burst.p3_freq[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_5 
       (.I0(p2_freq[4]),
        .I1(df_diff[7]),
        .O(\comp_burst.p3_freq[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_6 
       (.I0(p2_freq[3]),
        .I1(df_diff[6]),
        .O(\comp_burst.p3_freq[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_7 
       (.I0(p2_freq[2]),
        .I1(df_diff[5]),
        .O(\comp_burst.p3_freq[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_8 
       (.I0(p2_freq[1]),
        .I1(df_diff[4]),
        .O(\comp_burst.p3_freq[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.p3_freq[7]_i_9 
       (.I0(p2_freq[0]),
        .I1(df_diff[3]),
        .O(\comp_burst.p3_freq[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[0] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [0]),
        .Q(p3_freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[10] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [10]),
        .Q(p3_freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[11] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [11]),
        .Q(p3_freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[12] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [12]),
        .Q(p3_freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[13] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [13]),
        .Q(p3_freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[14] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [14]),
        .Q(p3_freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[15] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [15]),
        .Q(p3_freq[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p3_freq_reg[15]_i_1 
       (.CI(\comp_burst.p3_freq_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p3_freq_reg[15]_i_1_n_0 ,\comp_burst.p3_freq_reg[15]_i_1_n_1 ,\comp_burst.p3_freq_reg[15]_i_1_n_2 ,\comp_burst.p3_freq_reg[15]_i_1_n_3 ,\comp_burst.p3_freq_reg[15]_i_1_n_4 ,\comp_burst.p3_freq_reg[15]_i_1_n_5 ,\comp_burst.p3_freq_reg[15]_i_1_n_6 ,\comp_burst.p3_freq_reg[15]_i_1_n_7 }),
        .DI(p2_freq[15:8]),
        .O(\comp_burst.p3_freq_reg0 [15:8]),
        .S({\comp_burst.p3_freq[15]_i_2_n_0 ,\comp_burst.p3_freq[15]_i_3_n_0 ,\comp_burst.p3_freq[15]_i_4_n_0 ,\comp_burst.p3_freq[15]_i_5_n_0 ,\comp_burst.p3_freq[15]_i_6_n_0 ,\comp_burst.p3_freq[15]_i_7_n_0 ,\comp_burst.p3_freq[15]_i_8_n_0 ,\comp_burst.p3_freq[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[16] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [16]),
        .Q(p3_freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[17] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [17]),
        .Q(p3_freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[18] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [18]),
        .Q(p3_freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[19] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [19]),
        .Q(p3_freq[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p3_freq_reg[19]_i_1 
       (.CI(\comp_burst.p3_freq_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.p3_freq_reg[19]_i_1_CO_UNCONNECTED [7:3],\comp_burst.p3_freq_reg[19]_i_1_n_5 ,\comp_burst.p3_freq_reg[19]_i_1_n_6 ,\comp_burst.p3_freq_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,p2_freq[17],\comp_burst.p3_freq[19]_i_2_n_0 ,df_diff[19]}),
        .O({\NLW_comp_burst.p3_freq_reg[19]_i_1_O_UNCONNECTED [7:4],\comp_burst.p3_freq_reg0 [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\comp_burst.p3_freq[19]_i_3_n_0 ,\comp_burst.p3_freq[19]_i_4_n_0 ,\comp_burst.p3_freq[19]_i_5_n_0 ,\comp_burst.p3_freq[19]_i_6_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[1] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [1]),
        .Q(p3_freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[2] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [2]),
        .Q(p3_freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[3] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [3]),
        .Q(p3_freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[4] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [4]),
        .Q(p3_freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[5] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [5]),
        .Q(p3_freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[6] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [6]),
        .Q(p3_freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[7] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [7]),
        .Q(p3_freq[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_burst.p3_freq_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.p3_freq_reg[7]_i_1_n_0 ,\comp_burst.p3_freq_reg[7]_i_1_n_1 ,\comp_burst.p3_freq_reg[7]_i_1_n_2 ,\comp_burst.p3_freq_reg[7]_i_1_n_3 ,\comp_burst.p3_freq_reg[7]_i_1_n_4 ,\comp_burst.p3_freq_reg[7]_i_1_n_5 ,\comp_burst.p3_freq_reg[7]_i_1_n_6 ,\comp_burst.p3_freq_reg[7]_i_1_n_7 }),
        .DI(p2_freq[7:0]),
        .O(\comp_burst.p3_freq_reg0 [7:0]),
        .S({\comp_burst.p3_freq[7]_i_2_n_0 ,\comp_burst.p3_freq[7]_i_3_n_0 ,\comp_burst.p3_freq[7]_i_4_n_0 ,\comp_burst.p3_freq[7]_i_5_n_0 ,\comp_burst.p3_freq[7]_i_6_n_0 ,\comp_burst.p3_freq[7]_i_7_n_0 ,\comp_burst.p3_freq[7]_i_8_n_0 ,\comp_burst.p3_freq[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[8] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [8]),
        .Q(p3_freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_burst.p3_freq_reg[9] 
       (.C(clk),
        .CE(df_done),
        .D(\comp_burst.p3_freq_reg0 [9]),
        .Q(p3_freq[9]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[0] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[0]),
        .Q(p3_max_pos[0]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[10] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[10]),
        .Q(p3_max_pos[10]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[1] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[1]),
        .Q(p3_max_pos[1]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[2] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[2]),
        .Q(p3_max_pos[2]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[3] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[3]),
        .Q(p3_max_pos[3]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[4] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[4]),
        .Q(p3_max_pos[4]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[5] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[5]),
        .Q(p3_max_pos[5]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[6] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[6]),
        .Q(p3_max_pos[6]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[7] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[7]),
        .Q(p3_max_pos[7]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[8] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[8]),
        .Q(p3_max_pos[8]),
        .R(1'b0));
  FDRE \comp_burst.p3_max_pos_reg[9] 
       (.C(clk),
        .CE(df_done),
        .D(p2_max_pos[9]),
        .Q(p3_max_pos[9]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[0] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[0]),
        .Q(p3_size[0]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[10] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[10]),
        .Q(p3_size[10]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[1] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[1]),
        .Q(p3_size[1]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[2] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[2]),
        .Q(p3_size[2]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[3] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[3]),
        .Q(p3_size[3]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[4] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[4]),
        .Q(p3_size[4]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[5] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[5]),
        .Q(p3_size[5]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[6] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[6]),
        .Q(p3_size[6]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[7] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[7]),
        .Q(p3_size[7]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[8] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[8]),
        .Q(p3_size[8]),
        .R(1'b0));
  FDRE \comp_burst.p3_size_reg[9] 
       (.C(clk),
        .CE(df_done),
        .D(p2_size[9]),
        .Q(p3_size[9]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[0] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[64]),
        .Q(phase_in[0]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[10] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[74]),
        .Q(phase_in[10]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[11] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[75]),
        .Q(phase_in[11]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[12] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[76]),
        .Q(phase_in[12]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[13] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[77]),
        .Q(phase_in[13]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[14] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[78]),
        .Q(phase_in[14]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[15] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[79]),
        .Q(phase_in[15]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[16] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[80]),
        .Q(phase_in[16]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[17] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[81]),
        .Q(phase_in[17]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[18] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[82]),
        .Q(phase_in[18]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[19] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[83]),
        .Q(phase_in[19]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[1] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[65]),
        .Q(phase_in[1]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[20] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[84]),
        .Q(phase_in[20]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[21] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[85]),
        .Q(phase_in[21]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[22] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[86]),
        .Q(phase_in[22]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[23] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[87]),
        .Q(phase_in[23]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[24] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[88]),
        .Q(phase_in[24]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[25] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[89]),
        .Q(phase_in[25]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[26] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[90]),
        .Q(phase_in[26]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[27] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[91]),
        .Q(phase_in[27]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[28] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[92]),
        .Q(phase_in[28]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[29] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[93]),
        .Q(phase_in[29]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[2] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[66]),
        .Q(phase_in[2]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[30] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[94]),
        .Q(phase_in[30]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[31] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[95]),
        .Q(phase_in[31]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[32] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[96]),
        .Q(phase_in[32]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[33] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[97]),
        .Q(phase_in[33]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[34] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[98]),
        .Q(phase_in[34]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[35] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[99]),
        .Q(phase_in[35]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[36] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[100]),
        .Q(phase_in[36]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[37] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[101]),
        .Q(phase_in[37]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[38] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[102]),
        .Q(phase_in[38]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[39] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[103]),
        .Q(phase_in[39]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[3] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[67]),
        .Q(phase_in[3]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[40] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[104]),
        .Q(phase_in[40]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[41] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[105]),
        .Q(phase_in[41]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[42] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[106]),
        .Q(phase_in[42]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[43] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[107]),
        .Q(phase_in[43]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[44] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[108]),
        .Q(phase_in[44]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[45] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[109]),
        .Q(phase_in[45]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[46] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[110]),
        .Q(phase_in[46]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[47] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[111]),
        .Q(phase_in[47]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[48] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[112]),
        .Q(phase_in[48]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[49] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[113]),
        .Q(phase_in[49]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[4] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[68]),
        .Q(phase_in[4]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[50] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[114]),
        .Q(phase_in[50]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[51] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[115]),
        .Q(phase_in[51]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[52] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[116]),
        .Q(phase_in[52]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[53] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[117]),
        .Q(phase_in[53]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[54] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[118]),
        .Q(phase_in[54]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[55] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[119]),
        .Q(phase_in[55]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[56] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[120]),
        .Q(phase_in[56]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[57] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[121]),
        .Q(phase_in[57]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[58] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[122]),
        .Q(phase_in[58]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[59] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[123]),
        .Q(phase_in[59]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[5] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[69]),
        .Q(phase_in[5]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[60] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[124]),
        .Q(phase_in[60]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[61] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[125]),
        .Q(phase_in[61]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[62] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[126]),
        .Q(phase_in[62]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[63] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[127]),
        .Q(phase_in[63]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[64] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[128]),
        .Q(phase_in[64]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[65] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[129]),
        .Q(phase_in[65]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[66] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[130]),
        .Q(phase_in[66]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[67] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[131]),
        .Q(phase_in[67]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[68] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[132]),
        .Q(phase_in[68]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[69] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[133]),
        .Q(phase_in[69]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[6] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[70]),
        .Q(phase_in[6]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[70] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[134]),
        .Q(phase_in[70]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[71] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[135]),
        .Q(phase_in[71]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[72] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[136]),
        .Q(phase_in[72]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[73] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[137]),
        .Q(phase_in[73]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[74] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[138]),
        .Q(phase_in[74]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[75] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[139]),
        .Q(phase_in[75]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[76] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[140]),
        .Q(phase_in[76]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[77] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[141]),
        .Q(phase_in[77]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[78] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[142]),
        .Q(phase_in[78]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[79] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[143]),
        .Q(phase_in[79]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[7] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[71]),
        .Q(phase_in[7]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[8] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[72]),
        .Q(phase_in[8]),
        .R(1'b0));
  FDRE \comp_burst.phase_in_reg[9] 
       (.C(clk),
        .CE(env_in0),
        .D(rt_data_out[73]),
        .Q(phase_in[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[0]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_79 ),
        .I1(\comp_burst.mem_phase_reg_0_n_99 ),
        .I2(phase_3[0]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[0]),
        .O(\comp_burst.phase_val[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[10]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_69 ),
        .I1(\comp_burst.mem_phase_reg_0_n_89 ),
        .I2(phase_3[10]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[10]),
        .O(\comp_burst.phase_val[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[11]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_68 ),
        .I1(\comp_burst.mem_phase_reg_0_n_88 ),
        .I2(phase_3[11]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[11]),
        .O(\comp_burst.phase_val[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[12]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_131 ),
        .I1(\comp_burst.mem_phase_reg_0_n_87 ),
        .I2(phase_3[12]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[12]),
        .O(\comp_burst.phase_val[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[13]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_130 ),
        .I1(\comp_burst.mem_phase_reg_0_n_86 ),
        .I2(phase_3[13]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[13]),
        .O(\comp_burst.phase_val[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[14]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_129 ),
        .I1(\comp_burst.mem_phase_reg_0_n_85 ),
        .I2(phase_3[14]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[14]),
        .O(\comp_burst.phase_val[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[15]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_128 ),
        .I1(\comp_burst.mem_phase_reg_0_n_84 ),
        .I2(phase_3[15]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[15]),
        .O(\comp_burst.phase_val[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[16]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_127 ),
        .I1(\comp_burst.mem_phase_reg_0_n_83 ),
        .I2(phase_3[16]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[16]),
        .O(\comp_burst.phase_val[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[17]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_126 ),
        .I1(\comp_burst.mem_phase_reg_0_n_82 ),
        .I2(phase_3[17]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[17]),
        .O(\comp_burst.phase_val[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[18]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_125 ),
        .I1(\comp_burst.mem_phase_reg_0_n_81 ),
        .I2(phase_3[18]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[18]),
        .O(\comp_burst.phase_val[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[19]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_124 ),
        .I1(\comp_burst.mem_phase_reg_0_n_80 ),
        .I2(phase_3[19]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[19]),
        .O(\comp_burst.phase_val[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[1]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_78 ),
        .I1(\comp_burst.mem_phase_reg_0_n_98 ),
        .I2(phase_3[1]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[1]),
        .O(\comp_burst.phase_val[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[2]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_77 ),
        .I1(\comp_burst.mem_phase_reg_0_n_97 ),
        .I2(phase_3[2]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[2]),
        .O(\comp_burst.phase_val[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[3]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_76 ),
        .I1(\comp_burst.mem_phase_reg_0_n_96 ),
        .I2(phase_3[3]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[3]),
        .O(\comp_burst.phase_val[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[4]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_75 ),
        .I1(\comp_burst.mem_phase_reg_0_n_95 ),
        .I2(phase_3[4]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[4]),
        .O(\comp_burst.phase_val[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[5]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_74 ),
        .I1(\comp_burst.mem_phase_reg_0_n_94 ),
        .I2(phase_3[5]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[5]),
        .O(\comp_burst.phase_val[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[6]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_73 ),
        .I1(\comp_burst.mem_phase_reg_0_n_93 ),
        .I2(phase_3[6]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[6]),
        .O(\comp_burst.phase_val[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[7]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_72 ),
        .I1(\comp_burst.mem_phase_reg_0_n_92 ),
        .I2(phase_3[7]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[7]),
        .O(\comp_burst.phase_val[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[8]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_71 ),
        .I1(\comp_burst.mem_phase_reg_0_n_91 ),
        .I2(phase_3[8]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[8]),
        .O(\comp_burst.phase_val[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_burst.phase_val[9]_i_1 
       (.I0(\comp_burst.mem_phase_reg_0_n_70 ),
        .I1(\comp_burst.mem_phase_reg_0_n_90 ),
        .I2(phase_3[9]),
        .I3(\comp_burst.env_up_adr_reg_n_0_[1] ),
        .I4(\comp_burst.env_up_adr_reg_n_0_[0] ),
        .I5(phase_2[9]),
        .O(\comp_burst.phase_val[9]_i_1_n_0 ));
  FDRE \comp_burst.phase_val_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[0]_i_1_n_0 ),
        .Q(phase_val[0]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[10]_i_1_n_0 ),
        .Q(phase_val[10]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[11]_i_1_n_0 ),
        .Q(phase_val[11]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[12]_i_1_n_0 ),
        .Q(phase_val[12]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[13]_i_1_n_0 ),
        .Q(phase_val[13]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[14]_i_1_n_0 ),
        .Q(phase_val[14]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[15]_i_1_n_0 ),
        .Q(phase_val[15]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[16]_i_1_n_0 ),
        .Q(phase_val[16]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[17]_i_1_n_0 ),
        .Q(phase_val[17]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[18]_i_1_n_0 ),
        .Q(phase_val[18]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[19]_i_1_n_0 ),
        .Q(phase_val[19]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[1]_i_1_n_0 ),
        .Q(phase_val[1]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[2]_i_1_n_0 ),
        .Q(phase_val[2]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[3]_i_1_n_0 ),
        .Q(phase_val[3]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[4]_i_1_n_0 ),
        .Q(phase_val[4]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[5]_i_1_n_0 ),
        .Q(phase_val[5]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[6]_i_1_n_0 ),
        .Q(phase_val[6]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[7]_i_1_n_0 ),
        .Q(phase_val[7]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[8]_i_1_n_0 ),
        .Q(phase_val[8]),
        .R(1'b0));
  FDRE \comp_burst.phase_val_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.phase_val[9]_i_1_n_0 ),
        .Q(phase_val[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_10 
       (.I0(in_freq[15]),
        .I1(pred_phase[15]),
        .I2(scan_start),
        .I3(phase_val[13]),
        .O(\comp_burst.pred_phase[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_11 
       (.I0(in_freq[14]),
        .I1(pred_phase[14]),
        .I2(scan_start),
        .I3(phase_val[12]),
        .O(\comp_burst.pred_phase[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_12 
       (.I0(in_freq[13]),
        .I1(pred_phase[13]),
        .I2(scan_start),
        .I3(phase_val[11]),
        .O(\comp_burst.pred_phase[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_13 
       (.I0(in_freq[12]),
        .I1(pred_phase[12]),
        .I2(scan_start),
        .I3(phase_val[10]),
        .O(\comp_burst.pred_phase[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_14 
       (.I0(in_freq[11]),
        .I1(pred_phase[11]),
        .I2(scan_start),
        .I3(phase_val[9]),
        .O(\comp_burst.pred_phase[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_15 
       (.I0(in_freq[10]),
        .I1(pred_phase[10]),
        .I2(scan_start),
        .I3(phase_val[8]),
        .O(\comp_burst.pred_phase[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_16 
       (.I0(in_freq[9]),
        .I1(pred_phase[9]),
        .I2(scan_start),
        .I3(phase_val[7]),
        .O(\comp_burst.pred_phase[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[15]_i_17 
       (.I0(in_freq[8]),
        .I1(pred_phase[8]),
        .I2(scan_start),
        .I3(phase_val[6]),
        .O(\comp_burst.pred_phase[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_2 
       (.I0(in_freq[15]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_3 
       (.I0(in_freq[14]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_4 
       (.I0(in_freq[13]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_5 
       (.I0(in_freq[12]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_6 
       (.I0(in_freq[11]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_7 
       (.I0(in_freq[10]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_8 
       (.I0(in_freq[9]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[15]_i_9 
       (.I0(in_freq[8]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[21]_i_10 
       (.I0(in_freq[17]),
        .I1(pred_phase[17]),
        .I2(scan_start),
        .I3(phase_val[15]),
        .O(\comp_burst.pred_phase[21]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[21]_i_11 
       (.I0(in_freq[16]),
        .I1(pred_phase[16]),
        .I2(scan_start),
        .I3(phase_val[14]),
        .O(\comp_burst.pred_phase[21]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[21]_i_2 
       (.I0(in_freq[19]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[21]_i_3 
       (.I0(in_freq[18]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[21]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[21]_i_4 
       (.I0(in_freq[17]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[21]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[21]_i_5 
       (.I0(in_freq[16]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[21]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.pred_phase[21]_i_6 
       (.I0(phase_val[19]),
        .I1(scan_start),
        .I2(pred_phase[21]),
        .O(\comp_burst.pred_phase[21]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_burst.pred_phase[21]_i_7 
       (.I0(phase_val[18]),
        .I1(scan_start),
        .I2(pred_phase[20]),
        .O(\comp_burst.pred_phase[21]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[21]_i_8 
       (.I0(in_freq[19]),
        .I1(pred_phase[19]),
        .I2(scan_start),
        .I3(phase_val[17]),
        .O(\comp_burst.pred_phase[21]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[21]_i_9 
       (.I0(in_freq[18]),
        .I1(pred_phase[18]),
        .I2(scan_start),
        .I3(phase_val[16]),
        .O(\comp_burst.pred_phase[21]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[7]_i_10 
       (.I0(in_freq[7]),
        .I1(pred_phase[7]),
        .I2(scan_start),
        .I3(phase_val[5]),
        .O(\comp_burst.pred_phase[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[7]_i_11 
       (.I0(in_freq[6]),
        .I1(pred_phase[6]),
        .I2(scan_start),
        .I3(phase_val[4]),
        .O(\comp_burst.pred_phase[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[7]_i_12 
       (.I0(in_freq[5]),
        .I1(pred_phase[5]),
        .I2(scan_start),
        .I3(phase_val[3]),
        .O(\comp_burst.pred_phase[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[7]_i_13 
       (.I0(in_freq[4]),
        .I1(pred_phase[4]),
        .I2(scan_start),
        .I3(phase_val[2]),
        .O(\comp_burst.pred_phase[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[7]_i_14 
       (.I0(in_freq[3]),
        .I1(pred_phase[3]),
        .I2(scan_start),
        .I3(phase_val[1]),
        .O(\comp_burst.pred_phase[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \comp_burst.pred_phase[7]_i_15 
       (.I0(in_freq[2]),
        .I1(pred_phase[2]),
        .I2(scan_start),
        .I3(phase_val[0]),
        .O(\comp_burst.pred_phase[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \comp_burst.pred_phase[7]_i_16 
       (.I0(in_freq[1]),
        .I1(scan_start),
        .I2(pred_phase[1]),
        .O(\comp_burst.pred_phase[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \comp_burst.pred_phase[7]_i_17 
       (.I0(in_freq[0]),
        .I1(scan_start),
        .I2(pred_phase[0]),
        .O(\comp_burst.pred_phase[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_2 
       (.I0(in_freq[7]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_3 
       (.I0(in_freq[6]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_4 
       (.I0(in_freq[5]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_5 
       (.I0(in_freq[4]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_6 
       (.I0(in_freq[3]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_7 
       (.I0(in_freq[2]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_8 
       (.I0(in_freq[1]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_burst.pred_phase[7]_i_9 
       (.I0(in_freq[0]),
        .I1(scan_start),
        .O(\comp_burst.pred_phase[7]_i_9_n_0 ));
  FDRE \comp_burst.pred_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_15 ),
        .Q(pred_phase[0]),
        .R(scan_start));
  FDRE \comp_burst.pred_phase_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_13 ),
        .Q(pred_phase[10]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_12 ),
        .Q(pred_phase[11]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_11 ),
        .Q(pred_phase[12]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_10 ),
        .Q(pred_phase[13]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_9 ),
        .Q(pred_phase[14]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_8 ),
        .Q(pred_phase[15]),
        .R(1'b0));
  CARRY8 \comp_burst.pred_phase_reg[15]_i_1 
       (.CI(\comp_burst.pred_phase_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_burst.pred_phase_reg[15]_i_1_n_0 ,\comp_burst.pred_phase_reg[15]_i_1_n_1 ,\comp_burst.pred_phase_reg[15]_i_1_n_2 ,\comp_burst.pred_phase_reg[15]_i_1_n_3 ,\comp_burst.pred_phase_reg[15]_i_1_n_4 ,\comp_burst.pred_phase_reg[15]_i_1_n_5 ,\comp_burst.pred_phase_reg[15]_i_1_n_6 ,\comp_burst.pred_phase_reg[15]_i_1_n_7 }),
        .DI({\comp_burst.pred_phase[15]_i_2_n_0 ,\comp_burst.pred_phase[15]_i_3_n_0 ,\comp_burst.pred_phase[15]_i_4_n_0 ,\comp_burst.pred_phase[15]_i_5_n_0 ,\comp_burst.pred_phase[15]_i_6_n_0 ,\comp_burst.pred_phase[15]_i_7_n_0 ,\comp_burst.pred_phase[15]_i_8_n_0 ,\comp_burst.pred_phase[15]_i_9_n_0 }),
        .O({\comp_burst.pred_phase_reg[15]_i_1_n_8 ,\comp_burst.pred_phase_reg[15]_i_1_n_9 ,\comp_burst.pred_phase_reg[15]_i_1_n_10 ,\comp_burst.pred_phase_reg[15]_i_1_n_11 ,\comp_burst.pred_phase_reg[15]_i_1_n_12 ,\comp_burst.pred_phase_reg[15]_i_1_n_13 ,\comp_burst.pred_phase_reg[15]_i_1_n_14 ,\comp_burst.pred_phase_reg[15]_i_1_n_15 }),
        .S({\comp_burst.pred_phase[15]_i_10_n_0 ,\comp_burst.pred_phase[15]_i_11_n_0 ,\comp_burst.pred_phase[15]_i_12_n_0 ,\comp_burst.pred_phase[15]_i_13_n_0 ,\comp_burst.pred_phase[15]_i_14_n_0 ,\comp_burst.pred_phase[15]_i_15_n_0 ,\comp_burst.pred_phase[15]_i_16_n_0 ,\comp_burst.pred_phase[15]_i_17_n_0 }));
  FDRE \comp_burst.pred_phase_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[21]_i_1_n_15 ),
        .Q(pred_phase[16]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[21]_i_1_n_14 ),
        .Q(pred_phase[17]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[21]_i_1_n_13 ),
        .Q(pred_phase[18]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[21]_i_1_n_12 ),
        .Q(pred_phase[19]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_14 ),
        .Q(pred_phase[1]),
        .R(scan_start));
  FDRE \comp_burst.pred_phase_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[21]_i_1_n_11 ),
        .Q(pred_phase[20]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[21]_i_1_n_10 ),
        .Q(pred_phase[21]),
        .R(1'b0));
  CARRY8 \comp_burst.pred_phase_reg[21]_i_1 
       (.CI(\comp_burst.pred_phase_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_burst.pred_phase_reg[21]_i_1_CO_UNCONNECTED [7:5],\comp_burst.pred_phase_reg[21]_i_1_n_3 ,\comp_burst.pred_phase_reg[21]_i_1_n_4 ,\comp_burst.pred_phase_reg[21]_i_1_n_5 ,\comp_burst.pred_phase_reg[21]_i_1_n_6 ,\comp_burst.pred_phase_reg[21]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\comp_burst.pred_phase[21]_i_2_n_0 ,\comp_burst.pred_phase[21]_i_3_n_0 ,\comp_burst.pred_phase[21]_i_4_n_0 ,\comp_burst.pred_phase[21]_i_5_n_0 }),
        .O({\NLW_comp_burst.pred_phase_reg[21]_i_1_O_UNCONNECTED [7:6],\comp_burst.pred_phase_reg[21]_i_1_n_10 ,\comp_burst.pred_phase_reg[21]_i_1_n_11 ,\comp_burst.pred_phase_reg[21]_i_1_n_12 ,\comp_burst.pred_phase_reg[21]_i_1_n_13 ,\comp_burst.pred_phase_reg[21]_i_1_n_14 ,\comp_burst.pred_phase_reg[21]_i_1_n_15 }),
        .S({1'b0,1'b0,\comp_burst.pred_phase[21]_i_6_n_0 ,\comp_burst.pred_phase[21]_i_7_n_0 ,\comp_burst.pred_phase[21]_i_8_n_0 ,\comp_burst.pred_phase[21]_i_9_n_0 ,\comp_burst.pred_phase[21]_i_10_n_0 ,\comp_burst.pred_phase[21]_i_11_n_0 }));
  FDRE \comp_burst.pred_phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_13 ),
        .Q(pred_phase[2]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_12 ),
        .Q(pred_phase[3]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_11 ),
        .Q(pred_phase[4]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_10 ),
        .Q(pred_phase[5]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_9 ),
        .Q(pred_phase[6]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[7]_i_1_n_8 ),
        .Q(pred_phase[7]),
        .R(1'b0));
  CARRY8 \comp_burst.pred_phase_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_burst.pred_phase_reg[7]_i_1_n_0 ,\comp_burst.pred_phase_reg[7]_i_1_n_1 ,\comp_burst.pred_phase_reg[7]_i_1_n_2 ,\comp_burst.pred_phase_reg[7]_i_1_n_3 ,\comp_burst.pred_phase_reg[7]_i_1_n_4 ,\comp_burst.pred_phase_reg[7]_i_1_n_5 ,\comp_burst.pred_phase_reg[7]_i_1_n_6 ,\comp_burst.pred_phase_reg[7]_i_1_n_7 }),
        .DI({\comp_burst.pred_phase[7]_i_2_n_0 ,\comp_burst.pred_phase[7]_i_3_n_0 ,\comp_burst.pred_phase[7]_i_4_n_0 ,\comp_burst.pred_phase[7]_i_5_n_0 ,\comp_burst.pred_phase[7]_i_6_n_0 ,\comp_burst.pred_phase[7]_i_7_n_0 ,\comp_burst.pred_phase[7]_i_8_n_0 ,\comp_burst.pred_phase[7]_i_9_n_0 }),
        .O({\comp_burst.pred_phase_reg[7]_i_1_n_8 ,\comp_burst.pred_phase_reg[7]_i_1_n_9 ,\comp_burst.pred_phase_reg[7]_i_1_n_10 ,\comp_burst.pred_phase_reg[7]_i_1_n_11 ,\comp_burst.pred_phase_reg[7]_i_1_n_12 ,\comp_burst.pred_phase_reg[7]_i_1_n_13 ,\comp_burst.pred_phase_reg[7]_i_1_n_14 ,\comp_burst.pred_phase_reg[7]_i_1_n_15 }),
        .S({\comp_burst.pred_phase[7]_i_10_n_0 ,\comp_burst.pred_phase[7]_i_11_n_0 ,\comp_burst.pred_phase[7]_i_12_n_0 ,\comp_burst.pred_phase[7]_i_13_n_0 ,\comp_burst.pred_phase[7]_i_14_n_0 ,\comp_burst.pred_phase[7]_i_15_n_0 ,\comp_burst.pred_phase[7]_i_16_n_0 ,\comp_burst.pred_phase[7]_i_17_n_0 }));
  FDRE \comp_burst.pred_phase_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_15 ),
        .Q(pred_phase[8]),
        .R(1'b0));
  FDRE \comp_burst.pred_phase_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.pred_phase_reg[15]_i_1_n_14 ),
        .Q(pred_phase[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \comp_burst.rt_data_in[143]_i_1 
       (.I0(rt_wr),
        .I1(rt_enable),
        .O(rt_data_in1));
  FDRE \comp_burst.rt_data_in_reg[0] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[0]),
        .Q(rt_data_in[0]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[100] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[16]),
        .Q(rt_data_in[100]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[101] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[17]),
        .Q(rt_data_in[101]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[102] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[18]),
        .Q(rt_data_in[102]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[103] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[19]),
        .Q(rt_data_in[103]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[104] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[0]),
        .Q(rt_data_in[104]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[105] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[1]),
        .Q(rt_data_in[105]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[106] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[2]),
        .Q(rt_data_in[106]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[107] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[3]),
        .Q(rt_data_in[107]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[108] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[4]),
        .Q(rt_data_in[108]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[109] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[5]),
        .Q(rt_data_in[109]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[10] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[10]),
        .Q(rt_data_in[10]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[110] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[6]),
        .Q(rt_data_in[110]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[111] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[7]),
        .Q(rt_data_in[111]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[112] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[8]),
        .Q(rt_data_in[112]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[113] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[9]),
        .Q(rt_data_in[113]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[114] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[10]),
        .Q(rt_data_in[114]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[115] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[11]),
        .Q(rt_data_in[115]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[116] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[12]),
        .Q(rt_data_in[116]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[117] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[13]),
        .Q(rt_data_in[117]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[118] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[14]),
        .Q(rt_data_in[118]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[119] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[15]),
        .Q(rt_data_in[119]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[11] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[11]),
        .Q(rt_data_in[11]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[120] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[16]),
        .Q(rt_data_in[120]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[121] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[17]),
        .Q(rt_data_in[121]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[122] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[18]),
        .Q(rt_data_in[122]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[123] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[19]),
        .Q(rt_data_in[123]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[124] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[0]),
        .Q(rt_data_in[124]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[125] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[1]),
        .Q(rt_data_in[125]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[126] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[2]),
        .Q(rt_data_in[126]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[127] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[3]),
        .Q(rt_data_in[127]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[128] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[4]),
        .Q(rt_data_in[128]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[129] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[5]),
        .Q(rt_data_in[129]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[12] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[12]),
        .Q(rt_data_in[12]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[130] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[6]),
        .Q(rt_data_in[130]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[131] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[7]),
        .Q(rt_data_in[131]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[132] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[8]),
        .Q(rt_data_in[132]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[133] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[9]),
        .Q(rt_data_in[133]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[134] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[10]),
        .Q(rt_data_in[134]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[135] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[11]),
        .Q(rt_data_in[135]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[136] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[12]),
        .Q(rt_data_in[136]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[137] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[13]),
        .Q(rt_data_in[137]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[138] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[14]),
        .Q(rt_data_in[138]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[139] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[15]),
        .Q(rt_data_in[139]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[13] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[13]),
        .Q(rt_data_in[13]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[140] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[16]),
        .Q(rt_data_in[140]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[141] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[17]),
        .Q(rt_data_in[141]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[142] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[18]),
        .Q(rt_data_in[142]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[143] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[19]),
        .Q(rt_data_in[143]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[14] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[14]),
        .Q(rt_data_in[14]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[15] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[15]),
        .Q(rt_data_in[15]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[16] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[0]),
        .Q(rt_data_in[16]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[17] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[1]),
        .Q(rt_data_in[17]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[18] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[2]),
        .Q(rt_data_in[18]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[19] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[3]),
        .Q(rt_data_in[19]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[1] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[1]),
        .Q(rt_data_in[1]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[20] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[4]),
        .Q(rt_data_in[20]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[21] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[5]),
        .Q(rt_data_in[21]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[22] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[6]),
        .Q(rt_data_in[22]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[23] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[7]),
        .Q(rt_data_in[23]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[24] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[8]),
        .Q(rt_data_in[24]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[25] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[9]),
        .Q(rt_data_in[25]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[26] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[10]),
        .Q(rt_data_in[26]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[27] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[11]),
        .Q(rt_data_in[27]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[28] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[12]),
        .Q(rt_data_in[28]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[29] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[13]),
        .Q(rt_data_in[29]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[2] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[2]),
        .Q(rt_data_in[2]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[30] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[14]),
        .Q(rt_data_in[30]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[31] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_1[15]),
        .Q(rt_data_in[31]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[32] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[0]),
        .Q(rt_data_in[32]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[33] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[1]),
        .Q(rt_data_in[33]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[34] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[2]),
        .Q(rt_data_in[34]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[35] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[3]),
        .Q(rt_data_in[35]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[36] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[4]),
        .Q(rt_data_in[36]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[37] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[5]),
        .Q(rt_data_in[37]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[38] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[6]),
        .Q(rt_data_in[38]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[39] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[7]),
        .Q(rt_data_in[39]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[3] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[3]),
        .Q(rt_data_in[3]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[40] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[8]),
        .Q(rt_data_in[40]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[41] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[9]),
        .Q(rt_data_in[41]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[42] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[10]),
        .Q(rt_data_in[42]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[43] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[11]),
        .Q(rt_data_in[43]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[44] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[12]),
        .Q(rt_data_in[44]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[45] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[13]),
        .Q(rt_data_in[45]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[46] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[14]),
        .Q(rt_data_in[46]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[47] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_2[15]),
        .Q(rt_data_in[47]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[48] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[0]),
        .Q(rt_data_in[48]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[49] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[1]),
        .Q(rt_data_in[49]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[4] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[4]),
        .Q(rt_data_in[4]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[50] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[2]),
        .Q(rt_data_in[50]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[51] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[3]),
        .Q(rt_data_in[51]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[52] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[4]),
        .Q(rt_data_in[52]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[53] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[5]),
        .Q(rt_data_in[53]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[54] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[6]),
        .Q(rt_data_in[54]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[55] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[7]),
        .Q(rt_data_in[55]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[56] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[8]),
        .Q(rt_data_in[56]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[57] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[9]),
        .Q(rt_data_in[57]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[58] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[10]),
        .Q(rt_data_in[58]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[59] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[11]),
        .Q(rt_data_in[59]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[5] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[5]),
        .Q(rt_data_in[5]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[60] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[12]),
        .Q(rt_data_in[60]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[61] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[13]),
        .Q(rt_data_in[61]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[62] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[14]),
        .Q(rt_data_in[62]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[63] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_3[15]),
        .Q(rt_data_in[63]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[64] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[0]),
        .Q(rt_data_in[64]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[65] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[1]),
        .Q(rt_data_in[65]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[66] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[2]),
        .Q(rt_data_in[66]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[67] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[3]),
        .Q(rt_data_in[67]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[68] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[4]),
        .Q(rt_data_in[68]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[69] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[5]),
        .Q(rt_data_in[69]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[6] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[6]),
        .Q(rt_data_in[6]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[70] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[6]),
        .Q(rt_data_in[70]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[71] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[7]),
        .Q(rt_data_in[71]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[72] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[8]),
        .Q(rt_data_in[72]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[73] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[9]),
        .Q(rt_data_in[73]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[74] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[10]),
        .Q(rt_data_in[74]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[75] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[11]),
        .Q(rt_data_in[75]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[76] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[12]),
        .Q(rt_data_in[76]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[77] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[13]),
        .Q(rt_data_in[77]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[78] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[14]),
        .Q(rt_data_in[78]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[79] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[15]),
        .Q(rt_data_in[79]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[7] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[7]),
        .Q(rt_data_in[7]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[80] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[16]),
        .Q(rt_data_in[80]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[81] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[17]),
        .Q(rt_data_in[81]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[82] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[18]),
        .Q(rt_data_in[82]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[83] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[19]),
        .Q(rt_data_in[83]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[84] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[0]),
        .Q(rt_data_in[84]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[85] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[1]),
        .Q(rt_data_in[85]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[86] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[2]),
        .Q(rt_data_in[86]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[87] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[3]),
        .Q(rt_data_in[87]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[88] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[4]),
        .Q(rt_data_in[88]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[89] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[5]),
        .Q(rt_data_in[89]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[8] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[8]),
        .Q(rt_data_in[8]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[90] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[6]),
        .Q(rt_data_in[90]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[91] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[7]),
        .Q(rt_data_in[91]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[92] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[8]),
        .Q(rt_data_in[92]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[93] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[9]),
        .Q(rt_data_in[93]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[94] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[10]),
        .Q(rt_data_in[94]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[95] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[11]),
        .Q(rt_data_in[95]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[96] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[12]),
        .Q(rt_data_in[96]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[97] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[13]),
        .Q(rt_data_in[97]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[98] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[14]),
        .Q(rt_data_in[98]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[99] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_phase_0[15]),
        .Q(rt_data_in[99]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_in_reg[9] 
       (.C(rt_clk),
        .CE(rt_data_in1),
        .D(rt_env_0[9]),
        .Q(rt_data_in[9]),
        .R(1'b0));
  FDRE \comp_burst.rt_data_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(env_in0),
        .Q(rt_data_rd),
        .R(1'b0));
  FDRE \comp_burst.rt_data_wr_reg 
       (.C(rt_clk),
        .CE(1'b1),
        .D(rt_data_in1),
        .Q(rt_data_wr),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \comp_burst.rt_meta_in[97]_i_1 
       (.I0(rt_start),
        .I1(rt_enable),
        .O(rt_meta_in1));
  FDRE \comp_burst.rt_meta_in_reg[0] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[0]),
        .Q(rt_meta_in[0]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[10] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[10]),
        .Q(rt_meta_in[10]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[11] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[11]),
        .Q(rt_meta_in[11]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[12] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[12]),
        .Q(rt_meta_in[12]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[13] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[13]),
        .Q(rt_meta_in[13]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[14] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[14]),
        .Q(rt_meta_in[14]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[15] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[15]),
        .Q(rt_meta_in[15]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[16] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[16]),
        .Q(rt_meta_in[16]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[17] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[17]),
        .Q(rt_meta_in[17]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[18] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[18]),
        .Q(rt_meta_in[18]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[19] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[19]),
        .Q(rt_meta_in[19]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[1] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[1]),
        .Q(rt_meta_in[1]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[20] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[20]),
        .Q(rt_meta_in[20]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[21] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[21]),
        .Q(rt_meta_in[21]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[22] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[22]),
        .Q(rt_meta_in[22]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[23] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[23]),
        .Q(rt_meta_in[23]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[24] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[24]),
        .Q(rt_meta_in[24]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[25] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[25]),
        .Q(rt_meta_in[25]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[26] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[26]),
        .Q(rt_meta_in[26]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[27] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[27]),
        .Q(rt_meta_in[27]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[28] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[28]),
        .Q(rt_meta_in[28]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[29] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[29]),
        .Q(rt_meta_in[29]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[2] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[2]),
        .Q(rt_meta_in[2]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[30] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[30]),
        .Q(rt_meta_in[30]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[31] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[31]),
        .Q(rt_meta_in[31]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[32] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[32]),
        .Q(rt_meta_in[32]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[33] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[33]),
        .Q(rt_meta_in[33]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[34] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[34]),
        .Q(rt_meta_in[34]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[35] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[35]),
        .Q(rt_meta_in[35]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[36] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[36]),
        .Q(rt_meta_in[36]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[37] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[37]),
        .Q(rt_meta_in[37]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[38] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[38]),
        .Q(rt_meta_in[38]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[39] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[39]),
        .Q(rt_meta_in[39]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[3] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[3]),
        .Q(rt_meta_in[3]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[40] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[40]),
        .Q(rt_meta_in[40]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[41] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[41]),
        .Q(rt_meta_in[41]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[42] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[42]),
        .Q(rt_meta_in[42]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[43] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[43]),
        .Q(rt_meta_in[43]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[44] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[44]),
        .Q(rt_meta_in[44]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[45] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[45]),
        .Q(rt_meta_in[45]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[46] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[46]),
        .Q(rt_meta_in[46]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[47] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[47]),
        .Q(rt_meta_in[47]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[48] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[48]),
        .Q(rt_meta_in[48]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[49] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[49]),
        .Q(rt_meta_in[49]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[4] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[4]),
        .Q(rt_meta_in[4]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[50] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[50]),
        .Q(rt_meta_in[50]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[51] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[51]),
        .Q(rt_meta_in[51]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[52] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[52]),
        .Q(rt_meta_in[52]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[53] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[53]),
        .Q(rt_meta_in[53]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[54] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[54]),
        .Q(rt_meta_in[54]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[55] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[55]),
        .Q(rt_meta_in[55]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[56] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[56]),
        .Q(rt_meta_in[56]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[57] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[57]),
        .Q(rt_meta_in[57]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[58] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[58]),
        .Q(rt_meta_in[58]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[59] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[59]),
        .Q(rt_meta_in[59]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[5] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[5]),
        .Q(rt_meta_in[5]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[60] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[60]),
        .Q(rt_meta_in[60]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[61] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[61]),
        .Q(rt_meta_in[61]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[62] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[0]),
        .Q(rt_meta_in[62]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[63] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[1]),
        .Q(rt_meta_in[63]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[64] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[2]),
        .Q(rt_meta_in[64]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[65] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[3]),
        .Q(rt_meta_in[65]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[66] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[4]),
        .Q(rt_meta_in[66]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[67] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[5]),
        .Q(rt_meta_in[67]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[68] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[6]),
        .Q(rt_meta_in[68]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[69] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[7]),
        .Q(rt_meta_in[69]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[6] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[6]),
        .Q(rt_meta_in[6]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[70] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[8]),
        .Q(rt_meta_in[70]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[71] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[9]),
        .Q(rt_meta_in[71]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[72] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[10]),
        .Q(rt_meta_in[72]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[73] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[11]),
        .Q(rt_meta_in[73]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[74] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[12]),
        .Q(rt_meta_in[74]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[75] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[13]),
        .Q(rt_meta_in[75]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[76] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[14]),
        .Q(rt_meta_in[76]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[77] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[15]),
        .Q(rt_meta_in[77]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[78] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[16]),
        .Q(rt_meta_in[78]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[79] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[17]),
        .Q(rt_meta_in[79]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[7] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[7]),
        .Q(rt_meta_in[7]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[80] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[18]),
        .Q(rt_meta_in[80]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[81] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_freq[19]),
        .Q(rt_meta_in[81]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[82] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[0]),
        .Q(rt_meta_in[82]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[83] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[1]),
        .Q(rt_meta_in[83]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[84] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[2]),
        .Q(rt_meta_in[84]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[85] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[3]),
        .Q(rt_meta_in[85]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[86] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[4]),
        .Q(rt_meta_in[86]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[87] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[5]),
        .Q(rt_meta_in[87]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[88] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[6]),
        .Q(rt_meta_in[88]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[89] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[7]),
        .Q(rt_meta_in[89]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[8] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[8]),
        .Q(rt_meta_in[8]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[90] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[8]),
        .Q(rt_meta_in[90]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[91] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[9]),
        .Q(rt_meta_in[91]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[92] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[10]),
        .Q(rt_meta_in[92]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[93] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[11]),
        .Q(rt_meta_in[93]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[94] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[12]),
        .Q(rt_meta_in[94]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[95] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[13]),
        .Q(rt_meta_in[95]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[96] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[14]),
        .Q(rt_meta_in[96]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[97] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_angle[15]),
        .Q(rt_meta_in[97]),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_in_reg[9] 
       (.C(rt_clk),
        .CE(rt_meta_in1),
        .D(rt_sample[9]),
        .Q(rt_meta_in[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \comp_burst.rt_meta_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.burst_i_1_n_0 ),
        .Q(rt_meta_rd),
        .R(1'b0));
  FDRE \comp_burst.rt_meta_wr_reg 
       (.C(rt_clk),
        .CE(1'b1),
        .D(rt_meta_in1),
        .Q(rt_meta_wr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4C)) 
    \comp_burst.run_env_end_i_1 
       (.I0(\comp_burst.env_end_ind_reg[10]_i_2_n_0 ),
        .I1(run_env_end),
        .I2(comp_env),
        .O(\comp_burst.run_env_end_i_1_n_0 ));
  FDSE \comp_burst.run_env_end_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.run_env_end_i_1_n_0 ),
        .Q(run_env_end),
        .S(scan_start));
  LUT4 #(
    .INIT(16'h0CCC)) 
    \comp_burst.run_env_i_1 
       (.I0(reset),
        .I1(\comp_burst.run_env_reg_n_0 ),
        .I2(\comp_burst.run_env_i_2_n_0 ),
        .I3(\comp_burst.run_env_i_3_n_0 ),
        .O(\comp_burst.run_env_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \comp_burst.run_env_i_2 
       (.I0(env_down_ind[2]),
        .I1(env_down_ind[3]),
        .I2(env_down_ind[1]),
        .I3(env_down_ind[0]),
        .I4(env_down_ind[4]),
        .I5(\comp_burst.run_env_reg_n_0 ),
        .O(\comp_burst.run_env_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_burst.run_env_i_3 
       (.I0(env_down_ind[7]),
        .I1(env_down_ind[8]),
        .I2(env_down_ind[5]),
        .I3(env_down_ind[6]),
        .I4(env_down_ind[10]),
        .I5(env_down_ind[9]),
        .O(\comp_burst.run_env_i_3_n_0 ));
  FDSE \comp_burst.run_env_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.run_env_i_1_n_0 ),
        .Q(\comp_burst.run_env_reg_n_0 ),
        .S(scan_start));
  LUT3 #(
    .INIT(8'h4C)) 
    \comp_burst.run_env_start_i_1 
       (.I0(comp_env),
        .I1(run_env_start),
        .I2(\comp_burst.env_start_ind_reg[10]_i_2_n_0 ),
        .O(\comp_burst.run_env_start_i_1_n_0 ));
  FDSE \comp_burst.run_env_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.run_env_start_i_1_n_0 ),
        .Q(run_env_start),
        .S(scan_start));
  LUT3 #(
    .INIT(8'h02)) 
    \comp_burst.scan_start_i_1 
       (.I0(\comp_burst.scan_start_i_2_n_0 ),
        .I1(reset),
        .I2(mem_wr),
        .O(\comp_burst.scan_start_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_burst.scan_start_i_2 
       (.I0(\comp_burst.curr_size[8]_i_3_n_0 ),
        .I1(wr_ptr[5]),
        .I2(wr_ptr[6]),
        .I3(wr_ptr[3]),
        .I4(wr_ptr[4]),
        .O(\comp_burst.scan_start_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_burst.scan_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.scan_start_i_1_n_0 ),
        .Q(scan_start),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.wr_ptr[0]_i_1 
       (.I0(wr_ptr[0]),
        .O(\comp_burst.wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp_burst.wr_ptr[1]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\comp_burst.wr_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \comp_burst.wr_ptr[2]_i_1 
       (.I0(wr_ptr[1]),
        .I1(wr_ptr[0]),
        .I2(wr_ptr[2]),
        .O(\comp_burst.wr_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_burst.wr_ptr[3]_i_1 
       (.I0(wr_ptr[2]),
        .I1(wr_ptr[0]),
        .I2(wr_ptr[1]),
        .I3(wr_ptr[3]),
        .O(\comp_burst.wr_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp_burst.wr_ptr[4]_i_1 
       (.I0(wr_ptr[3]),
        .I1(wr_ptr[1]),
        .I2(wr_ptr[0]),
        .I3(wr_ptr[2]),
        .I4(wr_ptr[4]),
        .O(\comp_burst.wr_ptr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \comp_burst.wr_ptr[5]_i_1 
       (.I0(wr_ptr[4]),
        .I1(wr_ptr[2]),
        .I2(wr_ptr[0]),
        .I3(wr_ptr[1]),
        .I4(wr_ptr[3]),
        .I5(wr_ptr[5]),
        .O(\comp_burst.wr_ptr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_burst.wr_ptr[6]_i_1 
       (.I0(\comp_burst.wr_ptr[8]_i_3_n_0 ),
        .I1(wr_ptr[6]),
        .O(\comp_burst.wr_ptr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \comp_burst.wr_ptr[7]_i_1 
       (.I0(wr_ptr[6]),
        .I1(\comp_burst.wr_ptr[8]_i_3_n_0 ),
        .I2(wr_ptr[7]),
        .O(\comp_burst.wr_ptr[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_burst.wr_ptr[8]_i_1 
       (.I0(mem_wr),
        .O(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \comp_burst.wr_ptr[8]_i_2 
       (.I0(wr_ptr[7]),
        .I1(\comp_burst.wr_ptr[8]_i_3_n_0 ),
        .I2(wr_ptr[6]),
        .I3(wr_ptr[8]),
        .O(\comp_burst.wr_ptr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \comp_burst.wr_ptr[8]_i_3 
       (.I0(wr_ptr[4]),
        .I1(wr_ptr[2]),
        .I2(wr_ptr[0]),
        .I3(wr_ptr[1]),
        .I4(wr_ptr[3]),
        .I5(wr_ptr[5]),
        .O(\comp_burst.wr_ptr[8]_i_3_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr[0]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[1]_i_1_n_0 ),
        .Q(wr_ptr[1]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[2]_i_1_n_0 ),
        .Q(wr_ptr[2]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[3]_i_1_n_0 ),
        .Q(wr_ptr[3]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[4]_i_1_n_0 ),
        .Q(wr_ptr[4]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[5]_i_1_n_0 ),
        .Q(wr_ptr[5]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[6]_i_1_n_0 ),
        .Q(wr_ptr[6]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[7]_i_1_n_0 ),
        .Q(wr_ptr[7]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  FDRE \comp_burst.wr_ptr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_burst.wr_ptr[8]_i_2_n_0 ),
        .Q(wr_ptr[8]),
        .R(\comp_burst.wr_ptr[8]_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_burst_0_0_fifo_config fifo_config_i
       (.din({config_data,config_adr}),
        .dout({NLW_fifo_config_i_dout_UNCONNECTED[39:24],config_data_adr_out}),
        .empty(cfg_empty),
        .full(NLW_fifo_config_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(cfg_rd),
        .rd_rst_busy(NLW_fifo_config_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(config_clk),
        .wr_en(config_wr),
        .wr_rst_busy(NLW_fifo_config_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_stat_data,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_burst_0_0_fifo_stat_data fifo_rt_data_i
       (.din(rt_data_in),
        .dout(rt_data_out),
        .empty(rt_data_empty),
        .full(NLW_fifo_rt_data_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(rt_data_rd),
        .rd_rst_busy(NLW_fifo_rt_data_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(rt_clk),
        .wr_en(rt_data_wr),
        .wr_rst_busy(NLW_fifo_rt_data_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_stat_meta,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_burst_0_0_fifo_stat_meta fifo_rt_meta_i
       (.din(rt_meta_in),
        .dout({rt_meta_out,NLW_fifo_rt_meta_i_dout_UNCONNECTED[61:0]}),
        .empty(rt_meta_empty),
        .full(NLW_fifo_rt_meta_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(rt_meta_rd),
        .rst(reset),
        .wr_clk(rt_clk),
        .wr_en(rt_meta_wr));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_burst_0_0_ila_0 ila_i
       (.clk(clk),
        .probe0(burst),
        .probe1(in_freq),
        .probe10(p2_freq),
        .probe11(p3_freq),
        .probe12(p2_phase_diff_0),
        .probe13(p2_phase_diff_1),
        .probe14(p2_phase_diff_2),
        .probe15(p2_phase_diff_3),
        .probe2(in_angle),
        .probe3(mem_wr),
        .probe4(scan_start),
        .probe5(df_diff),
        .probe6(complete_2),
        .probe7(p2_active),
        .probe8(p2_max_pos),
        .probe9(p2_size));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_burst_0_0_one_to_four p2_i
       (.active(p2_active),
        .clk(clk),
        .env(p2_env),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase(p2_phase),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .phase_diff(p2_phase_diff),
        .phase_diff_0(p2_phase_diff_0),
        .phase_diff_1(p2_phase_diff_1),
        .phase_diff_2(p2_phase_diff_2),
        .phase_diff_3(p2_phase_diff_3),
        .read_back(p2_done),
        .reset(reset),
        .size(p2_size),
        .wr(\comp_burst.p2_wr_reg_n_0 ));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_burst_0_0_comp_stat p3_i
       (.active(NLW_p3_i_active_UNCONNECTED),
        .clk(clk),
        .done(NLW_p3_i_done_UNCONNECTED),
        .env(NLW_p3_i_env_UNCONNECTED[15:0]),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .env_sum(NLW_p3_i_env_sum_UNCONNECTED[31:0]),
        .env_sum2(NLW_p3_i_env_sum2_UNCONNECTED[47:0]),
        .freq(p3_freq),
        .max_phase(NLW_p3_i_max_phase_UNCONNECTED[15:0]),
        .max_pos(p3_max_pos),
        .phase(NLW_p3_i_phase_UNCONNECTED[15:0]),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .phase_sum(NLW_p3_i_phase_sum_UNCONNECTED[31:0]),
        .phase_sum2(NLW_p3_i_phase_sum2_UNCONNECTED[47:0]),
        .pos(NLW_p3_i_pos_UNCONNECTED[10:0]),
        .reset(reset),
        .size(p3_size),
        .wr(p2_active));
endmodule

(* ORIG_REF_NAME = "comp_stat" *) (* keep_hierarchy = "soft" *) 
module ps_comp_burst_0_0_comp_stat
   (clk,
    reset,
    wr,
    freq,
    size,
    max_pos,
    env_0,
    env_1,
    env_2,
    env_3,
    phase_0,
    phase_1,
    phase_2,
    phase_3,
    active,
    pos,
    env,
    phase,
    done,
    max_phase,
    env_sum,
    env_sum2,
    phase_sum,
    phase_sum2);
  input clk;
  input reset;
  input wr;
  input [19:0]freq;
  input [10:0]size;
  input [10:0]max_pos;
  input [15:0]env_0;
  input [15:0]env_1;
  input [15:0]env_2;
  input [15:0]env_3;
  input [15:0]phase_0;
  input [15:0]phase_1;
  input [15:0]phase_2;
  input [15:0]phase_3;
  output active;
  output [10:0]pos;
  output [15:0]env;
  output [15:0]phase;
  output done;
  output [15:0]max_phase;
  output [31:0]env_sum;
  output [47:0]env_sum2;
  output [31:0]phase_sum;
  output [47:0]phase_sum2;

  (* MARK_DEBUG *) wire active;
  wire clear;
  wire clk;
  wire \comp_stat.active_i_2_n_0 ;
  wire \comp_stat.active_i_3_n_0 ;
  wire \comp_stat.active_i_4_n_0 ;
  wire \comp_stat.active_reg0 ;
  wire \comp_stat.curr_env_1[0]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[10]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[11]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[12]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[13]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[14]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[15]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[1]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[2]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[3]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[4]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[5]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[6]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[7]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[8]_i_1_n_0 ;
  wire \comp_stat.curr_env_1[9]_i_1_n_0 ;
  wire \comp_stat.curr_phase[0]_i_1_n_0 ;
  wire \comp_stat.curr_phase[10]_i_1_n_0 ;
  wire \comp_stat.curr_phase[11]_i_1_n_0 ;
  wire \comp_stat.curr_phase[12]_i_1_n_0 ;
  wire \comp_stat.curr_phase[13]_i_1_n_0 ;
  wire \comp_stat.curr_phase[14]_i_1_n_0 ;
  wire \comp_stat.curr_phase[15]_i_1_n_0 ;
  wire \comp_stat.curr_phase[1]_i_1_n_0 ;
  wire \comp_stat.curr_phase[2]_i_1_n_0 ;
  wire \comp_stat.curr_phase[3]_i_1_n_0 ;
  wire \comp_stat.curr_phase[4]_i_1_n_0 ;
  wire \comp_stat.curr_phase[5]_i_1_n_0 ;
  wire \comp_stat.curr_phase[6]_i_1_n_0 ;
  wire \comp_stat.curr_phase[7]_i_1_n_0 ;
  wire \comp_stat.curr_phase[8]_i_1_n_0 ;
  wire \comp_stat.curr_phase[9]_i_1_n_0 ;
  wire \comp_stat.down_delay[0]_i_1_n_0 ;
  wire \comp_stat.down_pos[0]_i_1_n_0 ;
  wire \comp_stat.down_pos[10]_i_1_n_0 ;
  wire \comp_stat.down_pos[10]_i_2_n_0 ;
  wire \comp_stat.down_pos[10]_i_3_n_0 ;
  wire \comp_stat.down_pos[1]_i_1_n_0 ;
  wire \comp_stat.down_pos[2]_i_1_n_0 ;
  wire \comp_stat.down_pos[2]_i_2_n_0 ;
  wire \comp_stat.down_pos[3]_i_1_n_0 ;
  wire \comp_stat.down_pos[3]_i_2_n_0 ;
  wire \comp_stat.down_pos[4]_i_1_n_0 ;
  wire \comp_stat.down_pos[4]_i_2_n_0 ;
  wire \comp_stat.down_pos[5]_i_1_n_0 ;
  wire \comp_stat.down_pos[5]_i_2_n_0 ;
  wire \comp_stat.down_pos[5]_i_3_n_0 ;
  wire \comp_stat.down_pos[6]_i_1_n_0 ;
  wire \comp_stat.down_pos[6]_i_2_n_0 ;
  wire \comp_stat.down_pos[7]_i_1_n_0 ;
  wire \comp_stat.down_pos[7]_i_2_n_0 ;
  wire \comp_stat.down_pos[7]_i_3_n_0 ;
  wire \comp_stat.down_pos[8]_i_1_n_0 ;
  wire \comp_stat.down_pos[8]_i_2_n_0 ;
  wire \comp_stat.down_pos[8]_i_3_n_0 ;
  wire \comp_stat.down_pos[9]_i_1_n_0 ;
  wire \comp_stat.env[0]_i_1_n_0 ;
  wire \comp_stat.env[10]_i_1_n_0 ;
  wire \comp_stat.env[11]_i_1_n_0 ;
  wire \comp_stat.env[12]_i_1_n_0 ;
  wire \comp_stat.env[13]_i_1_n_0 ;
  wire \comp_stat.env[14]_i_1_n_0 ;
  wire \comp_stat.env[15]_i_1_n_0 ;
  wire \comp_stat.env[15]_i_2_n_0 ;
  wire \comp_stat.env[15]_i_3_n_0 ;
  wire \comp_stat.env[15]_i_4_n_0 ;
  wire \comp_stat.env[1]_i_1_n_0 ;
  wire \comp_stat.env[2]_i_1_n_0 ;
  wire \comp_stat.env[3]_i_1_n_0 ;
  wire \comp_stat.env[4]_i_1_n_0 ;
  wire \comp_stat.env[5]_i_1_n_0 ;
  wire \comp_stat.env[6]_i_1_n_0 ;
  wire \comp_stat.env[7]_i_1_n_0 ;
  wire \comp_stat.env[8]_i_1_n_0 ;
  wire \comp_stat.env[9]_i_1_n_0 ;
  wire \comp_stat.filling_i_1_n_0 ;
  wire \comp_stat.max_phase[0]_i_1_n_0 ;
  wire \comp_stat.max_phase[10]_i_1_n_0 ;
  wire \comp_stat.max_phase[11]_i_1_n_0 ;
  wire \comp_stat.max_phase[12]_i_1_n_0 ;
  wire \comp_stat.max_phase[13]_i_1_n_0 ;
  wire \comp_stat.max_phase[14]_i_1_n_0 ;
  wire \comp_stat.max_phase[15]_i_1_n_0 ;
  wire \comp_stat.max_phase[1]_i_1_n_0 ;
  wire \comp_stat.max_phase[2]_i_1_n_0 ;
  wire \comp_stat.max_phase[3]_i_1_n_0 ;
  wire \comp_stat.max_phase[4]_i_1_n_0 ;
  wire \comp_stat.max_phase[5]_i_1_n_0 ;
  wire \comp_stat.max_phase[6]_i_1_n_0 ;
  wire \comp_stat.max_phase[7]_i_1_n_0 ;
  wire \comp_stat.max_phase[8]_i_1_n_0 ;
  wire \comp_stat.max_phase[9]_i_1_n_0 ;
  wire \comp_stat.phase[15]_i_10_n_0 ;
  wire \comp_stat.phase[15]_i_11_n_0 ;
  wire \comp_stat.phase[15]_i_12_n_0 ;
  wire \comp_stat.phase[15]_i_1_n_0 ;
  wire \comp_stat.phase[15]_i_3_n_0 ;
  wire \comp_stat.phase[15]_i_4_n_0 ;
  wire \comp_stat.phase[15]_i_5_n_0 ;
  wire \comp_stat.phase[15]_i_6_n_0 ;
  wire \comp_stat.phase[15]_i_7_n_0 ;
  wire \comp_stat.phase[15]_i_8_n_0 ;
  wire \comp_stat.phase[15]_i_9_n_0 ;
  wire \comp_stat.phase[7]_i_2_n_0 ;
  wire \comp_stat.phase[7]_i_3_n_0 ;
  wire \comp_stat.phase[7]_i_4_n_0 ;
  wire \comp_stat.phase[7]_i_5_n_0 ;
  wire \comp_stat.phase[7]_i_6_n_0 ;
  wire \comp_stat.phase[7]_i_7_n_0 ;
  wire \comp_stat.phase[7]_i_8_n_0 ;
  wire \comp_stat.phase[7]_i_9_n_0 ;
  wire [15:0]\comp_stat.phase_reg0 ;
  wire \comp_stat.phase_reg[15]_i_2_n_1 ;
  wire \comp_stat.phase_reg[15]_i_2_n_2 ;
  wire \comp_stat.phase_reg[15]_i_2_n_3 ;
  wire \comp_stat.phase_reg[15]_i_2_n_4 ;
  wire \comp_stat.phase_reg[15]_i_2_n_5 ;
  wire \comp_stat.phase_reg[15]_i_2_n_6 ;
  wire \comp_stat.phase_reg[15]_i_2_n_7 ;
  wire \comp_stat.phase_reg[7]_i_1_n_0 ;
  wire \comp_stat.phase_reg[7]_i_1_n_1 ;
  wire \comp_stat.phase_reg[7]_i_1_n_2 ;
  wire \comp_stat.phase_reg[7]_i_1_n_3 ;
  wire \comp_stat.phase_reg[7]_i_1_n_4 ;
  wire \comp_stat.phase_reg[7]_i_1_n_5 ;
  wire \comp_stat.phase_reg[7]_i_1_n_6 ;
  wire \comp_stat.phase_reg[7]_i_1_n_7 ;
  wire \comp_stat.pos_1[0]_i_1_n_0 ;
  wire \comp_stat.pos_1[10]_i_1_n_0 ;
  wire \comp_stat.pos_1[1]_i_1_n_0 ;
  wire \comp_stat.pos_1[2]_i_1_n_0 ;
  wire \comp_stat.pos_1[3]_i_1_n_0 ;
  wire \comp_stat.pos_1[4]_i_1_n_0 ;
  wire \comp_stat.pos_1[5]_i_1_n_0 ;
  wire \comp_stat.pos_1[6]_i_1_n_0 ;
  wire \comp_stat.pos_1[7]_i_1_n_0 ;
  wire \comp_stat.pos_1[8]_i_1_n_0 ;
  wire \comp_stat.pos_1[9]_i_1_n_0 ;
  wire \comp_stat.pred_phase[0]_i_1_n_0 ;
  wire \comp_stat.pred_phase[10]_i_1_n_0 ;
  wire \comp_stat.pred_phase[11]_i_1_n_0 ;
  wire \comp_stat.pred_phase[12]_i_1_n_0 ;
  wire \comp_stat.pred_phase[13]_i_1_n_0 ;
  wire \comp_stat.pred_phase[14]_i_1_n_0 ;
  wire \comp_stat.pred_phase[15]_i_10_n_0 ;
  wire \comp_stat.pred_phase[15]_i_11_n_0 ;
  wire \comp_stat.pred_phase[15]_i_12_n_0 ;
  wire \comp_stat.pred_phase[15]_i_13_n_0 ;
  wire \comp_stat.pred_phase[15]_i_14_n_0 ;
  wire \comp_stat.pred_phase[15]_i_15_n_0 ;
  wire \comp_stat.pred_phase[15]_i_16_n_0 ;
  wire \comp_stat.pred_phase[15]_i_17_n_0 ;
  wire \comp_stat.pred_phase[15]_i_18_n_0 ;
  wire \comp_stat.pred_phase[15]_i_19_n_0 ;
  wire \comp_stat.pred_phase[15]_i_1_n_0 ;
  wire \comp_stat.pred_phase[15]_i_4_n_0 ;
  wire \comp_stat.pred_phase[15]_i_5_n_0 ;
  wire \comp_stat.pred_phase[15]_i_6_n_0 ;
  wire \comp_stat.pred_phase[15]_i_7_n_0 ;
  wire \comp_stat.pred_phase[15]_i_8_n_0 ;
  wire \comp_stat.pred_phase[15]_i_9_n_0 ;
  wire \comp_stat.pred_phase[16]_i_1_n_0 ;
  wire \comp_stat.pred_phase[17]_i_1_n_0 ;
  wire \comp_stat.pred_phase[18]_i_1_n_0 ;
  wire \comp_stat.pred_phase[19]_i_1_n_0 ;
  wire \comp_stat.pred_phase[1]_i_1_n_0 ;
  wire \comp_stat.pred_phase[20]_i_1_n_0 ;
  wire \comp_stat.pred_phase[21]_i_10_n_0 ;
  wire \comp_stat.pred_phase[21]_i_11_n_0 ;
  wire \comp_stat.pred_phase[21]_i_12_n_0 ;
  wire \comp_stat.pred_phase[21]_i_13_n_0 ;
  wire \comp_stat.pred_phase[21]_i_14_n_0 ;
  wire \comp_stat.pred_phase[21]_i_15_n_0 ;
  wire \comp_stat.pred_phase[21]_i_16_n_0 ;
  wire \comp_stat.pred_phase[21]_i_17_n_0 ;
  wire \comp_stat.pred_phase[21]_i_1_n_0 ;
  wire \comp_stat.pred_phase[21]_i_2_n_0 ;
  wire \comp_stat.pred_phase[21]_i_5_n_0 ;
  wire \comp_stat.pred_phase[21]_i_6_n_0 ;
  wire \comp_stat.pred_phase[21]_i_7_n_0 ;
  wire \comp_stat.pred_phase[21]_i_8_n_0 ;
  wire \comp_stat.pred_phase[21]_i_9_n_0 ;
  wire \comp_stat.pred_phase[2]_i_1_n_0 ;
  wire \comp_stat.pred_phase[3]_i_1_n_0 ;
  wire \comp_stat.pred_phase[4]_i_1_n_0 ;
  wire \comp_stat.pred_phase[5]_i_1_n_0 ;
  wire \comp_stat.pred_phase[6]_i_1_n_0 ;
  wire \comp_stat.pred_phase[7]_i_10_n_0 ;
  wire \comp_stat.pred_phase[7]_i_11_n_0 ;
  wire \comp_stat.pred_phase[7]_i_12_n_0 ;
  wire \comp_stat.pred_phase[7]_i_13_n_0 ;
  wire \comp_stat.pred_phase[7]_i_14_n_0 ;
  wire \comp_stat.pred_phase[7]_i_15_n_0 ;
  wire \comp_stat.pred_phase[7]_i_16_n_0 ;
  wire \comp_stat.pred_phase[7]_i_17_n_0 ;
  wire \comp_stat.pred_phase[7]_i_18_n_0 ;
  wire \comp_stat.pred_phase[7]_i_19_n_0 ;
  wire \comp_stat.pred_phase[7]_i_1_n_0 ;
  wire \comp_stat.pred_phase[7]_i_4_n_0 ;
  wire \comp_stat.pred_phase[7]_i_5_n_0 ;
  wire \comp_stat.pred_phase[7]_i_6_n_0 ;
  wire \comp_stat.pred_phase[7]_i_7_n_0 ;
  wire \comp_stat.pred_phase[7]_i_8_n_0 ;
  wire \comp_stat.pred_phase[7]_i_9_n_0 ;
  wire \comp_stat.pred_phase[8]_i_1_n_0 ;
  wire \comp_stat.pred_phase[9]_i_1_n_0 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_0 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_1 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_2 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_3 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_4 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_5 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_6 ;
  wire \comp_stat.pred_phase_reg[15]_i_2_n_7 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_0 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_1 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_2 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_3 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_4 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_5 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_6 ;
  wire \comp_stat.pred_phase_reg[15]_i_3_n_7 ;
  wire \comp_stat.pred_phase_reg[21]_i_3_n_3 ;
  wire \comp_stat.pred_phase_reg[21]_i_3_n_4 ;
  wire \comp_stat.pred_phase_reg[21]_i_3_n_5 ;
  wire \comp_stat.pred_phase_reg[21]_i_3_n_6 ;
  wire \comp_stat.pred_phase_reg[21]_i_3_n_7 ;
  wire \comp_stat.pred_phase_reg[21]_i_4_n_3 ;
  wire \comp_stat.pred_phase_reg[21]_i_4_n_4 ;
  wire \comp_stat.pred_phase_reg[21]_i_4_n_5 ;
  wire \comp_stat.pred_phase_reg[21]_i_4_n_6 ;
  wire \comp_stat.pred_phase_reg[21]_i_4_n_7 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_0 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_1 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_2 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_3 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_4 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_5 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_6 ;
  wire \comp_stat.pred_phase_reg[7]_i_2_n_7 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_0 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_1 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_2 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_3 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_4 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_5 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_6 ;
  wire \comp_stat.pred_phase_reg[7]_i_3_n_7 ;
  wire \comp_stat.proc_up_i_1_n_0 ;
  wire \comp_stat.proc_up_i_2_n_0 ;
  wire \comp_stat.rd_pos_1[0]_i_1_n_0 ;
  wire \comp_stat.rd_pos_1[1]_i_1_n_0 ;
  wire \comp_stat.rd_pos_1_reg_n_0_[0] ;
  wire \comp_stat.rd_pos_1_reg_n_0_[1] ;
  wire \comp_stat.rd_ptr_reg_n_0_[0] ;
  wire \comp_stat.rd_ptr_reg_n_0_[1] ;
  wire \comp_stat.rd_ptr_reg_n_0_[2] ;
  wire \comp_stat.rd_ptr_reg_n_0_[3] ;
  wire \comp_stat.rd_ptr_reg_n_0_[4] ;
  wire \comp_stat.rd_ptr_reg_n_0_[5] ;
  wire \comp_stat.rd_ptr_reg_n_0_[6] ;
  wire \comp_stat.rd_ptr_reg_n_0_[7] ;
  wire \comp_stat.rd_ptr_reg_n_0_[8] ;
  wire \comp_stat.rd_ptr_rep[0]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[1]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[1]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[2]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[2]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[2]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[3]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[3]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[3]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[4]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[4]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[4]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[5]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[5]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[5]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[5]_i_4_n_0 ;
  wire \comp_stat.rd_ptr_rep[6]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[6]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[6]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[7]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[7]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[7]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_10_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_11_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_12_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_1_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_2_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_3_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_4_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_5_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_6_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_7_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_8_n_0 ;
  wire \comp_stat.rd_ptr_rep[8]_i_9_n_0 ;
  wire \comp_stat.start_down_i_1_n_0 ;
  wire \comp_stat.start_down_i_2_n_0 ;
  wire \comp_stat.start_down_i_3_n_0 ;
  wire \comp_stat.start_up_i_1_n_0 ;
  wire \comp_stat.stop_down[0]_i_1_n_0 ;
  wire \comp_stat.up_count[10]_i_10_n_0 ;
  wire \comp_stat.up_count[10]_i_11_n_0 ;
  wire \comp_stat.up_count[10]_i_12_n_0 ;
  wire \comp_stat.up_count[10]_i_1_n_0 ;
  wire \comp_stat.up_count[10]_i_5_n_0 ;
  wire \comp_stat.up_count[10]_i_6_n_0 ;
  wire \comp_stat.up_count[10]_i_7_n_0 ;
  wire \comp_stat.up_count[10]_i_8_n_0 ;
  wire \comp_stat.up_count[10]_i_9_n_0 ;
  wire \comp_stat.up_count[7]_i_10_n_0 ;
  wire \comp_stat.up_count[7]_i_11_n_0 ;
  wire \comp_stat.up_count[7]_i_12_n_0 ;
  wire \comp_stat.up_count[7]_i_13_n_0 ;
  wire \comp_stat.up_count[7]_i_14_n_0 ;
  wire \comp_stat.up_count[7]_i_15_n_0 ;
  wire \comp_stat.up_count[7]_i_16_n_0 ;
  wire \comp_stat.up_count[7]_i_17_n_0 ;
  wire \comp_stat.up_count[7]_i_18_n_0 ;
  wire \comp_stat.up_count[7]_i_19_n_0 ;
  wire \comp_stat.up_count[7]_i_20_n_0 ;
  wire \comp_stat.up_count[7]_i_21_n_0 ;
  wire \comp_stat.up_count[7]_i_22_n_0 ;
  wire \comp_stat.up_count[7]_i_23_n_0 ;
  wire \comp_stat.up_count[7]_i_24_n_0 ;
  wire \comp_stat.up_count[7]_i_25_n_0 ;
  wire \comp_stat.up_count[7]_i_26_n_0 ;
  wire \comp_stat.up_count[7]_i_27_n_0 ;
  wire \comp_stat.up_count[7]_i_28_n_0 ;
  wire \comp_stat.up_count[7]_i_30_n_0 ;
  wire \comp_stat.up_count[7]_i_31_n_0 ;
  wire \comp_stat.up_count[7]_i_4_n_0 ;
  wire \comp_stat.up_count[7]_i_5_n_0 ;
  wire \comp_stat.up_count[7]_i_6_n_0 ;
  wire \comp_stat.up_count[7]_i_7_n_0 ;
  wire \comp_stat.up_count[7]_i_8_n_0 ;
  wire \comp_stat.up_count[7]_i_9_n_0 ;
  wire \comp_stat.up_count_reg[10]_i_3_n_6 ;
  wire \comp_stat.up_count_reg[10]_i_3_n_7 ;
  wire \comp_stat.up_count_reg[10]_i_4_n_6 ;
  wire \comp_stat.up_count_reg[10]_i_4_n_7 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_0 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_1 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_2 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_3 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_4 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_5 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_6 ;
  wire \comp_stat.up_count_reg[7]_i_2_n_7 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_0 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_1 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_2 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_3 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_4 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_5 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_6 ;
  wire \comp_stat.up_count_reg[7]_i_3_n_7 ;
  wire \comp_stat.up_delay[0]_i_1_n_0 ;
  wire \comp_stat.up_pos[0]_i_1_n_0 ;
  wire \comp_stat.up_pos[10]_i_1_n_0 ;
  wire \comp_stat.up_pos[10]_i_2_n_0 ;
  wire \comp_stat.up_pos[1]_i_1_n_0 ;
  wire \comp_stat.up_pos[2]_i_1_n_0 ;
  wire \comp_stat.up_pos[2]_i_2_n_0 ;
  wire \comp_stat.up_pos[3]_i_1_n_0 ;
  wire \comp_stat.up_pos[3]_i_2_n_0 ;
  wire \comp_stat.up_pos[4]_i_1_n_0 ;
  wire \comp_stat.up_pos[4]_i_2_n_0 ;
  wire \comp_stat.up_pos[5]_i_1_n_0 ;
  wire \comp_stat.up_pos[5]_i_2_n_0 ;
  wire \comp_stat.up_pos[6]_i_1_n_0 ;
  wire \comp_stat.up_pos[7]_i_1_n_0 ;
  wire \comp_stat.up_pos[7]_i_2_n_0 ;
  wire \comp_stat.up_pos[8]_i_1_n_0 ;
  wire \comp_stat.up_pos[9]_i_1_n_0 ;
  wire \comp_stat.up_pos[9]_i_2_n_0 ;
  wire \comp_stat.up_pos[9]_i_3_n_0 ;
  wire \comp_stat.up_pos[9]_i_4_n_0 ;
  wire \comp_stat.wr_ptr[8]_i_3_n_0 ;
  wire [8:0]\comp_stat.wr_ptr_reg ;
  (* MARK_DEBUG *) wire [15:0]curr_env_1;
  (* MARK_DEBUG *) wire [15:0]curr_env_2;
  (* MARK_DEBUG *) wire [15:0]curr_phase;
  (* MARK_DEBUG *) wire [2:0]down_delay;
  (* MARK_DEBUG *) wire [10:0]down_pos;
  (* MARK_DEBUG *) wire [15:0]env;
  wire [15:0]env_0;
  wire [15:0]env_1;
  wire [15:0]env_2;
  wire [15:0]env_3;
  wire [63:0]env_in;
  wire [63:0]env_out;
  wire filling;
  wire [19:0]freq;
  (* MARK_DEBUG *) wire [15:0]max_phase;
  (* MARK_DEBUG *) wire [10:0]max_pos;
  wire mem_wr;
  wire [8:0]p_0_in__0;
  wire [1:1]p_0_out;
  wire [10:0]p_1_in__0;
  (* MARK_DEBUG *) wire [15:0]phase;
  wire [15:0]phase_0;
  wire [15:0]phase_1;
  wire [15:0]phase_2;
  wire [15:0]phase_3;
  wire [63:0]phase_in;
  wire [63:0]phase_out;
  (* MARK_DEBUG *) wire [10:0]pos;
  wire [10:0]pos_1;
  (* MARK_DEBUG *) wire [21:0]pred_phase;
  wire [21:0]pred_phase0;
  wire [21:0]pred_phase01_in;
  (* MARK_DEBUG *) wire [15:0]prev_phase;
  (* MARK_DEBUG *) wire proc_up;
  wire [1:0]rd_pos;
  wire [8:0]rd_ptr;
  wire reset;
  (* MARK_DEBUG *) wire [10:0]size;
  (* MARK_DEBUG *) wire start_down;
  (* MARK_DEBUG *) wire start_up;
  (* MARK_DEBUG *) wire [1:0]stop_down;
  (* MARK_DEBUG *) wire [10:0]up_count;
  wire [10:0]up_count0;
  wire [10:0]up_count__0;
  (* MARK_DEBUG *) wire [2:0]up_delay;
  (* MARK_DEBUG *) wire [10:0]up_pos;
  wire wr;
  wire \NLW_comp_stat.mem_env_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_comp_stat.mem_env_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_comp_stat.mem_env_reg_DBITERR_UNCONNECTED ;
  wire \NLW_comp_stat.mem_env_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_env_reg_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_env_reg_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_env_reg_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_env_reg_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_env_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_env_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_env_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_env_reg_CASDOUTPB_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_env_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_env_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_comp_stat.mem_env_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_comp_stat.mem_env_reg_RDADDRECC_UNCONNECTED ;
  wire \NLW_comp_stat.mem_phase_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_comp_stat.mem_phase_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_comp_stat.mem_phase_reg_DBITERR_UNCONNECTED ;
  wire \NLW_comp_stat.mem_phase_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_phase_reg_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_phase_reg_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_phase_reg_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_phase_reg_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_phase_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_comp_stat.mem_phase_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_phase_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_phase_reg_CASDOUTPB_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_phase_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_comp_stat.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_comp_stat.mem_phase_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_comp_stat.mem_phase_reg_RDADDRECC_UNCONNECTED ;
  wire [7:7]\NLW_comp_stat.phase_reg[15]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_comp_stat.pred_phase_reg[21]_i_3_CO_UNCONNECTED ;
  wire [7:6]\NLW_comp_stat.pred_phase_reg[21]_i_3_O_UNCONNECTED ;
  wire [7:5]\NLW_comp_stat.pred_phase_reg[21]_i_4_CO_UNCONNECTED ;
  wire [7:6]\NLW_comp_stat.pred_phase_reg[21]_i_4_O_UNCONNECTED ;
  wire [7:2]\NLW_comp_stat.up_count_reg[10]_i_3_CO_UNCONNECTED ;
  wire [7:3]\NLW_comp_stat.up_count_reg[10]_i_3_O_UNCONNECTED ;
  wire [7:2]\NLW_comp_stat.up_count_reg[10]_i_4_CO_UNCONNECTED ;
  wire [7:3]\NLW_comp_stat.up_count_reg[10]_i_4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCCCCCCCC0FFF8F8F)) 
    \comp_stat.active_i_1 
       (.I0(\comp_stat.active_i_2_n_0 ),
        .I1(active),
        .I2(\comp_stat.active_i_3_n_0 ),
        .I3(\comp_stat.active_i_4_n_0 ),
        .I4(\comp_stat.down_pos[5]_i_3_n_0 ),
        .I5(reset),
        .O(\comp_stat.active_reg0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \comp_stat.active_i_2 
       (.I0(stop_down[1]),
        .I1(start_down),
        .I2(proc_up),
        .O(\comp_stat.active_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \comp_stat.active_i_3 
       (.I0(up_delay[0]),
        .I1(start_up),
        .I2(proc_up),
        .I3(up_delay[1]),
        .O(\comp_stat.active_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_stat.active_i_4 
       (.I0(proc_up),
        .I1(down_delay[0]),
        .I2(start_down),
        .I3(down_delay[1]),
        .O(\comp_stat.active_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.active_reg0 ),
        .Q(active),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[0]_i_1 
       (.I0(env_out[16]),
        .I1(env_out[0]),
        .I2(env_out[48]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[32]),
        .O(\comp_stat.curr_env_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[10]_i_1 
       (.I0(env_out[26]),
        .I1(env_out[10]),
        .I2(env_out[58]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[42]),
        .O(\comp_stat.curr_env_1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[11]_i_1 
       (.I0(env_out[27]),
        .I1(env_out[11]),
        .I2(env_out[59]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[43]),
        .O(\comp_stat.curr_env_1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[12]_i_1 
       (.I0(env_out[28]),
        .I1(env_out[12]),
        .I2(env_out[60]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[44]),
        .O(\comp_stat.curr_env_1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[13]_i_1 
       (.I0(env_out[29]),
        .I1(env_out[13]),
        .I2(env_out[61]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[45]),
        .O(\comp_stat.curr_env_1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[14]_i_1 
       (.I0(env_out[30]),
        .I1(env_out[14]),
        .I2(env_out[62]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[46]),
        .O(\comp_stat.curr_env_1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[15]_i_1 
       (.I0(env_out[31]),
        .I1(env_out[15]),
        .I2(env_out[63]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[47]),
        .O(\comp_stat.curr_env_1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[1]_i_1 
       (.I0(env_out[17]),
        .I1(env_out[1]),
        .I2(env_out[49]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[33]),
        .O(\comp_stat.curr_env_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[2]_i_1 
       (.I0(env_out[18]),
        .I1(env_out[2]),
        .I2(env_out[50]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[34]),
        .O(\comp_stat.curr_env_1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[3]_i_1 
       (.I0(env_out[19]),
        .I1(env_out[3]),
        .I2(env_out[51]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[35]),
        .O(\comp_stat.curr_env_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[4]_i_1 
       (.I0(env_out[20]),
        .I1(env_out[4]),
        .I2(env_out[52]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[36]),
        .O(\comp_stat.curr_env_1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[5]_i_1 
       (.I0(env_out[21]),
        .I1(env_out[5]),
        .I2(env_out[53]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[37]),
        .O(\comp_stat.curr_env_1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[6]_i_1 
       (.I0(env_out[22]),
        .I1(env_out[6]),
        .I2(env_out[54]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[38]),
        .O(\comp_stat.curr_env_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[7]_i_1 
       (.I0(env_out[23]),
        .I1(env_out[7]),
        .I2(env_out[55]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[39]),
        .O(\comp_stat.curr_env_1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[8]_i_1 
       (.I0(env_out[24]),
        .I1(env_out[8]),
        .I2(env_out[56]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[40]),
        .O(\comp_stat.curr_env_1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_env_1[9]_i_1 
       (.I0(env_out[25]),
        .I1(env_out[9]),
        .I2(env_out[57]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(env_out[41]),
        .O(\comp_stat.curr_env_1[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[0]_i_1_n_0 ),
        .Q(curr_env_1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[10]_i_1_n_0 ),
        .Q(curr_env_1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[11]_i_1_n_0 ),
        .Q(curr_env_1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[12]_i_1_n_0 ),
        .Q(curr_env_1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[13]_i_1_n_0 ),
        .Q(curr_env_1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[14]_i_1_n_0 ),
        .Q(curr_env_1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[15]_i_1_n_0 ),
        .Q(curr_env_1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[1]_i_1_n_0 ),
        .Q(curr_env_1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[2]_i_1_n_0 ),
        .Q(curr_env_1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[3]_i_1_n_0 ),
        .Q(curr_env_1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[4]_i_1_n_0 ),
        .Q(curr_env_1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[5]_i_1_n_0 ),
        .Q(curr_env_1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[6]_i_1_n_0 ),
        .Q(curr_env_1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[7]_i_1_n_0 ),
        .Q(curr_env_1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[8]_i_1_n_0 ),
        .Q(curr_env_1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_env_1[9]_i_1_n_0 ),
        .Q(curr_env_1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[0]),
        .Q(curr_env_2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[10]),
        .Q(curr_env_2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[11]),
        .Q(curr_env_2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[12]),
        .Q(curr_env_2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[13]),
        .Q(curr_env_2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[14]),
        .Q(curr_env_2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[15]),
        .Q(curr_env_2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[1]),
        .Q(curr_env_2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[2]),
        .Q(curr_env_2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[3]),
        .Q(curr_env_2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[4]),
        .Q(curr_env_2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[5]),
        .Q(curr_env_2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[6]),
        .Q(curr_env_2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[7]),
        .Q(curr_env_2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[8]),
        .Q(curr_env_2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_env_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_env_1[9]),
        .Q(curr_env_2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[0]_i_1 
       (.I0(phase_out[16]),
        .I1(phase_out[0]),
        .I2(phase_out[48]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[32]),
        .O(\comp_stat.curr_phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[10]_i_1 
       (.I0(phase_out[26]),
        .I1(phase_out[10]),
        .I2(phase_out[58]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[42]),
        .O(\comp_stat.curr_phase[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[11]_i_1 
       (.I0(phase_out[27]),
        .I1(phase_out[11]),
        .I2(phase_out[59]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[43]),
        .O(\comp_stat.curr_phase[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[12]_i_1 
       (.I0(phase_out[28]),
        .I1(phase_out[12]),
        .I2(phase_out[60]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[44]),
        .O(\comp_stat.curr_phase[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[13]_i_1 
       (.I0(phase_out[29]),
        .I1(phase_out[13]),
        .I2(phase_out[61]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[45]),
        .O(\comp_stat.curr_phase[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[14]_i_1 
       (.I0(phase_out[30]),
        .I1(phase_out[14]),
        .I2(phase_out[62]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[46]),
        .O(\comp_stat.curr_phase[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[15]_i_1 
       (.I0(phase_out[31]),
        .I1(phase_out[15]),
        .I2(phase_out[63]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[47]),
        .O(\comp_stat.curr_phase[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[1]_i_1 
       (.I0(phase_out[17]),
        .I1(phase_out[1]),
        .I2(phase_out[49]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[33]),
        .O(\comp_stat.curr_phase[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[2]_i_1 
       (.I0(phase_out[18]),
        .I1(phase_out[2]),
        .I2(phase_out[50]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[34]),
        .O(\comp_stat.curr_phase[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[3]_i_1 
       (.I0(phase_out[19]),
        .I1(phase_out[3]),
        .I2(phase_out[51]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[35]),
        .O(\comp_stat.curr_phase[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[4]_i_1 
       (.I0(phase_out[20]),
        .I1(phase_out[4]),
        .I2(phase_out[52]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[36]),
        .O(\comp_stat.curr_phase[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[5]_i_1 
       (.I0(phase_out[21]),
        .I1(phase_out[5]),
        .I2(phase_out[53]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[37]),
        .O(\comp_stat.curr_phase[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[6]_i_1 
       (.I0(phase_out[22]),
        .I1(phase_out[6]),
        .I2(phase_out[54]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[38]),
        .O(\comp_stat.curr_phase[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[7]_i_1 
       (.I0(phase_out[23]),
        .I1(phase_out[7]),
        .I2(phase_out[55]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[39]),
        .O(\comp_stat.curr_phase[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[8]_i_1 
       (.I0(phase_out[24]),
        .I1(phase_out[8]),
        .I2(phase_out[56]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[40]),
        .O(\comp_stat.curr_phase[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \comp_stat.curr_phase[9]_i_1 
       (.I0(phase_out[25]),
        .I1(phase_out[9]),
        .I2(phase_out[57]),
        .I3(rd_pos[1]),
        .I4(rd_pos[0]),
        .I5(phase_out[41]),
        .O(\comp_stat.curr_phase[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[0]_i_1_n_0 ),
        .Q(curr_phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[10]_i_1_n_0 ),
        .Q(curr_phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[11]_i_1_n_0 ),
        .Q(curr_phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[12]_i_1_n_0 ),
        .Q(curr_phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[13]_i_1_n_0 ),
        .Q(curr_phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[14]_i_1_n_0 ),
        .Q(curr_phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[15]_i_1_n_0 ),
        .Q(curr_phase[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[1]_i_1_n_0 ),
        .Q(curr_phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[2]_i_1_n_0 ),
        .Q(curr_phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[3]_i_1_n_0 ),
        .Q(curr_phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[4]_i_1_n_0 ),
        .Q(curr_phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[5]_i_1_n_0 ),
        .Q(curr_phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[6]_i_1_n_0 ),
        .Q(curr_phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[7]_i_1_n_0 ),
        .Q(curr_phase[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[8]_i_1_n_0 ),
        .Q(curr_phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.curr_phase_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.curr_phase[9]_i_1_n_0 ),
        .Q(curr_phase[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDC)) 
    \comp_stat.down_delay[0]_i_1 
       (.I0(down_delay[0]),
        .I1(start_down),
        .I2(down_delay[0]),
        .O(\comp_stat.down_delay[0]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.down_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_delay[0]_i_1_n_0 ),
        .Q(down_delay[0]),
        .R(reset));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.down_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(down_delay[0]),
        .Q(down_delay[1]),
        .R(1'b0));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.down_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(down_delay[1]),
        .Q(down_delay[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFC000CA)) 
    \comp_stat.down_pos[0]_i_1 
       (.I0(\comp_stat.down_pos[5]_i_3_n_0 ),
        .I1(max_pos[0]),
        .I2(down_delay[0]),
        .I3(start_down),
        .I4(down_pos[0]),
        .O(\comp_stat.down_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACCCACCCACCCA0)) 
    \comp_stat.down_pos[10]_i_1 
       (.I0(max_pos[10]),
        .I1(down_pos[10]),
        .I2(down_delay[0]),
        .I3(start_down),
        .I4(\comp_stat.down_pos[10]_i_2_n_0 ),
        .I5(down_pos[9]),
        .O(\comp_stat.down_pos[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_stat.down_pos[10]_i_2 
       (.I0(down_pos[8]),
        .I1(down_pos[1]),
        .I2(down_pos[0]),
        .I3(down_pos[2]),
        .I4(\comp_stat.down_pos[10]_i_3_n_0 ),
        .I5(down_pos[7]),
        .O(\comp_stat.down_pos[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_stat.down_pos[10]_i_3 
       (.I0(down_pos[5]),
        .I1(down_pos[6]),
        .I2(down_pos[3]),
        .I3(down_pos[4]),
        .O(\comp_stat.down_pos[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000FD02FD02)) 
    \comp_stat.down_pos[1]_i_1 
       (.I0(\comp_stat.down_pos[5]_i_3_n_0 ),
        .I1(down_pos[0]),
        .I2(start_down),
        .I3(down_pos[1]),
        .I4(max_pos[1]),
        .I5(down_delay[0]),
        .O(\comp_stat.down_pos[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \comp_stat.down_pos[2]_i_1 
       (.I0(\comp_stat.down_pos[2]_i_2_n_0 ),
        .I1(start_down),
        .I2(down_pos[2]),
        .I3(max_pos[2]),
        .I4(down_delay[0]),
        .O(\comp_stat.down_pos[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF0000E)) 
    \comp_stat.down_pos[2]_i_2 
       (.I0(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I1(\comp_stat.down_pos[10]_i_3_n_0 ),
        .I2(down_pos[1]),
        .I3(down_pos[0]),
        .I4(down_pos[2]),
        .O(\comp_stat.down_pos[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0880000F044)) 
    \comp_stat.down_pos[3]_i_1 
       (.I0(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I1(\comp_stat.down_pos[5]_i_3_n_0 ),
        .I2(max_pos[3]),
        .I3(down_delay[0]),
        .I4(start_down),
        .I5(down_pos[3]),
        .O(\comp_stat.down_pos[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_stat.down_pos[3]_i_2 
       (.I0(down_pos[2]),
        .I1(down_pos[0]),
        .I2(down_pos[1]),
        .O(\comp_stat.down_pos[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF3C0D1D1)) 
    \comp_stat.down_pos[4]_i_1 
       (.I0(\comp_stat.down_pos[4]_i_2_n_0 ),
        .I1(start_down),
        .I2(down_pos[4]),
        .I3(max_pos[4]),
        .I4(down_delay[0]),
        .O(\comp_stat.down_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FFFFFFFF01)) 
    \comp_stat.down_pos[4]_i_2 
       (.I0(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I1(down_pos[5]),
        .I2(down_pos[6]),
        .I3(down_pos[3]),
        .I4(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I5(down_pos[4]),
        .O(\comp_stat.down_pos[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000F804F804)) 
    \comp_stat.down_pos[5]_i_1 
       (.I0(\comp_stat.down_pos[5]_i_2_n_0 ),
        .I1(\comp_stat.down_pos[5]_i_3_n_0 ),
        .I2(start_down),
        .I3(down_pos[5]),
        .I4(max_pos[5]),
        .I5(down_delay[0]),
        .O(\comp_stat.down_pos[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_stat.down_pos[5]_i_2 
       (.I0(down_pos[1]),
        .I1(down_pos[0]),
        .I2(down_pos[2]),
        .I3(down_pos[3]),
        .I4(down_pos[4]),
        .O(\comp_stat.down_pos[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_stat.down_pos[5]_i_3 
       (.I0(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I1(down_pos[5]),
        .I2(down_pos[6]),
        .I3(down_pos[3]),
        .I4(down_pos[4]),
        .I5(\comp_stat.down_pos[3]_i_2_n_0 ),
        .O(\comp_stat.down_pos[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE54FF44AA10BB00)) 
    \comp_stat.down_pos[6]_i_1 
       (.I0(start_down),
        .I1(down_delay[0]),
        .I2(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I3(down_pos[6]),
        .I4(\comp_stat.down_pos[6]_i_2_n_0 ),
        .I5(max_pos[6]),
        .O(\comp_stat.down_pos[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_stat.down_pos[6]_i_2 
       (.I0(down_pos[5]),
        .I1(down_pos[4]),
        .I2(down_pos[3]),
        .I3(down_pos[2]),
        .I4(down_pos[0]),
        .I5(down_pos[1]),
        .O(\comp_stat.down_pos[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000FB04FB04)) 
    \comp_stat.down_pos[7]_i_1 
       (.I0(\comp_stat.down_pos[7]_i_2_n_0 ),
        .I1(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I2(start_down),
        .I3(down_pos[7]),
        .I4(max_pos[7]),
        .I5(down_delay[0]),
        .O(\comp_stat.down_pos[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_stat.down_pos[7]_i_2 
       (.I0(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I1(down_pos[4]),
        .I2(down_pos[3]),
        .I3(down_pos[6]),
        .I4(down_pos[5]),
        .O(\comp_stat.down_pos[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_stat.down_pos[7]_i_3 
       (.I0(down_pos[7]),
        .I1(down_pos[10]),
        .I2(down_pos[9]),
        .I3(down_pos[8]),
        .O(\comp_stat.down_pos[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000F708F708)) 
    \comp_stat.down_pos[8]_i_1 
       (.I0(\comp_stat.down_pos[8]_i_2_n_0 ),
        .I1(\comp_stat.down_pos[8]_i_3_n_0 ),
        .I2(start_down),
        .I3(down_pos[8]),
        .I4(max_pos[8]),
        .I5(down_delay[0]),
        .O(\comp_stat.down_pos[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_stat.down_pos[8]_i_2 
       (.I0(down_pos[7]),
        .I1(down_pos[5]),
        .I2(down_pos[6]),
        .I3(down_pos[3]),
        .I4(down_pos[4]),
        .I5(\comp_stat.down_pos[3]_i_2_n_0 ),
        .O(\comp_stat.down_pos[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_stat.down_pos[8]_i_3 
       (.I0(down_pos[8]),
        .I1(down_pos[9]),
        .I2(down_pos[10]),
        .O(\comp_stat.down_pos[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000FA04FA04)) 
    \comp_stat.down_pos[9]_i_1 
       (.I0(\comp_stat.down_pos[10]_i_2_n_0 ),
        .I1(down_pos[10]),
        .I2(start_down),
        .I3(down_pos[9]),
        .I4(max_pos[9]),
        .I5(down_delay[0]),
        .O(\comp_stat.down_pos[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[0]_i_1_n_0 ),
        .Q(down_pos[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[10]_i_1_n_0 ),
        .Q(down_pos[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[1]_i_1_n_0 ),
        .Q(down_pos[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[2]_i_1_n_0 ),
        .Q(down_pos[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[3]_i_1_n_0 ),
        .Q(down_pos[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[4]_i_1_n_0 ),
        .Q(down_pos[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[5]_i_1_n_0 ),
        .Q(down_pos[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[6]_i_1_n_0 ),
        .Q(down_pos[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[7]_i_1_n_0 ),
        .Q(down_pos[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[8]_i_1_n_0 ),
        .Q(down_pos[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.down_pos_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.down_pos[9]_i_1_n_0 ),
        .Q(down_pos[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[0]_i_1 
       (.I0(curr_env_2[0]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[10]_i_1 
       (.I0(curr_env_2[10]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[11]_i_1 
       (.I0(curr_env_2[11]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[12]_i_1 
       (.I0(curr_env_2[12]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[13]_i_1 
       (.I0(curr_env_2[13]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[14]_i_1 
       (.I0(curr_env_2[14]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \comp_stat.env[15]_i_1 
       (.I0(proc_up),
        .I1(up_delay[2]),
        .I2(up_delay[0]),
        .I3(start_up),
        .I4(up_delay[1]),
        .O(\comp_stat.env[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[15]_i_2 
       (.I0(curr_env_2[15]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \comp_stat.env[15]_i_3 
       (.I0(\comp_stat.env[15]_i_4_n_0 ),
        .I1(stop_down[0]),
        .I2(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I3(\comp_stat.down_pos[10]_i_3_n_0 ),
        .I4(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I5(proc_up),
        .O(\comp_stat.env[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \comp_stat.env[15]_i_4 
       (.I0(down_delay[1]),
        .I1(start_down),
        .I2(down_delay[0]),
        .O(\comp_stat.env[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[1]_i_1 
       (.I0(curr_env_2[1]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[2]_i_1 
       (.I0(curr_env_2[2]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[3]_i_1 
       (.I0(curr_env_2[3]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[4]_i_1 
       (.I0(curr_env_2[4]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[5]_i_1 
       (.I0(curr_env_2[5]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[6]_i_1 
       (.I0(curr_env_2[6]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[7]_i_1 
       (.I0(curr_env_2[7]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[8]_i_1 
       (.I0(curr_env_2[8]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.env[9]_i_1 
       (.I0(curr_env_2[9]),
        .I1(\comp_stat.env[15]_i_3_n_0 ),
        .O(\comp_stat.env[9]_i_1_n_0 ));
  FDRE \comp_stat.env_in_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[0]),
        .Q(env_in[0]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[10]),
        .Q(env_in[10]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[11]),
        .Q(env_in[11]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[12]),
        .Q(env_in[12]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[13]),
        .Q(env_in[13]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[14]),
        .Q(env_in[14]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[15]),
        .Q(env_in[15]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[0]),
        .Q(env_in[16]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[1]),
        .Q(env_in[17]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[2]),
        .Q(env_in[18]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[3]),
        .Q(env_in[19]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[1]),
        .Q(env_in[1]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[4]),
        .Q(env_in[20]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[5]),
        .Q(env_in[21]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[6]),
        .Q(env_in[22]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[7]),
        .Q(env_in[23]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[8]),
        .Q(env_in[24]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[9]),
        .Q(env_in[25]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[10]),
        .Q(env_in[26]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[11]),
        .Q(env_in[27]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[12]),
        .Q(env_in[28]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[13]),
        .Q(env_in[29]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[2]),
        .Q(env_in[2]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[14]),
        .Q(env_in[30]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(env_1[15]),
        .Q(env_in[31]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[0]),
        .Q(env_in[32]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[1]),
        .Q(env_in[33]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[2]),
        .Q(env_in[34]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[3]),
        .Q(env_in[35]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[4]),
        .Q(env_in[36]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[5]),
        .Q(env_in[37]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[6]),
        .Q(env_in[38]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[7]),
        .Q(env_in[39]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[3]),
        .Q(env_in[3]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[8]),
        .Q(env_in[40]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[9]),
        .Q(env_in[41]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[10]),
        .Q(env_in[42]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[11]),
        .Q(env_in[43]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[12]),
        .Q(env_in[44]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[13]),
        .Q(env_in[45]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[14]),
        .Q(env_in[46]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(env_2[15]),
        .Q(env_in[47]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[0]),
        .Q(env_in[48]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[1]),
        .Q(env_in[49]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[4]),
        .Q(env_in[4]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[2]),
        .Q(env_in[50]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[3]),
        .Q(env_in[51]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[4]),
        .Q(env_in[52]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[5]),
        .Q(env_in[53]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[6]),
        .Q(env_in[54]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[7]),
        .Q(env_in[55]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[8]),
        .Q(env_in[56]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[9]),
        .Q(env_in[57]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[10]),
        .Q(env_in[58]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[11]),
        .Q(env_in[59]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[5]),
        .Q(env_in[5]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[12]),
        .Q(env_in[60]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[13]),
        .Q(env_in[61]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[14]),
        .Q(env_in[62]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(env_3[15]),
        .Q(env_in[63]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[6]),
        .Q(env_in[6]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[7]),
        .Q(env_in[7]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[8]),
        .Q(env_in[8]),
        .R(1'b0));
  FDRE \comp_stat.env_in_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_0[9]),
        .Q(env_in[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[0]_i_1_n_0 ),
        .Q(env[0]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[10]_i_1_n_0 ),
        .Q(env[10]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[11]_i_1_n_0 ),
        .Q(env[11]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[12]_i_1_n_0 ),
        .Q(env[12]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[13]_i_1_n_0 ),
        .Q(env[13]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[14]_i_1_n_0 ),
        .Q(env[14]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[15]_i_2_n_0 ),
        .Q(env[15]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[1]_i_1_n_0 ),
        .Q(env[1]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[2]_i_1_n_0 ),
        .Q(env[2]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[3]_i_1_n_0 ),
        .Q(env[3]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[4]_i_1_n_0 ),
        .Q(env[4]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[5]_i_1_n_0 ),
        .Q(env[5]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[6]_i_1_n_0 ),
        .Q(env[6]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[7]_i_1_n_0 ),
        .Q(env[7]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[8]_i_1_n_0 ),
        .Q(env[8]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.env_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.env[9]_i_1_n_0 ),
        .Q(env[9]),
        .R(\comp_stat.env[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hC)) 
    \comp_stat.filling_i_1 
       (.I0(filling),
        .I1(wr),
        .O(\comp_stat.filling_i_1_n_0 ));
  FDRE \comp_stat.filling_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.filling_i_1_n_0 ),
        .Q(filling),
        .R(reset));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[0]_i_1 
       (.I0(max_phase[0]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[0]),
        .O(\comp_stat.max_phase[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[10]_i_1 
       (.I0(max_phase[10]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[10]),
        .O(\comp_stat.max_phase[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[11]_i_1 
       (.I0(max_phase[11]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[11]),
        .O(\comp_stat.max_phase[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[12]_i_1 
       (.I0(max_phase[12]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[12]),
        .O(\comp_stat.max_phase[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[13]_i_1 
       (.I0(max_phase[13]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[13]),
        .O(\comp_stat.max_phase[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[14]_i_1 
       (.I0(max_phase[14]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[14]),
        .O(\comp_stat.max_phase[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[15]_i_1 
       (.I0(max_phase[15]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[15]),
        .O(\comp_stat.max_phase[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[1]_i_1 
       (.I0(max_phase[1]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[1]),
        .O(\comp_stat.max_phase[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[2]_i_1 
       (.I0(max_phase[2]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[2]),
        .O(\comp_stat.max_phase[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[3]_i_1 
       (.I0(max_phase[3]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[3]),
        .O(\comp_stat.max_phase[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[4]_i_1 
       (.I0(max_phase[4]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[4]),
        .O(\comp_stat.max_phase[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[5]_i_1 
       (.I0(max_phase[5]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[5]),
        .O(\comp_stat.max_phase[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[6]_i_1 
       (.I0(max_phase[6]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[6]),
        .O(\comp_stat.max_phase[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[7]_i_1 
       (.I0(max_phase[7]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[7]),
        .O(\comp_stat.max_phase[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[8]_i_1 
       (.I0(max_phase[8]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[8]),
        .O(\comp_stat.max_phase[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \comp_stat.max_phase[9]_i_1 
       (.I0(max_phase[9]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(up_delay[1]),
        .I4(curr_phase[9]),
        .O(\comp_stat.max_phase[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[0] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[0]_i_1_n_0 ),
        .Q(max_phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[10] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[10]_i_1_n_0 ),
        .Q(max_phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[11] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[11]_i_1_n_0 ),
        .Q(max_phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[12] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[12]_i_1_n_0 ),
        .Q(max_phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[13] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[13]_i_1_n_0 ),
        .Q(max_phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[14] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[14]_i_1_n_0 ),
        .Q(max_phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[15] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[15]_i_1_n_0 ),
        .Q(max_phase[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[1] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[1]_i_1_n_0 ),
        .Q(max_phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[2] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[2]_i_1_n_0 ),
        .Q(max_phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[3] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[3]_i_1_n_0 ),
        .Q(max_phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[4] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[4]_i_1_n_0 ),
        .Q(max_phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[5] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[5]_i_1_n_0 ),
        .Q(max_phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[6] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[6]_i_1_n_0 ),
        .Q(max_phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[7] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[7]_i_1_n_0 ),
        .Q(max_phase[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[8] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[8]_i_1_n_0 ),
        .Q(max_phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.max_phase_reg[9] 
       (.C(clk),
        .CE(proc_up),
        .D(\comp_stat.max_phase[9]_i_1_n_0 ),
        .Q(max_phase[9]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "comp_stat/comp_stat.mem_env_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \comp_stat.mem_env_reg 
       (.ADDRARDADDR({rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\comp_stat.wr_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_comp_stat.mem_env_reg_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_comp_stat.mem_env_reg_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_comp_stat.mem_env_reg_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_comp_stat.mem_env_reg_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_comp_stat.mem_env_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_comp_stat.mem_env_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_comp_stat.mem_env_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_comp_stat.mem_env_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_comp_stat.mem_env_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_comp_stat.mem_env_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_comp_stat.mem_env_reg_DBITERR_UNCONNECTED ),
        .DINADIN(env_in[31:0]),
        .DINBDIN(env_in[63:32]),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(env_out[31:0]),
        .DOUTBDOUT(env_out[63:32]),
        .DOUTPADOUTP(\NLW_comp_stat.mem_env_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_comp_stat.mem_env_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_comp_stat.mem_env_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_comp_stat.mem_env_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_comp_stat.mem_env_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "comp_stat/comp_stat.mem_phase_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \comp_stat.mem_phase_reg 
       (.ADDRARDADDR({rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\comp_stat.wr_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_comp_stat.mem_phase_reg_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_comp_stat.mem_phase_reg_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_comp_stat.mem_phase_reg_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_comp_stat.mem_phase_reg_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_comp_stat.mem_phase_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_comp_stat.mem_phase_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_comp_stat.mem_phase_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_comp_stat.mem_phase_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_comp_stat.mem_phase_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_comp_stat.mem_phase_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_comp_stat.mem_phase_reg_DBITERR_UNCONNECTED ),
        .DINADIN(phase_in[31:0]),
        .DINBDIN(phase_in[63:32]),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(phase_out[31:0]),
        .DOUTBDOUT(phase_out[63:32]),
        .DOUTPADOUTP(\NLW_comp_stat.mem_phase_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_comp_stat.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_comp_stat.mem_phase_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_comp_stat.mem_phase_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_comp_stat.mem_phase_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  FDRE \comp_stat.mem_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr),
        .Q(mem_wr),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \comp_stat.phase[15]_i_1 
       (.I0(up_delay[2]),
        .I1(up_delay[0]),
        .I2(start_up),
        .I3(proc_up),
        .I4(\comp_stat.phase[15]_i_3_n_0 ),
        .O(\comp_stat.phase[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_10 
       (.I0(prev_phase[9]),
        .I1(pred_phase[15]),
        .O(\comp_stat.phase[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_11 
       (.I0(prev_phase[8]),
        .I1(pred_phase[14]),
        .O(\comp_stat.phase[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_stat.phase[15]_i_12 
       (.I0(down_delay[0]),
        .I1(start_down),
        .O(\comp_stat.phase[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFE0000)) 
    \comp_stat.phase[15]_i_3 
       (.I0(\comp_stat.down_pos[7]_i_3_n_0 ),
        .I1(\comp_stat.down_pos[10]_i_3_n_0 ),
        .I2(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I3(stop_down[0]),
        .I4(\comp_stat.phase[15]_i_12_n_0 ),
        .I5(down_delay[1]),
        .O(\comp_stat.phase[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_4 
       (.I0(prev_phase[15]),
        .I1(pred_phase[21]),
        .O(\comp_stat.phase[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_5 
       (.I0(prev_phase[14]),
        .I1(pred_phase[20]),
        .O(\comp_stat.phase[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_6 
       (.I0(prev_phase[13]),
        .I1(pred_phase[19]),
        .O(\comp_stat.phase[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_7 
       (.I0(prev_phase[12]),
        .I1(pred_phase[18]),
        .O(\comp_stat.phase[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_8 
       (.I0(prev_phase[11]),
        .I1(pred_phase[17]),
        .O(\comp_stat.phase[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[15]_i_9 
       (.I0(prev_phase[10]),
        .I1(pred_phase[16]),
        .O(\comp_stat.phase[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_2 
       (.I0(prev_phase[7]),
        .I1(pred_phase[13]),
        .O(\comp_stat.phase[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_3 
       (.I0(prev_phase[6]),
        .I1(pred_phase[12]),
        .O(\comp_stat.phase[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_4 
       (.I0(prev_phase[5]),
        .I1(pred_phase[11]),
        .O(\comp_stat.phase[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_5 
       (.I0(prev_phase[4]),
        .I1(pred_phase[10]),
        .O(\comp_stat.phase[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_6 
       (.I0(prev_phase[3]),
        .I1(pred_phase[9]),
        .O(\comp_stat.phase[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_7 
       (.I0(prev_phase[2]),
        .I1(pred_phase[8]),
        .O(\comp_stat.phase[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_8 
       (.I0(prev_phase[1]),
        .I1(pred_phase[7]),
        .O(\comp_stat.phase[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.phase[7]_i_9 
       (.I0(prev_phase[0]),
        .I1(pred_phase[6]),
        .O(\comp_stat.phase[7]_i_9_n_0 ));
  FDRE \comp_stat.phase_in_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[0]),
        .Q(phase_in[0]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[10]),
        .Q(phase_in[10]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[11]),
        .Q(phase_in[11]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[12]),
        .Q(phase_in[12]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[13]),
        .Q(phase_in[13]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[14]),
        .Q(phase_in[14]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[15]),
        .Q(phase_in[15]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[0]),
        .Q(phase_in[16]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[1]),
        .Q(phase_in[17]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[2]),
        .Q(phase_in[18]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[3]),
        .Q(phase_in[19]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[1]),
        .Q(phase_in[1]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[4]),
        .Q(phase_in[20]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[5]),
        .Q(phase_in[21]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[6]),
        .Q(phase_in[22]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[7]),
        .Q(phase_in[23]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[8]),
        .Q(phase_in[24]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[9]),
        .Q(phase_in[25]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[10]),
        .Q(phase_in[26]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[11]),
        .Q(phase_in[27]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[12]),
        .Q(phase_in[28]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[13]),
        .Q(phase_in[29]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[2]),
        .Q(phase_in[2]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[14]),
        .Q(phase_in[30]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_1[15]),
        .Q(phase_in[31]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[0]),
        .Q(phase_in[32]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[1]),
        .Q(phase_in[33]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[2]),
        .Q(phase_in[34]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[3]),
        .Q(phase_in[35]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[4]),
        .Q(phase_in[36]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[5]),
        .Q(phase_in[37]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[6]),
        .Q(phase_in[38]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[7]),
        .Q(phase_in[39]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[3]),
        .Q(phase_in[3]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[8]),
        .Q(phase_in[40]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[9]),
        .Q(phase_in[41]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[10]),
        .Q(phase_in[42]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[11]),
        .Q(phase_in[43]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[12]),
        .Q(phase_in[44]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[13]),
        .Q(phase_in[45]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[14]),
        .Q(phase_in[46]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_2[15]),
        .Q(phase_in[47]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[0]),
        .Q(phase_in[48]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[1]),
        .Q(phase_in[49]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[4]),
        .Q(phase_in[4]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[2]),
        .Q(phase_in[50]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[3]),
        .Q(phase_in[51]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[4]),
        .Q(phase_in[52]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[5]),
        .Q(phase_in[53]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[6]),
        .Q(phase_in[54]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[7]),
        .Q(phase_in[55]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[8]),
        .Q(phase_in[56]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[9]),
        .Q(phase_in[57]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[10]),
        .Q(phase_in[58]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[11]),
        .Q(phase_in[59]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[5]),
        .Q(phase_in[5]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[12]),
        .Q(phase_in[60]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[13]),
        .Q(phase_in[61]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[14]),
        .Q(phase_in[62]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_3[15]),
        .Q(phase_in[63]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[6]),
        .Q(phase_in[6]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[7]),
        .Q(phase_in[7]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[8]),
        .Q(phase_in[8]),
        .R(1'b0));
  FDRE \comp_stat.phase_in_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_0[9]),
        .Q(phase_in[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [0]),
        .Q(phase[0]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [10]),
        .Q(phase[10]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [11]),
        .Q(phase[11]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [12]),
        .Q(phase[12]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [13]),
        .Q(phase[13]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [14]),
        .Q(phase[14]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [15]),
        .Q(phase[15]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.phase_reg[15]_i_2 
       (.CI(\comp_stat.phase_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_stat.phase_reg[15]_i_2_CO_UNCONNECTED [7],\comp_stat.phase_reg[15]_i_2_n_1 ,\comp_stat.phase_reg[15]_i_2_n_2 ,\comp_stat.phase_reg[15]_i_2_n_3 ,\comp_stat.phase_reg[15]_i_2_n_4 ,\comp_stat.phase_reg[15]_i_2_n_5 ,\comp_stat.phase_reg[15]_i_2_n_6 ,\comp_stat.phase_reg[15]_i_2_n_7 }),
        .DI({1'b0,prev_phase[14:8]}),
        .O(\comp_stat.phase_reg0 [15:8]),
        .S({\comp_stat.phase[15]_i_4_n_0 ,\comp_stat.phase[15]_i_5_n_0 ,\comp_stat.phase[15]_i_6_n_0 ,\comp_stat.phase[15]_i_7_n_0 ,\comp_stat.phase[15]_i_8_n_0 ,\comp_stat.phase[15]_i_9_n_0 ,\comp_stat.phase[15]_i_10_n_0 ,\comp_stat.phase[15]_i_11_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [1]),
        .Q(phase[1]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [2]),
        .Q(phase[2]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [3]),
        .Q(phase[3]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [4]),
        .Q(phase[4]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [5]),
        .Q(phase[5]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [6]),
        .Q(phase[6]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [7]),
        .Q(phase[7]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.phase_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\comp_stat.phase_reg[7]_i_1_n_0 ,\comp_stat.phase_reg[7]_i_1_n_1 ,\comp_stat.phase_reg[7]_i_1_n_2 ,\comp_stat.phase_reg[7]_i_1_n_3 ,\comp_stat.phase_reg[7]_i_1_n_4 ,\comp_stat.phase_reg[7]_i_1_n_5 ,\comp_stat.phase_reg[7]_i_1_n_6 ,\comp_stat.phase_reg[7]_i_1_n_7 }),
        .DI(prev_phase[7:0]),
        .O(\comp_stat.phase_reg0 [7:0]),
        .S({\comp_stat.phase[7]_i_2_n_0 ,\comp_stat.phase[7]_i_3_n_0 ,\comp_stat.phase[7]_i_4_n_0 ,\comp_stat.phase[7]_i_5_n_0 ,\comp_stat.phase[7]_i_6_n_0 ,\comp_stat.phase[7]_i_7_n_0 ,\comp_stat.phase[7]_i_8_n_0 ,\comp_stat.phase[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [8]),
        .Q(phase[8]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.phase_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.phase_reg0 [9]),
        .Q(phase[9]),
        .R(\comp_stat.phase[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[0]_i_1 
       (.I0(up_pos[0]),
        .I1(proc_up),
        .I2(down_pos[0]),
        .O(\comp_stat.pos_1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[10]_i_1 
       (.I0(up_pos[10]),
        .I1(proc_up),
        .I2(down_pos[10]),
        .O(\comp_stat.pos_1[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[1]_i_1 
       (.I0(up_pos[1]),
        .I1(proc_up),
        .I2(down_pos[1]),
        .O(\comp_stat.pos_1[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[2]_i_1 
       (.I0(up_pos[2]),
        .I1(proc_up),
        .I2(down_pos[2]),
        .O(\comp_stat.pos_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[3]_i_1 
       (.I0(up_pos[3]),
        .I1(proc_up),
        .I2(down_pos[3]),
        .O(\comp_stat.pos_1[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[4]_i_1 
       (.I0(up_pos[4]),
        .I1(proc_up),
        .I2(down_pos[4]),
        .O(\comp_stat.pos_1[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[5]_i_1 
       (.I0(up_pos[5]),
        .I1(proc_up),
        .I2(down_pos[5]),
        .O(\comp_stat.pos_1[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[6]_i_1 
       (.I0(up_pos[6]),
        .I1(proc_up),
        .I2(down_pos[6]),
        .O(\comp_stat.pos_1[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[7]_i_1 
       (.I0(up_pos[7]),
        .I1(proc_up),
        .I2(down_pos[7]),
        .O(\comp_stat.pos_1[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[8]_i_1 
       (.I0(up_pos[8]),
        .I1(proc_up),
        .I2(down_pos[8]),
        .O(\comp_stat.pos_1[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.pos_1[9]_i_1 
       (.I0(up_pos[9]),
        .I1(proc_up),
        .I2(down_pos[9]),
        .O(\comp_stat.pos_1[9]_i_1_n_0 ));
  FDRE \comp_stat.pos_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[0]_i_1_n_0 ),
        .Q(pos_1[0]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[10]_i_1_n_0 ),
        .Q(pos_1[10]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[1]_i_1_n_0 ),
        .Q(pos_1[1]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[2]_i_1_n_0 ),
        .Q(pos_1[2]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[3]_i_1_n_0 ),
        .Q(pos_1[3]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[4]_i_1_n_0 ),
        .Q(pos_1[4]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[5]_i_1_n_0 ),
        .Q(pos_1[5]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[6]_i_1_n_0 ),
        .Q(pos_1[6]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[7]_i_1_n_0 ),
        .Q(pos_1[7]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[8]_i_1_n_0 ),
        .Q(pos_1[8]),
        .R(1'b0));
  FDRE \comp_stat.pos_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pos_1[9]_i_1_n_0 ),
        .Q(pos_1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[0]),
        .Q(pos[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[10]),
        .Q(pos[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[1]),
        .Q(pos[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[2]),
        .Q(pos[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[3]),
        .Q(pos[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[4]),
        .Q(pos[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[5]),
        .Q(pos[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[6]),
        .Q(pos[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[7]),
        .Q(pos[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[8]),
        .Q(pos[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pos_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(pos_1[9]),
        .Q(pos[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \comp_stat.pred_phase[0]_i_1 
       (.I0(\comp_stat.active_i_3_n_0 ),
        .I1(pred_phase01_in[0]),
        .I2(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I3(pred_phase0[0]),
        .O(\comp_stat.pred_phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[10]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[4]),
        .I2(pred_phase01_in[10]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(pred_phase0[10]),
        .I5(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .O(\comp_stat.pred_phase[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[11]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I1(pred_phase0[11]),
        .I2(pred_phase01_in[11]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(curr_phase[5]),
        .I5(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .O(\comp_stat.pred_phase[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[12]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[6]),
        .I2(pred_phase0[12]),
        .I3(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I4(pred_phase01_in[12]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[13]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I1(pred_phase0[13]),
        .I2(pred_phase01_in[13]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(curr_phase[7]),
        .I5(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .O(\comp_stat.pred_phase[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[14]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[8]),
        .I2(pred_phase01_in[14]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(pred_phase0[14]),
        .I5(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .O(\comp_stat.pred_phase[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[15]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[9]),
        .I2(pred_phase01_in[15]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(pred_phase0[15]),
        .I5(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .O(\comp_stat.pred_phase[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_10 
       (.I0(pred_phase[9]),
        .I1(freq[9]),
        .O(\comp_stat.pred_phase[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_11 
       (.I0(pred_phase[8]),
        .I1(freq[8]),
        .O(\comp_stat.pred_phase[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_12 
       (.I0(pred_phase[15]),
        .I1(freq[15]),
        .O(\comp_stat.pred_phase[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_13 
       (.I0(pred_phase[14]),
        .I1(freq[14]),
        .O(\comp_stat.pred_phase[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_14 
       (.I0(pred_phase[13]),
        .I1(freq[13]),
        .O(\comp_stat.pred_phase[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_15 
       (.I0(pred_phase[12]),
        .I1(freq[12]),
        .O(\comp_stat.pred_phase[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_16 
       (.I0(pred_phase[11]),
        .I1(freq[11]),
        .O(\comp_stat.pred_phase[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_17 
       (.I0(pred_phase[10]),
        .I1(freq[10]),
        .O(\comp_stat.pred_phase[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_18 
       (.I0(pred_phase[9]),
        .I1(freq[9]),
        .O(\comp_stat.pred_phase[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[15]_i_19 
       (.I0(pred_phase[8]),
        .I1(freq[8]),
        .O(\comp_stat.pred_phase[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_4 
       (.I0(pred_phase[15]),
        .I1(freq[15]),
        .O(\comp_stat.pred_phase[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_5 
       (.I0(pred_phase[14]),
        .I1(freq[14]),
        .O(\comp_stat.pred_phase[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_6 
       (.I0(pred_phase[13]),
        .I1(freq[13]),
        .O(\comp_stat.pred_phase[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_7 
       (.I0(pred_phase[12]),
        .I1(freq[12]),
        .O(\comp_stat.pred_phase[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_8 
       (.I0(pred_phase[11]),
        .I1(freq[11]),
        .O(\comp_stat.pred_phase[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[15]_i_9 
       (.I0(pred_phase[10]),
        .I1(freq[10]),
        .O(\comp_stat.pred_phase[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[16]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I1(pred_phase0[16]),
        .I2(curr_phase[10]),
        .I3(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I4(pred_phase01_in[16]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[17]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[11]),
        .I2(pred_phase0[17]),
        .I3(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I4(pred_phase01_in[17]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[18]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[12]),
        .I2(pred_phase0[18]),
        .I3(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I4(pred_phase01_in[18]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[19]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I1(pred_phase0[19]),
        .I2(pred_phase01_in[19]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(curr_phase[13]),
        .I5(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .O(\comp_stat.pred_phase[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \comp_stat.pred_phase[1]_i_1 
       (.I0(\comp_stat.active_i_3_n_0 ),
        .I1(pred_phase01_in[1]),
        .I2(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I3(pred_phase0[1]),
        .O(\comp_stat.pred_phase[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[20]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[14]),
        .I2(pred_phase0[20]),
        .I3(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I4(pred_phase01_in[20]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[21]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[15]),
        .I2(pred_phase01_in[21]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(pred_phase0[21]),
        .I5(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .O(\comp_stat.pred_phase[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[21]_i_10 
       (.I0(pred_phase[17]),
        .I1(freq[17]),
        .O(\comp_stat.pred_phase[21]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[21]_i_11 
       (.I0(pred_phase[16]),
        .I1(freq[16]),
        .O(\comp_stat.pred_phase[21]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_stat.pred_phase[21]_i_12 
       (.I0(pred_phase[21]),
        .O(\comp_stat.pred_phase[21]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_stat.pred_phase[21]_i_13 
       (.I0(pred_phase[20]),
        .O(\comp_stat.pred_phase[21]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[21]_i_14 
       (.I0(pred_phase[19]),
        .I1(freq[19]),
        .O(\comp_stat.pred_phase[21]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[21]_i_15 
       (.I0(pred_phase[18]),
        .I1(freq[18]),
        .O(\comp_stat.pred_phase[21]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[21]_i_16 
       (.I0(pred_phase[17]),
        .I1(freq[17]),
        .O(\comp_stat.pred_phase[21]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[21]_i_17 
       (.I0(pred_phase[16]),
        .I1(freq[16]),
        .O(\comp_stat.pred_phase[21]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888888A)) 
    \comp_stat.pred_phase[21]_i_2 
       (.I0(\comp_stat.pred_phase[21]_i_6_n_0 ),
        .I1(\comp_stat.pred_phase[21]_i_7_n_0 ),
        .I2(stop_down[0]),
        .I3(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I4(\comp_stat.down_pos[10]_i_3_n_0 ),
        .I5(\comp_stat.down_pos[7]_i_3_n_0 ),
        .O(\comp_stat.pred_phase[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \comp_stat.pred_phase[21]_i_5 
       (.I0(proc_up),
        .I1(\comp_stat.env[15]_i_4_n_0 ),
        .I2(stop_down[0]),
        .I3(\comp_stat.down_pos[3]_i_2_n_0 ),
        .I4(\comp_stat.down_pos[10]_i_3_n_0 ),
        .I5(\comp_stat.down_pos[7]_i_3_n_0 ),
        .O(\comp_stat.pred_phase[21]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \comp_stat.pred_phase[21]_i_6 
       (.I0(up_delay[1]),
        .I1(start_up),
        .I2(up_delay[0]),
        .I3(proc_up),
        .O(\comp_stat.pred_phase[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \comp_stat.pred_phase[21]_i_7 
       (.I0(start_down),
        .I1(down_delay[0]),
        .I2(down_delay[1]),
        .I3(proc_up),
        .O(\comp_stat.pred_phase[21]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[21]_i_8 
       (.I0(pred_phase[19]),
        .I1(freq[19]),
        .O(\comp_stat.pred_phase[21]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[21]_i_9 
       (.I0(pred_phase[18]),
        .I1(freq[18]),
        .O(\comp_stat.pred_phase[21]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \comp_stat.pred_phase[2]_i_1 
       (.I0(\comp_stat.active_i_3_n_0 ),
        .I1(pred_phase01_in[2]),
        .I2(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I3(pred_phase0[2]),
        .O(\comp_stat.pred_phase[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \comp_stat.pred_phase[3]_i_1 
       (.I0(\comp_stat.active_i_3_n_0 ),
        .I1(pred_phase01_in[3]),
        .I2(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I3(pred_phase0[3]),
        .O(\comp_stat.pred_phase[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \comp_stat.pred_phase[4]_i_1 
       (.I0(\comp_stat.active_i_3_n_0 ),
        .I1(pred_phase01_in[4]),
        .I2(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I3(pred_phase0[4]),
        .O(\comp_stat.pred_phase[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \comp_stat.pred_phase[5]_i_1 
       (.I0(\comp_stat.active_i_3_n_0 ),
        .I1(pred_phase01_in[5]),
        .I2(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I3(pred_phase0[5]),
        .O(\comp_stat.pred_phase[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[6]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I1(pred_phase0[6]),
        .I2(curr_phase[0]),
        .I3(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I4(pred_phase01_in[6]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[7]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[1]),
        .I2(pred_phase0[7]),
        .I3(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I4(pred_phase01_in[7]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_10 
       (.I0(pred_phase[1]),
        .I1(freq[1]),
        .O(\comp_stat.pred_phase[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_11 
       (.I0(pred_phase[0]),
        .I1(freq[0]),
        .O(\comp_stat.pred_phase[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_12 
       (.I0(pred_phase[7]),
        .I1(freq[7]),
        .O(\comp_stat.pred_phase[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_13 
       (.I0(pred_phase[6]),
        .I1(freq[6]),
        .O(\comp_stat.pred_phase[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_14 
       (.I0(pred_phase[5]),
        .I1(freq[5]),
        .O(\comp_stat.pred_phase[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_15 
       (.I0(pred_phase[4]),
        .I1(freq[4]),
        .O(\comp_stat.pred_phase[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_16 
       (.I0(pred_phase[3]),
        .I1(freq[3]),
        .O(\comp_stat.pred_phase[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_17 
       (.I0(pred_phase[2]),
        .I1(freq[2]),
        .O(\comp_stat.pred_phase[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_18 
       (.I0(pred_phase[1]),
        .I1(freq[1]),
        .O(\comp_stat.pred_phase[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.pred_phase[7]_i_19 
       (.I0(pred_phase[0]),
        .I1(freq[0]),
        .O(\comp_stat.pred_phase[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_4 
       (.I0(pred_phase[7]),
        .I1(freq[7]),
        .O(\comp_stat.pred_phase[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_5 
       (.I0(pred_phase[6]),
        .I1(freq[6]),
        .O(\comp_stat.pred_phase[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_6 
       (.I0(pred_phase[5]),
        .I1(freq[5]),
        .O(\comp_stat.pred_phase[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_7 
       (.I0(pred_phase[4]),
        .I1(freq[4]),
        .O(\comp_stat.pred_phase[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_8 
       (.I0(pred_phase[3]),
        .I1(freq[3]),
        .O(\comp_stat.pred_phase[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.pred_phase[7]_i_9 
       (.I0(pred_phase[2]),
        .I1(freq[2]),
        .O(\comp_stat.pred_phase[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[8]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I1(pred_phase0[8]),
        .I2(pred_phase01_in[8]),
        .I3(\comp_stat.active_i_3_n_0 ),
        .I4(curr_phase[2]),
        .I5(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .O(\comp_stat.pred_phase[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \comp_stat.pred_phase[9]_i_1 
       (.I0(\comp_stat.pred_phase[21]_i_2_n_0 ),
        .I1(curr_phase[3]),
        .I2(pred_phase0[9]),
        .I3(\comp_stat.pred_phase[21]_i_5_n_0 ),
        .I4(pred_phase01_in[9]),
        .I5(\comp_stat.active_i_3_n_0 ),
        .O(\comp_stat.pred_phase[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[0]_i_1_n_0 ),
        .Q(pred_phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[10]_i_1_n_0 ),
        .Q(pred_phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[11]_i_1_n_0 ),
        .Q(pred_phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[12]_i_1_n_0 ),
        .Q(pred_phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[13]_i_1_n_0 ),
        .Q(pred_phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[14]_i_1_n_0 ),
        .Q(pred_phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[15]_i_1_n_0 ),
        .Q(pred_phase[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.pred_phase_reg[15]_i_2 
       (.CI(\comp_stat.pred_phase_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_stat.pred_phase_reg[15]_i_2_n_0 ,\comp_stat.pred_phase_reg[15]_i_2_n_1 ,\comp_stat.pred_phase_reg[15]_i_2_n_2 ,\comp_stat.pred_phase_reg[15]_i_2_n_3 ,\comp_stat.pred_phase_reg[15]_i_2_n_4 ,\comp_stat.pred_phase_reg[15]_i_2_n_5 ,\comp_stat.pred_phase_reg[15]_i_2_n_6 ,\comp_stat.pred_phase_reg[15]_i_2_n_7 }),
        .DI(pred_phase[15:8]),
        .O(pred_phase01_in[15:8]),
        .S({\comp_stat.pred_phase[15]_i_4_n_0 ,\comp_stat.pred_phase[15]_i_5_n_0 ,\comp_stat.pred_phase[15]_i_6_n_0 ,\comp_stat.pred_phase[15]_i_7_n_0 ,\comp_stat.pred_phase[15]_i_8_n_0 ,\comp_stat.pred_phase[15]_i_9_n_0 ,\comp_stat.pred_phase[15]_i_10_n_0 ,\comp_stat.pred_phase[15]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.pred_phase_reg[15]_i_3 
       (.CI(\comp_stat.pred_phase_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\comp_stat.pred_phase_reg[15]_i_3_n_0 ,\comp_stat.pred_phase_reg[15]_i_3_n_1 ,\comp_stat.pred_phase_reg[15]_i_3_n_2 ,\comp_stat.pred_phase_reg[15]_i_3_n_3 ,\comp_stat.pred_phase_reg[15]_i_3_n_4 ,\comp_stat.pred_phase_reg[15]_i_3_n_5 ,\comp_stat.pred_phase_reg[15]_i_3_n_6 ,\comp_stat.pred_phase_reg[15]_i_3_n_7 }),
        .DI(pred_phase[15:8]),
        .O(pred_phase0[15:8]),
        .S({\comp_stat.pred_phase[15]_i_12_n_0 ,\comp_stat.pred_phase[15]_i_13_n_0 ,\comp_stat.pred_phase[15]_i_14_n_0 ,\comp_stat.pred_phase[15]_i_15_n_0 ,\comp_stat.pred_phase[15]_i_16_n_0 ,\comp_stat.pred_phase[15]_i_17_n_0 ,\comp_stat.pred_phase[15]_i_18_n_0 ,\comp_stat.pred_phase[15]_i_19_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[16]_i_1_n_0 ),
        .Q(pred_phase[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[17]_i_1_n_0 ),
        .Q(pred_phase[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[18]_i_1_n_0 ),
        .Q(pred_phase[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[19]_i_1_n_0 ),
        .Q(pred_phase[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[1]_i_1_n_0 ),
        .Q(pred_phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[20]_i_1_n_0 ),
        .Q(pred_phase[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[21]_i_1_n_0 ),
        .Q(pred_phase[21]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.pred_phase_reg[21]_i_3 
       (.CI(\comp_stat.pred_phase_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_stat.pred_phase_reg[21]_i_3_CO_UNCONNECTED [7:5],\comp_stat.pred_phase_reg[21]_i_3_n_3 ,\comp_stat.pred_phase_reg[21]_i_3_n_4 ,\comp_stat.pred_phase_reg[21]_i_3_n_5 ,\comp_stat.pred_phase_reg[21]_i_3_n_6 ,\comp_stat.pred_phase_reg[21]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,pred_phase[19:16]}),
        .O({\NLW_comp_stat.pred_phase_reg[21]_i_3_O_UNCONNECTED [7:6],pred_phase01_in[21:16]}),
        .S({1'b0,1'b0,pred_phase[21:20],\comp_stat.pred_phase[21]_i_8_n_0 ,\comp_stat.pred_phase[21]_i_9_n_0 ,\comp_stat.pred_phase[21]_i_10_n_0 ,\comp_stat.pred_phase[21]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.pred_phase_reg[21]_i_4 
       (.CI(\comp_stat.pred_phase_reg[15]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_stat.pred_phase_reg[21]_i_4_CO_UNCONNECTED [7:5],\comp_stat.pred_phase_reg[21]_i_4_n_3 ,\comp_stat.pred_phase_reg[21]_i_4_n_4 ,\comp_stat.pred_phase_reg[21]_i_4_n_5 ,\comp_stat.pred_phase_reg[21]_i_4_n_6 ,\comp_stat.pred_phase_reg[21]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,pred_phase[20:16]}),
        .O({\NLW_comp_stat.pred_phase_reg[21]_i_4_O_UNCONNECTED [7:6],pred_phase0[21:16]}),
        .S({1'b0,1'b0,\comp_stat.pred_phase[21]_i_12_n_0 ,\comp_stat.pred_phase[21]_i_13_n_0 ,\comp_stat.pred_phase[21]_i_14_n_0 ,\comp_stat.pred_phase[21]_i_15_n_0 ,\comp_stat.pred_phase[21]_i_16_n_0 ,\comp_stat.pred_phase[21]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[2]_i_1_n_0 ),
        .Q(pred_phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[3]_i_1_n_0 ),
        .Q(pred_phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[4]_i_1_n_0 ),
        .Q(pred_phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[5]_i_1_n_0 ),
        .Q(pred_phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[6]_i_1_n_0 ),
        .Q(pred_phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[7]_i_1_n_0 ),
        .Q(pred_phase[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.pred_phase_reg[7]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\comp_stat.pred_phase_reg[7]_i_2_n_0 ,\comp_stat.pred_phase_reg[7]_i_2_n_1 ,\comp_stat.pred_phase_reg[7]_i_2_n_2 ,\comp_stat.pred_phase_reg[7]_i_2_n_3 ,\comp_stat.pred_phase_reg[7]_i_2_n_4 ,\comp_stat.pred_phase_reg[7]_i_2_n_5 ,\comp_stat.pred_phase_reg[7]_i_2_n_6 ,\comp_stat.pred_phase_reg[7]_i_2_n_7 }),
        .DI(pred_phase[7:0]),
        .O(pred_phase0[7:0]),
        .S({\comp_stat.pred_phase[7]_i_4_n_0 ,\comp_stat.pred_phase[7]_i_5_n_0 ,\comp_stat.pred_phase[7]_i_6_n_0 ,\comp_stat.pred_phase[7]_i_7_n_0 ,\comp_stat.pred_phase[7]_i_8_n_0 ,\comp_stat.pred_phase[7]_i_9_n_0 ,\comp_stat.pred_phase[7]_i_10_n_0 ,\comp_stat.pred_phase[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.pred_phase_reg[7]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_stat.pred_phase_reg[7]_i_3_n_0 ,\comp_stat.pred_phase_reg[7]_i_3_n_1 ,\comp_stat.pred_phase_reg[7]_i_3_n_2 ,\comp_stat.pred_phase_reg[7]_i_3_n_3 ,\comp_stat.pred_phase_reg[7]_i_3_n_4 ,\comp_stat.pred_phase_reg[7]_i_3_n_5 ,\comp_stat.pred_phase_reg[7]_i_3_n_6 ,\comp_stat.pred_phase_reg[7]_i_3_n_7 }),
        .DI(pred_phase[7:0]),
        .O(pred_phase01_in[7:0]),
        .S({\comp_stat.pred_phase[7]_i_12_n_0 ,\comp_stat.pred_phase[7]_i_13_n_0 ,\comp_stat.pred_phase[7]_i_14_n_0 ,\comp_stat.pred_phase[7]_i_15_n_0 ,\comp_stat.pred_phase[7]_i_16_n_0 ,\comp_stat.pred_phase[7]_i_17_n_0 ,\comp_stat.pred_phase[7]_i_18_n_0 ,\comp_stat.pred_phase[7]_i_19_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[8]_i_1_n_0 ),
        .Q(pred_phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.pred_phase_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.pred_phase[9]_i_1_n_0 ),
        .Q(pred_phase[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[0]),
        .Q(prev_phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[10]),
        .Q(prev_phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[11]),
        .Q(prev_phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[12]),
        .Q(prev_phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[13]),
        .Q(prev_phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[14]),
        .Q(prev_phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[15]),
        .Q(prev_phase[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[1]),
        .Q(prev_phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[2]),
        .Q(prev_phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[3]),
        .Q(prev_phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[4]),
        .Q(prev_phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[5]),
        .Q(prev_phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[6]),
        .Q(prev_phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[7]),
        .Q(prev_phase[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[8]),
        .Q(prev_phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.prev_phase_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_phase[9]),
        .Q(prev_phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD0C)) 
    \comp_stat.proc_up_i_1 
       (.I0(\comp_stat.proc_up_i_2_n_0 ),
        .I1(filling),
        .I2(wr),
        .I3(proc_up),
        .O(\comp_stat.proc_up_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_stat.proc_up_i_2 
       (.I0(up_count[0]),
        .I1(up_count[6]),
        .I2(up_count[10]),
        .I3(\comp_stat.rd_ptr_rep[8]_i_10_n_0 ),
        .I4(\comp_stat.rd_ptr_rep[8]_i_11_n_0 ),
        .I5(\comp_stat.rd_ptr_rep[8]_i_12_n_0 ),
        .O(\comp_stat.proc_up_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.proc_up_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.proc_up_i_1_n_0 ),
        .Q(proc_up),
        .R(reset));
  LUT3 #(
    .INIT(8'h74)) 
    \comp_stat.rd_pos_1[0]_i_1 
       (.I0(\comp_stat.rd_pos_1_reg_n_0_[0] ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I2(max_pos[0]),
        .O(\comp_stat.rd_pos_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4FF44F4F444)) 
    \comp_stat.rd_pos_1[1]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I1(max_pos[1]),
        .I2(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I3(\comp_stat.rd_pos_1_reg_n_0_[0] ),
        .I4(\comp_stat.rd_pos_1_reg_n_0_[1] ),
        .I5(\comp_stat.rd_ptr_rep[1]_i_2_n_0 ),
        .O(\comp_stat.rd_pos_1[1]_i_1_n_0 ));
  FDRE \comp_stat.rd_pos_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.rd_pos_1[0]_i_1_n_0 ),
        .Q(\comp_stat.rd_pos_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \comp_stat.rd_pos_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.rd_pos_1[1]_i_1_n_0 ),
        .Q(\comp_stat.rd_pos_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \comp_stat.rd_pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.rd_pos_1_reg_n_0_[0] ),
        .Q(rd_pos[0]),
        .R(1'b0));
  FDRE \comp_stat.rd_pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.rd_pos_1_reg_n_0_[1] ),
        .Q(rd_pos[1]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[0] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[0]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[1] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[1]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[2] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[2]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[3] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[3]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[4] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[4]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[5] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[5]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[6] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[6]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[7] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[7]_i_1_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg[8] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[8]_i_2_n_0 ),
        .Q(\comp_stat.rd_ptr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[0] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[1] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[2] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[2]_i_1_n_0 ),
        .Q(rd_ptr[2]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[3] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[3]_i_1_n_0 ),
        .Q(rd_ptr[3]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[4] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[4]_i_1_n_0 ),
        .Q(rd_ptr[4]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[5] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[5]_i_1_n_0 ),
        .Q(rd_ptr[5]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[6] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[6]_i_1_n_0 ),
        .Q(rd_ptr[6]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[7] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[7]_i_1_n_0 ),
        .Q(rd_ptr[7]),
        .R(1'b0));
  FDRE \comp_stat.rd_ptr_reg_rep[8] 
       (.C(clk),
        .CE(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ),
        .D(\comp_stat.rd_ptr_rep[8]_i_2_n_0 ),
        .Q(rd_ptr[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    \comp_stat.rd_ptr_rep[0]_i_1 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I2(max_pos[2]),
        .O(\comp_stat.rd_ptr_rep[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4FF44F4F444)) 
    \comp_stat.rd_ptr_rep[1]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I1(max_pos[3]),
        .I2(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I5(\comp_stat.rd_ptr_rep[1]_i_2_n_0 ),
        .O(\comp_stat.rd_ptr_rep[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \comp_stat.rd_ptr_rep[1]_i_2 
       (.I0(filling),
        .I1(proc_up),
        .O(\comp_stat.rd_ptr_rep[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4FFF4)) 
    \comp_stat.rd_ptr_rep[2]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I1(max_pos[4]),
        .I2(\comp_stat.rd_ptr_rep[2]_i_2_n_0 ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I4(\comp_stat.rd_ptr_rep[2]_i_3_n_0 ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .O(\comp_stat.rd_ptr_rep[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11100001)) 
    \comp_stat.rd_ptr_rep[2]_i_2 
       (.I0(proc_up),
        .I1(filling),
        .I2(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .O(\comp_stat.rd_ptr_rep[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \comp_stat.rd_ptr_rep[2]_i_3 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .O(\comp_stat.rd_ptr_rep[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4FFF4)) 
    \comp_stat.rd_ptr_rep[3]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I1(max_pos[5]),
        .I2(\comp_stat.rd_ptr_rep[3]_i_2_n_0 ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I4(\comp_stat.rd_ptr_rep[3]_i_3_n_0 ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .O(\comp_stat.rd_ptr_rep[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111000000001)) 
    \comp_stat.rd_ptr_rep[3]_i_2 
       (.I0(proc_up),
        .I1(filling),
        .I2(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .O(\comp_stat.rd_ptr_rep[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \comp_stat.rd_ptr_rep[3]_i_3 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .O(\comp_stat.rd_ptr_rep[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4FFF4)) 
    \comp_stat.rd_ptr_rep[4]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I1(max_pos[6]),
        .I2(\comp_stat.rd_ptr_rep[4]_i_2_n_0 ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I4(\comp_stat.rd_ptr_rep[4]_i_3_n_0 ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .O(\comp_stat.rd_ptr_rep[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \comp_stat.rd_ptr_rep[4]_i_2 
       (.I0(\comp_stat.rd_ptr_rep[1]_i_2_n_0 ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .O(\comp_stat.rd_ptr_rep[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \comp_stat.rd_ptr_rep[4]_i_3 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .O(\comp_stat.rd_ptr_rep[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF44444F4)) 
    \comp_stat.rd_ptr_rep[5]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I1(max_pos[7]),
        .I2(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I3(\comp_stat.rd_ptr_rep[5]_i_2_n_0 ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[5] ),
        .I5(\comp_stat.rd_ptr_rep[5]_i_3_n_0 ),
        .O(\comp_stat.rd_ptr_rep[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \comp_stat.rd_ptr_rep[5]_i_2 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .O(\comp_stat.rd_ptr_rep[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \comp_stat.rd_ptr_rep[5]_i_3 
       (.I0(proc_up),
        .I1(filling),
        .I2(\comp_stat.rd_ptr_rep[5]_i_4_n_0 ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[5] ),
        .O(\comp_stat.rd_ptr_rep[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_stat.rd_ptr_rep[5]_i_4 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .O(\comp_stat.rd_ptr_rep[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEEAFFFFAEEA)) 
    \comp_stat.rd_ptr_rep[6]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[6]_i_2_n_0 ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I2(\comp_stat.rd_ptr_rep[6]_i_3_n_0 ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .I4(max_pos[8]),
        .I5(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .O(\comp_stat.rd_ptr_rep[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \comp_stat.rd_ptr_rep[6]_i_2 
       (.I0(proc_up),
        .I1(filling),
        .I2(\comp_stat.rd_ptr_rep[8]_i_8_n_0 ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .O(\comp_stat.rd_ptr_rep[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \comp_stat.rd_ptr_rep[6]_i_3 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[5] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .O(\comp_stat.rd_ptr_rep[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEEAFFFFAEEA)) 
    \comp_stat.rd_ptr_rep[7]_i_1 
       (.I0(\comp_stat.rd_ptr_rep[7]_i_2_n_0 ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I2(\comp_stat.rd_ptr_rep[7]_i_3_n_0 ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[7] ),
        .I4(max_pos[9]),
        .I5(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .O(\comp_stat.rd_ptr_rep[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11100001)) 
    \comp_stat.rd_ptr_rep[7]_i_2 
       (.I0(proc_up),
        .I1(filling),
        .I2(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_8_n_0 ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[7] ),
        .O(\comp_stat.rd_ptr_rep[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \comp_stat.rd_ptr_rep[7]_i_3 
       (.I0(\comp_stat.rd_ptr_rep[6]_i_3_n_0 ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .O(\comp_stat.rd_ptr_rep[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0F0F0F0F0F0FBF)) 
    \comp_stat.rd_ptr_rep[8]_i_1 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[8] ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_3_n_0 ),
        .I2(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .I3(proc_up),
        .I4(\comp_stat.rd_pos_1_reg_n_0_[0] ),
        .I5(\comp_stat.rd_pos_1_reg_n_0_[1] ),
        .O(\comp_stat.rd_ptr_rep[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_stat.rd_ptr_rep[8]_i_10 
       (.I0(up_count[8]),
        .I1(up_count[7]),
        .O(\comp_stat.rd_ptr_rep[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_stat.rd_ptr_rep[8]_i_11 
       (.I0(up_count[5]),
        .I1(up_count[4]),
        .O(\comp_stat.rd_ptr_rep[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_stat.rd_ptr_rep[8]_i_12 
       (.I0(up_count[1]),
        .I1(up_count[2]),
        .I2(up_count[9]),
        .I3(up_count[3]),
        .O(\comp_stat.rd_ptr_rep[8]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \comp_stat.rd_ptr_rep[8]_i_2 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_5_n_0 ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ),
        .I2(\comp_stat.rd_ptr_rep[8]_i_7_n_0 ),
        .I3(max_pos[10]),
        .I4(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ),
        .O(\comp_stat.rd_ptr_rep[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \comp_stat.rd_ptr_rep[8]_i_3 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[7] ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_8_n_0 ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .O(\comp_stat.rd_ptr_rep[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF7)) 
    \comp_stat.rd_ptr_rep[8]_i_4 
       (.I0(proc_up),
        .I1(\comp_stat.rd_ptr_rep[8]_i_9_n_0 ),
        .I2(\comp_stat.rd_ptr_rep[8]_i_10_n_0 ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_11_n_0 ),
        .I4(\comp_stat.rd_ptr_rep[8]_i_12_n_0 ),
        .I5(filling),
        .O(\comp_stat.rd_ptr_rep[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111111000000001)) 
    \comp_stat.rd_ptr_rep[8]_i_5 
       (.I0(proc_up),
        .I1(filling),
        .I2(\comp_stat.rd_ptr_reg_n_0_[7] ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_8_n_0 ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[8] ),
        .O(\comp_stat.rd_ptr_rep[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFD00000000)) 
    \comp_stat.rd_ptr_rep[8]_i_6 
       (.I0(\comp_stat.rd_ptr_rep[8]_i_9_n_0 ),
        .I1(\comp_stat.rd_ptr_rep[8]_i_10_n_0 ),
        .I2(\comp_stat.rd_ptr_rep[8]_i_11_n_0 ),
        .I3(\comp_stat.rd_ptr_rep[8]_i_12_n_0 ),
        .I4(filling),
        .I5(proc_up),
        .O(\comp_stat.rd_ptr_rep[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9555)) 
    \comp_stat.rd_ptr_rep[8]_i_7 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[8] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[7] ),
        .I2(\comp_stat.rd_ptr_rep[6]_i_3_n_0 ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[6] ),
        .O(\comp_stat.rd_ptr_rep[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_stat.rd_ptr_rep[8]_i_8 
       (.I0(\comp_stat.rd_ptr_reg_n_0_[5] ),
        .I1(\comp_stat.rd_ptr_reg_n_0_[3] ),
        .I2(\comp_stat.rd_ptr_reg_n_0_[1] ),
        .I3(\comp_stat.rd_ptr_reg_n_0_[0] ),
        .I4(\comp_stat.rd_ptr_reg_n_0_[2] ),
        .I5(\comp_stat.rd_ptr_reg_n_0_[4] ),
        .O(\comp_stat.rd_ptr_rep[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \comp_stat.rd_ptr_rep[8]_i_9 
       (.I0(up_count[10]),
        .I1(up_count[6]),
        .I2(up_count[0]),
        .O(\comp_stat.rd_ptr_rep[8]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \comp_stat.start_down_i_1 
       (.I0(\comp_stat.start_down_i_2_n_0 ),
        .I1(proc_up),
        .I2(filling),
        .O(\comp_stat.start_down_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \comp_stat.start_down_i_2 
       (.I0(up_count[9]),
        .I1(up_count[6]),
        .I2(\comp_stat.start_down_i_3_n_0 ),
        .I3(up_count[7]),
        .I4(up_count[8]),
        .I5(up_count[10]),
        .O(\comp_stat.start_down_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_stat.start_down_i_3 
       (.I0(up_count[3]),
        .I1(up_count[0]),
        .I2(up_count[1]),
        .I3(up_count[2]),
        .I4(up_count[4]),
        .I5(up_count[5]),
        .O(\comp_stat.start_down_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.start_down_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.start_down_i_1_n_0 ),
        .Q(start_down),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.start_up_i_1 
       (.I0(start_up),
        .I1(wr),
        .I2(filling),
        .O(\comp_stat.start_up_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.start_up_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.start_up_i_1_n_0 ),
        .Q(start_up),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000004500)) 
    \comp_stat.stop_down[0]_i_1 
       (.I0(proc_up),
        .I1(stop_down[0]),
        .I2(stop_down[1]),
        .I3(active),
        .I4(reset),
        .I5(\comp_stat.down_pos[5]_i_3_n_0 ),
        .O(\comp_stat.stop_down[0]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.stop_down_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.stop_down[0]_i_1_n_0 ),
        .Q(stop_down[0]),
        .R(1'b0));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.stop_down_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(stop_down[0]),
        .Q(stop_down[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[0]_i_1 
       (.I0(up_count0[0]),
        .I1(filling),
        .I2(up_count__0[0]),
        .O(p_1_in__0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \comp_stat.up_count[10]_i_1 
       (.I0(proc_up),
        .I1(filling),
        .O(\comp_stat.up_count[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[10]_i_10 
       (.I0(up_count[9]),
        .I1(up_count[10]),
        .O(\comp_stat.up_count[10]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[10]_i_11 
       (.I0(up_count[8]),
        .I1(up_count[9]),
        .O(\comp_stat.up_count[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[10]_i_12 
       (.I0(up_count[7]),
        .I1(up_count[8]),
        .O(\comp_stat.up_count[10]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[10]_i_2 
       (.I0(up_count0[10]),
        .I1(filling),
        .I2(up_count__0[10]),
        .O(p_1_in__0[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[10]_i_5 
       (.I0(size[8]),
        .I1(max_pos[8]),
        .O(\comp_stat.up_count[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[10]_i_6 
       (.I0(size[7]),
        .I1(max_pos[7]),
        .O(\comp_stat.up_count[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[10]_i_7 
       (.I0(max_pos[9]),
        .I1(size[9]),
        .I2(size[10]),
        .I3(max_pos[10]),
        .O(\comp_stat.up_count[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[10]_i_8 
       (.I0(max_pos[8]),
        .I1(size[8]),
        .I2(size[9]),
        .I3(max_pos[9]),
        .O(\comp_stat.up_count[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[10]_i_9 
       (.I0(max_pos[7]),
        .I1(size[7]),
        .I2(size[8]),
        .I3(max_pos[8]),
        .O(\comp_stat.up_count[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[1]_i_1 
       (.I0(up_count0[1]),
        .I1(filling),
        .I2(up_count__0[1]),
        .O(p_1_in__0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[2]_i_1 
       (.I0(up_count0[2]),
        .I1(filling),
        .I2(up_count__0[2]),
        .O(p_1_in__0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[3]_i_1 
       (.I0(up_count0[3]),
        .I1(filling),
        .I2(up_count__0[3]),
        .O(p_1_in__0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[4]_i_1 
       (.I0(up_count0[4]),
        .I1(filling),
        .I2(up_count__0[4]),
        .O(p_1_in__0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[5]_i_1 
       (.I0(up_count0[5]),
        .I1(filling),
        .I2(up_count__0[5]),
        .O(p_1_in__0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[6]_i_1 
       (.I0(up_count0[6]),
        .I1(filling),
        .I2(up_count__0[6]),
        .O(p_1_in__0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[7]_i_1 
       (.I0(up_count0[7]),
        .I1(filling),
        .I2(up_count__0[7]),
        .O(p_1_in__0[7]));
  LUT2 #(
    .INIT(4'hB)) 
    \comp_stat.up_count[7]_i_10 
       (.I0(size[0]),
        .I1(max_pos[0]),
        .O(\comp_stat.up_count[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[7]_i_11 
       (.I0(max_pos[6]),
        .I1(size[6]),
        .I2(size[7]),
        .I3(max_pos[7]),
        .O(\comp_stat.up_count[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[7]_i_12 
       (.I0(max_pos[5]),
        .I1(size[5]),
        .I2(size[6]),
        .I3(max_pos[6]),
        .O(\comp_stat.up_count[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[7]_i_13 
       (.I0(max_pos[4]),
        .I1(size[4]),
        .I2(size[5]),
        .I3(max_pos[5]),
        .O(\comp_stat.up_count[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[7]_i_14 
       (.I0(max_pos[3]),
        .I1(size[3]),
        .I2(size[4]),
        .I3(max_pos[4]),
        .O(\comp_stat.up_count[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[7]_i_15 
       (.I0(max_pos[2]),
        .I1(size[2]),
        .I2(size[3]),
        .I3(max_pos[3]),
        .O(\comp_stat.up_count[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \comp_stat.up_count[7]_i_16 
       (.I0(max_pos[1]),
        .I1(size[1]),
        .I2(size[2]),
        .I3(max_pos[2]),
        .O(\comp_stat.up_count[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \comp_stat.up_count[7]_i_17 
       (.I0(max_pos[0]),
        .I1(size[0]),
        .I2(size[1]),
        .I3(max_pos[1]),
        .O(\comp_stat.up_count[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[7]_i_18 
       (.I0(max_pos[0]),
        .I1(size[0]),
        .O(\comp_stat.up_count[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_stat.up_count[7]_i_19 
       (.I0(up_count[10]),
        .I1(\comp_stat.up_count[7]_i_28_n_0 ),
        .I2(up_count[8]),
        .I3(up_count[7]),
        .I4(up_count[6]),
        .I5(up_count[9]),
        .O(\comp_stat.up_count[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[7]_i_20 
       (.I0(up_count[6]),
        .I1(up_count[7]),
        .O(\comp_stat.up_count[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[7]_i_21 
       (.I0(up_count[5]),
        .I1(up_count[6]),
        .O(\comp_stat.up_count[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[7]_i_22 
       (.I0(up_count[4]),
        .I1(up_count[5]),
        .O(\comp_stat.up_count[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[7]_i_23 
       (.I0(up_count[3]),
        .I1(up_count[4]),
        .O(\comp_stat.up_count[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_stat.up_count[7]_i_24 
       (.I0(up_count[2]),
        .I1(up_count[3]),
        .O(\comp_stat.up_count[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.up_count[7]_i_25 
       (.I0(p_0_out),
        .I1(up_count[2]),
        .O(\comp_stat.up_count[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.up_count[7]_i_26 
       (.I0(p_0_out),
        .I1(up_count[1]),
        .O(\comp_stat.up_count[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \comp_stat.up_count[7]_i_27 
       (.I0(up_count[0]),
        .I1(up_count[9]),
        .I2(\comp_stat.up_count[7]_i_30_n_0 ),
        .I3(\comp_stat.up_count[7]_i_31_n_0 ),
        .I4(\comp_stat.rd_ptr_rep[8]_i_10_n_0 ),
        .I5(up_count[10]),
        .O(\comp_stat.up_count[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_stat.up_count[7]_i_28 
       (.I0(up_count[0]),
        .I1(up_count[1]),
        .I2(up_count[2]),
        .I3(up_count[5]),
        .I4(up_count[4]),
        .I5(up_count[3]),
        .O(\comp_stat.up_count[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_stat.up_count[7]_i_29 
       (.I0(up_count[10]),
        .I1(\comp_stat.up_count[7]_i_28_n_0 ),
        .I2(up_count[8]),
        .I3(up_count[7]),
        .I4(up_count[6]),
        .I5(up_count[9]),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'hBA)) 
    \comp_stat.up_count[7]_i_30 
       (.I0(up_count[8]),
        .I1(up_count[7]),
        .I2(up_count[6]),
        .O(\comp_stat.up_count[7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_stat.up_count[7]_i_31 
       (.I0(up_count[0]),
        .I1(up_count[1]),
        .I2(up_count[2]),
        .I3(up_count[5]),
        .I4(up_count[4]),
        .I5(up_count[3]),
        .O(\comp_stat.up_count[7]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[7]_i_4 
       (.I0(size[6]),
        .I1(max_pos[6]),
        .O(\comp_stat.up_count[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[7]_i_5 
       (.I0(size[5]),
        .I1(max_pos[5]),
        .O(\comp_stat.up_count[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[7]_i_6 
       (.I0(size[4]),
        .I1(max_pos[4]),
        .O(\comp_stat.up_count[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[7]_i_7 
       (.I0(size[3]),
        .I1(max_pos[3]),
        .O(\comp_stat.up_count[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[7]_i_8 
       (.I0(size[2]),
        .I1(max_pos[2]),
        .O(\comp_stat.up_count[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_stat.up_count[7]_i_9 
       (.I0(size[1]),
        .I1(max_pos[1]),
        .O(\comp_stat.up_count[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[8]_i_1 
       (.I0(up_count0[8]),
        .I1(filling),
        .I2(up_count__0[8]),
        .O(p_1_in__0[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \comp_stat.up_count[9]_i_1 
       (.I0(up_count0[9]),
        .I1(filling),
        .I2(up_count__0[9]),
        .O(p_1_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[0] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(up_count[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[10] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(up_count[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.up_count_reg[10]_i_3 
       (.CI(\comp_stat.up_count_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_stat.up_count_reg[10]_i_3_CO_UNCONNECTED [7:2],\comp_stat.up_count_reg[10]_i_3_n_6 ,\comp_stat.up_count_reg[10]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\comp_stat.up_count[10]_i_5_n_0 ,\comp_stat.up_count[10]_i_6_n_0 }),
        .O({\NLW_comp_stat.up_count_reg[10]_i_3_O_UNCONNECTED [7:3],up_count0[10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\comp_stat.up_count[10]_i_7_n_0 ,\comp_stat.up_count[10]_i_8_n_0 ,\comp_stat.up_count[10]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.up_count_reg[10]_i_4 
       (.CI(\comp_stat.up_count_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_stat.up_count_reg[10]_i_4_CO_UNCONNECTED [7:2],\comp_stat.up_count_reg[10]_i_4_n_6 ,\comp_stat.up_count_reg[10]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,up_count[8:7]}),
        .O({\NLW_comp_stat.up_count_reg[10]_i_4_O_UNCONNECTED [7:3],up_count__0[10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\comp_stat.up_count[10]_i_10_n_0 ,\comp_stat.up_count[10]_i_11_n_0 ,\comp_stat.up_count[10]_i_12_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[1] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(up_count[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[2] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(up_count[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[3] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(up_count[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[4] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(up_count[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[5] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(up_count[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[6] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(up_count[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[7] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(up_count[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.up_count_reg[7]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\comp_stat.up_count_reg[7]_i_2_n_0 ,\comp_stat.up_count_reg[7]_i_2_n_1 ,\comp_stat.up_count_reg[7]_i_2_n_2 ,\comp_stat.up_count_reg[7]_i_2_n_3 ,\comp_stat.up_count_reg[7]_i_2_n_4 ,\comp_stat.up_count_reg[7]_i_2_n_5 ,\comp_stat.up_count_reg[7]_i_2_n_6 ,\comp_stat.up_count_reg[7]_i_2_n_7 }),
        .DI({\comp_stat.up_count[7]_i_4_n_0 ,\comp_stat.up_count[7]_i_5_n_0 ,\comp_stat.up_count[7]_i_6_n_0 ,\comp_stat.up_count[7]_i_7_n_0 ,\comp_stat.up_count[7]_i_8_n_0 ,\comp_stat.up_count[7]_i_9_n_0 ,\comp_stat.up_count[7]_i_10_n_0 ,1'b1}),
        .O(up_count0[7:0]),
        .S({\comp_stat.up_count[7]_i_11_n_0 ,\comp_stat.up_count[7]_i_12_n_0 ,\comp_stat.up_count[7]_i_13_n_0 ,\comp_stat.up_count[7]_i_14_n_0 ,\comp_stat.up_count[7]_i_15_n_0 ,\comp_stat.up_count[7]_i_16_n_0 ,\comp_stat.up_count[7]_i_17_n_0 ,\comp_stat.up_count[7]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_stat.up_count_reg[7]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_stat.up_count_reg[7]_i_3_n_0 ,\comp_stat.up_count_reg[7]_i_3_n_1 ,\comp_stat.up_count_reg[7]_i_3_n_2 ,\comp_stat.up_count_reg[7]_i_3_n_3 ,\comp_stat.up_count_reg[7]_i_3_n_4 ,\comp_stat.up_count_reg[7]_i_3_n_5 ,\comp_stat.up_count_reg[7]_i_3_n_6 ,\comp_stat.up_count_reg[7]_i_3_n_7 }),
        .DI({up_count[6:2],\comp_stat.up_count[7]_i_19_n_0 ,up_count[1:0]}),
        .O(up_count__0[7:0]),
        .S({\comp_stat.up_count[7]_i_20_n_0 ,\comp_stat.up_count[7]_i_21_n_0 ,\comp_stat.up_count[7]_i_22_n_0 ,\comp_stat.up_count[7]_i_23_n_0 ,\comp_stat.up_count[7]_i_24_n_0 ,\comp_stat.up_count[7]_i_25_n_0 ,\comp_stat.up_count[7]_i_26_n_0 ,\comp_stat.up_count[7]_i_27_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[8] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(up_count[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_count_reg[9] 
       (.C(clk),
        .CE(\comp_stat.up_count[10]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(up_count[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \comp_stat.up_delay[0]_i_1 
       (.I0(start_up),
        .I1(up_delay[0]),
        .I2(up_delay[0]),
        .O(\comp_stat.up_delay[0]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_delay[0]_i_1_n_0 ),
        .Q(up_delay[0]),
        .R(reset));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(up_delay[0]),
        .Q(up_delay[1]),
        .R(1'b0));
  (* mark_debug = "yes" *) 
  FDRE \comp_stat.up_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(up_delay[1]),
        .Q(up_delay[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCACCC3CCCACCCC)) 
    \comp_stat.up_pos[0]_i_1 
       (.I0(max_pos[0]),
        .I1(up_pos[0]),
        .I2(reset),
        .I3(start_up),
        .I4(up_delay[0]),
        .I5(proc_up),
        .O(\comp_stat.up_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFCFE03010001)) 
    \comp_stat.up_pos[10]_i_1 
       (.I0(\comp_stat.up_pos[10]_i_2_n_0 ),
        .I1(start_up),
        .I2(reset),
        .I3(up_delay[0]),
        .I4(max_pos[10]),
        .I5(up_pos[10]),
        .O(\comp_stat.up_pos[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \comp_stat.up_pos[10]_i_2 
       (.I0(up_pos[6]),
        .I1(\comp_stat.up_pos[5]_i_2_n_0 ),
        .I2(up_pos[5]),
        .I3(up_pos[9]),
        .I4(up_pos[8]),
        .I5(up_pos[7]),
        .O(\comp_stat.up_pos[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF000F078F078F0)) 
    \comp_stat.up_pos[1]_i_1 
       (.I0(up_pos[0]),
        .I1(proc_up),
        .I2(up_pos[1]),
        .I3(\comp_stat.up_pos[9]_i_4_n_0 ),
        .I4(max_pos[1]),
        .I5(up_delay[0]),
        .O(\comp_stat.up_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFA000C0005)) 
    \comp_stat.up_pos[2]_i_1 
       (.I0(\comp_stat.up_pos[2]_i_2_n_0 ),
        .I1(max_pos[2]),
        .I2(start_up),
        .I3(reset),
        .I4(up_delay[0]),
        .I5(up_pos[2]),
        .O(\comp_stat.up_pos[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \comp_stat.up_pos[2]_i_2 
       (.I0(up_pos[0]),
        .I1(proc_up),
        .I2(up_pos[1]),
        .O(\comp_stat.up_pos[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFA000C0005)) 
    \comp_stat.up_pos[3]_i_1 
       (.I0(\comp_stat.up_pos[3]_i_2_n_0 ),
        .I1(max_pos[3]),
        .I2(start_up),
        .I3(reset),
        .I4(up_delay[0]),
        .I5(up_pos[3]),
        .O(\comp_stat.up_pos[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \comp_stat.up_pos[3]_i_2 
       (.I0(up_pos[1]),
        .I1(proc_up),
        .I2(up_pos[0]),
        .I3(up_pos[2]),
        .O(\comp_stat.up_pos[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFA000C0005)) 
    \comp_stat.up_pos[4]_i_1 
       (.I0(\comp_stat.up_pos[4]_i_2_n_0 ),
        .I1(max_pos[4]),
        .I2(start_up),
        .I3(reset),
        .I4(up_delay[0]),
        .I5(up_pos[4]),
        .O(\comp_stat.up_pos[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \comp_stat.up_pos[4]_i_2 
       (.I0(up_pos[2]),
        .I1(up_pos[0]),
        .I2(proc_up),
        .I3(up_pos[1]),
        .I4(up_pos[3]),
        .O(\comp_stat.up_pos[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFA000C0005)) 
    \comp_stat.up_pos[5]_i_1 
       (.I0(\comp_stat.up_pos[5]_i_2_n_0 ),
        .I1(max_pos[5]),
        .I2(start_up),
        .I3(reset),
        .I4(up_delay[0]),
        .I5(up_pos[5]),
        .O(\comp_stat.up_pos[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \comp_stat.up_pos[5]_i_2 
       (.I0(up_pos[3]),
        .I1(up_pos[1]),
        .I2(proc_up),
        .I3(up_pos[0]),
        .I4(up_pos[2]),
        .I5(up_pos[4]),
        .O(\comp_stat.up_pos[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFA000C0005)) 
    \comp_stat.up_pos[6]_i_1 
       (.I0(\comp_stat.up_pos[7]_i_2_n_0 ),
        .I1(max_pos[6]),
        .I2(start_up),
        .I3(reset),
        .I4(up_delay[0]),
        .I5(up_pos[6]),
        .O(\comp_stat.up_pos[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF808FB0BF80BF80)) 
    \comp_stat.up_pos[7]_i_1 
       (.I0(max_pos[7]),
        .I1(up_delay[0]),
        .I2(\comp_stat.up_pos[9]_i_4_n_0 ),
        .I3(up_pos[7]),
        .I4(\comp_stat.up_pos[7]_i_2_n_0 ),
        .I5(up_pos[6]),
        .O(\comp_stat.up_pos[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \comp_stat.up_pos[7]_i_2 
       (.I0(\comp_stat.up_pos[5]_i_2_n_0 ),
        .I1(up_pos[5]),
        .O(\comp_stat.up_pos[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF77FFF0008800)) 
    \comp_stat.up_pos[8]_i_1 
       (.I0(\comp_stat.up_pos[9]_i_3_n_0 ),
        .I1(up_pos[7]),
        .I2(max_pos[8]),
        .I3(\comp_stat.up_pos[9]_i_4_n_0 ),
        .I4(up_delay[0]),
        .I5(up_pos[8]),
        .O(\comp_stat.up_pos[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFBBFFF0004400)) 
    \comp_stat.up_pos[9]_i_1 
       (.I0(\comp_stat.up_pos[9]_i_2_n_0 ),
        .I1(\comp_stat.up_pos[9]_i_3_n_0 ),
        .I2(max_pos[9]),
        .I3(\comp_stat.up_pos[9]_i_4_n_0 ),
        .I4(up_delay[0]),
        .I5(up_pos[9]),
        .O(\comp_stat.up_pos[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \comp_stat.up_pos[9]_i_2 
       (.I0(up_pos[8]),
        .I1(up_pos[7]),
        .O(\comp_stat.up_pos[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \comp_stat.up_pos[9]_i_3 
       (.I0(up_pos[6]),
        .I1(up_pos[5]),
        .I2(\comp_stat.up_pos[5]_i_2_n_0 ),
        .O(\comp_stat.up_pos[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \comp_stat.up_pos[9]_i_4 
       (.I0(start_up),
        .I1(reset),
        .O(\comp_stat.up_pos[9]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[0]_i_1_n_0 ),
        .Q(up_pos[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[10]_i_1_n_0 ),
        .Q(up_pos[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[1]_i_1_n_0 ),
        .Q(up_pos[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[2]_i_1_n_0 ),
        .Q(up_pos[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[3]_i_1_n_0 ),
        .Q(up_pos[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[4]_i_1_n_0 ),
        .Q(up_pos[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[5]_i_1_n_0 ),
        .Q(up_pos[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[6]_i_1_n_0 ),
        .Q(up_pos[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[7]_i_1_n_0 ),
        .Q(up_pos[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[8]_i_1_n_0 ),
        .Q(up_pos[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \comp_stat.up_pos_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_stat.up_pos[9]_i_1_n_0 ),
        .Q(up_pos[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_stat.wr_ptr[0]_i_1 
       (.I0(\comp_stat.wr_ptr_reg [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.wr_ptr[1]_i_1 
       (.I0(\comp_stat.wr_ptr_reg [0]),
        .I1(\comp_stat.wr_ptr_reg [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \comp_stat.wr_ptr[2]_i_1 
       (.I0(\comp_stat.wr_ptr_reg [0]),
        .I1(\comp_stat.wr_ptr_reg [1]),
        .I2(\comp_stat.wr_ptr_reg [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_stat.wr_ptr[3]_i_1 
       (.I0(\comp_stat.wr_ptr_reg [1]),
        .I1(\comp_stat.wr_ptr_reg [0]),
        .I2(\comp_stat.wr_ptr_reg [2]),
        .I3(\comp_stat.wr_ptr_reg [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp_stat.wr_ptr[4]_i_1 
       (.I0(\comp_stat.wr_ptr_reg [2]),
        .I1(\comp_stat.wr_ptr_reg [0]),
        .I2(\comp_stat.wr_ptr_reg [1]),
        .I3(\comp_stat.wr_ptr_reg [3]),
        .I4(\comp_stat.wr_ptr_reg [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \comp_stat.wr_ptr[5]_i_1 
       (.I0(\comp_stat.wr_ptr_reg [3]),
        .I1(\comp_stat.wr_ptr_reg [1]),
        .I2(\comp_stat.wr_ptr_reg [0]),
        .I3(\comp_stat.wr_ptr_reg [2]),
        .I4(\comp_stat.wr_ptr_reg [4]),
        .I5(\comp_stat.wr_ptr_reg [5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \comp_stat.wr_ptr[6]_i_1 
       (.I0(\comp_stat.wr_ptr[8]_i_3_n_0 ),
        .I1(\comp_stat.wr_ptr_reg [6]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \comp_stat.wr_ptr[7]_i_1 
       (.I0(\comp_stat.wr_ptr[8]_i_3_n_0 ),
        .I1(\comp_stat.wr_ptr_reg [6]),
        .I2(\comp_stat.wr_ptr_reg [7]),
        .O(p_0_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_stat.wr_ptr[8]_i_1 
       (.I0(mem_wr),
        .O(clear));
  LUT4 #(
    .INIT(16'h7F80)) 
    \comp_stat.wr_ptr[8]_i_2 
       (.I0(\comp_stat.wr_ptr_reg [6]),
        .I1(\comp_stat.wr_ptr[8]_i_3_n_0 ),
        .I2(\comp_stat.wr_ptr_reg [7]),
        .I3(\comp_stat.wr_ptr_reg [8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \comp_stat.wr_ptr[8]_i_3 
       (.I0(\comp_stat.wr_ptr_reg [5]),
        .I1(\comp_stat.wr_ptr_reg [3]),
        .I2(\comp_stat.wr_ptr_reg [1]),
        .I3(\comp_stat.wr_ptr_reg [0]),
        .I4(\comp_stat.wr_ptr_reg [2]),
        .I5(\comp_stat.wr_ptr_reg [4]),
        .O(\comp_stat.wr_ptr[8]_i_3_n_0 ));
  FDRE \comp_stat.wr_ptr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\comp_stat.wr_ptr_reg [0]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\comp_stat.wr_ptr_reg [1]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\comp_stat.wr_ptr_reg [2]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\comp_stat.wr_ptr_reg [3]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\comp_stat.wr_ptr_reg [4]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(\comp_stat.wr_ptr_reg [5]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(\comp_stat.wr_ptr_reg [6]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(\comp_stat.wr_ptr_reg [7]),
        .R(clear));
  FDRE \comp_stat.wr_ptr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(\comp_stat.wr_ptr_reg [8]),
        .R(clear));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_burst_0_0_ila_2 ila_i
       (.clk(clk),
        .probe0(size),
        .probe1(max_pos),
        .probe10(down_pos),
        .probe11(curr_env_1),
        .probe12(curr_env_2),
        .probe13(curr_phase),
        .probe14(pred_phase),
        .probe15(prev_phase),
        .probe16(active),
        .probe17(pos),
        .probe18(env),
        .probe19(phase),
        .probe2(proc_up),
        .probe20(max_phase),
        .probe3(start_up),
        .probe4(up_count),
        .probe5(start_down),
        .probe6(up_delay),
        .probe7(up_pos),
        .probe8(stop_down[0]),
        .probe9(down_delay));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_config" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_burst_0_0_fifo_config
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [39:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [39:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_stat_data,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_stat_data" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_burst_0_0_fifo_stat_data
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [143:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [143:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_stat_meta,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_stat_meta" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_burst_0_0_fifo_stat_meta
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [97:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [97:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_burst_0_0_ila_0
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [19:0]probe1;
  input [15:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [19:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [10:0]probe8;
  input [10:0]probe9;
  input [19:0]probe10;
  input [19:0]probe11;
  input [19:0]probe12;
  input [19:0]probe13;
  input [19:0]probe14;
  input [19:0]probe15;


endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_burst_0_0_ila_2
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe17,
    probe18,
    probe19,
    probe20);
  (* syn_isclock = "1" *) input clk;
  input [10:0]probe0;
  input [10:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [10:0]probe4;
  input [0:0]probe5;
  input [2:0]probe6;
  input [10:0]probe7;
  input [0:0]probe8;
  input [2:0]probe9;
  input [10:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;
  input [15:0]probe13;
  input [21:0]probe14;
  input [15:0]probe15;
  input [0:0]probe16;
  input [10:0]probe17;
  input [15:0]probe18;
  input [15:0]probe19;
  input [15:0]probe20;


endmodule

(* ORIG_REF_NAME = "one_to_four" *) 
module ps_comp_burst_0_0_one_to_four
   (clk,
    reset,
    wr,
    env,
    phase,
    phase_diff,
    size,
    read_back,
    active,
    env_0,
    env_1,
    env_2,
    env_3,
    phase_0,
    phase_1,
    phase_2,
    phase_3,
    phase_diff_0,
    phase_diff_1,
    phase_diff_2,
    phase_diff_3);
  input clk;
  input reset;
  input wr;
  input [15:0]env;
  input [15:0]phase;
  input [19:0]phase_diff;
  input [10:0]size;
  input read_back;
  output active;
  output [15:0]env_0;
  output [15:0]env_1;
  output [15:0]env_2;
  output [15:0]env_3;
  output [15:0]phase_0;
  output [15:0]phase_1;
  output [15:0]phase_2;
  output [15:0]phase_3;
  output [19:0]phase_diff_0;
  output [19:0]phase_diff_1;
  output [19:0]phase_diff_2;
  output [19:0]phase_diff_3;

  wire active;
  wire active_1;
  wire clk;
  wire [15:0]env;
  wire [15:0]env_0;
  wire [15:0]env_1;
  wire [15:0]env_2;
  wire [15:0]env_3;
  wire [63:0]env_in_val;
  wire [63:15]env_in_val__0;
  wire mem_wr;
  wire \one_to_four.active_0_i_1_n_0 ;
  wire \one_to_four.active_0_i_2_n_0 ;
  wire \one_to_four.active_0_reg_n_0 ;
  wire \one_to_four.counter[10]_i_1_n_0 ;
  wire \one_to_four.counter[10]_i_3_n_0 ;
  wire \one_to_four.counter[10]_i_4_n_0 ;
  wire \one_to_four.counter[4]_i_2_n_0 ;
  wire \one_to_four.counter[6]_i_2_n_0 ;
  wire \one_to_four.counter[6]_i_3_n_0 ;
  wire \one_to_four.counter[8]_i_2_n_0 ;
  wire \one_to_four.mem_wr_i_1_n_0 ;
  wire [8:0]\one_to_four.rd_ptr_reg ;
  wire \one_to_four.rd_ptr_rep[8]_i_2_n_0 ;
  wire \one_to_four.wr_offset[0]_i_1_n_0 ;
  wire \one_to_four.wr_offset[1]_i_1_n_0 ;
  wire \one_to_four.wr_offset[1]_i_2_n_0 ;
  wire \one_to_four.wr_ptr[8]_i_1_n_0 ;
  wire \one_to_four.wr_ptr[8]_i_4_n_0 ;
  wire [8:0]\one_to_four.wr_ptr_reg ;
  wire [8:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire [10:0]p_1_in;
  wire [15:0]phase;
  wire [15:0]phase_0;
  wire [15:0]phase_1;
  wire [15:0]phase_2;
  wire [15:0]phase_3;
  wire [19:0]phase_diff;
  wire [19:0]phase_diff_0;
  wire [19:0]phase_diff_1;
  wire [19:0]phase_diff_2;
  wire [19:0]phase_diff_3;
  wire [79:0]phase_diff_in_val;
  wire [79:72]phase_diff_out_val;
  wire [63:0]phase_in_val;
  wire [8:0]rd_ptr;
  wire read_back;
  wire read_back_i;
  wire reset;
  wire [10:0]sel0;
  wire [10:0]size;
  wire wr;
  wire [1:0]wr_offset;
  wire wr_ptr;
  wire \NLW_one_to_four.mem_env_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_env_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_env_reg_DBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_env_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_env_reg_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_env_reg_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_env_reg_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_env_reg_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_env_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_env_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_env_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_env_reg_CASDOUTPB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_env_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_env_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_one_to_four.mem_env_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_one_to_four.mem_env_reg_RDADDRECC_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_diff_reg_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_diff_reg_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_diff_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_diff_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_one_to_four.mem_phase_diff_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_one_to_four.mem_phase_diff_reg_0_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDINA_UNCONNECTED ;
  wire [15:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDINB_UNCONNECTED ;
  wire [1:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDINPA_UNCONNECTED ;
  wire [1:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDINPB_UNCONNECTED ;
  wire [15:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPB_UNCONNECTED ;
  wire [15:8]\NLW_one_to_four.mem_phase_diff_reg_1_DOUTADOUT_UNCONNECTED ;
  wire [15:0]\NLW_one_to_four.mem_phase_diff_reg_1_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_one_to_four.mem_phase_diff_reg_1_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_one_to_four.mem_phase_diff_reg_1_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_reg_DBITERR_UNCONNECTED ;
  wire \NLW_one_to_four.mem_phase_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_reg_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_reg_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_reg_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_reg_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_one_to_four.mem_phase_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_reg_CASDOUTPB_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_one_to_four.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_one_to_four.mem_phase_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_one_to_four.mem_phase_reg_RDADDRECC_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000EEEEEE2E)) 
    \one_to_four.active_0_i_1 
       (.I0(read_back_i),
        .I1(\one_to_four.active_0_reg_n_0 ),
        .I2(\one_to_four.active_0_i_2_n_0 ),
        .I3(\one_to_four.counter[10]_i_4_n_0 ),
        .I4(\one_to_four.counter[6]_i_2_n_0 ),
        .I5(reset),
        .O(\one_to_four.active_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \one_to_four.active_0_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\one_to_four.active_0_reg_n_0 ),
        .O(\one_to_four.active_0_i_2_n_0 ));
  FDRE \one_to_four.active_0_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\one_to_four.active_0_i_1_n_0 ),
        .Q(\one_to_four.active_0_reg_n_0 ),
        .R(1'b0));
  FDRE \one_to_four.active_1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\one_to_four.active_0_reg_n_0 ),
        .Q(active_1),
        .R(1'b0));
  FDRE \one_to_four.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active_1),
        .Q(active),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAFC00)) 
    \one_to_four.counter[0]_i_1 
       (.I0(size[0]),
        .I1(\one_to_four.counter[6]_i_2_n_0 ),
        .I2(\one_to_four.counter[10]_i_4_n_0 ),
        .I3(sel0[0]),
        .I4(read_back_i),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \one_to_four.counter[10]_i_1 
       (.I0(read_back_i),
        .I1(\one_to_four.active_0_reg_n_0 ),
        .O(\one_to_four.counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFC0000)) 
    \one_to_four.counter[10]_i_2 
       (.I0(size[10]),
        .I1(\one_to_four.counter[10]_i_3_n_0 ),
        .I2(\one_to_four.counter[10]_i_4_n_0 ),
        .I3(sel0[9]),
        .I4(sel0[10]),
        .I5(read_back_i),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \one_to_four.counter[10]_i_3 
       (.I0(sel0[7]),
        .I1(sel0[8]),
        .O(\one_to_four.counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \one_to_four.counter[10]_i_4 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(\one_to_four.counter[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFC00)) 
    \one_to_four.counter[1]_i_1 
       (.I0(size[1]),
        .I1(\one_to_four.counter[6]_i_2_n_0 ),
        .I2(\one_to_four.counter[10]_i_4_n_0 ),
        .I3(sel0[1]),
        .I4(read_back_i),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFFFC)) 
    \one_to_four.counter[2]_i_1 
       (.I0(size[2]),
        .I1(sel0[4]),
        .I2(\one_to_four.counter[4]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(read_back_i),
        .I5(sel0[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFF999800009998)) 
    \one_to_four.counter[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(\one_to_four.counter[4]_i_2_n_0 ),
        .I4(read_back_i),
        .I5(size[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFE1E00000E1E0)) 
    \one_to_four.counter[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .I3(\one_to_four.counter[4]_i_2_n_0 ),
        .I4(read_back_i),
        .I5(size[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \one_to_four.counter[4]_i_2 
       (.I0(sel0[9]),
        .I1(sel0[10]),
        .I2(sel0[7]),
        .I3(sel0[8]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\one_to_four.counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF999800009998)) 
    \one_to_four.counter[5]_i_1 
       (.I0(\one_to_four.counter[6]_i_3_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(\one_to_four.counter[6]_i_2_n_0 ),
        .I4(read_back_i),
        .I5(size[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFC020000FC02)) 
    \one_to_four.counter[6]_i_1 
       (.I0(\one_to_four.counter[6]_i_2_n_0 ),
        .I1(\one_to_four.counter[6]_i_3_n_0 ),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(read_back_i),
        .I5(size[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \one_to_four.counter[6]_i_2 
       (.I0(sel0[8]),
        .I1(sel0[7]),
        .I2(sel0[10]),
        .I3(sel0[9]),
        .O(\one_to_four.counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \one_to_four.counter[6]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .O(\one_to_four.counter[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF00E0000F00E)) 
    \one_to_four.counter[7]_i_1 
       (.I0(\one_to_four.counter[8]_i_2_n_0 ),
        .I1(sel0[8]),
        .I2(sel0[7]),
        .I3(\one_to_four.counter[10]_i_4_n_0 ),
        .I4(read_back_i),
        .I5(size[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF0C20000F0C2)) 
    \one_to_four.counter[8]_i_1 
       (.I0(\one_to_four.counter[8]_i_2_n_0 ),
        .I1(sel0[7]),
        .I2(sel0[8]),
        .I3(\one_to_four.counter[10]_i_4_n_0 ),
        .I4(read_back_i),
        .I5(size[8]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \one_to_four.counter[8]_i_2 
       (.I0(sel0[9]),
        .I1(sel0[10]),
        .O(\one_to_four.counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCCC20000CCC2)) 
    \one_to_four.counter[9]_i_1 
       (.I0(sel0[10]),
        .I1(sel0[9]),
        .I2(\one_to_four.counter[10]_i_4_n_0 ),
        .I3(\one_to_four.counter[10]_i_3_n_0 ),
        .I4(read_back_i),
        .I5(size[9]),
        .O(p_1_in[9]));
  FDRE \one_to_four.counter_reg[0] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[10] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(sel0[10]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[1] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[2] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[3] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[4] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[5] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[6] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[7] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(sel0[7]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[8] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(sel0[8]),
        .R(1'b0));
  FDRE \one_to_four.counter_reg[9] 
       (.C(clk),
        .CE(\one_to_four.counter[10]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(sel0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000100)) 
    \one_to_four.env_in_val[15]_i_1 
       (.I0(wr_offset[0]),
        .I1(read_back_i),
        .I2(reset),
        .I3(wr),
        .I4(wr_offset[1]),
        .O(env_in_val__0[15]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \one_to_four.env_in_val[31]_i_1 
       (.I0(read_back_i),
        .I1(reset),
        .I2(wr),
        .I3(wr_offset[0]),
        .I4(wr_offset[1]),
        .O(env_in_val__0[31]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \one_to_four.env_in_val[47]_i_1 
       (.I0(wr_offset[0]),
        .I1(read_back_i),
        .I2(reset),
        .I3(wr),
        .I4(wr_offset[1]),
        .O(env_in_val__0[47]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \one_to_four.env_in_val[63]_i_1 
       (.I0(read_back_i),
        .I1(reset),
        .I2(wr),
        .I3(wr_offset[0]),
        .I4(wr_offset[1]),
        .O(env_in_val__0[63]));
  FDRE \one_to_four.env_in_val_reg[0] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[0]),
        .Q(env_in_val[0]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[10] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[10]),
        .Q(env_in_val[10]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[11] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[11]),
        .Q(env_in_val[11]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[12] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[12]),
        .Q(env_in_val[12]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[13] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[13]),
        .Q(env_in_val[13]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[14] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[14]),
        .Q(env_in_val[14]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[15] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[15]),
        .Q(env_in_val[15]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[16] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[0]),
        .Q(env_in_val[16]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[17] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[1]),
        .Q(env_in_val[17]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[18] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[2]),
        .Q(env_in_val[18]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[19] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[3]),
        .Q(env_in_val[19]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[1] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[1]),
        .Q(env_in_val[1]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[20] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[4]),
        .Q(env_in_val[20]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[21] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[5]),
        .Q(env_in_val[21]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[22] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[6]),
        .Q(env_in_val[22]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[23] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[7]),
        .Q(env_in_val[23]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[24] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[8]),
        .Q(env_in_val[24]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[25] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[9]),
        .Q(env_in_val[25]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[26] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[10]),
        .Q(env_in_val[26]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[27] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[11]),
        .Q(env_in_val[27]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[28] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[12]),
        .Q(env_in_val[28]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[29] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[13]),
        .Q(env_in_val[29]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[2] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[2]),
        .Q(env_in_val[2]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[30] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[14]),
        .Q(env_in_val[30]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[31] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(env[15]),
        .Q(env_in_val[31]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[32] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[0]),
        .Q(env_in_val[32]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[33] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[1]),
        .Q(env_in_val[33]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[34] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[2]),
        .Q(env_in_val[34]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[35] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[3]),
        .Q(env_in_val[35]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[36] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[4]),
        .Q(env_in_val[36]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[37] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[5]),
        .Q(env_in_val[37]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[38] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[6]),
        .Q(env_in_val[38]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[39] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[7]),
        .Q(env_in_val[39]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[3] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[3]),
        .Q(env_in_val[3]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[40] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[8]),
        .Q(env_in_val[40]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[41] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[9]),
        .Q(env_in_val[41]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[42] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[10]),
        .Q(env_in_val[42]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[43] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[11]),
        .Q(env_in_val[43]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[44] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[12]),
        .Q(env_in_val[44]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[45] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[13]),
        .Q(env_in_val[45]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[46] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[14]),
        .Q(env_in_val[46]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[47] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(env[15]),
        .Q(env_in_val[47]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[48] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[0]),
        .Q(env_in_val[48]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[49] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[1]),
        .Q(env_in_val[49]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[4] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[4]),
        .Q(env_in_val[4]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[50] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[2]),
        .Q(env_in_val[50]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[51] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[3]),
        .Q(env_in_val[51]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[52] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[4]),
        .Q(env_in_val[52]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[53] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[5]),
        .Q(env_in_val[53]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[54] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[6]),
        .Q(env_in_val[54]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[55] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[7]),
        .Q(env_in_val[55]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[56] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[8]),
        .Q(env_in_val[56]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[57] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[9]),
        .Q(env_in_val[57]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[58] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[10]),
        .Q(env_in_val[58]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[59] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[11]),
        .Q(env_in_val[59]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[5] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[5]),
        .Q(env_in_val[5]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[60] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[12]),
        .Q(env_in_val[60]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[61] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[13]),
        .Q(env_in_val[61]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[62] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[14]),
        .Q(env_in_val[62]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[63] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(env[15]),
        .Q(env_in_val[63]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[6] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[6]),
        .Q(env_in_val[6]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[7] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[7]),
        .Q(env_in_val[7]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[8] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[8]),
        .Q(env_in_val[8]),
        .R(1'b0));
  FDRE \one_to_four.env_in_val_reg[9] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(env[9]),
        .Q(env_in_val[9]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "one_to_four/one_to_four.mem_env_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \one_to_four.mem_env_reg 
       (.ADDRARDADDR({rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\one_to_four.wr_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_one_to_four.mem_env_reg_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_one_to_four.mem_env_reg_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_one_to_four.mem_env_reg_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_one_to_four.mem_env_reg_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_one_to_four.mem_env_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_one_to_four.mem_env_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_one_to_four.mem_env_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_one_to_four.mem_env_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_one_to_four.mem_env_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_one_to_four.mem_env_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_one_to_four.mem_env_reg_DBITERR_UNCONNECTED ),
        .DINADIN(env_in_val[31:0]),
        .DINBDIN(env_in_val[63:32]),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({env_1,env_0}),
        .DOUTBDOUT({env_3,env_2}),
        .DOUTPADOUTP(\NLW_one_to_four.mem_env_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_one_to_four.mem_env_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_one_to_four.mem_env_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_one_to_four.mem_env_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_one_to_four.mem_env_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "one_to_four/one_to_four.mem_phase_diff_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \one_to_four.mem_phase_diff_reg_0 
       (.ADDRARDADDR({rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\one_to_four.wr_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_one_to_four.mem_phase_diff_reg_0_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_one_to_four.mem_phase_diff_reg_0_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_one_to_four.mem_phase_diff_reg_0_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_one_to_four.mem_phase_diff_reg_0_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_one_to_four.mem_phase_diff_reg_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_one_to_four.mem_phase_diff_reg_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_one_to_four.mem_phase_diff_reg_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_one_to_four.mem_phase_diff_reg_0_DBITERR_UNCONNECTED ),
        .DINADIN(phase_diff_in_val[31:0]),
        .DINBDIN(phase_diff_in_val[63:32]),
        .DINPADINP(phase_diff_in_val[67:64]),
        .DINPBDINP(phase_diff_in_val[71:68]),
        .DOUTADOUT({phase_diff_1[11:0],phase_diff_0}),
        .DOUTBDOUT({phase_diff_3[3:0],phase_diff_2,phase_diff_1[19:12]}),
        .DOUTPADOUTP(phase_diff_3[7:4]),
        .DOUTPBDOUTP(phase_diff_3[11:8]),
        .ECCPARITY(\NLW_one_to_four.mem_phase_diff_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_one_to_four.mem_phase_diff_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_one_to_four.mem_phase_diff_reg_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "one_to_four/one_to_four.mem_phase_diff_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "79" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \one_to_four.mem_phase_diff_reg_1 
       (.ADDRARDADDR({rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\one_to_four.wr_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_one_to_four.mem_phase_diff_reg_1_CASDINA_UNCONNECTED [15:0]),
        .CASDINB(\NLW_one_to_four.mem_phase_diff_reg_1_CASDINB_UNCONNECTED [15:0]),
        .CASDINPA(\NLW_one_to_four.mem_phase_diff_reg_1_CASDINPA_UNCONNECTED [1:0]),
        .CASDINPB(\NLW_one_to_four.mem_phase_diff_reg_1_CASDINPB_UNCONNECTED [1:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_one_to_four.mem_phase_diff_reg_1_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DINADIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,phase_diff_in_val[79:72]}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT({\NLW_one_to_four.mem_phase_diff_reg_1_DOUTADOUT_UNCONNECTED [15:8],phase_diff_out_val}),
        .DOUTBDOUT(\NLW_one_to_four.mem_phase_diff_reg_1_DOUTBDOUT_UNCONNECTED [15:0]),
        .DOUTPADOUTP(\NLW_one_to_four.mem_phase_diff_reg_1_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_one_to_four.mem_phase_diff_reg_1_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "one_to_four/one_to_four.mem_phase_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \one_to_four.mem_phase_reg 
       (.ADDRARDADDR({rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\one_to_four.wr_ptr_reg ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_one_to_four.mem_phase_reg_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_one_to_four.mem_phase_reg_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_one_to_four.mem_phase_reg_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_one_to_four.mem_phase_reg_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_one_to_four.mem_phase_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_one_to_four.mem_phase_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_one_to_four.mem_phase_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_one_to_four.mem_phase_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_one_to_four.mem_phase_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_one_to_four.mem_phase_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(\NLW_one_to_four.mem_phase_reg_DBITERR_UNCONNECTED ),
        .DINADIN(phase_in_val[31:0]),
        .DINBDIN(phase_in_val[63:32]),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({phase_1,phase_0}),
        .DOUTBDOUT({phase_3,phase_2}),
        .DOUTPADOUTP(\NLW_one_to_four.mem_phase_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_one_to_four.mem_phase_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_one_to_four.mem_phase_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_one_to_four.mem_phase_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_one_to_four.mem_phase_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr,mem_wr}));
  LUT5 #(
    .INIT(32'h0000008E)) 
    \one_to_four.mem_wr_i_1 
       (.I0(wr_offset[1]),
        .I1(wr_offset[0]),
        .I2(wr),
        .I3(read_back_i),
        .I4(reset),
        .O(\one_to_four.mem_wr_i_1_n_0 ));
  FDRE \one_to_four.mem_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\one_to_four.mem_wr_i_1_n_0 ),
        .Q(mem_wr),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[72]),
        .Q(phase_diff_3[12]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[73]),
        .Q(phase_diff_3[13]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[74]),
        .Q(phase_diff_3[14]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[75]),
        .Q(phase_diff_3[15]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[76]),
        .Q(phase_diff_3[16]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[77]),
        .Q(phase_diff_3[17]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[78]),
        .Q(phase_diff_3[18]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_3_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_diff_out_val[79]),
        .Q(phase_diff_3[19]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[0] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[0]),
        .Q(phase_diff_in_val[0]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[10] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[10]),
        .Q(phase_diff_in_val[10]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[11] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[11]),
        .Q(phase_diff_in_val[11]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[12] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[12]),
        .Q(phase_diff_in_val[12]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[13] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[13]),
        .Q(phase_diff_in_val[13]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[14] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[14]),
        .Q(phase_diff_in_val[14]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[15] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[15]),
        .Q(phase_diff_in_val[15]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[16] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[16]),
        .Q(phase_diff_in_val[16]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[17] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[17]),
        .Q(phase_diff_in_val[17]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[18] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[18]),
        .Q(phase_diff_in_val[18]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[19] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[19]),
        .Q(phase_diff_in_val[19]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[1] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[1]),
        .Q(phase_diff_in_val[1]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[20] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[0]),
        .Q(phase_diff_in_val[20]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[21] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[1]),
        .Q(phase_diff_in_val[21]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[22] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[2]),
        .Q(phase_diff_in_val[22]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[23] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[3]),
        .Q(phase_diff_in_val[23]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[24] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[4]),
        .Q(phase_diff_in_val[24]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[25] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[5]),
        .Q(phase_diff_in_val[25]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[26] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[6]),
        .Q(phase_diff_in_val[26]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[27] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[7]),
        .Q(phase_diff_in_val[27]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[28] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[8]),
        .Q(phase_diff_in_val[28]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[29] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[9]),
        .Q(phase_diff_in_val[29]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[2] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[2]),
        .Q(phase_diff_in_val[2]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[30] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[10]),
        .Q(phase_diff_in_val[30]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[31] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[11]),
        .Q(phase_diff_in_val[31]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[32] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[12]),
        .Q(phase_diff_in_val[32]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[33] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[13]),
        .Q(phase_diff_in_val[33]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[34] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[14]),
        .Q(phase_diff_in_val[34]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[35] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[15]),
        .Q(phase_diff_in_val[35]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[36] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[16]),
        .Q(phase_diff_in_val[36]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[37] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[17]),
        .Q(phase_diff_in_val[37]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[38] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[18]),
        .Q(phase_diff_in_val[38]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[39] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase_diff[19]),
        .Q(phase_diff_in_val[39]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[3] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[3]),
        .Q(phase_diff_in_val[3]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[40] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[0]),
        .Q(phase_diff_in_val[40]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[41] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[1]),
        .Q(phase_diff_in_val[41]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[42] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[2]),
        .Q(phase_diff_in_val[42]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[43] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[3]),
        .Q(phase_diff_in_val[43]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[44] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[4]),
        .Q(phase_diff_in_val[44]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[45] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[5]),
        .Q(phase_diff_in_val[45]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[46] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[6]),
        .Q(phase_diff_in_val[46]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[47] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[7]),
        .Q(phase_diff_in_val[47]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[48] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[8]),
        .Q(phase_diff_in_val[48]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[49] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[9]),
        .Q(phase_diff_in_val[49]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[4] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[4]),
        .Q(phase_diff_in_val[4]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[50] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[10]),
        .Q(phase_diff_in_val[50]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[51] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[11]),
        .Q(phase_diff_in_val[51]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[52] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[12]),
        .Q(phase_diff_in_val[52]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[53] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[13]),
        .Q(phase_diff_in_val[53]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[54] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[14]),
        .Q(phase_diff_in_val[54]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[55] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[15]),
        .Q(phase_diff_in_val[55]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[56] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[16]),
        .Q(phase_diff_in_val[56]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[57] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[17]),
        .Q(phase_diff_in_val[57]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[58] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[18]),
        .Q(phase_diff_in_val[58]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[59] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase_diff[19]),
        .Q(phase_diff_in_val[59]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[5] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[5]),
        .Q(phase_diff_in_val[5]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[60] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[0]),
        .Q(phase_diff_in_val[60]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[61] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[1]),
        .Q(phase_diff_in_val[61]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[62] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[2]),
        .Q(phase_diff_in_val[62]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[63] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[3]),
        .Q(phase_diff_in_val[63]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[64] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[4]),
        .Q(phase_diff_in_val[64]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[65] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[5]),
        .Q(phase_diff_in_val[65]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[66] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[6]),
        .Q(phase_diff_in_val[66]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[67] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[7]),
        .Q(phase_diff_in_val[67]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[68] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[8]),
        .Q(phase_diff_in_val[68]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[69] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[9]),
        .Q(phase_diff_in_val[69]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[6] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[6]),
        .Q(phase_diff_in_val[6]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[70] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[10]),
        .Q(phase_diff_in_val[70]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[71] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[11]),
        .Q(phase_diff_in_val[71]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[72] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[12]),
        .Q(phase_diff_in_val[72]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[73] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[13]),
        .Q(phase_diff_in_val[73]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[74] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[14]),
        .Q(phase_diff_in_val[74]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[75] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[15]),
        .Q(phase_diff_in_val[75]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[76] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[16]),
        .Q(phase_diff_in_val[76]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[77] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[17]),
        .Q(phase_diff_in_val[77]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[78] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[18]),
        .Q(phase_diff_in_val[78]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[79] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase_diff[19]),
        .Q(phase_diff_in_val[79]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[7] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[7]),
        .Q(phase_diff_in_val[7]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[8] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[8]),
        .Q(phase_diff_in_val[8]),
        .R(1'b0));
  FDRE \one_to_four.phase_diff_in_val_reg[9] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase_diff[9]),
        .Q(phase_diff_in_val[9]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[0] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[0]),
        .Q(phase_in_val[0]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[10] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[10]),
        .Q(phase_in_val[10]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[11] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[11]),
        .Q(phase_in_val[11]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[12] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[12]),
        .Q(phase_in_val[12]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[13] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[13]),
        .Q(phase_in_val[13]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[14] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[14]),
        .Q(phase_in_val[14]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[15] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[15]),
        .Q(phase_in_val[15]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[16] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[0]),
        .Q(phase_in_val[16]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[17] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[1]),
        .Q(phase_in_val[17]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[18] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[2]),
        .Q(phase_in_val[18]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[19] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[3]),
        .Q(phase_in_val[19]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[1] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[1]),
        .Q(phase_in_val[1]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[20] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[4]),
        .Q(phase_in_val[20]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[21] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[5]),
        .Q(phase_in_val[21]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[22] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[6]),
        .Q(phase_in_val[22]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[23] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[7]),
        .Q(phase_in_val[23]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[24] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[8]),
        .Q(phase_in_val[24]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[25] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[9]),
        .Q(phase_in_val[25]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[26] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[10]),
        .Q(phase_in_val[26]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[27] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[11]),
        .Q(phase_in_val[27]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[28] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[12]),
        .Q(phase_in_val[28]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[29] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[13]),
        .Q(phase_in_val[29]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[2] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[2]),
        .Q(phase_in_val[2]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[30] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[14]),
        .Q(phase_in_val[30]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[31] 
       (.C(clk),
        .CE(env_in_val__0[31]),
        .D(phase[15]),
        .Q(phase_in_val[31]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[32] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[0]),
        .Q(phase_in_val[32]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[33] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[1]),
        .Q(phase_in_val[33]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[34] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[2]),
        .Q(phase_in_val[34]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[35] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[3]),
        .Q(phase_in_val[35]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[36] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[4]),
        .Q(phase_in_val[36]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[37] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[5]),
        .Q(phase_in_val[37]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[38] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[6]),
        .Q(phase_in_val[38]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[39] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[7]),
        .Q(phase_in_val[39]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[3] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[3]),
        .Q(phase_in_val[3]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[40] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[8]),
        .Q(phase_in_val[40]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[41] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[9]),
        .Q(phase_in_val[41]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[42] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[10]),
        .Q(phase_in_val[42]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[43] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[11]),
        .Q(phase_in_val[43]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[44] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[12]),
        .Q(phase_in_val[44]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[45] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[13]),
        .Q(phase_in_val[45]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[46] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[14]),
        .Q(phase_in_val[46]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[47] 
       (.C(clk),
        .CE(env_in_val__0[47]),
        .D(phase[15]),
        .Q(phase_in_val[47]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[48] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[0]),
        .Q(phase_in_val[48]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[49] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[1]),
        .Q(phase_in_val[49]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[4] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[4]),
        .Q(phase_in_val[4]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[50] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[2]),
        .Q(phase_in_val[50]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[51] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[3]),
        .Q(phase_in_val[51]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[52] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[4]),
        .Q(phase_in_val[52]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[53] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[5]),
        .Q(phase_in_val[53]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[54] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[6]),
        .Q(phase_in_val[54]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[55] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[7]),
        .Q(phase_in_val[55]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[56] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[8]),
        .Q(phase_in_val[56]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[57] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[9]),
        .Q(phase_in_val[57]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[58] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[10]),
        .Q(phase_in_val[58]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[59] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[11]),
        .Q(phase_in_val[59]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[5] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[5]),
        .Q(phase_in_val[5]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[60] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[12]),
        .Q(phase_in_val[60]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[61] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[13]),
        .Q(phase_in_val[61]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[62] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[14]),
        .Q(phase_in_val[62]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[63] 
       (.C(clk),
        .CE(env_in_val__0[63]),
        .D(phase[15]),
        .Q(phase_in_val[63]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[6] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[6]),
        .Q(phase_in_val[6]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[7] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[7]),
        .Q(phase_in_val[7]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[8] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[8]),
        .Q(phase_in_val[8]),
        .R(1'b0));
  FDRE \one_to_four.phase_in_val_reg[9] 
       (.C(clk),
        .CE(env_in_val__0[15]),
        .D(phase[9]),
        .Q(phase_in_val[9]),
        .R(1'b0));
  FDRE \one_to_four.rd_ptr_reg[0] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\one_to_four.rd_ptr_reg [0]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[1] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\one_to_four.rd_ptr_reg [1]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[2] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\one_to_four.rd_ptr_reg [2]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[3] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\one_to_four.rd_ptr_reg [3]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[4] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\one_to_four.rd_ptr_reg [4]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[5] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\one_to_four.rd_ptr_reg [5]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[6] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\one_to_four.rd_ptr_reg [6]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[7] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\one_to_four.rd_ptr_reg [7]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg[8] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[8]),
        .Q(\one_to_four.rd_ptr_reg [8]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[0] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[0]),
        .Q(rd_ptr[0]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[1] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[1]),
        .Q(rd_ptr[1]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[2] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[2]),
        .Q(rd_ptr[2]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[3] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[3]),
        .Q(rd_ptr[3]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[4] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[4]),
        .Q(rd_ptr[4]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[5] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[5]),
        .Q(rd_ptr[5]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[6] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[6]),
        .Q(rd_ptr[6]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[7] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[7]),
        .Q(rd_ptr[7]),
        .R(read_back_i));
  FDRE \one_to_four.rd_ptr_reg_rep[8] 
       (.C(clk),
        .CE(\one_to_four.active_0_reg_n_0 ),
        .D(p_0_in__0[8]),
        .Q(rd_ptr[8]),
        .R(read_back_i));
  LUT1 #(
    .INIT(2'h1)) 
    \one_to_four.rd_ptr_rep[0]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \one_to_four.rd_ptr_rep[1]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [0]),
        .I1(\one_to_four.rd_ptr_reg [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \one_to_four.rd_ptr_rep[2]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [1]),
        .I1(\one_to_four.rd_ptr_reg [0]),
        .I2(\one_to_four.rd_ptr_reg [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \one_to_four.rd_ptr_rep[3]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [2]),
        .I1(\one_to_four.rd_ptr_reg [0]),
        .I2(\one_to_four.rd_ptr_reg [1]),
        .I3(\one_to_four.rd_ptr_reg [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \one_to_four.rd_ptr_rep[4]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [3]),
        .I1(\one_to_four.rd_ptr_reg [1]),
        .I2(\one_to_four.rd_ptr_reg [0]),
        .I3(\one_to_four.rd_ptr_reg [2]),
        .I4(\one_to_four.rd_ptr_reg [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \one_to_four.rd_ptr_rep[5]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [4]),
        .I1(\one_to_four.rd_ptr_reg [2]),
        .I2(\one_to_four.rd_ptr_reg [0]),
        .I3(\one_to_four.rd_ptr_reg [1]),
        .I4(\one_to_four.rd_ptr_reg [3]),
        .I5(\one_to_four.rd_ptr_reg [5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \one_to_four.rd_ptr_rep[6]_i_1 
       (.I0(\one_to_four.rd_ptr_rep[8]_i_2_n_0 ),
        .I1(\one_to_four.rd_ptr_reg [6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \one_to_four.rd_ptr_rep[7]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [6]),
        .I1(\one_to_four.rd_ptr_rep[8]_i_2_n_0 ),
        .I2(\one_to_four.rd_ptr_reg [7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \one_to_four.rd_ptr_rep[8]_i_1 
       (.I0(\one_to_four.rd_ptr_reg [7]),
        .I1(\one_to_four.rd_ptr_rep[8]_i_2_n_0 ),
        .I2(\one_to_four.rd_ptr_reg [6]),
        .I3(\one_to_four.rd_ptr_reg [8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \one_to_four.rd_ptr_rep[8]_i_2 
       (.I0(\one_to_four.rd_ptr_reg [4]),
        .I1(\one_to_four.rd_ptr_reg [2]),
        .I2(\one_to_four.rd_ptr_reg [0]),
        .I3(\one_to_four.rd_ptr_reg [1]),
        .I4(\one_to_four.rd_ptr_reg [3]),
        .I5(\one_to_four.rd_ptr_reg [5]),
        .O(\one_to_four.rd_ptr_rep[8]_i_2_n_0 ));
  FDRE \one_to_four.read_back_i_reg 
       (.C(clk),
        .CE(1'b1),
        .D(read_back),
        .Q(read_back_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \one_to_four.wr_offset[0]_i_1 
       (.I0(wr_offset[0]),
        .O(\one_to_four.wr_offset[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \one_to_four.wr_offset[1]_i_1 
       (.I0(read_back_i),
        .I1(reset),
        .I2(wr),
        .O(\one_to_four.wr_offset[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \one_to_four.wr_offset[1]_i_2 
       (.I0(wr_offset[0]),
        .I1(wr_offset[1]),
        .O(\one_to_four.wr_offset[1]_i_2_n_0 ));
  FDRE \one_to_four.wr_offset_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\one_to_four.wr_offset[0]_i_1_n_0 ),
        .Q(wr_offset[0]),
        .R(\one_to_four.wr_offset[1]_i_1_n_0 ));
  FDRE \one_to_four.wr_offset_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\one_to_four.wr_offset[1]_i_2_n_0 ),
        .Q(wr_offset[1]),
        .R(\one_to_four.wr_offset[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \one_to_four.wr_ptr[0]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \one_to_four.wr_ptr[1]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [0]),
        .I1(\one_to_four.wr_ptr_reg [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \one_to_four.wr_ptr[2]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [1]),
        .I1(\one_to_four.wr_ptr_reg [0]),
        .I2(\one_to_four.wr_ptr_reg [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \one_to_four.wr_ptr[3]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [2]),
        .I1(\one_to_four.wr_ptr_reg [0]),
        .I2(\one_to_four.wr_ptr_reg [1]),
        .I3(\one_to_four.wr_ptr_reg [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \one_to_four.wr_ptr[4]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [3]),
        .I1(\one_to_four.wr_ptr_reg [1]),
        .I2(\one_to_four.wr_ptr_reg [0]),
        .I3(\one_to_four.wr_ptr_reg [2]),
        .I4(\one_to_four.wr_ptr_reg [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \one_to_four.wr_ptr[5]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [4]),
        .I1(\one_to_four.wr_ptr_reg [2]),
        .I2(\one_to_four.wr_ptr_reg [0]),
        .I3(\one_to_four.wr_ptr_reg [1]),
        .I4(\one_to_four.wr_ptr_reg [3]),
        .I5(\one_to_four.wr_ptr_reg [5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \one_to_four.wr_ptr[6]_i_1 
       (.I0(\one_to_four.wr_ptr[8]_i_4_n_0 ),
        .I1(\one_to_four.wr_ptr_reg [6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hD2)) 
    \one_to_four.wr_ptr[7]_i_1 
       (.I0(\one_to_four.wr_ptr_reg [6]),
        .I1(\one_to_four.wr_ptr[8]_i_4_n_0 ),
        .I2(\one_to_four.wr_ptr_reg [7]),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \one_to_four.wr_ptr[8]_i_1 
       (.I0(reset),
        .I1(read_back_i),
        .O(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \one_to_four.wr_ptr[8]_i_2 
       (.I0(wr),
        .I1(mem_wr),
        .O(wr_ptr));
  LUT4 #(
    .INIT(16'hDF20)) 
    \one_to_four.wr_ptr[8]_i_3 
       (.I0(\one_to_four.wr_ptr_reg [7]),
        .I1(\one_to_four.wr_ptr[8]_i_4_n_0 ),
        .I2(\one_to_four.wr_ptr_reg [6]),
        .I3(\one_to_four.wr_ptr_reg [8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \one_to_four.wr_ptr[8]_i_4 
       (.I0(\one_to_four.wr_ptr_reg [4]),
        .I1(\one_to_four.wr_ptr_reg [2]),
        .I2(\one_to_four.wr_ptr_reg [0]),
        .I3(\one_to_four.wr_ptr_reg [1]),
        .I4(\one_to_four.wr_ptr_reg [3]),
        .I5(\one_to_four.wr_ptr_reg [5]),
        .O(\one_to_four.wr_ptr[8]_i_4_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[0] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[0]),
        .Q(\one_to_four.wr_ptr_reg [0]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[1] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[1]),
        .Q(\one_to_four.wr_ptr_reg [1]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[2] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[2]),
        .Q(\one_to_four.wr_ptr_reg [2]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[3] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[3]),
        .Q(\one_to_four.wr_ptr_reg [3]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[4] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[4]),
        .Q(\one_to_four.wr_ptr_reg [4]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[5] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[5]),
        .Q(\one_to_four.wr_ptr_reg [5]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[6] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[6]),
        .Q(\one_to_four.wr_ptr_reg [6]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[7] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[7]),
        .Q(\one_to_four.wr_ptr_reg [7]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
  FDRE \one_to_four.wr_ptr_reg[8] 
       (.C(clk),
        .CE(wr_ptr),
        .D(p_0_in[8]),
        .Q(\one_to_four.wr_ptr_reg [8]),
        .R(\one_to_four.wr_ptr[8]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
