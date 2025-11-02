// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov  2 22:09:53 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_decimate_1_0/ps_decimate_1_0_stub.v
// Design      : ps_decimate_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_decimate_1_0,decimate,{}" *) (* CORE_GENERATION_INFO = "ps_decimate_1_0,decimate,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=decimate,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "decimate,Vivado 2025.1" *) 
module ps_decimate_1_0(clk, resetn, data_N, ready_N, fir_N, valid_N, data_E, 
  ready_E, fir_E, valid_E, data_W, ready_W, fir_W, valid_W, fifo_wr, fifo)
/* synthesis syn_black_box black_box_pad_pin="resetn,data_N[159:0],ready_N,fir_N[23:0],valid_N,data_E[159:0],ready_E,fir_E[23:0],valid_E,data_W[159:0],ready_W,fir_W[23:0],valid_W,fifo_wr,fifo[447:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [159:0]data_N;
  input ready_N;
  input [23:0]fir_N;
  input valid_N;
  input [159:0]data_E;
  input ready_E;
  input [23:0]fir_E;
  input valid_E;
  input [159:0]data_W;
  input ready_W;
  input [23:0]fir_W;
  input valid_W;
  output fifo_wr;
  output [447:0]fifo;
endmodule
