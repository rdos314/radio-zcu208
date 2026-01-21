// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Jan 20 20:30:25 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_low_0_0/ps_comp_low_0_0_stub.v
// Design      : ps_comp_low_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_comp_low_0_0,comp_low,{}" *) (* CORE_GENERATION_INFO = "ps_comp_low_0_0,comp_low,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_low,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "comp_low,Vivado 2025.1" *) 
module ps_comp_low_0_0(ana_fifo_clk, ana_fifo_wr, ana_fifo_sample, 
  ana_fifo_size, ana_fifo_freq, ana_fifo_angle, ana_fifo_sample_N, ana_fifo_sample_E, 
  ana_fifo_sample_W, raw_fifo_clk, raw_fifo_wr, raw_fifo_N, raw_fifo_E, raw_fifo_W, clk, reset, 
  active, re, im, burst, sample, size, freq, angle)
/* synthesis syn_black_box black_box_pad_pin="ana_fifo_wr,ana_fifo_sample[15:0],ana_fifo_size[8:0],ana_fifo_freq[19:0],ana_fifo_angle[15:0],ana_fifo_sample_N[5:0],ana_fifo_sample_E[5:0],ana_fifo_sample_W[5:0],raw_fifo_wr,raw_fifo_N[127:0],raw_fifo_E[127:0],raw_fifo_W[127:0],reset,active,re[63:0],im[63:0],burst,sample[15:0],size[8:0],freq[19:0],angle[15:0]" */
/* synthesis syn_force_seq_prim="ana_fifo_clk" */
/* synthesis syn_force_seq_prim="raw_fifo_clk" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ana_fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ana_fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana0_clk, INSERT_VIP 0" *) input ana_fifo_clk /* synthesis syn_isclock = 1 */;
  input ana_fifo_wr;
  input [15:0]ana_fifo_sample;
  input [8:0]ana_fifo_size;
  input [19:0]ana_fifo_freq;
  input [15:0]ana_fifo_angle;
  input [5:0]ana_fifo_sample_N;
  input [5:0]ana_fifo_sample_E;
  input [5:0]ana_fifo_sample_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input raw_fifo_clk /* synthesis syn_isclock = 1 */;
  input raw_fifo_wr;
  input [127:0]raw_fifo_N;
  input [127:0]raw_fifo_E;
  input [127:0]raw_fifo_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output active;
  output [63:0]re;
  output [63:0]im;
  output burst;
  output [15:0]sample;
  output [8:0]size;
  output [19:0]freq;
  output [15:0]angle;
endmodule
