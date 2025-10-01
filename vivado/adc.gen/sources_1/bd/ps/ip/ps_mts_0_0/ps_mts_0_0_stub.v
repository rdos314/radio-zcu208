// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  2 00:57:19 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_stub.v
// Design      : ps_mts_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_mts_0_0,mts,{}" *) (* CORE_GENERATION_INFO = "ps_mts_0_0,mts,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mts,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "mts,Vivado 2025.1" *) 
module ps_mts_0_0(pl_clk_p, pl_clk_n, pl_clk, pl_sysref_p, 
  pl_sysref_n, pl_sysref, user_sysref_adc, m0_axis_aclk)
/* synthesis syn_black_box black_box_pad_pin="pl_clk_p,pl_clk_n,pl_sysref_p,pl_sysref_n,pl_sysref,user_sysref_adc" */
/* synthesis syn_force_seq_prim="pl_clk" */
/* synthesis syn_force_seq_prim="m0_axis_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk_p CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_p, INSERT_VIP 0" *) input pl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk_n CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_pl_clk, INSERT_VIP 0" *) output pl_clk /* synthesis syn_isclock = 1 */;
  input pl_sysref_p;
  input pl_sysref_n;
  output pl_sysref;
  output user_sysref_adc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_axis_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis_aclk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc0_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m0_axis_aclk /* synthesis syn_isclock = 1 */;
endmodule
