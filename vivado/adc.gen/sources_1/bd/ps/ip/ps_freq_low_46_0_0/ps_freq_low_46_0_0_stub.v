// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar 15 13:12:58 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_freq_low_46_0_0/ps_freq_low_46_0_0_stub.v
// Design      : ps_freq_low_46_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_freq_low_46_0_0,freq_low_46,{}" *) (* CORE_GENERATION_INFO = "ps_freq_low_46_0_0,freq_low_46,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=freq_low_46,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "freq_low_46,Vivado 2025.1" *) 
module ps_freq_low_46_0_0(fifo_clk, freq_wr, freq_in_N, freq_in_E, 
  freq_in_W, clk, reset, ana_wr, env_N, env_E, env_W, phase_N, phase_E, phase_W, err_NE, err_EW, err_WN)
/* synthesis syn_black_box black_box_pad_pin="freq_wr,freq_in_N[15:0],freq_in_E[15:0],freq_in_W[15:0],reset,ana_wr,env_N[15:0],env_E[15:0],env_W[15:0],phase_N[19:0],phase_E[19:0],phase_W[19:0],err_NE[11:0],err_EW[11:0],err_WN[11:0]" */
/* synthesis syn_force_seq_prim="fifo_clk" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input fifo_clk /* synthesis syn_isclock = 1 */;
  input freq_wr;
  input [15:0]freq_in_N;
  input [15:0]freq_in_E;
  input [15:0]freq_in_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output ana_wr;
  output [15:0]env_N;
  output [15:0]env_E;
  output [15:0]env_W;
  output [19:0]phase_N;
  output [19:0]phase_E;
  output [19:0]phase_W;
  output [11:0]err_NE;
  output [11:0]err_EW;
  output [11:0]err_WN;
endmodule
