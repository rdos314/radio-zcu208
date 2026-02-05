// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb  5 00:11:19 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_burst_1_0/ps_comp_burst_1_0_stub.v
// Design      : ps_comp_burst_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_comp_burst_1_0,comp_burst,{}" *) (* CORE_GENERATION_INFO = "ps_comp_burst_1_0,comp_burst,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_burst,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "comp_burst,Vivado 2025.1" *) 
module ps_comp_burst_1_0(config_clk, config_wr, config_adr, config_data, 
  rt_clk, rt_enable, rt_start, rt_sample, rt_freq, rt_angle, rt_wr, rt_env_0, rt_env_1, rt_env_2, 
  rt_env_3, rt_phase_0, rt_phase_1, rt_phase_2, rt_phase_3, clk, reset)
/* synthesis syn_black_box black_box_pad_pin="config_clk,config_wr,config_adr[7:0],config_data[31:0],rt_enable,rt_start,rt_sample[61:0],rt_freq[19:0],rt_angle[15:0],rt_wr,rt_env_0[15:0],rt_env_1[15:0],rt_env_2[15:0],rt_env_3[15:0],rt_phase_0[19:0],rt_phase_1[19:0],rt_phase_2[19:0],rt_phase_3[19:0],reset" */
/* synthesis syn_force_seq_prim="rt_clk" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rt_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rt_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0" *) input rt_clk /* synthesis syn_isclock = 1 */;
  input rt_enable;
  input rt_start;
  input [61:0]rt_sample;
  input [19:0]rt_freq;
  input [15:0]rt_angle;
  input rt_wr;
  input [15:0]rt_env_0;
  input [15:0]rt_env_1;
  input [15:0]rt_env_2;
  input [15:0]rt_env_3;
  input [19:0]rt_phase_0;
  input [19:0]rt_phase_1;
  input [19:0]rt_phase_2;
  input [19:0]rt_phase_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_stat_low_0_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
endmodule
