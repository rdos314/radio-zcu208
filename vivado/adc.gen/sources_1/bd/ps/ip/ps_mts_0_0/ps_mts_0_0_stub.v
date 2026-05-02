// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat May  2 17:34:14 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_stub.v
// Design      : ps_mts_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_mts_0_0,mts,{}" *) (* CORE_GENERATION_INFO = "ps_mts_0_0,mts,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mts,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "mts,Vivado 2025.1" *) 
module ps_mts_0_0(pl_clk, pl_sysref, sys_reset, mig_clk, 
  mig_resetn, axi_clk, axi_resetn, axi_adc_start, axi_sim_start, axi_adc_stop, axi_adc_active, 
  axi_sim_active, deci_clk, deci_resetn, user_sysref_adc, deci_adc_active, deci_sim_start, 
  deci_sim_active_low, deci_sim_active_high, ana0_clk, ana0_reset, ana1_clk, ana1_reset, 
  freq0_clk, freq0_reset, freq1_clk, freq1_reset, comp0_clk, comp0_reset, comp1_clk, comp1_reset, 
  comp_ana0_clk, comp_ana0_reset, comp_ana1_clk, comp_ana1_reset)
/* synthesis syn_black_box black_box_pad_pin="pl_sysref,sys_reset,mig_resetn,axi_resetn,axi_adc_start,axi_sim_start,axi_adc_stop,axi_adc_active,axi_sim_active,deci_resetn,user_sysref_adc,deci_adc_active,deci_sim_start,deci_sim_active_low,deci_sim_active_high,ana0_reset,ana1_reset,freq0_reset,freq1_reset,comp0_reset,comp1_reset,comp_ana0_reset,comp_ana1_reset" */
/* synthesis syn_force_seq_prim="pl_clk" */
/* synthesis syn_force_seq_prim="mig_clk" */
/* synthesis syn_force_seq_prim="axi_clk" */
/* synthesis syn_force_seq_prim="deci_clk" */
/* synthesis syn_force_seq_prim="ana0_clk" */
/* synthesis syn_force_seq_prim="ana1_clk" */
/* synthesis syn_force_seq_prim="freq0_clk" */
/* synthesis syn_force_seq_prim="freq1_clk" */
/* synthesis syn_force_seq_prim="comp0_clk" */
/* synthesis syn_force_seq_prim="comp1_clk" */
/* synthesis syn_force_seq_prim="comp_ana0_clk" */
/* synthesis syn_force_seq_prim="comp_ana1_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk /* synthesis syn_isclock = 1 */;
  input pl_sysref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input sys_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mig_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mig_clk, ASSOCIATED_RESET mig_resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input mig_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mig_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mig_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output mig_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, ASSOCIATED_RESET axi_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input axi_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output axi_resetn;
  input axi_adc_start;
  input axi_sim_start;
  input axi_adc_stop;
  output axi_adc_active;
  output axi_sim_active;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) output deci_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 deci_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output deci_resetn;
  output user_sysref_adc;
  output deci_adc_active;
  output deci_sim_start;
  input deci_sim_active_low;
  input deci_sim_active_high;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ana0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ana0_clk, ASSOCIATED_RESET ana0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana0_clk, INSERT_VIP 0" *) output ana0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ana0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ana0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output ana0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ana1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ana1_clk, ASSOCIATED_RESET ana1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana1_clk, INSERT_VIP 0" *) output ana1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ana1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ana1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output ana1_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 freq0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME freq0_clk, ASSOCIATED_RESET freq0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0" *) output freq0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 freq0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME freq0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output freq0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 freq1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME freq1_clk, ASSOCIATED_RESET freq1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *) output freq1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 freq1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME freq1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output freq1_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) output comp0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) output comp1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp1_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp_ana0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp_ana0_clk, ASSOCIATED_RESET comp_ana0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0" *) output comp_ana0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp_ana0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp_ana0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp_ana0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp_ana1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp_ana1_clk, ASSOCIATED_RESET comp_ana1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana1_clk, INSERT_VIP 0" *) output comp_ana1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp_ana1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp_ana1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp_ana1_reset;
endmodule
