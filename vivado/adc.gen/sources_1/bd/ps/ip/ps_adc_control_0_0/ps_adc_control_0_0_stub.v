// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Dec 18 22:59:40 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_adc_control_0_0/ps_adc_control_0_0_stub.v
// Design      : ps_adc_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_adc_control_0_0,adc_control,{}" *) (* CORE_GENERATION_INFO = "ps_adc_control_0_0,adc_control,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=adc_control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "adc_control,Vivado 2025.1" *) 
module ps_adc_control_0_0(clk, resetn, bram_adr_in, bram_adr_out, address, 
  data_in, wr_en, data_out, adc_start, adc_stop, sim_start, adc_active, sim_active, config_low_wr, 
  config_high_wr, config_adr, config_data, sim_low_wr, sim_high_wr, sim_channel, sim_data)
/* synthesis syn_black_box black_box_pad_pin="resetn,bram_adr_in[12:0],bram_adr_out[10:0],address[10:0],data_in[31:0],wr_en[3:0],data_out[31:0],adc_start,adc_stop,sim_start,adc_active,sim_active,config_low_wr,config_high_wr,config_adr[7:0],config_data[31:0],sim_low_wr,sim_high_wr,sim_channel[1:0],sim_data[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [12:0]bram_adr_in;
  output [10:0]bram_adr_out;
  output [10:0]address;
  input [31:0]data_in;
  output [3:0]wr_en;
  output [31:0]data_out;
  output adc_start;
  output adc_stop;
  output sim_start;
  input adc_active;
  input sim_active;
  output config_low_wr;
  output config_high_wr;
  output [7:0]config_adr;
  output [31:0]config_data;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;
endmodule
