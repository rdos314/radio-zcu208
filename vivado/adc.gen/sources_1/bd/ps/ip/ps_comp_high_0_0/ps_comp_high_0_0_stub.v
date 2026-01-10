// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Jan 10 14:21:09 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_high_0_0/ps_comp_high_0_0_stub.v
// Design      : ps_comp_high_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_comp_high_0_0,comp_high,{}" *) (* CORE_GENERATION_INFO = "ps_comp_high_0_0,comp_high,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_high,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "comp_high,Vivado 2025.1" *) 
module ps_comp_high_0_0(fifo_clk, fifo_wr, fifo_sample, fifo_size, 
  fifo_freq, fifo_angle, fifo_sample_N, fifo_sample_E, fifo_sample_W, clk, raw_active, 
  raw_sample, raw_N, raw_E, raw_W)
/* synthesis syn_black_box black_box_pad_pin="fifo_clk,fifo_wr,fifo_sample[31:0],fifo_size[8:0],fifo_freq[19:0],fifo_angle[15:0],fifo_sample_N[5:0],fifo_sample_E[5:0],fifo_sample_W[5:0],clk,raw_active,raw_sample[63:0],raw_N[127:0],raw_E[127:0],raw_W[127:0]" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana1_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_wr;
  input [31:0]fifo_sample;
  input [8:0]fifo_size;
  input [19:0]fifo_freq;
  input [15:0]fifo_angle;
  input [5:0]fifo_sample_N;
  input [5:0]fifo_sample_E;
  input [5:0]fifo_sample_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input clk;
  input raw_active;
  input [63:0]raw_sample;
  input [127:0]raw_N;
  input [127:0]raw_E;
  input [127:0]raw_W;
endmodule
