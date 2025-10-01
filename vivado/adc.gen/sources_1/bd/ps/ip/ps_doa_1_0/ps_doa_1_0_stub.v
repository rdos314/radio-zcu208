// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep 30 22:50:22 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_1_0/ps_doa_1_0_stub.v
// Design      : ps_doa_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_doa_1_0,doa,{}" *) (* CORE_GENERATION_INFO = "ps_doa_1_0,doa,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=doa,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "doa,Vivado 2025.1" *) 
module ps_doa_1_0(clk, data_0, data_1, data_2, ready_0, ready_1, 
  ready_2, started, running)
/* synthesis syn_black_box black_box_pad_pin="clk,data_0[159:0],data_1[159:0],data_2[159:0],ready_0,ready_1,ready_2,started,running" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc2_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input [159:0]data_0;
  input [159:0]data_1;
  input [159:0]data_2;
  input ready_0;
  input ready_1;
  input ready_2;
  input started;
  output running;
endmodule
