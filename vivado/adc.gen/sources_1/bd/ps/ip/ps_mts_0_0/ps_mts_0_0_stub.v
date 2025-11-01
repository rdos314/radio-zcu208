// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov  1 23:35:47 2025
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
module ps_mts_0_0(pl_clk, pl_sysref, sys_reset, deci_clk, 
  deci_resetn, user_sysref_adc)
/* synthesis syn_black_box black_box_pad_pin="pl_sysref,sys_reset,deci_resetn,user_sysref_adc" */
/* synthesis syn_force_seq_prim="pl_clk" */
/* synthesis syn_force_seq_prim="deci_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk /* synthesis syn_isclock = 1 */;
  input pl_sysref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input sys_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) output deci_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 deci_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output deci_resetn;
  output user_sysref_adc;
endmodule
