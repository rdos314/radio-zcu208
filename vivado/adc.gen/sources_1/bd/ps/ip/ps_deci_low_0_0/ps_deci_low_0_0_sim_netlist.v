// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov 23 23:48:20 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_deci_low_0_0/ps_deci_low_0_0_sim_netlist.v
// Design      : ps_deci_low_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_deci_low_0_0,deci_low,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "deci_low,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_deci_low_0_0
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W,
    adc_active,
    sim_active,
    stop,
    sim_clk,
    sim_resetn,
    sim_wr,
    sim_channel,
    sim_data,
    raw_clk,
    raw_ready,
    raw_data,
    doa_clk,
    doa_ready,
    doa_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [127:0]data_N;
  input ready_N;
  input [127:0]data_E;
  input ready_E;
  input [127:0]data_W;
  input ready_W;
  input adc_active;
  input sim_active;
  output stop;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sim_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_clk, ASSOCIATED_RESET sim_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input sim_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sim_resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sim_resetn;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input raw_clk;
  output raw_ready;
  output [195:0]raw_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) input doa_clk;
  output doa_ready;
  output [69:0]doa_data;

  wire adc_active;
  wire clk;
  wire [127:0]data_E;
  wire [127:0]data_N;
  wire [127:0]data_W;
  wire doa_clk;
  wire [69:0]doa_data;
  wire doa_ready;
  wire raw_clk;
  wire [195:0]raw_data;
  wire raw_ready;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;
  wire sim_active;
  wire [1:0]sim_channel;
  wire sim_clk;
  wire [31:0]sim_data;
  wire sim_resetn;
  wire sim_wr;
  wire stop;

  ps_deci_low_0_0_deci_low inst
       (.adc_active(adc_active),
        .clk(clk),
        .data_E(data_E),
        .data_N(data_N),
        .data_W(data_W),
        .doa_clk(doa_clk),
        .doa_data(doa_data),
        .doa_ready(doa_ready),
        .raw_clk(raw_clk),
        .raw_data(raw_data),
        .raw_ready(raw_ready),
        .ready_E(ready_E),
        .ready_N(ready_N),
        .ready_W(ready_W),
        .resetn(resetn),
        .sim_active(sim_active),
        .sim_channel(sim_channel),
        .sim_clk(sim_clk),
        .sim_data(sim_data),
        .sim_resetn(sim_resetn),
        .sim_wr(sim_wr),
        .stop(stop));
endmodule

(* ORIG_REF_NAME = "deci_low" *) (* keep_hierarchy = "soft" *) 
module ps_deci_low_0_0_deci_low
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W,
    adc_active,
    sim_active,
    stop,
    sim_clk,
    sim_resetn,
    sim_wr,
    sim_channel,
    sim_data,
    raw_clk,
    raw_ready,
    raw_data,
    doa_clk,
    doa_ready,
    doa_data);
  input clk;
  input resetn;
  input [127:0]data_N;
  input ready_N;
  input [127:0]data_E;
  input ready_E;
  input [127:0]data_W;
  input ready_W;
  input adc_active;
  input sim_active;
  output stop;
  input sim_clk;
  input sim_resetn;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  input raw_clk;
  output raw_ready;
  output [195:0]raw_data;
  input doa_clk;
  output doa_ready;
  output [69:0]doa_data;

  wire active;
  wire active0;
  (* async_reg = "true" *) wire active_1;
  (* async_reg = "true" *) wire active_2;
  (* MARK_DEBUG *) wire adc_active;
  wire clear;
  wire clk;
  wire [13:0]dE;
  wire [13:0]dN;
  wire [13:0]dW;
  wire [127:0]data_E;
  wire [127:0]data_N;
  wire [127:0]data_W;
  wire \deci_low.counter[0]_i_3_n_0 ;
  wire [27:0]\deci_low.counter_reg ;
  wire \deci_low.counter_reg[0]_i_2_n_0 ;
  wire \deci_low.counter_reg[0]_i_2_n_1 ;
  wire \deci_low.counter_reg[0]_i_2_n_10 ;
  wire \deci_low.counter_reg[0]_i_2_n_11 ;
  wire \deci_low.counter_reg[0]_i_2_n_12 ;
  wire \deci_low.counter_reg[0]_i_2_n_13 ;
  wire \deci_low.counter_reg[0]_i_2_n_14 ;
  wire \deci_low.counter_reg[0]_i_2_n_15 ;
  wire \deci_low.counter_reg[0]_i_2_n_2 ;
  wire \deci_low.counter_reg[0]_i_2_n_3 ;
  wire \deci_low.counter_reg[0]_i_2_n_4 ;
  wire \deci_low.counter_reg[0]_i_2_n_5 ;
  wire \deci_low.counter_reg[0]_i_2_n_6 ;
  wire \deci_low.counter_reg[0]_i_2_n_7 ;
  wire \deci_low.counter_reg[0]_i_2_n_8 ;
  wire \deci_low.counter_reg[0]_i_2_n_9 ;
  wire \deci_low.counter_reg[16]_i_1_n_0 ;
  wire \deci_low.counter_reg[16]_i_1_n_1 ;
  wire \deci_low.counter_reg[16]_i_1_n_10 ;
  wire \deci_low.counter_reg[16]_i_1_n_11 ;
  wire \deci_low.counter_reg[16]_i_1_n_12 ;
  wire \deci_low.counter_reg[16]_i_1_n_13 ;
  wire \deci_low.counter_reg[16]_i_1_n_14 ;
  wire \deci_low.counter_reg[16]_i_1_n_15 ;
  wire \deci_low.counter_reg[16]_i_1_n_2 ;
  wire \deci_low.counter_reg[16]_i_1_n_3 ;
  wire \deci_low.counter_reg[16]_i_1_n_4 ;
  wire \deci_low.counter_reg[16]_i_1_n_5 ;
  wire \deci_low.counter_reg[16]_i_1_n_6 ;
  wire \deci_low.counter_reg[16]_i_1_n_7 ;
  wire \deci_low.counter_reg[16]_i_1_n_8 ;
  wire \deci_low.counter_reg[16]_i_1_n_9 ;
  wire \deci_low.counter_reg[24]_i_1_n_12 ;
  wire \deci_low.counter_reg[24]_i_1_n_13 ;
  wire \deci_low.counter_reg[24]_i_1_n_14 ;
  wire \deci_low.counter_reg[24]_i_1_n_15 ;
  wire \deci_low.counter_reg[24]_i_1_n_5 ;
  wire \deci_low.counter_reg[24]_i_1_n_6 ;
  wire \deci_low.counter_reg[24]_i_1_n_7 ;
  wire \deci_low.counter_reg[8]_i_1_n_0 ;
  wire \deci_low.counter_reg[8]_i_1_n_1 ;
  wire \deci_low.counter_reg[8]_i_1_n_10 ;
  wire \deci_low.counter_reg[8]_i_1_n_11 ;
  wire \deci_low.counter_reg[8]_i_1_n_12 ;
  wire \deci_low.counter_reg[8]_i_1_n_13 ;
  wire \deci_low.counter_reg[8]_i_1_n_14 ;
  wire \deci_low.counter_reg[8]_i_1_n_15 ;
  wire \deci_low.counter_reg[8]_i_1_n_2 ;
  wire \deci_low.counter_reg[8]_i_1_n_3 ;
  wire \deci_low.counter_reg[8]_i_1_n_4 ;
  wire \deci_low.counter_reg[8]_i_1_n_5 ;
  wire \deci_low.counter_reg[8]_i_1_n_6 ;
  wire \deci_low.counter_reg[8]_i_1_n_7 ;
  wire \deci_low.counter_reg[8]_i_1_n_8 ;
  wire \deci_low.counter_reg[8]_i_1_n_9 ;
  wire \deci_low.doa_counter[0]_i_1_n_0 ;
  wire \deci_low.doa_counter[0]_i_3_n_0 ;
  wire [27:0]\deci_low.doa_counter_reg ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_0 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_1 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_10 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_11 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_12 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_13 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_14 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_15 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_2 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_3 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_4 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_5 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_6 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_7 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_8 ;
  wire \deci_low.doa_counter_reg[0]_i_2_n_9 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_0 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_1 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_10 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_11 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_12 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_13 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_14 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_15 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_2 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_3 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_4 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_5 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_6 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_7 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_8 ;
  wire \deci_low.doa_counter_reg[16]_i_1_n_9 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_12 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_13 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_14 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_15 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_5 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_6 ;
  wire \deci_low.doa_counter_reg[24]_i_1_n_7 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_0 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_1 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_10 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_11 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_12 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_13 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_14 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_15 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_2 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_3 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_4 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_5 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_6 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_7 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_8 ;
  wire \deci_low.doa_counter_reg[8]_i_1_n_9 ;
  wire \deci_low.doa_out_active_i_1_n_0 ;
  wire \deci_low.mux_E[0]_i_1_n_0 ;
  wire \deci_low.mux_E[100]_i_1_n_0 ;
  wire \deci_low.mux_E[101]_i_1_n_0 ;
  wire \deci_low.mux_E[102]_i_1_n_0 ;
  wire \deci_low.mux_E[103]_i_1_n_0 ;
  wire \deci_low.mux_E[104]_i_1_n_0 ;
  wire \deci_low.mux_E[105]_i_1_n_0 ;
  wire \deci_low.mux_E[106]_i_1_n_0 ;
  wire \deci_low.mux_E[107]_i_1_n_0 ;
  wire \deci_low.mux_E[108]_i_1_n_0 ;
  wire \deci_low.mux_E[109]_i_1_n_0 ;
  wire \deci_low.mux_E[10]_i_1_n_0 ;
  wire \deci_low.mux_E[110]_i_1_n_0 ;
  wire \deci_low.mux_E[111]_i_1_n_0 ;
  wire \deci_low.mux_E[112]_i_1_n_0 ;
  wire \deci_low.mux_E[113]_i_1_n_0 ;
  wire \deci_low.mux_E[114]_i_1_n_0 ;
  wire \deci_low.mux_E[115]_i_1_n_0 ;
  wire \deci_low.mux_E[116]_i_1_n_0 ;
  wire \deci_low.mux_E[117]_i_1_n_0 ;
  wire \deci_low.mux_E[118]_i_1_n_0 ;
  wire \deci_low.mux_E[119]_i_1_n_0 ;
  wire \deci_low.mux_E[11]_i_1_n_0 ;
  wire \deci_low.mux_E[120]_i_1_n_0 ;
  wire \deci_low.mux_E[121]_i_1_n_0 ;
  wire \deci_low.mux_E[122]_i_1_n_0 ;
  wire \deci_low.mux_E[123]_i_1_n_0 ;
  wire \deci_low.mux_E[124]_i_1_n_0 ;
  wire \deci_low.mux_E[125]_i_1_n_0 ;
  wire \deci_low.mux_E[126]_i_1_n_0 ;
  wire \deci_low.mux_E[127]_i_1_n_0 ;
  wire \deci_low.mux_E[12]_i_1_n_0 ;
  wire \deci_low.mux_E[13]_i_1_n_0 ;
  wire \deci_low.mux_E[14]_i_1_n_0 ;
  wire \deci_low.mux_E[15]_i_1_n_0 ;
  wire \deci_low.mux_E[16]_i_1_n_0 ;
  wire \deci_low.mux_E[17]_i_1_n_0 ;
  wire \deci_low.mux_E[18]_i_1_n_0 ;
  wire \deci_low.mux_E[19]_i_1_n_0 ;
  wire \deci_low.mux_E[1]_i_1_n_0 ;
  wire \deci_low.mux_E[20]_i_1_n_0 ;
  wire \deci_low.mux_E[21]_i_1_n_0 ;
  wire \deci_low.mux_E[22]_i_1_n_0 ;
  wire \deci_low.mux_E[23]_i_1_n_0 ;
  wire \deci_low.mux_E[24]_i_1_n_0 ;
  wire \deci_low.mux_E[25]_i_1_n_0 ;
  wire \deci_low.mux_E[26]_i_1_n_0 ;
  wire \deci_low.mux_E[27]_i_1_n_0 ;
  wire \deci_low.mux_E[28]_i_1_n_0 ;
  wire \deci_low.mux_E[29]_i_1_n_0 ;
  wire \deci_low.mux_E[2]_i_1_n_0 ;
  wire \deci_low.mux_E[30]_i_1_n_0 ;
  wire \deci_low.mux_E[31]_i_1_n_0 ;
  wire \deci_low.mux_E[32]_i_1_n_0 ;
  wire \deci_low.mux_E[33]_i_1_n_0 ;
  wire \deci_low.mux_E[34]_i_1_n_0 ;
  wire \deci_low.mux_E[35]_i_1_n_0 ;
  wire \deci_low.mux_E[36]_i_1_n_0 ;
  wire \deci_low.mux_E[37]_i_1_n_0 ;
  wire \deci_low.mux_E[38]_i_1_n_0 ;
  wire \deci_low.mux_E[39]_i_1_n_0 ;
  wire \deci_low.mux_E[3]_i_1_n_0 ;
  wire \deci_low.mux_E[40]_i_1_n_0 ;
  wire \deci_low.mux_E[41]_i_1_n_0 ;
  wire \deci_low.mux_E[42]_i_1_n_0 ;
  wire \deci_low.mux_E[43]_i_1_n_0 ;
  wire \deci_low.mux_E[44]_i_1_n_0 ;
  wire \deci_low.mux_E[45]_i_1_n_0 ;
  wire \deci_low.mux_E[46]_i_1_n_0 ;
  wire \deci_low.mux_E[47]_i_1_n_0 ;
  wire \deci_low.mux_E[48]_i_1_n_0 ;
  wire \deci_low.mux_E[49]_i_1_n_0 ;
  wire \deci_low.mux_E[4]_i_1_n_0 ;
  wire \deci_low.mux_E[50]_i_1_n_0 ;
  wire \deci_low.mux_E[51]_i_1_n_0 ;
  wire \deci_low.mux_E[52]_i_1_n_0 ;
  wire \deci_low.mux_E[53]_i_1_n_0 ;
  wire \deci_low.mux_E[54]_i_1_n_0 ;
  wire \deci_low.mux_E[55]_i_1_n_0 ;
  wire \deci_low.mux_E[56]_i_1_n_0 ;
  wire \deci_low.mux_E[57]_i_1_n_0 ;
  wire \deci_low.mux_E[58]_i_1_n_0 ;
  wire \deci_low.mux_E[59]_i_1_n_0 ;
  wire \deci_low.mux_E[5]_i_1_n_0 ;
  wire \deci_low.mux_E[60]_i_1_n_0 ;
  wire \deci_low.mux_E[61]_i_1_n_0 ;
  wire \deci_low.mux_E[62]_i_1_n_0 ;
  wire \deci_low.mux_E[63]_i_1_n_0 ;
  wire \deci_low.mux_E[64]_i_1_n_0 ;
  wire \deci_low.mux_E[65]_i_1_n_0 ;
  wire \deci_low.mux_E[66]_i_1_n_0 ;
  wire \deci_low.mux_E[67]_i_1_n_0 ;
  wire \deci_low.mux_E[68]_i_1_n_0 ;
  wire \deci_low.mux_E[69]_i_1_n_0 ;
  wire \deci_low.mux_E[6]_i_1_n_0 ;
  wire \deci_low.mux_E[70]_i_1_n_0 ;
  wire \deci_low.mux_E[71]_i_1_n_0 ;
  wire \deci_low.mux_E[72]_i_1_n_0 ;
  wire \deci_low.mux_E[73]_i_1_n_0 ;
  wire \deci_low.mux_E[74]_i_1_n_0 ;
  wire \deci_low.mux_E[75]_i_1_n_0 ;
  wire \deci_low.mux_E[76]_i_1_n_0 ;
  wire \deci_low.mux_E[77]_i_1_n_0 ;
  wire \deci_low.mux_E[78]_i_1_n_0 ;
  wire \deci_low.mux_E[79]_i_1_n_0 ;
  wire \deci_low.mux_E[7]_i_1_n_0 ;
  wire \deci_low.mux_E[80]_i_1_n_0 ;
  wire \deci_low.mux_E[81]_i_1_n_0 ;
  wire \deci_low.mux_E[82]_i_1_n_0 ;
  wire \deci_low.mux_E[83]_i_1_n_0 ;
  wire \deci_low.mux_E[84]_i_1_n_0 ;
  wire \deci_low.mux_E[85]_i_1_n_0 ;
  wire \deci_low.mux_E[86]_i_1_n_0 ;
  wire \deci_low.mux_E[87]_i_1_n_0 ;
  wire \deci_low.mux_E[88]_i_1_n_0 ;
  wire \deci_low.mux_E[89]_i_1_n_0 ;
  wire \deci_low.mux_E[8]_i_1_n_0 ;
  wire \deci_low.mux_E[90]_i_1_n_0 ;
  wire \deci_low.mux_E[91]_i_1_n_0 ;
  wire \deci_low.mux_E[92]_i_1_n_0 ;
  wire \deci_low.mux_E[93]_i_1_n_0 ;
  wire \deci_low.mux_E[94]_i_1_n_0 ;
  wire \deci_low.mux_E[95]_i_1_n_0 ;
  wire \deci_low.mux_E[96]_i_1_n_0 ;
  wire \deci_low.mux_E[97]_i_1_n_0 ;
  wire \deci_low.mux_E[98]_i_1_n_0 ;
  wire \deci_low.mux_E[99]_i_1_n_0 ;
  wire \deci_low.mux_E[9]_i_1_n_0 ;
  wire \deci_low.mux_N[0]_i_1_n_0 ;
  wire \deci_low.mux_N[100]_i_1_n_0 ;
  wire \deci_low.mux_N[101]_i_1_n_0 ;
  wire \deci_low.mux_N[102]_i_1_n_0 ;
  wire \deci_low.mux_N[103]_i_1_n_0 ;
  wire \deci_low.mux_N[104]_i_1_n_0 ;
  wire \deci_low.mux_N[105]_i_1_n_0 ;
  wire \deci_low.mux_N[106]_i_1_n_0 ;
  wire \deci_low.mux_N[107]_i_1_n_0 ;
  wire \deci_low.mux_N[108]_i_1_n_0 ;
  wire \deci_low.mux_N[109]_i_1_n_0 ;
  wire \deci_low.mux_N[10]_i_1_n_0 ;
  wire \deci_low.mux_N[110]_i_1_n_0 ;
  wire \deci_low.mux_N[111]_i_1_n_0 ;
  wire \deci_low.mux_N[112]_i_1_n_0 ;
  wire \deci_low.mux_N[113]_i_1_n_0 ;
  wire \deci_low.mux_N[114]_i_1_n_0 ;
  wire \deci_low.mux_N[115]_i_1_n_0 ;
  wire \deci_low.mux_N[116]_i_1_n_0 ;
  wire \deci_low.mux_N[117]_i_1_n_0 ;
  wire \deci_low.mux_N[118]_i_1_n_0 ;
  wire \deci_low.mux_N[119]_i_1_n_0 ;
  wire \deci_low.mux_N[11]_i_1_n_0 ;
  wire \deci_low.mux_N[120]_i_1_n_0 ;
  wire \deci_low.mux_N[121]_i_1_n_0 ;
  wire \deci_low.mux_N[122]_i_1_n_0 ;
  wire \deci_low.mux_N[123]_i_1_n_0 ;
  wire \deci_low.mux_N[124]_i_1_n_0 ;
  wire \deci_low.mux_N[125]_i_1_n_0 ;
  wire \deci_low.mux_N[126]_i_1_n_0 ;
  wire \deci_low.mux_N[127]_i_1_n_0 ;
  wire \deci_low.mux_N[12]_i_1_n_0 ;
  wire \deci_low.mux_N[13]_i_1_n_0 ;
  wire \deci_low.mux_N[14]_i_1_n_0 ;
  wire \deci_low.mux_N[15]_i_1_n_0 ;
  wire \deci_low.mux_N[16]_i_1_n_0 ;
  wire \deci_low.mux_N[17]_i_1_n_0 ;
  wire \deci_low.mux_N[18]_i_1_n_0 ;
  wire \deci_low.mux_N[19]_i_1_n_0 ;
  wire \deci_low.mux_N[1]_i_1_n_0 ;
  wire \deci_low.mux_N[20]_i_1_n_0 ;
  wire \deci_low.mux_N[21]_i_1_n_0 ;
  wire \deci_low.mux_N[22]_i_1_n_0 ;
  wire \deci_low.mux_N[23]_i_1_n_0 ;
  wire \deci_low.mux_N[24]_i_1_n_0 ;
  wire \deci_low.mux_N[25]_i_1_n_0 ;
  wire \deci_low.mux_N[26]_i_1_n_0 ;
  wire \deci_low.mux_N[27]_i_1_n_0 ;
  wire \deci_low.mux_N[28]_i_1_n_0 ;
  wire \deci_low.mux_N[29]_i_1_n_0 ;
  wire \deci_low.mux_N[2]_i_1_n_0 ;
  wire \deci_low.mux_N[30]_i_1_n_0 ;
  wire \deci_low.mux_N[31]_i_1_n_0 ;
  wire \deci_low.mux_N[32]_i_1_n_0 ;
  wire \deci_low.mux_N[33]_i_1_n_0 ;
  wire \deci_low.mux_N[34]_i_1_n_0 ;
  wire \deci_low.mux_N[35]_i_1_n_0 ;
  wire \deci_low.mux_N[36]_i_1_n_0 ;
  wire \deci_low.mux_N[37]_i_1_n_0 ;
  wire \deci_low.mux_N[38]_i_1_n_0 ;
  wire \deci_low.mux_N[39]_i_1_n_0 ;
  wire \deci_low.mux_N[3]_i_1_n_0 ;
  wire \deci_low.mux_N[40]_i_1_n_0 ;
  wire \deci_low.mux_N[41]_i_1_n_0 ;
  wire \deci_low.mux_N[42]_i_1_n_0 ;
  wire \deci_low.mux_N[43]_i_1_n_0 ;
  wire \deci_low.mux_N[44]_i_1_n_0 ;
  wire \deci_low.mux_N[45]_i_1_n_0 ;
  wire \deci_low.mux_N[46]_i_1_n_0 ;
  wire \deci_low.mux_N[47]_i_1_n_0 ;
  wire \deci_low.mux_N[48]_i_1_n_0 ;
  wire \deci_low.mux_N[49]_i_1_n_0 ;
  wire \deci_low.mux_N[4]_i_1_n_0 ;
  wire \deci_low.mux_N[50]_i_1_n_0 ;
  wire \deci_low.mux_N[51]_i_1_n_0 ;
  wire \deci_low.mux_N[52]_i_1_n_0 ;
  wire \deci_low.mux_N[53]_i_1_n_0 ;
  wire \deci_low.mux_N[54]_i_1_n_0 ;
  wire \deci_low.mux_N[55]_i_1_n_0 ;
  wire \deci_low.mux_N[56]_i_1_n_0 ;
  wire \deci_low.mux_N[57]_i_1_n_0 ;
  wire \deci_low.mux_N[58]_i_1_n_0 ;
  wire \deci_low.mux_N[59]_i_1_n_0 ;
  wire \deci_low.mux_N[5]_i_1_n_0 ;
  wire \deci_low.mux_N[60]_i_1_n_0 ;
  wire \deci_low.mux_N[61]_i_1_n_0 ;
  wire \deci_low.mux_N[62]_i_1_n_0 ;
  wire \deci_low.mux_N[63]_i_1_n_0 ;
  wire \deci_low.mux_N[64]_i_1_n_0 ;
  wire \deci_low.mux_N[65]_i_1_n_0 ;
  wire \deci_low.mux_N[66]_i_1_n_0 ;
  wire \deci_low.mux_N[67]_i_1_n_0 ;
  wire \deci_low.mux_N[68]_i_1_n_0 ;
  wire \deci_low.mux_N[69]_i_1_n_0 ;
  wire \deci_low.mux_N[6]_i_1_n_0 ;
  wire \deci_low.mux_N[70]_i_1_n_0 ;
  wire \deci_low.mux_N[71]_i_1_n_0 ;
  wire \deci_low.mux_N[72]_i_1_n_0 ;
  wire \deci_low.mux_N[73]_i_1_n_0 ;
  wire \deci_low.mux_N[74]_i_1_n_0 ;
  wire \deci_low.mux_N[75]_i_1_n_0 ;
  wire \deci_low.mux_N[76]_i_1_n_0 ;
  wire \deci_low.mux_N[77]_i_1_n_0 ;
  wire \deci_low.mux_N[78]_i_1_n_0 ;
  wire \deci_low.mux_N[79]_i_1_n_0 ;
  wire \deci_low.mux_N[7]_i_1_n_0 ;
  wire \deci_low.mux_N[80]_i_1_n_0 ;
  wire \deci_low.mux_N[81]_i_1_n_0 ;
  wire \deci_low.mux_N[82]_i_1_n_0 ;
  wire \deci_low.mux_N[83]_i_1_n_0 ;
  wire \deci_low.mux_N[84]_i_1_n_0 ;
  wire \deci_low.mux_N[85]_i_1_n_0 ;
  wire \deci_low.mux_N[86]_i_1_n_0 ;
  wire \deci_low.mux_N[87]_i_1_n_0 ;
  wire \deci_low.mux_N[88]_i_1_n_0 ;
  wire \deci_low.mux_N[89]_i_1_n_0 ;
  wire \deci_low.mux_N[8]_i_1_n_0 ;
  wire \deci_low.mux_N[90]_i_1_n_0 ;
  wire \deci_low.mux_N[91]_i_1_n_0 ;
  wire \deci_low.mux_N[92]_i_1_n_0 ;
  wire \deci_low.mux_N[93]_i_1_n_0 ;
  wire \deci_low.mux_N[94]_i_1_n_0 ;
  wire \deci_low.mux_N[95]_i_1_n_0 ;
  wire \deci_low.mux_N[96]_i_1_n_0 ;
  wire \deci_low.mux_N[97]_i_1_n_0 ;
  wire \deci_low.mux_N[98]_i_1_n_0 ;
  wire \deci_low.mux_N[99]_i_1_n_0 ;
  wire \deci_low.mux_N[9]_i_1_n_0 ;
  wire \deci_low.mux_W[0]_i_1_n_0 ;
  wire \deci_low.mux_W[100]_i_1_n_0 ;
  wire \deci_low.mux_W[101]_i_1_n_0 ;
  wire \deci_low.mux_W[102]_i_1_n_0 ;
  wire \deci_low.mux_W[103]_i_1_n_0 ;
  wire \deci_low.mux_W[104]_i_1_n_0 ;
  wire \deci_low.mux_W[105]_i_1_n_0 ;
  wire \deci_low.mux_W[106]_i_1_n_0 ;
  wire \deci_low.mux_W[107]_i_1_n_0 ;
  wire \deci_low.mux_W[108]_i_1_n_0 ;
  wire \deci_low.mux_W[109]_i_1_n_0 ;
  wire \deci_low.mux_W[10]_i_1_n_0 ;
  wire \deci_low.mux_W[110]_i_1_n_0 ;
  wire \deci_low.mux_W[111]_i_1_n_0 ;
  wire \deci_low.mux_W[112]_i_1_n_0 ;
  wire \deci_low.mux_W[113]_i_1_n_0 ;
  wire \deci_low.mux_W[114]_i_1_n_0 ;
  wire \deci_low.mux_W[115]_i_1_n_0 ;
  wire \deci_low.mux_W[116]_i_1_n_0 ;
  wire \deci_low.mux_W[117]_i_1_n_0 ;
  wire \deci_low.mux_W[118]_i_1_n_0 ;
  wire \deci_low.mux_W[119]_i_1_n_0 ;
  wire \deci_low.mux_W[11]_i_1_n_0 ;
  wire \deci_low.mux_W[120]_i_1_n_0 ;
  wire \deci_low.mux_W[121]_i_1_n_0 ;
  wire \deci_low.mux_W[122]_i_1_n_0 ;
  wire \deci_low.mux_W[123]_i_1_n_0 ;
  wire \deci_low.mux_W[124]_i_1_n_0 ;
  wire \deci_low.mux_W[125]_i_1_n_0 ;
  wire \deci_low.mux_W[126]_i_1_n_0 ;
  wire \deci_low.mux_W[127]_i_1_n_0 ;
  wire \deci_low.mux_W[12]_i_1_n_0 ;
  wire \deci_low.mux_W[13]_i_1_n_0 ;
  wire \deci_low.mux_W[14]_i_1_n_0 ;
  wire \deci_low.mux_W[15]_i_1_n_0 ;
  wire \deci_low.mux_W[16]_i_1_n_0 ;
  wire \deci_low.mux_W[17]_i_1_n_0 ;
  wire \deci_low.mux_W[18]_i_1_n_0 ;
  wire \deci_low.mux_W[19]_i_1_n_0 ;
  wire \deci_low.mux_W[1]_i_1_n_0 ;
  wire \deci_low.mux_W[20]_i_1_n_0 ;
  wire \deci_low.mux_W[21]_i_1_n_0 ;
  wire \deci_low.mux_W[22]_i_1_n_0 ;
  wire \deci_low.mux_W[23]_i_1_n_0 ;
  wire \deci_low.mux_W[24]_i_1_n_0 ;
  wire \deci_low.mux_W[25]_i_1_n_0 ;
  wire \deci_low.mux_W[26]_i_1_n_0 ;
  wire \deci_low.mux_W[27]_i_1_n_0 ;
  wire \deci_low.mux_W[28]_i_1_n_0 ;
  wire \deci_low.mux_W[29]_i_1_n_0 ;
  wire \deci_low.mux_W[2]_i_1_n_0 ;
  wire \deci_low.mux_W[30]_i_1_n_0 ;
  wire \deci_low.mux_W[31]_i_1_n_0 ;
  wire \deci_low.mux_W[32]_i_1_n_0 ;
  wire \deci_low.mux_W[33]_i_1_n_0 ;
  wire \deci_low.mux_W[34]_i_1_n_0 ;
  wire \deci_low.mux_W[35]_i_1_n_0 ;
  wire \deci_low.mux_W[36]_i_1_n_0 ;
  wire \deci_low.mux_W[37]_i_1_n_0 ;
  wire \deci_low.mux_W[38]_i_1_n_0 ;
  wire \deci_low.mux_W[39]_i_1_n_0 ;
  wire \deci_low.mux_W[3]_i_1_n_0 ;
  wire \deci_low.mux_W[40]_i_1_n_0 ;
  wire \deci_low.mux_W[41]_i_1_n_0 ;
  wire \deci_low.mux_W[42]_i_1_n_0 ;
  wire \deci_low.mux_W[43]_i_1_n_0 ;
  wire \deci_low.mux_W[44]_i_1_n_0 ;
  wire \deci_low.mux_W[45]_i_1_n_0 ;
  wire \deci_low.mux_W[46]_i_1_n_0 ;
  wire \deci_low.mux_W[47]_i_1_n_0 ;
  wire \deci_low.mux_W[48]_i_1_n_0 ;
  wire \deci_low.mux_W[49]_i_1_n_0 ;
  wire \deci_low.mux_W[4]_i_1_n_0 ;
  wire \deci_low.mux_W[50]_i_1_n_0 ;
  wire \deci_low.mux_W[51]_i_1_n_0 ;
  wire \deci_low.mux_W[52]_i_1_n_0 ;
  wire \deci_low.mux_W[53]_i_1_n_0 ;
  wire \deci_low.mux_W[54]_i_1_n_0 ;
  wire \deci_low.mux_W[55]_i_1_n_0 ;
  wire \deci_low.mux_W[56]_i_1_n_0 ;
  wire \deci_low.mux_W[57]_i_1_n_0 ;
  wire \deci_low.mux_W[58]_i_1_n_0 ;
  wire \deci_low.mux_W[59]_i_1_n_0 ;
  wire \deci_low.mux_W[5]_i_1_n_0 ;
  wire \deci_low.mux_W[60]_i_1_n_0 ;
  wire \deci_low.mux_W[61]_i_1_n_0 ;
  wire \deci_low.mux_W[62]_i_1_n_0 ;
  wire \deci_low.mux_W[63]_i_1_n_0 ;
  wire \deci_low.mux_W[64]_i_1_n_0 ;
  wire \deci_low.mux_W[65]_i_1_n_0 ;
  wire \deci_low.mux_W[66]_i_1_n_0 ;
  wire \deci_low.mux_W[67]_i_1_n_0 ;
  wire \deci_low.mux_W[68]_i_1_n_0 ;
  wire \deci_low.mux_W[69]_i_1_n_0 ;
  wire \deci_low.mux_W[6]_i_1_n_0 ;
  wire \deci_low.mux_W[70]_i_1_n_0 ;
  wire \deci_low.mux_W[71]_i_1_n_0 ;
  wire \deci_low.mux_W[72]_i_1_n_0 ;
  wire \deci_low.mux_W[73]_i_1_n_0 ;
  wire \deci_low.mux_W[74]_i_1_n_0 ;
  wire \deci_low.mux_W[75]_i_1_n_0 ;
  wire \deci_low.mux_W[76]_i_1_n_0 ;
  wire \deci_low.mux_W[77]_i_1_n_0 ;
  wire \deci_low.mux_W[78]_i_1_n_0 ;
  wire \deci_low.mux_W[79]_i_1_n_0 ;
  wire \deci_low.mux_W[7]_i_1_n_0 ;
  wire \deci_low.mux_W[80]_i_1_n_0 ;
  wire \deci_low.mux_W[81]_i_1_n_0 ;
  wire \deci_low.mux_W[82]_i_1_n_0 ;
  wire \deci_low.mux_W[83]_i_1_n_0 ;
  wire \deci_low.mux_W[84]_i_1_n_0 ;
  wire \deci_low.mux_W[85]_i_1_n_0 ;
  wire \deci_low.mux_W[86]_i_1_n_0 ;
  wire \deci_low.mux_W[87]_i_1_n_0 ;
  wire \deci_low.mux_W[88]_i_1_n_0 ;
  wire \deci_low.mux_W[89]_i_1_n_0 ;
  wire \deci_low.mux_W[8]_i_1_n_0 ;
  wire \deci_low.mux_W[90]_i_1_n_0 ;
  wire \deci_low.mux_W[91]_i_1_n_0 ;
  wire \deci_low.mux_W[92]_i_1_n_0 ;
  wire \deci_low.mux_W[93]_i_1_n_0 ;
  wire \deci_low.mux_W[94]_i_1_n_0 ;
  wire \deci_low.mux_W[95]_i_1_n_0 ;
  wire \deci_low.mux_W[96]_i_1_n_0 ;
  wire \deci_low.mux_W[97]_i_1_n_0 ;
  wire \deci_low.mux_W[98]_i_1_n_0 ;
  wire \deci_low.mux_W[99]_i_1_n_0 ;
  wire \deci_low.mux_W[9]_i_1_n_0 ;
  wire \deci_low.mux_active_i_1_n_0 ;
  wire \deci_low.mux_active_i_2_n_0 ;
  wire \deci_low.raw_active_i_1_n_0 ;
  wire \deci_low.raw_active_i_2_n_0 ;
  wire \deci_low.raw_delay[11]_i_1_n_0 ;
  wire \deci_low.raw_delay[11]_i_3_n_0 ;
  wire \deci_low.raw_delay[11]_i_4_n_0 ;
  wire \deci_low.raw_delay[11]_i_5_n_0 ;
  wire \deci_low.raw_delay[11]_i_6_n_0 ;
  wire \deci_low.raw_delay[11]_i_7_n_0 ;
  wire \deci_low.raw_delay[8]_i_2_n_0 ;
  wire \deci_low.raw_delay[8]_i_3_n_0 ;
  wire \deci_low.raw_delay[8]_i_4_n_0 ;
  wire \deci_low.raw_delay[8]_i_5_n_0 ;
  wire \deci_low.raw_delay[8]_i_6_n_0 ;
  wire \deci_low.raw_delay[8]_i_7_n_0 ;
  wire \deci_low.raw_delay[8]_i_8_n_0 ;
  wire \deci_low.raw_delay[8]_i_9_n_0 ;
  wire [11:0]\deci_low.raw_delay_reg ;
  wire \deci_low.raw_delay_reg[11]_i_2_n_6 ;
  wire \deci_low.raw_delay_reg[11]_i_2_n_7 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_0 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_1 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_2 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_3 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_4 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_5 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_6 ;
  wire \deci_low.raw_delay_reg[8]_i_1_n_7 ;
  wire \deci_low.sim_count[0]_i_1_n_0 ;
  wire \deci_low.sim_count[1]_i_1_n_0 ;
  wire \deci_low.sim_count[1]_i_2_n_0 ;
  wire \deci_low.sim_curr_wr_i_1_n_0 ;
  wire \deci_low.sim_rd_i_1_n_0 ;
  wire \deci_low.sim_wr_E_i_1_n_0 ;
  wire \deci_low.sim_wr_E_i_2_n_0 ;
  wire \deci_low.sim_wr_N_i_1_n_0 ;
  wire \deci_low.sim_wr_W_i_1_n_0 ;
  wire \deci_low.stop_i_1_n_0 ;
  wire doa_active;
  wire doa_active0;
  wire doa_clk;
  wire [69:0]doa_data;
  wire doa_fifo_empty;
  wire doa_fifo_wr;
  wire [69:0]doa_in_data;
  wire doa_out_active;
  wire [69:0]doa_out_data;
  wire doa_ready;
  wire fifo_raw_i_i_1_n_0;
  wire fifo_sim_N_i_i_1_n_0;
  wire [126:17]fir_raw_E;
  wire [126:17]fir_raw_N;
  wire [126:17]fir_raw_W;
  wire [127:0]mux_E;
  wire [127:0]mux_N;
  wire [127:0]mux_W;
  (* MARK_DEBUG *) wire mux_active;
  wire [127:0]p_0_in1_in__0;
  wire raw_active;
  wire raw_clk;
  wire [195:0]raw_data;
  wire [11:0]raw_delay0;
  wire raw_fifo_empty;
  wire raw_fifo_wr;
  wire [195:0]raw_in_data;
  wire [195:0]raw_out_data;
  wire raw_ready;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;
  (* MARK_DEBUG *) wire [13:0]sim_E0;
  (* MARK_DEBUG *) wire [13:0]sim_E1;
  (* MARK_DEBUG *) wire [13:0]sim_E2;
  (* MARK_DEBUG *) wire [13:0]sim_E3;
  (* MARK_DEBUG *) wire [13:0]sim_E4;
  (* MARK_DEBUG *) wire [13:0]sim_E5;
  (* MARK_DEBUG *) wire [13:0]sim_E6;
  (* MARK_DEBUG *) wire [13:0]sim_E7;
  (* MARK_DEBUG *) wire [13:0]sim_N0;
  (* MARK_DEBUG *) wire [13:0]sim_N1;
  (* MARK_DEBUG *) wire [13:0]sim_N2;
  (* MARK_DEBUG *) wire [13:0]sim_N3;
  (* MARK_DEBUG *) wire [13:0]sim_N4;
  (* MARK_DEBUG *) wire [13:0]sim_N5;
  (* MARK_DEBUG *) wire [13:0]sim_N6;
  (* MARK_DEBUG *) wire [13:0]sim_N7;
  (* MARK_DEBUG *) wire [13:0]sim_W0;
  (* MARK_DEBUG *) wire [13:0]sim_W1;
  (* MARK_DEBUG *) wire [13:0]sim_W2;
  (* MARK_DEBUG *) wire [13:0]sim_W3;
  (* MARK_DEBUG *) wire [13:0]sim_W4;
  (* MARK_DEBUG *) wire [13:0]sim_W5;
  (* MARK_DEBUG *) wire [13:0]sim_W6;
  (* MARK_DEBUG *) wire [13:0]sim_W7;
  (* MARK_DEBUG *) wire sim_active;
  (* MARK_DEBUG *) wire [1:0]sim_channel;
  wire sim_clk;
  (* MARK_DEBUG *) wire [1:0]sim_count;
  (* MARK_DEBUG *) wire [127:0]sim_curr_data;
  (* MARK_DEBUG *) wire sim_curr_wr;
  (* MARK_DEBUG *) wire [31:0]sim_data;
  (* MARK_DEBUG *) wire sim_empty_E;
  (* MARK_DEBUG *) wire sim_empty_N;
  (* MARK_DEBUG *) wire sim_empty_W;
  (* MARK_DEBUG *) wire [127:0]sim_in_data;
  wire [113:0]sim_out_E;
  wire [113:0]sim_out_N;
  wire [113:0]sim_out_W;
  (* MARK_DEBUG *) wire sim_rd;
  (* MARK_DEBUG *) wire sim_resetn;
  wire sim_wr;
  (* MARK_DEBUG *) wire sim_wr_E;
  (* MARK_DEBUG *) wire sim_wr_N;
  (* MARK_DEBUG *) wire sim_wr_W;
  (* MARK_DEBUG *) wire stop;
  wire valid_E;
  wire valid_N;
  wire valid_W;
  wire valid_raw_E;
  wire valid_raw_N;
  wire valid_raw_W;
  wire [7:3]\NLW_deci_low.counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_low.counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_deci_low.doa_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_low.doa_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:2]\NLW_deci_low.raw_delay_reg[11]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_deci_low.raw_delay_reg[11]_i_2_O_UNCONNECTED ;
  wire NLW_fifo_doa_i_full_UNCONNECTED;
  wire NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_E_i_full_UNCONNECTED;
  wire NLW_fifo_sim_E_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_E_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_N_i_full_UNCONNECTED;
  wire NLW_fifo_sim_N_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_N_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_W_i_full_UNCONNECTED;
  wire NLW_fifo_sim_W_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_W_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fir_E_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_N_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_W_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED;
  wire [127:0]NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED;
  wire [127:0]NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED;
  wire [127:0]NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \deci_low.active_i_1 
       (.I0(valid_raw_W),
        .I1(resetn),
        .I2(valid_raw_N),
        .I3(valid_raw_E),
        .O(active0));
  FDRE \deci_low.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active0),
        .Q(active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.counter[0]_i_1 
       (.I0(active),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.counter[0]_i_3 
       (.I0(\deci_low.counter_reg [0]),
        .O(\deci_low.counter[0]_i_3_n_0 ));
  FDRE \deci_low.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_15 ),
        .Q(\deci_low.counter_reg [0]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\deci_low.counter_reg[0]_i_2_n_0 ,\deci_low.counter_reg[0]_i_2_n_1 ,\deci_low.counter_reg[0]_i_2_n_2 ,\deci_low.counter_reg[0]_i_2_n_3 ,\deci_low.counter_reg[0]_i_2_n_4 ,\deci_low.counter_reg[0]_i_2_n_5 ,\deci_low.counter_reg[0]_i_2_n_6 ,\deci_low.counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\deci_low.counter_reg[0]_i_2_n_8 ,\deci_low.counter_reg[0]_i_2_n_9 ,\deci_low.counter_reg[0]_i_2_n_10 ,\deci_low.counter_reg[0]_i_2_n_11 ,\deci_low.counter_reg[0]_i_2_n_12 ,\deci_low.counter_reg[0]_i_2_n_13 ,\deci_low.counter_reg[0]_i_2_n_14 ,\deci_low.counter_reg[0]_i_2_n_15 }),
        .S({\deci_low.counter_reg [7:1],\deci_low.counter[0]_i_3_n_0 }));
  FDRE \deci_low.counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_13 ),
        .Q(\deci_low.counter_reg [10]),
        .R(clear));
  FDRE \deci_low.counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_12 ),
        .Q(\deci_low.counter_reg [11]),
        .R(clear));
  FDRE \deci_low.counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_11 ),
        .Q(\deci_low.counter_reg [12]),
        .R(clear));
  FDRE \deci_low.counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_10 ),
        .Q(\deci_low.counter_reg [13]),
        .R(clear));
  FDRE \deci_low.counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_9 ),
        .Q(\deci_low.counter_reg [14]),
        .R(clear));
  FDRE \deci_low.counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_8 ),
        .Q(\deci_low.counter_reg [15]),
        .R(clear));
  FDRE \deci_low.counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_15 ),
        .Q(\deci_low.counter_reg [16]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.counter_reg[16]_i_1 
       (.CI(\deci_low.counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.counter_reg[16]_i_1_n_0 ,\deci_low.counter_reg[16]_i_1_n_1 ,\deci_low.counter_reg[16]_i_1_n_2 ,\deci_low.counter_reg[16]_i_1_n_3 ,\deci_low.counter_reg[16]_i_1_n_4 ,\deci_low.counter_reg[16]_i_1_n_5 ,\deci_low.counter_reg[16]_i_1_n_6 ,\deci_low.counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_low.counter_reg[16]_i_1_n_8 ,\deci_low.counter_reg[16]_i_1_n_9 ,\deci_low.counter_reg[16]_i_1_n_10 ,\deci_low.counter_reg[16]_i_1_n_11 ,\deci_low.counter_reg[16]_i_1_n_12 ,\deci_low.counter_reg[16]_i_1_n_13 ,\deci_low.counter_reg[16]_i_1_n_14 ,\deci_low.counter_reg[16]_i_1_n_15 }),
        .S(\deci_low.counter_reg [23:16]));
  FDRE \deci_low.counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_14 ),
        .Q(\deci_low.counter_reg [17]),
        .R(clear));
  FDRE \deci_low.counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_13 ),
        .Q(\deci_low.counter_reg [18]),
        .R(clear));
  FDRE \deci_low.counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_12 ),
        .Q(\deci_low.counter_reg [19]),
        .R(clear));
  FDRE \deci_low.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_14 ),
        .Q(\deci_low.counter_reg [1]),
        .R(clear));
  FDRE \deci_low.counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_11 ),
        .Q(\deci_low.counter_reg [20]),
        .R(clear));
  FDRE \deci_low.counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_10 ),
        .Q(\deci_low.counter_reg [21]),
        .R(clear));
  FDRE \deci_low.counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_9 ),
        .Q(\deci_low.counter_reg [22]),
        .R(clear));
  FDRE \deci_low.counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[16]_i_1_n_8 ),
        .Q(\deci_low.counter_reg [23]),
        .R(clear));
  FDRE \deci_low.counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[24]_i_1_n_15 ),
        .Q(\deci_low.counter_reg [24]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.counter_reg[24]_i_1 
       (.CI(\deci_low.counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.counter_reg[24]_i_1_CO_UNCONNECTED [7:3],\deci_low.counter_reg[24]_i_1_n_5 ,\deci_low.counter_reg[24]_i_1_n_6 ,\deci_low.counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_deci_low.counter_reg[24]_i_1_O_UNCONNECTED [7:4],\deci_low.counter_reg[24]_i_1_n_12 ,\deci_low.counter_reg[24]_i_1_n_13 ,\deci_low.counter_reg[24]_i_1_n_14 ,\deci_low.counter_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_low.counter_reg [27:24]}));
  FDRE \deci_low.counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[24]_i_1_n_14 ),
        .Q(\deci_low.counter_reg [25]),
        .R(clear));
  FDRE \deci_low.counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[24]_i_1_n_13 ),
        .Q(\deci_low.counter_reg [26]),
        .R(clear));
  FDRE \deci_low.counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[24]_i_1_n_12 ),
        .Q(\deci_low.counter_reg [27]),
        .R(clear));
  FDRE \deci_low.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_13 ),
        .Q(\deci_low.counter_reg [2]),
        .R(clear));
  FDRE \deci_low.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_12 ),
        .Q(\deci_low.counter_reg [3]),
        .R(clear));
  FDRE \deci_low.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_11 ),
        .Q(\deci_low.counter_reg [4]),
        .R(clear));
  FDRE \deci_low.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_10 ),
        .Q(\deci_low.counter_reg [5]),
        .R(clear));
  FDRE \deci_low.counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_9 ),
        .Q(\deci_low.counter_reg [6]),
        .R(clear));
  FDRE \deci_low.counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[0]_i_2_n_8 ),
        .Q(\deci_low.counter_reg [7]),
        .R(clear));
  FDRE \deci_low.counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_15 ),
        .Q(\deci_low.counter_reg [8]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.counter_reg[8]_i_1 
       (.CI(\deci_low.counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.counter_reg[8]_i_1_n_0 ,\deci_low.counter_reg[8]_i_1_n_1 ,\deci_low.counter_reg[8]_i_1_n_2 ,\deci_low.counter_reg[8]_i_1_n_3 ,\deci_low.counter_reg[8]_i_1_n_4 ,\deci_low.counter_reg[8]_i_1_n_5 ,\deci_low.counter_reg[8]_i_1_n_6 ,\deci_low.counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_low.counter_reg[8]_i_1_n_8 ,\deci_low.counter_reg[8]_i_1_n_9 ,\deci_low.counter_reg[8]_i_1_n_10 ,\deci_low.counter_reg[8]_i_1_n_11 ,\deci_low.counter_reg[8]_i_1_n_12 ,\deci_low.counter_reg[8]_i_1_n_13 ,\deci_low.counter_reg[8]_i_1_n_14 ,\deci_low.counter_reg[8]_i_1_n_15 }),
        .S(\deci_low.counter_reg [15:8]));
  FDRE \deci_low.counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.counter_reg[8]_i_1_n_14 ),
        .Q(\deci_low.counter_reg [9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h8000)) 
    \deci_low.doa_active_i_1 
       (.I0(valid_W),
        .I1(resetn),
        .I2(valid_N),
        .I3(valid_E),
        .O(doa_active0));
  FDRE \deci_low.doa_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(doa_active0),
        .Q(doa_active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.doa_counter[0]_i_1 
       (.I0(doa_active),
        .O(\deci_low.doa_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.doa_counter[0]_i_3 
       (.I0(\deci_low.doa_counter_reg [0]),
        .O(\deci_low.doa_counter[0]_i_3_n_0 ));
  FDRE \deci_low.doa_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_15 ),
        .Q(\deci_low.doa_counter_reg [0]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.doa_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\deci_low.doa_counter_reg[0]_i_2_n_0 ,\deci_low.doa_counter_reg[0]_i_2_n_1 ,\deci_low.doa_counter_reg[0]_i_2_n_2 ,\deci_low.doa_counter_reg[0]_i_2_n_3 ,\deci_low.doa_counter_reg[0]_i_2_n_4 ,\deci_low.doa_counter_reg[0]_i_2_n_5 ,\deci_low.doa_counter_reg[0]_i_2_n_6 ,\deci_low.doa_counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\deci_low.doa_counter_reg[0]_i_2_n_8 ,\deci_low.doa_counter_reg[0]_i_2_n_9 ,\deci_low.doa_counter_reg[0]_i_2_n_10 ,\deci_low.doa_counter_reg[0]_i_2_n_11 ,\deci_low.doa_counter_reg[0]_i_2_n_12 ,\deci_low.doa_counter_reg[0]_i_2_n_13 ,\deci_low.doa_counter_reg[0]_i_2_n_14 ,\deci_low.doa_counter_reg[0]_i_2_n_15 }),
        .S({\deci_low.doa_counter_reg [7:1],\deci_low.doa_counter[0]_i_3_n_0 }));
  FDRE \deci_low.doa_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_13 ),
        .Q(\deci_low.doa_counter_reg [10]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_12 ),
        .Q(\deci_low.doa_counter_reg [11]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_11 ),
        .Q(\deci_low.doa_counter_reg [12]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_10 ),
        .Q(\deci_low.doa_counter_reg [13]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_9 ),
        .Q(\deci_low.doa_counter_reg [14]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_8 ),
        .Q(\deci_low.doa_counter_reg [15]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_15 ),
        .Q(\deci_low.doa_counter_reg [16]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.doa_counter_reg[16]_i_1 
       (.CI(\deci_low.doa_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.doa_counter_reg[16]_i_1_n_0 ,\deci_low.doa_counter_reg[16]_i_1_n_1 ,\deci_low.doa_counter_reg[16]_i_1_n_2 ,\deci_low.doa_counter_reg[16]_i_1_n_3 ,\deci_low.doa_counter_reg[16]_i_1_n_4 ,\deci_low.doa_counter_reg[16]_i_1_n_5 ,\deci_low.doa_counter_reg[16]_i_1_n_6 ,\deci_low.doa_counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_low.doa_counter_reg[16]_i_1_n_8 ,\deci_low.doa_counter_reg[16]_i_1_n_9 ,\deci_low.doa_counter_reg[16]_i_1_n_10 ,\deci_low.doa_counter_reg[16]_i_1_n_11 ,\deci_low.doa_counter_reg[16]_i_1_n_12 ,\deci_low.doa_counter_reg[16]_i_1_n_13 ,\deci_low.doa_counter_reg[16]_i_1_n_14 ,\deci_low.doa_counter_reg[16]_i_1_n_15 }),
        .S(\deci_low.doa_counter_reg [23:16]));
  FDRE \deci_low.doa_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_14 ),
        .Q(\deci_low.doa_counter_reg [17]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_13 ),
        .Q(\deci_low.doa_counter_reg [18]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_12 ),
        .Q(\deci_low.doa_counter_reg [19]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_14 ),
        .Q(\deci_low.doa_counter_reg [1]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_11 ),
        .Q(\deci_low.doa_counter_reg [20]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_10 ),
        .Q(\deci_low.doa_counter_reg [21]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_9 ),
        .Q(\deci_low.doa_counter_reg [22]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[16]_i_1_n_8 ),
        .Q(\deci_low.doa_counter_reg [23]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[24]_i_1_n_15 ),
        .Q(\deci_low.doa_counter_reg [24]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.doa_counter_reg[24]_i_1 
       (.CI(\deci_low.doa_counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.doa_counter_reg[24]_i_1_CO_UNCONNECTED [7:3],\deci_low.doa_counter_reg[24]_i_1_n_5 ,\deci_low.doa_counter_reg[24]_i_1_n_6 ,\deci_low.doa_counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_deci_low.doa_counter_reg[24]_i_1_O_UNCONNECTED [7:4],\deci_low.doa_counter_reg[24]_i_1_n_12 ,\deci_low.doa_counter_reg[24]_i_1_n_13 ,\deci_low.doa_counter_reg[24]_i_1_n_14 ,\deci_low.doa_counter_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_low.doa_counter_reg [27:24]}));
  FDRE \deci_low.doa_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[24]_i_1_n_14 ),
        .Q(\deci_low.doa_counter_reg [25]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[24]_i_1_n_13 ),
        .Q(\deci_low.doa_counter_reg [26]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[24]_i_1_n_12 ),
        .Q(\deci_low.doa_counter_reg [27]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_13 ),
        .Q(\deci_low.doa_counter_reg [2]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_12 ),
        .Q(\deci_low.doa_counter_reg [3]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_11 ),
        .Q(\deci_low.doa_counter_reg [4]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_10 ),
        .Q(\deci_low.doa_counter_reg [5]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_9 ),
        .Q(\deci_low.doa_counter_reg [6]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[0]_i_2_n_8 ),
        .Q(\deci_low.doa_counter_reg [7]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_15 ),
        .Q(\deci_low.doa_counter_reg [8]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_low.doa_counter_reg[8]_i_1 
       (.CI(\deci_low.doa_counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.doa_counter_reg[8]_i_1_n_0 ,\deci_low.doa_counter_reg[8]_i_1_n_1 ,\deci_low.doa_counter_reg[8]_i_1_n_2 ,\deci_low.doa_counter_reg[8]_i_1_n_3 ,\deci_low.doa_counter_reg[8]_i_1_n_4 ,\deci_low.doa_counter_reg[8]_i_1_n_5 ,\deci_low.doa_counter_reg[8]_i_1_n_6 ,\deci_low.doa_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_low.doa_counter_reg[8]_i_1_n_8 ,\deci_low.doa_counter_reg[8]_i_1_n_9 ,\deci_low.doa_counter_reg[8]_i_1_n_10 ,\deci_low.doa_counter_reg[8]_i_1_n_11 ,\deci_low.doa_counter_reg[8]_i_1_n_12 ,\deci_low.doa_counter_reg[8]_i_1_n_13 ,\deci_low.doa_counter_reg[8]_i_1_n_14 ,\deci_low.doa_counter_reg[8]_i_1_n_15 }),
        .S(\deci_low.doa_counter_reg [15:8]));
  FDRE \deci_low.doa_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.doa_counter_reg[8]_i_1_n_14 ),
        .Q(\deci_low.doa_counter_reg [9]),
        .R(\deci_low.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_low.doa_data_reg[0] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[0]),
        .Q(doa_data[0]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[10] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[10]),
        .Q(doa_data[10]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[11] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[11]),
        .Q(doa_data[11]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[12] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[12]),
        .Q(doa_data[12]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[13] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[13]),
        .Q(doa_data[13]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[14] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[14]),
        .Q(doa_data[14]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[15] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[15]),
        .Q(doa_data[15]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[16] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[16]),
        .Q(doa_data[16]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[17] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[17]),
        .Q(doa_data[17]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[18] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[18]),
        .Q(doa_data[18]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[19] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[19]),
        .Q(doa_data[19]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[1] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[1]),
        .Q(doa_data[1]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[20] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[20]),
        .Q(doa_data[20]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[21] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[21]),
        .Q(doa_data[21]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[22] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[22]),
        .Q(doa_data[22]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[23] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[23]),
        .Q(doa_data[23]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[24] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[24]),
        .Q(doa_data[24]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[25] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[25]),
        .Q(doa_data[25]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[26] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[26]),
        .Q(doa_data[26]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[27] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[27]),
        .Q(doa_data[27]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[28] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[28]),
        .Q(doa_data[28]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[29] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[29]),
        .Q(doa_data[29]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[2] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[2]),
        .Q(doa_data[2]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[30] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[30]),
        .Q(doa_data[30]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[31] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[31]),
        .Q(doa_data[31]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[32] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[32]),
        .Q(doa_data[32]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[33] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[33]),
        .Q(doa_data[33]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[34] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[34]),
        .Q(doa_data[34]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[35] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[35]),
        .Q(doa_data[35]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[36] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[36]),
        .Q(doa_data[36]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[37] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[37]),
        .Q(doa_data[37]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[38] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[38]),
        .Q(doa_data[38]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[39] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[39]),
        .Q(doa_data[39]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[3] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[3]),
        .Q(doa_data[3]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[40] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[40]),
        .Q(doa_data[40]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[41] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[41]),
        .Q(doa_data[41]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[42] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[42]),
        .Q(doa_data[42]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[43] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[43]),
        .Q(doa_data[43]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[44] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[44]),
        .Q(doa_data[44]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[45] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[45]),
        .Q(doa_data[45]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[46] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[46]),
        .Q(doa_data[46]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[47] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[47]),
        .Q(doa_data[47]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[48] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[48]),
        .Q(doa_data[48]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[49] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[49]),
        .Q(doa_data[49]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[4] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[4]),
        .Q(doa_data[4]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[50] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[50]),
        .Q(doa_data[50]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[51] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[51]),
        .Q(doa_data[51]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[52] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[52]),
        .Q(doa_data[52]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[53] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[53]),
        .Q(doa_data[53]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[54] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[54]),
        .Q(doa_data[54]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[55] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[55]),
        .Q(doa_data[55]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[56] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[56]),
        .Q(doa_data[56]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[57] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[57]),
        .Q(doa_data[57]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[58] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[58]),
        .Q(doa_data[58]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[59] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[59]),
        .Q(doa_data[59]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[5] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[5]),
        .Q(doa_data[5]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[60] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[60]),
        .Q(doa_data[60]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[61] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[61]),
        .Q(doa_data[61]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[62] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[62]),
        .Q(doa_data[62]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[63] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[63]),
        .Q(doa_data[63]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[64] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[64]),
        .Q(doa_data[64]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[65] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[65]),
        .Q(doa_data[65]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[66] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[66]),
        .Q(doa_data[66]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[67] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[67]),
        .Q(doa_data[67]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[68] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[68]),
        .Q(doa_data[68]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[69] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[69]),
        .Q(doa_data[69]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[6] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[6]),
        .Q(doa_data[6]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[7] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[7]),
        .Q(doa_data[7]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[8] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[8]),
        .Q(doa_data[8]),
        .R(1'b0));
  FDRE \deci_low.doa_data_reg[9] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[9]),
        .Q(doa_data[9]),
        .R(1'b0));
  FDRE \deci_low.doa_fifo_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(doa_active),
        .Q(doa_fifo_wr),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[0] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [0]),
        .Q(doa_in_data[0]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[10] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [10]),
        .Q(doa_in_data[10]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[11] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [11]),
        .Q(doa_in_data[11]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[12] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [12]),
        .Q(doa_in_data[12]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[13] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [13]),
        .Q(doa_in_data[13]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[14] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [14]),
        .Q(doa_in_data[14]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[15] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [15]),
        .Q(doa_in_data[15]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[16] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [16]),
        .Q(doa_in_data[16]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[17] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [17]),
        .Q(doa_in_data[17]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[18] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [18]),
        .Q(doa_in_data[18]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[19] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [19]),
        .Q(doa_in_data[19]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[1] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [1]),
        .Q(doa_in_data[1]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[20] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [20]),
        .Q(doa_in_data[20]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[21] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [21]),
        .Q(doa_in_data[21]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[22] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [22]),
        .Q(doa_in_data[22]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[23] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [23]),
        .Q(doa_in_data[23]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[24] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [24]),
        .Q(doa_in_data[24]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[25] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [25]),
        .Q(doa_in_data[25]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[26] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [26]),
        .Q(doa_in_data[26]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[27] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [27]),
        .Q(doa_in_data[27]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[28] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[0]),
        .Q(doa_in_data[28]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[29] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[1]),
        .Q(doa_in_data[29]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[2] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [2]),
        .Q(doa_in_data[2]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[30] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[2]),
        .Q(doa_in_data[30]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[31] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[3]),
        .Q(doa_in_data[31]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[32] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[4]),
        .Q(doa_in_data[32]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[33] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[5]),
        .Q(doa_in_data[33]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[34] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[6]),
        .Q(doa_in_data[34]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[35] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[7]),
        .Q(doa_in_data[35]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[36] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[8]),
        .Q(doa_in_data[36]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[37] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[9]),
        .Q(doa_in_data[37]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[38] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[10]),
        .Q(doa_in_data[38]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[39] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[11]),
        .Q(doa_in_data[39]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[3] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [3]),
        .Q(doa_in_data[3]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[40] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[12]),
        .Q(doa_in_data[40]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[41] 
       (.C(clk),
        .CE(doa_active),
        .D(dN[13]),
        .Q(doa_in_data[41]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[42] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[0]),
        .Q(doa_in_data[42]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[43] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[1]),
        .Q(doa_in_data[43]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[44] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[2]),
        .Q(doa_in_data[44]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[45] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[3]),
        .Q(doa_in_data[45]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[46] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[4]),
        .Q(doa_in_data[46]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[47] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[5]),
        .Q(doa_in_data[47]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[48] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[6]),
        .Q(doa_in_data[48]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[49] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[7]),
        .Q(doa_in_data[49]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[4] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [4]),
        .Q(doa_in_data[4]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[50] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[8]),
        .Q(doa_in_data[50]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[51] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[9]),
        .Q(doa_in_data[51]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[52] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[10]),
        .Q(doa_in_data[52]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[53] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[11]),
        .Q(doa_in_data[53]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[54] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[12]),
        .Q(doa_in_data[54]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[55] 
       (.C(clk),
        .CE(doa_active),
        .D(dE[13]),
        .Q(doa_in_data[55]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[56] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[0]),
        .Q(doa_in_data[56]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[57] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[1]),
        .Q(doa_in_data[57]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[58] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[2]),
        .Q(doa_in_data[58]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[59] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[3]),
        .Q(doa_in_data[59]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[5] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [5]),
        .Q(doa_in_data[5]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[60] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[4]),
        .Q(doa_in_data[60]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[61] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[5]),
        .Q(doa_in_data[61]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[62] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[6]),
        .Q(doa_in_data[62]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[63] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[7]),
        .Q(doa_in_data[63]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[64] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[8]),
        .Q(doa_in_data[64]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[65] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[9]),
        .Q(doa_in_data[65]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[66] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[10]),
        .Q(doa_in_data[66]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[67] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[11]),
        .Q(doa_in_data[67]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[68] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[12]),
        .Q(doa_in_data[68]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[69] 
       (.C(clk),
        .CE(doa_active),
        .D(dW[13]),
        .Q(doa_in_data[69]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[6] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [6]),
        .Q(doa_in_data[6]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[7] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [7]),
        .Q(doa_in_data[7]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[8] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [8]),
        .Q(doa_in_data[8]),
        .R(1'b0));
  FDRE \deci_low.doa_in_data_reg[9] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_low.doa_counter_reg [9]),
        .Q(doa_in_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.doa_out_active_i_1 
       (.I0(doa_fifo_empty),
        .O(\deci_low.doa_out_active_i_1_n_0 ));
  FDRE \deci_low.doa_out_active_reg 
       (.C(doa_clk),
        .CE(1'b1),
        .D(\deci_low.doa_out_active_i_1_n_0 ),
        .Q(doa_out_active),
        .R(1'b0));
  FDRE \deci_low.doa_ready_reg 
       (.C(doa_clk),
        .CE(1'b1),
        .D(doa_out_active),
        .Q(doa_ready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[0]_i_1 
       (.I0(data_E[0]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[0]),
        .O(\deci_low.mux_E[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[100]_i_1 
       (.I0(data_E[100]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[2]),
        .O(\deci_low.mux_E[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[101]_i_1 
       (.I0(data_E[101]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[3]),
        .O(\deci_low.mux_E[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[102]_i_1 
       (.I0(data_E[102]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[4]),
        .O(\deci_low.mux_E[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[103]_i_1 
       (.I0(data_E[103]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[5]),
        .O(\deci_low.mux_E[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[104]_i_1 
       (.I0(data_E[104]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[6]),
        .O(\deci_low.mux_E[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[105]_i_1 
       (.I0(data_E[105]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[7]),
        .O(\deci_low.mux_E[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[106]_i_1 
       (.I0(data_E[106]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[8]),
        .O(\deci_low.mux_E[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[107]_i_1 
       (.I0(data_E[107]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[9]),
        .O(\deci_low.mux_E[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[108]_i_1 
       (.I0(data_E[108]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[10]),
        .O(\deci_low.mux_E[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[109]_i_1 
       (.I0(data_E[109]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[11]),
        .O(\deci_low.mux_E[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[10]_i_1 
       (.I0(data_E[10]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[8]),
        .O(\deci_low.mux_E[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[110]_i_1 
       (.I0(data_E[110]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[12]),
        .O(\deci_low.mux_E[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[111]_i_1 
       (.I0(data_E[111]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[13]),
        .O(\deci_low.mux_E[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[112]_i_1 
       (.I0(data_E[112]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[112]),
        .O(\deci_low.mux_E[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[113]_i_1 
       (.I0(data_E[113]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[113]),
        .O(\deci_low.mux_E[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[114]_i_1 
       (.I0(data_E[114]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[0]),
        .O(\deci_low.mux_E[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[115]_i_1 
       (.I0(data_E[115]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[1]),
        .O(\deci_low.mux_E[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[116]_i_1 
       (.I0(data_E[116]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[2]),
        .O(\deci_low.mux_E[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[117]_i_1 
       (.I0(data_E[117]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[3]),
        .O(\deci_low.mux_E[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[118]_i_1 
       (.I0(data_E[118]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[4]),
        .O(\deci_low.mux_E[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[119]_i_1 
       (.I0(data_E[119]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[5]),
        .O(\deci_low.mux_E[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[11]_i_1 
       (.I0(data_E[11]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[9]),
        .O(\deci_low.mux_E[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[120]_i_1 
       (.I0(data_E[120]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[6]),
        .O(\deci_low.mux_E[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[121]_i_1 
       (.I0(data_E[121]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[7]),
        .O(\deci_low.mux_E[121]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[122]_i_1 
       (.I0(data_E[122]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[8]),
        .O(\deci_low.mux_E[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[123]_i_1 
       (.I0(data_E[123]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[9]),
        .O(\deci_low.mux_E[123]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[124]_i_1 
       (.I0(data_E[124]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[10]),
        .O(\deci_low.mux_E[124]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[125]_i_1 
       (.I0(data_E[125]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[11]),
        .O(\deci_low.mux_E[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[126]_i_1 
       (.I0(data_E[126]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[12]),
        .O(\deci_low.mux_E[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[127]_i_1 
       (.I0(data_E[127]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E7[13]),
        .O(\deci_low.mux_E[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[12]_i_1 
       (.I0(data_E[12]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[10]),
        .O(\deci_low.mux_E[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[13]_i_1 
       (.I0(data_E[13]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[11]),
        .O(\deci_low.mux_E[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[14]_i_1 
       (.I0(data_E[14]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[12]),
        .O(\deci_low.mux_E[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[15]_i_1 
       (.I0(data_E[15]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[13]),
        .O(\deci_low.mux_E[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[16]_i_1 
       (.I0(data_E[16]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[16]),
        .O(\deci_low.mux_E[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[17]_i_1 
       (.I0(data_E[17]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[17]),
        .O(\deci_low.mux_E[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[18]_i_1 
       (.I0(data_E[18]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[0]),
        .O(\deci_low.mux_E[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[19]_i_1 
       (.I0(data_E[19]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[1]),
        .O(\deci_low.mux_E[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[1]_i_1 
       (.I0(data_E[1]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[1]),
        .O(\deci_low.mux_E[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[20]_i_1 
       (.I0(data_E[20]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[2]),
        .O(\deci_low.mux_E[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[21]_i_1 
       (.I0(data_E[21]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[3]),
        .O(\deci_low.mux_E[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[22]_i_1 
       (.I0(data_E[22]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[4]),
        .O(\deci_low.mux_E[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[23]_i_1 
       (.I0(data_E[23]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[5]),
        .O(\deci_low.mux_E[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[24]_i_1 
       (.I0(data_E[24]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[6]),
        .O(\deci_low.mux_E[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[25]_i_1 
       (.I0(data_E[25]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[7]),
        .O(\deci_low.mux_E[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[26]_i_1 
       (.I0(data_E[26]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[8]),
        .O(\deci_low.mux_E[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[27]_i_1 
       (.I0(data_E[27]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[9]),
        .O(\deci_low.mux_E[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[28]_i_1 
       (.I0(data_E[28]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[10]),
        .O(\deci_low.mux_E[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[29]_i_1 
       (.I0(data_E[29]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[11]),
        .O(\deci_low.mux_E[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[2]_i_1 
       (.I0(data_E[2]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[0]),
        .O(\deci_low.mux_E[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[30]_i_1 
       (.I0(data_E[30]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[12]),
        .O(\deci_low.mux_E[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[31]_i_1 
       (.I0(data_E[31]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E1[13]),
        .O(\deci_low.mux_E[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[32]_i_1 
       (.I0(data_E[32]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[32]),
        .O(\deci_low.mux_E[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[33]_i_1 
       (.I0(data_E[33]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[33]),
        .O(\deci_low.mux_E[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[34]_i_1 
       (.I0(data_E[34]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[0]),
        .O(\deci_low.mux_E[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[35]_i_1 
       (.I0(data_E[35]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[1]),
        .O(\deci_low.mux_E[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[36]_i_1 
       (.I0(data_E[36]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[2]),
        .O(\deci_low.mux_E[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[37]_i_1 
       (.I0(data_E[37]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[3]),
        .O(\deci_low.mux_E[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[38]_i_1 
       (.I0(data_E[38]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[4]),
        .O(\deci_low.mux_E[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[39]_i_1 
       (.I0(data_E[39]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[5]),
        .O(\deci_low.mux_E[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[3]_i_1 
       (.I0(data_E[3]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[1]),
        .O(\deci_low.mux_E[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[40]_i_1 
       (.I0(data_E[40]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[6]),
        .O(\deci_low.mux_E[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[41]_i_1 
       (.I0(data_E[41]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[7]),
        .O(\deci_low.mux_E[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[42]_i_1 
       (.I0(data_E[42]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[8]),
        .O(\deci_low.mux_E[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[43]_i_1 
       (.I0(data_E[43]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[9]),
        .O(\deci_low.mux_E[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[44]_i_1 
       (.I0(data_E[44]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[10]),
        .O(\deci_low.mux_E[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[45]_i_1 
       (.I0(data_E[45]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[11]),
        .O(\deci_low.mux_E[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[46]_i_1 
       (.I0(data_E[46]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[12]),
        .O(\deci_low.mux_E[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[47]_i_1 
       (.I0(data_E[47]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E2[13]),
        .O(\deci_low.mux_E[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[48]_i_1 
       (.I0(data_E[48]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[48]),
        .O(\deci_low.mux_E[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[49]_i_1 
       (.I0(data_E[49]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[49]),
        .O(\deci_low.mux_E[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[4]_i_1 
       (.I0(data_E[4]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[2]),
        .O(\deci_low.mux_E[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[50]_i_1 
       (.I0(data_E[50]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[0]),
        .O(\deci_low.mux_E[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[51]_i_1 
       (.I0(data_E[51]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[1]),
        .O(\deci_low.mux_E[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[52]_i_1 
       (.I0(data_E[52]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[2]),
        .O(\deci_low.mux_E[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[53]_i_1 
       (.I0(data_E[53]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[3]),
        .O(\deci_low.mux_E[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[54]_i_1 
       (.I0(data_E[54]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[4]),
        .O(\deci_low.mux_E[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[55]_i_1 
       (.I0(data_E[55]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[5]),
        .O(\deci_low.mux_E[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[56]_i_1 
       (.I0(data_E[56]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[6]),
        .O(\deci_low.mux_E[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[57]_i_1 
       (.I0(data_E[57]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[7]),
        .O(\deci_low.mux_E[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[58]_i_1 
       (.I0(data_E[58]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[8]),
        .O(\deci_low.mux_E[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[59]_i_1 
       (.I0(data_E[59]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[9]),
        .O(\deci_low.mux_E[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[5]_i_1 
       (.I0(data_E[5]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[3]),
        .O(\deci_low.mux_E[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[60]_i_1 
       (.I0(data_E[60]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[10]),
        .O(\deci_low.mux_E[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[61]_i_1 
       (.I0(data_E[61]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[11]),
        .O(\deci_low.mux_E[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[62]_i_1 
       (.I0(data_E[62]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[12]),
        .O(\deci_low.mux_E[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[63]_i_1 
       (.I0(data_E[63]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E3[13]),
        .O(\deci_low.mux_E[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[64]_i_1 
       (.I0(data_E[64]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[64]),
        .O(\deci_low.mux_E[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[65]_i_1 
       (.I0(data_E[65]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[65]),
        .O(\deci_low.mux_E[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[66]_i_1 
       (.I0(data_E[66]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[0]),
        .O(\deci_low.mux_E[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[67]_i_1 
       (.I0(data_E[67]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[1]),
        .O(\deci_low.mux_E[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[68]_i_1 
       (.I0(data_E[68]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[2]),
        .O(\deci_low.mux_E[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[69]_i_1 
       (.I0(data_E[69]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[3]),
        .O(\deci_low.mux_E[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[6]_i_1 
       (.I0(data_E[6]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[4]),
        .O(\deci_low.mux_E[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[70]_i_1 
       (.I0(data_E[70]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[4]),
        .O(\deci_low.mux_E[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[71]_i_1 
       (.I0(data_E[71]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[5]),
        .O(\deci_low.mux_E[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[72]_i_1 
       (.I0(data_E[72]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[6]),
        .O(\deci_low.mux_E[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[73]_i_1 
       (.I0(data_E[73]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[7]),
        .O(\deci_low.mux_E[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[74]_i_1 
       (.I0(data_E[74]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[8]),
        .O(\deci_low.mux_E[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[75]_i_1 
       (.I0(data_E[75]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[9]),
        .O(\deci_low.mux_E[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[76]_i_1 
       (.I0(data_E[76]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[10]),
        .O(\deci_low.mux_E[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[77]_i_1 
       (.I0(data_E[77]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[11]),
        .O(\deci_low.mux_E[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[78]_i_1 
       (.I0(data_E[78]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[12]),
        .O(\deci_low.mux_E[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[79]_i_1 
       (.I0(data_E[79]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E4[13]),
        .O(\deci_low.mux_E[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[7]_i_1 
       (.I0(data_E[7]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[5]),
        .O(\deci_low.mux_E[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[80]_i_1 
       (.I0(data_E[80]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[80]),
        .O(\deci_low.mux_E[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[81]_i_1 
       (.I0(data_E[81]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[81]),
        .O(\deci_low.mux_E[81]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[82]_i_1 
       (.I0(data_E[82]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[0]),
        .O(\deci_low.mux_E[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[83]_i_1 
       (.I0(data_E[83]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[1]),
        .O(\deci_low.mux_E[83]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[84]_i_1 
       (.I0(data_E[84]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[2]),
        .O(\deci_low.mux_E[84]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[85]_i_1 
       (.I0(data_E[85]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[3]),
        .O(\deci_low.mux_E[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[86]_i_1 
       (.I0(data_E[86]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[4]),
        .O(\deci_low.mux_E[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[87]_i_1 
       (.I0(data_E[87]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[5]),
        .O(\deci_low.mux_E[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[88]_i_1 
       (.I0(data_E[88]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[6]),
        .O(\deci_low.mux_E[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[89]_i_1 
       (.I0(data_E[89]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[7]),
        .O(\deci_low.mux_E[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[8]_i_1 
       (.I0(data_E[8]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[6]),
        .O(\deci_low.mux_E[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[90]_i_1 
       (.I0(data_E[90]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[8]),
        .O(\deci_low.mux_E[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[91]_i_1 
       (.I0(data_E[91]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[9]),
        .O(\deci_low.mux_E[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[92]_i_1 
       (.I0(data_E[92]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[10]),
        .O(\deci_low.mux_E[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[93]_i_1 
       (.I0(data_E[93]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[11]),
        .O(\deci_low.mux_E[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[94]_i_1 
       (.I0(data_E[94]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[12]),
        .O(\deci_low.mux_E[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[95]_i_1 
       (.I0(data_E[95]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E5[13]),
        .O(\deci_low.mux_E[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[96]_i_1 
       (.I0(data_E[96]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[96]),
        .O(\deci_low.mux_E[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[97]_i_1 
       (.I0(data_E[97]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_E[97]),
        .O(\deci_low.mux_E[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[98]_i_1 
       (.I0(data_E[98]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[0]),
        .O(\deci_low.mux_E[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[99]_i_1 
       (.I0(data_E[99]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E6[1]),
        .O(\deci_low.mux_E[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_E[9]_i_1 
       (.I0(data_E[9]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_E0[7]),
        .O(\deci_low.mux_E[9]_i_1_n_0 ));
  FDRE \deci_low.mux_E_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[0]_i_1_n_0 ),
        .Q(mux_E[0]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[100]_i_1_n_0 ),
        .Q(mux_E[100]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[101]_i_1_n_0 ),
        .Q(mux_E[101]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[102]_i_1_n_0 ),
        .Q(mux_E[102]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[103]_i_1_n_0 ),
        .Q(mux_E[103]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[104]_i_1_n_0 ),
        .Q(mux_E[104]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[105]_i_1_n_0 ),
        .Q(mux_E[105]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[106]_i_1_n_0 ),
        .Q(mux_E[106]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[107]_i_1_n_0 ),
        .Q(mux_E[107]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[108]_i_1_n_0 ),
        .Q(mux_E[108]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[109]_i_1_n_0 ),
        .Q(mux_E[109]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[10]_i_1_n_0 ),
        .Q(mux_E[10]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[110]_i_1_n_0 ),
        .Q(mux_E[110]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[111]_i_1_n_0 ),
        .Q(mux_E[111]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[112]_i_1_n_0 ),
        .Q(mux_E[112]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[113]_i_1_n_0 ),
        .Q(mux_E[113]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[114]_i_1_n_0 ),
        .Q(mux_E[114]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[115]_i_1_n_0 ),
        .Q(mux_E[115]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[116]_i_1_n_0 ),
        .Q(mux_E[116]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[117]_i_1_n_0 ),
        .Q(mux_E[117]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[118]_i_1_n_0 ),
        .Q(mux_E[118]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[119]_i_1_n_0 ),
        .Q(mux_E[119]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[11]_i_1_n_0 ),
        .Q(mux_E[11]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[120]_i_1_n_0 ),
        .Q(mux_E[120]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[121]_i_1_n_0 ),
        .Q(mux_E[121]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[122]_i_1_n_0 ),
        .Q(mux_E[122]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[123]_i_1_n_0 ),
        .Q(mux_E[123]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[124]_i_1_n_0 ),
        .Q(mux_E[124]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[125]_i_1_n_0 ),
        .Q(mux_E[125]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[126]_i_1_n_0 ),
        .Q(mux_E[126]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[127]_i_1_n_0 ),
        .Q(mux_E[127]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[12]_i_1_n_0 ),
        .Q(mux_E[12]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[13]_i_1_n_0 ),
        .Q(mux_E[13]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[14]_i_1_n_0 ),
        .Q(mux_E[14]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[15]_i_1_n_0 ),
        .Q(mux_E[15]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[16]_i_1_n_0 ),
        .Q(mux_E[16]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[17]_i_1_n_0 ),
        .Q(mux_E[17]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[18]_i_1_n_0 ),
        .Q(mux_E[18]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[19]_i_1_n_0 ),
        .Q(mux_E[19]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[1]_i_1_n_0 ),
        .Q(mux_E[1]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[20]_i_1_n_0 ),
        .Q(mux_E[20]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[21]_i_1_n_0 ),
        .Q(mux_E[21]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[22]_i_1_n_0 ),
        .Q(mux_E[22]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[23]_i_1_n_0 ),
        .Q(mux_E[23]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[24]_i_1_n_0 ),
        .Q(mux_E[24]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[25]_i_1_n_0 ),
        .Q(mux_E[25]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[26]_i_1_n_0 ),
        .Q(mux_E[26]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[27]_i_1_n_0 ),
        .Q(mux_E[27]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[28]_i_1_n_0 ),
        .Q(mux_E[28]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[29]_i_1_n_0 ),
        .Q(mux_E[29]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[2]_i_1_n_0 ),
        .Q(mux_E[2]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[30]_i_1_n_0 ),
        .Q(mux_E[30]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[31]_i_1_n_0 ),
        .Q(mux_E[31]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[32]_i_1_n_0 ),
        .Q(mux_E[32]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[33]_i_1_n_0 ),
        .Q(mux_E[33]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[34]_i_1_n_0 ),
        .Q(mux_E[34]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[35]_i_1_n_0 ),
        .Q(mux_E[35]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[36]_i_1_n_0 ),
        .Q(mux_E[36]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[37]_i_1_n_0 ),
        .Q(mux_E[37]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[38]_i_1_n_0 ),
        .Q(mux_E[38]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[39]_i_1_n_0 ),
        .Q(mux_E[39]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[3]_i_1_n_0 ),
        .Q(mux_E[3]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[40]_i_1_n_0 ),
        .Q(mux_E[40]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[41]_i_1_n_0 ),
        .Q(mux_E[41]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[42]_i_1_n_0 ),
        .Q(mux_E[42]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[43]_i_1_n_0 ),
        .Q(mux_E[43]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[44]_i_1_n_0 ),
        .Q(mux_E[44]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[45]_i_1_n_0 ),
        .Q(mux_E[45]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[46]_i_1_n_0 ),
        .Q(mux_E[46]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[47]_i_1_n_0 ),
        .Q(mux_E[47]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[48]_i_1_n_0 ),
        .Q(mux_E[48]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[49]_i_1_n_0 ),
        .Q(mux_E[49]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[4]_i_1_n_0 ),
        .Q(mux_E[4]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[50]_i_1_n_0 ),
        .Q(mux_E[50]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[51]_i_1_n_0 ),
        .Q(mux_E[51]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[52]_i_1_n_0 ),
        .Q(mux_E[52]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[53]_i_1_n_0 ),
        .Q(mux_E[53]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[54]_i_1_n_0 ),
        .Q(mux_E[54]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[55]_i_1_n_0 ),
        .Q(mux_E[55]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[56]_i_1_n_0 ),
        .Q(mux_E[56]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[57]_i_1_n_0 ),
        .Q(mux_E[57]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[58]_i_1_n_0 ),
        .Q(mux_E[58]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[59]_i_1_n_0 ),
        .Q(mux_E[59]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[5]_i_1_n_0 ),
        .Q(mux_E[5]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[60]_i_1_n_0 ),
        .Q(mux_E[60]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[61]_i_1_n_0 ),
        .Q(mux_E[61]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[62]_i_1_n_0 ),
        .Q(mux_E[62]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[63]_i_1_n_0 ),
        .Q(mux_E[63]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[64]_i_1_n_0 ),
        .Q(mux_E[64]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[65]_i_1_n_0 ),
        .Q(mux_E[65]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[66]_i_1_n_0 ),
        .Q(mux_E[66]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[67]_i_1_n_0 ),
        .Q(mux_E[67]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[68]_i_1_n_0 ),
        .Q(mux_E[68]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[69]_i_1_n_0 ),
        .Q(mux_E[69]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[6]_i_1_n_0 ),
        .Q(mux_E[6]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[70]_i_1_n_0 ),
        .Q(mux_E[70]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[71]_i_1_n_0 ),
        .Q(mux_E[71]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[72]_i_1_n_0 ),
        .Q(mux_E[72]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[73]_i_1_n_0 ),
        .Q(mux_E[73]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[74]_i_1_n_0 ),
        .Q(mux_E[74]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[75]_i_1_n_0 ),
        .Q(mux_E[75]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[76]_i_1_n_0 ),
        .Q(mux_E[76]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[77]_i_1_n_0 ),
        .Q(mux_E[77]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[78]_i_1_n_0 ),
        .Q(mux_E[78]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[79]_i_1_n_0 ),
        .Q(mux_E[79]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[7]_i_1_n_0 ),
        .Q(mux_E[7]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[80]_i_1_n_0 ),
        .Q(mux_E[80]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[81]_i_1_n_0 ),
        .Q(mux_E[81]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[82]_i_1_n_0 ),
        .Q(mux_E[82]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[83]_i_1_n_0 ),
        .Q(mux_E[83]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[84]_i_1_n_0 ),
        .Q(mux_E[84]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[85]_i_1_n_0 ),
        .Q(mux_E[85]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[86]_i_1_n_0 ),
        .Q(mux_E[86]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[87]_i_1_n_0 ),
        .Q(mux_E[87]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[88]_i_1_n_0 ),
        .Q(mux_E[88]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[89]_i_1_n_0 ),
        .Q(mux_E[89]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[8]_i_1_n_0 ),
        .Q(mux_E[8]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[90]_i_1_n_0 ),
        .Q(mux_E[90]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[91]_i_1_n_0 ),
        .Q(mux_E[91]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[92]_i_1_n_0 ),
        .Q(mux_E[92]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[93]_i_1_n_0 ),
        .Q(mux_E[93]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[94]_i_1_n_0 ),
        .Q(mux_E[94]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[95]_i_1_n_0 ),
        .Q(mux_E[95]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[96]_i_1_n_0 ),
        .Q(mux_E[96]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[97]_i_1_n_0 ),
        .Q(mux_E[97]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[98]_i_1_n_0 ),
        .Q(mux_E[98]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[99]_i_1_n_0 ),
        .Q(mux_E[99]),
        .R(1'b0));
  FDRE \deci_low.mux_E_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_E[9]_i_1_n_0 ),
        .Q(mux_E[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[0]_i_1 
       (.I0(data_N[0]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[0]),
        .O(\deci_low.mux_N[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[100]_i_1 
       (.I0(data_N[100]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[2]),
        .O(\deci_low.mux_N[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[101]_i_1 
       (.I0(data_N[101]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[3]),
        .O(\deci_low.mux_N[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[102]_i_1 
       (.I0(data_N[102]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[4]),
        .O(\deci_low.mux_N[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[103]_i_1 
       (.I0(data_N[103]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[5]),
        .O(\deci_low.mux_N[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[104]_i_1 
       (.I0(data_N[104]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[6]),
        .O(\deci_low.mux_N[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[105]_i_1 
       (.I0(data_N[105]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[7]),
        .O(\deci_low.mux_N[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[106]_i_1 
       (.I0(data_N[106]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[8]),
        .O(\deci_low.mux_N[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[107]_i_1 
       (.I0(data_N[107]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[9]),
        .O(\deci_low.mux_N[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[108]_i_1 
       (.I0(data_N[108]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[10]),
        .O(\deci_low.mux_N[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[109]_i_1 
       (.I0(data_N[109]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[11]),
        .O(\deci_low.mux_N[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[10]_i_1 
       (.I0(data_N[10]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[8]),
        .O(\deci_low.mux_N[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[110]_i_1 
       (.I0(data_N[110]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[12]),
        .O(\deci_low.mux_N[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[111]_i_1 
       (.I0(data_N[111]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[13]),
        .O(\deci_low.mux_N[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[112]_i_1 
       (.I0(data_N[112]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[112]),
        .O(\deci_low.mux_N[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[113]_i_1 
       (.I0(data_N[113]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[113]),
        .O(\deci_low.mux_N[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[114]_i_1 
       (.I0(data_N[114]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[0]),
        .O(\deci_low.mux_N[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[115]_i_1 
       (.I0(data_N[115]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[1]),
        .O(\deci_low.mux_N[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[116]_i_1 
       (.I0(data_N[116]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[2]),
        .O(\deci_low.mux_N[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[117]_i_1 
       (.I0(data_N[117]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[3]),
        .O(\deci_low.mux_N[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[118]_i_1 
       (.I0(data_N[118]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[4]),
        .O(\deci_low.mux_N[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[119]_i_1 
       (.I0(data_N[119]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[5]),
        .O(\deci_low.mux_N[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[11]_i_1 
       (.I0(data_N[11]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[9]),
        .O(\deci_low.mux_N[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[120]_i_1 
       (.I0(data_N[120]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[6]),
        .O(\deci_low.mux_N[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[121]_i_1 
       (.I0(data_N[121]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[7]),
        .O(\deci_low.mux_N[121]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[122]_i_1 
       (.I0(data_N[122]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[8]),
        .O(\deci_low.mux_N[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[123]_i_1 
       (.I0(data_N[123]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[9]),
        .O(\deci_low.mux_N[123]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[124]_i_1 
       (.I0(data_N[124]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[10]),
        .O(\deci_low.mux_N[124]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[125]_i_1 
       (.I0(data_N[125]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[11]),
        .O(\deci_low.mux_N[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[126]_i_1 
       (.I0(data_N[126]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[12]),
        .O(\deci_low.mux_N[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[127]_i_1 
       (.I0(data_N[127]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N7[13]),
        .O(\deci_low.mux_N[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[12]_i_1 
       (.I0(data_N[12]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[10]),
        .O(\deci_low.mux_N[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[13]_i_1 
       (.I0(data_N[13]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[11]),
        .O(\deci_low.mux_N[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[14]_i_1 
       (.I0(data_N[14]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[12]),
        .O(\deci_low.mux_N[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[15]_i_1 
       (.I0(data_N[15]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[13]),
        .O(\deci_low.mux_N[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[16]_i_1 
       (.I0(data_N[16]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[16]),
        .O(\deci_low.mux_N[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[17]_i_1 
       (.I0(data_N[17]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[17]),
        .O(\deci_low.mux_N[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[18]_i_1 
       (.I0(data_N[18]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[0]),
        .O(\deci_low.mux_N[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[19]_i_1 
       (.I0(data_N[19]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[1]),
        .O(\deci_low.mux_N[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[1]_i_1 
       (.I0(data_N[1]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[1]),
        .O(\deci_low.mux_N[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[20]_i_1 
       (.I0(data_N[20]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[2]),
        .O(\deci_low.mux_N[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[21]_i_1 
       (.I0(data_N[21]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[3]),
        .O(\deci_low.mux_N[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[22]_i_1 
       (.I0(data_N[22]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[4]),
        .O(\deci_low.mux_N[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[23]_i_1 
       (.I0(data_N[23]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[5]),
        .O(\deci_low.mux_N[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[24]_i_1 
       (.I0(data_N[24]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[6]),
        .O(\deci_low.mux_N[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[25]_i_1 
       (.I0(data_N[25]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[7]),
        .O(\deci_low.mux_N[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[26]_i_1 
       (.I0(data_N[26]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[8]),
        .O(\deci_low.mux_N[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[27]_i_1 
       (.I0(data_N[27]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[9]),
        .O(\deci_low.mux_N[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[28]_i_1 
       (.I0(data_N[28]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[10]),
        .O(\deci_low.mux_N[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[29]_i_1 
       (.I0(data_N[29]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[11]),
        .O(\deci_low.mux_N[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[2]_i_1 
       (.I0(data_N[2]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[0]),
        .O(\deci_low.mux_N[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[30]_i_1 
       (.I0(data_N[30]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[12]),
        .O(\deci_low.mux_N[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[31]_i_1 
       (.I0(data_N[31]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N1[13]),
        .O(\deci_low.mux_N[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[32]_i_1 
       (.I0(data_N[32]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[32]),
        .O(\deci_low.mux_N[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[33]_i_1 
       (.I0(data_N[33]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[33]),
        .O(\deci_low.mux_N[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[34]_i_1 
       (.I0(data_N[34]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[0]),
        .O(\deci_low.mux_N[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[35]_i_1 
       (.I0(data_N[35]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[1]),
        .O(\deci_low.mux_N[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[36]_i_1 
       (.I0(data_N[36]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[2]),
        .O(\deci_low.mux_N[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[37]_i_1 
       (.I0(data_N[37]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[3]),
        .O(\deci_low.mux_N[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[38]_i_1 
       (.I0(data_N[38]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[4]),
        .O(\deci_low.mux_N[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[39]_i_1 
       (.I0(data_N[39]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[5]),
        .O(\deci_low.mux_N[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[3]_i_1 
       (.I0(data_N[3]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[1]),
        .O(\deci_low.mux_N[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[40]_i_1 
       (.I0(data_N[40]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[6]),
        .O(\deci_low.mux_N[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[41]_i_1 
       (.I0(data_N[41]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[7]),
        .O(\deci_low.mux_N[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[42]_i_1 
       (.I0(data_N[42]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[8]),
        .O(\deci_low.mux_N[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[43]_i_1 
       (.I0(data_N[43]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[9]),
        .O(\deci_low.mux_N[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[44]_i_1 
       (.I0(data_N[44]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[10]),
        .O(\deci_low.mux_N[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[45]_i_1 
       (.I0(data_N[45]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[11]),
        .O(\deci_low.mux_N[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[46]_i_1 
       (.I0(data_N[46]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[12]),
        .O(\deci_low.mux_N[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[47]_i_1 
       (.I0(data_N[47]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N2[13]),
        .O(\deci_low.mux_N[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[48]_i_1 
       (.I0(data_N[48]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[48]),
        .O(\deci_low.mux_N[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[49]_i_1 
       (.I0(data_N[49]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[49]),
        .O(\deci_low.mux_N[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[4]_i_1 
       (.I0(data_N[4]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[2]),
        .O(\deci_low.mux_N[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[50]_i_1 
       (.I0(data_N[50]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[0]),
        .O(\deci_low.mux_N[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[51]_i_1 
       (.I0(data_N[51]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[1]),
        .O(\deci_low.mux_N[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[52]_i_1 
       (.I0(data_N[52]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[2]),
        .O(\deci_low.mux_N[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[53]_i_1 
       (.I0(data_N[53]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[3]),
        .O(\deci_low.mux_N[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[54]_i_1 
       (.I0(data_N[54]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[4]),
        .O(\deci_low.mux_N[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[55]_i_1 
       (.I0(data_N[55]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[5]),
        .O(\deci_low.mux_N[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[56]_i_1 
       (.I0(data_N[56]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[6]),
        .O(\deci_low.mux_N[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[57]_i_1 
       (.I0(data_N[57]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[7]),
        .O(\deci_low.mux_N[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[58]_i_1 
       (.I0(data_N[58]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[8]),
        .O(\deci_low.mux_N[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[59]_i_1 
       (.I0(data_N[59]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[9]),
        .O(\deci_low.mux_N[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[5]_i_1 
       (.I0(data_N[5]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[3]),
        .O(\deci_low.mux_N[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[60]_i_1 
       (.I0(data_N[60]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[10]),
        .O(\deci_low.mux_N[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[61]_i_1 
       (.I0(data_N[61]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[11]),
        .O(\deci_low.mux_N[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[62]_i_1 
       (.I0(data_N[62]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[12]),
        .O(\deci_low.mux_N[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[63]_i_1 
       (.I0(data_N[63]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N3[13]),
        .O(\deci_low.mux_N[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[64]_i_1 
       (.I0(data_N[64]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[64]),
        .O(\deci_low.mux_N[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[65]_i_1 
       (.I0(data_N[65]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[65]),
        .O(\deci_low.mux_N[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[66]_i_1 
       (.I0(data_N[66]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[0]),
        .O(\deci_low.mux_N[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[67]_i_1 
       (.I0(data_N[67]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[1]),
        .O(\deci_low.mux_N[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[68]_i_1 
       (.I0(data_N[68]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[2]),
        .O(\deci_low.mux_N[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[69]_i_1 
       (.I0(data_N[69]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[3]),
        .O(\deci_low.mux_N[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[6]_i_1 
       (.I0(data_N[6]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[4]),
        .O(\deci_low.mux_N[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[70]_i_1 
       (.I0(data_N[70]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[4]),
        .O(\deci_low.mux_N[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[71]_i_1 
       (.I0(data_N[71]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[5]),
        .O(\deci_low.mux_N[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[72]_i_1 
       (.I0(data_N[72]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[6]),
        .O(\deci_low.mux_N[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[73]_i_1 
       (.I0(data_N[73]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[7]),
        .O(\deci_low.mux_N[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[74]_i_1 
       (.I0(data_N[74]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[8]),
        .O(\deci_low.mux_N[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[75]_i_1 
       (.I0(data_N[75]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[9]),
        .O(\deci_low.mux_N[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[76]_i_1 
       (.I0(data_N[76]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[10]),
        .O(\deci_low.mux_N[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[77]_i_1 
       (.I0(data_N[77]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[11]),
        .O(\deci_low.mux_N[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[78]_i_1 
       (.I0(data_N[78]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[12]),
        .O(\deci_low.mux_N[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[79]_i_1 
       (.I0(data_N[79]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N4[13]),
        .O(\deci_low.mux_N[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[7]_i_1 
       (.I0(data_N[7]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[5]),
        .O(\deci_low.mux_N[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[80]_i_1 
       (.I0(data_N[80]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[80]),
        .O(\deci_low.mux_N[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[81]_i_1 
       (.I0(data_N[81]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[81]),
        .O(\deci_low.mux_N[81]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[82]_i_1 
       (.I0(data_N[82]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[0]),
        .O(\deci_low.mux_N[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[83]_i_1 
       (.I0(data_N[83]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[1]),
        .O(\deci_low.mux_N[83]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[84]_i_1 
       (.I0(data_N[84]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[2]),
        .O(\deci_low.mux_N[84]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[85]_i_1 
       (.I0(data_N[85]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[3]),
        .O(\deci_low.mux_N[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[86]_i_1 
       (.I0(data_N[86]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[4]),
        .O(\deci_low.mux_N[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[87]_i_1 
       (.I0(data_N[87]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[5]),
        .O(\deci_low.mux_N[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[88]_i_1 
       (.I0(data_N[88]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[6]),
        .O(\deci_low.mux_N[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[89]_i_1 
       (.I0(data_N[89]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[7]),
        .O(\deci_low.mux_N[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[8]_i_1 
       (.I0(data_N[8]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[6]),
        .O(\deci_low.mux_N[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[90]_i_1 
       (.I0(data_N[90]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[8]),
        .O(\deci_low.mux_N[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[91]_i_1 
       (.I0(data_N[91]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[9]),
        .O(\deci_low.mux_N[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[92]_i_1 
       (.I0(data_N[92]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[10]),
        .O(\deci_low.mux_N[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[93]_i_1 
       (.I0(data_N[93]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[11]),
        .O(\deci_low.mux_N[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[94]_i_1 
       (.I0(data_N[94]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[12]),
        .O(\deci_low.mux_N[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[95]_i_1 
       (.I0(data_N[95]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N5[13]),
        .O(\deci_low.mux_N[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[96]_i_1 
       (.I0(data_N[96]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[96]),
        .O(\deci_low.mux_N[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[97]_i_1 
       (.I0(data_N[97]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_N[97]),
        .O(\deci_low.mux_N[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[98]_i_1 
       (.I0(data_N[98]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[0]),
        .O(\deci_low.mux_N[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[99]_i_1 
       (.I0(data_N[99]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N6[1]),
        .O(\deci_low.mux_N[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_N[9]_i_1 
       (.I0(data_N[9]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_N0[7]),
        .O(\deci_low.mux_N[9]_i_1_n_0 ));
  FDRE \deci_low.mux_N_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[0]_i_1_n_0 ),
        .Q(mux_N[0]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[100]_i_1_n_0 ),
        .Q(mux_N[100]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[101]_i_1_n_0 ),
        .Q(mux_N[101]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[102]_i_1_n_0 ),
        .Q(mux_N[102]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[103]_i_1_n_0 ),
        .Q(mux_N[103]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[104]_i_1_n_0 ),
        .Q(mux_N[104]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[105]_i_1_n_0 ),
        .Q(mux_N[105]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[106]_i_1_n_0 ),
        .Q(mux_N[106]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[107]_i_1_n_0 ),
        .Q(mux_N[107]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[108]_i_1_n_0 ),
        .Q(mux_N[108]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[109]_i_1_n_0 ),
        .Q(mux_N[109]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[10]_i_1_n_0 ),
        .Q(mux_N[10]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[110]_i_1_n_0 ),
        .Q(mux_N[110]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[111]_i_1_n_0 ),
        .Q(mux_N[111]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[112]_i_1_n_0 ),
        .Q(mux_N[112]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[113]_i_1_n_0 ),
        .Q(mux_N[113]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[114]_i_1_n_0 ),
        .Q(mux_N[114]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[115]_i_1_n_0 ),
        .Q(mux_N[115]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[116]_i_1_n_0 ),
        .Q(mux_N[116]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[117]_i_1_n_0 ),
        .Q(mux_N[117]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[118]_i_1_n_0 ),
        .Q(mux_N[118]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[119]_i_1_n_0 ),
        .Q(mux_N[119]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[11]_i_1_n_0 ),
        .Q(mux_N[11]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[120]_i_1_n_0 ),
        .Q(mux_N[120]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[121]_i_1_n_0 ),
        .Q(mux_N[121]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[122]_i_1_n_0 ),
        .Q(mux_N[122]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[123]_i_1_n_0 ),
        .Q(mux_N[123]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[124]_i_1_n_0 ),
        .Q(mux_N[124]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[125]_i_1_n_0 ),
        .Q(mux_N[125]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[126]_i_1_n_0 ),
        .Q(mux_N[126]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[127]_i_1_n_0 ),
        .Q(mux_N[127]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[12]_i_1_n_0 ),
        .Q(mux_N[12]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[13]_i_1_n_0 ),
        .Q(mux_N[13]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[14]_i_1_n_0 ),
        .Q(mux_N[14]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[15]_i_1_n_0 ),
        .Q(mux_N[15]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[16]_i_1_n_0 ),
        .Q(mux_N[16]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[17]_i_1_n_0 ),
        .Q(mux_N[17]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[18]_i_1_n_0 ),
        .Q(mux_N[18]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[19]_i_1_n_0 ),
        .Q(mux_N[19]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[1]_i_1_n_0 ),
        .Q(mux_N[1]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[20]_i_1_n_0 ),
        .Q(mux_N[20]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[21]_i_1_n_0 ),
        .Q(mux_N[21]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[22]_i_1_n_0 ),
        .Q(mux_N[22]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[23]_i_1_n_0 ),
        .Q(mux_N[23]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[24]_i_1_n_0 ),
        .Q(mux_N[24]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[25]_i_1_n_0 ),
        .Q(mux_N[25]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[26]_i_1_n_0 ),
        .Q(mux_N[26]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[27]_i_1_n_0 ),
        .Q(mux_N[27]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[28]_i_1_n_0 ),
        .Q(mux_N[28]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[29]_i_1_n_0 ),
        .Q(mux_N[29]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[2]_i_1_n_0 ),
        .Q(mux_N[2]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[30]_i_1_n_0 ),
        .Q(mux_N[30]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[31]_i_1_n_0 ),
        .Q(mux_N[31]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[32]_i_1_n_0 ),
        .Q(mux_N[32]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[33]_i_1_n_0 ),
        .Q(mux_N[33]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[34]_i_1_n_0 ),
        .Q(mux_N[34]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[35]_i_1_n_0 ),
        .Q(mux_N[35]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[36]_i_1_n_0 ),
        .Q(mux_N[36]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[37]_i_1_n_0 ),
        .Q(mux_N[37]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[38]_i_1_n_0 ),
        .Q(mux_N[38]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[39]_i_1_n_0 ),
        .Q(mux_N[39]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[3]_i_1_n_0 ),
        .Q(mux_N[3]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[40]_i_1_n_0 ),
        .Q(mux_N[40]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[41]_i_1_n_0 ),
        .Q(mux_N[41]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[42]_i_1_n_0 ),
        .Q(mux_N[42]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[43]_i_1_n_0 ),
        .Q(mux_N[43]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[44]_i_1_n_0 ),
        .Q(mux_N[44]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[45]_i_1_n_0 ),
        .Q(mux_N[45]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[46]_i_1_n_0 ),
        .Q(mux_N[46]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[47]_i_1_n_0 ),
        .Q(mux_N[47]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[48]_i_1_n_0 ),
        .Q(mux_N[48]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[49]_i_1_n_0 ),
        .Q(mux_N[49]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[4]_i_1_n_0 ),
        .Q(mux_N[4]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[50]_i_1_n_0 ),
        .Q(mux_N[50]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[51]_i_1_n_0 ),
        .Q(mux_N[51]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[52]_i_1_n_0 ),
        .Q(mux_N[52]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[53]_i_1_n_0 ),
        .Q(mux_N[53]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[54]_i_1_n_0 ),
        .Q(mux_N[54]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[55]_i_1_n_0 ),
        .Q(mux_N[55]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[56]_i_1_n_0 ),
        .Q(mux_N[56]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[57]_i_1_n_0 ),
        .Q(mux_N[57]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[58]_i_1_n_0 ),
        .Q(mux_N[58]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[59]_i_1_n_0 ),
        .Q(mux_N[59]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[5]_i_1_n_0 ),
        .Q(mux_N[5]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[60]_i_1_n_0 ),
        .Q(mux_N[60]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[61]_i_1_n_0 ),
        .Q(mux_N[61]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[62]_i_1_n_0 ),
        .Q(mux_N[62]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[63]_i_1_n_0 ),
        .Q(mux_N[63]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[64]_i_1_n_0 ),
        .Q(mux_N[64]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[65]_i_1_n_0 ),
        .Q(mux_N[65]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[66]_i_1_n_0 ),
        .Q(mux_N[66]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[67]_i_1_n_0 ),
        .Q(mux_N[67]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[68]_i_1_n_0 ),
        .Q(mux_N[68]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[69]_i_1_n_0 ),
        .Q(mux_N[69]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[6]_i_1_n_0 ),
        .Q(mux_N[6]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[70]_i_1_n_0 ),
        .Q(mux_N[70]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[71]_i_1_n_0 ),
        .Q(mux_N[71]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[72]_i_1_n_0 ),
        .Q(mux_N[72]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[73]_i_1_n_0 ),
        .Q(mux_N[73]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[74]_i_1_n_0 ),
        .Q(mux_N[74]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[75]_i_1_n_0 ),
        .Q(mux_N[75]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[76]_i_1_n_0 ),
        .Q(mux_N[76]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[77]_i_1_n_0 ),
        .Q(mux_N[77]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[78]_i_1_n_0 ),
        .Q(mux_N[78]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[79]_i_1_n_0 ),
        .Q(mux_N[79]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[7]_i_1_n_0 ),
        .Q(mux_N[7]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[80]_i_1_n_0 ),
        .Q(mux_N[80]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[81]_i_1_n_0 ),
        .Q(mux_N[81]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[82]_i_1_n_0 ),
        .Q(mux_N[82]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[83]_i_1_n_0 ),
        .Q(mux_N[83]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[84]_i_1_n_0 ),
        .Q(mux_N[84]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[85]_i_1_n_0 ),
        .Q(mux_N[85]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[86]_i_1_n_0 ),
        .Q(mux_N[86]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[87]_i_1_n_0 ),
        .Q(mux_N[87]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[88]_i_1_n_0 ),
        .Q(mux_N[88]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[89]_i_1_n_0 ),
        .Q(mux_N[89]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[8]_i_1_n_0 ),
        .Q(mux_N[8]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[90]_i_1_n_0 ),
        .Q(mux_N[90]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[91]_i_1_n_0 ),
        .Q(mux_N[91]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[92]_i_1_n_0 ),
        .Q(mux_N[92]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[93]_i_1_n_0 ),
        .Q(mux_N[93]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[94]_i_1_n_0 ),
        .Q(mux_N[94]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[95]_i_1_n_0 ),
        .Q(mux_N[95]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[96]_i_1_n_0 ),
        .Q(mux_N[96]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[97]_i_1_n_0 ),
        .Q(mux_N[97]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[98]_i_1_n_0 ),
        .Q(mux_N[98]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[99]_i_1_n_0 ),
        .Q(mux_N[99]),
        .R(1'b0));
  FDRE \deci_low.mux_N_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_N[9]_i_1_n_0 ),
        .Q(mux_N[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[0]_i_1 
       (.I0(data_W[0]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[0]),
        .O(\deci_low.mux_W[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[100]_i_1 
       (.I0(data_W[100]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[2]),
        .O(\deci_low.mux_W[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[101]_i_1 
       (.I0(data_W[101]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[3]),
        .O(\deci_low.mux_W[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[102]_i_1 
       (.I0(data_W[102]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[4]),
        .O(\deci_low.mux_W[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[103]_i_1 
       (.I0(data_W[103]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[5]),
        .O(\deci_low.mux_W[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[104]_i_1 
       (.I0(data_W[104]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[6]),
        .O(\deci_low.mux_W[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[105]_i_1 
       (.I0(data_W[105]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[7]),
        .O(\deci_low.mux_W[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[106]_i_1 
       (.I0(data_W[106]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[8]),
        .O(\deci_low.mux_W[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[107]_i_1 
       (.I0(data_W[107]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[9]),
        .O(\deci_low.mux_W[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[108]_i_1 
       (.I0(data_W[108]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[10]),
        .O(\deci_low.mux_W[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[109]_i_1 
       (.I0(data_W[109]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[11]),
        .O(\deci_low.mux_W[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[10]_i_1 
       (.I0(data_W[10]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[8]),
        .O(\deci_low.mux_W[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[110]_i_1 
       (.I0(data_W[110]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[12]),
        .O(\deci_low.mux_W[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[111]_i_1 
       (.I0(data_W[111]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[13]),
        .O(\deci_low.mux_W[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[112]_i_1 
       (.I0(data_W[112]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[112]),
        .O(\deci_low.mux_W[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[113]_i_1 
       (.I0(data_W[113]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[113]),
        .O(\deci_low.mux_W[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[114]_i_1 
       (.I0(data_W[114]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[0]),
        .O(\deci_low.mux_W[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[115]_i_1 
       (.I0(data_W[115]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[1]),
        .O(\deci_low.mux_W[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[116]_i_1 
       (.I0(data_W[116]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[2]),
        .O(\deci_low.mux_W[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[117]_i_1 
       (.I0(data_W[117]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[3]),
        .O(\deci_low.mux_W[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[118]_i_1 
       (.I0(data_W[118]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[4]),
        .O(\deci_low.mux_W[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[119]_i_1 
       (.I0(data_W[119]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[5]),
        .O(\deci_low.mux_W[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[11]_i_1 
       (.I0(data_W[11]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[9]),
        .O(\deci_low.mux_W[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[120]_i_1 
       (.I0(data_W[120]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[6]),
        .O(\deci_low.mux_W[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[121]_i_1 
       (.I0(data_W[121]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[7]),
        .O(\deci_low.mux_W[121]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[122]_i_1 
       (.I0(data_W[122]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[8]),
        .O(\deci_low.mux_W[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[123]_i_1 
       (.I0(data_W[123]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[9]),
        .O(\deci_low.mux_W[123]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[124]_i_1 
       (.I0(data_W[124]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[10]),
        .O(\deci_low.mux_W[124]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[125]_i_1 
       (.I0(data_W[125]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[11]),
        .O(\deci_low.mux_W[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[126]_i_1 
       (.I0(data_W[126]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[12]),
        .O(\deci_low.mux_W[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[127]_i_1 
       (.I0(data_W[127]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W7[13]),
        .O(\deci_low.mux_W[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[12]_i_1 
       (.I0(data_W[12]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[10]),
        .O(\deci_low.mux_W[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[13]_i_1 
       (.I0(data_W[13]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[11]),
        .O(\deci_low.mux_W[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[14]_i_1 
       (.I0(data_W[14]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[12]),
        .O(\deci_low.mux_W[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[15]_i_1 
       (.I0(data_W[15]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[13]),
        .O(\deci_low.mux_W[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[16]_i_1 
       (.I0(data_W[16]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[16]),
        .O(\deci_low.mux_W[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[17]_i_1 
       (.I0(data_W[17]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[17]),
        .O(\deci_low.mux_W[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[18]_i_1 
       (.I0(data_W[18]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[0]),
        .O(\deci_low.mux_W[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[19]_i_1 
       (.I0(data_W[19]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[1]),
        .O(\deci_low.mux_W[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[1]_i_1 
       (.I0(data_W[1]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[1]),
        .O(\deci_low.mux_W[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[20]_i_1 
       (.I0(data_W[20]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[2]),
        .O(\deci_low.mux_W[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[21]_i_1 
       (.I0(data_W[21]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[3]),
        .O(\deci_low.mux_W[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[22]_i_1 
       (.I0(data_W[22]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[4]),
        .O(\deci_low.mux_W[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[23]_i_1 
       (.I0(data_W[23]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[5]),
        .O(\deci_low.mux_W[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[24]_i_1 
       (.I0(data_W[24]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[6]),
        .O(\deci_low.mux_W[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[25]_i_1 
       (.I0(data_W[25]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[7]),
        .O(\deci_low.mux_W[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[26]_i_1 
       (.I0(data_W[26]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[8]),
        .O(\deci_low.mux_W[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[27]_i_1 
       (.I0(data_W[27]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[9]),
        .O(\deci_low.mux_W[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[28]_i_1 
       (.I0(data_W[28]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[10]),
        .O(\deci_low.mux_W[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[29]_i_1 
       (.I0(data_W[29]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[11]),
        .O(\deci_low.mux_W[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[2]_i_1 
       (.I0(data_W[2]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[0]),
        .O(\deci_low.mux_W[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[30]_i_1 
       (.I0(data_W[30]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[12]),
        .O(\deci_low.mux_W[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[31]_i_1 
       (.I0(data_W[31]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W1[13]),
        .O(\deci_low.mux_W[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[32]_i_1 
       (.I0(data_W[32]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[32]),
        .O(\deci_low.mux_W[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[33]_i_1 
       (.I0(data_W[33]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[33]),
        .O(\deci_low.mux_W[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[34]_i_1 
       (.I0(data_W[34]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[0]),
        .O(\deci_low.mux_W[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[35]_i_1 
       (.I0(data_W[35]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[1]),
        .O(\deci_low.mux_W[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[36]_i_1 
       (.I0(data_W[36]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[2]),
        .O(\deci_low.mux_W[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[37]_i_1 
       (.I0(data_W[37]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[3]),
        .O(\deci_low.mux_W[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[38]_i_1 
       (.I0(data_W[38]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[4]),
        .O(\deci_low.mux_W[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[39]_i_1 
       (.I0(data_W[39]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[5]),
        .O(\deci_low.mux_W[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[3]_i_1 
       (.I0(data_W[3]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[1]),
        .O(\deci_low.mux_W[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[40]_i_1 
       (.I0(data_W[40]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[6]),
        .O(\deci_low.mux_W[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[41]_i_1 
       (.I0(data_W[41]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[7]),
        .O(\deci_low.mux_W[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[42]_i_1 
       (.I0(data_W[42]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[8]),
        .O(\deci_low.mux_W[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[43]_i_1 
       (.I0(data_W[43]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[9]),
        .O(\deci_low.mux_W[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[44]_i_1 
       (.I0(data_W[44]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[10]),
        .O(\deci_low.mux_W[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[45]_i_1 
       (.I0(data_W[45]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[11]),
        .O(\deci_low.mux_W[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[46]_i_1 
       (.I0(data_W[46]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[12]),
        .O(\deci_low.mux_W[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[47]_i_1 
       (.I0(data_W[47]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W2[13]),
        .O(\deci_low.mux_W[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[48]_i_1 
       (.I0(data_W[48]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[48]),
        .O(\deci_low.mux_W[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[49]_i_1 
       (.I0(data_W[49]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[49]),
        .O(\deci_low.mux_W[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[4]_i_1 
       (.I0(data_W[4]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[2]),
        .O(\deci_low.mux_W[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[50]_i_1 
       (.I0(data_W[50]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[0]),
        .O(\deci_low.mux_W[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[51]_i_1 
       (.I0(data_W[51]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[1]),
        .O(\deci_low.mux_W[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[52]_i_1 
       (.I0(data_W[52]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[2]),
        .O(\deci_low.mux_W[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[53]_i_1 
       (.I0(data_W[53]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[3]),
        .O(\deci_low.mux_W[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[54]_i_1 
       (.I0(data_W[54]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[4]),
        .O(\deci_low.mux_W[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[55]_i_1 
       (.I0(data_W[55]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[5]),
        .O(\deci_low.mux_W[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[56]_i_1 
       (.I0(data_W[56]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[6]),
        .O(\deci_low.mux_W[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[57]_i_1 
       (.I0(data_W[57]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[7]),
        .O(\deci_low.mux_W[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[58]_i_1 
       (.I0(data_W[58]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[8]),
        .O(\deci_low.mux_W[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[59]_i_1 
       (.I0(data_W[59]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[9]),
        .O(\deci_low.mux_W[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[5]_i_1 
       (.I0(data_W[5]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[3]),
        .O(\deci_low.mux_W[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[60]_i_1 
       (.I0(data_W[60]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[10]),
        .O(\deci_low.mux_W[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[61]_i_1 
       (.I0(data_W[61]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[11]),
        .O(\deci_low.mux_W[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[62]_i_1 
       (.I0(data_W[62]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[12]),
        .O(\deci_low.mux_W[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[63]_i_1 
       (.I0(data_W[63]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W3[13]),
        .O(\deci_low.mux_W[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[64]_i_1 
       (.I0(data_W[64]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[64]),
        .O(\deci_low.mux_W[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[65]_i_1 
       (.I0(data_W[65]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[65]),
        .O(\deci_low.mux_W[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[66]_i_1 
       (.I0(data_W[66]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[0]),
        .O(\deci_low.mux_W[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[67]_i_1 
       (.I0(data_W[67]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[1]),
        .O(\deci_low.mux_W[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[68]_i_1 
       (.I0(data_W[68]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[2]),
        .O(\deci_low.mux_W[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[69]_i_1 
       (.I0(data_W[69]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[3]),
        .O(\deci_low.mux_W[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[6]_i_1 
       (.I0(data_W[6]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[4]),
        .O(\deci_low.mux_W[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[70]_i_1 
       (.I0(data_W[70]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[4]),
        .O(\deci_low.mux_W[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[71]_i_1 
       (.I0(data_W[71]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[5]),
        .O(\deci_low.mux_W[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[72]_i_1 
       (.I0(data_W[72]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[6]),
        .O(\deci_low.mux_W[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[73]_i_1 
       (.I0(data_W[73]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[7]),
        .O(\deci_low.mux_W[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[74]_i_1 
       (.I0(data_W[74]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[8]),
        .O(\deci_low.mux_W[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[75]_i_1 
       (.I0(data_W[75]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[9]),
        .O(\deci_low.mux_W[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[76]_i_1 
       (.I0(data_W[76]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[10]),
        .O(\deci_low.mux_W[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[77]_i_1 
       (.I0(data_W[77]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[11]),
        .O(\deci_low.mux_W[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[78]_i_1 
       (.I0(data_W[78]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[12]),
        .O(\deci_low.mux_W[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[79]_i_1 
       (.I0(data_W[79]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W4[13]),
        .O(\deci_low.mux_W[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[7]_i_1 
       (.I0(data_W[7]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[5]),
        .O(\deci_low.mux_W[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[80]_i_1 
       (.I0(data_W[80]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[80]),
        .O(\deci_low.mux_W[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[81]_i_1 
       (.I0(data_W[81]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[81]),
        .O(\deci_low.mux_W[81]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[82]_i_1 
       (.I0(data_W[82]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[0]),
        .O(\deci_low.mux_W[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[83]_i_1 
       (.I0(data_W[83]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[1]),
        .O(\deci_low.mux_W[83]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[84]_i_1 
       (.I0(data_W[84]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[2]),
        .O(\deci_low.mux_W[84]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[85]_i_1 
       (.I0(data_W[85]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[3]),
        .O(\deci_low.mux_W[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[86]_i_1 
       (.I0(data_W[86]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[4]),
        .O(\deci_low.mux_W[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[87]_i_1 
       (.I0(data_W[87]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[5]),
        .O(\deci_low.mux_W[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[88]_i_1 
       (.I0(data_W[88]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[6]),
        .O(\deci_low.mux_W[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[89]_i_1 
       (.I0(data_W[89]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[7]),
        .O(\deci_low.mux_W[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[8]_i_1 
       (.I0(data_W[8]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[6]),
        .O(\deci_low.mux_W[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[90]_i_1 
       (.I0(data_W[90]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[8]),
        .O(\deci_low.mux_W[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[91]_i_1 
       (.I0(data_W[91]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[9]),
        .O(\deci_low.mux_W[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[92]_i_1 
       (.I0(data_W[92]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[10]),
        .O(\deci_low.mux_W[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[93]_i_1 
       (.I0(data_W[93]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[11]),
        .O(\deci_low.mux_W[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[94]_i_1 
       (.I0(data_W[94]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[12]),
        .O(\deci_low.mux_W[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[95]_i_1 
       (.I0(data_W[95]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W5[13]),
        .O(\deci_low.mux_W[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[96]_i_1 
       (.I0(data_W[96]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[96]),
        .O(\deci_low.mux_W[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[97]_i_1 
       (.I0(data_W[97]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_out_W[97]),
        .O(\deci_low.mux_W[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[98]_i_1 
       (.I0(data_W[98]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[0]),
        .O(\deci_low.mux_W[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[99]_i_1 
       (.I0(data_W[99]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W6[1]),
        .O(\deci_low.mux_W[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \deci_low.mux_W[9]_i_1 
       (.I0(data_W[9]),
        .I1(adc_active),
        .I2(sim_active),
        .I3(\deci_low.mux_active_i_2_n_0 ),
        .I4(sim_W0[7]),
        .O(\deci_low.mux_W[9]_i_1_n_0 ));
  FDRE \deci_low.mux_W_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[0]_i_1_n_0 ),
        .Q(mux_W[0]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[100]_i_1_n_0 ),
        .Q(mux_W[100]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[101]_i_1_n_0 ),
        .Q(mux_W[101]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[102]_i_1_n_0 ),
        .Q(mux_W[102]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[103]_i_1_n_0 ),
        .Q(mux_W[103]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[104]_i_1_n_0 ),
        .Q(mux_W[104]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[105]_i_1_n_0 ),
        .Q(mux_W[105]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[106]_i_1_n_0 ),
        .Q(mux_W[106]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[107]_i_1_n_0 ),
        .Q(mux_W[107]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[108]_i_1_n_0 ),
        .Q(mux_W[108]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[109]_i_1_n_0 ),
        .Q(mux_W[109]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[10]_i_1_n_0 ),
        .Q(mux_W[10]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[110]_i_1_n_0 ),
        .Q(mux_W[110]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[111]_i_1_n_0 ),
        .Q(mux_W[111]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[112]_i_1_n_0 ),
        .Q(mux_W[112]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[113]_i_1_n_0 ),
        .Q(mux_W[113]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[114]_i_1_n_0 ),
        .Q(mux_W[114]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[115]_i_1_n_0 ),
        .Q(mux_W[115]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[116]_i_1_n_0 ),
        .Q(mux_W[116]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[117]_i_1_n_0 ),
        .Q(mux_W[117]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[118]_i_1_n_0 ),
        .Q(mux_W[118]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[119]_i_1_n_0 ),
        .Q(mux_W[119]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[11]_i_1_n_0 ),
        .Q(mux_W[11]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[120]_i_1_n_0 ),
        .Q(mux_W[120]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[121]_i_1_n_0 ),
        .Q(mux_W[121]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[122]_i_1_n_0 ),
        .Q(mux_W[122]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[123]_i_1_n_0 ),
        .Q(mux_W[123]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[124]_i_1_n_0 ),
        .Q(mux_W[124]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[125]_i_1_n_0 ),
        .Q(mux_W[125]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[126]_i_1_n_0 ),
        .Q(mux_W[126]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[127]_i_1_n_0 ),
        .Q(mux_W[127]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[12]_i_1_n_0 ),
        .Q(mux_W[12]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[13]_i_1_n_0 ),
        .Q(mux_W[13]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[14]_i_1_n_0 ),
        .Q(mux_W[14]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[15]_i_1_n_0 ),
        .Q(mux_W[15]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[16]_i_1_n_0 ),
        .Q(mux_W[16]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[17]_i_1_n_0 ),
        .Q(mux_W[17]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[18]_i_1_n_0 ),
        .Q(mux_W[18]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[19]_i_1_n_0 ),
        .Q(mux_W[19]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[1]_i_1_n_0 ),
        .Q(mux_W[1]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[20]_i_1_n_0 ),
        .Q(mux_W[20]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[21]_i_1_n_0 ),
        .Q(mux_W[21]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[22]_i_1_n_0 ),
        .Q(mux_W[22]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[23]_i_1_n_0 ),
        .Q(mux_W[23]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[24]_i_1_n_0 ),
        .Q(mux_W[24]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[25]_i_1_n_0 ),
        .Q(mux_W[25]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[26]_i_1_n_0 ),
        .Q(mux_W[26]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[27]_i_1_n_0 ),
        .Q(mux_W[27]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[28]_i_1_n_0 ),
        .Q(mux_W[28]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[29]_i_1_n_0 ),
        .Q(mux_W[29]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[2]_i_1_n_0 ),
        .Q(mux_W[2]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[30]_i_1_n_0 ),
        .Q(mux_W[30]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[31]_i_1_n_0 ),
        .Q(mux_W[31]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[32]_i_1_n_0 ),
        .Q(mux_W[32]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[33]_i_1_n_0 ),
        .Q(mux_W[33]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[34]_i_1_n_0 ),
        .Q(mux_W[34]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[35]_i_1_n_0 ),
        .Q(mux_W[35]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[36]_i_1_n_0 ),
        .Q(mux_W[36]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[37]_i_1_n_0 ),
        .Q(mux_W[37]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[38]_i_1_n_0 ),
        .Q(mux_W[38]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[39]_i_1_n_0 ),
        .Q(mux_W[39]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[3]_i_1_n_0 ),
        .Q(mux_W[3]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[40]_i_1_n_0 ),
        .Q(mux_W[40]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[41]_i_1_n_0 ),
        .Q(mux_W[41]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[42]_i_1_n_0 ),
        .Q(mux_W[42]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[43]_i_1_n_0 ),
        .Q(mux_W[43]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[44]_i_1_n_0 ),
        .Q(mux_W[44]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[45]_i_1_n_0 ),
        .Q(mux_W[45]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[46]_i_1_n_0 ),
        .Q(mux_W[46]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[47]_i_1_n_0 ),
        .Q(mux_W[47]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[48]_i_1_n_0 ),
        .Q(mux_W[48]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[49]_i_1_n_0 ),
        .Q(mux_W[49]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[4]_i_1_n_0 ),
        .Q(mux_W[4]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[50]_i_1_n_0 ),
        .Q(mux_W[50]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[51]_i_1_n_0 ),
        .Q(mux_W[51]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[52]_i_1_n_0 ),
        .Q(mux_W[52]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[53]_i_1_n_0 ),
        .Q(mux_W[53]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[54]_i_1_n_0 ),
        .Q(mux_W[54]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[55]_i_1_n_0 ),
        .Q(mux_W[55]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[56]_i_1_n_0 ),
        .Q(mux_W[56]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[57]_i_1_n_0 ),
        .Q(mux_W[57]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[58]_i_1_n_0 ),
        .Q(mux_W[58]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[59]_i_1_n_0 ),
        .Q(mux_W[59]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[5]_i_1_n_0 ),
        .Q(mux_W[5]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[60]_i_1_n_0 ),
        .Q(mux_W[60]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[61]_i_1_n_0 ),
        .Q(mux_W[61]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[62]_i_1_n_0 ),
        .Q(mux_W[62]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[63]_i_1_n_0 ),
        .Q(mux_W[63]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[64]_i_1_n_0 ),
        .Q(mux_W[64]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[65]_i_1_n_0 ),
        .Q(mux_W[65]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[66]_i_1_n_0 ),
        .Q(mux_W[66]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[67]_i_1_n_0 ),
        .Q(mux_W[67]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[68]_i_1_n_0 ),
        .Q(mux_W[68]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[69]_i_1_n_0 ),
        .Q(mux_W[69]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[6]_i_1_n_0 ),
        .Q(mux_W[6]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[70]_i_1_n_0 ),
        .Q(mux_W[70]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[71]_i_1_n_0 ),
        .Q(mux_W[71]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[72]_i_1_n_0 ),
        .Q(mux_W[72]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[73]_i_1_n_0 ),
        .Q(mux_W[73]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[74]_i_1_n_0 ),
        .Q(mux_W[74]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[75]_i_1_n_0 ),
        .Q(mux_W[75]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[76]_i_1_n_0 ),
        .Q(mux_W[76]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[77]_i_1_n_0 ),
        .Q(mux_W[77]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[78]_i_1_n_0 ),
        .Q(mux_W[78]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[79]_i_1_n_0 ),
        .Q(mux_W[79]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[7]_i_1_n_0 ),
        .Q(mux_W[7]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[80]_i_1_n_0 ),
        .Q(mux_W[80]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[81]_i_1_n_0 ),
        .Q(mux_W[81]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[82]_i_1_n_0 ),
        .Q(mux_W[82]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[83]_i_1_n_0 ),
        .Q(mux_W[83]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[84]_i_1_n_0 ),
        .Q(mux_W[84]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[85]_i_1_n_0 ),
        .Q(mux_W[85]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[86]_i_1_n_0 ),
        .Q(mux_W[86]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[87]_i_1_n_0 ),
        .Q(mux_W[87]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[88]_i_1_n_0 ),
        .Q(mux_W[88]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[89]_i_1_n_0 ),
        .Q(mux_W[89]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[8]_i_1_n_0 ),
        .Q(mux_W[8]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[90]_i_1_n_0 ),
        .Q(mux_W[90]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[91]_i_1_n_0 ),
        .Q(mux_W[91]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[92]_i_1_n_0 ),
        .Q(mux_W[92]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[93]_i_1_n_0 ),
        .Q(mux_W[93]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[94]_i_1_n_0 ),
        .Q(mux_W[94]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[95]_i_1_n_0 ),
        .Q(mux_W[95]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[96]_i_1_n_0 ),
        .Q(mux_W[96]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[97]_i_1_n_0 ),
        .Q(mux_W[97]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[98]_i_1_n_0 ),
        .Q(mux_W[98]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[99]_i_1_n_0 ),
        .Q(mux_W[99]),
        .R(1'b0));
  FDRE \deci_low.mux_W_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_W[9]_i_1_n_0 ),
        .Q(mux_W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000800080FF8000)) 
    \deci_low.mux_active_i_1 
       (.I0(ready_N),
        .I1(ready_E),
        .I2(ready_W),
        .I3(adc_active),
        .I4(sim_active),
        .I5(\deci_low.mux_active_i_2_n_0 ),
        .O(\deci_low.mux_active_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \deci_low.mux_active_i_2 
       (.I0(sim_empty_N),
        .I1(sim_empty_E),
        .I2(sim_empty_W),
        .O(\deci_low.mux_active_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.mux_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_active_i_1_n_0 ),
        .Q(mux_active),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \deci_low.raw_active_i_1 
       (.I0(raw_fifo_empty),
        .I1(\deci_low.raw_delay[11]_i_4_n_0 ),
        .I2(\deci_low.raw_delay[11]_i_3_n_0 ),
        .I3(\deci_low.raw_active_i_2_n_0 ),
        .O(\deci_low.raw_active_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deci_low.raw_active_i_2 
       (.I0(\deci_low.raw_delay_reg [1]),
        .I1(\deci_low.raw_delay_reg [0]),
        .I2(\deci_low.raw_delay_reg [3]),
        .I3(\deci_low.raw_delay_reg [2]),
        .O(\deci_low.raw_active_i_2_n_0 ));
  FDRE \deci_low.raw_active_reg 
       (.C(raw_clk),
        .CE(1'b1),
        .D(\deci_low.raw_active_i_1_n_0 ),
        .Q(raw_active),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[0] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[0]),
        .Q(raw_data[0]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[100] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[100]),
        .Q(raw_data[100]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[101] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[101]),
        .Q(raw_data[101]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[102] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[102]),
        .Q(raw_data[102]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[103] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[103]),
        .Q(raw_data[103]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[104] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[104]),
        .Q(raw_data[104]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[105] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[105]),
        .Q(raw_data[105]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[106] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[106]),
        .Q(raw_data[106]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[107] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[107]),
        .Q(raw_data[107]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[108] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[108]),
        .Q(raw_data[108]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[109] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[109]),
        .Q(raw_data[109]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[10] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[10]),
        .Q(raw_data[10]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[110] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[110]),
        .Q(raw_data[110]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[111] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[111]),
        .Q(raw_data[111]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[112] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[112]),
        .Q(raw_data[112]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[113] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[113]),
        .Q(raw_data[113]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[114] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[114]),
        .Q(raw_data[114]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[115] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[115]),
        .Q(raw_data[115]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[116] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[116]),
        .Q(raw_data[116]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[117] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[117]),
        .Q(raw_data[117]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[118] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[118]),
        .Q(raw_data[118]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[119] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[119]),
        .Q(raw_data[119]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[11] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[11]),
        .Q(raw_data[11]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[120] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[120]),
        .Q(raw_data[120]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[121] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[121]),
        .Q(raw_data[121]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[122] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[122]),
        .Q(raw_data[122]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[123] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[123]),
        .Q(raw_data[123]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[124] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[124]),
        .Q(raw_data[124]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[125] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[125]),
        .Q(raw_data[125]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[126] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[126]),
        .Q(raw_data[126]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[127] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[127]),
        .Q(raw_data[127]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[128] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[128]),
        .Q(raw_data[128]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[129] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[129]),
        .Q(raw_data[129]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[12] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[12]),
        .Q(raw_data[12]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[130] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[130]),
        .Q(raw_data[130]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[131] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[131]),
        .Q(raw_data[131]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[132] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[132]),
        .Q(raw_data[132]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[133] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[133]),
        .Q(raw_data[133]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[134] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[134]),
        .Q(raw_data[134]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[135] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[135]),
        .Q(raw_data[135]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[136] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[136]),
        .Q(raw_data[136]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[137] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[137]),
        .Q(raw_data[137]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[138] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[138]),
        .Q(raw_data[138]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[139] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[139]),
        .Q(raw_data[139]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[13] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[13]),
        .Q(raw_data[13]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[140] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[140]),
        .Q(raw_data[140]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[141] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[141]),
        .Q(raw_data[141]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[142] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[142]),
        .Q(raw_data[142]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[143] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[143]),
        .Q(raw_data[143]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[144] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[144]),
        .Q(raw_data[144]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[145] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[145]),
        .Q(raw_data[145]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[146] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[146]),
        .Q(raw_data[146]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[147] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[147]),
        .Q(raw_data[147]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[148] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[148]),
        .Q(raw_data[148]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[149] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[149]),
        .Q(raw_data[149]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[14] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[14]),
        .Q(raw_data[14]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[150] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[150]),
        .Q(raw_data[150]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[151] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[151]),
        .Q(raw_data[151]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[152] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[152]),
        .Q(raw_data[152]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[153] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[153]),
        .Q(raw_data[153]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[154] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[154]),
        .Q(raw_data[154]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[155] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[155]),
        .Q(raw_data[155]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[156] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[156]),
        .Q(raw_data[156]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[157] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[157]),
        .Q(raw_data[157]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[158] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[158]),
        .Q(raw_data[158]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[159] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[159]),
        .Q(raw_data[159]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[15] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[15]),
        .Q(raw_data[15]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[160] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[160]),
        .Q(raw_data[160]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[161] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[161]),
        .Q(raw_data[161]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[162] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[162]),
        .Q(raw_data[162]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[163] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[163]),
        .Q(raw_data[163]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[164] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[164]),
        .Q(raw_data[164]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[165] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[165]),
        .Q(raw_data[165]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[166] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[166]),
        .Q(raw_data[166]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[167] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[167]),
        .Q(raw_data[167]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[168] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[168]),
        .Q(raw_data[168]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[169] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[169]),
        .Q(raw_data[169]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[16] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[16]),
        .Q(raw_data[16]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[170] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[170]),
        .Q(raw_data[170]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[171] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[171]),
        .Q(raw_data[171]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[172] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[172]),
        .Q(raw_data[172]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[173] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[173]),
        .Q(raw_data[173]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[174] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[174]),
        .Q(raw_data[174]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[175] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[175]),
        .Q(raw_data[175]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[176] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[176]),
        .Q(raw_data[176]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[177] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[177]),
        .Q(raw_data[177]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[178] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[178]),
        .Q(raw_data[178]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[179] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[179]),
        .Q(raw_data[179]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[17] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[17]),
        .Q(raw_data[17]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[180] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[180]),
        .Q(raw_data[180]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[181] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[181]),
        .Q(raw_data[181]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[182] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[182]),
        .Q(raw_data[182]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[183] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[183]),
        .Q(raw_data[183]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[184] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[184]),
        .Q(raw_data[184]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[185] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[185]),
        .Q(raw_data[185]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[186] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[186]),
        .Q(raw_data[186]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[187] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[187]),
        .Q(raw_data[187]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[188] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[188]),
        .Q(raw_data[188]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[189] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[189]),
        .Q(raw_data[189]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[18] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[18]),
        .Q(raw_data[18]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[190] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[190]),
        .Q(raw_data[190]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[191] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[191]),
        .Q(raw_data[191]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[192] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[192]),
        .Q(raw_data[192]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[193] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[193]),
        .Q(raw_data[193]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[194] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[194]),
        .Q(raw_data[194]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[195] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[195]),
        .Q(raw_data[195]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[19] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[19]),
        .Q(raw_data[19]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[1] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[1]),
        .Q(raw_data[1]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[20] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[20]),
        .Q(raw_data[20]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[21] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[21]),
        .Q(raw_data[21]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[22] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[22]),
        .Q(raw_data[22]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[23] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[23]),
        .Q(raw_data[23]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[24] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[24]),
        .Q(raw_data[24]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[25] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[25]),
        .Q(raw_data[25]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[26] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[26]),
        .Q(raw_data[26]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[27] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[27]),
        .Q(raw_data[27]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[28] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[28]),
        .Q(raw_data[28]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[29] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[29]),
        .Q(raw_data[29]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[2] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[2]),
        .Q(raw_data[2]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[30] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[30]),
        .Q(raw_data[30]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[31] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[31]),
        .Q(raw_data[31]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[32] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[32]),
        .Q(raw_data[32]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[33] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[33]),
        .Q(raw_data[33]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[34] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[34]),
        .Q(raw_data[34]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[35] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[35]),
        .Q(raw_data[35]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[36] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[36]),
        .Q(raw_data[36]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[37] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[37]),
        .Q(raw_data[37]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[38] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[38]),
        .Q(raw_data[38]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[39] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[39]),
        .Q(raw_data[39]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[3] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[3]),
        .Q(raw_data[3]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[40] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[40]),
        .Q(raw_data[40]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[41] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[41]),
        .Q(raw_data[41]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[42] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[42]),
        .Q(raw_data[42]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[43] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[43]),
        .Q(raw_data[43]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[44] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[44]),
        .Q(raw_data[44]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[45] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[45]),
        .Q(raw_data[45]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[46] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[46]),
        .Q(raw_data[46]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[47] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[47]),
        .Q(raw_data[47]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[48] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[48]),
        .Q(raw_data[48]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[49] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[49]),
        .Q(raw_data[49]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[4] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[4]),
        .Q(raw_data[4]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[50] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[50]),
        .Q(raw_data[50]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[51] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[51]),
        .Q(raw_data[51]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[52] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[52]),
        .Q(raw_data[52]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[53] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[53]),
        .Q(raw_data[53]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[54] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[54]),
        .Q(raw_data[54]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[55] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[55]),
        .Q(raw_data[55]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[56] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[56]),
        .Q(raw_data[56]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[57] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[57]),
        .Q(raw_data[57]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[58] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[58]),
        .Q(raw_data[58]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[59] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[59]),
        .Q(raw_data[59]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[5] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[5]),
        .Q(raw_data[5]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[60] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[60]),
        .Q(raw_data[60]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[61] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[61]),
        .Q(raw_data[61]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[62] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[62]),
        .Q(raw_data[62]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[63] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[63]),
        .Q(raw_data[63]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[64] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[64]),
        .Q(raw_data[64]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[65] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[65]),
        .Q(raw_data[65]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[66] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[66]),
        .Q(raw_data[66]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[67] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[67]),
        .Q(raw_data[67]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[68] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[68]),
        .Q(raw_data[68]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[69] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[69]),
        .Q(raw_data[69]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[6] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[6]),
        .Q(raw_data[6]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[70] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[70]),
        .Q(raw_data[70]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[71] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[71]),
        .Q(raw_data[71]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[72] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[72]),
        .Q(raw_data[72]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[73] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[73]),
        .Q(raw_data[73]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[74] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[74]),
        .Q(raw_data[74]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[75] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[75]),
        .Q(raw_data[75]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[76] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[76]),
        .Q(raw_data[76]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[77] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[77]),
        .Q(raw_data[77]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[78] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[78]),
        .Q(raw_data[78]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[79] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[79]),
        .Q(raw_data[79]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[7] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[7]),
        .Q(raw_data[7]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[80] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[80]),
        .Q(raw_data[80]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[81] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[81]),
        .Q(raw_data[81]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[82] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[82]),
        .Q(raw_data[82]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[83] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[83]),
        .Q(raw_data[83]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[84] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[84]),
        .Q(raw_data[84]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[85] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[85]),
        .Q(raw_data[85]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[86] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[86]),
        .Q(raw_data[86]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[87] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[87]),
        .Q(raw_data[87]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[88] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[88]),
        .Q(raw_data[88]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[89] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[89]),
        .Q(raw_data[89]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[8] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[8]),
        .Q(raw_data[8]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[90] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[90]),
        .Q(raw_data[90]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[91] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[91]),
        .Q(raw_data[91]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[92] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[92]),
        .Q(raw_data[92]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[93] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[93]),
        .Q(raw_data[93]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[94] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[94]),
        .Q(raw_data[94]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[95] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[95]),
        .Q(raw_data[95]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[96] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[96]),
        .Q(raw_data[96]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[97] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[97]),
        .Q(raw_data[97]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[98] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[98]),
        .Q(raw_data[98]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[99] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[99]),
        .Q(raw_data[99]),
        .R(1'b0));
  FDRE \deci_low.raw_data_reg[9] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[9]),
        .Q(raw_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[0]_i_1 
       (.I0(\deci_low.raw_delay_reg [0]),
        .O(raw_delay0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \deci_low.raw_delay[11]_i_1 
       (.I0(\deci_low.raw_delay_reg [2]),
        .I1(\deci_low.raw_delay_reg [3]),
        .I2(\deci_low.raw_delay_reg [0]),
        .I3(\deci_low.raw_delay_reg [1]),
        .I4(\deci_low.raw_delay[11]_i_3_n_0 ),
        .I5(\deci_low.raw_delay[11]_i_4_n_0 ),
        .O(\deci_low.raw_delay[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deci_low.raw_delay[11]_i_3 
       (.I0(\deci_low.raw_delay_reg [9]),
        .I1(\deci_low.raw_delay_reg [8]),
        .I2(\deci_low.raw_delay_reg [11]),
        .I3(\deci_low.raw_delay_reg [10]),
        .O(\deci_low.raw_delay[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deci_low.raw_delay[11]_i_4 
       (.I0(\deci_low.raw_delay_reg [5]),
        .I1(\deci_low.raw_delay_reg [4]),
        .I2(\deci_low.raw_delay_reg [7]),
        .I3(\deci_low.raw_delay_reg [6]),
        .O(\deci_low.raw_delay[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[11]_i_5 
       (.I0(\deci_low.raw_delay_reg [11]),
        .O(\deci_low.raw_delay[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[11]_i_6 
       (.I0(\deci_low.raw_delay_reg [10]),
        .O(\deci_low.raw_delay[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[11]_i_7 
       (.I0(\deci_low.raw_delay_reg [9]),
        .O(\deci_low.raw_delay[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_2 
       (.I0(\deci_low.raw_delay_reg [8]),
        .O(\deci_low.raw_delay[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_3 
       (.I0(\deci_low.raw_delay_reg [7]),
        .O(\deci_low.raw_delay[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_4 
       (.I0(\deci_low.raw_delay_reg [6]),
        .O(\deci_low.raw_delay[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_5 
       (.I0(\deci_low.raw_delay_reg [5]),
        .O(\deci_low.raw_delay[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_6 
       (.I0(\deci_low.raw_delay_reg [4]),
        .O(\deci_low.raw_delay[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_7 
       (.I0(\deci_low.raw_delay_reg [3]),
        .O(\deci_low.raw_delay[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_8 
       (.I0(\deci_low.raw_delay_reg [2]),
        .O(\deci_low.raw_delay[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.raw_delay[8]_i_9 
       (.I0(\deci_low.raw_delay_reg [1]),
        .O(\deci_low.raw_delay[8]_i_9_n_0 ));
  FDRE \deci_low.raw_delay_reg[0] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[0]),
        .Q(\deci_low.raw_delay_reg [0]),
        .R(raw_fifo_empty));
  FDRE \deci_low.raw_delay_reg[10] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[10]),
        .Q(\deci_low.raw_delay_reg [10]),
        .R(raw_fifo_empty));
  FDRE \deci_low.raw_delay_reg[11] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[11]),
        .Q(\deci_low.raw_delay_reg [11]),
        .R(raw_fifo_empty));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.raw_delay_reg[11]_i_2 
       (.CI(\deci_low.raw_delay_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.raw_delay_reg[11]_i_2_CO_UNCONNECTED [7:2],\deci_low.raw_delay_reg[11]_i_2_n_6 ,\deci_low.raw_delay_reg[11]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\deci_low.raw_delay_reg [10:9]}),
        .O({\NLW_deci_low.raw_delay_reg[11]_i_2_O_UNCONNECTED [7:3],raw_delay0[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\deci_low.raw_delay[11]_i_5_n_0 ,\deci_low.raw_delay[11]_i_6_n_0 ,\deci_low.raw_delay[11]_i_7_n_0 }));
  FDRE \deci_low.raw_delay_reg[1] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[1]),
        .Q(\deci_low.raw_delay_reg [1]),
        .R(raw_fifo_empty));
  FDRE \deci_low.raw_delay_reg[2] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[2]),
        .Q(\deci_low.raw_delay_reg [2]),
        .R(raw_fifo_empty));
  FDRE \deci_low.raw_delay_reg[3] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[3]),
        .Q(\deci_low.raw_delay_reg [3]),
        .R(raw_fifo_empty));
  FDSE \deci_low.raw_delay_reg[4] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[4]),
        .Q(\deci_low.raw_delay_reg [4]),
        .S(raw_fifo_empty));
  FDSE \deci_low.raw_delay_reg[5] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[5]),
        .Q(\deci_low.raw_delay_reg [5]),
        .S(raw_fifo_empty));
  FDSE \deci_low.raw_delay_reg[6] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[6]),
        .Q(\deci_low.raw_delay_reg [6]),
        .S(raw_fifo_empty));
  FDSE \deci_low.raw_delay_reg[7] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[7]),
        .Q(\deci_low.raw_delay_reg [7]),
        .S(raw_fifo_empty));
  FDSE \deci_low.raw_delay_reg[8] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[8]),
        .Q(\deci_low.raw_delay_reg [8]),
        .S(raw_fifo_empty));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.raw_delay_reg[8]_i_1 
       (.CI(\deci_low.raw_delay_reg [0]),
        .CI_TOP(1'b0),
        .CO({\deci_low.raw_delay_reg[8]_i_1_n_0 ,\deci_low.raw_delay_reg[8]_i_1_n_1 ,\deci_low.raw_delay_reg[8]_i_1_n_2 ,\deci_low.raw_delay_reg[8]_i_1_n_3 ,\deci_low.raw_delay_reg[8]_i_1_n_4 ,\deci_low.raw_delay_reg[8]_i_1_n_5 ,\deci_low.raw_delay_reg[8]_i_1_n_6 ,\deci_low.raw_delay_reg[8]_i_1_n_7 }),
        .DI(\deci_low.raw_delay_reg [8:1]),
        .O(raw_delay0[8:1]),
        .S({\deci_low.raw_delay[8]_i_2_n_0 ,\deci_low.raw_delay[8]_i_3_n_0 ,\deci_low.raw_delay[8]_i_4_n_0 ,\deci_low.raw_delay[8]_i_5_n_0 ,\deci_low.raw_delay[8]_i_6_n_0 ,\deci_low.raw_delay[8]_i_7_n_0 ,\deci_low.raw_delay[8]_i_8_n_0 ,\deci_low.raw_delay[8]_i_9_n_0 }));
  FDSE \deci_low.raw_delay_reg[9] 
       (.C(raw_clk),
        .CE(\deci_low.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[9]),
        .Q(\deci_low.raw_delay_reg [9]),
        .S(raw_fifo_empty));
  FDRE \deci_low.raw_fifo_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active),
        .Q(raw_fifo_wr),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[0] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [0]),
        .Q(raw_in_data[0]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[100] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[51]),
        .Q(raw_in_data[100]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[101] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[52]),
        .Q(raw_in_data[101]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[102] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[53]),
        .Q(raw_in_data[102]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[103] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[54]),
        .Q(raw_in_data[103]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[104] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[55]),
        .Q(raw_in_data[104]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[105] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[56]),
        .Q(raw_in_data[105]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[106] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[57]),
        .Q(raw_in_data[106]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[107] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[58]),
        .Q(raw_in_data[107]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[108] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[59]),
        .Q(raw_in_data[108]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[109] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[60]),
        .Q(raw_in_data[109]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[10] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [10]),
        .Q(raw_in_data[10]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[110] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[61]),
        .Q(raw_in_data[110]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[111] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[62]),
        .Q(raw_in_data[111]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[112] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[81]),
        .Q(raw_in_data[112]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[113] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[82]),
        .Q(raw_in_data[113]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[114] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[83]),
        .Q(raw_in_data[114]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[115] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[84]),
        .Q(raw_in_data[115]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[116] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[85]),
        .Q(raw_in_data[116]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[117] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[86]),
        .Q(raw_in_data[117]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[118] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[87]),
        .Q(raw_in_data[118]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[119] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[88]),
        .Q(raw_in_data[119]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[11] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [11]),
        .Q(raw_in_data[11]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[120] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[89]),
        .Q(raw_in_data[120]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[121] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[90]),
        .Q(raw_in_data[121]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[122] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[91]),
        .Q(raw_in_data[122]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[123] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[92]),
        .Q(raw_in_data[123]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[124] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[93]),
        .Q(raw_in_data[124]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[125] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[94]),
        .Q(raw_in_data[125]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[126] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[113]),
        .Q(raw_in_data[126]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[127] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[114]),
        .Q(raw_in_data[127]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[128] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[115]),
        .Q(raw_in_data[128]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[129] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[116]),
        .Q(raw_in_data[129]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[12] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [12]),
        .Q(raw_in_data[12]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[130] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[117]),
        .Q(raw_in_data[130]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[131] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[118]),
        .Q(raw_in_data[131]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[132] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[119]),
        .Q(raw_in_data[132]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[133] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[120]),
        .Q(raw_in_data[133]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[134] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[121]),
        .Q(raw_in_data[134]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[135] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[122]),
        .Q(raw_in_data[135]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[136] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[123]),
        .Q(raw_in_data[136]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[137] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[124]),
        .Q(raw_in_data[137]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[138] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[125]),
        .Q(raw_in_data[138]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[139] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[126]),
        .Q(raw_in_data[139]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[13] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [13]),
        .Q(raw_in_data[13]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[140] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[17]),
        .Q(raw_in_data[140]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[141] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[18]),
        .Q(raw_in_data[141]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[142] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[19]),
        .Q(raw_in_data[142]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[143] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[20]),
        .Q(raw_in_data[143]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[144] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[21]),
        .Q(raw_in_data[144]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[145] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[22]),
        .Q(raw_in_data[145]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[146] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[23]),
        .Q(raw_in_data[146]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[147] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[24]),
        .Q(raw_in_data[147]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[148] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[25]),
        .Q(raw_in_data[148]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[149] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[26]),
        .Q(raw_in_data[149]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[14] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [14]),
        .Q(raw_in_data[14]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[150] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[27]),
        .Q(raw_in_data[150]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[151] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[28]),
        .Q(raw_in_data[151]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[152] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[29]),
        .Q(raw_in_data[152]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[153] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[30]),
        .Q(raw_in_data[153]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[154] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[49]),
        .Q(raw_in_data[154]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[155] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[50]),
        .Q(raw_in_data[155]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[156] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[51]),
        .Q(raw_in_data[156]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[157] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[52]),
        .Q(raw_in_data[157]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[158] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[53]),
        .Q(raw_in_data[158]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[159] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[54]),
        .Q(raw_in_data[159]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[15] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [15]),
        .Q(raw_in_data[15]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[160] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[55]),
        .Q(raw_in_data[160]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[161] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[56]),
        .Q(raw_in_data[161]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[162] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[57]),
        .Q(raw_in_data[162]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[163] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[58]),
        .Q(raw_in_data[163]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[164] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[59]),
        .Q(raw_in_data[164]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[165] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[60]),
        .Q(raw_in_data[165]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[166] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[61]),
        .Q(raw_in_data[166]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[167] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[62]),
        .Q(raw_in_data[167]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[168] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[81]),
        .Q(raw_in_data[168]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[169] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[82]),
        .Q(raw_in_data[169]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[16] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [16]),
        .Q(raw_in_data[16]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[170] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[83]),
        .Q(raw_in_data[170]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[171] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[84]),
        .Q(raw_in_data[171]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[172] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[85]),
        .Q(raw_in_data[172]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[173] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[86]),
        .Q(raw_in_data[173]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[174] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[87]),
        .Q(raw_in_data[174]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[175] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[88]),
        .Q(raw_in_data[175]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[176] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[89]),
        .Q(raw_in_data[176]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[177] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[90]),
        .Q(raw_in_data[177]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[178] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[91]),
        .Q(raw_in_data[178]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[179] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[92]),
        .Q(raw_in_data[179]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[17] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [17]),
        .Q(raw_in_data[17]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[180] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[93]),
        .Q(raw_in_data[180]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[181] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[94]),
        .Q(raw_in_data[181]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[182] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[113]),
        .Q(raw_in_data[182]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[183] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[114]),
        .Q(raw_in_data[183]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[184] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[115]),
        .Q(raw_in_data[184]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[185] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[116]),
        .Q(raw_in_data[185]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[186] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[117]),
        .Q(raw_in_data[186]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[187] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[118]),
        .Q(raw_in_data[187]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[188] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[119]),
        .Q(raw_in_data[188]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[189] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[120]),
        .Q(raw_in_data[189]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[18] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [18]),
        .Q(raw_in_data[18]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[190] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[121]),
        .Q(raw_in_data[190]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[191] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[122]),
        .Q(raw_in_data[191]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[192] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[123]),
        .Q(raw_in_data[192]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[193] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[124]),
        .Q(raw_in_data[193]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[194] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[125]),
        .Q(raw_in_data[194]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[195] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[126]),
        .Q(raw_in_data[195]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[19] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [19]),
        .Q(raw_in_data[19]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[1] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [1]),
        .Q(raw_in_data[1]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [20]),
        .Q(raw_in_data[20]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [21]),
        .Q(raw_in_data[21]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [22]),
        .Q(raw_in_data[22]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[23] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [23]),
        .Q(raw_in_data[23]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[24] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [24]),
        .Q(raw_in_data[24]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[25] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [25]),
        .Q(raw_in_data[25]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[26] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [26]),
        .Q(raw_in_data[26]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[27] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [27]),
        .Q(raw_in_data[27]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[28] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[17]),
        .Q(raw_in_data[28]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[29] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[18]),
        .Q(raw_in_data[29]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[2] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [2]),
        .Q(raw_in_data[2]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[30] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[19]),
        .Q(raw_in_data[30]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[31] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[20]),
        .Q(raw_in_data[31]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[32] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[21]),
        .Q(raw_in_data[32]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[33] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[22]),
        .Q(raw_in_data[33]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[34] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[23]),
        .Q(raw_in_data[34]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[35] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[24]),
        .Q(raw_in_data[35]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[36] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[25]),
        .Q(raw_in_data[36]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[37] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[26]),
        .Q(raw_in_data[37]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[38] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[27]),
        .Q(raw_in_data[38]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[39] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[28]),
        .Q(raw_in_data[39]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[3] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [3]),
        .Q(raw_in_data[3]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[40] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[29]),
        .Q(raw_in_data[40]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[41] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[30]),
        .Q(raw_in_data[41]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[42] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[49]),
        .Q(raw_in_data[42]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[43] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[50]),
        .Q(raw_in_data[43]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[44] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[51]),
        .Q(raw_in_data[44]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[45] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[52]),
        .Q(raw_in_data[45]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[46] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[53]),
        .Q(raw_in_data[46]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[47] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[54]),
        .Q(raw_in_data[47]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[48] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[55]),
        .Q(raw_in_data[48]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[49] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[56]),
        .Q(raw_in_data[49]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[4] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [4]),
        .Q(raw_in_data[4]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[50] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[57]),
        .Q(raw_in_data[50]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[51] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[58]),
        .Q(raw_in_data[51]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[52] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[59]),
        .Q(raw_in_data[52]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[53] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[60]),
        .Q(raw_in_data[53]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[54] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[61]),
        .Q(raw_in_data[54]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[55] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[62]),
        .Q(raw_in_data[55]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[56] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[81]),
        .Q(raw_in_data[56]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[57] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[82]),
        .Q(raw_in_data[57]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[58] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[83]),
        .Q(raw_in_data[58]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[59] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[84]),
        .Q(raw_in_data[59]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[5] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [5]),
        .Q(raw_in_data[5]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[60] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[85]),
        .Q(raw_in_data[60]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[61] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[86]),
        .Q(raw_in_data[61]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[62] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[87]),
        .Q(raw_in_data[62]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[63] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[88]),
        .Q(raw_in_data[63]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[64] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[89]),
        .Q(raw_in_data[64]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[65] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[90]),
        .Q(raw_in_data[65]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[66] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[91]),
        .Q(raw_in_data[66]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[67] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[92]),
        .Q(raw_in_data[67]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[68] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[93]),
        .Q(raw_in_data[68]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[69] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[94]),
        .Q(raw_in_data[69]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[6] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [6]),
        .Q(raw_in_data[6]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[70] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[113]),
        .Q(raw_in_data[70]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[71] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[114]),
        .Q(raw_in_data[71]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[72] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[115]),
        .Q(raw_in_data[72]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[73] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[116]),
        .Q(raw_in_data[73]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[74] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[117]),
        .Q(raw_in_data[74]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[75] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[118]),
        .Q(raw_in_data[75]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[76] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[119]),
        .Q(raw_in_data[76]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[77] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[120]),
        .Q(raw_in_data[77]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[78] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[121]),
        .Q(raw_in_data[78]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[79] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[122]),
        .Q(raw_in_data[79]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[7] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [7]),
        .Q(raw_in_data[7]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[80] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[123]),
        .Q(raw_in_data[80]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[81] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[124]),
        .Q(raw_in_data[81]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[82] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[125]),
        .Q(raw_in_data[82]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[83] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[126]),
        .Q(raw_in_data[83]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[84] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[17]),
        .Q(raw_in_data[84]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[85] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[18]),
        .Q(raw_in_data[85]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[86] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[19]),
        .Q(raw_in_data[86]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[87] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[20]),
        .Q(raw_in_data[87]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[88] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[21]),
        .Q(raw_in_data[88]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[89] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[22]),
        .Q(raw_in_data[89]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[8] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [8]),
        .Q(raw_in_data[8]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[90] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[23]),
        .Q(raw_in_data[90]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[91] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[24]),
        .Q(raw_in_data[91]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[92] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[25]),
        .Q(raw_in_data[92]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[93] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[26]),
        .Q(raw_in_data[93]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[94] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[27]),
        .Q(raw_in_data[94]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[95] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[28]),
        .Q(raw_in_data[95]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[96] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[29]),
        .Q(raw_in_data[96]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[97] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[30]),
        .Q(raw_in_data[97]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[98] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[49]),
        .Q(raw_in_data[98]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[99] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[50]),
        .Q(raw_in_data[99]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [9]),
        .Q(raw_in_data[9]),
        .R(1'b0));
  FDRE \deci_low.raw_ready_reg 
       (.C(raw_clk),
        .CE(1'b1),
        .D(raw_active),
        .Q(raw_ready),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    \deci_low.sim_count[0]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_wr),
        .I2(sim_resetn),
        .O(\deci_low.sim_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5400)) 
    \deci_low.sim_count[1]_i_1 
       (.I0(sim_wr),
        .I1(sim_count[1]),
        .I2(sim_count[0]),
        .I3(sim_resetn),
        .O(\deci_low.sim_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \deci_low.sim_count[1]_i_2 
       (.I0(sim_count[1]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_resetn),
        .O(\deci_low.sim_count[1]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_count_reg[0] 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_count[0]_i_1_n_0 ),
        .Q(sim_count[0]),
        .R(\deci_low.sim_count[1]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_count_reg[1] 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_count[1]_i_2_n_0 ),
        .Q(sim_count[1]),
        .R(\deci_low.sim_count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[0]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[0]),
        .I3(sim_wr),
        .I4(sim_curr_data[0]),
        .O(p_0_in1_in__0[0]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[100]_i_1 
       (.I0(sim_data[4]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[100]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[100]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[101]_i_1 
       (.I0(sim_data[5]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[101]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[101]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[102]_i_1 
       (.I0(sim_data[6]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[102]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[102]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[103]_i_1 
       (.I0(sim_data[7]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[103]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[103]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[104]_i_1 
       (.I0(sim_data[8]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[104]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[104]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[105]_i_1 
       (.I0(sim_data[9]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[105]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[105]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[106]_i_1 
       (.I0(sim_data[10]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[106]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[106]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[107]_i_1 
       (.I0(sim_data[11]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[107]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[107]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[108]_i_1 
       (.I0(sim_data[12]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[108]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[108]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[109]_i_1 
       (.I0(sim_data[13]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[109]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[109]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[10]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[10]),
        .I3(sim_wr),
        .I4(sim_curr_data[10]),
        .O(p_0_in1_in__0[10]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[110]_i_1 
       (.I0(sim_data[14]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[110]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[110]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[111]_i_1 
       (.I0(sim_data[15]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[111]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[111]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[112]_i_1 
       (.I0(sim_data[16]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[112]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[112]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[113]_i_1 
       (.I0(sim_data[17]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[113]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[113]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[114]_i_1 
       (.I0(sim_data[18]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[114]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[114]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[115]_i_1 
       (.I0(sim_data[19]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[115]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[115]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[116]_i_1 
       (.I0(sim_data[20]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[116]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[116]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[117]_i_1 
       (.I0(sim_data[21]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[117]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[117]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[118]_i_1 
       (.I0(sim_data[22]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[118]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[118]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[119]_i_1 
       (.I0(sim_data[23]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[119]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[119]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[11]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[11]),
        .I3(sim_wr),
        .I4(sim_curr_data[11]),
        .O(p_0_in1_in__0[11]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[120]_i_1 
       (.I0(sim_data[24]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[120]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[120]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[121]_i_1 
       (.I0(sim_data[25]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[121]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[121]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[122]_i_1 
       (.I0(sim_data[26]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[122]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[122]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[123]_i_1 
       (.I0(sim_data[27]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[123]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[123]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[124]_i_1 
       (.I0(sim_data[28]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[124]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[124]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[125]_i_1 
       (.I0(sim_data[29]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[125]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[125]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[126]_i_1 
       (.I0(sim_data[30]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[126]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[126]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[127]_i_1 
       (.I0(sim_data[31]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[127]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[127]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[12]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[12]),
        .I3(sim_wr),
        .I4(sim_curr_data[12]),
        .O(p_0_in1_in__0[12]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[13]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[13]),
        .I3(sim_wr),
        .I4(sim_curr_data[13]),
        .O(p_0_in1_in__0[13]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[14]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[14]),
        .I3(sim_wr),
        .I4(sim_curr_data[14]),
        .O(p_0_in1_in__0[14]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[15]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[15]),
        .I3(sim_wr),
        .I4(sim_curr_data[15]),
        .O(p_0_in1_in__0[15]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[16]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[16]),
        .I3(sim_wr),
        .I4(sim_curr_data[16]),
        .O(p_0_in1_in__0[16]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[17]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[17]),
        .I3(sim_wr),
        .I4(sim_curr_data[17]),
        .O(p_0_in1_in__0[17]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[18]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[18]),
        .I3(sim_wr),
        .I4(sim_curr_data[18]),
        .O(p_0_in1_in__0[18]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[19]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[19]),
        .I3(sim_wr),
        .I4(sim_curr_data[19]),
        .O(p_0_in1_in__0[19]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[1]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[1]),
        .I3(sim_wr),
        .I4(sim_curr_data[1]),
        .O(p_0_in1_in__0[1]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[20]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[20]),
        .I3(sim_wr),
        .I4(sim_curr_data[20]),
        .O(p_0_in1_in__0[20]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[21]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[21]),
        .I3(sim_wr),
        .I4(sim_curr_data[21]),
        .O(p_0_in1_in__0[21]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[22]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[22]),
        .I3(sim_wr),
        .I4(sim_curr_data[22]),
        .O(p_0_in1_in__0[22]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[23]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[23]),
        .I3(sim_wr),
        .I4(sim_curr_data[23]),
        .O(p_0_in1_in__0[23]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[24]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[24]),
        .I3(sim_wr),
        .I4(sim_curr_data[24]),
        .O(p_0_in1_in__0[24]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[25]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[25]),
        .I3(sim_wr),
        .I4(sim_curr_data[25]),
        .O(p_0_in1_in__0[25]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[26]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[26]),
        .I3(sim_wr),
        .I4(sim_curr_data[26]),
        .O(p_0_in1_in__0[26]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[27]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[27]),
        .I3(sim_wr),
        .I4(sim_curr_data[27]),
        .O(p_0_in1_in__0[27]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[28]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[28]),
        .I3(sim_wr),
        .I4(sim_curr_data[28]),
        .O(p_0_in1_in__0[28]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[29]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[29]),
        .I3(sim_wr),
        .I4(sim_curr_data[29]),
        .O(p_0_in1_in__0[29]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[2]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[2]),
        .I3(sim_wr),
        .I4(sim_curr_data[2]),
        .O(p_0_in1_in__0[2]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[30]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[30]),
        .I3(sim_wr),
        .I4(sim_curr_data[30]),
        .O(p_0_in1_in__0[30]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[31]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[31]),
        .I3(sim_wr),
        .I4(sim_curr_data[31]),
        .O(p_0_in1_in__0[31]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[32]_i_1 
       (.I0(sim_data[0]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[32]),
        .O(p_0_in1_in__0[32]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[33]_i_1 
       (.I0(sim_data[1]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[33]),
        .O(p_0_in1_in__0[33]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[34]_i_1 
       (.I0(sim_data[2]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[34]),
        .O(p_0_in1_in__0[34]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[35]_i_1 
       (.I0(sim_data[3]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[35]),
        .O(p_0_in1_in__0[35]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[36]_i_1 
       (.I0(sim_data[4]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[36]),
        .O(p_0_in1_in__0[36]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[37]_i_1 
       (.I0(sim_data[5]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[37]),
        .O(p_0_in1_in__0[37]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[38]_i_1 
       (.I0(sim_data[6]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[38]),
        .O(p_0_in1_in__0[38]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[39]_i_1 
       (.I0(sim_data[7]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[39]),
        .O(p_0_in1_in__0[39]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[3]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[3]),
        .I3(sim_wr),
        .I4(sim_curr_data[3]),
        .O(p_0_in1_in__0[3]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[40]_i_1 
       (.I0(sim_data[8]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[40]),
        .O(p_0_in1_in__0[40]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[41]_i_1 
       (.I0(sim_data[9]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[41]),
        .O(p_0_in1_in__0[41]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[42]_i_1 
       (.I0(sim_data[10]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[42]),
        .O(p_0_in1_in__0[42]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[43]_i_1 
       (.I0(sim_data[11]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[43]),
        .O(p_0_in1_in__0[43]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[44]_i_1 
       (.I0(sim_data[12]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[44]),
        .O(p_0_in1_in__0[44]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[45]_i_1 
       (.I0(sim_data[13]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[45]),
        .O(p_0_in1_in__0[45]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[46]_i_1 
       (.I0(sim_data[14]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[46]),
        .O(p_0_in1_in__0[46]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[47]_i_1 
       (.I0(sim_data[15]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[47]),
        .O(p_0_in1_in__0[47]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[48]_i_1 
       (.I0(sim_data[16]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[48]),
        .O(p_0_in1_in__0[48]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[49]_i_1 
       (.I0(sim_data[17]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[49]),
        .O(p_0_in1_in__0[49]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[4]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[4]),
        .I3(sim_wr),
        .I4(sim_curr_data[4]),
        .O(p_0_in1_in__0[4]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[50]_i_1 
       (.I0(sim_data[18]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[50]),
        .O(p_0_in1_in__0[50]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[51]_i_1 
       (.I0(sim_data[19]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[51]),
        .O(p_0_in1_in__0[51]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[52]_i_1 
       (.I0(sim_data[20]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[52]),
        .O(p_0_in1_in__0[52]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[53]_i_1 
       (.I0(sim_data[21]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[53]),
        .O(p_0_in1_in__0[53]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[54]_i_1 
       (.I0(sim_data[22]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[54]),
        .O(p_0_in1_in__0[54]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[55]_i_1 
       (.I0(sim_data[23]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[55]),
        .O(p_0_in1_in__0[55]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[56]_i_1 
       (.I0(sim_data[24]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[56]),
        .O(p_0_in1_in__0[56]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[57]_i_1 
       (.I0(sim_data[25]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[57]),
        .O(p_0_in1_in__0[57]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[58]_i_1 
       (.I0(sim_data[26]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[58]),
        .O(p_0_in1_in__0[58]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[59]_i_1 
       (.I0(sim_data[27]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[59]),
        .O(p_0_in1_in__0[59]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[5]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[5]),
        .I3(sim_wr),
        .I4(sim_curr_data[5]),
        .O(p_0_in1_in__0[5]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[60]_i_1 
       (.I0(sim_data[28]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[60]),
        .O(p_0_in1_in__0[60]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[61]_i_1 
       (.I0(sim_data[29]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[61]),
        .O(p_0_in1_in__0[61]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[62]_i_1 
       (.I0(sim_data[30]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[62]),
        .O(p_0_in1_in__0[62]));
  LUT5 #(
    .INIT(32'hF8FF0800)) 
    \deci_low.sim_curr_data[63]_i_1 
       (.I0(sim_data[31]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_curr_data[63]),
        .O(p_0_in1_in__0[63]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[64]_i_1 
       (.I0(sim_data[0]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[64]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[64]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[65]_i_1 
       (.I0(sim_data[1]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[65]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[65]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[66]_i_1 
       (.I0(sim_data[2]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[66]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[66]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[67]_i_1 
       (.I0(sim_data[3]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[67]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[67]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[68]_i_1 
       (.I0(sim_data[4]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[68]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[68]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[69]_i_1 
       (.I0(sim_data[5]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[69]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[69]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[6]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[6]),
        .I3(sim_wr),
        .I4(sim_curr_data[6]),
        .O(p_0_in1_in__0[6]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[70]_i_1 
       (.I0(sim_data[6]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[70]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[70]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[71]_i_1 
       (.I0(sim_data[7]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[71]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[71]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[72]_i_1 
       (.I0(sim_data[8]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[72]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[72]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[73]_i_1 
       (.I0(sim_data[9]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[73]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[73]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[74]_i_1 
       (.I0(sim_data[10]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[74]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[74]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[75]_i_1 
       (.I0(sim_data[11]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[75]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[75]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[76]_i_1 
       (.I0(sim_data[12]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[76]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[76]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[77]_i_1 
       (.I0(sim_data[13]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[77]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[77]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[78]_i_1 
       (.I0(sim_data[14]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[78]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[78]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[79]_i_1 
       (.I0(sim_data[15]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[79]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[79]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[7]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[7]),
        .I3(sim_wr),
        .I4(sim_curr_data[7]),
        .O(p_0_in1_in__0[7]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[80]_i_1 
       (.I0(sim_data[16]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[80]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[80]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[81]_i_1 
       (.I0(sim_data[17]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[81]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[81]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[82]_i_1 
       (.I0(sim_data[18]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[82]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[82]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[83]_i_1 
       (.I0(sim_data[19]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[83]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[83]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[84]_i_1 
       (.I0(sim_data[20]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[84]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[84]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[85]_i_1 
       (.I0(sim_data[21]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[85]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[85]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[86]_i_1 
       (.I0(sim_data[22]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[86]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[86]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[87]_i_1 
       (.I0(sim_data[23]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[87]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[87]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[88]_i_1 
       (.I0(sim_data[24]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[88]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[88]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[89]_i_1 
       (.I0(sim_data[25]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[89]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[89]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[8]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[8]),
        .I3(sim_wr),
        .I4(sim_curr_data[8]),
        .O(p_0_in1_in__0[8]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[90]_i_1 
       (.I0(sim_data[26]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[90]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[90]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[91]_i_1 
       (.I0(sim_data[27]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[91]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[91]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[92]_i_1 
       (.I0(sim_data[28]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[92]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[92]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[93]_i_1 
       (.I0(sim_data[29]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[93]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[93]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[94]_i_1 
       (.I0(sim_data[30]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[94]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[94]));
  LUT5 #(
    .INIT(32'hF808CF00)) 
    \deci_low.sim_curr_data[95]_i_1 
       (.I0(sim_data[31]),
        .I1(sim_wr),
        .I2(sim_count[0]),
        .I3(sim_curr_data[95]),
        .I4(sim_count[1]),
        .O(p_0_in1_in__0[95]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[96]_i_1 
       (.I0(sim_data[0]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[96]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[96]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[97]_i_1 
       (.I0(sim_data[1]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[97]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[97]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[98]_i_1 
       (.I0(sim_data[2]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[98]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[98]));
  LUT5 #(
    .INIT(32'h8C80CF00)) 
    \deci_low.sim_curr_data[99]_i_1 
       (.I0(sim_data[3]),
        .I1(sim_wr),
        .I2(sim_count[1]),
        .I3(sim_curr_data[99]),
        .I4(sim_count[0]),
        .O(p_0_in1_in__0[99]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \deci_low.sim_curr_data[9]_i_1 
       (.I0(sim_count[0]),
        .I1(sim_count[1]),
        .I2(sim_data[9]),
        .I3(sim_wr),
        .I4(sim_curr_data[9]),
        .O(p_0_in1_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[0] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[0]),
        .Q(sim_curr_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[100] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[100]),
        .Q(sim_curr_data[100]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[101] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[101]),
        .Q(sim_curr_data[101]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[102] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[102]),
        .Q(sim_curr_data[102]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[103] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[103]),
        .Q(sim_curr_data[103]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[104] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[104]),
        .Q(sim_curr_data[104]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[105] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[105]),
        .Q(sim_curr_data[105]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[106] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[106]),
        .Q(sim_curr_data[106]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[107] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[107]),
        .Q(sim_curr_data[107]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[108] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[108]),
        .Q(sim_curr_data[108]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[109] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[109]),
        .Q(sim_curr_data[109]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[10] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[10]),
        .Q(sim_curr_data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[110] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[110]),
        .Q(sim_curr_data[110]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[111] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[111]),
        .Q(sim_curr_data[111]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[112] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[112]),
        .Q(sim_curr_data[112]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[113] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[113]),
        .Q(sim_curr_data[113]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[114] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[114]),
        .Q(sim_curr_data[114]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[115] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[115]),
        .Q(sim_curr_data[115]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[116] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[116]),
        .Q(sim_curr_data[116]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[117] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[117]),
        .Q(sim_curr_data[117]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[118] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[118]),
        .Q(sim_curr_data[118]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[119] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[119]),
        .Q(sim_curr_data[119]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[11] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[11]),
        .Q(sim_curr_data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[120] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[120]),
        .Q(sim_curr_data[120]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[121] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[121]),
        .Q(sim_curr_data[121]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[122] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[122]),
        .Q(sim_curr_data[122]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[123] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[123]),
        .Q(sim_curr_data[123]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[124] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[124]),
        .Q(sim_curr_data[124]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[125] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[125]),
        .Q(sim_curr_data[125]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[126] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[126]),
        .Q(sim_curr_data[126]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[127] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[127]),
        .Q(sim_curr_data[127]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[12] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[12]),
        .Q(sim_curr_data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[13] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[13]),
        .Q(sim_curr_data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[14] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[14]),
        .Q(sim_curr_data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[15] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[15]),
        .Q(sim_curr_data[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[16] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[16]),
        .Q(sim_curr_data[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[17] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[17]),
        .Q(sim_curr_data[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[18] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[18]),
        .Q(sim_curr_data[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[19] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[19]),
        .Q(sim_curr_data[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[1] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[1]),
        .Q(sim_curr_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[20] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[20]),
        .Q(sim_curr_data[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[21] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[21]),
        .Q(sim_curr_data[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[22] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[22]),
        .Q(sim_curr_data[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[23] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[23]),
        .Q(sim_curr_data[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[24] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[24]),
        .Q(sim_curr_data[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[25] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[25]),
        .Q(sim_curr_data[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[26] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[26]),
        .Q(sim_curr_data[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[27] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[27]),
        .Q(sim_curr_data[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[28] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[28]),
        .Q(sim_curr_data[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[29] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[29]),
        .Q(sim_curr_data[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[2] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[2]),
        .Q(sim_curr_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[30] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[30]),
        .Q(sim_curr_data[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[31] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[31]),
        .Q(sim_curr_data[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[32] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[32]),
        .Q(sim_curr_data[32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[33] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[33]),
        .Q(sim_curr_data[33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[34] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[34]),
        .Q(sim_curr_data[34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[35] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[35]),
        .Q(sim_curr_data[35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[36] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[36]),
        .Q(sim_curr_data[36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[37] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[37]),
        .Q(sim_curr_data[37]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[38] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[38]),
        .Q(sim_curr_data[38]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[39] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[39]),
        .Q(sim_curr_data[39]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[3] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[3]),
        .Q(sim_curr_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[40] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[40]),
        .Q(sim_curr_data[40]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[41] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[41]),
        .Q(sim_curr_data[41]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[42] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[42]),
        .Q(sim_curr_data[42]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[43] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[43]),
        .Q(sim_curr_data[43]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[44] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[44]),
        .Q(sim_curr_data[44]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[45] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[45]),
        .Q(sim_curr_data[45]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[46] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[46]),
        .Q(sim_curr_data[46]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[47] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[47]),
        .Q(sim_curr_data[47]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[48] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[48]),
        .Q(sim_curr_data[48]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[49] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[49]),
        .Q(sim_curr_data[49]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[4] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[4]),
        .Q(sim_curr_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[50] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[50]),
        .Q(sim_curr_data[50]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[51] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[51]),
        .Q(sim_curr_data[51]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[52] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[52]),
        .Q(sim_curr_data[52]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[53] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[53]),
        .Q(sim_curr_data[53]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[54] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[54]),
        .Q(sim_curr_data[54]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[55] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[55]),
        .Q(sim_curr_data[55]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[56] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[56]),
        .Q(sim_curr_data[56]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[57] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[57]),
        .Q(sim_curr_data[57]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[58] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[58]),
        .Q(sim_curr_data[58]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[59] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[59]),
        .Q(sim_curr_data[59]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[5] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[5]),
        .Q(sim_curr_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[60] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[60]),
        .Q(sim_curr_data[60]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[61] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[61]),
        .Q(sim_curr_data[61]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[62] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[62]),
        .Q(sim_curr_data[62]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[63] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[63]),
        .Q(sim_curr_data[63]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[64] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[64]),
        .Q(sim_curr_data[64]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[65] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[65]),
        .Q(sim_curr_data[65]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[66] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[66]),
        .Q(sim_curr_data[66]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[67] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[67]),
        .Q(sim_curr_data[67]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[68] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[68]),
        .Q(sim_curr_data[68]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[69] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[69]),
        .Q(sim_curr_data[69]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[6] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[6]),
        .Q(sim_curr_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[70] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[70]),
        .Q(sim_curr_data[70]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[71] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[71]),
        .Q(sim_curr_data[71]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[72] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[72]),
        .Q(sim_curr_data[72]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[73] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[73]),
        .Q(sim_curr_data[73]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[74] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[74]),
        .Q(sim_curr_data[74]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[75] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[75]),
        .Q(sim_curr_data[75]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[76] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[76]),
        .Q(sim_curr_data[76]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[77] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[77]),
        .Q(sim_curr_data[77]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[78] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[78]),
        .Q(sim_curr_data[78]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[79] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[79]),
        .Q(sim_curr_data[79]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[7] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[7]),
        .Q(sim_curr_data[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[80] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[80]),
        .Q(sim_curr_data[80]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[81] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[81]),
        .Q(sim_curr_data[81]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[82] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[82]),
        .Q(sim_curr_data[82]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[83] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[83]),
        .Q(sim_curr_data[83]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[84] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[84]),
        .Q(sim_curr_data[84]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[85] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[85]),
        .Q(sim_curr_data[85]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[86] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[86]),
        .Q(sim_curr_data[86]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[87] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[87]),
        .Q(sim_curr_data[87]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[88] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[88]),
        .Q(sim_curr_data[88]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[89] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[89]),
        .Q(sim_curr_data[89]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[8] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[8]),
        .Q(sim_curr_data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[90] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[90]),
        .Q(sim_curr_data[90]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[91] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[91]),
        .Q(sim_curr_data[91]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[92] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[92]),
        .Q(sim_curr_data[92]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[93] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[93]),
        .Q(sim_curr_data[93]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[94] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[94]),
        .Q(sim_curr_data[94]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[95] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[95]),
        .Q(sim_curr_data[95]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[96] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[96]),
        .Q(sim_curr_data[96]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[97] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[97]),
        .Q(sim_curr_data[97]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[98] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[98]),
        .Q(sim_curr_data[98]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[99] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[99]),
        .Q(sim_curr_data[99]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_curr_data_reg[9] 
       (.C(sim_clk),
        .CE(sim_resetn),
        .D(p_0_in1_in__0[9]),
        .Q(sim_curr_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC440)) 
    \deci_low.sim_curr_wr_i_1 
       (.I0(sim_wr),
        .I1(sim_resetn),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .O(\deci_low.sim_curr_wr_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_curr_wr_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_curr_wr_i_1_n_0 ),
        .Q(sim_curr_wr),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[0] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[0]),
        .Q(sim_in_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[100] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[100]),
        .Q(sim_in_data[100]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[101] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[101]),
        .Q(sim_in_data[101]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[102] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[102]),
        .Q(sim_in_data[102]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[103] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[103]),
        .Q(sim_in_data[103]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[104] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[104]),
        .Q(sim_in_data[104]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[105] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[105]),
        .Q(sim_in_data[105]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[106] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[106]),
        .Q(sim_in_data[106]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[107] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[107]),
        .Q(sim_in_data[107]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[108] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[108]),
        .Q(sim_in_data[108]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[109] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[109]),
        .Q(sim_in_data[109]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[10] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[10]),
        .Q(sim_in_data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[110] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[110]),
        .Q(sim_in_data[110]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[111] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[111]),
        .Q(sim_in_data[111]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[112] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[112]),
        .Q(sim_in_data[112]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[113] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[113]),
        .Q(sim_in_data[113]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[114] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[114]),
        .Q(sim_in_data[114]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[115] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[115]),
        .Q(sim_in_data[115]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[116] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[116]),
        .Q(sim_in_data[116]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[117] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[117]),
        .Q(sim_in_data[117]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[118] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[118]),
        .Q(sim_in_data[118]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[119] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[119]),
        .Q(sim_in_data[119]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[11] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[11]),
        .Q(sim_in_data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[120] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[120]),
        .Q(sim_in_data[120]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[121] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[121]),
        .Q(sim_in_data[121]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[122] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[122]),
        .Q(sim_in_data[122]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[123] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[123]),
        .Q(sim_in_data[123]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[124] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[124]),
        .Q(sim_in_data[124]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[125] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[125]),
        .Q(sim_in_data[125]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[126] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[126]),
        .Q(sim_in_data[126]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[127] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[127]),
        .Q(sim_in_data[127]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[12] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[12]),
        .Q(sim_in_data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[13] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[13]),
        .Q(sim_in_data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[14] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[14]),
        .Q(sim_in_data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[15] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[15]),
        .Q(sim_in_data[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[16] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[16]),
        .Q(sim_in_data[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[17] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[17]),
        .Q(sim_in_data[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[18] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[18]),
        .Q(sim_in_data[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[19] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[19]),
        .Q(sim_in_data[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[1] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[1]),
        .Q(sim_in_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[20] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[20]),
        .Q(sim_in_data[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[21] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[21]),
        .Q(sim_in_data[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[22] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[22]),
        .Q(sim_in_data[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[23] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[23]),
        .Q(sim_in_data[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[24] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[24]),
        .Q(sim_in_data[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[25] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[25]),
        .Q(sim_in_data[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[26] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[26]),
        .Q(sim_in_data[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[27] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[27]),
        .Q(sim_in_data[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[28] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[28]),
        .Q(sim_in_data[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[29] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[29]),
        .Q(sim_in_data[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[2] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[2]),
        .Q(sim_in_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[30] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[30]),
        .Q(sim_in_data[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[31] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[31]),
        .Q(sim_in_data[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[32] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[32]),
        .Q(sim_in_data[32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[33] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[33]),
        .Q(sim_in_data[33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[34] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[34]),
        .Q(sim_in_data[34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[35] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[35]),
        .Q(sim_in_data[35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[36] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[36]),
        .Q(sim_in_data[36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[37] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[37]),
        .Q(sim_in_data[37]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[38] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[38]),
        .Q(sim_in_data[38]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[39] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[39]),
        .Q(sim_in_data[39]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[3] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[3]),
        .Q(sim_in_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[40] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[40]),
        .Q(sim_in_data[40]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[41] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[41]),
        .Q(sim_in_data[41]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[42] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[42]),
        .Q(sim_in_data[42]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[43] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[43]),
        .Q(sim_in_data[43]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[44] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[44]),
        .Q(sim_in_data[44]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[45] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[45]),
        .Q(sim_in_data[45]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[46] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[46]),
        .Q(sim_in_data[46]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[47] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[47]),
        .Q(sim_in_data[47]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[48] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[48]),
        .Q(sim_in_data[48]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[49] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[49]),
        .Q(sim_in_data[49]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[4] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[4]),
        .Q(sim_in_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[50] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[50]),
        .Q(sim_in_data[50]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[51] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[51]),
        .Q(sim_in_data[51]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[52] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[52]),
        .Q(sim_in_data[52]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[53] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[53]),
        .Q(sim_in_data[53]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[54] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[54]),
        .Q(sim_in_data[54]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[55] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[55]),
        .Q(sim_in_data[55]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[56] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[56]),
        .Q(sim_in_data[56]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[57] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[57]),
        .Q(sim_in_data[57]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[58] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[58]),
        .Q(sim_in_data[58]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[59] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[59]),
        .Q(sim_in_data[59]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[5] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[5]),
        .Q(sim_in_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[60] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[60]),
        .Q(sim_in_data[60]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[61] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[61]),
        .Q(sim_in_data[61]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[62] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[62]),
        .Q(sim_in_data[62]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[63] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[63]),
        .Q(sim_in_data[63]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[64] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[64]),
        .Q(sim_in_data[64]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[65] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[65]),
        .Q(sim_in_data[65]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[66] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[66]),
        .Q(sim_in_data[66]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[67] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[67]),
        .Q(sim_in_data[67]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[68] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[68]),
        .Q(sim_in_data[68]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[69] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[69]),
        .Q(sim_in_data[69]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[6] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[6]),
        .Q(sim_in_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[70] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[70]),
        .Q(sim_in_data[70]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[71] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[71]),
        .Q(sim_in_data[71]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[72] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[72]),
        .Q(sim_in_data[72]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[73] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[73]),
        .Q(sim_in_data[73]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[74] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[74]),
        .Q(sim_in_data[74]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[75] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[75]),
        .Q(sim_in_data[75]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[76] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[76]),
        .Q(sim_in_data[76]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[77] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[77]),
        .Q(sim_in_data[77]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[78] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[78]),
        .Q(sim_in_data[78]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[79] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[79]),
        .Q(sim_in_data[79]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[7] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[7]),
        .Q(sim_in_data[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[80] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[80]),
        .Q(sim_in_data[80]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[81] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[81]),
        .Q(sim_in_data[81]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[82] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[82]),
        .Q(sim_in_data[82]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[83] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[83]),
        .Q(sim_in_data[83]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[84] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[84]),
        .Q(sim_in_data[84]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[85] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[85]),
        .Q(sim_in_data[85]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[86] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[86]),
        .Q(sim_in_data[86]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[87] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[87]),
        .Q(sim_in_data[87]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[88] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[88]),
        .Q(sim_in_data[88]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[89] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[89]),
        .Q(sim_in_data[89]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[8] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[8]),
        .Q(sim_in_data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[90] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[90]),
        .Q(sim_in_data[90]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[91] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[91]),
        .Q(sim_in_data[91]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[92] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[92]),
        .Q(sim_in_data[92]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[93] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[93]),
        .Q(sim_in_data[93]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[94] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[94]),
        .Q(sim_in_data[94]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[95] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[95]),
        .Q(sim_in_data[95]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[96] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[96]),
        .Q(sim_in_data[96]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[97] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[97]),
        .Q(sim_in_data[97]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[98] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[98]),
        .Q(sim_in_data[98]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[99] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[99]),
        .Q(sim_in_data[99]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.sim_in_data_reg[9] 
       (.C(sim_clk),
        .CE(sim_curr_wr),
        .D(sim_curr_data[9]),
        .Q(sim_in_data[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \deci_low.sim_rd_i_1 
       (.I0(\deci_low.mux_active_i_2_n_0 ),
        .I1(sim_active),
        .I2(adc_active),
        .O(\deci_low.sim_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.sim_rd_i_1_n_0 ),
        .Q(sim_rd),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.sim_wr_E_i_1 
       (.I0(sim_curr_wr),
        .O(\deci_low.sim_wr_E_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \deci_low.sim_wr_E_i_2 
       (.I0(sim_channel[0]),
        .I1(sim_channel[1]),
        .O(\deci_low.sim_wr_E_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_wr_E_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_wr_E_i_2_n_0 ),
        .Q(sim_wr_E),
        .R(\deci_low.sim_wr_E_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \deci_low.sim_wr_N_i_1 
       (.I0(sim_channel[0]),
        .I1(sim_channel[1]),
        .O(\deci_low.sim_wr_N_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_wr_N_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_wr_N_i_1_n_0 ),
        .Q(sim_wr_N),
        .R(\deci_low.sim_wr_E_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \deci_low.sim_wr_W_i_1 
       (.I0(sim_channel[1]),
        .I1(sim_channel[0]),
        .O(\deci_low.sim_wr_W_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.sim_wr_W_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_wr_W_i_1_n_0 ),
        .Q(sim_wr_W),
        .R(\deci_low.sim_wr_E_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \deci_low.stop_i_1 
       (.I0(\deci_low.mux_active_i_2_n_0 ),
        .I1(sim_active),
        .I2(adc_active),
        .O(\deci_low.stop_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.stop_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.stop_i_1_n_0 ),
        .Q(stop),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fifo_doa_low,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_doa_low fifo_doa_i
       (.din(doa_in_data),
        .dout(doa_out_data),
        .empty(doa_fifo_empty),
        .full(NLW_fifo_doa_i_full_UNCONNECTED),
        .rd_clk(doa_clk),
        .rd_en(doa_ready),
        .rd_rst_busy(NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_raw_i_i_1_n_0),
        .wr_clk(clk),
        .wr_en(doa_fifo_wr),
        .wr_rst_busy(NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_raw_low,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_raw_low fifo_raw_i
       (.din(raw_in_data),
        .dout(raw_out_data),
        .empty(raw_fifo_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(raw_clk),
        .rd_en(raw_ready),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_raw_i_i_1_n_0),
        .wr_clk(clk),
        .wr_en(raw_fifo_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    fifo_raw_i_i_1
       (.I0(resetn),
        .O(fifo_raw_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fifo_sim,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_sim fifo_sim_E_i
       (.din(sim_in_data),
        .dout({sim_E7,sim_out_E[113:112],sim_E6,sim_out_E[97:96],sim_E5,sim_out_E[81:80],sim_E4,sim_out_E[65:64],sim_E3,sim_out_E[49:48],sim_E2,sim_out_E[33:32],sim_E1,sim_out_E[17:16],sim_E0,sim_out_E[1:0]}),
        .empty(sim_empty_E),
        .full(NLW_fifo_sim_E_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(sim_rd),
        .rd_rst_busy(NLW_fifo_sim_E_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_sim_N_i_i_1_n_0),
        .wr_clk(sim_clk),
        .wr_en(sim_wr_E),
        .wr_rst_busy(NLW_fifo_sim_E_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_sim,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_sim fifo_sim_N_i
       (.din(sim_in_data),
        .dout({sim_N7,sim_out_N[113:112],sim_N6,sim_out_N[97:96],sim_N5,sim_out_N[81:80],sim_N4,sim_out_N[65:64],sim_N3,sim_out_N[49:48],sim_N2,sim_out_N[33:32],sim_N1,sim_out_N[17:16],sim_N0,sim_out_N[1:0]}),
        .empty(sim_empty_N),
        .full(NLW_fifo_sim_N_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(sim_rd),
        .rd_rst_busy(NLW_fifo_sim_N_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_sim_N_i_i_1_n_0),
        .wr_clk(sim_clk),
        .wr_en(sim_wr_N),
        .wr_rst_busy(NLW_fifo_sim_N_i_wr_rst_busy_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_sim_N_i_i_1
       (.I0(sim_resetn),
        .O(fifo_sim_N_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fifo_sim,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_sim_HD1 fifo_sim_W_i
       (.din(sim_in_data),
        .dout({sim_W7,sim_out_W[113:112],sim_W6,sim_out_W[97:96],sim_W5,sim_out_W[81:80],sim_W4,sim_out_W[65:64],sim_W3,sim_out_W[49:48],sim_W2,sim_out_W[33:32],sim_W1,sim_out_W[17:16],sim_W0,sim_out_W[1:0]}),
        .empty(sim_empty_W),
        .full(NLW_fifo_sim_W_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(sim_rd),
        .rd_rst_busy(NLW_fifo_sim_W_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_sim_N_i_i_1_n_0),
        .wr_clk(sim_clk),
        .wr_en(sim_wr_W),
        .wr_rst_busy(NLW_fifo_sim_W_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low fir_E_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED[31],dE,NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_E),
        .s_axis_data_tdata(mux_E),
        .s_axis_data_tready(NLW_fir_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low fir_N_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED[31],dN,NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_N),
        .s_axis_data_tdata(mux_N),
        .s_axis_data_tready(NLW_fir_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low_HD2 fir_W_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED[31],dW,NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_W),
        .s_axis_data_tdata(mux_W),
        .s_axis_data_tready(NLW_fir_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_raw_deci fir_deci_E_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED[127],fir_raw_E,NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_raw_E),
        .s_axis_data_tdata(mux_E),
        .s_axis_data_tready(NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_raw_deci fir_deci_N_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED[127],fir_raw_N,NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_raw_N),
        .s_axis_data_tdata(mux_N),
        .s_axis_data_tready(NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_raw_deci_HD3 fir_deci_W_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED[127],fir_raw_W,NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_raw_W),
        .s_axis_data_tdata(mux_W),
        .s_axis_data_tready(NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(active_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(active_2));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_deci_low_0_0_ila_2 ila_2_i
       (.clk(clk),
        .probe0(adc_active),
        .probe1(sim_active),
        .probe10(sim_N2),
        .probe11(sim_N3),
        .probe12(sim_N4),
        .probe13(sim_N5),
        .probe14(sim_N6),
        .probe15(sim_N7),
        .probe16(sim_E0),
        .probe17(sim_E1),
        .probe18(sim_E2),
        .probe19(sim_E3),
        .probe2(sim_empty_N),
        .probe20(sim_E4),
        .probe21(sim_E5),
        .probe22(sim_E6),
        .probe23(sim_E7),
        .probe24(sim_W0),
        .probe25(sim_W1),
        .probe26(sim_W2),
        .probe27(sim_W3),
        .probe28(sim_W4),
        .probe29(sim_W5),
        .probe3(sim_empty_E),
        .probe30(sim_W6),
        .probe31(sim_W7),
        .probe4(sim_empty_W),
        .probe5(sim_rd),
        .probe6(stop),
        .probe7(mux_active),
        .probe8(sim_N0),
        .probe9(sim_N1));
  (* CHECK_LICENSE_TYPE = "ila_5,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_deci_low_0_0_ila_5 ila_5_i
       (.clk(sim_clk),
        .probe0(sim_resetn),
        .probe1(sim_data),
        .probe2(sim_channel),
        .probe3(sim_wr_N),
        .probe4(sim_wr_E),
        .probe5(sim_wr_W),
        .probe6(sim_in_data),
        .probe7(sim_count),
        .probe8(sim_curr_wr),
        .probe9(sim_curr_data));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_doa_low,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_doa_low" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_low_0_0_fifo_doa_low
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [69:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [69:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_raw_low,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_low" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_low_0_0_fifo_raw_low
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [195:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [195:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_sim,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_sim" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_low_0_0_fifo_sim
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [127:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [127:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_sim,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_sim" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_low_0_0_fifo_sim_HD1
   (empty,
    full,
    rd_clk,
    rd_en,
    rd_rst_busy,
    rst,
    wr_clk,
    wr_en,
    wr_rst_busy,
    din,
    dout);
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  output rd_rst_busy;
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  output wr_rst_busy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [127:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [127:0]dout;


endmodule

(* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_deci_low" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_low_0_0_fir_deci_low
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [127:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_deci_low" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_low_0_0_fir_deci_low_HD2
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [127:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_raw_deci" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_low_0_0_fir_raw_deci
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [127:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [127:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_raw_deci" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_low_0_0_fir_raw_deci_HD3
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [127:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [127:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_deci_low_0_0_ila_2
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe17,
    probe18,
    probe19,
    probe20,
    probe21,
    probe22,
    probe23,
    probe24,
    probe25,
    probe26,
    probe27,
    probe28,
    probe29,
    probe30,
    probe31);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [13:0]probe8;
  input [13:0]probe9;
  input [13:0]probe10;
  input [13:0]probe11;
  input [13:0]probe12;
  input [13:0]probe13;
  input [13:0]probe14;
  input [13:0]probe15;
  input [13:0]probe16;
  input [13:0]probe17;
  input [13:0]probe18;
  input [13:0]probe19;
  input [13:0]probe20;
  input [13:0]probe21;
  input [13:0]probe22;
  input [13:0]probe23;
  input [13:0]probe24;
  input [13:0]probe25;
  input [13:0]probe26;
  input [13:0]probe27;
  input [13:0]probe28;
  input [13:0]probe29;
  input [13:0]probe30;
  input [13:0]probe31;


endmodule

(* CHECK_LICENSE_TYPE = "ila_5,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_5" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_deci_low_0_0_ila_5
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [1:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [127:0]probe6;
  input [1:0]probe7;
  input [0:0]probe8;
  input [127:0]probe9;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
