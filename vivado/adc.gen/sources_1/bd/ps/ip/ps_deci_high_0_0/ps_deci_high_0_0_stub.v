// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 29 00:18:13 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_deci_high_0_0/ps_deci_high_0_0_stub.v
// Design      : ps_deci_high_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_deci_high_0_0,deci_high,{}" *) (* CORE_GENERATION_INFO = "ps_deci_high_0_0,deci_high,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=deci_high,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "deci_high,Vivado 2025.1" *) 
module ps_deci_high_0_0(clk, resetn, data_N, ready_N, data_E, ready_E, 
  data_W, ready_W, sim_start, adc_active, sim_active, sim_clk, sim_resetn, sim_wr, sim_channel, 
  sim_data, raw_clk, raw_ready, raw_data, doa_clk, doa_ready, doa_data)
/* synthesis syn_black_box black_box_pad_pin="resetn,data_N[127:0],ready_N,data_E[127:0],ready_E,data_W[127:0],ready_W,sim_start,adc_active,sim_active,sim_resetn,sim_wr,sim_channel[1:0],sim_data[31:0],raw_ready,raw_data[383:0],doa_ready,doa_data[95:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="sim_clk" */
/* synthesis syn_force_seq_prim="raw_clk" */
/* synthesis syn_force_seq_prim="doa_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [127:0]data_N;
  input ready_N;
  input [127:0]data_E;
  input ready_E;
  input [127:0]data_W;
  input ready_W;
  input sim_start;
  input adc_active;
  output sim_active;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sim_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_clk, ASSOCIATED_RESET sim_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input sim_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sim_resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sim_resetn;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input raw_clk /* synthesis syn_isclock = 1 */;
  output raw_ready;
  output [383:0]raw_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) input doa_clk /* synthesis syn_isclock = 1 */;
  output doa_ready;
  output [95:0]doa_data;
endmodule
