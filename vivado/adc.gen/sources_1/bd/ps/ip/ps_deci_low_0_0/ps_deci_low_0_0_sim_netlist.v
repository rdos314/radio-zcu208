// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar 15 13:12:57 2026
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
    sim_start,
    adc_active,
    sim_active,
    sim_clk,
    sim_resetn,
    sim_wr,
    sim_channel,
    sim_data,
    raw_wr,
    raw_N,
    raw_E,
    raw_W,
    freq_wr,
    freq_N,
    freq_E,
    freq_W);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sim_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_clk, ASSOCIATED_RESET sim_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input sim_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sim_resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sim_resetn;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  output raw_wr;
  output [127:0]raw_N;
  output [127:0]raw_E;
  output [127:0]raw_W;
  output freq_wr;
  output [15:0]freq_N;
  output [15:0]freq_E;
  output [15:0]freq_W;

  wire adc_active;
  wire clk;
  wire [127:0]data_E;
  wire [127:0]data_N;
  wire [127:0]data_W;
  wire [15:0]freq_E;
  wire [15:0]freq_N;
  wire [15:0]freq_W;
  wire freq_wr;
  wire [127:0]raw_E;
  wire [127:0]raw_N;
  wire [127:0]raw_W;
  wire raw_wr;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;
  wire sim_active;
  wire [1:0]sim_channel;
  wire sim_clk;
  wire [31:0]sim_data;
  wire sim_resetn;
  wire sim_start;
  wire sim_wr;

  ps_deci_low_0_0_deci_low inst
       (.adc_active(adc_active),
        .clk(clk),
        .data_E(data_E),
        .data_N(data_N),
        .data_W(data_W),
        .freq_E(freq_E),
        .freq_N(freq_N),
        .freq_W(freq_W),
        .freq_wr(freq_wr),
        .raw_E(raw_E),
        .raw_N(raw_N),
        .raw_W(raw_W),
        .raw_wr(raw_wr),
        .ready_E(ready_E),
        .ready_N(ready_N),
        .ready_W(ready_W),
        .resetn(resetn),
        .sim_active(sim_active),
        .sim_channel(sim_channel),
        .sim_clk(sim_clk),
        .sim_data(sim_data),
        .sim_resetn(sim_resetn),
        .sim_start(sim_start),
        .sim_wr(sim_wr));
endmodule

(* ORIG_REF_NAME = "deci_low" *) 
module ps_deci_low_0_0_deci_low
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W,
    sim_start,
    adc_active,
    sim_active,
    sim_clk,
    sim_resetn,
    sim_wr,
    sim_channel,
    sim_data,
    raw_wr,
    raw_N,
    raw_E,
    raw_W,
    freq_wr,
    freq_N,
    freq_E,
    freq_W);
  input clk;
  input resetn;
  input [127:0]data_N;
  input ready_N;
  input [127:0]data_E;
  input ready_E;
  input [127:0]data_W;
  input ready_W;
  input sim_start;
  input adc_active;
  output sim_active;
  input sim_clk;
  input sim_resetn;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  output raw_wr;
  output [127:0]raw_N;
  output [127:0]raw_E;
  output [127:0]raw_W;
  output freq_wr;
  output [15:0]freq_N;
  output [15:0]freq_E;
  output [15:0]freq_W;

  wire adc_active;
  wire clk;
  wire [127:0]data_E;
  wire [127:0]data_N;
  wire [127:0]data_W;
  wire \deci_low.fir_resetn_i_1_n_0 ;
  wire \deci_low.freq_N[15]_i_1_n_0 ;
  wire \deci_low.freq_wr_delay[0]_i_1_n_0 ;
  wire \deci_low.freq_wr_delay[1]_i_1_n_0 ;
  wire \deci_low.freq_wr_delay[2]_i_1_n_0 ;
  wire \deci_low.freq_wr_delay[3]_i_1_n_0 ;
  wire \deci_low.freq_wr_delay[3]_i_2_n_0 ;
  wire [3:0]\deci_low.freq_wr_delay_reg ;
  wire \deci_low.freq_wr_i_1_n_0 ;
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
  wire \deci_low.reset_active[0]_i_1_n_0 ;
  wire \deci_low.reset_active[1]_i_1_n_0 ;
  wire \deci_low.reset_active[2]_i_1_n_0 ;
  wire \deci_low.reset_active[2]_i_2_n_0 ;
  wire \deci_low.reset_active[2]_i_3_n_0 ;
  wire \deci_low.reset_delay[1]_i_2_n_0 ;
  wire \deci_low.reset_delay[1]_i_3_n_0 ;
  wire \deci_low.reset_delay[2]_i_1_n_0 ;
  wire \deci_low.sim_active_1_i_1_n_0 ;
  wire \deci_low.sim_active_i_1_n_0 ;
  wire \deci_low.sim_count[1]_i_1_n_0 ;
  wire \deci_low.sim_curr_data[127]_i_1_n_0 ;
  wire \deci_low.sim_curr_data[63]_i_1_n_0 ;
  wire \deci_low.sim_curr_data[95]_i_1_n_0 ;
  wire \deci_low.sim_curr_data_reg_n_0_[0] ;
  wire \deci_low.sim_curr_data_reg_n_0_[100] ;
  wire \deci_low.sim_curr_data_reg_n_0_[101] ;
  wire \deci_low.sim_curr_data_reg_n_0_[102] ;
  wire \deci_low.sim_curr_data_reg_n_0_[103] ;
  wire \deci_low.sim_curr_data_reg_n_0_[104] ;
  wire \deci_low.sim_curr_data_reg_n_0_[105] ;
  wire \deci_low.sim_curr_data_reg_n_0_[106] ;
  wire \deci_low.sim_curr_data_reg_n_0_[107] ;
  wire \deci_low.sim_curr_data_reg_n_0_[108] ;
  wire \deci_low.sim_curr_data_reg_n_0_[109] ;
  wire \deci_low.sim_curr_data_reg_n_0_[10] ;
  wire \deci_low.sim_curr_data_reg_n_0_[110] ;
  wire \deci_low.sim_curr_data_reg_n_0_[111] ;
  wire \deci_low.sim_curr_data_reg_n_0_[112] ;
  wire \deci_low.sim_curr_data_reg_n_0_[113] ;
  wire \deci_low.sim_curr_data_reg_n_0_[114] ;
  wire \deci_low.sim_curr_data_reg_n_0_[115] ;
  wire \deci_low.sim_curr_data_reg_n_0_[116] ;
  wire \deci_low.sim_curr_data_reg_n_0_[117] ;
  wire \deci_low.sim_curr_data_reg_n_0_[118] ;
  wire \deci_low.sim_curr_data_reg_n_0_[119] ;
  wire \deci_low.sim_curr_data_reg_n_0_[11] ;
  wire \deci_low.sim_curr_data_reg_n_0_[120] ;
  wire \deci_low.sim_curr_data_reg_n_0_[121] ;
  wire \deci_low.sim_curr_data_reg_n_0_[122] ;
  wire \deci_low.sim_curr_data_reg_n_0_[123] ;
  wire \deci_low.sim_curr_data_reg_n_0_[124] ;
  wire \deci_low.sim_curr_data_reg_n_0_[125] ;
  wire \deci_low.sim_curr_data_reg_n_0_[126] ;
  wire \deci_low.sim_curr_data_reg_n_0_[127] ;
  wire \deci_low.sim_curr_data_reg_n_0_[12] ;
  wire \deci_low.sim_curr_data_reg_n_0_[13] ;
  wire \deci_low.sim_curr_data_reg_n_0_[14] ;
  wire \deci_low.sim_curr_data_reg_n_0_[15] ;
  wire \deci_low.sim_curr_data_reg_n_0_[16] ;
  wire \deci_low.sim_curr_data_reg_n_0_[17] ;
  wire \deci_low.sim_curr_data_reg_n_0_[18] ;
  wire \deci_low.sim_curr_data_reg_n_0_[19] ;
  wire \deci_low.sim_curr_data_reg_n_0_[1] ;
  wire \deci_low.sim_curr_data_reg_n_0_[20] ;
  wire \deci_low.sim_curr_data_reg_n_0_[21] ;
  wire \deci_low.sim_curr_data_reg_n_0_[22] ;
  wire \deci_low.sim_curr_data_reg_n_0_[23] ;
  wire \deci_low.sim_curr_data_reg_n_0_[24] ;
  wire \deci_low.sim_curr_data_reg_n_0_[25] ;
  wire \deci_low.sim_curr_data_reg_n_0_[26] ;
  wire \deci_low.sim_curr_data_reg_n_0_[27] ;
  wire \deci_low.sim_curr_data_reg_n_0_[28] ;
  wire \deci_low.sim_curr_data_reg_n_0_[29] ;
  wire \deci_low.sim_curr_data_reg_n_0_[2] ;
  wire \deci_low.sim_curr_data_reg_n_0_[30] ;
  wire \deci_low.sim_curr_data_reg_n_0_[31] ;
  wire \deci_low.sim_curr_data_reg_n_0_[32] ;
  wire \deci_low.sim_curr_data_reg_n_0_[33] ;
  wire \deci_low.sim_curr_data_reg_n_0_[34] ;
  wire \deci_low.sim_curr_data_reg_n_0_[35] ;
  wire \deci_low.sim_curr_data_reg_n_0_[36] ;
  wire \deci_low.sim_curr_data_reg_n_0_[37] ;
  wire \deci_low.sim_curr_data_reg_n_0_[38] ;
  wire \deci_low.sim_curr_data_reg_n_0_[39] ;
  wire \deci_low.sim_curr_data_reg_n_0_[3] ;
  wire \deci_low.sim_curr_data_reg_n_0_[40] ;
  wire \deci_low.sim_curr_data_reg_n_0_[41] ;
  wire \deci_low.sim_curr_data_reg_n_0_[42] ;
  wire \deci_low.sim_curr_data_reg_n_0_[43] ;
  wire \deci_low.sim_curr_data_reg_n_0_[44] ;
  wire \deci_low.sim_curr_data_reg_n_0_[45] ;
  wire \deci_low.sim_curr_data_reg_n_0_[46] ;
  wire \deci_low.sim_curr_data_reg_n_0_[47] ;
  wire \deci_low.sim_curr_data_reg_n_0_[48] ;
  wire \deci_low.sim_curr_data_reg_n_0_[49] ;
  wire \deci_low.sim_curr_data_reg_n_0_[4] ;
  wire \deci_low.sim_curr_data_reg_n_0_[50] ;
  wire \deci_low.sim_curr_data_reg_n_0_[51] ;
  wire \deci_low.sim_curr_data_reg_n_0_[52] ;
  wire \deci_low.sim_curr_data_reg_n_0_[53] ;
  wire \deci_low.sim_curr_data_reg_n_0_[54] ;
  wire \deci_low.sim_curr_data_reg_n_0_[55] ;
  wire \deci_low.sim_curr_data_reg_n_0_[56] ;
  wire \deci_low.sim_curr_data_reg_n_0_[57] ;
  wire \deci_low.sim_curr_data_reg_n_0_[58] ;
  wire \deci_low.sim_curr_data_reg_n_0_[59] ;
  wire \deci_low.sim_curr_data_reg_n_0_[5] ;
  wire \deci_low.sim_curr_data_reg_n_0_[60] ;
  wire \deci_low.sim_curr_data_reg_n_0_[61] ;
  wire \deci_low.sim_curr_data_reg_n_0_[62] ;
  wire \deci_low.sim_curr_data_reg_n_0_[63] ;
  wire \deci_low.sim_curr_data_reg_n_0_[64] ;
  wire \deci_low.sim_curr_data_reg_n_0_[65] ;
  wire \deci_low.sim_curr_data_reg_n_0_[66] ;
  wire \deci_low.sim_curr_data_reg_n_0_[67] ;
  wire \deci_low.sim_curr_data_reg_n_0_[68] ;
  wire \deci_low.sim_curr_data_reg_n_0_[69] ;
  wire \deci_low.sim_curr_data_reg_n_0_[6] ;
  wire \deci_low.sim_curr_data_reg_n_0_[70] ;
  wire \deci_low.sim_curr_data_reg_n_0_[71] ;
  wire \deci_low.sim_curr_data_reg_n_0_[72] ;
  wire \deci_low.sim_curr_data_reg_n_0_[73] ;
  wire \deci_low.sim_curr_data_reg_n_0_[74] ;
  wire \deci_low.sim_curr_data_reg_n_0_[75] ;
  wire \deci_low.sim_curr_data_reg_n_0_[76] ;
  wire \deci_low.sim_curr_data_reg_n_0_[77] ;
  wire \deci_low.sim_curr_data_reg_n_0_[78] ;
  wire \deci_low.sim_curr_data_reg_n_0_[79] ;
  wire \deci_low.sim_curr_data_reg_n_0_[7] ;
  wire \deci_low.sim_curr_data_reg_n_0_[80] ;
  wire \deci_low.sim_curr_data_reg_n_0_[81] ;
  wire \deci_low.sim_curr_data_reg_n_0_[82] ;
  wire \deci_low.sim_curr_data_reg_n_0_[83] ;
  wire \deci_low.sim_curr_data_reg_n_0_[84] ;
  wire \deci_low.sim_curr_data_reg_n_0_[85] ;
  wire \deci_low.sim_curr_data_reg_n_0_[86] ;
  wire \deci_low.sim_curr_data_reg_n_0_[87] ;
  wire \deci_low.sim_curr_data_reg_n_0_[88] ;
  wire \deci_low.sim_curr_data_reg_n_0_[89] ;
  wire \deci_low.sim_curr_data_reg_n_0_[8] ;
  wire \deci_low.sim_curr_data_reg_n_0_[90] ;
  wire \deci_low.sim_curr_data_reg_n_0_[91] ;
  wire \deci_low.sim_curr_data_reg_n_0_[92] ;
  wire \deci_low.sim_curr_data_reg_n_0_[93] ;
  wire \deci_low.sim_curr_data_reg_n_0_[94] ;
  wire \deci_low.sim_curr_data_reg_n_0_[95] ;
  wire \deci_low.sim_curr_data_reg_n_0_[96] ;
  wire \deci_low.sim_curr_data_reg_n_0_[97] ;
  wire \deci_low.sim_curr_data_reg_n_0_[98] ;
  wire \deci_low.sim_curr_data_reg_n_0_[99] ;
  wire \deci_low.sim_curr_data_reg_n_0_[9] ;
  wire \deci_low.sim_curr_wr_i_1_n_0 ;
  wire \deci_low.sim_curr_wr_reg_n_0 ;
  wire \deci_low.sim_rd_i_1_n_0 ;
  wire \deci_low.sim_wr_E_i_1_n_0 ;
  wire \deci_low.sim_wr_E_i_2_n_0 ;
  wire \deci_low.sim_wr_N_i_1_n_0 ;
  wire \deci_low.sim_wr_W_i_1_n_0 ;
  wire fifo_sim_N_i_i_1_n_0;
  wire [30:15]fir_freq_E;
  wire [30:15]fir_freq_N;
  wire [30:15]fir_freq_W;
  wire fir_resetn;
  wire [15:0]freq_E;
  wire [15:0]freq_N;
  wire [15:0]freq_W;
  wire freq_wr;
  wire [127:0]mux_E;
  wire [127:0]mux_N;
  wire [127:0]mux_W;
  wire mux_active;
  wire [1:0]p_1_in;
  wire [127:0]raw_E;
  wire [127:0]raw_N;
  wire [127:0]raw_W;
  wire raw_wr;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire [2:0]reset_active;
  wire [2:0]reset_delay;
  wire reset_delay0;
  wire [0:0]reset_delay01_in;
  wire resetn;
  wire sim_active;
  wire sim_active_1;
  wire sim_active_2;
  wire [1:0]sim_channel;
  wire sim_clk;
  wire [1:0]sim_count__0;
  wire [127:31]sim_curr_data;
  wire [31:0]sim_data;
  wire sim_empty_E;
  wire sim_empty_N;
  wire sim_empty_W;
  wire [127:0]sim_in_data;
  wire [127:0]sim_out_E;
  wire [127:0]sim_out_N;
  wire [127:0]sim_out_W;
  wire sim_rd;
  wire sim_resetn;
  wire sim_start;
  wire sim_wr;
  wire sim_wr_E;
  wire sim_wr_N;
  wire sim_wr_W;
  wire NLW_fifo_sim_E_i_full_UNCONNECTED;
  wire NLW_fifo_sim_E_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_E_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_N_i_full_UNCONNECTED;
  wire NLW_fifo_sim_N_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_N_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_W_i_full_UNCONNECTED;
  wire NLW_fifo_sim_W_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_sim_W_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fir_freq_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_E_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_freq_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_N_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_freq_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_W_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_freq_W_i_m_axis_data_tdata_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \deci_low.fir_resetn_i_1 
       (.I0(reset_active[0]),
        .I1(reset_active[2]),
        .I2(reset_active[1]),
        .O(\deci_low.fir_resetn_i_1_n_0 ));
  FDRE \deci_low.fir_resetn_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.fir_resetn_i_1_n_0 ),
        .Q(fir_resetn),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[0] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[15]),
        .Q(freq_E[0]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[10] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[25]),
        .Q(freq_E[10]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[11] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[26]),
        .Q(freq_E[11]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[12] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[27]),
        .Q(freq_E[12]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[13] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[28]),
        .Q(freq_E[13]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[14] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[29]),
        .Q(freq_E[14]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[15] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[30]),
        .Q(freq_E[15]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[1] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[16]),
        .Q(freq_E[1]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[2] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[17]),
        .Q(freq_E[2]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[3] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[18]),
        .Q(freq_E[3]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[4] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[19]),
        .Q(freq_E[4]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[5] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[20]),
        .Q(freq_E[5]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[6] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[21]),
        .Q(freq_E[6]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[7] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[22]),
        .Q(freq_E[7]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[8] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[23]),
        .Q(freq_E[8]),
        .R(1'b0));
  FDRE \deci_low.freq_E_reg[9] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_E[24]),
        .Q(freq_E[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h57555554)) 
    \deci_low.freq_N[15]_i_1 
       (.I0(mux_active),
        .I1(\deci_low.freq_wr_delay_reg [1]),
        .I2(\deci_low.freq_wr_delay_reg [0]),
        .I3(\deci_low.freq_wr_delay_reg [3]),
        .I4(\deci_low.freq_wr_delay_reg [2]),
        .O(\deci_low.freq_N[15]_i_1_n_0 ));
  FDRE \deci_low.freq_N_reg[0] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[15]),
        .Q(freq_N[0]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[10] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[25]),
        .Q(freq_N[10]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[11] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[26]),
        .Q(freq_N[11]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[12] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[27]),
        .Q(freq_N[12]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[13] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[28]),
        .Q(freq_N[13]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[14] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[29]),
        .Q(freq_N[14]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[15] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[30]),
        .Q(freq_N[15]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[1] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[16]),
        .Q(freq_N[1]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[2] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[17]),
        .Q(freq_N[2]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[3] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[18]),
        .Q(freq_N[3]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[4] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[19]),
        .Q(freq_N[4]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[5] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[20]),
        .Q(freq_N[5]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[6] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[21]),
        .Q(freq_N[6]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[7] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[22]),
        .Q(freq_N[7]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[8] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[23]),
        .Q(freq_N[8]),
        .R(1'b0));
  FDRE \deci_low.freq_N_reg[9] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_N[24]),
        .Q(freq_N[9]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[0] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[15]),
        .Q(freq_W[0]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[10] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[25]),
        .Q(freq_W[10]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[11] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[26]),
        .Q(freq_W[11]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[12] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[27]),
        .Q(freq_W[12]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[13] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[28]),
        .Q(freq_W[13]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[14] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[29]),
        .Q(freq_W[14]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[15] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[30]),
        .Q(freq_W[15]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[1] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[16]),
        .Q(freq_W[1]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[2] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[17]),
        .Q(freq_W[2]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[3] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[18]),
        .Q(freq_W[3]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[4] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[19]),
        .Q(freq_W[4]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[5] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[20]),
        .Q(freq_W[5]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[6] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[21]),
        .Q(freq_W[6]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[7] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[22]),
        .Q(freq_W[7]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[8] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[23]),
        .Q(freq_W[8]),
        .R(1'b0));
  FDRE \deci_low.freq_W_reg[9] 
       (.C(clk),
        .CE(\deci_low.freq_N[15]_i_1_n_0 ),
        .D(fir_freq_W[24]),
        .Q(freq_W[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.freq_wr_delay[0]_i_1 
       (.I0(\deci_low.freq_wr_delay_reg [0]),
        .O(\deci_low.freq_wr_delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \deci_low.freq_wr_delay[1]_i_1 
       (.I0(\deci_low.freq_wr_delay_reg [0]),
        .I1(mux_active),
        .I2(\deci_low.freq_wr_delay_reg [1]),
        .O(\deci_low.freq_wr_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \deci_low.freq_wr_delay[2]_i_1 
       (.I0(\deci_low.freq_wr_delay_reg [0]),
        .I1(mux_active),
        .I2(\deci_low.freq_wr_delay_reg [2]),
        .I3(\deci_low.freq_wr_delay_reg [1]),
        .O(\deci_low.freq_wr_delay[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFE)) 
    \deci_low.freq_wr_delay[3]_i_1 
       (.I0(mux_active),
        .I1(\deci_low.freq_wr_delay_reg [1]),
        .I2(\deci_low.freq_wr_delay_reg [0]),
        .I3(\deci_low.freq_wr_delay_reg [3]),
        .I4(\deci_low.freq_wr_delay_reg [2]),
        .O(\deci_low.freq_wr_delay[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \deci_low.freq_wr_delay[3]_i_2 
       (.I0(mux_active),
        .I1(\deci_low.freq_wr_delay_reg [0]),
        .I2(\deci_low.freq_wr_delay_reg [1]),
        .I3(\deci_low.freq_wr_delay_reg [3]),
        .I4(\deci_low.freq_wr_delay_reg [2]),
        .O(\deci_low.freq_wr_delay[3]_i_2_n_0 ));
  FDRE \deci_low.freq_wr_delay_reg[0] 
       (.C(clk),
        .CE(\deci_low.freq_wr_delay[3]_i_1_n_0 ),
        .D(\deci_low.freq_wr_delay[0]_i_1_n_0 ),
        .Q(\deci_low.freq_wr_delay_reg [0]),
        .R(1'b0));
  FDRE \deci_low.freq_wr_delay_reg[1] 
       (.C(clk),
        .CE(\deci_low.freq_wr_delay[3]_i_1_n_0 ),
        .D(\deci_low.freq_wr_delay[1]_i_1_n_0 ),
        .Q(\deci_low.freq_wr_delay_reg [1]),
        .R(1'b0));
  FDRE \deci_low.freq_wr_delay_reg[2] 
       (.C(clk),
        .CE(\deci_low.freq_wr_delay[3]_i_1_n_0 ),
        .D(\deci_low.freq_wr_delay[2]_i_1_n_0 ),
        .Q(\deci_low.freq_wr_delay_reg [2]),
        .R(1'b0));
  FDRE \deci_low.freq_wr_delay_reg[3] 
       (.C(clk),
        .CE(\deci_low.freq_wr_delay[3]_i_1_n_0 ),
        .D(\deci_low.freq_wr_delay[3]_i_2_n_0 ),
        .Q(\deci_low.freq_wr_delay_reg [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAAAAAAFFFFFFFC)) 
    \deci_low.freq_wr_i_1 
       (.I0(freq_wr),
        .I1(\deci_low.freq_wr_delay_reg [0]),
        .I2(\deci_low.freq_wr_delay_reg [1]),
        .I3(\deci_low.freq_wr_delay_reg [3]),
        .I4(\deci_low.freq_wr_delay_reg [2]),
        .I5(mux_active),
        .O(\deci_low.freq_wr_i_1_n_0 ));
  FDRE \deci_low.freq_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.freq_wr_i_1_n_0 ),
        .Q(freq_wr),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[0]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[0]),
        .I3(adc_active),
        .I4(sim_out_E[0]),
        .O(\deci_low.mux_E[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[100]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[100]),
        .I3(adc_active),
        .I4(sim_out_E[100]),
        .O(\deci_low.mux_E[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[101]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[101]),
        .I3(adc_active),
        .I4(sim_out_E[101]),
        .O(\deci_low.mux_E[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[102]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[102]),
        .I3(adc_active),
        .I4(sim_out_E[102]),
        .O(\deci_low.mux_E[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[103]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[103]),
        .I3(adc_active),
        .I4(sim_out_E[103]),
        .O(\deci_low.mux_E[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[104]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[104]),
        .I3(adc_active),
        .I4(sim_out_E[104]),
        .O(\deci_low.mux_E[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[105]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[105]),
        .I3(adc_active),
        .I4(sim_out_E[105]),
        .O(\deci_low.mux_E[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[106]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[106]),
        .I3(adc_active),
        .I4(sim_out_E[106]),
        .O(\deci_low.mux_E[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[107]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[107]),
        .I3(adc_active),
        .I4(sim_out_E[107]),
        .O(\deci_low.mux_E[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[108]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[108]),
        .I3(adc_active),
        .I4(sim_out_E[108]),
        .O(\deci_low.mux_E[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[109]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[109]),
        .I3(adc_active),
        .I4(sim_out_E[109]),
        .O(\deci_low.mux_E[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[10]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[10]),
        .I3(adc_active),
        .I4(sim_out_E[10]),
        .O(\deci_low.mux_E[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[110]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[110]),
        .I3(adc_active),
        .I4(sim_out_E[110]),
        .O(\deci_low.mux_E[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[111]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[111]),
        .I3(adc_active),
        .I4(sim_out_E[111]),
        .O(\deci_low.mux_E[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[112]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[112]),
        .I3(adc_active),
        .I4(sim_out_E[112]),
        .O(\deci_low.mux_E[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[113]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[113]),
        .I3(adc_active),
        .I4(sim_out_E[113]),
        .O(\deci_low.mux_E[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[114]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[114]),
        .I3(adc_active),
        .I4(sim_out_E[114]),
        .O(\deci_low.mux_E[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[115]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[115]),
        .I3(adc_active),
        .I4(sim_out_E[115]),
        .O(\deci_low.mux_E[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[116]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[116]),
        .I3(adc_active),
        .I4(sim_out_E[116]),
        .O(\deci_low.mux_E[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[117]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[117]),
        .I3(adc_active),
        .I4(sim_out_E[117]),
        .O(\deci_low.mux_E[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[118]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[118]),
        .I3(adc_active),
        .I4(sim_out_E[118]),
        .O(\deci_low.mux_E[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[119]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[119]),
        .I3(adc_active),
        .I4(sim_out_E[119]),
        .O(\deci_low.mux_E[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[11]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[11]),
        .I3(adc_active),
        .I4(sim_out_E[11]),
        .O(\deci_low.mux_E[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[120]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[120]),
        .I3(adc_active),
        .I4(sim_out_E[120]),
        .O(\deci_low.mux_E[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[121]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[121]),
        .I3(adc_active),
        .I4(sim_out_E[121]),
        .O(\deci_low.mux_E[121]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[122]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[122]),
        .I3(adc_active),
        .I4(sim_out_E[122]),
        .O(\deci_low.mux_E[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[123]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[123]),
        .I3(adc_active),
        .I4(sim_out_E[123]),
        .O(\deci_low.mux_E[123]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[124]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[124]),
        .I3(adc_active),
        .I4(sim_out_E[124]),
        .O(\deci_low.mux_E[124]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[125]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[125]),
        .I3(adc_active),
        .I4(sim_out_E[125]),
        .O(\deci_low.mux_E[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[126]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[126]),
        .I3(adc_active),
        .I4(sim_out_E[126]),
        .O(\deci_low.mux_E[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[127]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[127]),
        .I3(adc_active),
        .I4(sim_out_E[127]),
        .O(\deci_low.mux_E[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[12]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[12]),
        .I3(adc_active),
        .I4(sim_out_E[12]),
        .O(\deci_low.mux_E[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[13]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[13]),
        .I3(adc_active),
        .I4(sim_out_E[13]),
        .O(\deci_low.mux_E[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[14]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[14]),
        .I3(adc_active),
        .I4(sim_out_E[14]),
        .O(\deci_low.mux_E[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[15]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[15]),
        .I3(adc_active),
        .I4(sim_out_E[15]),
        .O(\deci_low.mux_E[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[16]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[16]),
        .I3(adc_active),
        .I4(sim_out_E[16]),
        .O(\deci_low.mux_E[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[17]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[17]),
        .I3(adc_active),
        .I4(sim_out_E[17]),
        .O(\deci_low.mux_E[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[18]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[18]),
        .I3(adc_active),
        .I4(sim_out_E[18]),
        .O(\deci_low.mux_E[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[19]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[19]),
        .I3(adc_active),
        .I4(sim_out_E[19]),
        .O(\deci_low.mux_E[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[1]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[1]),
        .I3(adc_active),
        .I4(sim_out_E[1]),
        .O(\deci_low.mux_E[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[20]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[20]),
        .I3(adc_active),
        .I4(sim_out_E[20]),
        .O(\deci_low.mux_E[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[21]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[21]),
        .I3(adc_active),
        .I4(sim_out_E[21]),
        .O(\deci_low.mux_E[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[22]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[22]),
        .I3(adc_active),
        .I4(sim_out_E[22]),
        .O(\deci_low.mux_E[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[23]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[23]),
        .I3(adc_active),
        .I4(sim_out_E[23]),
        .O(\deci_low.mux_E[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[24]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[24]),
        .I3(adc_active),
        .I4(sim_out_E[24]),
        .O(\deci_low.mux_E[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[25]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[25]),
        .I3(adc_active),
        .I4(sim_out_E[25]),
        .O(\deci_low.mux_E[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[26]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[26]),
        .I3(adc_active),
        .I4(sim_out_E[26]),
        .O(\deci_low.mux_E[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[27]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[27]),
        .I3(adc_active),
        .I4(sim_out_E[27]),
        .O(\deci_low.mux_E[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[28]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[28]),
        .I3(adc_active),
        .I4(sim_out_E[28]),
        .O(\deci_low.mux_E[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[29]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[29]),
        .I3(adc_active),
        .I4(sim_out_E[29]),
        .O(\deci_low.mux_E[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[2]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[2]),
        .I3(adc_active),
        .I4(sim_out_E[2]),
        .O(\deci_low.mux_E[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[30]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[30]),
        .I3(adc_active),
        .I4(sim_out_E[30]),
        .O(\deci_low.mux_E[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[31]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[31]),
        .I3(adc_active),
        .I4(sim_out_E[31]),
        .O(\deci_low.mux_E[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[32]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[32]),
        .I3(adc_active),
        .I4(sim_out_E[32]),
        .O(\deci_low.mux_E[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[33]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[33]),
        .I3(adc_active),
        .I4(sim_out_E[33]),
        .O(\deci_low.mux_E[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[34]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[34]),
        .I3(adc_active),
        .I4(sim_out_E[34]),
        .O(\deci_low.mux_E[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[35]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[35]),
        .I3(adc_active),
        .I4(sim_out_E[35]),
        .O(\deci_low.mux_E[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[36]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[36]),
        .I3(adc_active),
        .I4(sim_out_E[36]),
        .O(\deci_low.mux_E[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[37]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[37]),
        .I3(adc_active),
        .I4(sim_out_E[37]),
        .O(\deci_low.mux_E[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[38]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[38]),
        .I3(adc_active),
        .I4(sim_out_E[38]),
        .O(\deci_low.mux_E[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[39]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[39]),
        .I3(adc_active),
        .I4(sim_out_E[39]),
        .O(\deci_low.mux_E[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[3]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[3]),
        .I3(adc_active),
        .I4(sim_out_E[3]),
        .O(\deci_low.mux_E[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[40]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[40]),
        .I3(adc_active),
        .I4(sim_out_E[40]),
        .O(\deci_low.mux_E[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[41]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[41]),
        .I3(adc_active),
        .I4(sim_out_E[41]),
        .O(\deci_low.mux_E[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[42]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[42]),
        .I3(adc_active),
        .I4(sim_out_E[42]),
        .O(\deci_low.mux_E[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[43]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[43]),
        .I3(adc_active),
        .I4(sim_out_E[43]),
        .O(\deci_low.mux_E[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[44]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[44]),
        .I3(adc_active),
        .I4(sim_out_E[44]),
        .O(\deci_low.mux_E[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[45]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[45]),
        .I3(adc_active),
        .I4(sim_out_E[45]),
        .O(\deci_low.mux_E[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[46]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[46]),
        .I3(adc_active),
        .I4(sim_out_E[46]),
        .O(\deci_low.mux_E[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[47]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[47]),
        .I3(adc_active),
        .I4(sim_out_E[47]),
        .O(\deci_low.mux_E[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[48]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[48]),
        .I3(adc_active),
        .I4(sim_out_E[48]),
        .O(\deci_low.mux_E[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[49]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[49]),
        .I3(adc_active),
        .I4(sim_out_E[49]),
        .O(\deci_low.mux_E[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[4]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[4]),
        .I3(adc_active),
        .I4(sim_out_E[4]),
        .O(\deci_low.mux_E[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[50]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[50]),
        .I3(adc_active),
        .I4(sim_out_E[50]),
        .O(\deci_low.mux_E[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[51]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[51]),
        .I3(adc_active),
        .I4(sim_out_E[51]),
        .O(\deci_low.mux_E[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[52]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[52]),
        .I3(adc_active),
        .I4(sim_out_E[52]),
        .O(\deci_low.mux_E[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[53]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[53]),
        .I3(adc_active),
        .I4(sim_out_E[53]),
        .O(\deci_low.mux_E[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[54]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[54]),
        .I3(adc_active),
        .I4(sim_out_E[54]),
        .O(\deci_low.mux_E[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[55]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[55]),
        .I3(adc_active),
        .I4(sim_out_E[55]),
        .O(\deci_low.mux_E[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[56]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[56]),
        .I3(adc_active),
        .I4(sim_out_E[56]),
        .O(\deci_low.mux_E[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[57]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[57]),
        .I3(adc_active),
        .I4(sim_out_E[57]),
        .O(\deci_low.mux_E[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[58]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[58]),
        .I3(adc_active),
        .I4(sim_out_E[58]),
        .O(\deci_low.mux_E[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[59]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[59]),
        .I3(adc_active),
        .I4(sim_out_E[59]),
        .O(\deci_low.mux_E[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[5]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[5]),
        .I3(adc_active),
        .I4(sim_out_E[5]),
        .O(\deci_low.mux_E[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[60]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[60]),
        .I3(adc_active),
        .I4(sim_out_E[60]),
        .O(\deci_low.mux_E[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[61]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[61]),
        .I3(adc_active),
        .I4(sim_out_E[61]),
        .O(\deci_low.mux_E[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[62]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[62]),
        .I3(adc_active),
        .I4(sim_out_E[62]),
        .O(\deci_low.mux_E[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[63]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[63]),
        .I3(adc_active),
        .I4(sim_out_E[63]),
        .O(\deci_low.mux_E[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[64]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[64]),
        .I3(adc_active),
        .I4(sim_out_E[64]),
        .O(\deci_low.mux_E[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[65]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[65]),
        .I3(adc_active),
        .I4(sim_out_E[65]),
        .O(\deci_low.mux_E[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[66]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[66]),
        .I3(adc_active),
        .I4(sim_out_E[66]),
        .O(\deci_low.mux_E[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[67]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[67]),
        .I3(adc_active),
        .I4(sim_out_E[67]),
        .O(\deci_low.mux_E[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[68]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[68]),
        .I3(adc_active),
        .I4(sim_out_E[68]),
        .O(\deci_low.mux_E[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[69]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[69]),
        .I3(adc_active),
        .I4(sim_out_E[69]),
        .O(\deci_low.mux_E[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[6]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[6]),
        .I3(adc_active),
        .I4(sim_out_E[6]),
        .O(\deci_low.mux_E[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[70]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[70]),
        .I3(adc_active),
        .I4(sim_out_E[70]),
        .O(\deci_low.mux_E[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[71]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[71]),
        .I3(adc_active),
        .I4(sim_out_E[71]),
        .O(\deci_low.mux_E[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[72]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[72]),
        .I3(adc_active),
        .I4(sim_out_E[72]),
        .O(\deci_low.mux_E[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[73]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[73]),
        .I3(adc_active),
        .I4(sim_out_E[73]),
        .O(\deci_low.mux_E[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[74]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[74]),
        .I3(adc_active),
        .I4(sim_out_E[74]),
        .O(\deci_low.mux_E[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[75]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[75]),
        .I3(adc_active),
        .I4(sim_out_E[75]),
        .O(\deci_low.mux_E[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[76]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[76]),
        .I3(adc_active),
        .I4(sim_out_E[76]),
        .O(\deci_low.mux_E[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[77]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[77]),
        .I3(adc_active),
        .I4(sim_out_E[77]),
        .O(\deci_low.mux_E[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[78]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[78]),
        .I3(adc_active),
        .I4(sim_out_E[78]),
        .O(\deci_low.mux_E[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[79]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[79]),
        .I3(adc_active),
        .I4(sim_out_E[79]),
        .O(\deci_low.mux_E[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[7]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[7]),
        .I3(adc_active),
        .I4(sim_out_E[7]),
        .O(\deci_low.mux_E[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[80]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[80]),
        .I3(adc_active),
        .I4(sim_out_E[80]),
        .O(\deci_low.mux_E[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[81]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[81]),
        .I3(adc_active),
        .I4(sim_out_E[81]),
        .O(\deci_low.mux_E[81]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[82]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[82]),
        .I3(adc_active),
        .I4(sim_out_E[82]),
        .O(\deci_low.mux_E[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[83]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[83]),
        .I3(adc_active),
        .I4(sim_out_E[83]),
        .O(\deci_low.mux_E[83]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[84]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[84]),
        .I3(adc_active),
        .I4(sim_out_E[84]),
        .O(\deci_low.mux_E[84]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[85]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[85]),
        .I3(adc_active),
        .I4(sim_out_E[85]),
        .O(\deci_low.mux_E[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[86]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[86]),
        .I3(adc_active),
        .I4(sim_out_E[86]),
        .O(\deci_low.mux_E[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[87]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[87]),
        .I3(adc_active),
        .I4(sim_out_E[87]),
        .O(\deci_low.mux_E[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[88]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[88]),
        .I3(adc_active),
        .I4(sim_out_E[88]),
        .O(\deci_low.mux_E[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[89]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[89]),
        .I3(adc_active),
        .I4(sim_out_E[89]),
        .O(\deci_low.mux_E[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[8]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[8]),
        .I3(adc_active),
        .I4(sim_out_E[8]),
        .O(\deci_low.mux_E[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[90]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[90]),
        .I3(adc_active),
        .I4(sim_out_E[90]),
        .O(\deci_low.mux_E[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[91]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[91]),
        .I3(adc_active),
        .I4(sim_out_E[91]),
        .O(\deci_low.mux_E[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[92]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[92]),
        .I3(adc_active),
        .I4(sim_out_E[92]),
        .O(\deci_low.mux_E[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[93]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[93]),
        .I3(adc_active),
        .I4(sim_out_E[93]),
        .O(\deci_low.mux_E[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[94]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[94]),
        .I3(adc_active),
        .I4(sim_out_E[94]),
        .O(\deci_low.mux_E[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[95]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[95]),
        .I3(adc_active),
        .I4(sim_out_E[95]),
        .O(\deci_low.mux_E[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[96]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[96]),
        .I3(adc_active),
        .I4(sim_out_E[96]),
        .O(\deci_low.mux_E[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[97]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[97]),
        .I3(adc_active),
        .I4(sim_out_E[97]),
        .O(\deci_low.mux_E[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[98]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[98]),
        .I3(adc_active),
        .I4(sim_out_E[98]),
        .O(\deci_low.mux_E[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[99]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[99]),
        .I3(adc_active),
        .I4(sim_out_E[99]),
        .O(\deci_low.mux_E[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_E[9]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_E[9]),
        .I3(adc_active),
        .I4(sim_out_E[9]),
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
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[0]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[0]),
        .I3(adc_active),
        .I4(sim_out_N[0]),
        .O(\deci_low.mux_N[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[100]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[100]),
        .I3(adc_active),
        .I4(sim_out_N[100]),
        .O(\deci_low.mux_N[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[101]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[101]),
        .I3(adc_active),
        .I4(sim_out_N[101]),
        .O(\deci_low.mux_N[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[102]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[102]),
        .I3(adc_active),
        .I4(sim_out_N[102]),
        .O(\deci_low.mux_N[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[103]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[103]),
        .I3(adc_active),
        .I4(sim_out_N[103]),
        .O(\deci_low.mux_N[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[104]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[104]),
        .I3(adc_active),
        .I4(sim_out_N[104]),
        .O(\deci_low.mux_N[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[105]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[105]),
        .I3(adc_active),
        .I4(sim_out_N[105]),
        .O(\deci_low.mux_N[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[106]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[106]),
        .I3(adc_active),
        .I4(sim_out_N[106]),
        .O(\deci_low.mux_N[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[107]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[107]),
        .I3(adc_active),
        .I4(sim_out_N[107]),
        .O(\deci_low.mux_N[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[108]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[108]),
        .I3(adc_active),
        .I4(sim_out_N[108]),
        .O(\deci_low.mux_N[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[109]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[109]),
        .I3(adc_active),
        .I4(sim_out_N[109]),
        .O(\deci_low.mux_N[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[10]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[10]),
        .I3(adc_active),
        .I4(sim_out_N[10]),
        .O(\deci_low.mux_N[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[110]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[110]),
        .I3(adc_active),
        .I4(sim_out_N[110]),
        .O(\deci_low.mux_N[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[111]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[111]),
        .I3(adc_active),
        .I4(sim_out_N[111]),
        .O(\deci_low.mux_N[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[112]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[112]),
        .I3(adc_active),
        .I4(sim_out_N[112]),
        .O(\deci_low.mux_N[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[113]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[113]),
        .I3(adc_active),
        .I4(sim_out_N[113]),
        .O(\deci_low.mux_N[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[114]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[114]),
        .I3(adc_active),
        .I4(sim_out_N[114]),
        .O(\deci_low.mux_N[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[115]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[115]),
        .I3(adc_active),
        .I4(sim_out_N[115]),
        .O(\deci_low.mux_N[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[116]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[116]),
        .I3(adc_active),
        .I4(sim_out_N[116]),
        .O(\deci_low.mux_N[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[117]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[117]),
        .I3(adc_active),
        .I4(sim_out_N[117]),
        .O(\deci_low.mux_N[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[118]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[118]),
        .I3(adc_active),
        .I4(sim_out_N[118]),
        .O(\deci_low.mux_N[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[119]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[119]),
        .I3(adc_active),
        .I4(sim_out_N[119]),
        .O(\deci_low.mux_N[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[11]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[11]),
        .I3(adc_active),
        .I4(sim_out_N[11]),
        .O(\deci_low.mux_N[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[120]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[120]),
        .I3(adc_active),
        .I4(sim_out_N[120]),
        .O(\deci_low.mux_N[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[121]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[121]),
        .I3(adc_active),
        .I4(sim_out_N[121]),
        .O(\deci_low.mux_N[121]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[122]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[122]),
        .I3(adc_active),
        .I4(sim_out_N[122]),
        .O(\deci_low.mux_N[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[123]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[123]),
        .I3(adc_active),
        .I4(sim_out_N[123]),
        .O(\deci_low.mux_N[123]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[124]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[124]),
        .I3(adc_active),
        .I4(sim_out_N[124]),
        .O(\deci_low.mux_N[124]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[125]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[125]),
        .I3(adc_active),
        .I4(sim_out_N[125]),
        .O(\deci_low.mux_N[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[126]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[126]),
        .I3(adc_active),
        .I4(sim_out_N[126]),
        .O(\deci_low.mux_N[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[127]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[127]),
        .I3(adc_active),
        .I4(sim_out_N[127]),
        .O(\deci_low.mux_N[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[12]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[12]),
        .I3(adc_active),
        .I4(sim_out_N[12]),
        .O(\deci_low.mux_N[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[13]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[13]),
        .I3(adc_active),
        .I4(sim_out_N[13]),
        .O(\deci_low.mux_N[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[14]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[14]),
        .I3(adc_active),
        .I4(sim_out_N[14]),
        .O(\deci_low.mux_N[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[15]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[15]),
        .I3(adc_active),
        .I4(sim_out_N[15]),
        .O(\deci_low.mux_N[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[16]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[16]),
        .I3(adc_active),
        .I4(sim_out_N[16]),
        .O(\deci_low.mux_N[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[17]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[17]),
        .I3(adc_active),
        .I4(sim_out_N[17]),
        .O(\deci_low.mux_N[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[18]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[18]),
        .I3(adc_active),
        .I4(sim_out_N[18]),
        .O(\deci_low.mux_N[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[19]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[19]),
        .I3(adc_active),
        .I4(sim_out_N[19]),
        .O(\deci_low.mux_N[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[1]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[1]),
        .I3(adc_active),
        .I4(sim_out_N[1]),
        .O(\deci_low.mux_N[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[20]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[20]),
        .I3(adc_active),
        .I4(sim_out_N[20]),
        .O(\deci_low.mux_N[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[21]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[21]),
        .I3(adc_active),
        .I4(sim_out_N[21]),
        .O(\deci_low.mux_N[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[22]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[22]),
        .I3(adc_active),
        .I4(sim_out_N[22]),
        .O(\deci_low.mux_N[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[23]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[23]),
        .I3(adc_active),
        .I4(sim_out_N[23]),
        .O(\deci_low.mux_N[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[24]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[24]),
        .I3(adc_active),
        .I4(sim_out_N[24]),
        .O(\deci_low.mux_N[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[25]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[25]),
        .I3(adc_active),
        .I4(sim_out_N[25]),
        .O(\deci_low.mux_N[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[26]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[26]),
        .I3(adc_active),
        .I4(sim_out_N[26]),
        .O(\deci_low.mux_N[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[27]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[27]),
        .I3(adc_active),
        .I4(sim_out_N[27]),
        .O(\deci_low.mux_N[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[28]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[28]),
        .I3(adc_active),
        .I4(sim_out_N[28]),
        .O(\deci_low.mux_N[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[29]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[29]),
        .I3(adc_active),
        .I4(sim_out_N[29]),
        .O(\deci_low.mux_N[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[2]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[2]),
        .I3(adc_active),
        .I4(sim_out_N[2]),
        .O(\deci_low.mux_N[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[30]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[30]),
        .I3(adc_active),
        .I4(sim_out_N[30]),
        .O(\deci_low.mux_N[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[31]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[31]),
        .I3(adc_active),
        .I4(sim_out_N[31]),
        .O(\deci_low.mux_N[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[32]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[32]),
        .I3(adc_active),
        .I4(sim_out_N[32]),
        .O(\deci_low.mux_N[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[33]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[33]),
        .I3(adc_active),
        .I4(sim_out_N[33]),
        .O(\deci_low.mux_N[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[34]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[34]),
        .I3(adc_active),
        .I4(sim_out_N[34]),
        .O(\deci_low.mux_N[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[35]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[35]),
        .I3(adc_active),
        .I4(sim_out_N[35]),
        .O(\deci_low.mux_N[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[36]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[36]),
        .I3(adc_active),
        .I4(sim_out_N[36]),
        .O(\deci_low.mux_N[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[37]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[37]),
        .I3(adc_active),
        .I4(sim_out_N[37]),
        .O(\deci_low.mux_N[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[38]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[38]),
        .I3(adc_active),
        .I4(sim_out_N[38]),
        .O(\deci_low.mux_N[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[39]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[39]),
        .I3(adc_active),
        .I4(sim_out_N[39]),
        .O(\deci_low.mux_N[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[3]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[3]),
        .I3(adc_active),
        .I4(sim_out_N[3]),
        .O(\deci_low.mux_N[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[40]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[40]),
        .I3(adc_active),
        .I4(sim_out_N[40]),
        .O(\deci_low.mux_N[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[41]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[41]),
        .I3(adc_active),
        .I4(sim_out_N[41]),
        .O(\deci_low.mux_N[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[42]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[42]),
        .I3(adc_active),
        .I4(sim_out_N[42]),
        .O(\deci_low.mux_N[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[43]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[43]),
        .I3(adc_active),
        .I4(sim_out_N[43]),
        .O(\deci_low.mux_N[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[44]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[44]),
        .I3(adc_active),
        .I4(sim_out_N[44]),
        .O(\deci_low.mux_N[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[45]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[45]),
        .I3(adc_active),
        .I4(sim_out_N[45]),
        .O(\deci_low.mux_N[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[46]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[46]),
        .I3(adc_active),
        .I4(sim_out_N[46]),
        .O(\deci_low.mux_N[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[47]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[47]),
        .I3(adc_active),
        .I4(sim_out_N[47]),
        .O(\deci_low.mux_N[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[48]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[48]),
        .I3(adc_active),
        .I4(sim_out_N[48]),
        .O(\deci_low.mux_N[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[49]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[49]),
        .I3(adc_active),
        .I4(sim_out_N[49]),
        .O(\deci_low.mux_N[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[4]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[4]),
        .I3(adc_active),
        .I4(sim_out_N[4]),
        .O(\deci_low.mux_N[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[50]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[50]),
        .I3(adc_active),
        .I4(sim_out_N[50]),
        .O(\deci_low.mux_N[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[51]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[51]),
        .I3(adc_active),
        .I4(sim_out_N[51]),
        .O(\deci_low.mux_N[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[52]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[52]),
        .I3(adc_active),
        .I4(sim_out_N[52]),
        .O(\deci_low.mux_N[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[53]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[53]),
        .I3(adc_active),
        .I4(sim_out_N[53]),
        .O(\deci_low.mux_N[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[54]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[54]),
        .I3(adc_active),
        .I4(sim_out_N[54]),
        .O(\deci_low.mux_N[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[55]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[55]),
        .I3(adc_active),
        .I4(sim_out_N[55]),
        .O(\deci_low.mux_N[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[56]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[56]),
        .I3(adc_active),
        .I4(sim_out_N[56]),
        .O(\deci_low.mux_N[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[57]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[57]),
        .I3(adc_active),
        .I4(sim_out_N[57]),
        .O(\deci_low.mux_N[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[58]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[58]),
        .I3(adc_active),
        .I4(sim_out_N[58]),
        .O(\deci_low.mux_N[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[59]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[59]),
        .I3(adc_active),
        .I4(sim_out_N[59]),
        .O(\deci_low.mux_N[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[5]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[5]),
        .I3(adc_active),
        .I4(sim_out_N[5]),
        .O(\deci_low.mux_N[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[60]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[60]),
        .I3(adc_active),
        .I4(sim_out_N[60]),
        .O(\deci_low.mux_N[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[61]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[61]),
        .I3(adc_active),
        .I4(sim_out_N[61]),
        .O(\deci_low.mux_N[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[62]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[62]),
        .I3(adc_active),
        .I4(sim_out_N[62]),
        .O(\deci_low.mux_N[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[63]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[63]),
        .I3(adc_active),
        .I4(sim_out_N[63]),
        .O(\deci_low.mux_N[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[64]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[64]),
        .I3(adc_active),
        .I4(sim_out_N[64]),
        .O(\deci_low.mux_N[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[65]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[65]),
        .I3(adc_active),
        .I4(sim_out_N[65]),
        .O(\deci_low.mux_N[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[66]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[66]),
        .I3(adc_active),
        .I4(sim_out_N[66]),
        .O(\deci_low.mux_N[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[67]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[67]),
        .I3(adc_active),
        .I4(sim_out_N[67]),
        .O(\deci_low.mux_N[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[68]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[68]),
        .I3(adc_active),
        .I4(sim_out_N[68]),
        .O(\deci_low.mux_N[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[69]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[69]),
        .I3(adc_active),
        .I4(sim_out_N[69]),
        .O(\deci_low.mux_N[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[6]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[6]),
        .I3(adc_active),
        .I4(sim_out_N[6]),
        .O(\deci_low.mux_N[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[70]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[70]),
        .I3(adc_active),
        .I4(sim_out_N[70]),
        .O(\deci_low.mux_N[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[71]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[71]),
        .I3(adc_active),
        .I4(sim_out_N[71]),
        .O(\deci_low.mux_N[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[72]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[72]),
        .I3(adc_active),
        .I4(sim_out_N[72]),
        .O(\deci_low.mux_N[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[73]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[73]),
        .I3(adc_active),
        .I4(sim_out_N[73]),
        .O(\deci_low.mux_N[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[74]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[74]),
        .I3(adc_active),
        .I4(sim_out_N[74]),
        .O(\deci_low.mux_N[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[75]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[75]),
        .I3(adc_active),
        .I4(sim_out_N[75]),
        .O(\deci_low.mux_N[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[76]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[76]),
        .I3(adc_active),
        .I4(sim_out_N[76]),
        .O(\deci_low.mux_N[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[77]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[77]),
        .I3(adc_active),
        .I4(sim_out_N[77]),
        .O(\deci_low.mux_N[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[78]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[78]),
        .I3(adc_active),
        .I4(sim_out_N[78]),
        .O(\deci_low.mux_N[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[79]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[79]),
        .I3(adc_active),
        .I4(sim_out_N[79]),
        .O(\deci_low.mux_N[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[7]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[7]),
        .I3(adc_active),
        .I4(sim_out_N[7]),
        .O(\deci_low.mux_N[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[80]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[80]),
        .I3(adc_active),
        .I4(sim_out_N[80]),
        .O(\deci_low.mux_N[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[81]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[81]),
        .I3(adc_active),
        .I4(sim_out_N[81]),
        .O(\deci_low.mux_N[81]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[82]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[82]),
        .I3(adc_active),
        .I4(sim_out_N[82]),
        .O(\deci_low.mux_N[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[83]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[83]),
        .I3(adc_active),
        .I4(sim_out_N[83]),
        .O(\deci_low.mux_N[83]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[84]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[84]),
        .I3(adc_active),
        .I4(sim_out_N[84]),
        .O(\deci_low.mux_N[84]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[85]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[85]),
        .I3(adc_active),
        .I4(sim_out_N[85]),
        .O(\deci_low.mux_N[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[86]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[86]),
        .I3(adc_active),
        .I4(sim_out_N[86]),
        .O(\deci_low.mux_N[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[87]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[87]),
        .I3(adc_active),
        .I4(sim_out_N[87]),
        .O(\deci_low.mux_N[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[88]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[88]),
        .I3(adc_active),
        .I4(sim_out_N[88]),
        .O(\deci_low.mux_N[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[89]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[89]),
        .I3(adc_active),
        .I4(sim_out_N[89]),
        .O(\deci_low.mux_N[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[8]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[8]),
        .I3(adc_active),
        .I4(sim_out_N[8]),
        .O(\deci_low.mux_N[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[90]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[90]),
        .I3(adc_active),
        .I4(sim_out_N[90]),
        .O(\deci_low.mux_N[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[91]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[91]),
        .I3(adc_active),
        .I4(sim_out_N[91]),
        .O(\deci_low.mux_N[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[92]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[92]),
        .I3(adc_active),
        .I4(sim_out_N[92]),
        .O(\deci_low.mux_N[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[93]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[93]),
        .I3(adc_active),
        .I4(sim_out_N[93]),
        .O(\deci_low.mux_N[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[94]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[94]),
        .I3(adc_active),
        .I4(sim_out_N[94]),
        .O(\deci_low.mux_N[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[95]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[95]),
        .I3(adc_active),
        .I4(sim_out_N[95]),
        .O(\deci_low.mux_N[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[96]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[96]),
        .I3(adc_active),
        .I4(sim_out_N[96]),
        .O(\deci_low.mux_N[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[97]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[97]),
        .I3(adc_active),
        .I4(sim_out_N[97]),
        .O(\deci_low.mux_N[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[98]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[98]),
        .I3(adc_active),
        .I4(sim_out_N[98]),
        .O(\deci_low.mux_N[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[99]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[99]),
        .I3(adc_active),
        .I4(sim_out_N[99]),
        .O(\deci_low.mux_N[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_N[9]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_N[9]),
        .I3(adc_active),
        .I4(sim_out_N[9]),
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
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[0]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[0]),
        .I3(adc_active),
        .I4(sim_out_W[0]),
        .O(\deci_low.mux_W[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[100]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[100]),
        .I3(adc_active),
        .I4(sim_out_W[100]),
        .O(\deci_low.mux_W[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[101]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[101]),
        .I3(adc_active),
        .I4(sim_out_W[101]),
        .O(\deci_low.mux_W[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[102]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[102]),
        .I3(adc_active),
        .I4(sim_out_W[102]),
        .O(\deci_low.mux_W[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[103]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[103]),
        .I3(adc_active),
        .I4(sim_out_W[103]),
        .O(\deci_low.mux_W[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[104]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[104]),
        .I3(adc_active),
        .I4(sim_out_W[104]),
        .O(\deci_low.mux_W[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[105]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[105]),
        .I3(adc_active),
        .I4(sim_out_W[105]),
        .O(\deci_low.mux_W[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[106]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[106]),
        .I3(adc_active),
        .I4(sim_out_W[106]),
        .O(\deci_low.mux_W[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[107]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[107]),
        .I3(adc_active),
        .I4(sim_out_W[107]),
        .O(\deci_low.mux_W[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[108]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[108]),
        .I3(adc_active),
        .I4(sim_out_W[108]),
        .O(\deci_low.mux_W[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[109]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[109]),
        .I3(adc_active),
        .I4(sim_out_W[109]),
        .O(\deci_low.mux_W[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[10]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[10]),
        .I3(adc_active),
        .I4(sim_out_W[10]),
        .O(\deci_low.mux_W[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[110]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[110]),
        .I3(adc_active),
        .I4(sim_out_W[110]),
        .O(\deci_low.mux_W[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[111]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[111]),
        .I3(adc_active),
        .I4(sim_out_W[111]),
        .O(\deci_low.mux_W[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[112]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[112]),
        .I3(adc_active),
        .I4(sim_out_W[112]),
        .O(\deci_low.mux_W[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[113]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[113]),
        .I3(adc_active),
        .I4(sim_out_W[113]),
        .O(\deci_low.mux_W[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[114]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[114]),
        .I3(adc_active),
        .I4(sim_out_W[114]),
        .O(\deci_low.mux_W[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[115]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[115]),
        .I3(adc_active),
        .I4(sim_out_W[115]),
        .O(\deci_low.mux_W[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[116]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[116]),
        .I3(adc_active),
        .I4(sim_out_W[116]),
        .O(\deci_low.mux_W[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[117]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[117]),
        .I3(adc_active),
        .I4(sim_out_W[117]),
        .O(\deci_low.mux_W[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[118]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[118]),
        .I3(adc_active),
        .I4(sim_out_W[118]),
        .O(\deci_low.mux_W[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[119]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[119]),
        .I3(adc_active),
        .I4(sim_out_W[119]),
        .O(\deci_low.mux_W[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[11]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[11]),
        .I3(adc_active),
        .I4(sim_out_W[11]),
        .O(\deci_low.mux_W[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[120]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[120]),
        .I3(adc_active),
        .I4(sim_out_W[120]),
        .O(\deci_low.mux_W[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[121]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[121]),
        .I3(adc_active),
        .I4(sim_out_W[121]),
        .O(\deci_low.mux_W[121]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[122]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[122]),
        .I3(adc_active),
        .I4(sim_out_W[122]),
        .O(\deci_low.mux_W[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[123]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[123]),
        .I3(adc_active),
        .I4(sim_out_W[123]),
        .O(\deci_low.mux_W[123]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[124]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[124]),
        .I3(adc_active),
        .I4(sim_out_W[124]),
        .O(\deci_low.mux_W[124]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[125]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[125]),
        .I3(adc_active),
        .I4(sim_out_W[125]),
        .O(\deci_low.mux_W[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[126]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[126]),
        .I3(adc_active),
        .I4(sim_out_W[126]),
        .O(\deci_low.mux_W[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[127]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[127]),
        .I3(adc_active),
        .I4(sim_out_W[127]),
        .O(\deci_low.mux_W[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[12]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[12]),
        .I3(adc_active),
        .I4(sim_out_W[12]),
        .O(\deci_low.mux_W[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[13]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[13]),
        .I3(adc_active),
        .I4(sim_out_W[13]),
        .O(\deci_low.mux_W[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[14]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[14]),
        .I3(adc_active),
        .I4(sim_out_W[14]),
        .O(\deci_low.mux_W[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[15]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[15]),
        .I3(adc_active),
        .I4(sim_out_W[15]),
        .O(\deci_low.mux_W[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[16]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[16]),
        .I3(adc_active),
        .I4(sim_out_W[16]),
        .O(\deci_low.mux_W[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[17]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[17]),
        .I3(adc_active),
        .I4(sim_out_W[17]),
        .O(\deci_low.mux_W[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[18]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[18]),
        .I3(adc_active),
        .I4(sim_out_W[18]),
        .O(\deci_low.mux_W[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[19]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[19]),
        .I3(adc_active),
        .I4(sim_out_W[19]),
        .O(\deci_low.mux_W[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[1]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[1]),
        .I3(adc_active),
        .I4(sim_out_W[1]),
        .O(\deci_low.mux_W[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[20]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[20]),
        .I3(adc_active),
        .I4(sim_out_W[20]),
        .O(\deci_low.mux_W[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[21]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[21]),
        .I3(adc_active),
        .I4(sim_out_W[21]),
        .O(\deci_low.mux_W[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[22]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[22]),
        .I3(adc_active),
        .I4(sim_out_W[22]),
        .O(\deci_low.mux_W[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[23]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[23]),
        .I3(adc_active),
        .I4(sim_out_W[23]),
        .O(\deci_low.mux_W[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[24]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[24]),
        .I3(adc_active),
        .I4(sim_out_W[24]),
        .O(\deci_low.mux_W[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[25]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[25]),
        .I3(adc_active),
        .I4(sim_out_W[25]),
        .O(\deci_low.mux_W[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[26]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[26]),
        .I3(adc_active),
        .I4(sim_out_W[26]),
        .O(\deci_low.mux_W[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[27]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[27]),
        .I3(adc_active),
        .I4(sim_out_W[27]),
        .O(\deci_low.mux_W[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[28]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[28]),
        .I3(adc_active),
        .I4(sim_out_W[28]),
        .O(\deci_low.mux_W[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[29]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[29]),
        .I3(adc_active),
        .I4(sim_out_W[29]),
        .O(\deci_low.mux_W[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[2]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[2]),
        .I3(adc_active),
        .I4(sim_out_W[2]),
        .O(\deci_low.mux_W[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[30]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[30]),
        .I3(adc_active),
        .I4(sim_out_W[30]),
        .O(\deci_low.mux_W[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[31]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[31]),
        .I3(adc_active),
        .I4(sim_out_W[31]),
        .O(\deci_low.mux_W[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[32]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[32]),
        .I3(adc_active),
        .I4(sim_out_W[32]),
        .O(\deci_low.mux_W[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[33]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[33]),
        .I3(adc_active),
        .I4(sim_out_W[33]),
        .O(\deci_low.mux_W[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[34]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[34]),
        .I3(adc_active),
        .I4(sim_out_W[34]),
        .O(\deci_low.mux_W[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[35]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[35]),
        .I3(adc_active),
        .I4(sim_out_W[35]),
        .O(\deci_low.mux_W[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[36]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[36]),
        .I3(adc_active),
        .I4(sim_out_W[36]),
        .O(\deci_low.mux_W[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[37]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[37]),
        .I3(adc_active),
        .I4(sim_out_W[37]),
        .O(\deci_low.mux_W[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[38]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[38]),
        .I3(adc_active),
        .I4(sim_out_W[38]),
        .O(\deci_low.mux_W[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[39]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[39]),
        .I3(adc_active),
        .I4(sim_out_W[39]),
        .O(\deci_low.mux_W[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[3]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[3]),
        .I3(adc_active),
        .I4(sim_out_W[3]),
        .O(\deci_low.mux_W[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[40]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[40]),
        .I3(adc_active),
        .I4(sim_out_W[40]),
        .O(\deci_low.mux_W[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[41]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[41]),
        .I3(adc_active),
        .I4(sim_out_W[41]),
        .O(\deci_low.mux_W[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[42]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[42]),
        .I3(adc_active),
        .I4(sim_out_W[42]),
        .O(\deci_low.mux_W[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[43]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[43]),
        .I3(adc_active),
        .I4(sim_out_W[43]),
        .O(\deci_low.mux_W[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[44]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[44]),
        .I3(adc_active),
        .I4(sim_out_W[44]),
        .O(\deci_low.mux_W[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[45]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[45]),
        .I3(adc_active),
        .I4(sim_out_W[45]),
        .O(\deci_low.mux_W[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[46]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[46]),
        .I3(adc_active),
        .I4(sim_out_W[46]),
        .O(\deci_low.mux_W[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[47]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[47]),
        .I3(adc_active),
        .I4(sim_out_W[47]),
        .O(\deci_low.mux_W[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[48]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[48]),
        .I3(adc_active),
        .I4(sim_out_W[48]),
        .O(\deci_low.mux_W[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[49]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[49]),
        .I3(adc_active),
        .I4(sim_out_W[49]),
        .O(\deci_low.mux_W[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[4]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[4]),
        .I3(adc_active),
        .I4(sim_out_W[4]),
        .O(\deci_low.mux_W[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[50]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[50]),
        .I3(adc_active),
        .I4(sim_out_W[50]),
        .O(\deci_low.mux_W[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[51]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[51]),
        .I3(adc_active),
        .I4(sim_out_W[51]),
        .O(\deci_low.mux_W[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[52]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[52]),
        .I3(adc_active),
        .I4(sim_out_W[52]),
        .O(\deci_low.mux_W[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[53]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[53]),
        .I3(adc_active),
        .I4(sim_out_W[53]),
        .O(\deci_low.mux_W[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[54]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[54]),
        .I3(adc_active),
        .I4(sim_out_W[54]),
        .O(\deci_low.mux_W[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[55]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[55]),
        .I3(adc_active),
        .I4(sim_out_W[55]),
        .O(\deci_low.mux_W[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[56]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[56]),
        .I3(adc_active),
        .I4(sim_out_W[56]),
        .O(\deci_low.mux_W[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[57]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[57]),
        .I3(adc_active),
        .I4(sim_out_W[57]),
        .O(\deci_low.mux_W[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[58]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[58]),
        .I3(adc_active),
        .I4(sim_out_W[58]),
        .O(\deci_low.mux_W[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[59]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[59]),
        .I3(adc_active),
        .I4(sim_out_W[59]),
        .O(\deci_low.mux_W[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[5]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[5]),
        .I3(adc_active),
        .I4(sim_out_W[5]),
        .O(\deci_low.mux_W[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[60]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[60]),
        .I3(adc_active),
        .I4(sim_out_W[60]),
        .O(\deci_low.mux_W[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[61]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[61]),
        .I3(adc_active),
        .I4(sim_out_W[61]),
        .O(\deci_low.mux_W[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[62]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[62]),
        .I3(adc_active),
        .I4(sim_out_W[62]),
        .O(\deci_low.mux_W[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[63]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[63]),
        .I3(adc_active),
        .I4(sim_out_W[63]),
        .O(\deci_low.mux_W[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[64]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[64]),
        .I3(adc_active),
        .I4(sim_out_W[64]),
        .O(\deci_low.mux_W[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[65]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[65]),
        .I3(adc_active),
        .I4(sim_out_W[65]),
        .O(\deci_low.mux_W[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[66]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[66]),
        .I3(adc_active),
        .I4(sim_out_W[66]),
        .O(\deci_low.mux_W[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[67]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[67]),
        .I3(adc_active),
        .I4(sim_out_W[67]),
        .O(\deci_low.mux_W[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[68]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[68]),
        .I3(adc_active),
        .I4(sim_out_W[68]),
        .O(\deci_low.mux_W[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[69]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[69]),
        .I3(adc_active),
        .I4(sim_out_W[69]),
        .O(\deci_low.mux_W[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[6]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[6]),
        .I3(adc_active),
        .I4(sim_out_W[6]),
        .O(\deci_low.mux_W[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[70]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[70]),
        .I3(adc_active),
        .I4(sim_out_W[70]),
        .O(\deci_low.mux_W[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[71]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[71]),
        .I3(adc_active),
        .I4(sim_out_W[71]),
        .O(\deci_low.mux_W[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[72]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[72]),
        .I3(adc_active),
        .I4(sim_out_W[72]),
        .O(\deci_low.mux_W[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[73]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[73]),
        .I3(adc_active),
        .I4(sim_out_W[73]),
        .O(\deci_low.mux_W[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[74]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[74]),
        .I3(adc_active),
        .I4(sim_out_W[74]),
        .O(\deci_low.mux_W[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[75]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[75]),
        .I3(adc_active),
        .I4(sim_out_W[75]),
        .O(\deci_low.mux_W[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[76]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[76]),
        .I3(adc_active),
        .I4(sim_out_W[76]),
        .O(\deci_low.mux_W[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[77]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[77]),
        .I3(adc_active),
        .I4(sim_out_W[77]),
        .O(\deci_low.mux_W[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[78]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[78]),
        .I3(adc_active),
        .I4(sim_out_W[78]),
        .O(\deci_low.mux_W[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[79]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[79]),
        .I3(adc_active),
        .I4(sim_out_W[79]),
        .O(\deci_low.mux_W[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[7]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[7]),
        .I3(adc_active),
        .I4(sim_out_W[7]),
        .O(\deci_low.mux_W[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[80]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[80]),
        .I3(adc_active),
        .I4(sim_out_W[80]),
        .O(\deci_low.mux_W[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[81]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[81]),
        .I3(adc_active),
        .I4(sim_out_W[81]),
        .O(\deci_low.mux_W[81]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[82]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[82]),
        .I3(adc_active),
        .I4(sim_out_W[82]),
        .O(\deci_low.mux_W[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[83]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[83]),
        .I3(adc_active),
        .I4(sim_out_W[83]),
        .O(\deci_low.mux_W[83]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[84]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[84]),
        .I3(adc_active),
        .I4(sim_out_W[84]),
        .O(\deci_low.mux_W[84]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[85]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[85]),
        .I3(adc_active),
        .I4(sim_out_W[85]),
        .O(\deci_low.mux_W[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[86]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[86]),
        .I3(adc_active),
        .I4(sim_out_W[86]),
        .O(\deci_low.mux_W[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[87]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[87]),
        .I3(adc_active),
        .I4(sim_out_W[87]),
        .O(\deci_low.mux_W[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[88]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[88]),
        .I3(adc_active),
        .I4(sim_out_W[88]),
        .O(\deci_low.mux_W[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[89]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[89]),
        .I3(adc_active),
        .I4(sim_out_W[89]),
        .O(\deci_low.mux_W[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[8]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[8]),
        .I3(adc_active),
        .I4(sim_out_W[8]),
        .O(\deci_low.mux_W[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[90]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[90]),
        .I3(adc_active),
        .I4(sim_out_W[90]),
        .O(\deci_low.mux_W[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[91]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[91]),
        .I3(adc_active),
        .I4(sim_out_W[91]),
        .O(\deci_low.mux_W[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[92]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[92]),
        .I3(adc_active),
        .I4(sim_out_W[92]),
        .O(\deci_low.mux_W[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[93]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[93]),
        .I3(adc_active),
        .I4(sim_out_W[93]),
        .O(\deci_low.mux_W[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[94]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[94]),
        .I3(adc_active),
        .I4(sim_out_W[94]),
        .O(\deci_low.mux_W[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[95]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[95]),
        .I3(adc_active),
        .I4(sim_out_W[95]),
        .O(\deci_low.mux_W[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[96]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[96]),
        .I3(adc_active),
        .I4(sim_out_W[96]),
        .O(\deci_low.mux_W[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[97]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[97]),
        .I3(adc_active),
        .I4(sim_out_W[97]),
        .O(\deci_low.mux_W[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[98]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[98]),
        .I3(adc_active),
        .I4(sim_out_W[98]),
        .O(\deci_low.mux_W[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[99]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[99]),
        .I3(adc_active),
        .I4(sim_out_W[99]),
        .O(\deci_low.mux_W[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF088F000)) 
    \deci_low.mux_W[9]_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(data_W[9]),
        .I3(adc_active),
        .I4(sim_out_W[9]),
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
    .INIT(64'hF000000088888888)) 
    \deci_low.mux_active_i_1 
       (.I0(sim_active),
        .I1(sim_active_1),
        .I2(ready_N),
        .I3(ready_E),
        .I4(ready_W),
        .I5(adc_active),
        .O(\deci_low.mux_active_i_1_n_0 ));
  FDRE \deci_low.mux_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mux_active_i_1_n_0 ),
        .Q(mux_active),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[0] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[0]),
        .Q(raw_E[0]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[100] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[100]),
        .Q(raw_E[100]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[101] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[101]),
        .Q(raw_E[101]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[102] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[102]),
        .Q(raw_E[102]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[103] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[103]),
        .Q(raw_E[103]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[104] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[104]),
        .Q(raw_E[104]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[105] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[105]),
        .Q(raw_E[105]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[106] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[106]),
        .Q(raw_E[106]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[107] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[107]),
        .Q(raw_E[107]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[108] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[108]),
        .Q(raw_E[108]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[109] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[109]),
        .Q(raw_E[109]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[10] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[10]),
        .Q(raw_E[10]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[110] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[110]),
        .Q(raw_E[110]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[111] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[111]),
        .Q(raw_E[111]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[112] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[112]),
        .Q(raw_E[112]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[113] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[113]),
        .Q(raw_E[113]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[114] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[114]),
        .Q(raw_E[114]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[115] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[115]),
        .Q(raw_E[115]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[116] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[116]),
        .Q(raw_E[116]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[117] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[117]),
        .Q(raw_E[117]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[118] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[118]),
        .Q(raw_E[118]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[119] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[119]),
        .Q(raw_E[119]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[11] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[11]),
        .Q(raw_E[11]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[120] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[120]),
        .Q(raw_E[120]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[121] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[121]),
        .Q(raw_E[121]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[122] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[122]),
        .Q(raw_E[122]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[123] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[123]),
        .Q(raw_E[123]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[124] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[124]),
        .Q(raw_E[124]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[125] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[125]),
        .Q(raw_E[125]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[126] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[126]),
        .Q(raw_E[126]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[127] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[127]),
        .Q(raw_E[127]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[12] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[12]),
        .Q(raw_E[12]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[13] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[13]),
        .Q(raw_E[13]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[14] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[14]),
        .Q(raw_E[14]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[15] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[15]),
        .Q(raw_E[15]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[16] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[16]),
        .Q(raw_E[16]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[17] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[17]),
        .Q(raw_E[17]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[18] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[18]),
        .Q(raw_E[18]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[19] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[19]),
        .Q(raw_E[19]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[1] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[1]),
        .Q(raw_E[1]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[20] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[20]),
        .Q(raw_E[20]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[21] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[21]),
        .Q(raw_E[21]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[22] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[22]),
        .Q(raw_E[22]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[23] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[23]),
        .Q(raw_E[23]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[24] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[24]),
        .Q(raw_E[24]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[25] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[25]),
        .Q(raw_E[25]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[26] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[26]),
        .Q(raw_E[26]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[27] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[27]),
        .Q(raw_E[27]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[28] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[28]),
        .Q(raw_E[28]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[29] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[29]),
        .Q(raw_E[29]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[2] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[2]),
        .Q(raw_E[2]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[30] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[30]),
        .Q(raw_E[30]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[31] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[31]),
        .Q(raw_E[31]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[32] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[32]),
        .Q(raw_E[32]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[33] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[33]),
        .Q(raw_E[33]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[34] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[34]),
        .Q(raw_E[34]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[35] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[35]),
        .Q(raw_E[35]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[36] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[36]),
        .Q(raw_E[36]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[37] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[37]),
        .Q(raw_E[37]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[38] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[38]),
        .Q(raw_E[38]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[39] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[39]),
        .Q(raw_E[39]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[3] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[3]),
        .Q(raw_E[3]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[40] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[40]),
        .Q(raw_E[40]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[41] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[41]),
        .Q(raw_E[41]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[42] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[42]),
        .Q(raw_E[42]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[43] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[43]),
        .Q(raw_E[43]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[44] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[44]),
        .Q(raw_E[44]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[45] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[45]),
        .Q(raw_E[45]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[46] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[46]),
        .Q(raw_E[46]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[47] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[47]),
        .Q(raw_E[47]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[48] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[48]),
        .Q(raw_E[48]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[49] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[49]),
        .Q(raw_E[49]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[4] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[4]),
        .Q(raw_E[4]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[50] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[50]),
        .Q(raw_E[50]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[51] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[51]),
        .Q(raw_E[51]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[52] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[52]),
        .Q(raw_E[52]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[53] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[53]),
        .Q(raw_E[53]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[54] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[54]),
        .Q(raw_E[54]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[55] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[55]),
        .Q(raw_E[55]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[56] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[56]),
        .Q(raw_E[56]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[57] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[57]),
        .Q(raw_E[57]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[58] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[58]),
        .Q(raw_E[58]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[59] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[59]),
        .Q(raw_E[59]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[5] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[5]),
        .Q(raw_E[5]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[60] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[60]),
        .Q(raw_E[60]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[61] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[61]),
        .Q(raw_E[61]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[62] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[62]),
        .Q(raw_E[62]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[63] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[63]),
        .Q(raw_E[63]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[64] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[64]),
        .Q(raw_E[64]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[65] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[65]),
        .Q(raw_E[65]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[66] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[66]),
        .Q(raw_E[66]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[67] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[67]),
        .Q(raw_E[67]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[68] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[68]),
        .Q(raw_E[68]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[69] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[69]),
        .Q(raw_E[69]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[6] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[6]),
        .Q(raw_E[6]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[70] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[70]),
        .Q(raw_E[70]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[71] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[71]),
        .Q(raw_E[71]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[72] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[72]),
        .Q(raw_E[72]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[73] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[73]),
        .Q(raw_E[73]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[74] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[74]),
        .Q(raw_E[74]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[75] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[75]),
        .Q(raw_E[75]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[76] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[76]),
        .Q(raw_E[76]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[77] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[77]),
        .Q(raw_E[77]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[78] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[78]),
        .Q(raw_E[78]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[79] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[79]),
        .Q(raw_E[79]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[7] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[7]),
        .Q(raw_E[7]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[80] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[80]),
        .Q(raw_E[80]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[81] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[81]),
        .Q(raw_E[81]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[82] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[82]),
        .Q(raw_E[82]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[83] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[83]),
        .Q(raw_E[83]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[84] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[84]),
        .Q(raw_E[84]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[85] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[85]),
        .Q(raw_E[85]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[86] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[86]),
        .Q(raw_E[86]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[87] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[87]),
        .Q(raw_E[87]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[88] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[88]),
        .Q(raw_E[88]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[89] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[89]),
        .Q(raw_E[89]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[8] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[8]),
        .Q(raw_E[8]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[90] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[90]),
        .Q(raw_E[90]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[91] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[91]),
        .Q(raw_E[91]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[92] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[92]),
        .Q(raw_E[92]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[93] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[93]),
        .Q(raw_E[93]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[94] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[94]),
        .Q(raw_E[94]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[95] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[95]),
        .Q(raw_E[95]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[96] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[96]),
        .Q(raw_E[96]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[97] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[97]),
        .Q(raw_E[97]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[98] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[98]),
        .Q(raw_E[98]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[99] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[99]),
        .Q(raw_E[99]),
        .R(1'b0));
  FDRE \deci_low.raw_E_reg[9] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_E[9]),
        .Q(raw_E[9]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[0] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[0]),
        .Q(raw_N[0]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[100] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[100]),
        .Q(raw_N[100]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[101] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[101]),
        .Q(raw_N[101]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[102] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[102]),
        .Q(raw_N[102]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[103] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[103]),
        .Q(raw_N[103]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[104] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[104]),
        .Q(raw_N[104]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[105] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[105]),
        .Q(raw_N[105]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[106] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[106]),
        .Q(raw_N[106]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[107] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[107]),
        .Q(raw_N[107]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[108] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[108]),
        .Q(raw_N[108]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[109] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[109]),
        .Q(raw_N[109]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[10] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[10]),
        .Q(raw_N[10]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[110] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[110]),
        .Q(raw_N[110]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[111] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[111]),
        .Q(raw_N[111]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[112] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[112]),
        .Q(raw_N[112]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[113] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[113]),
        .Q(raw_N[113]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[114] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[114]),
        .Q(raw_N[114]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[115] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[115]),
        .Q(raw_N[115]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[116] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[116]),
        .Q(raw_N[116]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[117] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[117]),
        .Q(raw_N[117]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[118] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[118]),
        .Q(raw_N[118]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[119] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[119]),
        .Q(raw_N[119]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[11] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[11]),
        .Q(raw_N[11]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[120] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[120]),
        .Q(raw_N[120]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[121] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[121]),
        .Q(raw_N[121]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[122] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[122]),
        .Q(raw_N[122]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[123] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[123]),
        .Q(raw_N[123]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[124] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[124]),
        .Q(raw_N[124]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[125] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[125]),
        .Q(raw_N[125]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[126] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[126]),
        .Q(raw_N[126]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[127] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[127]),
        .Q(raw_N[127]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[12] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[12]),
        .Q(raw_N[12]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[13] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[13]),
        .Q(raw_N[13]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[14] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[14]),
        .Q(raw_N[14]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[15] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[15]),
        .Q(raw_N[15]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[16] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[16]),
        .Q(raw_N[16]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[17] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[17]),
        .Q(raw_N[17]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[18] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[18]),
        .Q(raw_N[18]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[19] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[19]),
        .Q(raw_N[19]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[1] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[1]),
        .Q(raw_N[1]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[20] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[20]),
        .Q(raw_N[20]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[21] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[21]),
        .Q(raw_N[21]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[22] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[22]),
        .Q(raw_N[22]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[23] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[23]),
        .Q(raw_N[23]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[24] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[24]),
        .Q(raw_N[24]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[25] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[25]),
        .Q(raw_N[25]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[26] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[26]),
        .Q(raw_N[26]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[27] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[27]),
        .Q(raw_N[27]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[28] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[28]),
        .Q(raw_N[28]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[29] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[29]),
        .Q(raw_N[29]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[2] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[2]),
        .Q(raw_N[2]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[30] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[30]),
        .Q(raw_N[30]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[31] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[31]),
        .Q(raw_N[31]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[32] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[32]),
        .Q(raw_N[32]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[33] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[33]),
        .Q(raw_N[33]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[34] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[34]),
        .Q(raw_N[34]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[35] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[35]),
        .Q(raw_N[35]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[36] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[36]),
        .Q(raw_N[36]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[37] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[37]),
        .Q(raw_N[37]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[38] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[38]),
        .Q(raw_N[38]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[39] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[39]),
        .Q(raw_N[39]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[3] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[3]),
        .Q(raw_N[3]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[40] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[40]),
        .Q(raw_N[40]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[41] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[41]),
        .Q(raw_N[41]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[42] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[42]),
        .Q(raw_N[42]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[43] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[43]),
        .Q(raw_N[43]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[44] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[44]),
        .Q(raw_N[44]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[45] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[45]),
        .Q(raw_N[45]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[46] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[46]),
        .Q(raw_N[46]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[47] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[47]),
        .Q(raw_N[47]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[48] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[48]),
        .Q(raw_N[48]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[49] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[49]),
        .Q(raw_N[49]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[4] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[4]),
        .Q(raw_N[4]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[50] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[50]),
        .Q(raw_N[50]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[51] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[51]),
        .Q(raw_N[51]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[52] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[52]),
        .Q(raw_N[52]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[53] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[53]),
        .Q(raw_N[53]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[54] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[54]),
        .Q(raw_N[54]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[55] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[55]),
        .Q(raw_N[55]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[56] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[56]),
        .Q(raw_N[56]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[57] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[57]),
        .Q(raw_N[57]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[58] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[58]),
        .Q(raw_N[58]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[59] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[59]),
        .Q(raw_N[59]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[5] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[5]),
        .Q(raw_N[5]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[60] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[60]),
        .Q(raw_N[60]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[61] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[61]),
        .Q(raw_N[61]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[62] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[62]),
        .Q(raw_N[62]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[63] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[63]),
        .Q(raw_N[63]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[64] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[64]),
        .Q(raw_N[64]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[65] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[65]),
        .Q(raw_N[65]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[66] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[66]),
        .Q(raw_N[66]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[67] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[67]),
        .Q(raw_N[67]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[68] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[68]),
        .Q(raw_N[68]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[69] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[69]),
        .Q(raw_N[69]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[6] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[6]),
        .Q(raw_N[6]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[70] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[70]),
        .Q(raw_N[70]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[71] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[71]),
        .Q(raw_N[71]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[72] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[72]),
        .Q(raw_N[72]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[73] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[73]),
        .Q(raw_N[73]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[74] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[74]),
        .Q(raw_N[74]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[75] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[75]),
        .Q(raw_N[75]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[76] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[76]),
        .Q(raw_N[76]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[77] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[77]),
        .Q(raw_N[77]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[78] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[78]),
        .Q(raw_N[78]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[79] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[79]),
        .Q(raw_N[79]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[7] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[7]),
        .Q(raw_N[7]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[80] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[80]),
        .Q(raw_N[80]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[81] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[81]),
        .Q(raw_N[81]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[82] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[82]),
        .Q(raw_N[82]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[83] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[83]),
        .Q(raw_N[83]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[84] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[84]),
        .Q(raw_N[84]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[85] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[85]),
        .Q(raw_N[85]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[86] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[86]),
        .Q(raw_N[86]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[87] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[87]),
        .Q(raw_N[87]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[88] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[88]),
        .Q(raw_N[88]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[89] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[89]),
        .Q(raw_N[89]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[8] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[8]),
        .Q(raw_N[8]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[90] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[90]),
        .Q(raw_N[90]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[91] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[91]),
        .Q(raw_N[91]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[92] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[92]),
        .Q(raw_N[92]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[93] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[93]),
        .Q(raw_N[93]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[94] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[94]),
        .Q(raw_N[94]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[95] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[95]),
        .Q(raw_N[95]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[96] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[96]),
        .Q(raw_N[96]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[97] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[97]),
        .Q(raw_N[97]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[98] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[98]),
        .Q(raw_N[98]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[99] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[99]),
        .Q(raw_N[99]),
        .R(1'b0));
  FDRE \deci_low.raw_N_reg[9] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_N[9]),
        .Q(raw_N[9]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[0] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[0]),
        .Q(raw_W[0]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[100] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[100]),
        .Q(raw_W[100]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[101] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[101]),
        .Q(raw_W[101]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[102] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[102]),
        .Q(raw_W[102]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[103] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[103]),
        .Q(raw_W[103]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[104] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[104]),
        .Q(raw_W[104]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[105] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[105]),
        .Q(raw_W[105]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[106] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[106]),
        .Q(raw_W[106]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[107] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[107]),
        .Q(raw_W[107]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[108] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[108]),
        .Q(raw_W[108]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[109] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[109]),
        .Q(raw_W[109]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[10] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[10]),
        .Q(raw_W[10]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[110] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[110]),
        .Q(raw_W[110]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[111] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[111]),
        .Q(raw_W[111]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[112] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[112]),
        .Q(raw_W[112]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[113] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[113]),
        .Q(raw_W[113]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[114] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[114]),
        .Q(raw_W[114]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[115] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[115]),
        .Q(raw_W[115]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[116] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[116]),
        .Q(raw_W[116]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[117] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[117]),
        .Q(raw_W[117]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[118] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[118]),
        .Q(raw_W[118]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[119] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[119]),
        .Q(raw_W[119]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[11] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[11]),
        .Q(raw_W[11]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[120] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[120]),
        .Q(raw_W[120]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[121] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[121]),
        .Q(raw_W[121]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[122] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[122]),
        .Q(raw_W[122]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[123] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[123]),
        .Q(raw_W[123]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[124] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[124]),
        .Q(raw_W[124]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[125] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[125]),
        .Q(raw_W[125]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[126] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[126]),
        .Q(raw_W[126]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[127] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[127]),
        .Q(raw_W[127]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[12] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[12]),
        .Q(raw_W[12]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[13] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[13]),
        .Q(raw_W[13]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[14] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[14]),
        .Q(raw_W[14]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[15] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[15]),
        .Q(raw_W[15]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[16] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[16]),
        .Q(raw_W[16]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[17] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[17]),
        .Q(raw_W[17]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[18] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[18]),
        .Q(raw_W[18]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[19] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[19]),
        .Q(raw_W[19]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[1] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[1]),
        .Q(raw_W[1]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[20] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[20]),
        .Q(raw_W[20]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[21] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[21]),
        .Q(raw_W[21]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[22] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[22]),
        .Q(raw_W[22]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[23] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[23]),
        .Q(raw_W[23]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[24] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[24]),
        .Q(raw_W[24]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[25] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[25]),
        .Q(raw_W[25]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[26] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[26]),
        .Q(raw_W[26]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[27] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[27]),
        .Q(raw_W[27]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[28] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[28]),
        .Q(raw_W[28]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[29] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[29]),
        .Q(raw_W[29]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[2] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[2]),
        .Q(raw_W[2]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[30] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[30]),
        .Q(raw_W[30]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[31] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[31]),
        .Q(raw_W[31]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[32] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[32]),
        .Q(raw_W[32]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[33] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[33]),
        .Q(raw_W[33]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[34] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[34]),
        .Q(raw_W[34]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[35] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[35]),
        .Q(raw_W[35]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[36] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[36]),
        .Q(raw_W[36]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[37] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[37]),
        .Q(raw_W[37]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[38] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[38]),
        .Q(raw_W[38]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[39] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[39]),
        .Q(raw_W[39]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[3] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[3]),
        .Q(raw_W[3]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[40] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[40]),
        .Q(raw_W[40]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[41] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[41]),
        .Q(raw_W[41]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[42] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[42]),
        .Q(raw_W[42]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[43] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[43]),
        .Q(raw_W[43]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[44] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[44]),
        .Q(raw_W[44]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[45] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[45]),
        .Q(raw_W[45]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[46] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[46]),
        .Q(raw_W[46]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[47] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[47]),
        .Q(raw_W[47]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[48] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[48]),
        .Q(raw_W[48]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[49] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[49]),
        .Q(raw_W[49]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[4] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[4]),
        .Q(raw_W[4]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[50] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[50]),
        .Q(raw_W[50]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[51] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[51]),
        .Q(raw_W[51]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[52] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[52]),
        .Q(raw_W[52]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[53] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[53]),
        .Q(raw_W[53]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[54] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[54]),
        .Q(raw_W[54]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[55] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[55]),
        .Q(raw_W[55]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[56] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[56]),
        .Q(raw_W[56]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[57] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[57]),
        .Q(raw_W[57]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[58] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[58]),
        .Q(raw_W[58]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[59] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[59]),
        .Q(raw_W[59]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[5] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[5]),
        .Q(raw_W[5]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[60] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[60]),
        .Q(raw_W[60]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[61] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[61]),
        .Q(raw_W[61]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[62] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[62]),
        .Q(raw_W[62]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[63] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[63]),
        .Q(raw_W[63]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[64] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[64]),
        .Q(raw_W[64]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[65] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[65]),
        .Q(raw_W[65]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[66] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[66]),
        .Q(raw_W[66]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[67] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[67]),
        .Q(raw_W[67]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[68] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[68]),
        .Q(raw_W[68]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[69] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[69]),
        .Q(raw_W[69]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[6] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[6]),
        .Q(raw_W[6]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[70] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[70]),
        .Q(raw_W[70]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[71] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[71]),
        .Q(raw_W[71]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[72] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[72]),
        .Q(raw_W[72]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[73] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[73]),
        .Q(raw_W[73]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[74] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[74]),
        .Q(raw_W[74]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[75] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[75]),
        .Q(raw_W[75]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[76] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[76]),
        .Q(raw_W[76]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[77] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[77]),
        .Q(raw_W[77]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[78] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[78]),
        .Q(raw_W[78]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[79] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[79]),
        .Q(raw_W[79]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[7] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[7]),
        .Q(raw_W[7]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[80] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[80]),
        .Q(raw_W[80]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[81] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[81]),
        .Q(raw_W[81]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[82] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[82]),
        .Q(raw_W[82]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[83] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[83]),
        .Q(raw_W[83]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[84] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[84]),
        .Q(raw_W[84]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[85] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[85]),
        .Q(raw_W[85]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[86] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[86]),
        .Q(raw_W[86]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[87] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[87]),
        .Q(raw_W[87]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[88] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[88]),
        .Q(raw_W[88]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[89] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[89]),
        .Q(raw_W[89]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[8] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[8]),
        .Q(raw_W[8]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[90] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[90]),
        .Q(raw_W[90]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[91] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[91]),
        .Q(raw_W[91]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[92] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[92]),
        .Q(raw_W[92]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[93] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[93]),
        .Q(raw_W[93]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[94] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[94]),
        .Q(raw_W[94]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[95] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[95]),
        .Q(raw_W[95]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[96] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[96]),
        .Q(raw_W[96]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[97] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[97]),
        .Q(raw_W[97]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[98] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[98]),
        .Q(raw_W[98]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[99] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[99]),
        .Q(raw_W[99]),
        .R(1'b0));
  FDRE \deci_low.raw_W_reg[9] 
       (.C(clk),
        .CE(mux_active),
        .D(mux_W[9]),
        .Q(raw_W[9]),
        .R(1'b0));
  FDRE \deci_low.raw_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(mux_active),
        .Q(raw_wr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF540000)) 
    \deci_low.reset_active[0]_i_1 
       (.I0(reset_active[0]),
        .I1(reset_active[1]),
        .I2(reset_active[2]),
        .I3(\deci_low.reset_delay[1]_i_2_n_0 ),
        .I4(resetn),
        .O(\deci_low.reset_active[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.reset_active[1]_i_1 
       (.I0(reset_active[0]),
        .I1(reset_active[1]),
        .O(\deci_low.reset_active[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \deci_low.reset_active[2]_i_1 
       (.I0(reset_delay[1]),
        .I1(reset_delay[2]),
        .I2(reset_delay[0]),
        .I3(resetn),
        .O(\deci_low.reset_active[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \deci_low.reset_active[2]_i_2 
       (.I0(reset_active[0]),
        .I1(reset_active[1]),
        .I2(reset_active[2]),
        .O(\deci_low.reset_active[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \deci_low.reset_active[2]_i_3 
       (.I0(reset_active[1]),
        .I1(reset_active[0]),
        .I2(reset_active[2]),
        .O(\deci_low.reset_active[2]_i_3_n_0 ));
  FDRE \deci_low.reset_active_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.reset_active[0]_i_1_n_0 ),
        .Q(reset_active[0]),
        .R(1'b0));
  FDSE \deci_low.reset_active_reg[1] 
       (.C(clk),
        .CE(\deci_low.reset_active[2]_i_2_n_0 ),
        .D(\deci_low.reset_active[1]_i_1_n_0 ),
        .Q(reset_active[1]),
        .S(\deci_low.reset_active[2]_i_1_n_0 ));
  FDSE \deci_low.reset_active_reg[2] 
       (.C(clk),
        .CE(\deci_low.reset_active[2]_i_2_n_0 ),
        .D(\deci_low.reset_active[2]_i_3_n_0 ),
        .Q(reset_active[2]),
        .S(\deci_low.reset_active[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.reset_delay[0]_i_1 
       (.I0(reset_delay[0]),
        .O(reset_delay01_in));
  LUT2 #(
    .INIT(4'hE)) 
    \deci_low.reset_delay[1]_i_1 
       (.I0(mux_active),
        .I1(freq_wr),
        .O(reset_delay0));
  LUT3 #(
    .INIT(8'hFE)) 
    \deci_low.reset_delay[1]_i_2 
       (.I0(reset_delay[0]),
        .I1(reset_delay[2]),
        .I2(reset_delay[1]),
        .O(\deci_low.reset_delay[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.reset_delay[1]_i_3 
       (.I0(reset_delay[0]),
        .I1(reset_delay[1]),
        .O(\deci_low.reset_delay[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \deci_low.reset_delay[2]_i_1 
       (.I0(reset_delay[0]),
        .I1(reset_delay[2]),
        .I2(reset_delay[1]),
        .O(\deci_low.reset_delay[2]_i_1_n_0 ));
  FDSE \deci_low.reset_delay_reg[0] 
       (.C(clk),
        .CE(\deci_low.reset_delay[1]_i_2_n_0 ),
        .D(reset_delay01_in),
        .Q(reset_delay[0]),
        .S(reset_delay0));
  FDSE \deci_low.reset_delay_reg[1] 
       (.C(clk),
        .CE(\deci_low.reset_delay[1]_i_2_n_0 ),
        .D(\deci_low.reset_delay[1]_i_3_n_0 ),
        .Q(reset_delay[1]),
        .S(reset_delay0));
  FDSE \deci_low.reset_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.reset_delay[2]_i_1_n_0 ),
        .Q(reset_delay[2]),
        .S(reset_delay0));
  LUT3 #(
    .INIT(8'h80)) 
    \deci_low.sim_active_1_i_1 
       (.I0(sim_active_1),
        .I1(resetn),
        .I2(sim_rd),
        .O(\deci_low.sim_active_1_i_1_n_0 ));
  FDSE \deci_low.sim_active_1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.sim_active_1_i_1_n_0 ),
        .Q(sim_active_1),
        .S(sim_start));
  FDRE \deci_low.sim_active_2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(sim_active_1),
        .Q(sim_active_2),
        .R(\deci_low.sim_active_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.sim_active_i_1 
       (.I0(resetn),
        .O(\deci_low.sim_active_i_1_n_0 ));
  FDRE \deci_low.sim_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(sim_active_2),
        .Q(sim_active),
        .R(\deci_low.sim_active_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.sim_count[0]_i_1 
       (.I0(sim_count__0[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h54FF)) 
    \deci_low.sim_count[1]_i_1 
       (.I0(sim_wr),
        .I1(sim_count__0[0]),
        .I2(sim_count__0[1]),
        .I3(sim_resetn),
        .O(\deci_low.sim_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \deci_low.sim_count[1]_i_2 
       (.I0(sim_count__0[0]),
        .I1(sim_count__0[1]),
        .O(p_1_in[1]));
  FDRE \deci_low.sim_count_reg[0] 
       (.C(sim_clk),
        .CE(sim_wr),
        .D(p_1_in[0]),
        .Q(sim_count__0[0]),
        .R(\deci_low.sim_count[1]_i_1_n_0 ));
  FDRE \deci_low.sim_count_reg[1] 
       (.C(sim_clk),
        .CE(sim_wr),
        .D(p_1_in[1]),
        .Q(sim_count__0[1]),
        .R(\deci_low.sim_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \deci_low.sim_curr_data[127]_i_1 
       (.I0(sim_count__0[0]),
        .I1(sim_count__0[1]),
        .I2(sim_resetn),
        .I3(sim_wr),
        .O(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80A8)) 
    \deci_low.sim_curr_data[127]_i_2 
       (.I0(sim_resetn),
        .I1(sim_count__0[1]),
        .I2(sim_count__0[0]),
        .I3(sim_wr),
        .O(sim_curr_data[127]));
  LUT4 #(
    .INIT(16'h0008)) 
    \deci_low.sim_curr_data[31]_i_1 
       (.I0(sim_resetn),
        .I1(sim_wr),
        .I2(sim_count__0[0]),
        .I3(sim_count__0[1]),
        .O(sim_curr_data[31]));
  LUT4 #(
    .INIT(16'h0020)) 
    \deci_low.sim_curr_data[63]_i_1 
       (.I0(sim_count__0[0]),
        .I1(sim_count__0[1]),
        .I2(sim_resetn),
        .I3(sim_wr),
        .O(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \deci_low.sim_curr_data[63]_i_2 
       (.I0(sim_resetn),
        .I1(sim_count__0[1]),
        .I2(sim_count__0[0]),
        .O(sim_curr_data[63]));
  LUT4 #(
    .INIT(16'h0060)) 
    \deci_low.sim_curr_data[95]_i_1 
       (.I0(sim_count__0[1]),
        .I1(sim_count__0[0]),
        .I2(sim_resetn),
        .I3(sim_wr),
        .O(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2028)) 
    \deci_low.sim_curr_data[95]_i_2 
       (.I0(sim_resetn),
        .I1(sim_count__0[0]),
        .I2(sim_count__0[1]),
        .I3(sim_wr),
        .O(sim_curr_data[95]));
  FDRE \deci_low.sim_curr_data_reg[0] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[0]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[100] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[4]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[100] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[101] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[5]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[101] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[102] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[6]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[102] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[103] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[7]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[103] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[104] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[8]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[104] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[105] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[9]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[105] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[106] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[10]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[106] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[107] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[11]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[107] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[108] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[12]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[108] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[109] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[13]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[109] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[10] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[10]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[110] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[14]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[110] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[111] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[15]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[111] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[112] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[16]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[112] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[113] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[17]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[113] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[114] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[18]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[114] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[115] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[19]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[115] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[116] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[20]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[116] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[117] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[21]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[117] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[118] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[22]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[118] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[119] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[23]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[119] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[11] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[11]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[120] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[24]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[120] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[121] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[25]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[121] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[122] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[26]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[122] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[123] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[27]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[123] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[124] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[28]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[124] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[125] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[29]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[125] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[126] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[30]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[126] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[127] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[31]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[127] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[12] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[12]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[13] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[13]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[14] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[14]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[15] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[15]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[16] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[16]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[17] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[17]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[18] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[18]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[19] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[19]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[1] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[1]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[20] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[20]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[21] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[21]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[22] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[22]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[23] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[23]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[24] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[24]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[25] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[25]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[26] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[26]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[27] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[27]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[28] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[28]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[29] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[29]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[2] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[2]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[30] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[30]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[31] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[31]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[32] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[0]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[32] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[33] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[1]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[33] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[34] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[2]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[34] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[35] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[3]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[35] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[36] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[4]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[36] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[37] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[5]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[37] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[38] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[6]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[38] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[39] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[7]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[39] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[3] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[3]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[40] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[8]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[40] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[41] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[9]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[41] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[42] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[10]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[42] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[43] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[11]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[43] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[44] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[12]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[44] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[45] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[13]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[45] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[46] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[14]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[46] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[47] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[15]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[47] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[48] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[16]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[48] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[49] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[17]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[49] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[4] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[4]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[50] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[18]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[50] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[51] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[19]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[51] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[52] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[20]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[52] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[53] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[21]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[53] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[54] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[22]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[54] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[55] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[23]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[55] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[56] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[24]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[56] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[57] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[25]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[57] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[58] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[26]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[58] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[59] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[27]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[59] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[5] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[5]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[60] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[28]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[60] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[61] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[29]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[61] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[62] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[30]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[62] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[63] 
       (.C(sim_clk),
        .CE(sim_curr_data[63]),
        .D(sim_data[31]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[63] ),
        .R(\deci_low.sim_curr_data[63]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[64] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[0]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[64] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[65] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[1]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[65] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[66] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[2]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[66] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[67] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[3]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[67] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[68] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[4]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[68] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[69] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[5]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[69] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[6] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[6]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[70] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[6]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[70] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[71] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[7]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[71] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[72] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[8]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[72] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[73] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[9]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[73] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[74] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[10]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[74] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[75] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[11]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[75] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[76] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[12]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[76] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[77] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[13]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[77] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[78] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[14]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[78] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[79] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[15]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[79] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[7] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[7]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[80] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[16]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[80] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[81] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[17]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[81] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[82] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[18]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[82] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[83] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[19]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[83] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[84] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[20]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[84] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[85] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[21]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[85] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[86] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[22]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[86] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[87] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[23]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[87] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[88] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[24]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[88] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[89] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[25]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[89] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[8] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[8]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \deci_low.sim_curr_data_reg[90] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[26]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[90] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[91] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[27]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[91] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[92] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[28]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[92] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[93] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[29]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[93] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[94] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[30]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[94] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[95] 
       (.C(sim_clk),
        .CE(sim_curr_data[95]),
        .D(sim_data[31]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[95] ),
        .R(\deci_low.sim_curr_data[95]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[96] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[0]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[96] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[97] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[1]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[97] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[98] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[2]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[98] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[99] 
       (.C(sim_clk),
        .CE(sim_curr_data[127]),
        .D(sim_data[3]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[99] ),
        .R(\deci_low.sim_curr_data[127]_i_1_n_0 ));
  FDRE \deci_low.sim_curr_data_reg[9] 
       (.C(sim_clk),
        .CE(sim_curr_data[31]),
        .D(sim_data[9]),
        .Q(\deci_low.sim_curr_data_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hD400)) 
    \deci_low.sim_curr_wr_i_1 
       (.I0(sim_wr),
        .I1(sim_count__0[1]),
        .I2(sim_count__0[0]),
        .I3(sim_resetn),
        .O(\deci_low.sim_curr_wr_i_1_n_0 ));
  FDRE \deci_low.sim_curr_wr_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_curr_wr_i_1_n_0 ),
        .Q(\deci_low.sim_curr_wr_reg_n_0 ),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[0] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[0] ),
        .Q(sim_in_data[0]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[100] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[100] ),
        .Q(sim_in_data[100]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[101] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[101] ),
        .Q(sim_in_data[101]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[102] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[102] ),
        .Q(sim_in_data[102]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[103] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[103] ),
        .Q(sim_in_data[103]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[104] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[104] ),
        .Q(sim_in_data[104]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[105] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[105] ),
        .Q(sim_in_data[105]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[106] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[106] ),
        .Q(sim_in_data[106]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[107] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[107] ),
        .Q(sim_in_data[107]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[108] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[108] ),
        .Q(sim_in_data[108]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[109] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[109] ),
        .Q(sim_in_data[109]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[10] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[10] ),
        .Q(sim_in_data[10]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[110] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[110] ),
        .Q(sim_in_data[110]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[111] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[111] ),
        .Q(sim_in_data[111]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[112] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[112] ),
        .Q(sim_in_data[112]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[113] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[113] ),
        .Q(sim_in_data[113]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[114] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[114] ),
        .Q(sim_in_data[114]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[115] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[115] ),
        .Q(sim_in_data[115]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[116] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[116] ),
        .Q(sim_in_data[116]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[117] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[117] ),
        .Q(sim_in_data[117]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[118] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[118] ),
        .Q(sim_in_data[118]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[119] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[119] ),
        .Q(sim_in_data[119]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[11] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[11] ),
        .Q(sim_in_data[11]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[120] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[120] ),
        .Q(sim_in_data[120]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[121] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[121] ),
        .Q(sim_in_data[121]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[122] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[122] ),
        .Q(sim_in_data[122]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[123] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[123] ),
        .Q(sim_in_data[123]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[124] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[124] ),
        .Q(sim_in_data[124]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[125] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[125] ),
        .Q(sim_in_data[125]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[126] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[126] ),
        .Q(sim_in_data[126]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[127] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[127] ),
        .Q(sim_in_data[127]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[12] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[12] ),
        .Q(sim_in_data[12]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[13] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[13] ),
        .Q(sim_in_data[13]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[14] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[14] ),
        .Q(sim_in_data[14]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[15] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[15] ),
        .Q(sim_in_data[15]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[16] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[16] ),
        .Q(sim_in_data[16]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[17] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[17] ),
        .Q(sim_in_data[17]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[18] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[18] ),
        .Q(sim_in_data[18]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[19] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[19] ),
        .Q(sim_in_data[19]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[1] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[1] ),
        .Q(sim_in_data[1]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[20] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[20] ),
        .Q(sim_in_data[20]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[21] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[21] ),
        .Q(sim_in_data[21]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[22] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[22] ),
        .Q(sim_in_data[22]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[23] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[23] ),
        .Q(sim_in_data[23]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[24] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[24] ),
        .Q(sim_in_data[24]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[25] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[25] ),
        .Q(sim_in_data[25]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[26] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[26] ),
        .Q(sim_in_data[26]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[27] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[27] ),
        .Q(sim_in_data[27]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[28] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[28] ),
        .Q(sim_in_data[28]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[29] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[29] ),
        .Q(sim_in_data[29]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[2] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[2] ),
        .Q(sim_in_data[2]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[30] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[30] ),
        .Q(sim_in_data[30]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[31] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[31] ),
        .Q(sim_in_data[31]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[32] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[32] ),
        .Q(sim_in_data[32]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[33] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[33] ),
        .Q(sim_in_data[33]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[34] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[34] ),
        .Q(sim_in_data[34]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[35] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[35] ),
        .Q(sim_in_data[35]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[36] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[36] ),
        .Q(sim_in_data[36]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[37] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[37] ),
        .Q(sim_in_data[37]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[38] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[38] ),
        .Q(sim_in_data[38]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[39] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[39] ),
        .Q(sim_in_data[39]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[3] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[3] ),
        .Q(sim_in_data[3]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[40] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[40] ),
        .Q(sim_in_data[40]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[41] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[41] ),
        .Q(sim_in_data[41]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[42] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[42] ),
        .Q(sim_in_data[42]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[43] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[43] ),
        .Q(sim_in_data[43]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[44] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[44] ),
        .Q(sim_in_data[44]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[45] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[45] ),
        .Q(sim_in_data[45]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[46] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[46] ),
        .Q(sim_in_data[46]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[47] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[47] ),
        .Q(sim_in_data[47]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[48] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[48] ),
        .Q(sim_in_data[48]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[49] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[49] ),
        .Q(sim_in_data[49]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[4] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[4] ),
        .Q(sim_in_data[4]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[50] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[50] ),
        .Q(sim_in_data[50]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[51] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[51] ),
        .Q(sim_in_data[51]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[52] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[52] ),
        .Q(sim_in_data[52]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[53] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[53] ),
        .Q(sim_in_data[53]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[54] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[54] ),
        .Q(sim_in_data[54]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[55] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[55] ),
        .Q(sim_in_data[55]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[56] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[56] ),
        .Q(sim_in_data[56]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[57] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[57] ),
        .Q(sim_in_data[57]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[58] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[58] ),
        .Q(sim_in_data[58]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[59] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[59] ),
        .Q(sim_in_data[59]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[5] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[5] ),
        .Q(sim_in_data[5]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[60] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[60] ),
        .Q(sim_in_data[60]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[61] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[61] ),
        .Q(sim_in_data[61]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[62] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[62] ),
        .Q(sim_in_data[62]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[63] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[63] ),
        .Q(sim_in_data[63]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[64] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[64] ),
        .Q(sim_in_data[64]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[65] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[65] ),
        .Q(sim_in_data[65]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[66] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[66] ),
        .Q(sim_in_data[66]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[67] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[67] ),
        .Q(sim_in_data[67]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[68] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[68] ),
        .Q(sim_in_data[68]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[69] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[69] ),
        .Q(sim_in_data[69]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[6] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[6] ),
        .Q(sim_in_data[6]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[70] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[70] ),
        .Q(sim_in_data[70]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[71] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[71] ),
        .Q(sim_in_data[71]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[72] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[72] ),
        .Q(sim_in_data[72]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[73] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[73] ),
        .Q(sim_in_data[73]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[74] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[74] ),
        .Q(sim_in_data[74]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[75] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[75] ),
        .Q(sim_in_data[75]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[76] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[76] ),
        .Q(sim_in_data[76]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[77] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[77] ),
        .Q(sim_in_data[77]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[78] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[78] ),
        .Q(sim_in_data[78]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[79] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[79] ),
        .Q(sim_in_data[79]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[7] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[7] ),
        .Q(sim_in_data[7]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[80] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[80] ),
        .Q(sim_in_data[80]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[81] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[81] ),
        .Q(sim_in_data[81]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[82] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[82] ),
        .Q(sim_in_data[82]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[83] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[83] ),
        .Q(sim_in_data[83]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[84] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[84] ),
        .Q(sim_in_data[84]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[85] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[85] ),
        .Q(sim_in_data[85]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[86] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[86] ),
        .Q(sim_in_data[86]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[87] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[87] ),
        .Q(sim_in_data[87]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[88] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[88] ),
        .Q(sim_in_data[88]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[89] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[89] ),
        .Q(sim_in_data[89]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[8] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[8] ),
        .Q(sim_in_data[8]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[90] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[90] ),
        .Q(sim_in_data[90]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[91] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[91] ),
        .Q(sim_in_data[91]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[92] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[92] ),
        .Q(sim_in_data[92]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[93] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[93] ),
        .Q(sim_in_data[93]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[94] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[94] ),
        .Q(sim_in_data[94]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[95] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[95] ),
        .Q(sim_in_data[95]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[96] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[96] ),
        .Q(sim_in_data[96]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[97] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[97] ),
        .Q(sim_in_data[97]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[98] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[98] ),
        .Q(sim_in_data[98]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[99] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[99] ),
        .Q(sim_in_data[99]),
        .R(1'b0));
  FDRE \deci_low.sim_in_data_reg[9] 
       (.C(sim_clk),
        .CE(\deci_low.sim_curr_wr_reg_n_0 ),
        .D(\deci_low.sim_curr_data_reg_n_0_[9] ),
        .Q(sim_in_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \deci_low.sim_rd_i_1 
       (.I0(sim_rd),
        .I1(sim_empty_W),
        .I2(sim_empty_E),
        .I3(sim_empty_N),
        .O(\deci_low.sim_rd_i_1_n_0 ));
  FDSE \deci_low.sim_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.sim_rd_i_1_n_0 ),
        .Q(sim_rd),
        .S(sim_start));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.sim_wr_E_i_1 
       (.I0(\deci_low.sim_curr_wr_reg_n_0 ),
        .O(\deci_low.sim_wr_E_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \deci_low.sim_wr_E_i_2 
       (.I0(sim_channel[0]),
        .I1(sim_channel[1]),
        .O(\deci_low.sim_wr_E_i_2_n_0 ));
  FDRE \deci_low.sim_wr_E_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_wr_E_i_2_n_0 ),
        .Q(sim_wr_E),
        .R(\deci_low.sim_wr_E_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \deci_low.sim_wr_N_i_1 
       (.I0(sim_channel[0]),
        .I1(sim_channel[1]),
        .O(\deci_low.sim_wr_N_i_1_n_0 ));
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
  FDRE \deci_low.sim_wr_W_reg 
       (.C(sim_clk),
        .CE(1'b1),
        .D(\deci_low.sim_wr_W_i_1_n_0 ),
        .Q(sim_wr_W),
        .R(\deci_low.sim_wr_E_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "fifo_sim,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_sim fifo_sim_E_i
       (.din(sim_in_data),
        .dout(sim_out_E),
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
        .dout(sim_out_N),
        .empty(sim_empty_N),
        .full(NLW_fifo_sim_N_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(sim_rd),
        .rd_rst_busy(NLW_fifo_sim_N_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_sim_N_i_i_1_n_0),
        .wr_clk(sim_clk),
        .wr_en(sim_wr_N),
        .wr_rst_busy(NLW_fifo_sim_N_i_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .dout(sim_out_W),
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
  ps_deci_low_0_0_fir_deci_low fir_freq_E_i
       (.aclk(clk),
        .aresetn(fir_resetn),
        .m_axis_data_tdata({NLW_fir_freq_E_i_m_axis_data_tdata_UNCONNECTED[31],fir_freq_E,NLW_fir_freq_E_i_m_axis_data_tdata_UNCONNECTED[14:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(mux_E),
        .s_axis_data_tready(NLW_fir_freq_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low fir_freq_N_i
       (.aclk(clk),
        .aresetn(fir_resetn),
        .m_axis_data_tdata({NLW_fir_freq_N_i_m_axis_data_tdata_UNCONNECTED[31],fir_freq_N,NLW_fir_freq_N_i_m_axis_data_tdata_UNCONNECTED[14:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(mux_N),
        .s_axis_data_tready(NLW_fir_freq_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low_HD2 fir_freq_W_i
       (.aclk(clk),
        .aresetn(fir_resetn),
        .m_axis_data_tdata({NLW_fir_freq_W_i_m_axis_data_tdata_UNCONNECTED[31],fir_freq_W,NLW_fir_freq_W_i_m_axis_data_tdata_UNCONNECTED[14:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(mux_W),
        .s_axis_data_tready(NLW_fir_freq_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mux_active));
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
