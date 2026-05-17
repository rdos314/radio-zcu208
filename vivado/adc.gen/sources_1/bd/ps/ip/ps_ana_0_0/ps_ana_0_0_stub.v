// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun May 17 12:34:02 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_ana_0_0/ps_ana_0_0_stub.v
// Design      : ps_ana_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_ana_0_0,ana,{}" *) (* CORE_GENERATION_INFO = "ps_ana_0_0,ana,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ana,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ana,Vivado 2025.1" *) 
module ps_ana_0_0(fifo_clk, ana_wr, env_N, env_E, env_W, phase_N, 
  phase_E, phase_W, err_NE, err_EW, err_WN, config_clk, config_wr, config_adr, config_data, clk, reset, 
  comp_wr, sample, size, freq, angle, doa_error, sample_N, sample_E, sample_W)
/* synthesis syn_black_box black_box_pad_pin="ana_wr,env_N[15:0],env_E[15:0],env_W[15:0],phase_N[19:0],phase_E[19:0],phase_W[19:0],err_NE[11:0],err_EW[11:0],err_WN[11:0],config_clk,config_wr,config_adr[7:0],config_data[31:0],reset,comp_wr,sample[15:0],size[8:0],freq[19:0],angle[15:0],doa_error[9:0],sample_N[5:0],sample_E[5:0],sample_W[5:0]" */
/* synthesis syn_force_seq_prim="fifo_clk" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *) input fifo_clk /* synthesis syn_isclock = 1 */;
  input ana_wr;
  input [15:0]env_N;
  input [15:0]env_E;
  input [15:0]env_W;
  input [19:0]phase_N;
  input [19:0]phase_E;
  input [19:0]phase_W;
  input [11:0]err_NE;
  input [11:0]err_EW;
  input [11:0]err_WN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana1_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output comp_wr;
  output [15:0]sample;
  output [8:0]size;
  output [19:0]freq;
  output [15:0]angle;
  output [9:0]doa_error;
  output [5:0]sample_N;
  output [5:0]sample_E;
  output [5:0]sample_W;
endmodule
