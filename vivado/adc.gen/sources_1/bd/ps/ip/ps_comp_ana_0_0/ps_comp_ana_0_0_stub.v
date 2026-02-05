// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Feb  4 22:56:21 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_ana_0_0/ps_comp_ana_0_0_stub.v
// Design      : ps_comp_ana_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_comp_ana_0_0,comp_ana,{}" *) (* CORE_GENERATION_INFO = "ps_comp_ana_0_0,comp_ana,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_ana,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "comp_ana,Vivado 2025.1" *) 
module ps_comp_ana_0_0(fifo_clk, fifo_active, fifo_re, fifo_im, 
  fifo_burst, fifo_sample, fifo_size, fifo_freq, fifo_angle, clk, reset, stat_sel_0, stat_start, 
  stat_sample, stat_freq, stat_angle, stat_wr, stat_env_0, stat_env_1, stat_env_2, stat_env_3, 
  stat_phase_0, stat_phase_1, stat_phase_2, stat_phase_3)
/* synthesis syn_black_box black_box_pad_pin="fifo_active,fifo_re[63:0],fifo_im[63:0],fifo_burst,fifo_sample[15:0],fifo_size[8:0],fifo_freq[19:0],fifo_angle[15:0],reset,stat_sel_0,stat_start,stat_sample[61:0],stat_freq[19:0],stat_angle[15:0],stat_wr,stat_env_0[15:0],stat_env_1[15:0],stat_env_2[15:0],stat_env_3[15:0],stat_phase_0[19:0],stat_phase_1[19:0],stat_phase_2[19:0],stat_phase_3[19:0]" */
/* synthesis syn_force_seq_prim="fifo_clk" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input fifo_clk /* synthesis syn_isclock = 1 */;
  input fifo_active;
  input [63:0]fifo_re;
  input [63:0]fifo_im;
  input fifo_burst;
  input [15:0]fifo_sample;
  input [8:0]fifo_size;
  input [19:0]fifo_freq;
  input [15:0]fifo_angle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output stat_sel_0;
  output stat_start;
  output [61:0]stat_sample;
  output [19:0]stat_freq;
  output [15:0]stat_angle;
  output stat_wr;
  output [15:0]stat_env_0;
  output [15:0]stat_env_1;
  output [15:0]stat_env_2;
  output [15:0]stat_env_3;
  output [19:0]stat_phase_0;
  output [19:0]stat_phase_1;
  output [19:0]stat_phase_2;
  output [19:0]stat_phase_3;
endmodule
