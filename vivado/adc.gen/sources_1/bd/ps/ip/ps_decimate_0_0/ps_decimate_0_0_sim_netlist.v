// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov  2 22:09:53 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_decimate_0_0/ps_decimate_0_0_sim_netlist.v
// Design      : ps_decimate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_decimate_0_0,decimate,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "decimate,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_decimate_0_0
   (clk,
    resetn,
    data_N,
    ready_N,
    fir_N,
    valid_N,
    data_E,
    ready_E,
    fir_E,
    valid_E,
    data_W,
    ready_W,
    fir_W,
    valid_W,
    fifo_wr,
    fifo);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [159:0]data_N;
  input ready_N;
  input [23:0]fir_N;
  input valid_N;
  input [159:0]data_E;
  input ready_E;
  input [23:0]fir_E;
  input valid_E;
  input [159:0]data_W;
  input ready_W;
  input [23:0]fir_W;
  input valid_W;
  output fifo_wr;
  output [447:0]fifo;

  wire clk;
  wire [159:0]data_E;
  wire [159:0]data_N;
  wire [159:0]data_W;
  wire [447:0]fifo;
  wire fifo_wr;
  wire [23:0]fir_E;
  wire [23:0]fir_N;
  wire [23:0]fir_W;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;
  wire valid_E;
  wire valid_N;
  wire valid_W;

  ps_decimate_0_0_decimate inst
       (.clk(clk),
        .data_E({data_E[159:146],1'b0,1'b0,data_E[143:130],1'b0,1'b0,data_E[127:114],1'b0,1'b0,data_E[111:98],1'b0,1'b0,data_E[95:82],1'b0,1'b0,data_E[79:66],1'b0,1'b0,data_E[63:50],1'b0,1'b0,data_E[47:34],1'b0,1'b0,data_E[31:18],1'b0,1'b0,data_E[15:2],1'b0,1'b0}),
        .data_N({data_N[159:146],1'b0,1'b0,data_N[143:130],1'b0,1'b0,data_N[127:114],1'b0,1'b0,data_N[111:98],1'b0,1'b0,data_N[95:82],1'b0,1'b0,data_N[79:66],1'b0,1'b0,data_N[63:50],1'b0,1'b0,data_N[47:34],1'b0,1'b0,data_N[31:18],1'b0,1'b0,data_N[15:2],1'b0,1'b0}),
        .data_W({data_W[159:146],1'b0,1'b0,data_W[143:130],1'b0,1'b0,data_W[127:114],1'b0,1'b0,data_W[111:98],1'b0,1'b0,data_W[95:82],1'b0,1'b0,data_W[79:66],1'b0,1'b0,data_W[63:50],1'b0,1'b0,data_W[47:34],1'b0,1'b0,data_W[31:18],1'b0,1'b0,data_W[15:2],1'b0,1'b0}),
        .fifo(fifo),
        .fifo_wr(fifo_wr),
        .fir_E(fir_E),
        .fir_N(fir_N),
        .fir_W(fir_W),
        .ready_E(ready_E),
        .ready_N(ready_N),
        .ready_W(ready_W),
        .resetn(resetn),
        .valid_E(valid_E),
        .valid_N(valid_N),
        .valid_W(valid_W));
endmodule

(* ORIG_REF_NAME = "decimate" *) (* keep_hierarchy = "soft" *) 
module ps_decimate_0_0_decimate
   (clk,
    resetn,
    data_N,
    ready_N,
    fir_N,
    valid_N,
    data_E,
    ready_E,
    fir_E,
    valid_E,
    data_W,
    ready_W,
    fir_W,
    valid_W,
    fifo_wr,
    fifo);
  input clk;
  input resetn;
  input [159:0]data_N;
  input ready_N;
  input [23:0]fir_N;
  input valid_N;
  input [159:0]data_E;
  input ready_E;
  input [23:0]fir_E;
  input valid_E;
  input [159:0]data_W;
  input ready_W;
  input [23:0]fir_W;
  input valid_W;
  output fifo_wr;
  output [447:0]fifo;

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
  wire \decimate.active_i_1_n_0 ;
  wire \decimate.counter[0]_i_3_n_0 ;
  wire [27:0]\decimate.counter_reg ;
  wire \decimate.counter_reg[0]_i_2_n_0 ;
  wire \decimate.counter_reg[0]_i_2_n_1 ;
  wire \decimate.counter_reg[0]_i_2_n_10 ;
  wire \decimate.counter_reg[0]_i_2_n_11 ;
  wire \decimate.counter_reg[0]_i_2_n_12 ;
  wire \decimate.counter_reg[0]_i_2_n_13 ;
  wire \decimate.counter_reg[0]_i_2_n_14 ;
  wire \decimate.counter_reg[0]_i_2_n_15 ;
  wire \decimate.counter_reg[0]_i_2_n_2 ;
  wire \decimate.counter_reg[0]_i_2_n_3 ;
  wire \decimate.counter_reg[0]_i_2_n_4 ;
  wire \decimate.counter_reg[0]_i_2_n_5 ;
  wire \decimate.counter_reg[0]_i_2_n_6 ;
  wire \decimate.counter_reg[0]_i_2_n_7 ;
  wire \decimate.counter_reg[0]_i_2_n_8 ;
  wire \decimate.counter_reg[0]_i_2_n_9 ;
  wire \decimate.counter_reg[16]_i_1_n_0 ;
  wire \decimate.counter_reg[16]_i_1_n_1 ;
  wire \decimate.counter_reg[16]_i_1_n_10 ;
  wire \decimate.counter_reg[16]_i_1_n_11 ;
  wire \decimate.counter_reg[16]_i_1_n_12 ;
  wire \decimate.counter_reg[16]_i_1_n_13 ;
  wire \decimate.counter_reg[16]_i_1_n_14 ;
  wire \decimate.counter_reg[16]_i_1_n_15 ;
  wire \decimate.counter_reg[16]_i_1_n_2 ;
  wire \decimate.counter_reg[16]_i_1_n_3 ;
  wire \decimate.counter_reg[16]_i_1_n_4 ;
  wire \decimate.counter_reg[16]_i_1_n_5 ;
  wire \decimate.counter_reg[16]_i_1_n_6 ;
  wire \decimate.counter_reg[16]_i_1_n_7 ;
  wire \decimate.counter_reg[16]_i_1_n_8 ;
  wire \decimate.counter_reg[16]_i_1_n_9 ;
  wire \decimate.counter_reg[24]_i_1_n_12 ;
  wire \decimate.counter_reg[24]_i_1_n_13 ;
  wire \decimate.counter_reg[24]_i_1_n_14 ;
  wire \decimate.counter_reg[24]_i_1_n_15 ;
  wire \decimate.counter_reg[24]_i_1_n_5 ;
  wire \decimate.counter_reg[24]_i_1_n_6 ;
  wire \decimate.counter_reg[24]_i_1_n_7 ;
  wire \decimate.counter_reg[8]_i_1_n_0 ;
  wire \decimate.counter_reg[8]_i_1_n_1 ;
  wire \decimate.counter_reg[8]_i_1_n_10 ;
  wire \decimate.counter_reg[8]_i_1_n_11 ;
  wire \decimate.counter_reg[8]_i_1_n_12 ;
  wire \decimate.counter_reg[8]_i_1_n_13 ;
  wire \decimate.counter_reg[8]_i_1_n_14 ;
  wire \decimate.counter_reg[8]_i_1_n_15 ;
  wire \decimate.counter_reg[8]_i_1_n_2 ;
  wire \decimate.counter_reg[8]_i_1_n_3 ;
  wire \decimate.counter_reg[8]_i_1_n_4 ;
  wire \decimate.counter_reg[8]_i_1_n_5 ;
  wire \decimate.counter_reg[8]_i_1_n_6 ;
  wire \decimate.counter_reg[8]_i_1_n_7 ;
  wire \decimate.counter_reg[8]_i_1_n_8 ;
  wire \decimate.counter_reg[8]_i_1_n_9 ;
  wire [447:0]fifo;
  wire fifo_wr;
  (* MARK_DEBUG *) wire [23:0]fir_E;
  (* MARK_DEBUG *) wire [23:0]fir_N;
  (* MARK_DEBUG *) wire [23:0]fir_W;
  (* MARK_DEBUG *) wire ready_E;
  (* MARK_DEBUG *) wire ready_N;
  (* MARK_DEBUG *) wire ready_W;
  wire resetn;
  (* MARK_DEBUG *) wire valid_E;
  (* MARK_DEBUG *) wire valid_N;
  (* MARK_DEBUG *) wire valid_W;
  wire [7:3]\NLW_decimate.counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_decimate.counter_reg[24]_i_1_O_UNCONNECTED ;

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
  LUT4 #(
    .INIT(16'h8000)) 
    \decimate.active_i_1 
       (.I0(ready_W),
        .I1(resetn),
        .I2(ready_N),
        .I3(ready_E),
        .O(\decimate.active_i_1_n_0 ));
  FDRE \decimate.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.active_i_1_n_0 ),
        .Q(active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \decimate.counter[0]_i_1 
       (.I0(active),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \decimate.counter[0]_i_3 
       (.I0(\decimate.counter_reg [0]),
        .O(\decimate.counter[0]_i_3_n_0 ));
  FDRE \decimate.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_15 ),
        .Q(\decimate.counter_reg [0]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \decimate.counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\decimate.counter_reg[0]_i_2_n_0 ,\decimate.counter_reg[0]_i_2_n_1 ,\decimate.counter_reg[0]_i_2_n_2 ,\decimate.counter_reg[0]_i_2_n_3 ,\decimate.counter_reg[0]_i_2_n_4 ,\decimate.counter_reg[0]_i_2_n_5 ,\decimate.counter_reg[0]_i_2_n_6 ,\decimate.counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\decimate.counter_reg[0]_i_2_n_8 ,\decimate.counter_reg[0]_i_2_n_9 ,\decimate.counter_reg[0]_i_2_n_10 ,\decimate.counter_reg[0]_i_2_n_11 ,\decimate.counter_reg[0]_i_2_n_12 ,\decimate.counter_reg[0]_i_2_n_13 ,\decimate.counter_reg[0]_i_2_n_14 ,\decimate.counter_reg[0]_i_2_n_15 }),
        .S({\decimate.counter_reg [7:1],\decimate.counter[0]_i_3_n_0 }));
  FDRE \decimate.counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_13 ),
        .Q(\decimate.counter_reg [10]),
        .R(clear));
  FDRE \decimate.counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_12 ),
        .Q(\decimate.counter_reg [11]),
        .R(clear));
  FDRE \decimate.counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_11 ),
        .Q(\decimate.counter_reg [12]),
        .R(clear));
  FDRE \decimate.counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_10 ),
        .Q(\decimate.counter_reg [13]),
        .R(clear));
  FDRE \decimate.counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_9 ),
        .Q(\decimate.counter_reg [14]),
        .R(clear));
  FDRE \decimate.counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_8 ),
        .Q(\decimate.counter_reg [15]),
        .R(clear));
  FDRE \decimate.counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_15 ),
        .Q(\decimate.counter_reg [16]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \decimate.counter_reg[16]_i_1 
       (.CI(\decimate.counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\decimate.counter_reg[16]_i_1_n_0 ,\decimate.counter_reg[16]_i_1_n_1 ,\decimate.counter_reg[16]_i_1_n_2 ,\decimate.counter_reg[16]_i_1_n_3 ,\decimate.counter_reg[16]_i_1_n_4 ,\decimate.counter_reg[16]_i_1_n_5 ,\decimate.counter_reg[16]_i_1_n_6 ,\decimate.counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\decimate.counter_reg[16]_i_1_n_8 ,\decimate.counter_reg[16]_i_1_n_9 ,\decimate.counter_reg[16]_i_1_n_10 ,\decimate.counter_reg[16]_i_1_n_11 ,\decimate.counter_reg[16]_i_1_n_12 ,\decimate.counter_reg[16]_i_1_n_13 ,\decimate.counter_reg[16]_i_1_n_14 ,\decimate.counter_reg[16]_i_1_n_15 }),
        .S(\decimate.counter_reg [23:16]));
  FDRE \decimate.counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_14 ),
        .Q(\decimate.counter_reg [17]),
        .R(clear));
  FDRE \decimate.counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_13 ),
        .Q(\decimate.counter_reg [18]),
        .R(clear));
  FDRE \decimate.counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_12 ),
        .Q(\decimate.counter_reg [19]),
        .R(clear));
  FDRE \decimate.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_14 ),
        .Q(\decimate.counter_reg [1]),
        .R(clear));
  FDRE \decimate.counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_11 ),
        .Q(\decimate.counter_reg [20]),
        .R(clear));
  FDRE \decimate.counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_10 ),
        .Q(\decimate.counter_reg [21]),
        .R(clear));
  FDRE \decimate.counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_9 ),
        .Q(\decimate.counter_reg [22]),
        .R(clear));
  FDRE \decimate.counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[16]_i_1_n_8 ),
        .Q(\decimate.counter_reg [23]),
        .R(clear));
  FDRE \decimate.counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[24]_i_1_n_15 ),
        .Q(\decimate.counter_reg [24]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \decimate.counter_reg[24]_i_1 
       (.CI(\decimate.counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_decimate.counter_reg[24]_i_1_CO_UNCONNECTED [7:3],\decimate.counter_reg[24]_i_1_n_5 ,\decimate.counter_reg[24]_i_1_n_6 ,\decimate.counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_decimate.counter_reg[24]_i_1_O_UNCONNECTED [7:4],\decimate.counter_reg[24]_i_1_n_12 ,\decimate.counter_reg[24]_i_1_n_13 ,\decimate.counter_reg[24]_i_1_n_14 ,\decimate.counter_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\decimate.counter_reg [27:24]}));
  FDRE \decimate.counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[24]_i_1_n_14 ),
        .Q(\decimate.counter_reg [25]),
        .R(clear));
  FDRE \decimate.counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[24]_i_1_n_13 ),
        .Q(\decimate.counter_reg [26]),
        .R(clear));
  FDRE \decimate.counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[24]_i_1_n_12 ),
        .Q(\decimate.counter_reg [27]),
        .R(clear));
  FDRE \decimate.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_13 ),
        .Q(\decimate.counter_reg [2]),
        .R(clear));
  FDRE \decimate.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_12 ),
        .Q(\decimate.counter_reg [3]),
        .R(clear));
  FDRE \decimate.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_11 ),
        .Q(\decimate.counter_reg [4]),
        .R(clear));
  FDRE \decimate.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_10 ),
        .Q(\decimate.counter_reg [5]),
        .R(clear));
  FDRE \decimate.counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_9 ),
        .Q(\decimate.counter_reg [6]),
        .R(clear));
  FDRE \decimate.counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[0]_i_2_n_8 ),
        .Q(\decimate.counter_reg [7]),
        .R(clear));
  FDRE \decimate.counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_15 ),
        .Q(\decimate.counter_reg [8]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \decimate.counter_reg[8]_i_1 
       (.CI(\decimate.counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\decimate.counter_reg[8]_i_1_n_0 ,\decimate.counter_reg[8]_i_1_n_1 ,\decimate.counter_reg[8]_i_1_n_2 ,\decimate.counter_reg[8]_i_1_n_3 ,\decimate.counter_reg[8]_i_1_n_4 ,\decimate.counter_reg[8]_i_1_n_5 ,\decimate.counter_reg[8]_i_1_n_6 ,\decimate.counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\decimate.counter_reg[8]_i_1_n_8 ,\decimate.counter_reg[8]_i_1_n_9 ,\decimate.counter_reg[8]_i_1_n_10 ,\decimate.counter_reg[8]_i_1_n_11 ,\decimate.counter_reg[8]_i_1_n_12 ,\decimate.counter_reg[8]_i_1_n_13 ,\decimate.counter_reg[8]_i_1_n_14 ,\decimate.counter_reg[8]_i_1_n_15 }),
        .S(\decimate.counter_reg [15:8]));
  FDRE \decimate.counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\decimate.counter_reg[8]_i_1_n_14 ),
        .Q(\decimate.counter_reg [9]),
        .R(clear));
  FDRE \decimate.fifo_reg[0] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [0]),
        .Q(fifo[0]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[100] 
       (.C(clk),
        .CE(active),
        .D(N5[2]),
        .Q(fifo[100]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[101] 
       (.C(clk),
        .CE(active),
        .D(N5[3]),
        .Q(fifo[101]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[102] 
       (.C(clk),
        .CE(active),
        .D(N5[4]),
        .Q(fifo[102]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[103] 
       (.C(clk),
        .CE(active),
        .D(N5[5]),
        .Q(fifo[103]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[104] 
       (.C(clk),
        .CE(active),
        .D(N5[6]),
        .Q(fifo[104]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[105] 
       (.C(clk),
        .CE(active),
        .D(N5[7]),
        .Q(fifo[105]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[106] 
       (.C(clk),
        .CE(active),
        .D(N5[8]),
        .Q(fifo[106]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[107] 
       (.C(clk),
        .CE(active),
        .D(N5[9]),
        .Q(fifo[107]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[108] 
       (.C(clk),
        .CE(active),
        .D(N5[10]),
        .Q(fifo[108]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[109] 
       (.C(clk),
        .CE(active),
        .D(N5[11]),
        .Q(fifo[109]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[10] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [10]),
        .Q(fifo[10]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[110] 
       (.C(clk),
        .CE(active),
        .D(N5[12]),
        .Q(fifo[110]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[111] 
       (.C(clk),
        .CE(active),
        .D(N5[13]),
        .Q(fifo[111]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[112] 
       (.C(clk),
        .CE(active),
        .D(N6[0]),
        .Q(fifo[112]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[113] 
       (.C(clk),
        .CE(active),
        .D(N6[1]),
        .Q(fifo[113]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[114] 
       (.C(clk),
        .CE(active),
        .D(N6[2]),
        .Q(fifo[114]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[115] 
       (.C(clk),
        .CE(active),
        .D(N6[3]),
        .Q(fifo[115]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[116] 
       (.C(clk),
        .CE(active),
        .D(N6[4]),
        .Q(fifo[116]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[117] 
       (.C(clk),
        .CE(active),
        .D(N6[5]),
        .Q(fifo[117]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[118] 
       (.C(clk),
        .CE(active),
        .D(N6[6]),
        .Q(fifo[118]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[119] 
       (.C(clk),
        .CE(active),
        .D(N6[7]),
        .Q(fifo[119]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[11] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [11]),
        .Q(fifo[11]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[120] 
       (.C(clk),
        .CE(active),
        .D(N6[8]),
        .Q(fifo[120]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[121] 
       (.C(clk),
        .CE(active),
        .D(N6[9]),
        .Q(fifo[121]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[122] 
       (.C(clk),
        .CE(active),
        .D(N6[10]),
        .Q(fifo[122]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[123] 
       (.C(clk),
        .CE(active),
        .D(N6[11]),
        .Q(fifo[123]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[124] 
       (.C(clk),
        .CE(active),
        .D(N6[12]),
        .Q(fifo[124]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[125] 
       (.C(clk),
        .CE(active),
        .D(N6[13]),
        .Q(fifo[125]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[126] 
       (.C(clk),
        .CE(active),
        .D(N7[0]),
        .Q(fifo[126]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[127] 
       (.C(clk),
        .CE(active),
        .D(N7[1]),
        .Q(fifo[127]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[128] 
       (.C(clk),
        .CE(active),
        .D(N7[2]),
        .Q(fifo[128]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[129] 
       (.C(clk),
        .CE(active),
        .D(N7[3]),
        .Q(fifo[129]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[12] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [12]),
        .Q(fifo[12]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[130] 
       (.C(clk),
        .CE(active),
        .D(N7[4]),
        .Q(fifo[130]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[131] 
       (.C(clk),
        .CE(active),
        .D(N7[5]),
        .Q(fifo[131]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[132] 
       (.C(clk),
        .CE(active),
        .D(N7[6]),
        .Q(fifo[132]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[133] 
       (.C(clk),
        .CE(active),
        .D(N7[7]),
        .Q(fifo[133]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[134] 
       (.C(clk),
        .CE(active),
        .D(N7[8]),
        .Q(fifo[134]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[135] 
       (.C(clk),
        .CE(active),
        .D(N7[9]),
        .Q(fifo[135]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[136] 
       (.C(clk),
        .CE(active),
        .D(N7[10]),
        .Q(fifo[136]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[137] 
       (.C(clk),
        .CE(active),
        .D(N7[11]),
        .Q(fifo[137]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[138] 
       (.C(clk),
        .CE(active),
        .D(N7[12]),
        .Q(fifo[138]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[139] 
       (.C(clk),
        .CE(active),
        .D(N7[13]),
        .Q(fifo[139]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[13] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [13]),
        .Q(fifo[13]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[140] 
       (.C(clk),
        .CE(active),
        .D(N8[0]),
        .Q(fifo[140]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[141] 
       (.C(clk),
        .CE(active),
        .D(N8[1]),
        .Q(fifo[141]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[142] 
       (.C(clk),
        .CE(active),
        .D(N8[2]),
        .Q(fifo[142]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[143] 
       (.C(clk),
        .CE(active),
        .D(N8[3]),
        .Q(fifo[143]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[144] 
       (.C(clk),
        .CE(active),
        .D(N8[4]),
        .Q(fifo[144]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[145] 
       (.C(clk),
        .CE(active),
        .D(N8[5]),
        .Q(fifo[145]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[146] 
       (.C(clk),
        .CE(active),
        .D(N8[6]),
        .Q(fifo[146]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[147] 
       (.C(clk),
        .CE(active),
        .D(N8[7]),
        .Q(fifo[147]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[148] 
       (.C(clk),
        .CE(active),
        .D(N8[8]),
        .Q(fifo[148]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[149] 
       (.C(clk),
        .CE(active),
        .D(N8[9]),
        .Q(fifo[149]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[14] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [14]),
        .Q(fifo[14]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[150] 
       (.C(clk),
        .CE(active),
        .D(N8[10]),
        .Q(fifo[150]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[151] 
       (.C(clk),
        .CE(active),
        .D(N8[11]),
        .Q(fifo[151]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[152] 
       (.C(clk),
        .CE(active),
        .D(N8[12]),
        .Q(fifo[152]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[153] 
       (.C(clk),
        .CE(active),
        .D(N8[13]),
        .Q(fifo[153]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[154] 
       (.C(clk),
        .CE(active),
        .D(N9[0]),
        .Q(fifo[154]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[155] 
       (.C(clk),
        .CE(active),
        .D(N9[1]),
        .Q(fifo[155]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[156] 
       (.C(clk),
        .CE(active),
        .D(N9[2]),
        .Q(fifo[156]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[157] 
       (.C(clk),
        .CE(active),
        .D(N9[3]),
        .Q(fifo[157]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[158] 
       (.C(clk),
        .CE(active),
        .D(N9[4]),
        .Q(fifo[158]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[159] 
       (.C(clk),
        .CE(active),
        .D(N9[5]),
        .Q(fifo[159]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[15] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [15]),
        .Q(fifo[15]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[160] 
       (.C(clk),
        .CE(active),
        .D(N9[6]),
        .Q(fifo[160]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[161] 
       (.C(clk),
        .CE(active),
        .D(N9[7]),
        .Q(fifo[161]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[162] 
       (.C(clk),
        .CE(active),
        .D(N9[8]),
        .Q(fifo[162]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[163] 
       (.C(clk),
        .CE(active),
        .D(N9[9]),
        .Q(fifo[163]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[164] 
       (.C(clk),
        .CE(active),
        .D(N9[10]),
        .Q(fifo[164]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[165] 
       (.C(clk),
        .CE(active),
        .D(N9[11]),
        .Q(fifo[165]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[166] 
       (.C(clk),
        .CE(active),
        .D(N9[12]),
        .Q(fifo[166]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[167] 
       (.C(clk),
        .CE(active),
        .D(N9[13]),
        .Q(fifo[167]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[168] 
       (.C(clk),
        .CE(active),
        .D(E0[0]),
        .Q(fifo[168]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[169] 
       (.C(clk),
        .CE(active),
        .D(E0[1]),
        .Q(fifo[169]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[16] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [16]),
        .Q(fifo[16]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[170] 
       (.C(clk),
        .CE(active),
        .D(E0[2]),
        .Q(fifo[170]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[171] 
       (.C(clk),
        .CE(active),
        .D(E0[3]),
        .Q(fifo[171]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[172] 
       (.C(clk),
        .CE(active),
        .D(E0[4]),
        .Q(fifo[172]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[173] 
       (.C(clk),
        .CE(active),
        .D(E0[5]),
        .Q(fifo[173]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[174] 
       (.C(clk),
        .CE(active),
        .D(E0[6]),
        .Q(fifo[174]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[175] 
       (.C(clk),
        .CE(active),
        .D(E0[7]),
        .Q(fifo[175]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[176] 
       (.C(clk),
        .CE(active),
        .D(E0[8]),
        .Q(fifo[176]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[177] 
       (.C(clk),
        .CE(active),
        .D(E0[9]),
        .Q(fifo[177]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[178] 
       (.C(clk),
        .CE(active),
        .D(E0[10]),
        .Q(fifo[178]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[179] 
       (.C(clk),
        .CE(active),
        .D(E0[11]),
        .Q(fifo[179]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[17] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [17]),
        .Q(fifo[17]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[180] 
       (.C(clk),
        .CE(active),
        .D(E0[12]),
        .Q(fifo[180]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[181] 
       (.C(clk),
        .CE(active),
        .D(E0[13]),
        .Q(fifo[181]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[182] 
       (.C(clk),
        .CE(active),
        .D(E1[0]),
        .Q(fifo[182]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[183] 
       (.C(clk),
        .CE(active),
        .D(E1[1]),
        .Q(fifo[183]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[184] 
       (.C(clk),
        .CE(active),
        .D(E1[2]),
        .Q(fifo[184]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[185] 
       (.C(clk),
        .CE(active),
        .D(E1[3]),
        .Q(fifo[185]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[186] 
       (.C(clk),
        .CE(active),
        .D(E1[4]),
        .Q(fifo[186]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[187] 
       (.C(clk),
        .CE(active),
        .D(E1[5]),
        .Q(fifo[187]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[188] 
       (.C(clk),
        .CE(active),
        .D(E1[6]),
        .Q(fifo[188]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[189] 
       (.C(clk),
        .CE(active),
        .D(E1[7]),
        .Q(fifo[189]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[18] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [18]),
        .Q(fifo[18]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[190] 
       (.C(clk),
        .CE(active),
        .D(E1[8]),
        .Q(fifo[190]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[191] 
       (.C(clk),
        .CE(active),
        .D(E1[9]),
        .Q(fifo[191]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[192] 
       (.C(clk),
        .CE(active),
        .D(E1[10]),
        .Q(fifo[192]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[193] 
       (.C(clk),
        .CE(active),
        .D(E1[11]),
        .Q(fifo[193]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[194] 
       (.C(clk),
        .CE(active),
        .D(E1[12]),
        .Q(fifo[194]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[195] 
       (.C(clk),
        .CE(active),
        .D(E1[13]),
        .Q(fifo[195]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[196] 
       (.C(clk),
        .CE(active),
        .D(E2[0]),
        .Q(fifo[196]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[197] 
       (.C(clk),
        .CE(active),
        .D(E2[1]),
        .Q(fifo[197]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[198] 
       (.C(clk),
        .CE(active),
        .D(E2[2]),
        .Q(fifo[198]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[199] 
       (.C(clk),
        .CE(active),
        .D(E2[3]),
        .Q(fifo[199]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[19] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [19]),
        .Q(fifo[19]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[1] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [1]),
        .Q(fifo[1]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[200] 
       (.C(clk),
        .CE(active),
        .D(E2[4]),
        .Q(fifo[200]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[201] 
       (.C(clk),
        .CE(active),
        .D(E2[5]),
        .Q(fifo[201]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[202] 
       (.C(clk),
        .CE(active),
        .D(E2[6]),
        .Q(fifo[202]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[203] 
       (.C(clk),
        .CE(active),
        .D(E2[7]),
        .Q(fifo[203]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[204] 
       (.C(clk),
        .CE(active),
        .D(E2[8]),
        .Q(fifo[204]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[205] 
       (.C(clk),
        .CE(active),
        .D(E2[9]),
        .Q(fifo[205]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[206] 
       (.C(clk),
        .CE(active),
        .D(E2[10]),
        .Q(fifo[206]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[207] 
       (.C(clk),
        .CE(active),
        .D(E2[11]),
        .Q(fifo[207]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[208] 
       (.C(clk),
        .CE(active),
        .D(E2[12]),
        .Q(fifo[208]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[209] 
       (.C(clk),
        .CE(active),
        .D(E2[13]),
        .Q(fifo[209]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [20]),
        .Q(fifo[20]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[210] 
       (.C(clk),
        .CE(active),
        .D(E3[0]),
        .Q(fifo[210]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[211] 
       (.C(clk),
        .CE(active),
        .D(E3[1]),
        .Q(fifo[211]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[212] 
       (.C(clk),
        .CE(active),
        .D(E3[2]),
        .Q(fifo[212]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[213] 
       (.C(clk),
        .CE(active),
        .D(E3[3]),
        .Q(fifo[213]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[214] 
       (.C(clk),
        .CE(active),
        .D(E3[4]),
        .Q(fifo[214]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[215] 
       (.C(clk),
        .CE(active),
        .D(E3[5]),
        .Q(fifo[215]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[216] 
       (.C(clk),
        .CE(active),
        .D(E3[6]),
        .Q(fifo[216]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[217] 
       (.C(clk),
        .CE(active),
        .D(E3[7]),
        .Q(fifo[217]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[218] 
       (.C(clk),
        .CE(active),
        .D(E3[8]),
        .Q(fifo[218]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[219] 
       (.C(clk),
        .CE(active),
        .D(E3[9]),
        .Q(fifo[219]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [21]),
        .Q(fifo[21]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[220] 
       (.C(clk),
        .CE(active),
        .D(E3[10]),
        .Q(fifo[220]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[221] 
       (.C(clk),
        .CE(active),
        .D(E3[11]),
        .Q(fifo[221]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[222] 
       (.C(clk),
        .CE(active),
        .D(E3[12]),
        .Q(fifo[222]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[223] 
       (.C(clk),
        .CE(active),
        .D(E3[13]),
        .Q(fifo[223]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[224] 
       (.C(clk),
        .CE(active),
        .D(E4[0]),
        .Q(fifo[224]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[225] 
       (.C(clk),
        .CE(active),
        .D(E4[1]),
        .Q(fifo[225]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[226] 
       (.C(clk),
        .CE(active),
        .D(E4[2]),
        .Q(fifo[226]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[227] 
       (.C(clk),
        .CE(active),
        .D(E4[3]),
        .Q(fifo[227]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[228] 
       (.C(clk),
        .CE(active),
        .D(E4[4]),
        .Q(fifo[228]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[229] 
       (.C(clk),
        .CE(active),
        .D(E4[5]),
        .Q(fifo[229]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [22]),
        .Q(fifo[22]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[230] 
       (.C(clk),
        .CE(active),
        .D(E4[6]),
        .Q(fifo[230]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[231] 
       (.C(clk),
        .CE(active),
        .D(E4[7]),
        .Q(fifo[231]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[232] 
       (.C(clk),
        .CE(active),
        .D(E4[8]),
        .Q(fifo[232]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[233] 
       (.C(clk),
        .CE(active),
        .D(E4[9]),
        .Q(fifo[233]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[234] 
       (.C(clk),
        .CE(active),
        .D(E4[10]),
        .Q(fifo[234]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[235] 
       (.C(clk),
        .CE(active),
        .D(E4[11]),
        .Q(fifo[235]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[236] 
       (.C(clk),
        .CE(active),
        .D(E4[12]),
        .Q(fifo[236]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[237] 
       (.C(clk),
        .CE(active),
        .D(E4[13]),
        .Q(fifo[237]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[238] 
       (.C(clk),
        .CE(active),
        .D(E5[0]),
        .Q(fifo[238]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[239] 
       (.C(clk),
        .CE(active),
        .D(E5[1]),
        .Q(fifo[239]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[23] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [23]),
        .Q(fifo[23]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[240] 
       (.C(clk),
        .CE(active),
        .D(E5[2]),
        .Q(fifo[240]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[241] 
       (.C(clk),
        .CE(active),
        .D(E5[3]),
        .Q(fifo[241]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[242] 
       (.C(clk),
        .CE(active),
        .D(E5[4]),
        .Q(fifo[242]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[243] 
       (.C(clk),
        .CE(active),
        .D(E5[5]),
        .Q(fifo[243]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[244] 
       (.C(clk),
        .CE(active),
        .D(E5[6]),
        .Q(fifo[244]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[245] 
       (.C(clk),
        .CE(active),
        .D(E5[7]),
        .Q(fifo[245]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[246] 
       (.C(clk),
        .CE(active),
        .D(E5[8]),
        .Q(fifo[246]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[247] 
       (.C(clk),
        .CE(active),
        .D(E5[9]),
        .Q(fifo[247]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[248] 
       (.C(clk),
        .CE(active),
        .D(E5[10]),
        .Q(fifo[248]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[249] 
       (.C(clk),
        .CE(active),
        .D(E5[11]),
        .Q(fifo[249]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[24] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [24]),
        .Q(fifo[24]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[250] 
       (.C(clk),
        .CE(active),
        .D(E5[12]),
        .Q(fifo[250]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[251] 
       (.C(clk),
        .CE(active),
        .D(E5[13]),
        .Q(fifo[251]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[252] 
       (.C(clk),
        .CE(active),
        .D(E6[0]),
        .Q(fifo[252]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[253] 
       (.C(clk),
        .CE(active),
        .D(E6[1]),
        .Q(fifo[253]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[254] 
       (.C(clk),
        .CE(active),
        .D(E6[2]),
        .Q(fifo[254]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[255] 
       (.C(clk),
        .CE(active),
        .D(E6[3]),
        .Q(fifo[255]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[256] 
       (.C(clk),
        .CE(active),
        .D(E6[4]),
        .Q(fifo[256]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[257] 
       (.C(clk),
        .CE(active),
        .D(E6[5]),
        .Q(fifo[257]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[258] 
       (.C(clk),
        .CE(active),
        .D(E6[6]),
        .Q(fifo[258]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[259] 
       (.C(clk),
        .CE(active),
        .D(E6[7]),
        .Q(fifo[259]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[25] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [25]),
        .Q(fifo[25]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[260] 
       (.C(clk),
        .CE(active),
        .D(E6[8]),
        .Q(fifo[260]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[261] 
       (.C(clk),
        .CE(active),
        .D(E6[9]),
        .Q(fifo[261]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[262] 
       (.C(clk),
        .CE(active),
        .D(E6[10]),
        .Q(fifo[262]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[263] 
       (.C(clk),
        .CE(active),
        .D(E6[11]),
        .Q(fifo[263]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[264] 
       (.C(clk),
        .CE(active),
        .D(E6[12]),
        .Q(fifo[264]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[265] 
       (.C(clk),
        .CE(active),
        .D(E6[13]),
        .Q(fifo[265]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[266] 
       (.C(clk),
        .CE(active),
        .D(E7[0]),
        .Q(fifo[266]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[267] 
       (.C(clk),
        .CE(active),
        .D(E7[1]),
        .Q(fifo[267]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[268] 
       (.C(clk),
        .CE(active),
        .D(E7[2]),
        .Q(fifo[268]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[269] 
       (.C(clk),
        .CE(active),
        .D(E7[3]),
        .Q(fifo[269]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[26] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [26]),
        .Q(fifo[26]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[270] 
       (.C(clk),
        .CE(active),
        .D(E7[4]),
        .Q(fifo[270]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[271] 
       (.C(clk),
        .CE(active),
        .D(E7[5]),
        .Q(fifo[271]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[272] 
       (.C(clk),
        .CE(active),
        .D(E7[6]),
        .Q(fifo[272]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[273] 
       (.C(clk),
        .CE(active),
        .D(E7[7]),
        .Q(fifo[273]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[274] 
       (.C(clk),
        .CE(active),
        .D(E7[8]),
        .Q(fifo[274]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[275] 
       (.C(clk),
        .CE(active),
        .D(E7[9]),
        .Q(fifo[275]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[276] 
       (.C(clk),
        .CE(active),
        .D(E7[10]),
        .Q(fifo[276]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[277] 
       (.C(clk),
        .CE(active),
        .D(E7[11]),
        .Q(fifo[277]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[278] 
       (.C(clk),
        .CE(active),
        .D(E7[12]),
        .Q(fifo[278]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[279] 
       (.C(clk),
        .CE(active),
        .D(E7[13]),
        .Q(fifo[279]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[27] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [27]),
        .Q(fifo[27]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[280] 
       (.C(clk),
        .CE(active),
        .D(E8[0]),
        .Q(fifo[280]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[281] 
       (.C(clk),
        .CE(active),
        .D(E8[1]),
        .Q(fifo[281]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[282] 
       (.C(clk),
        .CE(active),
        .D(E8[2]),
        .Q(fifo[282]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[283] 
       (.C(clk),
        .CE(active),
        .D(E8[3]),
        .Q(fifo[283]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[284] 
       (.C(clk),
        .CE(active),
        .D(E8[4]),
        .Q(fifo[284]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[285] 
       (.C(clk),
        .CE(active),
        .D(E8[5]),
        .Q(fifo[285]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[286] 
       (.C(clk),
        .CE(active),
        .D(E8[6]),
        .Q(fifo[286]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[287] 
       (.C(clk),
        .CE(active),
        .D(E8[7]),
        .Q(fifo[287]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[288] 
       (.C(clk),
        .CE(active),
        .D(E8[8]),
        .Q(fifo[288]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[289] 
       (.C(clk),
        .CE(active),
        .D(E8[9]),
        .Q(fifo[289]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[28] 
       (.C(clk),
        .CE(active),
        .D(N0[0]),
        .Q(fifo[28]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[290] 
       (.C(clk),
        .CE(active),
        .D(E8[10]),
        .Q(fifo[290]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[291] 
       (.C(clk),
        .CE(active),
        .D(E8[11]),
        .Q(fifo[291]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[292] 
       (.C(clk),
        .CE(active),
        .D(E8[12]),
        .Q(fifo[292]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[293] 
       (.C(clk),
        .CE(active),
        .D(E8[13]),
        .Q(fifo[293]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[294] 
       (.C(clk),
        .CE(active),
        .D(E9[0]),
        .Q(fifo[294]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[295] 
       (.C(clk),
        .CE(active),
        .D(E9[1]),
        .Q(fifo[295]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[296] 
       (.C(clk),
        .CE(active),
        .D(E9[2]),
        .Q(fifo[296]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[297] 
       (.C(clk),
        .CE(active),
        .D(E9[3]),
        .Q(fifo[297]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[298] 
       (.C(clk),
        .CE(active),
        .D(E9[4]),
        .Q(fifo[298]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[299] 
       (.C(clk),
        .CE(active),
        .D(E9[5]),
        .Q(fifo[299]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[29] 
       (.C(clk),
        .CE(active),
        .D(N0[1]),
        .Q(fifo[29]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[2] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [2]),
        .Q(fifo[2]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[300] 
       (.C(clk),
        .CE(active),
        .D(E9[6]),
        .Q(fifo[300]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[301] 
       (.C(clk),
        .CE(active),
        .D(E9[7]),
        .Q(fifo[301]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[302] 
       (.C(clk),
        .CE(active),
        .D(E9[8]),
        .Q(fifo[302]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[303] 
       (.C(clk),
        .CE(active),
        .D(E9[9]),
        .Q(fifo[303]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[304] 
       (.C(clk),
        .CE(active),
        .D(E9[10]),
        .Q(fifo[304]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[305] 
       (.C(clk),
        .CE(active),
        .D(E9[11]),
        .Q(fifo[305]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[306] 
       (.C(clk),
        .CE(active),
        .D(E9[12]),
        .Q(fifo[306]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[307] 
       (.C(clk),
        .CE(active),
        .D(E9[13]),
        .Q(fifo[307]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[308] 
       (.C(clk),
        .CE(active),
        .D(W0[0]),
        .Q(fifo[308]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[309] 
       (.C(clk),
        .CE(active),
        .D(W0[1]),
        .Q(fifo[309]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[30] 
       (.C(clk),
        .CE(active),
        .D(N0[2]),
        .Q(fifo[30]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[310] 
       (.C(clk),
        .CE(active),
        .D(W0[2]),
        .Q(fifo[310]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[311] 
       (.C(clk),
        .CE(active),
        .D(W0[3]),
        .Q(fifo[311]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[312] 
       (.C(clk),
        .CE(active),
        .D(W0[4]),
        .Q(fifo[312]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[313] 
       (.C(clk),
        .CE(active),
        .D(W0[5]),
        .Q(fifo[313]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[314] 
       (.C(clk),
        .CE(active),
        .D(W0[6]),
        .Q(fifo[314]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[315] 
       (.C(clk),
        .CE(active),
        .D(W0[7]),
        .Q(fifo[315]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[316] 
       (.C(clk),
        .CE(active),
        .D(W0[8]),
        .Q(fifo[316]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[317] 
       (.C(clk),
        .CE(active),
        .D(W0[9]),
        .Q(fifo[317]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[318] 
       (.C(clk),
        .CE(active),
        .D(W0[10]),
        .Q(fifo[318]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[319] 
       (.C(clk),
        .CE(active),
        .D(W0[11]),
        .Q(fifo[319]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[31] 
       (.C(clk),
        .CE(active),
        .D(N0[3]),
        .Q(fifo[31]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[320] 
       (.C(clk),
        .CE(active),
        .D(W0[12]),
        .Q(fifo[320]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[321] 
       (.C(clk),
        .CE(active),
        .D(W0[13]),
        .Q(fifo[321]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[322] 
       (.C(clk),
        .CE(active),
        .D(W1[0]),
        .Q(fifo[322]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[323] 
       (.C(clk),
        .CE(active),
        .D(W1[1]),
        .Q(fifo[323]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[324] 
       (.C(clk),
        .CE(active),
        .D(W1[2]),
        .Q(fifo[324]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[325] 
       (.C(clk),
        .CE(active),
        .D(W1[3]),
        .Q(fifo[325]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[326] 
       (.C(clk),
        .CE(active),
        .D(W1[4]),
        .Q(fifo[326]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[327] 
       (.C(clk),
        .CE(active),
        .D(W1[5]),
        .Q(fifo[327]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[328] 
       (.C(clk),
        .CE(active),
        .D(W1[6]),
        .Q(fifo[328]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[329] 
       (.C(clk),
        .CE(active),
        .D(W1[7]),
        .Q(fifo[329]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[32] 
       (.C(clk),
        .CE(active),
        .D(N0[4]),
        .Q(fifo[32]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[330] 
       (.C(clk),
        .CE(active),
        .D(W1[8]),
        .Q(fifo[330]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[331] 
       (.C(clk),
        .CE(active),
        .D(W1[9]),
        .Q(fifo[331]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[332] 
       (.C(clk),
        .CE(active),
        .D(W1[10]),
        .Q(fifo[332]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[333] 
       (.C(clk),
        .CE(active),
        .D(W1[11]),
        .Q(fifo[333]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[334] 
       (.C(clk),
        .CE(active),
        .D(W1[12]),
        .Q(fifo[334]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[335] 
       (.C(clk),
        .CE(active),
        .D(W1[13]),
        .Q(fifo[335]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[336] 
       (.C(clk),
        .CE(active),
        .D(W2[0]),
        .Q(fifo[336]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[337] 
       (.C(clk),
        .CE(active),
        .D(W2[1]),
        .Q(fifo[337]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[338] 
       (.C(clk),
        .CE(active),
        .D(W2[2]),
        .Q(fifo[338]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[339] 
       (.C(clk),
        .CE(active),
        .D(W2[3]),
        .Q(fifo[339]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[33] 
       (.C(clk),
        .CE(active),
        .D(N0[5]),
        .Q(fifo[33]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[340] 
       (.C(clk),
        .CE(active),
        .D(W2[4]),
        .Q(fifo[340]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[341] 
       (.C(clk),
        .CE(active),
        .D(W2[5]),
        .Q(fifo[341]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[342] 
       (.C(clk),
        .CE(active),
        .D(W2[6]),
        .Q(fifo[342]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[343] 
       (.C(clk),
        .CE(active),
        .D(W2[7]),
        .Q(fifo[343]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[344] 
       (.C(clk),
        .CE(active),
        .D(W2[8]),
        .Q(fifo[344]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[345] 
       (.C(clk),
        .CE(active),
        .D(W2[9]),
        .Q(fifo[345]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[346] 
       (.C(clk),
        .CE(active),
        .D(W2[10]),
        .Q(fifo[346]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[347] 
       (.C(clk),
        .CE(active),
        .D(W2[11]),
        .Q(fifo[347]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[348] 
       (.C(clk),
        .CE(active),
        .D(W2[12]),
        .Q(fifo[348]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[349] 
       (.C(clk),
        .CE(active),
        .D(W2[13]),
        .Q(fifo[349]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[34] 
       (.C(clk),
        .CE(active),
        .D(N0[6]),
        .Q(fifo[34]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[350] 
       (.C(clk),
        .CE(active),
        .D(W3[0]),
        .Q(fifo[350]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[351] 
       (.C(clk),
        .CE(active),
        .D(W3[1]),
        .Q(fifo[351]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[352] 
       (.C(clk),
        .CE(active),
        .D(W3[2]),
        .Q(fifo[352]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[353] 
       (.C(clk),
        .CE(active),
        .D(W3[3]),
        .Q(fifo[353]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[354] 
       (.C(clk),
        .CE(active),
        .D(W3[4]),
        .Q(fifo[354]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[355] 
       (.C(clk),
        .CE(active),
        .D(W3[5]),
        .Q(fifo[355]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[356] 
       (.C(clk),
        .CE(active),
        .D(W3[6]),
        .Q(fifo[356]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[357] 
       (.C(clk),
        .CE(active),
        .D(W3[7]),
        .Q(fifo[357]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[358] 
       (.C(clk),
        .CE(active),
        .D(W3[8]),
        .Q(fifo[358]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[359] 
       (.C(clk),
        .CE(active),
        .D(W3[9]),
        .Q(fifo[359]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[35] 
       (.C(clk),
        .CE(active),
        .D(N0[7]),
        .Q(fifo[35]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[360] 
       (.C(clk),
        .CE(active),
        .D(W3[10]),
        .Q(fifo[360]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[361] 
       (.C(clk),
        .CE(active),
        .D(W3[11]),
        .Q(fifo[361]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[362] 
       (.C(clk),
        .CE(active),
        .D(W3[12]),
        .Q(fifo[362]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[363] 
       (.C(clk),
        .CE(active),
        .D(W3[13]),
        .Q(fifo[363]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[364] 
       (.C(clk),
        .CE(active),
        .D(W4[0]),
        .Q(fifo[364]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[365] 
       (.C(clk),
        .CE(active),
        .D(W4[1]),
        .Q(fifo[365]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[366] 
       (.C(clk),
        .CE(active),
        .D(W4[2]),
        .Q(fifo[366]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[367] 
       (.C(clk),
        .CE(active),
        .D(W4[3]),
        .Q(fifo[367]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[368] 
       (.C(clk),
        .CE(active),
        .D(W4[4]),
        .Q(fifo[368]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[369] 
       (.C(clk),
        .CE(active),
        .D(W4[5]),
        .Q(fifo[369]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[36] 
       (.C(clk),
        .CE(active),
        .D(N0[8]),
        .Q(fifo[36]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[370] 
       (.C(clk),
        .CE(active),
        .D(W4[6]),
        .Q(fifo[370]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[371] 
       (.C(clk),
        .CE(active),
        .D(W4[7]),
        .Q(fifo[371]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[372] 
       (.C(clk),
        .CE(active),
        .D(W4[8]),
        .Q(fifo[372]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[373] 
       (.C(clk),
        .CE(active),
        .D(W4[9]),
        .Q(fifo[373]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[374] 
       (.C(clk),
        .CE(active),
        .D(W4[10]),
        .Q(fifo[374]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[375] 
       (.C(clk),
        .CE(active),
        .D(W4[11]),
        .Q(fifo[375]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[376] 
       (.C(clk),
        .CE(active),
        .D(W4[12]),
        .Q(fifo[376]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[377] 
       (.C(clk),
        .CE(active),
        .D(W4[13]),
        .Q(fifo[377]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[378] 
       (.C(clk),
        .CE(active),
        .D(W5[0]),
        .Q(fifo[378]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[379] 
       (.C(clk),
        .CE(active),
        .D(W5[1]),
        .Q(fifo[379]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[37] 
       (.C(clk),
        .CE(active),
        .D(N0[9]),
        .Q(fifo[37]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[380] 
       (.C(clk),
        .CE(active),
        .D(W5[2]),
        .Q(fifo[380]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[381] 
       (.C(clk),
        .CE(active),
        .D(W5[3]),
        .Q(fifo[381]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[382] 
       (.C(clk),
        .CE(active),
        .D(W5[4]),
        .Q(fifo[382]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[383] 
       (.C(clk),
        .CE(active),
        .D(W5[5]),
        .Q(fifo[383]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[384] 
       (.C(clk),
        .CE(active),
        .D(W5[6]),
        .Q(fifo[384]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[385] 
       (.C(clk),
        .CE(active),
        .D(W5[7]),
        .Q(fifo[385]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[386] 
       (.C(clk),
        .CE(active),
        .D(W5[8]),
        .Q(fifo[386]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[387] 
       (.C(clk),
        .CE(active),
        .D(W5[9]),
        .Q(fifo[387]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[388] 
       (.C(clk),
        .CE(active),
        .D(W5[10]),
        .Q(fifo[388]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[389] 
       (.C(clk),
        .CE(active),
        .D(W5[11]),
        .Q(fifo[389]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[38] 
       (.C(clk),
        .CE(active),
        .D(N0[10]),
        .Q(fifo[38]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[390] 
       (.C(clk),
        .CE(active),
        .D(W5[12]),
        .Q(fifo[390]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[391] 
       (.C(clk),
        .CE(active),
        .D(W5[13]),
        .Q(fifo[391]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[392] 
       (.C(clk),
        .CE(active),
        .D(W6[0]),
        .Q(fifo[392]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[393] 
       (.C(clk),
        .CE(active),
        .D(W6[1]),
        .Q(fifo[393]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[394] 
       (.C(clk),
        .CE(active),
        .D(W6[2]),
        .Q(fifo[394]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[395] 
       (.C(clk),
        .CE(active),
        .D(W6[3]),
        .Q(fifo[395]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[396] 
       (.C(clk),
        .CE(active),
        .D(W6[4]),
        .Q(fifo[396]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[397] 
       (.C(clk),
        .CE(active),
        .D(W6[5]),
        .Q(fifo[397]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[398] 
       (.C(clk),
        .CE(active),
        .D(W6[6]),
        .Q(fifo[398]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[399] 
       (.C(clk),
        .CE(active),
        .D(W6[7]),
        .Q(fifo[399]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[39] 
       (.C(clk),
        .CE(active),
        .D(N0[11]),
        .Q(fifo[39]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[3] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [3]),
        .Q(fifo[3]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[400] 
       (.C(clk),
        .CE(active),
        .D(W6[8]),
        .Q(fifo[400]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[401] 
       (.C(clk),
        .CE(active),
        .D(W6[9]),
        .Q(fifo[401]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[402] 
       (.C(clk),
        .CE(active),
        .D(W6[10]),
        .Q(fifo[402]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[403] 
       (.C(clk),
        .CE(active),
        .D(W6[11]),
        .Q(fifo[403]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[404] 
       (.C(clk),
        .CE(active),
        .D(W6[12]),
        .Q(fifo[404]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[405] 
       (.C(clk),
        .CE(active),
        .D(W6[13]),
        .Q(fifo[405]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[406] 
       (.C(clk),
        .CE(active),
        .D(W7[0]),
        .Q(fifo[406]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[407] 
       (.C(clk),
        .CE(active),
        .D(W7[1]),
        .Q(fifo[407]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[408] 
       (.C(clk),
        .CE(active),
        .D(W7[2]),
        .Q(fifo[408]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[409] 
       (.C(clk),
        .CE(active),
        .D(W7[3]),
        .Q(fifo[409]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[40] 
       (.C(clk),
        .CE(active),
        .D(N0[12]),
        .Q(fifo[40]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[410] 
       (.C(clk),
        .CE(active),
        .D(W7[4]),
        .Q(fifo[410]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[411] 
       (.C(clk),
        .CE(active),
        .D(W7[5]),
        .Q(fifo[411]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[412] 
       (.C(clk),
        .CE(active),
        .D(W7[6]),
        .Q(fifo[412]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[413] 
       (.C(clk),
        .CE(active),
        .D(W7[7]),
        .Q(fifo[413]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[414] 
       (.C(clk),
        .CE(active),
        .D(W7[8]),
        .Q(fifo[414]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[415] 
       (.C(clk),
        .CE(active),
        .D(W7[9]),
        .Q(fifo[415]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[416] 
       (.C(clk),
        .CE(active),
        .D(W7[10]),
        .Q(fifo[416]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[417] 
       (.C(clk),
        .CE(active),
        .D(W7[11]),
        .Q(fifo[417]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[418] 
       (.C(clk),
        .CE(active),
        .D(W7[12]),
        .Q(fifo[418]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[419] 
       (.C(clk),
        .CE(active),
        .D(W7[13]),
        .Q(fifo[419]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[41] 
       (.C(clk),
        .CE(active),
        .D(N0[13]),
        .Q(fifo[41]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[420] 
       (.C(clk),
        .CE(active),
        .D(W8[0]),
        .Q(fifo[420]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[421] 
       (.C(clk),
        .CE(active),
        .D(W8[1]),
        .Q(fifo[421]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[422] 
       (.C(clk),
        .CE(active),
        .D(W8[2]),
        .Q(fifo[422]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[423] 
       (.C(clk),
        .CE(active),
        .D(W8[3]),
        .Q(fifo[423]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[424] 
       (.C(clk),
        .CE(active),
        .D(W8[4]),
        .Q(fifo[424]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[425] 
       (.C(clk),
        .CE(active),
        .D(W8[5]),
        .Q(fifo[425]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[426] 
       (.C(clk),
        .CE(active),
        .D(W8[6]),
        .Q(fifo[426]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[427] 
       (.C(clk),
        .CE(active),
        .D(W8[7]),
        .Q(fifo[427]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[428] 
       (.C(clk),
        .CE(active),
        .D(W8[8]),
        .Q(fifo[428]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[429] 
       (.C(clk),
        .CE(active),
        .D(W8[9]),
        .Q(fifo[429]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[42] 
       (.C(clk),
        .CE(active),
        .D(N1[0]),
        .Q(fifo[42]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[430] 
       (.C(clk),
        .CE(active),
        .D(W8[10]),
        .Q(fifo[430]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[431] 
       (.C(clk),
        .CE(active),
        .D(W8[11]),
        .Q(fifo[431]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[432] 
       (.C(clk),
        .CE(active),
        .D(W8[12]),
        .Q(fifo[432]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[433] 
       (.C(clk),
        .CE(active),
        .D(W8[13]),
        .Q(fifo[433]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[434] 
       (.C(clk),
        .CE(active),
        .D(W9[0]),
        .Q(fifo[434]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[435] 
       (.C(clk),
        .CE(active),
        .D(W9[1]),
        .Q(fifo[435]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[436] 
       (.C(clk),
        .CE(active),
        .D(W9[2]),
        .Q(fifo[436]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[437] 
       (.C(clk),
        .CE(active),
        .D(W9[3]),
        .Q(fifo[437]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[438] 
       (.C(clk),
        .CE(active),
        .D(W9[4]),
        .Q(fifo[438]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[439] 
       (.C(clk),
        .CE(active),
        .D(W9[5]),
        .Q(fifo[439]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[43] 
       (.C(clk),
        .CE(active),
        .D(N1[1]),
        .Q(fifo[43]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[440] 
       (.C(clk),
        .CE(active),
        .D(W9[6]),
        .Q(fifo[440]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[441] 
       (.C(clk),
        .CE(active),
        .D(W9[7]),
        .Q(fifo[441]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[442] 
       (.C(clk),
        .CE(active),
        .D(W9[8]),
        .Q(fifo[442]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[443] 
       (.C(clk),
        .CE(active),
        .D(W9[9]),
        .Q(fifo[443]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[444] 
       (.C(clk),
        .CE(active),
        .D(W9[10]),
        .Q(fifo[444]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[445] 
       (.C(clk),
        .CE(active),
        .D(W9[11]),
        .Q(fifo[445]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[446] 
       (.C(clk),
        .CE(active),
        .D(W9[12]),
        .Q(fifo[446]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[447] 
       (.C(clk),
        .CE(active),
        .D(W9[13]),
        .Q(fifo[447]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[44] 
       (.C(clk),
        .CE(active),
        .D(N1[2]),
        .Q(fifo[44]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[45] 
       (.C(clk),
        .CE(active),
        .D(N1[3]),
        .Q(fifo[45]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[46] 
       (.C(clk),
        .CE(active),
        .D(N1[4]),
        .Q(fifo[46]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[47] 
       (.C(clk),
        .CE(active),
        .D(N1[5]),
        .Q(fifo[47]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[48] 
       (.C(clk),
        .CE(active),
        .D(N1[6]),
        .Q(fifo[48]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[49] 
       (.C(clk),
        .CE(active),
        .D(N1[7]),
        .Q(fifo[49]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[4] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [4]),
        .Q(fifo[4]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[50] 
       (.C(clk),
        .CE(active),
        .D(N1[8]),
        .Q(fifo[50]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[51] 
       (.C(clk),
        .CE(active),
        .D(N1[9]),
        .Q(fifo[51]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[52] 
       (.C(clk),
        .CE(active),
        .D(N1[10]),
        .Q(fifo[52]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[53] 
       (.C(clk),
        .CE(active),
        .D(N1[11]),
        .Q(fifo[53]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[54] 
       (.C(clk),
        .CE(active),
        .D(N1[12]),
        .Q(fifo[54]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[55] 
       (.C(clk),
        .CE(active),
        .D(N1[13]),
        .Q(fifo[55]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[56] 
       (.C(clk),
        .CE(active),
        .D(N2[0]),
        .Q(fifo[56]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[57] 
       (.C(clk),
        .CE(active),
        .D(N2[1]),
        .Q(fifo[57]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[58] 
       (.C(clk),
        .CE(active),
        .D(N2[2]),
        .Q(fifo[58]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[59] 
       (.C(clk),
        .CE(active),
        .D(N2[3]),
        .Q(fifo[59]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[5] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [5]),
        .Q(fifo[5]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[60] 
       (.C(clk),
        .CE(active),
        .D(N2[4]),
        .Q(fifo[60]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[61] 
       (.C(clk),
        .CE(active),
        .D(N2[5]),
        .Q(fifo[61]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[62] 
       (.C(clk),
        .CE(active),
        .D(N2[6]),
        .Q(fifo[62]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[63] 
       (.C(clk),
        .CE(active),
        .D(N2[7]),
        .Q(fifo[63]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[64] 
       (.C(clk),
        .CE(active),
        .D(N2[8]),
        .Q(fifo[64]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[65] 
       (.C(clk),
        .CE(active),
        .D(N2[9]),
        .Q(fifo[65]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[66] 
       (.C(clk),
        .CE(active),
        .D(N2[10]),
        .Q(fifo[66]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[67] 
       (.C(clk),
        .CE(active),
        .D(N2[11]),
        .Q(fifo[67]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[68] 
       (.C(clk),
        .CE(active),
        .D(N2[12]),
        .Q(fifo[68]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[69] 
       (.C(clk),
        .CE(active),
        .D(N2[13]),
        .Q(fifo[69]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[6] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [6]),
        .Q(fifo[6]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[70] 
       (.C(clk),
        .CE(active),
        .D(N3[0]),
        .Q(fifo[70]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[71] 
       (.C(clk),
        .CE(active),
        .D(N3[1]),
        .Q(fifo[71]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[72] 
       (.C(clk),
        .CE(active),
        .D(N3[2]),
        .Q(fifo[72]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[73] 
       (.C(clk),
        .CE(active),
        .D(N3[3]),
        .Q(fifo[73]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[74] 
       (.C(clk),
        .CE(active),
        .D(N3[4]),
        .Q(fifo[74]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[75] 
       (.C(clk),
        .CE(active),
        .D(N3[5]),
        .Q(fifo[75]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[76] 
       (.C(clk),
        .CE(active),
        .D(N3[6]),
        .Q(fifo[76]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[77] 
       (.C(clk),
        .CE(active),
        .D(N3[7]),
        .Q(fifo[77]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[78] 
       (.C(clk),
        .CE(active),
        .D(N3[8]),
        .Q(fifo[78]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[79] 
       (.C(clk),
        .CE(active),
        .D(N3[9]),
        .Q(fifo[79]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[7] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [7]),
        .Q(fifo[7]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[80] 
       (.C(clk),
        .CE(active),
        .D(N3[10]),
        .Q(fifo[80]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[81] 
       (.C(clk),
        .CE(active),
        .D(N3[11]),
        .Q(fifo[81]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[82] 
       (.C(clk),
        .CE(active),
        .D(N3[12]),
        .Q(fifo[82]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[83] 
       (.C(clk),
        .CE(active),
        .D(N3[13]),
        .Q(fifo[83]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[84] 
       (.C(clk),
        .CE(active),
        .D(N4[0]),
        .Q(fifo[84]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[85] 
       (.C(clk),
        .CE(active),
        .D(N4[1]),
        .Q(fifo[85]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[86] 
       (.C(clk),
        .CE(active),
        .D(N4[2]),
        .Q(fifo[86]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[87] 
       (.C(clk),
        .CE(active),
        .D(N4[3]),
        .Q(fifo[87]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[88] 
       (.C(clk),
        .CE(active),
        .D(N4[4]),
        .Q(fifo[88]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[89] 
       (.C(clk),
        .CE(active),
        .D(N4[5]),
        .Q(fifo[89]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[8] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [8]),
        .Q(fifo[8]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[90] 
       (.C(clk),
        .CE(active),
        .D(N4[6]),
        .Q(fifo[90]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[91] 
       (.C(clk),
        .CE(active),
        .D(N4[7]),
        .Q(fifo[91]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[92] 
       (.C(clk),
        .CE(active),
        .D(N4[8]),
        .Q(fifo[92]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[93] 
       (.C(clk),
        .CE(active),
        .D(N4[9]),
        .Q(fifo[93]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[94] 
       (.C(clk),
        .CE(active),
        .D(N4[10]),
        .Q(fifo[94]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[95] 
       (.C(clk),
        .CE(active),
        .D(N4[11]),
        .Q(fifo[95]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[96] 
       (.C(clk),
        .CE(active),
        .D(N4[12]),
        .Q(fifo[96]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[97] 
       (.C(clk),
        .CE(active),
        .D(N4[13]),
        .Q(fifo[97]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[98] 
       (.C(clk),
        .CE(active),
        .D(N5[0]),
        .Q(fifo[98]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[99] 
       (.C(clk),
        .CE(active),
        .D(N5[1]),
        .Q(fifo[99]),
        .R(1'b0));
  FDRE \decimate.fifo_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\decimate.counter_reg [9]),
        .Q(fifo[9]),
        .R(1'b0));
  FDRE \decimate.fifo_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active),
        .Q(fifo_wr),
        .R(1'b0));
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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_decimate_0_0_ila_0 ila_E
       (.clk(clk),
        .probe0(E0),
        .probe1(E1),
        .probe10(ready_E),
        .probe11(fir_E),
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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_decimate_0_0_ila_0 ila_N
       (.clk(clk),
        .probe0(N0),
        .probe1(N1),
        .probe10(ready_N),
        .probe11(fir_N),
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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_decimate_0_0_ila_0_HD1 ila_W
       (.clk(clk),
        .probe0(W0),
        .probe1(W1),
        .probe10(ready_W),
        .probe11(fir_W),
        .probe12(valid_W),
        .probe2(W2),
        .probe3(W3),
        .probe4(W4),
        .probe5(W5),
        .probe6(W6),
        .probe7(W7),
        .probe8(W8),
        .probe9(W9));
endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_decimate_0_0_ila_0
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
  input [23:0]probe11;
  input [0:0]probe12;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_decimate_0_0_ila_0_HD1
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
  input [23:0]probe11;
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
