// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov  8 15:11:51 2025
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
    raw_clk,
    raw_ready,
    raw_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [159:0]data_N;
  input ready_N;
  input [159:0]data_E;
  input ready_E;
  input [159:0]data_W;
  input ready_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input raw_clk;
  output raw_ready;
  output [237:0]raw_data;

  wire clk;
  wire [159:0]data_E;
  wire [159:0]data_N;
  wire [159:0]data_W;
  wire raw_clk;
  wire [237:0]raw_data;
  wire raw_ready;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;

  ps_deci_low_0_0_deci_low inst
       (.clk(clk),
        .data_E(data_E),
        .data_N(data_N),
        .data_W(data_W),
        .raw_clk(raw_clk),
        .raw_data(raw_data),
        .raw_ready(raw_ready),
        .ready_E(ready_E),
        .ready_N(ready_N),
        .ready_W(ready_W),
        .resetn(resetn));
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
    raw_clk,
    raw_ready,
    raw_data);
  input clk;
  input resetn;
  input [159:0]data_N;
  input ready_N;
  input [159:0]data_E;
  input ready_E;
  input [159:0]data_W;
  input ready_W;
  input raw_clk;
  output raw_ready;
  output [237:0]raw_data;

  (* MARK_DEBUG *) wire [13:0]E0;
  (* MARK_DEBUG *) wire [13:0]E1;
  (* MARK_DEBUG *) wire [13:0]E2;
  (* MARK_DEBUG *) wire [13:0]E3;
  (* MARK_DEBUG *) wire [13:0]E4;
  (* MARK_DEBUG *) wire [13:0]E5;
  (* MARK_DEBUG *) wire [13:0]E6;
  (* MARK_DEBUG *) wire [13:0]E7;
  (* MARK_DEBUG *) wire [13:0]E8;
  (* MARK_DEBUG *) wire [13:0]E9;
  (* MARK_DEBUG *) wire [13:0]N0;
  (* MARK_DEBUG *) wire [13:0]N1;
  (* MARK_DEBUG *) wire [13:0]N2;
  (* MARK_DEBUG *) wire [13:0]N3;
  (* MARK_DEBUG *) wire [13:0]N4;
  (* MARK_DEBUG *) wire [13:0]N5;
  (* MARK_DEBUG *) wire [13:0]N6;
  (* MARK_DEBUG *) wire [13:0]N7;
  (* MARK_DEBUG *) wire [13:0]N8;
  (* MARK_DEBUG *) wire [13:0]N9;
  (* MARK_DEBUG *) wire [13:0]W0;
  (* MARK_DEBUG *) wire [13:0]W1;
  (* MARK_DEBUG *) wire [13:0]W2;
  (* MARK_DEBUG *) wire [13:0]W3;
  (* MARK_DEBUG *) wire [13:0]W4;
  (* MARK_DEBUG *) wire [13:0]W5;
  (* MARK_DEBUG *) wire [13:0]W6;
  (* MARK_DEBUG *) wire [13:0]W7;
  (* MARK_DEBUG *) wire [13:0]W8;
  (* MARK_DEBUG *) wire [13:0]W9;
  wire active;
  (* async_reg = "true" *) wire active_1;
  (* async_reg = "true" *) wire active_2;
  wire clear;
  wire clk;
  (* MARK_DEBUG *) wire [13:0]dE;
  (* MARK_DEBUG *) wire [13:0]dN;
  (* MARK_DEBUG *) wire [13:0]dW;
  wire [145:0]\^data_E ;
  wire [145:0]\^data_N ;
  wire [145:0]\^data_W ;
  wire \deci_low.active_i_1_n_0 ;
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
  wire fifo_raw_i_i_1_n_0;
  wire [158:17]fir_raw_E;
  wire [158:17]fir_raw_N;
  wire [158:17]fir_raw_W;
  wire raw_active;
  wire raw_active_i_1_n_0;
  wire raw_active_i_2_n_0;
  wire raw_clk;
  wire [237:0]raw_data;
  wire [11:0]raw_delay0;
  wire \raw_delay[11]_i_1_n_0 ;
  wire \raw_delay[11]_i_3_n_0 ;
  wire \raw_delay[11]_i_4_n_0 ;
  wire \raw_delay[11]_i_5_n_0 ;
  wire \raw_delay[11]_i_6_n_0 ;
  wire \raw_delay[11]_i_7_n_0 ;
  wire \raw_delay[8]_i_2_n_0 ;
  wire \raw_delay[8]_i_3_n_0 ;
  wire \raw_delay[8]_i_4_n_0 ;
  wire \raw_delay[8]_i_5_n_0 ;
  wire \raw_delay[8]_i_6_n_0 ;
  wire \raw_delay[8]_i_7_n_0 ;
  wire \raw_delay[8]_i_8_n_0 ;
  wire \raw_delay[8]_i_9_n_0 ;
  wire [11:0]raw_delay_reg;
  wire \raw_delay_reg[11]_i_2_n_6 ;
  wire \raw_delay_reg[11]_i_2_n_7 ;
  wire \raw_delay_reg[8]_i_1_n_0 ;
  wire \raw_delay_reg[8]_i_1_n_1 ;
  wire \raw_delay_reg[8]_i_1_n_2 ;
  wire \raw_delay_reg[8]_i_1_n_3 ;
  wire \raw_delay_reg[8]_i_1_n_4 ;
  wire \raw_delay_reg[8]_i_1_n_5 ;
  wire \raw_delay_reg[8]_i_1_n_6 ;
  wire \raw_delay_reg[8]_i_1_n_7 ;
  wire raw_fifo_empty;
  wire raw_fifo_wr;
  wire [237:0]raw_in_data;
  wire [237:0]raw_out_data;
  wire raw_ready;
  (* MARK_DEBUG *) wire ready_E;
  (* MARK_DEBUG *) wire ready_N;
  (* MARK_DEBUG *) wire ready_W;
  wire resetn;
  (* MARK_DEBUG *) wire valid_E;
  (* MARK_DEBUG *) wire valid_N;
  (* MARK_DEBUG *) wire valid_W;
  wire valid_raw_E;
  wire valid_raw_N;
  wire valid_raw_W;
  wire [7:3]\NLW_deci_low.counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_low.counter_reg[24]_i_1_O_UNCONNECTED ;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire [447:238]NLW_fifo_raw_i_dout_UNCONNECTED;
  wire NLW_fir_E_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_N_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_W_i_s_axis_data_tready_UNCONNECTED;
  wire [31:0]NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED;
  wire [159:0]NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED;
  wire [159:0]NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED;
  wire [159:0]NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED;
  wire [7:2]\NLW_raw_delay_reg[11]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_raw_delay_reg[11]_i_2_O_UNCONNECTED ;

  assign E0 = data_E[15:2];
  assign E1 = data_E[31:18];
  assign E2 = data_E[47:34];
  assign E3 = data_E[63:50];
  assign E4 = data_E[79:66];
  assign E5 = data_E[95:82];
  assign E6 = data_E[111:98];
  assign E7 = data_E[127:114];
  assign E8 = data_E[143:130];
  assign E9 = data_E[159:146];
  assign N0 = data_N[15:2];
  assign N1 = data_N[31:18];
  assign N2 = data_N[47:34];
  assign N3 = data_N[63:50];
  assign N4 = data_N[79:66];
  assign N5 = data_N[95:82];
  assign N6 = data_N[111:98];
  assign N7 = data_N[127:114];
  assign N8 = data_N[143:130];
  assign N9 = data_N[159:146];
  assign W0 = data_W[15:2];
  assign W1 = data_W[31:18];
  assign W2 = data_W[47:34];
  assign W3 = data_W[63:50];
  assign W4 = data_W[79:66];
  assign W5 = data_W[95:82];
  assign W6 = data_W[111:98];
  assign W7 = data_W[127:114];
  assign W8 = data_W[143:130];
  assign W9 = data_W[159:146];
  assign \^data_E [145:144] = data_E[145:144];
  assign \^data_E [129:128] = data_E[129:128];
  assign \^data_E [113:112] = data_E[113:112];
  assign \^data_E [97:96] = data_E[97:96];
  assign \^data_E [81:80] = data_E[81:80];
  assign \^data_E [65:64] = data_E[65:64];
  assign \^data_E [49:48] = data_E[49:48];
  assign \^data_E [33:32] = data_E[33:32];
  assign \^data_E [17:16] = data_E[17:16];
  assign \^data_E [1:0] = data_E[1:0];
  assign \^data_N [145:144] = data_N[145:144];
  assign \^data_N [129:128] = data_N[129:128];
  assign \^data_N [113:112] = data_N[113:112];
  assign \^data_N [97:96] = data_N[97:96];
  assign \^data_N [81:80] = data_N[81:80];
  assign \^data_N [65:64] = data_N[65:64];
  assign \^data_N [49:48] = data_N[49:48];
  assign \^data_N [33:32] = data_N[33:32];
  assign \^data_N [17:16] = data_N[17:16];
  assign \^data_N [1:0] = data_N[1:0];
  assign \^data_W [145:144] = data_W[145:144];
  assign \^data_W [129:128] = data_W[129:128];
  assign \^data_W [113:112] = data_W[113:112];
  assign \^data_W [97:96] = data_W[97:96];
  assign \^data_W [81:80] = data_W[81:80];
  assign \^data_W [65:64] = data_W[65:64];
  assign \^data_W [49:48] = data_W[49:48];
  assign \^data_W [33:32] = data_W[33:32];
  assign \^data_W [17:16] = data_W[17:16];
  assign \^data_W [1:0] = data_W[1:0];
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \deci_low.active_i_1 
       (.I0(valid_raw_W),
        .I1(resetn),
        .I2(valid_raw_N),
        .I3(valid_raw_E),
        .O(\deci_low.active_i_1_n_0 ));
  FDRE \deci_low.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.active_i_1_n_0 ),
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
        .D(fir_raw_E[19]),
        .Q(raw_in_data[100]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[101] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[20]),
        .Q(raw_in_data[101]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[102] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[21]),
        .Q(raw_in_data[102]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[103] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[22]),
        .Q(raw_in_data[103]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[104] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[23]),
        .Q(raw_in_data[104]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[105] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[24]),
        .Q(raw_in_data[105]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[106] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[25]),
        .Q(raw_in_data[106]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[107] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[26]),
        .Q(raw_in_data[107]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[108] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[27]),
        .Q(raw_in_data[108]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[109] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[28]),
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
        .D(fir_raw_E[29]),
        .Q(raw_in_data[110]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[111] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[30]),
        .Q(raw_in_data[111]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[112] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[49]),
        .Q(raw_in_data[112]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[113] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[50]),
        .Q(raw_in_data[113]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[114] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[51]),
        .Q(raw_in_data[114]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[115] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[52]),
        .Q(raw_in_data[115]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[116] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[53]),
        .Q(raw_in_data[116]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[117] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[54]),
        .Q(raw_in_data[117]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[118] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[55]),
        .Q(raw_in_data[118]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[119] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[56]),
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
        .D(fir_raw_E[57]),
        .Q(raw_in_data[120]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[121] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[58]),
        .Q(raw_in_data[121]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[122] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[59]),
        .Q(raw_in_data[122]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[123] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[60]),
        .Q(raw_in_data[123]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[124] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[61]),
        .Q(raw_in_data[124]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[125] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[62]),
        .Q(raw_in_data[125]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[126] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[81]),
        .Q(raw_in_data[126]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[127] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[82]),
        .Q(raw_in_data[127]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[128] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[83]),
        .Q(raw_in_data[128]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[129] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[84]),
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
        .D(fir_raw_E[85]),
        .Q(raw_in_data[130]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[131] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[86]),
        .Q(raw_in_data[131]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[132] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[87]),
        .Q(raw_in_data[132]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[133] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[88]),
        .Q(raw_in_data[133]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[134] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[89]),
        .Q(raw_in_data[134]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[135] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[90]),
        .Q(raw_in_data[135]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[136] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[91]),
        .Q(raw_in_data[136]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[137] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[92]),
        .Q(raw_in_data[137]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[138] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[93]),
        .Q(raw_in_data[138]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[139] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[94]),
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
        .D(fir_raw_E[113]),
        .Q(raw_in_data[140]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[141] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[114]),
        .Q(raw_in_data[141]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[142] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[115]),
        .Q(raw_in_data[142]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[143] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[116]),
        .Q(raw_in_data[143]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[144] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[117]),
        .Q(raw_in_data[144]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[145] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[118]),
        .Q(raw_in_data[145]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[146] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[119]),
        .Q(raw_in_data[146]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[147] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[120]),
        .Q(raw_in_data[147]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[148] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[121]),
        .Q(raw_in_data[148]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[149] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[122]),
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
        .D(fir_raw_E[123]),
        .Q(raw_in_data[150]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[151] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[124]),
        .Q(raw_in_data[151]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[152] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[125]),
        .Q(raw_in_data[152]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[153] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[126]),
        .Q(raw_in_data[153]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[154] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[145]),
        .Q(raw_in_data[154]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[155] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[146]),
        .Q(raw_in_data[155]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[156] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[147]),
        .Q(raw_in_data[156]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[157] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[148]),
        .Q(raw_in_data[157]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[158] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[149]),
        .Q(raw_in_data[158]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[159] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[150]),
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
        .D(fir_raw_E[151]),
        .Q(raw_in_data[160]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[161] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[152]),
        .Q(raw_in_data[161]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[162] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[153]),
        .Q(raw_in_data[162]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[163] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[154]),
        .Q(raw_in_data[163]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[164] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[155]),
        .Q(raw_in_data[164]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[165] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[156]),
        .Q(raw_in_data[165]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[166] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[157]),
        .Q(raw_in_data[166]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[167] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[158]),
        .Q(raw_in_data[167]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[168] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[17]),
        .Q(raw_in_data[168]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[169] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[18]),
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
        .D(fir_raw_W[19]),
        .Q(raw_in_data[170]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[171] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[20]),
        .Q(raw_in_data[171]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[172] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[21]),
        .Q(raw_in_data[172]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[173] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[22]),
        .Q(raw_in_data[173]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[174] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[23]),
        .Q(raw_in_data[174]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[175] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[24]),
        .Q(raw_in_data[175]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[176] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[25]),
        .Q(raw_in_data[176]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[177] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[26]),
        .Q(raw_in_data[177]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[178] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[27]),
        .Q(raw_in_data[178]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[179] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[28]),
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
        .D(fir_raw_W[29]),
        .Q(raw_in_data[180]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[181] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[30]),
        .Q(raw_in_data[181]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[182] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[49]),
        .Q(raw_in_data[182]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[183] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[50]),
        .Q(raw_in_data[183]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[184] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[51]),
        .Q(raw_in_data[184]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[185] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[52]),
        .Q(raw_in_data[185]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[186] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[53]),
        .Q(raw_in_data[186]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[187] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[54]),
        .Q(raw_in_data[187]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[188] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[55]),
        .Q(raw_in_data[188]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[189] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[56]),
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
        .D(fir_raw_W[57]),
        .Q(raw_in_data[190]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[191] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[58]),
        .Q(raw_in_data[191]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[192] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[59]),
        .Q(raw_in_data[192]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[193] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[60]),
        .Q(raw_in_data[193]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[194] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[61]),
        .Q(raw_in_data[194]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[195] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[62]),
        .Q(raw_in_data[195]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[196] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[81]),
        .Q(raw_in_data[196]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[197] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[82]),
        .Q(raw_in_data[197]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[198] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[83]),
        .Q(raw_in_data[198]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[199] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[84]),
        .Q(raw_in_data[199]),
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
  FDRE \deci_low.raw_in_data_reg[200] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[85]),
        .Q(raw_in_data[200]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[201] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[86]),
        .Q(raw_in_data[201]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[202] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[87]),
        .Q(raw_in_data[202]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[203] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[88]),
        .Q(raw_in_data[203]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[204] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[89]),
        .Q(raw_in_data[204]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[205] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[90]),
        .Q(raw_in_data[205]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[206] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[91]),
        .Q(raw_in_data[206]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[207] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[92]),
        .Q(raw_in_data[207]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[208] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[93]),
        .Q(raw_in_data[208]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[209] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[94]),
        .Q(raw_in_data[209]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [20]),
        .Q(raw_in_data[20]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[210] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[113]),
        .Q(raw_in_data[210]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[211] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[114]),
        .Q(raw_in_data[211]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[212] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[115]),
        .Q(raw_in_data[212]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[213] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[116]),
        .Q(raw_in_data[213]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[214] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[117]),
        .Q(raw_in_data[214]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[215] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[118]),
        .Q(raw_in_data[215]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[216] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[119]),
        .Q(raw_in_data[216]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[217] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[120]),
        .Q(raw_in_data[217]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[218] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[121]),
        .Q(raw_in_data[218]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[219] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[122]),
        .Q(raw_in_data[219]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [21]),
        .Q(raw_in_data[21]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[220] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[123]),
        .Q(raw_in_data[220]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[221] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[124]),
        .Q(raw_in_data[221]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[222] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[125]),
        .Q(raw_in_data[222]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[223] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[126]),
        .Q(raw_in_data[223]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[224] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[145]),
        .Q(raw_in_data[224]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[225] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[146]),
        .Q(raw_in_data[225]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[226] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[147]),
        .Q(raw_in_data[226]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[227] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[148]),
        .Q(raw_in_data[227]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[228] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[149]),
        .Q(raw_in_data[228]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[229] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[150]),
        .Q(raw_in_data[229]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [22]),
        .Q(raw_in_data[22]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[230] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[151]),
        .Q(raw_in_data[230]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[231] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[152]),
        .Q(raw_in_data[231]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[232] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[153]),
        .Q(raw_in_data[232]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[233] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[154]),
        .Q(raw_in_data[233]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[234] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[155]),
        .Q(raw_in_data[234]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[235] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[156]),
        .Q(raw_in_data[235]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[236] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[157]),
        .Q(raw_in_data[236]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[237] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_W[158]),
        .Q(raw_in_data[237]),
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
        .D(fir_raw_N[145]),
        .Q(raw_in_data[84]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[85] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[146]),
        .Q(raw_in_data[85]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[86] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[147]),
        .Q(raw_in_data[86]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[87] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[148]),
        .Q(raw_in_data[87]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[88] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[149]),
        .Q(raw_in_data[88]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[89] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[150]),
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
        .D(fir_raw_N[151]),
        .Q(raw_in_data[90]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[91] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[152]),
        .Q(raw_in_data[91]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[92] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[153]),
        .Q(raw_in_data[92]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[93] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[154]),
        .Q(raw_in_data[93]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[94] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[155]),
        .Q(raw_in_data[94]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[95] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[156]),
        .Q(raw_in_data[95]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[96] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[157]),
        .Q(raw_in_data[96]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[97] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_N[158]),
        .Q(raw_in_data[97]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[98] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[17]),
        .Q(raw_in_data[98]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[99] 
       (.C(clk),
        .CE(active),
        .D(fir_raw_E[18]),
        .Q(raw_in_data[99]),
        .R(1'b0));
  FDRE \deci_low.raw_in_data_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\deci_low.counter_reg [9]),
        .Q(raw_in_data[9]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fifo_raw,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_low_0_0_fifo_raw fifo_raw_i
       (.din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,raw_in_data}),
        .dout({NLW_fifo_raw_i_dout_UNCONNECTED[447:238],raw_out_data}),
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
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low fir_E_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED[31],dE,NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_E),
        .s_axis_data_tdata({E9,\^data_E [145:144],E8,\^data_E [129:128],E7,\^data_E [113:112],E6,\^data_E [97:96],E5,\^data_E [81:80],E4,\^data_E [65:64],E3,\^data_E [49:48],E2,\^data_E [33:32],E1,\^data_E [17:16],E0,\^data_E [1:0]}),
        .s_axis_data_tready(NLW_fir_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_E));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low fir_N_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED[31],dN,NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_N),
        .s_axis_data_tdata({N9,\^data_N [145:144],N8,\^data_N [129:128],N7,\^data_N [113:112],N6,\^data_N [97:96],N5,\^data_N [81:80],N4,\^data_N [65:64],N3,\^data_N [49:48],N2,\^data_N [33:32],N1,\^data_N [17:16],N0,\^data_N [1:0]}),
        .s_axis_data_tready(NLW_fir_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_N));
  (* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_deci_low_HD1 fir_W_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED[31],dW,NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_W),
        .s_axis_data_tdata({W9,\^data_W [145:144],W8,\^data_W [129:128],W7,\^data_W [113:112],W6,\^data_W [97:96],W5,\^data_W [81:80],W4,\^data_W [65:64],W3,\^data_W [49:48],W2,\^data_W [33:32],W1,\^data_W [17:16],W0,\^data_W [1:0]}),
        .s_axis_data_tready(NLW_fir_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_W));
  (* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_raw_deci fir_deci_E_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED[159],fir_raw_E,NLW_fir_deci_E_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_raw_E),
        .s_axis_data_tdata({E9,\^data_E [145:144],E8,\^data_E [129:128],E7,\^data_E [113:112],E6,\^data_E [97:96],E5,\^data_E [81:80],E4,\^data_E [65:64],E3,\^data_E [49:48],E2,\^data_E [33:32],E1,\^data_E [17:16],E0,\^data_E [1:0]}),
        .s_axis_data_tready(NLW_fir_deci_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_E));
  (* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_raw_deci fir_deci_N_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED[159],fir_raw_N,NLW_fir_deci_N_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_raw_N),
        .s_axis_data_tdata({N9,\^data_N [145:144],N8,\^data_N [129:128],N7,\^data_N [113:112],N6,\^data_N [97:96],N5,\^data_N [81:80],N4,\^data_N [65:64],N3,\^data_N [49:48],N2,\^data_N [33:32],N1,\^data_N [17:16],N0,\^data_N [1:0]}),
        .s_axis_data_tready(NLW_fir_deci_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_N));
  (* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_low_0_0_fir_raw_deci_HD2 fir_deci_W_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED[159],fir_raw_W,NLW_fir_deci_W_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_raw_W),
        .s_axis_data_tdata({W9,\^data_W [145:144],W8,\^data_W [129:128],W7,\^data_W [113:112],W6,\^data_W [97:96],W5,\^data_W [81:80],W4,\^data_W [65:64],W3,\^data_W [49:48],W2,\^data_W [33:32],W1,\^data_W [17:16],W0,\^data_W [1:0]}),
        .s_axis_data_tready(NLW_fir_deci_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_W));
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
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_deci_low_0_0_ila_0 ila_E
       (.clk(clk),
        .probe0(E0),
        .probe1(E1),
        .probe10(ready_E),
        .probe11(dE),
        .probe12(valid_E),
        .probe2(E2),
        .probe3(E3),
        .probe4(E4),
        .probe5(E5),
        .probe6(E6),
        .probe7(E7),
        .probe8(E8),
        .probe9(E9));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_deci_low_0_0_ila_0 ila_N
       (.clk(clk),
        .probe0(N0),
        .probe1(N1),
        .probe10(ready_N),
        .probe11(dN),
        .probe12(valid_N),
        .probe2(N2),
        .probe3(N3),
        .probe4(N4),
        .probe5(N5),
        .probe6(N6),
        .probe7(N7),
        .probe8(N8),
        .probe9(N9));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_deci_low_0_0_ila_0_HD3 ila_W
       (.clk(clk),
        .probe0(W0),
        .probe1(W1),
        .probe10(ready_W),
        .probe11(dW),
        .probe12(valid_W),
        .probe2(W2),
        .probe3(W3),
        .probe4(W4),
        .probe5(W5),
        .probe6(W6),
        .probe7(W7),
        .probe8(W8),
        .probe9(W9));
  LUT4 #(
    .INIT(16'h0001)) 
    raw_active_i_1
       (.I0(raw_fifo_empty),
        .I1(\raw_delay[11]_i_4_n_0 ),
        .I2(\raw_delay[11]_i_3_n_0 ),
        .I3(raw_active_i_2_n_0),
        .O(raw_active_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    raw_active_i_2
       (.I0(raw_delay_reg[1]),
        .I1(raw_delay_reg[0]),
        .I2(raw_delay_reg[3]),
        .I3(raw_delay_reg[2]),
        .O(raw_active_i_2_n_0));
  FDRE raw_active_reg
       (.C(raw_clk),
        .CE(1'b1),
        .D(raw_active_i_1_n_0),
        .Q(raw_active),
        .R(1'b0));
  FDRE \raw_data_reg[0] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[0]),
        .Q(raw_data[0]),
        .R(1'b0));
  FDRE \raw_data_reg[100] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[100]),
        .Q(raw_data[100]),
        .R(1'b0));
  FDRE \raw_data_reg[101] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[101]),
        .Q(raw_data[101]),
        .R(1'b0));
  FDRE \raw_data_reg[102] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[102]),
        .Q(raw_data[102]),
        .R(1'b0));
  FDRE \raw_data_reg[103] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[103]),
        .Q(raw_data[103]),
        .R(1'b0));
  FDRE \raw_data_reg[104] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[104]),
        .Q(raw_data[104]),
        .R(1'b0));
  FDRE \raw_data_reg[105] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[105]),
        .Q(raw_data[105]),
        .R(1'b0));
  FDRE \raw_data_reg[106] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[106]),
        .Q(raw_data[106]),
        .R(1'b0));
  FDRE \raw_data_reg[107] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[107]),
        .Q(raw_data[107]),
        .R(1'b0));
  FDRE \raw_data_reg[108] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[108]),
        .Q(raw_data[108]),
        .R(1'b0));
  FDRE \raw_data_reg[109] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[109]),
        .Q(raw_data[109]),
        .R(1'b0));
  FDRE \raw_data_reg[10] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[10]),
        .Q(raw_data[10]),
        .R(1'b0));
  FDRE \raw_data_reg[110] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[110]),
        .Q(raw_data[110]),
        .R(1'b0));
  FDRE \raw_data_reg[111] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[111]),
        .Q(raw_data[111]),
        .R(1'b0));
  FDRE \raw_data_reg[112] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[112]),
        .Q(raw_data[112]),
        .R(1'b0));
  FDRE \raw_data_reg[113] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[113]),
        .Q(raw_data[113]),
        .R(1'b0));
  FDRE \raw_data_reg[114] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[114]),
        .Q(raw_data[114]),
        .R(1'b0));
  FDRE \raw_data_reg[115] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[115]),
        .Q(raw_data[115]),
        .R(1'b0));
  FDRE \raw_data_reg[116] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[116]),
        .Q(raw_data[116]),
        .R(1'b0));
  FDRE \raw_data_reg[117] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[117]),
        .Q(raw_data[117]),
        .R(1'b0));
  FDRE \raw_data_reg[118] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[118]),
        .Q(raw_data[118]),
        .R(1'b0));
  FDRE \raw_data_reg[119] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[119]),
        .Q(raw_data[119]),
        .R(1'b0));
  FDRE \raw_data_reg[11] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[11]),
        .Q(raw_data[11]),
        .R(1'b0));
  FDRE \raw_data_reg[120] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[120]),
        .Q(raw_data[120]),
        .R(1'b0));
  FDRE \raw_data_reg[121] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[121]),
        .Q(raw_data[121]),
        .R(1'b0));
  FDRE \raw_data_reg[122] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[122]),
        .Q(raw_data[122]),
        .R(1'b0));
  FDRE \raw_data_reg[123] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[123]),
        .Q(raw_data[123]),
        .R(1'b0));
  FDRE \raw_data_reg[124] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[124]),
        .Q(raw_data[124]),
        .R(1'b0));
  FDRE \raw_data_reg[125] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[125]),
        .Q(raw_data[125]),
        .R(1'b0));
  FDRE \raw_data_reg[126] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[126]),
        .Q(raw_data[126]),
        .R(1'b0));
  FDRE \raw_data_reg[127] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[127]),
        .Q(raw_data[127]),
        .R(1'b0));
  FDRE \raw_data_reg[128] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[128]),
        .Q(raw_data[128]),
        .R(1'b0));
  FDRE \raw_data_reg[129] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[129]),
        .Q(raw_data[129]),
        .R(1'b0));
  FDRE \raw_data_reg[12] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[12]),
        .Q(raw_data[12]),
        .R(1'b0));
  FDRE \raw_data_reg[130] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[130]),
        .Q(raw_data[130]),
        .R(1'b0));
  FDRE \raw_data_reg[131] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[131]),
        .Q(raw_data[131]),
        .R(1'b0));
  FDRE \raw_data_reg[132] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[132]),
        .Q(raw_data[132]),
        .R(1'b0));
  FDRE \raw_data_reg[133] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[133]),
        .Q(raw_data[133]),
        .R(1'b0));
  FDRE \raw_data_reg[134] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[134]),
        .Q(raw_data[134]),
        .R(1'b0));
  FDRE \raw_data_reg[135] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[135]),
        .Q(raw_data[135]),
        .R(1'b0));
  FDRE \raw_data_reg[136] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[136]),
        .Q(raw_data[136]),
        .R(1'b0));
  FDRE \raw_data_reg[137] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[137]),
        .Q(raw_data[137]),
        .R(1'b0));
  FDRE \raw_data_reg[138] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[138]),
        .Q(raw_data[138]),
        .R(1'b0));
  FDRE \raw_data_reg[139] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[139]),
        .Q(raw_data[139]),
        .R(1'b0));
  FDRE \raw_data_reg[13] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[13]),
        .Q(raw_data[13]),
        .R(1'b0));
  FDRE \raw_data_reg[140] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[140]),
        .Q(raw_data[140]),
        .R(1'b0));
  FDRE \raw_data_reg[141] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[141]),
        .Q(raw_data[141]),
        .R(1'b0));
  FDRE \raw_data_reg[142] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[142]),
        .Q(raw_data[142]),
        .R(1'b0));
  FDRE \raw_data_reg[143] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[143]),
        .Q(raw_data[143]),
        .R(1'b0));
  FDRE \raw_data_reg[144] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[144]),
        .Q(raw_data[144]),
        .R(1'b0));
  FDRE \raw_data_reg[145] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[145]),
        .Q(raw_data[145]),
        .R(1'b0));
  FDRE \raw_data_reg[146] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[146]),
        .Q(raw_data[146]),
        .R(1'b0));
  FDRE \raw_data_reg[147] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[147]),
        .Q(raw_data[147]),
        .R(1'b0));
  FDRE \raw_data_reg[148] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[148]),
        .Q(raw_data[148]),
        .R(1'b0));
  FDRE \raw_data_reg[149] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[149]),
        .Q(raw_data[149]),
        .R(1'b0));
  FDRE \raw_data_reg[14] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[14]),
        .Q(raw_data[14]),
        .R(1'b0));
  FDRE \raw_data_reg[150] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[150]),
        .Q(raw_data[150]),
        .R(1'b0));
  FDRE \raw_data_reg[151] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[151]),
        .Q(raw_data[151]),
        .R(1'b0));
  FDRE \raw_data_reg[152] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[152]),
        .Q(raw_data[152]),
        .R(1'b0));
  FDRE \raw_data_reg[153] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[153]),
        .Q(raw_data[153]),
        .R(1'b0));
  FDRE \raw_data_reg[154] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[154]),
        .Q(raw_data[154]),
        .R(1'b0));
  FDRE \raw_data_reg[155] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[155]),
        .Q(raw_data[155]),
        .R(1'b0));
  FDRE \raw_data_reg[156] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[156]),
        .Q(raw_data[156]),
        .R(1'b0));
  FDRE \raw_data_reg[157] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[157]),
        .Q(raw_data[157]),
        .R(1'b0));
  FDRE \raw_data_reg[158] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[158]),
        .Q(raw_data[158]),
        .R(1'b0));
  FDRE \raw_data_reg[159] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[159]),
        .Q(raw_data[159]),
        .R(1'b0));
  FDRE \raw_data_reg[15] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[15]),
        .Q(raw_data[15]),
        .R(1'b0));
  FDRE \raw_data_reg[160] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[160]),
        .Q(raw_data[160]),
        .R(1'b0));
  FDRE \raw_data_reg[161] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[161]),
        .Q(raw_data[161]),
        .R(1'b0));
  FDRE \raw_data_reg[162] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[162]),
        .Q(raw_data[162]),
        .R(1'b0));
  FDRE \raw_data_reg[163] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[163]),
        .Q(raw_data[163]),
        .R(1'b0));
  FDRE \raw_data_reg[164] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[164]),
        .Q(raw_data[164]),
        .R(1'b0));
  FDRE \raw_data_reg[165] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[165]),
        .Q(raw_data[165]),
        .R(1'b0));
  FDRE \raw_data_reg[166] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[166]),
        .Q(raw_data[166]),
        .R(1'b0));
  FDRE \raw_data_reg[167] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[167]),
        .Q(raw_data[167]),
        .R(1'b0));
  FDRE \raw_data_reg[168] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[168]),
        .Q(raw_data[168]),
        .R(1'b0));
  FDRE \raw_data_reg[169] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[169]),
        .Q(raw_data[169]),
        .R(1'b0));
  FDRE \raw_data_reg[16] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[16]),
        .Q(raw_data[16]),
        .R(1'b0));
  FDRE \raw_data_reg[170] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[170]),
        .Q(raw_data[170]),
        .R(1'b0));
  FDRE \raw_data_reg[171] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[171]),
        .Q(raw_data[171]),
        .R(1'b0));
  FDRE \raw_data_reg[172] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[172]),
        .Q(raw_data[172]),
        .R(1'b0));
  FDRE \raw_data_reg[173] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[173]),
        .Q(raw_data[173]),
        .R(1'b0));
  FDRE \raw_data_reg[174] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[174]),
        .Q(raw_data[174]),
        .R(1'b0));
  FDRE \raw_data_reg[175] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[175]),
        .Q(raw_data[175]),
        .R(1'b0));
  FDRE \raw_data_reg[176] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[176]),
        .Q(raw_data[176]),
        .R(1'b0));
  FDRE \raw_data_reg[177] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[177]),
        .Q(raw_data[177]),
        .R(1'b0));
  FDRE \raw_data_reg[178] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[178]),
        .Q(raw_data[178]),
        .R(1'b0));
  FDRE \raw_data_reg[179] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[179]),
        .Q(raw_data[179]),
        .R(1'b0));
  FDRE \raw_data_reg[17] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[17]),
        .Q(raw_data[17]),
        .R(1'b0));
  FDRE \raw_data_reg[180] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[180]),
        .Q(raw_data[180]),
        .R(1'b0));
  FDRE \raw_data_reg[181] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[181]),
        .Q(raw_data[181]),
        .R(1'b0));
  FDRE \raw_data_reg[182] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[182]),
        .Q(raw_data[182]),
        .R(1'b0));
  FDRE \raw_data_reg[183] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[183]),
        .Q(raw_data[183]),
        .R(1'b0));
  FDRE \raw_data_reg[184] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[184]),
        .Q(raw_data[184]),
        .R(1'b0));
  FDRE \raw_data_reg[185] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[185]),
        .Q(raw_data[185]),
        .R(1'b0));
  FDRE \raw_data_reg[186] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[186]),
        .Q(raw_data[186]),
        .R(1'b0));
  FDRE \raw_data_reg[187] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[187]),
        .Q(raw_data[187]),
        .R(1'b0));
  FDRE \raw_data_reg[188] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[188]),
        .Q(raw_data[188]),
        .R(1'b0));
  FDRE \raw_data_reg[189] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[189]),
        .Q(raw_data[189]),
        .R(1'b0));
  FDRE \raw_data_reg[18] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[18]),
        .Q(raw_data[18]),
        .R(1'b0));
  FDRE \raw_data_reg[190] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[190]),
        .Q(raw_data[190]),
        .R(1'b0));
  FDRE \raw_data_reg[191] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[191]),
        .Q(raw_data[191]),
        .R(1'b0));
  FDRE \raw_data_reg[192] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[192]),
        .Q(raw_data[192]),
        .R(1'b0));
  FDRE \raw_data_reg[193] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[193]),
        .Q(raw_data[193]),
        .R(1'b0));
  FDRE \raw_data_reg[194] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[194]),
        .Q(raw_data[194]),
        .R(1'b0));
  FDRE \raw_data_reg[195] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[195]),
        .Q(raw_data[195]),
        .R(1'b0));
  FDRE \raw_data_reg[196] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[196]),
        .Q(raw_data[196]),
        .R(1'b0));
  FDRE \raw_data_reg[197] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[197]),
        .Q(raw_data[197]),
        .R(1'b0));
  FDRE \raw_data_reg[198] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[198]),
        .Q(raw_data[198]),
        .R(1'b0));
  FDRE \raw_data_reg[199] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[199]),
        .Q(raw_data[199]),
        .R(1'b0));
  FDRE \raw_data_reg[19] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[19]),
        .Q(raw_data[19]),
        .R(1'b0));
  FDRE \raw_data_reg[1] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[1]),
        .Q(raw_data[1]),
        .R(1'b0));
  FDRE \raw_data_reg[200] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[200]),
        .Q(raw_data[200]),
        .R(1'b0));
  FDRE \raw_data_reg[201] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[201]),
        .Q(raw_data[201]),
        .R(1'b0));
  FDRE \raw_data_reg[202] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[202]),
        .Q(raw_data[202]),
        .R(1'b0));
  FDRE \raw_data_reg[203] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[203]),
        .Q(raw_data[203]),
        .R(1'b0));
  FDRE \raw_data_reg[204] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[204]),
        .Q(raw_data[204]),
        .R(1'b0));
  FDRE \raw_data_reg[205] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[205]),
        .Q(raw_data[205]),
        .R(1'b0));
  FDRE \raw_data_reg[206] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[206]),
        .Q(raw_data[206]),
        .R(1'b0));
  FDRE \raw_data_reg[207] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[207]),
        .Q(raw_data[207]),
        .R(1'b0));
  FDRE \raw_data_reg[208] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[208]),
        .Q(raw_data[208]),
        .R(1'b0));
  FDRE \raw_data_reg[209] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[209]),
        .Q(raw_data[209]),
        .R(1'b0));
  FDRE \raw_data_reg[20] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[20]),
        .Q(raw_data[20]),
        .R(1'b0));
  FDRE \raw_data_reg[210] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[210]),
        .Q(raw_data[210]),
        .R(1'b0));
  FDRE \raw_data_reg[211] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[211]),
        .Q(raw_data[211]),
        .R(1'b0));
  FDRE \raw_data_reg[212] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[212]),
        .Q(raw_data[212]),
        .R(1'b0));
  FDRE \raw_data_reg[213] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[213]),
        .Q(raw_data[213]),
        .R(1'b0));
  FDRE \raw_data_reg[214] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[214]),
        .Q(raw_data[214]),
        .R(1'b0));
  FDRE \raw_data_reg[215] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[215]),
        .Q(raw_data[215]),
        .R(1'b0));
  FDRE \raw_data_reg[216] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[216]),
        .Q(raw_data[216]),
        .R(1'b0));
  FDRE \raw_data_reg[217] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[217]),
        .Q(raw_data[217]),
        .R(1'b0));
  FDRE \raw_data_reg[218] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[218]),
        .Q(raw_data[218]),
        .R(1'b0));
  FDRE \raw_data_reg[219] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[219]),
        .Q(raw_data[219]),
        .R(1'b0));
  FDRE \raw_data_reg[21] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[21]),
        .Q(raw_data[21]),
        .R(1'b0));
  FDRE \raw_data_reg[220] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[220]),
        .Q(raw_data[220]),
        .R(1'b0));
  FDRE \raw_data_reg[221] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[221]),
        .Q(raw_data[221]),
        .R(1'b0));
  FDRE \raw_data_reg[222] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[222]),
        .Q(raw_data[222]),
        .R(1'b0));
  FDRE \raw_data_reg[223] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[223]),
        .Q(raw_data[223]),
        .R(1'b0));
  FDRE \raw_data_reg[224] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[224]),
        .Q(raw_data[224]),
        .R(1'b0));
  FDRE \raw_data_reg[225] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[225]),
        .Q(raw_data[225]),
        .R(1'b0));
  FDRE \raw_data_reg[226] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[226]),
        .Q(raw_data[226]),
        .R(1'b0));
  FDRE \raw_data_reg[227] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[227]),
        .Q(raw_data[227]),
        .R(1'b0));
  FDRE \raw_data_reg[228] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[228]),
        .Q(raw_data[228]),
        .R(1'b0));
  FDRE \raw_data_reg[229] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[229]),
        .Q(raw_data[229]),
        .R(1'b0));
  FDRE \raw_data_reg[22] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[22]),
        .Q(raw_data[22]),
        .R(1'b0));
  FDRE \raw_data_reg[230] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[230]),
        .Q(raw_data[230]),
        .R(1'b0));
  FDRE \raw_data_reg[231] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[231]),
        .Q(raw_data[231]),
        .R(1'b0));
  FDRE \raw_data_reg[232] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[232]),
        .Q(raw_data[232]),
        .R(1'b0));
  FDRE \raw_data_reg[233] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[233]),
        .Q(raw_data[233]),
        .R(1'b0));
  FDRE \raw_data_reg[234] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[234]),
        .Q(raw_data[234]),
        .R(1'b0));
  FDRE \raw_data_reg[235] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[235]),
        .Q(raw_data[235]),
        .R(1'b0));
  FDRE \raw_data_reg[236] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[236]),
        .Q(raw_data[236]),
        .R(1'b0));
  FDRE \raw_data_reg[237] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[237]),
        .Q(raw_data[237]),
        .R(1'b0));
  FDRE \raw_data_reg[23] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[23]),
        .Q(raw_data[23]),
        .R(1'b0));
  FDRE \raw_data_reg[24] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[24]),
        .Q(raw_data[24]),
        .R(1'b0));
  FDRE \raw_data_reg[25] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[25]),
        .Q(raw_data[25]),
        .R(1'b0));
  FDRE \raw_data_reg[26] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[26]),
        .Q(raw_data[26]),
        .R(1'b0));
  FDRE \raw_data_reg[27] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[27]),
        .Q(raw_data[27]),
        .R(1'b0));
  FDRE \raw_data_reg[28] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[28]),
        .Q(raw_data[28]),
        .R(1'b0));
  FDRE \raw_data_reg[29] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[29]),
        .Q(raw_data[29]),
        .R(1'b0));
  FDRE \raw_data_reg[2] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[2]),
        .Q(raw_data[2]),
        .R(1'b0));
  FDRE \raw_data_reg[30] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[30]),
        .Q(raw_data[30]),
        .R(1'b0));
  FDRE \raw_data_reg[31] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[31]),
        .Q(raw_data[31]),
        .R(1'b0));
  FDRE \raw_data_reg[32] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[32]),
        .Q(raw_data[32]),
        .R(1'b0));
  FDRE \raw_data_reg[33] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[33]),
        .Q(raw_data[33]),
        .R(1'b0));
  FDRE \raw_data_reg[34] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[34]),
        .Q(raw_data[34]),
        .R(1'b0));
  FDRE \raw_data_reg[35] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[35]),
        .Q(raw_data[35]),
        .R(1'b0));
  FDRE \raw_data_reg[36] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[36]),
        .Q(raw_data[36]),
        .R(1'b0));
  FDRE \raw_data_reg[37] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[37]),
        .Q(raw_data[37]),
        .R(1'b0));
  FDRE \raw_data_reg[38] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[38]),
        .Q(raw_data[38]),
        .R(1'b0));
  FDRE \raw_data_reg[39] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[39]),
        .Q(raw_data[39]),
        .R(1'b0));
  FDRE \raw_data_reg[3] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[3]),
        .Q(raw_data[3]),
        .R(1'b0));
  FDRE \raw_data_reg[40] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[40]),
        .Q(raw_data[40]),
        .R(1'b0));
  FDRE \raw_data_reg[41] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[41]),
        .Q(raw_data[41]),
        .R(1'b0));
  FDRE \raw_data_reg[42] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[42]),
        .Q(raw_data[42]),
        .R(1'b0));
  FDRE \raw_data_reg[43] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[43]),
        .Q(raw_data[43]),
        .R(1'b0));
  FDRE \raw_data_reg[44] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[44]),
        .Q(raw_data[44]),
        .R(1'b0));
  FDRE \raw_data_reg[45] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[45]),
        .Q(raw_data[45]),
        .R(1'b0));
  FDRE \raw_data_reg[46] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[46]),
        .Q(raw_data[46]),
        .R(1'b0));
  FDRE \raw_data_reg[47] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[47]),
        .Q(raw_data[47]),
        .R(1'b0));
  FDRE \raw_data_reg[48] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[48]),
        .Q(raw_data[48]),
        .R(1'b0));
  FDRE \raw_data_reg[49] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[49]),
        .Q(raw_data[49]),
        .R(1'b0));
  FDRE \raw_data_reg[4] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[4]),
        .Q(raw_data[4]),
        .R(1'b0));
  FDRE \raw_data_reg[50] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[50]),
        .Q(raw_data[50]),
        .R(1'b0));
  FDRE \raw_data_reg[51] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[51]),
        .Q(raw_data[51]),
        .R(1'b0));
  FDRE \raw_data_reg[52] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[52]),
        .Q(raw_data[52]),
        .R(1'b0));
  FDRE \raw_data_reg[53] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[53]),
        .Q(raw_data[53]),
        .R(1'b0));
  FDRE \raw_data_reg[54] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[54]),
        .Q(raw_data[54]),
        .R(1'b0));
  FDRE \raw_data_reg[55] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[55]),
        .Q(raw_data[55]),
        .R(1'b0));
  FDRE \raw_data_reg[56] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[56]),
        .Q(raw_data[56]),
        .R(1'b0));
  FDRE \raw_data_reg[57] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[57]),
        .Q(raw_data[57]),
        .R(1'b0));
  FDRE \raw_data_reg[58] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[58]),
        .Q(raw_data[58]),
        .R(1'b0));
  FDRE \raw_data_reg[59] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[59]),
        .Q(raw_data[59]),
        .R(1'b0));
  FDRE \raw_data_reg[5] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[5]),
        .Q(raw_data[5]),
        .R(1'b0));
  FDRE \raw_data_reg[60] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[60]),
        .Q(raw_data[60]),
        .R(1'b0));
  FDRE \raw_data_reg[61] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[61]),
        .Q(raw_data[61]),
        .R(1'b0));
  FDRE \raw_data_reg[62] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[62]),
        .Q(raw_data[62]),
        .R(1'b0));
  FDRE \raw_data_reg[63] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[63]),
        .Q(raw_data[63]),
        .R(1'b0));
  FDRE \raw_data_reg[64] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[64]),
        .Q(raw_data[64]),
        .R(1'b0));
  FDRE \raw_data_reg[65] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[65]),
        .Q(raw_data[65]),
        .R(1'b0));
  FDRE \raw_data_reg[66] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[66]),
        .Q(raw_data[66]),
        .R(1'b0));
  FDRE \raw_data_reg[67] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[67]),
        .Q(raw_data[67]),
        .R(1'b0));
  FDRE \raw_data_reg[68] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[68]),
        .Q(raw_data[68]),
        .R(1'b0));
  FDRE \raw_data_reg[69] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[69]),
        .Q(raw_data[69]),
        .R(1'b0));
  FDRE \raw_data_reg[6] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[6]),
        .Q(raw_data[6]),
        .R(1'b0));
  FDRE \raw_data_reg[70] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[70]),
        .Q(raw_data[70]),
        .R(1'b0));
  FDRE \raw_data_reg[71] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[71]),
        .Q(raw_data[71]),
        .R(1'b0));
  FDRE \raw_data_reg[72] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[72]),
        .Q(raw_data[72]),
        .R(1'b0));
  FDRE \raw_data_reg[73] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[73]),
        .Q(raw_data[73]),
        .R(1'b0));
  FDRE \raw_data_reg[74] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[74]),
        .Q(raw_data[74]),
        .R(1'b0));
  FDRE \raw_data_reg[75] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[75]),
        .Q(raw_data[75]),
        .R(1'b0));
  FDRE \raw_data_reg[76] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[76]),
        .Q(raw_data[76]),
        .R(1'b0));
  FDRE \raw_data_reg[77] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[77]),
        .Q(raw_data[77]),
        .R(1'b0));
  FDRE \raw_data_reg[78] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[78]),
        .Q(raw_data[78]),
        .R(1'b0));
  FDRE \raw_data_reg[79] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[79]),
        .Q(raw_data[79]),
        .R(1'b0));
  FDRE \raw_data_reg[7] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[7]),
        .Q(raw_data[7]),
        .R(1'b0));
  FDRE \raw_data_reg[80] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[80]),
        .Q(raw_data[80]),
        .R(1'b0));
  FDRE \raw_data_reg[81] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[81]),
        .Q(raw_data[81]),
        .R(1'b0));
  FDRE \raw_data_reg[82] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[82]),
        .Q(raw_data[82]),
        .R(1'b0));
  FDRE \raw_data_reg[83] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[83]),
        .Q(raw_data[83]),
        .R(1'b0));
  FDRE \raw_data_reg[84] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[84]),
        .Q(raw_data[84]),
        .R(1'b0));
  FDRE \raw_data_reg[85] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[85]),
        .Q(raw_data[85]),
        .R(1'b0));
  FDRE \raw_data_reg[86] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[86]),
        .Q(raw_data[86]),
        .R(1'b0));
  FDRE \raw_data_reg[87] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[87]),
        .Q(raw_data[87]),
        .R(1'b0));
  FDRE \raw_data_reg[88] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[88]),
        .Q(raw_data[88]),
        .R(1'b0));
  FDRE \raw_data_reg[89] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[89]),
        .Q(raw_data[89]),
        .R(1'b0));
  FDRE \raw_data_reg[8] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[8]),
        .Q(raw_data[8]),
        .R(1'b0));
  FDRE \raw_data_reg[90] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[90]),
        .Q(raw_data[90]),
        .R(1'b0));
  FDRE \raw_data_reg[91] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[91]),
        .Q(raw_data[91]),
        .R(1'b0));
  FDRE \raw_data_reg[92] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[92]),
        .Q(raw_data[92]),
        .R(1'b0));
  FDRE \raw_data_reg[93] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[93]),
        .Q(raw_data[93]),
        .R(1'b0));
  FDRE \raw_data_reg[94] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[94]),
        .Q(raw_data[94]),
        .R(1'b0));
  FDRE \raw_data_reg[95] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[95]),
        .Q(raw_data[95]),
        .R(1'b0));
  FDRE \raw_data_reg[96] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[96]),
        .Q(raw_data[96]),
        .R(1'b0));
  FDRE \raw_data_reg[97] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[97]),
        .Q(raw_data[97]),
        .R(1'b0));
  FDRE \raw_data_reg[98] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[98]),
        .Q(raw_data[98]),
        .R(1'b0));
  FDRE \raw_data_reg[99] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[99]),
        .Q(raw_data[99]),
        .R(1'b0));
  FDRE \raw_data_reg[9] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[9]),
        .Q(raw_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[0]_i_1 
       (.I0(raw_delay_reg[0]),
        .O(raw_delay0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \raw_delay[11]_i_1 
       (.I0(raw_delay_reg[2]),
        .I1(raw_delay_reg[3]),
        .I2(raw_delay_reg[0]),
        .I3(raw_delay_reg[1]),
        .I4(\raw_delay[11]_i_3_n_0 ),
        .I5(\raw_delay[11]_i_4_n_0 ),
        .O(\raw_delay[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \raw_delay[11]_i_3 
       (.I0(raw_delay_reg[9]),
        .I1(raw_delay_reg[8]),
        .I2(raw_delay_reg[11]),
        .I3(raw_delay_reg[10]),
        .O(\raw_delay[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \raw_delay[11]_i_4 
       (.I0(raw_delay_reg[5]),
        .I1(raw_delay_reg[4]),
        .I2(raw_delay_reg[7]),
        .I3(raw_delay_reg[6]),
        .O(\raw_delay[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[11]_i_5 
       (.I0(raw_delay_reg[11]),
        .O(\raw_delay[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[11]_i_6 
       (.I0(raw_delay_reg[10]),
        .O(\raw_delay[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[11]_i_7 
       (.I0(raw_delay_reg[9]),
        .O(\raw_delay[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_2 
       (.I0(raw_delay_reg[8]),
        .O(\raw_delay[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_3 
       (.I0(raw_delay_reg[7]),
        .O(\raw_delay[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_4 
       (.I0(raw_delay_reg[6]),
        .O(\raw_delay[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_5 
       (.I0(raw_delay_reg[5]),
        .O(\raw_delay[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_6 
       (.I0(raw_delay_reg[4]),
        .O(\raw_delay[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_7 
       (.I0(raw_delay_reg[3]),
        .O(\raw_delay[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_8 
       (.I0(raw_delay_reg[2]),
        .O(\raw_delay[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw_delay[8]_i_9 
       (.I0(raw_delay_reg[1]),
        .O(\raw_delay[8]_i_9_n_0 ));
  FDRE \raw_delay_reg[0] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[0]),
        .Q(raw_delay_reg[0]),
        .R(raw_fifo_empty));
  FDRE \raw_delay_reg[10] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[10]),
        .Q(raw_delay_reg[10]),
        .R(raw_fifo_empty));
  FDRE \raw_delay_reg[11] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[11]),
        .Q(raw_delay_reg[11]),
        .R(raw_fifo_empty));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw_delay_reg[11]_i_2 
       (.CI(\raw_delay_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_raw_delay_reg[11]_i_2_CO_UNCONNECTED [7:2],\raw_delay_reg[11]_i_2_n_6 ,\raw_delay_reg[11]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,raw_delay_reg[10:9]}),
        .O({\NLW_raw_delay_reg[11]_i_2_O_UNCONNECTED [7:3],raw_delay0[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\raw_delay[11]_i_5_n_0 ,\raw_delay[11]_i_6_n_0 ,\raw_delay[11]_i_7_n_0 }));
  FDRE \raw_delay_reg[1] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[1]),
        .Q(raw_delay_reg[1]),
        .R(raw_fifo_empty));
  FDRE \raw_delay_reg[2] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[2]),
        .Q(raw_delay_reg[2]),
        .R(raw_fifo_empty));
  FDRE \raw_delay_reg[3] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[3]),
        .Q(raw_delay_reg[3]),
        .R(raw_fifo_empty));
  FDSE \raw_delay_reg[4] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[4]),
        .Q(raw_delay_reg[4]),
        .S(raw_fifo_empty));
  FDSE \raw_delay_reg[5] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[5]),
        .Q(raw_delay_reg[5]),
        .S(raw_fifo_empty));
  FDSE \raw_delay_reg[6] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[6]),
        .Q(raw_delay_reg[6]),
        .S(raw_fifo_empty));
  FDSE \raw_delay_reg[7] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[7]),
        .Q(raw_delay_reg[7]),
        .S(raw_fifo_empty));
  FDSE \raw_delay_reg[8] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[8]),
        .Q(raw_delay_reg[8]),
        .S(raw_fifo_empty));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw_delay_reg[8]_i_1 
       (.CI(raw_delay_reg[0]),
        .CI_TOP(1'b0),
        .CO({\raw_delay_reg[8]_i_1_n_0 ,\raw_delay_reg[8]_i_1_n_1 ,\raw_delay_reg[8]_i_1_n_2 ,\raw_delay_reg[8]_i_1_n_3 ,\raw_delay_reg[8]_i_1_n_4 ,\raw_delay_reg[8]_i_1_n_5 ,\raw_delay_reg[8]_i_1_n_6 ,\raw_delay_reg[8]_i_1_n_7 }),
        .DI(raw_delay_reg[8:1]),
        .O(raw_delay0[8:1]),
        .S({\raw_delay[8]_i_2_n_0 ,\raw_delay[8]_i_3_n_0 ,\raw_delay[8]_i_4_n_0 ,\raw_delay[8]_i_5_n_0 ,\raw_delay[8]_i_6_n_0 ,\raw_delay[8]_i_7_n_0 ,\raw_delay[8]_i_8_n_0 ,\raw_delay[8]_i_9_n_0 }));
  FDSE \raw_delay_reg[9] 
       (.C(raw_clk),
        .CE(\raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[9]),
        .Q(raw_delay_reg[9]),
        .S(raw_fifo_empty));
  FDRE raw_ready_reg
       (.C(raw_clk),
        .CE(1'b1),
        .D(raw_active),
        .Q(raw_ready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_raw,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_low_0_0_fifo_raw
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [447:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [447:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 20, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [159:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_deci_low,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_deci_low" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_low_0_0_fir_deci_low_HD1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 20, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [159:0]s_axis_data_tdata;


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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 20, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [159:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 20, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [159:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_raw_deci,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_raw_deci" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_low_0_0_fir_raw_deci_HD2
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 20, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 20, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [159:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [159:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_deci_low_0_0_ila_0
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
    probe12);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [13:0]probe2;
  input [13:0]probe3;
  input [13:0]probe4;
  input [13:0]probe5;
  input [13:0]probe6;
  input [13:0]probe7;
  input [13:0]probe8;
  input [13:0]probe9;
  input [0:0]probe10;
  input [13:0]probe11;
  input [0:0]probe12;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_deci_low_0_0_ila_0_HD3
   (clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [0:0]probe10;
  input [13:0]probe11;
  input [0:0]probe12;
  input [13:0]probe2;
  input [13:0]probe3;
  input [13:0]probe4;
  input [13:0]probe5;
  input [13:0]probe6;
  input [13:0]probe7;
  input [13:0]probe8;
  input [13:0]probe9;


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
