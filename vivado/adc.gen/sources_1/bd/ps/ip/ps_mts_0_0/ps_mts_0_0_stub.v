// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Nov 24 23:44:07 2025
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
module ps_mts_0_0(pl_clk, pl_sysref, sys_reset, axi_clk, 
  axi_reset_out, axi_adc_start, axi_sim_start, axi_adc_stop, axi_adc_active, axi_sim_active, 
  deci_clk, deci_resetn, user_sysref_adc, deci_stop_low, deci_stop_high, deci_adc_active, 
  deci_sim_start, deci_sim_active_low, deci_sim_active_high, comp0_clk, comp0_reset, 
  comp1_clk, comp1_reset, doa0_clk, doa0_reset, doa1_clk, doa1_reset)
/* synthesis syn_black_box black_box_pad_pin="pl_sysref,sys_reset,axi_reset_out,axi_adc_start,axi_sim_start,axi_adc_stop,axi_adc_active,axi_sim_active,deci_resetn,user_sysref_adc,deci_stop_low,deci_stop_high,deci_adc_active,deci_sim_start,deci_sim_active_low,deci_sim_active_high,comp0_reset,comp1_reset,doa0_reset,doa1_reset" */
/* synthesis syn_force_seq_prim="pl_clk" */
/* synthesis syn_force_seq_prim="axi_clk" */
/* synthesis syn_force_seq_prim="deci_clk" */
/* synthesis syn_force_seq_prim="comp0_clk" */
/* synthesis syn_force_seq_prim="comp1_clk" */
/* synthesis syn_force_seq_prim="doa0_clk" */
/* synthesis syn_force_seq_prim="doa1_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk /* synthesis syn_isclock = 1 */;
  input pl_sysref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input sys_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input axi_clk /* synthesis syn_isclock = 1 */;
  output axi_reset_out;
  input axi_adc_start;
  input axi_sim_start;
  input axi_adc_stop;
  output axi_adc_active;
  output axi_sim_active;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) output deci_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 deci_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output deci_resetn;
  output user_sysref_adc;
  input deci_stop_low;
  input deci_stop_high;
  output deci_adc_active;
  output deci_sim_start;
  input deci_sim_active_low;
  input deci_sim_active_high;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) output comp0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) output comp1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp1_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) output doa0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) output doa1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa1_reset;
endmodule
