// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Jan 10 12:30:54 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_raw_0_1/ps_raw_0_1_sim_netlist.v
// Design      : ps_raw_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_raw_0_1,raw,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "raw,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_raw_0_1
   (fifo_clk,
    fifo_wr,
    raw_in_N,
    raw_in_E,
    raw_in_W,
    clk,
    reset,
    active,
    sample,
    raw_N,
    raw_E,
    raw_W);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_wr;
  input [127:0]raw_in_N;
  input [127:0]raw_in_E;
  input [127:0]raw_in_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output active;
  output [63:0]sample;
  output [127:0]raw_N;
  output [127:0]raw_E;
  output [127:0]raw_W;

  wire active;
  wire clk;
  wire fifo_clk;
  wire fifo_wr;
  wire [127:0]raw_E;
  wire [127:0]raw_N;
  wire [127:0]raw_W;
  wire [127:0]raw_in_E;
  wire [127:0]raw_in_N;
  wire [127:0]raw_in_W;
  wire reset;
  wire [63:0]sample;

  ps_raw_0_1_raw inst
       (.active(active),
        .clk(clk),
        .fifo_clk(fifo_clk),
        .fifo_wr(fifo_wr),
        .raw_E(raw_E),
        .raw_N(raw_N),
        .raw_W(raw_W),
        .raw_in_E(raw_in_E),
        .raw_in_N(raw_in_N),
        .raw_in_W(raw_in_W),
        .reset(reset),
        .sample(sample));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_raw_0_1_fifo_raw_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [383:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [383:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_raw_0_1_ila_0
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [8:0]probe2;
  input [0:0]probe3;
  input [63:0]probe4;


endmodule

(* ORIG_REF_NAME = "raw" *) (* keep_hierarchy = "soft" *) 
module ps_raw_0_1_raw
   (fifo_clk,
    fifo_wr,
    raw_in_N,
    raw_in_E,
    raw_in_W,
    clk,
    reset,
    active,
    sample,
    raw_N,
    raw_E,
    raw_W);
  input fifo_clk;
  input fifo_wr;
  input [127:0]raw_in_N;
  input [127:0]raw_in_E;
  input [127:0]raw_in_W;
  input clk;
  input reset;
  output active;
  output [63:0]sample;
  output [127:0]raw_N;
  output [127:0]raw_E;
  output [127:0]raw_W;

  (* MARK_DEBUG *) wire active;
  wire clk;
  wire fifo_clk;
  wire fifo_wr;
  wire \raw.raw_delay[8]_i_1_n_0 ;
  wire \raw.raw_delay[8]_i_3_n_0 ;
  wire [8:0]\raw.raw_delay_reg0 ;
  wire \raw.raw_rd_i_1_n_0 ;
  wire \raw.sample[0]_i_1_n_0 ;
  wire \raw.sample[39]_i_2_n_0 ;
  wire \raw.sample[63]_i_1_n_0 ;
  wire \raw.sample_cy_i_1_n_0 ;
  wire \raw.sample_cy_i_2_n_0 ;
  wire \raw.sample_cy_i_3_n_0 ;
  wire \raw.sample_cy_i_4_n_0 ;
  wire \raw.sample_cy_i_5_n_0 ;
  wire \raw.sample_cy_i_6_n_0 ;
  wire \raw.sample_cy_i_7_n_0 ;
  wire \raw.sample_cy_reg_n_0 ;
  wire \raw.sample_reg[16]_i_1_n_0 ;
  wire \raw.sample_reg[16]_i_1_n_1 ;
  wire \raw.sample_reg[16]_i_1_n_10 ;
  wire \raw.sample_reg[16]_i_1_n_11 ;
  wire \raw.sample_reg[16]_i_1_n_12 ;
  wire \raw.sample_reg[16]_i_1_n_13 ;
  wire \raw.sample_reg[16]_i_1_n_14 ;
  wire \raw.sample_reg[16]_i_1_n_15 ;
  wire \raw.sample_reg[16]_i_1_n_2 ;
  wire \raw.sample_reg[16]_i_1_n_3 ;
  wire \raw.sample_reg[16]_i_1_n_4 ;
  wire \raw.sample_reg[16]_i_1_n_5 ;
  wire \raw.sample_reg[16]_i_1_n_6 ;
  wire \raw.sample_reg[16]_i_1_n_7 ;
  wire \raw.sample_reg[16]_i_1_n_8 ;
  wire \raw.sample_reg[16]_i_1_n_9 ;
  wire \raw.sample_reg[24]_i_1_n_0 ;
  wire \raw.sample_reg[24]_i_1_n_1 ;
  wire \raw.sample_reg[24]_i_1_n_10 ;
  wire \raw.sample_reg[24]_i_1_n_11 ;
  wire \raw.sample_reg[24]_i_1_n_12 ;
  wire \raw.sample_reg[24]_i_1_n_13 ;
  wire \raw.sample_reg[24]_i_1_n_14 ;
  wire \raw.sample_reg[24]_i_1_n_15 ;
  wire \raw.sample_reg[24]_i_1_n_2 ;
  wire \raw.sample_reg[24]_i_1_n_3 ;
  wire \raw.sample_reg[24]_i_1_n_4 ;
  wire \raw.sample_reg[24]_i_1_n_5 ;
  wire \raw.sample_reg[24]_i_1_n_6 ;
  wire \raw.sample_reg[24]_i_1_n_7 ;
  wire \raw.sample_reg[24]_i_1_n_8 ;
  wire \raw.sample_reg[24]_i_1_n_9 ;
  wire \raw.sample_reg[31]_i_1_n_10 ;
  wire \raw.sample_reg[31]_i_1_n_11 ;
  wire \raw.sample_reg[31]_i_1_n_12 ;
  wire \raw.sample_reg[31]_i_1_n_13 ;
  wire \raw.sample_reg[31]_i_1_n_14 ;
  wire \raw.sample_reg[31]_i_1_n_15 ;
  wire \raw.sample_reg[31]_i_1_n_2 ;
  wire \raw.sample_reg[31]_i_1_n_3 ;
  wire \raw.sample_reg[31]_i_1_n_4 ;
  wire \raw.sample_reg[31]_i_1_n_5 ;
  wire \raw.sample_reg[31]_i_1_n_6 ;
  wire \raw.sample_reg[31]_i_1_n_7 ;
  wire \raw.sample_reg[31]_i_1_n_9 ;
  wire \raw.sample_reg[39]_i_1_n_0 ;
  wire \raw.sample_reg[39]_i_1_n_1 ;
  wire \raw.sample_reg[39]_i_1_n_10 ;
  wire \raw.sample_reg[39]_i_1_n_11 ;
  wire \raw.sample_reg[39]_i_1_n_12 ;
  wire \raw.sample_reg[39]_i_1_n_13 ;
  wire \raw.sample_reg[39]_i_1_n_14 ;
  wire \raw.sample_reg[39]_i_1_n_15 ;
  wire \raw.sample_reg[39]_i_1_n_2 ;
  wire \raw.sample_reg[39]_i_1_n_3 ;
  wire \raw.sample_reg[39]_i_1_n_4 ;
  wire \raw.sample_reg[39]_i_1_n_5 ;
  wire \raw.sample_reg[39]_i_1_n_6 ;
  wire \raw.sample_reg[39]_i_1_n_7 ;
  wire \raw.sample_reg[39]_i_1_n_8 ;
  wire \raw.sample_reg[39]_i_1_n_9 ;
  wire \raw.sample_reg[47]_i_1_n_0 ;
  wire \raw.sample_reg[47]_i_1_n_1 ;
  wire \raw.sample_reg[47]_i_1_n_10 ;
  wire \raw.sample_reg[47]_i_1_n_11 ;
  wire \raw.sample_reg[47]_i_1_n_12 ;
  wire \raw.sample_reg[47]_i_1_n_13 ;
  wire \raw.sample_reg[47]_i_1_n_14 ;
  wire \raw.sample_reg[47]_i_1_n_15 ;
  wire \raw.sample_reg[47]_i_1_n_2 ;
  wire \raw.sample_reg[47]_i_1_n_3 ;
  wire \raw.sample_reg[47]_i_1_n_4 ;
  wire \raw.sample_reg[47]_i_1_n_5 ;
  wire \raw.sample_reg[47]_i_1_n_6 ;
  wire \raw.sample_reg[47]_i_1_n_7 ;
  wire \raw.sample_reg[47]_i_1_n_8 ;
  wire \raw.sample_reg[47]_i_1_n_9 ;
  wire \raw.sample_reg[55]_i_1_n_0 ;
  wire \raw.sample_reg[55]_i_1_n_1 ;
  wire \raw.sample_reg[55]_i_1_n_10 ;
  wire \raw.sample_reg[55]_i_1_n_11 ;
  wire \raw.sample_reg[55]_i_1_n_12 ;
  wire \raw.sample_reg[55]_i_1_n_13 ;
  wire \raw.sample_reg[55]_i_1_n_14 ;
  wire \raw.sample_reg[55]_i_1_n_15 ;
  wire \raw.sample_reg[55]_i_1_n_2 ;
  wire \raw.sample_reg[55]_i_1_n_3 ;
  wire \raw.sample_reg[55]_i_1_n_4 ;
  wire \raw.sample_reg[55]_i_1_n_5 ;
  wire \raw.sample_reg[55]_i_1_n_6 ;
  wire \raw.sample_reg[55]_i_1_n_7 ;
  wire \raw.sample_reg[55]_i_1_n_8 ;
  wire \raw.sample_reg[55]_i_1_n_9 ;
  wire \raw.sample_reg[63]_i_2_n_1 ;
  wire \raw.sample_reg[63]_i_2_n_10 ;
  wire \raw.sample_reg[63]_i_2_n_11 ;
  wire \raw.sample_reg[63]_i_2_n_12 ;
  wire \raw.sample_reg[63]_i_2_n_13 ;
  wire \raw.sample_reg[63]_i_2_n_14 ;
  wire \raw.sample_reg[63]_i_2_n_15 ;
  wire \raw.sample_reg[63]_i_2_n_2 ;
  wire \raw.sample_reg[63]_i_2_n_3 ;
  wire \raw.sample_reg[63]_i_2_n_4 ;
  wire \raw.sample_reg[63]_i_2_n_5 ;
  wire \raw.sample_reg[63]_i_2_n_6 ;
  wire \raw.sample_reg[63]_i_2_n_7 ;
  wire \raw.sample_reg[63]_i_2_n_8 ;
  wire \raw.sample_reg[63]_i_2_n_9 ;
  wire \raw.sample_reg[8]_i_1_n_0 ;
  wire \raw.sample_reg[8]_i_1_n_1 ;
  wire \raw.sample_reg[8]_i_1_n_10 ;
  wire \raw.sample_reg[8]_i_1_n_11 ;
  wire \raw.sample_reg[8]_i_1_n_12 ;
  wire \raw.sample_reg[8]_i_1_n_13 ;
  wire \raw.sample_reg[8]_i_1_n_14 ;
  wire \raw.sample_reg[8]_i_1_n_15 ;
  wire \raw.sample_reg[8]_i_1_n_2 ;
  wire \raw.sample_reg[8]_i_1_n_3 ;
  wire \raw.sample_reg[8]_i_1_n_4 ;
  wire \raw.sample_reg[8]_i_1_n_5 ;
  wire \raw.sample_reg[8]_i_1_n_6 ;
  wire \raw.sample_reg[8]_i_1_n_7 ;
  wire \raw.sample_reg[8]_i_1_n_8 ;
  wire \raw.sample_reg[8]_i_1_n_9 ;
  wire [127:0]raw_E;
  wire [127:0]raw_N;
  wire raw_N0;
  wire [127:0]raw_W;
  (* MARK_DEBUG *) wire [8:0]raw_delay;
  (* MARK_DEBUG *) wire raw_empty;
  wire [127:0]raw_in_E;
  wire [127:0]raw_in_N;
  wire [127:0]raw_in_W;
  wire [383:0]raw_in_data;
  wire [383:0]raw_out_data;
  (* MARK_DEBUG *) wire raw_rd;
  wire raw_wr;
  wire reset;
  (* MARK_DEBUG *) wire [63:0]sample;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire [7:6]\NLW_raw.sample_reg[31]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_raw.sample_reg[31]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_raw.sample_reg[63]_i_2_CO_UNCONNECTED ;

  (* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_raw_0_1_fifo_raw_high fifo_raw_i
       (.din(raw_in_data),
        .dout(raw_out_data),
        .empty(raw_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(raw_rd),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(raw_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_raw_0_1_ila_0 ila_i
       (.clk(clk),
        .probe0(raw_empty),
        .probe1(raw_rd),
        .probe2(raw_delay),
        .probe3(active),
        .probe4(sample));
  (* KEEP = "yes" *) 
  FDRE \raw.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(raw_rd),
        .Q(active),
        .R(raw_empty));
  FDRE \raw.raw_E_reg[0] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[128]),
        .Q(raw_E[0]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[100] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[228]),
        .Q(raw_E[100]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[101] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[229]),
        .Q(raw_E[101]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[102] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[230]),
        .Q(raw_E[102]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[103] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[231]),
        .Q(raw_E[103]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[104] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[232]),
        .Q(raw_E[104]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[105] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[233]),
        .Q(raw_E[105]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[106] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[234]),
        .Q(raw_E[106]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[107] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[235]),
        .Q(raw_E[107]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[108] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[236]),
        .Q(raw_E[108]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[109] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[237]),
        .Q(raw_E[109]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[10] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[138]),
        .Q(raw_E[10]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[110] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[238]),
        .Q(raw_E[110]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[111] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[239]),
        .Q(raw_E[111]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[112] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[240]),
        .Q(raw_E[112]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[113] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[241]),
        .Q(raw_E[113]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[114] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[242]),
        .Q(raw_E[114]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[115] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[243]),
        .Q(raw_E[115]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[116] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[244]),
        .Q(raw_E[116]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[117] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[245]),
        .Q(raw_E[117]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[118] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[246]),
        .Q(raw_E[118]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[119] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[247]),
        .Q(raw_E[119]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[11] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[139]),
        .Q(raw_E[11]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[120] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[248]),
        .Q(raw_E[120]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[121] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[249]),
        .Q(raw_E[121]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[122] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[250]),
        .Q(raw_E[122]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[123] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[251]),
        .Q(raw_E[123]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[124] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[252]),
        .Q(raw_E[124]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[125] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[253]),
        .Q(raw_E[125]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[126] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[254]),
        .Q(raw_E[126]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[127] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[255]),
        .Q(raw_E[127]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[12] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[140]),
        .Q(raw_E[12]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[13] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[141]),
        .Q(raw_E[13]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[14] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[142]),
        .Q(raw_E[14]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[15] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[143]),
        .Q(raw_E[15]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[16] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[144]),
        .Q(raw_E[16]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[17] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[145]),
        .Q(raw_E[17]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[18] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[146]),
        .Q(raw_E[18]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[19] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[147]),
        .Q(raw_E[19]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[1] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[129]),
        .Q(raw_E[1]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[20] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[148]),
        .Q(raw_E[20]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[21] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[149]),
        .Q(raw_E[21]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[22] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[150]),
        .Q(raw_E[22]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[23] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[151]),
        .Q(raw_E[23]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[24] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[152]),
        .Q(raw_E[24]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[25] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[153]),
        .Q(raw_E[25]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[26] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[154]),
        .Q(raw_E[26]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[27] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[155]),
        .Q(raw_E[27]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[28] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[156]),
        .Q(raw_E[28]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[29] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[157]),
        .Q(raw_E[29]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[2] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[130]),
        .Q(raw_E[2]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[30] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[158]),
        .Q(raw_E[30]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[31] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[159]),
        .Q(raw_E[31]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[32] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[160]),
        .Q(raw_E[32]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[33] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[161]),
        .Q(raw_E[33]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[34] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[162]),
        .Q(raw_E[34]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[35] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[163]),
        .Q(raw_E[35]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[36] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[164]),
        .Q(raw_E[36]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[37] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[165]),
        .Q(raw_E[37]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[38] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[166]),
        .Q(raw_E[38]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[39] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[167]),
        .Q(raw_E[39]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[3] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[131]),
        .Q(raw_E[3]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[40] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[168]),
        .Q(raw_E[40]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[41] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[169]),
        .Q(raw_E[41]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[42] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[170]),
        .Q(raw_E[42]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[43] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[171]),
        .Q(raw_E[43]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[44] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[172]),
        .Q(raw_E[44]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[45] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[173]),
        .Q(raw_E[45]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[46] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[174]),
        .Q(raw_E[46]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[47] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[175]),
        .Q(raw_E[47]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[48] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[176]),
        .Q(raw_E[48]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[49] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[177]),
        .Q(raw_E[49]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[4] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[132]),
        .Q(raw_E[4]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[50] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[178]),
        .Q(raw_E[50]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[51] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[179]),
        .Q(raw_E[51]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[52] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[180]),
        .Q(raw_E[52]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[53] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[181]),
        .Q(raw_E[53]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[54] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[182]),
        .Q(raw_E[54]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[55] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[183]),
        .Q(raw_E[55]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[56] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[184]),
        .Q(raw_E[56]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[57] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[185]),
        .Q(raw_E[57]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[58] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[186]),
        .Q(raw_E[58]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[59] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[187]),
        .Q(raw_E[59]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[5] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[133]),
        .Q(raw_E[5]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[60] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[188]),
        .Q(raw_E[60]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[61] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[189]),
        .Q(raw_E[61]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[62] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[190]),
        .Q(raw_E[62]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[63] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[191]),
        .Q(raw_E[63]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[64] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[192]),
        .Q(raw_E[64]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[65] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[193]),
        .Q(raw_E[65]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[66] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[194]),
        .Q(raw_E[66]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[67] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[195]),
        .Q(raw_E[67]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[68] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[196]),
        .Q(raw_E[68]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[69] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[197]),
        .Q(raw_E[69]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[6] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[134]),
        .Q(raw_E[6]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[70] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[198]),
        .Q(raw_E[70]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[71] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[199]),
        .Q(raw_E[71]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[72] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[200]),
        .Q(raw_E[72]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[73] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[201]),
        .Q(raw_E[73]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[74] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[202]),
        .Q(raw_E[74]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[75] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[203]),
        .Q(raw_E[75]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[76] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[204]),
        .Q(raw_E[76]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[77] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[205]),
        .Q(raw_E[77]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[78] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[206]),
        .Q(raw_E[78]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[79] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[207]),
        .Q(raw_E[79]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[7] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[135]),
        .Q(raw_E[7]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[80] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[208]),
        .Q(raw_E[80]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[81] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[209]),
        .Q(raw_E[81]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[82] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[210]),
        .Q(raw_E[82]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[83] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[211]),
        .Q(raw_E[83]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[84] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[212]),
        .Q(raw_E[84]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[85] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[213]),
        .Q(raw_E[85]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[86] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[214]),
        .Q(raw_E[86]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[87] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[215]),
        .Q(raw_E[87]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[88] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[216]),
        .Q(raw_E[88]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[89] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[217]),
        .Q(raw_E[89]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[8] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[136]),
        .Q(raw_E[8]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[90] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[218]),
        .Q(raw_E[90]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[91] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[219]),
        .Q(raw_E[91]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[92] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[220]),
        .Q(raw_E[92]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[93] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[221]),
        .Q(raw_E[93]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[94] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[222]),
        .Q(raw_E[94]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[95] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[223]),
        .Q(raw_E[95]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[96] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[224]),
        .Q(raw_E[96]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[97] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[225]),
        .Q(raw_E[97]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[98] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[226]),
        .Q(raw_E[98]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[99] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[227]),
        .Q(raw_E[99]),
        .R(1'b0));
  FDRE \raw.raw_E_reg[9] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[137]),
        .Q(raw_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \raw.raw_N[127]_i_1 
       (.I0(raw_rd),
        .I1(raw_empty),
        .O(raw_N0));
  FDRE \raw.raw_N_reg[0] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[0]),
        .Q(raw_N[0]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[100] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[100]),
        .Q(raw_N[100]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[101] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[101]),
        .Q(raw_N[101]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[102] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[102]),
        .Q(raw_N[102]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[103] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[103]),
        .Q(raw_N[103]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[104] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[104]),
        .Q(raw_N[104]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[105] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[105]),
        .Q(raw_N[105]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[106] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[106]),
        .Q(raw_N[106]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[107] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[107]),
        .Q(raw_N[107]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[108] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[108]),
        .Q(raw_N[108]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[109] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[109]),
        .Q(raw_N[109]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[10] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[10]),
        .Q(raw_N[10]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[110] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[110]),
        .Q(raw_N[110]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[111] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[111]),
        .Q(raw_N[111]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[112] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[112]),
        .Q(raw_N[112]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[113] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[113]),
        .Q(raw_N[113]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[114] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[114]),
        .Q(raw_N[114]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[115] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[115]),
        .Q(raw_N[115]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[116] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[116]),
        .Q(raw_N[116]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[117] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[117]),
        .Q(raw_N[117]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[118] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[118]),
        .Q(raw_N[118]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[119] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[119]),
        .Q(raw_N[119]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[11] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[11]),
        .Q(raw_N[11]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[120] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[120]),
        .Q(raw_N[120]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[121] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[121]),
        .Q(raw_N[121]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[122] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[122]),
        .Q(raw_N[122]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[123] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[123]),
        .Q(raw_N[123]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[124] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[124]),
        .Q(raw_N[124]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[125] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[125]),
        .Q(raw_N[125]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[126] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[126]),
        .Q(raw_N[126]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[127] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[127]),
        .Q(raw_N[127]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[12] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[12]),
        .Q(raw_N[12]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[13] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[13]),
        .Q(raw_N[13]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[14] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[14]),
        .Q(raw_N[14]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[15] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[15]),
        .Q(raw_N[15]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[16] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[16]),
        .Q(raw_N[16]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[17] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[17]),
        .Q(raw_N[17]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[18] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[18]),
        .Q(raw_N[18]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[19] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[19]),
        .Q(raw_N[19]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[1] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[1]),
        .Q(raw_N[1]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[20] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[20]),
        .Q(raw_N[20]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[21] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[21]),
        .Q(raw_N[21]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[22] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[22]),
        .Q(raw_N[22]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[23] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[23]),
        .Q(raw_N[23]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[24] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[24]),
        .Q(raw_N[24]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[25] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[25]),
        .Q(raw_N[25]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[26] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[26]),
        .Q(raw_N[26]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[27] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[27]),
        .Q(raw_N[27]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[28] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[28]),
        .Q(raw_N[28]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[29] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[29]),
        .Q(raw_N[29]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[2] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[2]),
        .Q(raw_N[2]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[30] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[30]),
        .Q(raw_N[30]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[31] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[31]),
        .Q(raw_N[31]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[32] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[32]),
        .Q(raw_N[32]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[33] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[33]),
        .Q(raw_N[33]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[34] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[34]),
        .Q(raw_N[34]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[35] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[35]),
        .Q(raw_N[35]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[36] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[36]),
        .Q(raw_N[36]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[37] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[37]),
        .Q(raw_N[37]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[38] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[38]),
        .Q(raw_N[38]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[39] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[39]),
        .Q(raw_N[39]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[3] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[3]),
        .Q(raw_N[3]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[40] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[40]),
        .Q(raw_N[40]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[41] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[41]),
        .Q(raw_N[41]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[42] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[42]),
        .Q(raw_N[42]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[43] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[43]),
        .Q(raw_N[43]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[44] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[44]),
        .Q(raw_N[44]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[45] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[45]),
        .Q(raw_N[45]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[46] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[46]),
        .Q(raw_N[46]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[47] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[47]),
        .Q(raw_N[47]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[48] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[48]),
        .Q(raw_N[48]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[49] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[49]),
        .Q(raw_N[49]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[4] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[4]),
        .Q(raw_N[4]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[50] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[50]),
        .Q(raw_N[50]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[51] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[51]),
        .Q(raw_N[51]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[52] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[52]),
        .Q(raw_N[52]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[53] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[53]),
        .Q(raw_N[53]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[54] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[54]),
        .Q(raw_N[54]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[55] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[55]),
        .Q(raw_N[55]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[56] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[56]),
        .Q(raw_N[56]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[57] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[57]),
        .Q(raw_N[57]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[58] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[58]),
        .Q(raw_N[58]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[59] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[59]),
        .Q(raw_N[59]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[5] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[5]),
        .Q(raw_N[5]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[60] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[60]),
        .Q(raw_N[60]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[61] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[61]),
        .Q(raw_N[61]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[62] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[62]),
        .Q(raw_N[62]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[63] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[63]),
        .Q(raw_N[63]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[64] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[64]),
        .Q(raw_N[64]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[65] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[65]),
        .Q(raw_N[65]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[66] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[66]),
        .Q(raw_N[66]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[67] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[67]),
        .Q(raw_N[67]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[68] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[68]),
        .Q(raw_N[68]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[69] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[69]),
        .Q(raw_N[69]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[6] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[6]),
        .Q(raw_N[6]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[70] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[70]),
        .Q(raw_N[70]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[71] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[71]),
        .Q(raw_N[71]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[72] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[72]),
        .Q(raw_N[72]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[73] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[73]),
        .Q(raw_N[73]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[74] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[74]),
        .Q(raw_N[74]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[75] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[75]),
        .Q(raw_N[75]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[76] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[76]),
        .Q(raw_N[76]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[77] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[77]),
        .Q(raw_N[77]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[78] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[78]),
        .Q(raw_N[78]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[79] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[79]),
        .Q(raw_N[79]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[7] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[7]),
        .Q(raw_N[7]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[80] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[80]),
        .Q(raw_N[80]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[81] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[81]),
        .Q(raw_N[81]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[82] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[82]),
        .Q(raw_N[82]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[83] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[83]),
        .Q(raw_N[83]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[84] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[84]),
        .Q(raw_N[84]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[85] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[85]),
        .Q(raw_N[85]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[86] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[86]),
        .Q(raw_N[86]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[87] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[87]),
        .Q(raw_N[87]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[88] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[88]),
        .Q(raw_N[88]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[89] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[89]),
        .Q(raw_N[89]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[8] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[8]),
        .Q(raw_N[8]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[90] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[90]),
        .Q(raw_N[90]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[91] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[91]),
        .Q(raw_N[91]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[92] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[92]),
        .Q(raw_N[92]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[93] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[93]),
        .Q(raw_N[93]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[94] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[94]),
        .Q(raw_N[94]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[95] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[95]),
        .Q(raw_N[95]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[96] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[96]),
        .Q(raw_N[96]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[97] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[97]),
        .Q(raw_N[97]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[98] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[98]),
        .Q(raw_N[98]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[99] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[99]),
        .Q(raw_N[99]),
        .R(1'b0));
  FDRE \raw.raw_N_reg[9] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[9]),
        .Q(raw_N[9]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[0] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[256]),
        .Q(raw_W[0]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[100] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[356]),
        .Q(raw_W[100]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[101] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[357]),
        .Q(raw_W[101]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[102] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[358]),
        .Q(raw_W[102]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[103] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[359]),
        .Q(raw_W[103]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[104] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[360]),
        .Q(raw_W[104]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[105] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[361]),
        .Q(raw_W[105]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[106] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[362]),
        .Q(raw_W[106]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[107] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[363]),
        .Q(raw_W[107]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[108] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[364]),
        .Q(raw_W[108]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[109] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[365]),
        .Q(raw_W[109]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[10] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[266]),
        .Q(raw_W[10]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[110] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[366]),
        .Q(raw_W[110]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[111] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[367]),
        .Q(raw_W[111]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[112] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[368]),
        .Q(raw_W[112]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[113] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[369]),
        .Q(raw_W[113]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[114] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[370]),
        .Q(raw_W[114]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[115] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[371]),
        .Q(raw_W[115]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[116] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[372]),
        .Q(raw_W[116]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[117] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[373]),
        .Q(raw_W[117]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[118] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[374]),
        .Q(raw_W[118]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[119] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[375]),
        .Q(raw_W[119]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[11] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[267]),
        .Q(raw_W[11]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[120] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[376]),
        .Q(raw_W[120]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[121] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[377]),
        .Q(raw_W[121]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[122] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[378]),
        .Q(raw_W[122]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[123] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[379]),
        .Q(raw_W[123]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[124] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[380]),
        .Q(raw_W[124]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[125] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[381]),
        .Q(raw_W[125]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[126] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[382]),
        .Q(raw_W[126]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[127] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[383]),
        .Q(raw_W[127]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[12] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[268]),
        .Q(raw_W[12]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[13] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[269]),
        .Q(raw_W[13]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[14] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[270]),
        .Q(raw_W[14]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[15] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[271]),
        .Q(raw_W[15]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[16] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[272]),
        .Q(raw_W[16]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[17] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[273]),
        .Q(raw_W[17]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[18] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[274]),
        .Q(raw_W[18]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[19] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[275]),
        .Q(raw_W[19]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[1] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[257]),
        .Q(raw_W[1]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[20] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[276]),
        .Q(raw_W[20]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[21] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[277]),
        .Q(raw_W[21]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[22] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[278]),
        .Q(raw_W[22]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[23] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[279]),
        .Q(raw_W[23]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[24] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[280]),
        .Q(raw_W[24]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[25] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[281]),
        .Q(raw_W[25]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[26] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[282]),
        .Q(raw_W[26]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[27] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[283]),
        .Q(raw_W[27]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[28] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[284]),
        .Q(raw_W[28]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[29] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[285]),
        .Q(raw_W[29]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[2] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[258]),
        .Q(raw_W[2]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[30] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[286]),
        .Q(raw_W[30]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[31] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[287]),
        .Q(raw_W[31]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[32] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[288]),
        .Q(raw_W[32]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[33] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[289]),
        .Q(raw_W[33]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[34] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[290]),
        .Q(raw_W[34]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[35] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[291]),
        .Q(raw_W[35]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[36] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[292]),
        .Q(raw_W[36]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[37] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[293]),
        .Q(raw_W[37]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[38] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[294]),
        .Q(raw_W[38]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[39] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[295]),
        .Q(raw_W[39]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[3] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[259]),
        .Q(raw_W[3]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[40] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[296]),
        .Q(raw_W[40]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[41] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[297]),
        .Q(raw_W[41]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[42] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[298]),
        .Q(raw_W[42]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[43] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[299]),
        .Q(raw_W[43]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[44] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[300]),
        .Q(raw_W[44]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[45] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[301]),
        .Q(raw_W[45]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[46] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[302]),
        .Q(raw_W[46]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[47] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[303]),
        .Q(raw_W[47]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[48] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[304]),
        .Q(raw_W[48]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[49] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[305]),
        .Q(raw_W[49]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[4] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[260]),
        .Q(raw_W[4]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[50] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[306]),
        .Q(raw_W[50]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[51] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[307]),
        .Q(raw_W[51]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[52] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[308]),
        .Q(raw_W[52]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[53] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[309]),
        .Q(raw_W[53]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[54] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[310]),
        .Q(raw_W[54]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[55] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[311]),
        .Q(raw_W[55]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[56] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[312]),
        .Q(raw_W[56]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[57] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[313]),
        .Q(raw_W[57]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[58] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[314]),
        .Q(raw_W[58]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[59] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[315]),
        .Q(raw_W[59]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[5] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[261]),
        .Q(raw_W[5]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[60] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[316]),
        .Q(raw_W[60]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[61] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[317]),
        .Q(raw_W[61]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[62] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[318]),
        .Q(raw_W[62]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[63] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[319]),
        .Q(raw_W[63]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[64] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[320]),
        .Q(raw_W[64]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[65] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[321]),
        .Q(raw_W[65]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[66] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[322]),
        .Q(raw_W[66]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[67] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[323]),
        .Q(raw_W[67]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[68] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[324]),
        .Q(raw_W[68]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[69] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[325]),
        .Q(raw_W[69]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[6] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[262]),
        .Q(raw_W[6]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[70] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[326]),
        .Q(raw_W[70]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[71] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[327]),
        .Q(raw_W[71]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[72] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[328]),
        .Q(raw_W[72]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[73] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[329]),
        .Q(raw_W[73]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[74] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[330]),
        .Q(raw_W[74]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[75] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[331]),
        .Q(raw_W[75]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[76] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[332]),
        .Q(raw_W[76]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[77] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[333]),
        .Q(raw_W[77]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[78] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[334]),
        .Q(raw_W[78]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[79] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[335]),
        .Q(raw_W[79]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[7] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[263]),
        .Q(raw_W[7]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[80] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[336]),
        .Q(raw_W[80]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[81] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[337]),
        .Q(raw_W[81]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[82] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[338]),
        .Q(raw_W[82]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[83] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[339]),
        .Q(raw_W[83]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[84] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[340]),
        .Q(raw_W[84]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[85] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[341]),
        .Q(raw_W[85]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[86] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[342]),
        .Q(raw_W[86]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[87] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[343]),
        .Q(raw_W[87]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[88] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[344]),
        .Q(raw_W[88]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[89] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[345]),
        .Q(raw_W[89]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[8] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[264]),
        .Q(raw_W[8]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[90] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[346]),
        .Q(raw_W[90]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[91] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[347]),
        .Q(raw_W[91]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[92] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[348]),
        .Q(raw_W[92]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[93] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[349]),
        .Q(raw_W[93]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[94] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[350]),
        .Q(raw_W[94]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[95] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[351]),
        .Q(raw_W[95]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[96] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[352]),
        .Q(raw_W[96]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[97] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[353]),
        .Q(raw_W[97]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[98] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[354]),
        .Q(raw_W[98]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[99] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[355]),
        .Q(raw_W[99]),
        .R(1'b0));
  FDRE \raw.raw_W_reg[9] 
       (.C(clk),
        .CE(raw_N0),
        .D(raw_out_data[265]),
        .Q(raw_W[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \raw.raw_delay[0]_i_1 
       (.I0(raw_delay[0]),
        .O(\raw.raw_delay_reg0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \raw.raw_delay[1]_i_1 
       (.I0(raw_delay[1]),
        .I1(raw_delay[0]),
        .O(\raw.raw_delay_reg0 [1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \raw.raw_delay[2]_i_1 
       (.I0(raw_delay[2]),
        .I1(raw_delay[0]),
        .I2(raw_delay[1]),
        .O(\raw.raw_delay_reg0 [2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \raw.raw_delay[3]_i_1 
       (.I0(raw_delay[3]),
        .I1(raw_delay[1]),
        .I2(raw_delay[0]),
        .I3(raw_delay[2]),
        .O(\raw.raw_delay_reg0 [3]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \raw.raw_delay[4]_i_1 
       (.I0(raw_delay[4]),
        .I1(raw_delay[2]),
        .I2(raw_delay[0]),
        .I3(raw_delay[1]),
        .I4(raw_delay[3]),
        .O(\raw.raw_delay_reg0 [4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \raw.raw_delay[5]_i_1 
       (.I0(raw_delay[5]),
        .I1(raw_delay[3]),
        .I2(raw_delay[1]),
        .I3(raw_delay[0]),
        .I4(raw_delay[2]),
        .I5(raw_delay[4]),
        .O(\raw.raw_delay_reg0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    \raw.raw_delay[6]_i_1 
       (.I0(raw_delay[6]),
        .I1(\raw.raw_delay[8]_i_3_n_0 ),
        .O(\raw.raw_delay_reg0 [6]));
  LUT3 #(
    .INIT(8'hA9)) 
    \raw.raw_delay[7]_i_1 
       (.I0(raw_delay[7]),
        .I1(\raw.raw_delay[8]_i_3_n_0 ),
        .I2(raw_delay[6]),
        .O(\raw.raw_delay_reg0 [7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \raw.raw_delay[8]_i_1 
       (.I0(raw_delay[7]),
        .I1(\raw.raw_delay[8]_i_3_n_0 ),
        .I2(raw_delay[6]),
        .I3(raw_delay[8]),
        .O(\raw.raw_delay[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \raw.raw_delay[8]_i_2 
       (.I0(raw_delay[8]),
        .I1(raw_delay[6]),
        .I2(\raw.raw_delay[8]_i_3_n_0 ),
        .I3(raw_delay[7]),
        .O(\raw.raw_delay_reg0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \raw.raw_delay[8]_i_3 
       (.I0(raw_delay[4]),
        .I1(raw_delay[2]),
        .I2(raw_delay[0]),
        .I3(raw_delay[1]),
        .I4(raw_delay[3]),
        .I5(raw_delay[5]),
        .O(\raw.raw_delay[8]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \raw.raw_delay_reg[0] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [0]),
        .Q(raw_delay[0]),
        .R(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \raw.raw_delay_reg[1] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [1]),
        .Q(raw_delay[1]),
        .R(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \raw.raw_delay_reg[2] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [2]),
        .Q(raw_delay[2]),
        .R(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \raw.raw_delay_reg[3] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [3]),
        .Q(raw_delay[3]),
        .R(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \raw.raw_delay_reg[4] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [4]),
        .Q(raw_delay[4]),
        .R(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \raw.raw_delay_reg[5] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [5]),
        .Q(raw_delay[5]),
        .R(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \raw.raw_delay_reg[6] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [6]),
        .Q(raw_delay[6]),
        .S(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \raw.raw_delay_reg[7] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [7]),
        .Q(raw_delay[7]),
        .S(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \raw.raw_delay_reg[8] 
       (.C(clk),
        .CE(\raw.raw_delay[8]_i_1_n_0 ),
        .D(\raw.raw_delay_reg0 [8]),
        .Q(raw_delay[8]),
        .S(raw_empty));
  FDRE \raw.raw_in_data_reg[0] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[0]),
        .Q(raw_in_data[0]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[100] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[100]),
        .Q(raw_in_data[100]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[101] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[101]),
        .Q(raw_in_data[101]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[102] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[102]),
        .Q(raw_in_data[102]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[103] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[103]),
        .Q(raw_in_data[103]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[104] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[104]),
        .Q(raw_in_data[104]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[105] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[105]),
        .Q(raw_in_data[105]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[106] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[106]),
        .Q(raw_in_data[106]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[107] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[107]),
        .Q(raw_in_data[107]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[108] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[108]),
        .Q(raw_in_data[108]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[109] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[109]),
        .Q(raw_in_data[109]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[10] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[10]),
        .Q(raw_in_data[10]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[110] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[110]),
        .Q(raw_in_data[110]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[111] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[111]),
        .Q(raw_in_data[111]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[112] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[112]),
        .Q(raw_in_data[112]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[113] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[113]),
        .Q(raw_in_data[113]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[114] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[114]),
        .Q(raw_in_data[114]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[115] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[115]),
        .Q(raw_in_data[115]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[116] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[116]),
        .Q(raw_in_data[116]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[117] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[117]),
        .Q(raw_in_data[117]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[118] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[118]),
        .Q(raw_in_data[118]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[119] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[119]),
        .Q(raw_in_data[119]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[11] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[11]),
        .Q(raw_in_data[11]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[120] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[120]),
        .Q(raw_in_data[120]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[121] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[121]),
        .Q(raw_in_data[121]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[122] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[122]),
        .Q(raw_in_data[122]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[123] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[123]),
        .Q(raw_in_data[123]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[124] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[124]),
        .Q(raw_in_data[124]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[125] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[125]),
        .Q(raw_in_data[125]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[126] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[126]),
        .Q(raw_in_data[126]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[127] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[127]),
        .Q(raw_in_data[127]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[128] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[0]),
        .Q(raw_in_data[128]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[129] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[1]),
        .Q(raw_in_data[129]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[12] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[12]),
        .Q(raw_in_data[12]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[130] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[2]),
        .Q(raw_in_data[130]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[131] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[3]),
        .Q(raw_in_data[131]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[132] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[4]),
        .Q(raw_in_data[132]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[133] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[5]),
        .Q(raw_in_data[133]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[134] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[6]),
        .Q(raw_in_data[134]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[135] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[7]),
        .Q(raw_in_data[135]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[136] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[8]),
        .Q(raw_in_data[136]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[137] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[9]),
        .Q(raw_in_data[137]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[138] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[10]),
        .Q(raw_in_data[138]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[139] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[11]),
        .Q(raw_in_data[139]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[13] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[13]),
        .Q(raw_in_data[13]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[140] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[12]),
        .Q(raw_in_data[140]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[141] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[13]),
        .Q(raw_in_data[141]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[142] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[14]),
        .Q(raw_in_data[142]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[143] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[15]),
        .Q(raw_in_data[143]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[144] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[16]),
        .Q(raw_in_data[144]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[145] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[17]),
        .Q(raw_in_data[145]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[146] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[18]),
        .Q(raw_in_data[146]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[147] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[19]),
        .Q(raw_in_data[147]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[148] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[20]),
        .Q(raw_in_data[148]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[149] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[21]),
        .Q(raw_in_data[149]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[14] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[14]),
        .Q(raw_in_data[14]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[150] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[22]),
        .Q(raw_in_data[150]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[151] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[23]),
        .Q(raw_in_data[151]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[152] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[24]),
        .Q(raw_in_data[152]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[153] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[25]),
        .Q(raw_in_data[153]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[154] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[26]),
        .Q(raw_in_data[154]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[155] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[27]),
        .Q(raw_in_data[155]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[156] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[28]),
        .Q(raw_in_data[156]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[157] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[29]),
        .Q(raw_in_data[157]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[158] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[30]),
        .Q(raw_in_data[158]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[159] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[31]),
        .Q(raw_in_data[159]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[15] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[15]),
        .Q(raw_in_data[15]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[160] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[32]),
        .Q(raw_in_data[160]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[161] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[33]),
        .Q(raw_in_data[161]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[162] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[34]),
        .Q(raw_in_data[162]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[163] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[35]),
        .Q(raw_in_data[163]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[164] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[36]),
        .Q(raw_in_data[164]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[165] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[37]),
        .Q(raw_in_data[165]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[166] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[38]),
        .Q(raw_in_data[166]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[167] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[39]),
        .Q(raw_in_data[167]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[168] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[40]),
        .Q(raw_in_data[168]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[169] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[41]),
        .Q(raw_in_data[169]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[16] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[16]),
        .Q(raw_in_data[16]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[170] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[42]),
        .Q(raw_in_data[170]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[171] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[43]),
        .Q(raw_in_data[171]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[172] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[44]),
        .Q(raw_in_data[172]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[173] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[45]),
        .Q(raw_in_data[173]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[174] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[46]),
        .Q(raw_in_data[174]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[175] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[47]),
        .Q(raw_in_data[175]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[176] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[48]),
        .Q(raw_in_data[176]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[177] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[49]),
        .Q(raw_in_data[177]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[178] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[50]),
        .Q(raw_in_data[178]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[179] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[51]),
        .Q(raw_in_data[179]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[17] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[17]),
        .Q(raw_in_data[17]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[180] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[52]),
        .Q(raw_in_data[180]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[181] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[53]),
        .Q(raw_in_data[181]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[182] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[54]),
        .Q(raw_in_data[182]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[183] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[55]),
        .Q(raw_in_data[183]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[184] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[56]),
        .Q(raw_in_data[184]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[185] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[57]),
        .Q(raw_in_data[185]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[186] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[58]),
        .Q(raw_in_data[186]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[187] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[59]),
        .Q(raw_in_data[187]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[188] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[60]),
        .Q(raw_in_data[188]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[189] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[61]),
        .Q(raw_in_data[189]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[18] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[18]),
        .Q(raw_in_data[18]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[190] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[62]),
        .Q(raw_in_data[190]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[191] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[63]),
        .Q(raw_in_data[191]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[192] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[64]),
        .Q(raw_in_data[192]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[193] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[65]),
        .Q(raw_in_data[193]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[194] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[66]),
        .Q(raw_in_data[194]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[195] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[67]),
        .Q(raw_in_data[195]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[196] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[68]),
        .Q(raw_in_data[196]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[197] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[69]),
        .Q(raw_in_data[197]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[198] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[70]),
        .Q(raw_in_data[198]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[199] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[71]),
        .Q(raw_in_data[199]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[19] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[19]),
        .Q(raw_in_data[19]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[1] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[1]),
        .Q(raw_in_data[1]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[200] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[72]),
        .Q(raw_in_data[200]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[201] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[73]),
        .Q(raw_in_data[201]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[202] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[74]),
        .Q(raw_in_data[202]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[203] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[75]),
        .Q(raw_in_data[203]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[204] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[76]),
        .Q(raw_in_data[204]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[205] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[77]),
        .Q(raw_in_data[205]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[206] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[78]),
        .Q(raw_in_data[206]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[207] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[79]),
        .Q(raw_in_data[207]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[208] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[80]),
        .Q(raw_in_data[208]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[209] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[81]),
        .Q(raw_in_data[209]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[20] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[20]),
        .Q(raw_in_data[20]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[210] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[82]),
        .Q(raw_in_data[210]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[211] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[83]),
        .Q(raw_in_data[211]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[212] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[84]),
        .Q(raw_in_data[212]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[213] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[85]),
        .Q(raw_in_data[213]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[214] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[86]),
        .Q(raw_in_data[214]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[215] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[87]),
        .Q(raw_in_data[215]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[216] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[88]),
        .Q(raw_in_data[216]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[217] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[89]),
        .Q(raw_in_data[217]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[218] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[90]),
        .Q(raw_in_data[218]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[219] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[91]),
        .Q(raw_in_data[219]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[21] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[21]),
        .Q(raw_in_data[21]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[220] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[92]),
        .Q(raw_in_data[220]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[221] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[93]),
        .Q(raw_in_data[221]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[222] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[94]),
        .Q(raw_in_data[222]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[223] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[95]),
        .Q(raw_in_data[223]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[224] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[96]),
        .Q(raw_in_data[224]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[225] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[97]),
        .Q(raw_in_data[225]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[226] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[98]),
        .Q(raw_in_data[226]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[227] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[99]),
        .Q(raw_in_data[227]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[228] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[100]),
        .Q(raw_in_data[228]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[229] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[101]),
        .Q(raw_in_data[229]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[22] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[22]),
        .Q(raw_in_data[22]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[230] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[102]),
        .Q(raw_in_data[230]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[231] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[103]),
        .Q(raw_in_data[231]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[232] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[104]),
        .Q(raw_in_data[232]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[233] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[105]),
        .Q(raw_in_data[233]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[234] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[106]),
        .Q(raw_in_data[234]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[235] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[107]),
        .Q(raw_in_data[235]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[236] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[108]),
        .Q(raw_in_data[236]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[237] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[109]),
        .Q(raw_in_data[237]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[238] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[110]),
        .Q(raw_in_data[238]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[239] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[111]),
        .Q(raw_in_data[239]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[23] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[23]),
        .Q(raw_in_data[23]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[240] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[112]),
        .Q(raw_in_data[240]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[241] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[113]),
        .Q(raw_in_data[241]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[242] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[114]),
        .Q(raw_in_data[242]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[243] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[115]),
        .Q(raw_in_data[243]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[244] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[116]),
        .Q(raw_in_data[244]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[245] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[117]),
        .Q(raw_in_data[245]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[246] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[118]),
        .Q(raw_in_data[246]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[247] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[119]),
        .Q(raw_in_data[247]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[248] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[120]),
        .Q(raw_in_data[248]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[249] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[121]),
        .Q(raw_in_data[249]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[24] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[24]),
        .Q(raw_in_data[24]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[250] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[122]),
        .Q(raw_in_data[250]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[251] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[123]),
        .Q(raw_in_data[251]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[252] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[124]),
        .Q(raw_in_data[252]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[253] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[125]),
        .Q(raw_in_data[253]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[254] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[126]),
        .Q(raw_in_data[254]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[255] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_E[127]),
        .Q(raw_in_data[255]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[256] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[0]),
        .Q(raw_in_data[256]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[257] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[1]),
        .Q(raw_in_data[257]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[258] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[2]),
        .Q(raw_in_data[258]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[259] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[3]),
        .Q(raw_in_data[259]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[25] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[25]),
        .Q(raw_in_data[25]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[260] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[4]),
        .Q(raw_in_data[260]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[261] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[5]),
        .Q(raw_in_data[261]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[262] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[6]),
        .Q(raw_in_data[262]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[263] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[7]),
        .Q(raw_in_data[263]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[264] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[8]),
        .Q(raw_in_data[264]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[265] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[9]),
        .Q(raw_in_data[265]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[266] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[10]),
        .Q(raw_in_data[266]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[267] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[11]),
        .Q(raw_in_data[267]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[268] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[12]),
        .Q(raw_in_data[268]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[269] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[13]),
        .Q(raw_in_data[269]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[26] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[26]),
        .Q(raw_in_data[26]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[270] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[14]),
        .Q(raw_in_data[270]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[271] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[15]),
        .Q(raw_in_data[271]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[272] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[16]),
        .Q(raw_in_data[272]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[273] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[17]),
        .Q(raw_in_data[273]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[274] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[18]),
        .Q(raw_in_data[274]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[275] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[19]),
        .Q(raw_in_data[275]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[276] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[20]),
        .Q(raw_in_data[276]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[277] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[21]),
        .Q(raw_in_data[277]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[278] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[22]),
        .Q(raw_in_data[278]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[279] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[23]),
        .Q(raw_in_data[279]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[27] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[27]),
        .Q(raw_in_data[27]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[280] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[24]),
        .Q(raw_in_data[280]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[281] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[25]),
        .Q(raw_in_data[281]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[282] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[26]),
        .Q(raw_in_data[282]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[283] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[27]),
        .Q(raw_in_data[283]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[284] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[28]),
        .Q(raw_in_data[284]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[285] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[29]),
        .Q(raw_in_data[285]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[286] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[30]),
        .Q(raw_in_data[286]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[287] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[31]),
        .Q(raw_in_data[287]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[288] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[32]),
        .Q(raw_in_data[288]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[289] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[33]),
        .Q(raw_in_data[289]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[28] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[28]),
        .Q(raw_in_data[28]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[290] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[34]),
        .Q(raw_in_data[290]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[291] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[35]),
        .Q(raw_in_data[291]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[292] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[36]),
        .Q(raw_in_data[292]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[293] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[37]),
        .Q(raw_in_data[293]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[294] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[38]),
        .Q(raw_in_data[294]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[295] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[39]),
        .Q(raw_in_data[295]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[296] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[40]),
        .Q(raw_in_data[296]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[297] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[41]),
        .Q(raw_in_data[297]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[298] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[42]),
        .Q(raw_in_data[298]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[299] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[43]),
        .Q(raw_in_data[299]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[29] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[29]),
        .Q(raw_in_data[29]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[2] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[2]),
        .Q(raw_in_data[2]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[300] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[44]),
        .Q(raw_in_data[300]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[301] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[45]),
        .Q(raw_in_data[301]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[302] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[46]),
        .Q(raw_in_data[302]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[303] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[47]),
        .Q(raw_in_data[303]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[304] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[48]),
        .Q(raw_in_data[304]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[305] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[49]),
        .Q(raw_in_data[305]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[306] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[50]),
        .Q(raw_in_data[306]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[307] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[51]),
        .Q(raw_in_data[307]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[308] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[52]),
        .Q(raw_in_data[308]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[309] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[53]),
        .Q(raw_in_data[309]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[30] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[30]),
        .Q(raw_in_data[30]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[310] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[54]),
        .Q(raw_in_data[310]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[311] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[55]),
        .Q(raw_in_data[311]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[312] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[56]),
        .Q(raw_in_data[312]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[313] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[57]),
        .Q(raw_in_data[313]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[314] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[58]),
        .Q(raw_in_data[314]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[315] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[59]),
        .Q(raw_in_data[315]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[316] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[60]),
        .Q(raw_in_data[316]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[317] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[61]),
        .Q(raw_in_data[317]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[318] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[62]),
        .Q(raw_in_data[318]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[319] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[63]),
        .Q(raw_in_data[319]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[31] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[31]),
        .Q(raw_in_data[31]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[320] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[64]),
        .Q(raw_in_data[320]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[321] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[65]),
        .Q(raw_in_data[321]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[322] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[66]),
        .Q(raw_in_data[322]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[323] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[67]),
        .Q(raw_in_data[323]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[324] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[68]),
        .Q(raw_in_data[324]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[325] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[69]),
        .Q(raw_in_data[325]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[326] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[70]),
        .Q(raw_in_data[326]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[327] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[71]),
        .Q(raw_in_data[327]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[328] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[72]),
        .Q(raw_in_data[328]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[329] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[73]),
        .Q(raw_in_data[329]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[32] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[32]),
        .Q(raw_in_data[32]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[330] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[74]),
        .Q(raw_in_data[330]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[331] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[75]),
        .Q(raw_in_data[331]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[332] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[76]),
        .Q(raw_in_data[332]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[333] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[77]),
        .Q(raw_in_data[333]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[334] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[78]),
        .Q(raw_in_data[334]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[335] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[79]),
        .Q(raw_in_data[335]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[336] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[80]),
        .Q(raw_in_data[336]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[337] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[81]),
        .Q(raw_in_data[337]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[338] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[82]),
        .Q(raw_in_data[338]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[339] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[83]),
        .Q(raw_in_data[339]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[33] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[33]),
        .Q(raw_in_data[33]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[340] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[84]),
        .Q(raw_in_data[340]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[341] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[85]),
        .Q(raw_in_data[341]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[342] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[86]),
        .Q(raw_in_data[342]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[343] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[87]),
        .Q(raw_in_data[343]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[344] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[88]),
        .Q(raw_in_data[344]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[345] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[89]),
        .Q(raw_in_data[345]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[346] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[90]),
        .Q(raw_in_data[346]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[347] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[91]),
        .Q(raw_in_data[347]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[348] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[92]),
        .Q(raw_in_data[348]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[349] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[93]),
        .Q(raw_in_data[349]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[34] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[34]),
        .Q(raw_in_data[34]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[350] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[94]),
        .Q(raw_in_data[350]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[351] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[95]),
        .Q(raw_in_data[351]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[352] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[96]),
        .Q(raw_in_data[352]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[353] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[97]),
        .Q(raw_in_data[353]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[354] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[98]),
        .Q(raw_in_data[354]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[355] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[99]),
        .Q(raw_in_data[355]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[356] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[100]),
        .Q(raw_in_data[356]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[357] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[101]),
        .Q(raw_in_data[357]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[358] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[102]),
        .Q(raw_in_data[358]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[359] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[103]),
        .Q(raw_in_data[359]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[35] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[35]),
        .Q(raw_in_data[35]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[360] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[104]),
        .Q(raw_in_data[360]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[361] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[105]),
        .Q(raw_in_data[361]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[362] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[106]),
        .Q(raw_in_data[362]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[363] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[107]),
        .Q(raw_in_data[363]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[364] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[108]),
        .Q(raw_in_data[364]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[365] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[109]),
        .Q(raw_in_data[365]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[366] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[110]),
        .Q(raw_in_data[366]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[367] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[111]),
        .Q(raw_in_data[367]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[368] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[112]),
        .Q(raw_in_data[368]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[369] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[113]),
        .Q(raw_in_data[369]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[36] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[36]),
        .Q(raw_in_data[36]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[370] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[114]),
        .Q(raw_in_data[370]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[371] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[115]),
        .Q(raw_in_data[371]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[372] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[116]),
        .Q(raw_in_data[372]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[373] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[117]),
        .Q(raw_in_data[373]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[374] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[118]),
        .Q(raw_in_data[374]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[375] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[119]),
        .Q(raw_in_data[375]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[376] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[120]),
        .Q(raw_in_data[376]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[377] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[121]),
        .Q(raw_in_data[377]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[378] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[122]),
        .Q(raw_in_data[378]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[379] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[123]),
        .Q(raw_in_data[379]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[37] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[37]),
        .Q(raw_in_data[37]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[380] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[124]),
        .Q(raw_in_data[380]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[381] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[125]),
        .Q(raw_in_data[381]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[382] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[126]),
        .Q(raw_in_data[382]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[383] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_W[127]),
        .Q(raw_in_data[383]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[38] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[38]),
        .Q(raw_in_data[38]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[39] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[39]),
        .Q(raw_in_data[39]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[3] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[3]),
        .Q(raw_in_data[3]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[40] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[40]),
        .Q(raw_in_data[40]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[41] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[41]),
        .Q(raw_in_data[41]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[42] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[42]),
        .Q(raw_in_data[42]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[43] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[43]),
        .Q(raw_in_data[43]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[44] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[44]),
        .Q(raw_in_data[44]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[45] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[45]),
        .Q(raw_in_data[45]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[46] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[46]),
        .Q(raw_in_data[46]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[47] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[47]),
        .Q(raw_in_data[47]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[48] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[48]),
        .Q(raw_in_data[48]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[49] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[49]),
        .Q(raw_in_data[49]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[4] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[4]),
        .Q(raw_in_data[4]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[50] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[50]),
        .Q(raw_in_data[50]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[51] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[51]),
        .Q(raw_in_data[51]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[52] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[52]),
        .Q(raw_in_data[52]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[53] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[53]),
        .Q(raw_in_data[53]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[54] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[54]),
        .Q(raw_in_data[54]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[55] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[55]),
        .Q(raw_in_data[55]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[56] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[56]),
        .Q(raw_in_data[56]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[57] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[57]),
        .Q(raw_in_data[57]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[58] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[58]),
        .Q(raw_in_data[58]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[59] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[59]),
        .Q(raw_in_data[59]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[5] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[5]),
        .Q(raw_in_data[5]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[60] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[60]),
        .Q(raw_in_data[60]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[61] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[61]),
        .Q(raw_in_data[61]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[62] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[62]),
        .Q(raw_in_data[62]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[63] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[63]),
        .Q(raw_in_data[63]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[64] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[64]),
        .Q(raw_in_data[64]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[65] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[65]),
        .Q(raw_in_data[65]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[66] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[66]),
        .Q(raw_in_data[66]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[67] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[67]),
        .Q(raw_in_data[67]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[68] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[68]),
        .Q(raw_in_data[68]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[69] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[69]),
        .Q(raw_in_data[69]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[6] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[6]),
        .Q(raw_in_data[6]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[70] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[70]),
        .Q(raw_in_data[70]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[71] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[71]),
        .Q(raw_in_data[71]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[72] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[72]),
        .Q(raw_in_data[72]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[73] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[73]),
        .Q(raw_in_data[73]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[74] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[74]),
        .Q(raw_in_data[74]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[75] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[75]),
        .Q(raw_in_data[75]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[76] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[76]),
        .Q(raw_in_data[76]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[77] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[77]),
        .Q(raw_in_data[77]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[78] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[78]),
        .Q(raw_in_data[78]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[79] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[79]),
        .Q(raw_in_data[79]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[7] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[7]),
        .Q(raw_in_data[7]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[80] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[80]),
        .Q(raw_in_data[80]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[81] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[81]),
        .Q(raw_in_data[81]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[82] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[82]),
        .Q(raw_in_data[82]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[83] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[83]),
        .Q(raw_in_data[83]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[84] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[84]),
        .Q(raw_in_data[84]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[85] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[85]),
        .Q(raw_in_data[85]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[86] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[86]),
        .Q(raw_in_data[86]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[87] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[87]),
        .Q(raw_in_data[87]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[88] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[88]),
        .Q(raw_in_data[88]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[89] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[89]),
        .Q(raw_in_data[89]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[8] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[8]),
        .Q(raw_in_data[8]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[90] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[90]),
        .Q(raw_in_data[90]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[91] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[91]),
        .Q(raw_in_data[91]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[92] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[92]),
        .Q(raw_in_data[92]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[93] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[93]),
        .Q(raw_in_data[93]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[94] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[94]),
        .Q(raw_in_data[94]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[95] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[95]),
        .Q(raw_in_data[95]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[96] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[96]),
        .Q(raw_in_data[96]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[97] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[97]),
        .Q(raw_in_data[97]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[98] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[98]),
        .Q(raw_in_data[98]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[99] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[99]),
        .Q(raw_in_data[99]),
        .R(1'b0));
  FDRE \raw.raw_in_data_reg[9] 
       (.C(fifo_clk),
        .CE(fifo_wr),
        .D(raw_in_N[9]),
        .Q(raw_in_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \raw.raw_rd_i_1 
       (.I0(raw_delay[8]),
        .I1(raw_delay[6]),
        .I2(\raw.raw_delay[8]_i_3_n_0 ),
        .I3(raw_delay[7]),
        .O(\raw.raw_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.raw_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.raw_rd_i_1_n_0 ),
        .Q(raw_rd),
        .R(raw_empty));
  FDRE \raw.raw_wr_reg 
       (.C(fifo_clk),
        .CE(1'b1),
        .D(fifo_wr),
        .Q(raw_wr),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \raw.sample[0]_i_1 
       (.I0(sample[0]),
        .O(\raw.sample[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \raw.sample[39]_i_2 
       (.I0(sample[32]),
        .I1(\raw.sample_cy_reg_n_0 ),
        .O(\raw.sample[39]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \raw.sample[63]_i_1 
       (.I0(raw_rd),
        .O(\raw.sample[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raw.sample_cy_i_1 
       (.I0(\raw.sample_cy_i_2_n_0 ),
        .I1(\raw.sample_cy_i_3_n_0 ),
        .I2(\raw.sample_cy_i_4_n_0 ),
        .I3(\raw.sample_cy_i_5_n_0 ),
        .I4(\raw.sample_cy_i_6_n_0 ),
        .I5(\raw.sample_cy_i_7_n_0 ),
        .O(\raw.sample_cy_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raw.sample_cy_i_2 
       (.I0(sample[23]),
        .I1(sample[24]),
        .I2(sample[21]),
        .I3(sample[22]),
        .I4(sample[26]),
        .I5(sample[25]),
        .O(\raw.sample_cy_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raw.sample_cy_i_3 
       (.I0(sample[29]),
        .I1(sample[30]),
        .I2(sample[27]),
        .I3(sample[28]),
        .I4(raw_rd),
        .I5(sample[31]),
        .O(\raw.sample_cy_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \raw.sample_cy_i_4 
       (.I0(sample[2]),
        .I1(sample[1]),
        .I2(sample[0]),
        .O(\raw.sample_cy_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raw.sample_cy_i_5 
       (.I0(sample[5]),
        .I1(sample[6]),
        .I2(sample[3]),
        .I3(sample[4]),
        .I4(sample[8]),
        .I5(sample[7]),
        .O(\raw.sample_cy_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raw.sample_cy_i_6 
       (.I0(sample[17]),
        .I1(sample[18]),
        .I2(sample[15]),
        .I3(sample[16]),
        .I4(sample[20]),
        .I5(sample[19]),
        .O(\raw.sample_cy_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raw.sample_cy_i_7 
       (.I0(sample[11]),
        .I1(sample[12]),
        .I2(sample[9]),
        .I3(sample[10]),
        .I4(sample[14]),
        .I5(sample[13]),
        .O(\raw.sample_cy_i_7_n_0 ));
  FDRE \raw.sample_cy_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_cy_i_1_n_0 ),
        .Q(\raw.sample_cy_reg_n_0 ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample[0]_i_1_n_0 ),
        .Q(sample[0]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_14 ),
        .Q(sample[10]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_13 ),
        .Q(sample[11]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_12 ),
        .Q(sample[12]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_11 ),
        .Q(sample[13]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_10 ),
        .Q(sample[14]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_9 ),
        .Q(sample[15]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_8 ),
        .Q(sample[16]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[16]_i_1 
       (.CI(\raw.sample_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\raw.sample_reg[16]_i_1_n_0 ,\raw.sample_reg[16]_i_1_n_1 ,\raw.sample_reg[16]_i_1_n_2 ,\raw.sample_reg[16]_i_1_n_3 ,\raw.sample_reg[16]_i_1_n_4 ,\raw.sample_reg[16]_i_1_n_5 ,\raw.sample_reg[16]_i_1_n_6 ,\raw.sample_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\raw.sample_reg[16]_i_1_n_8 ,\raw.sample_reg[16]_i_1_n_9 ,\raw.sample_reg[16]_i_1_n_10 ,\raw.sample_reg[16]_i_1_n_11 ,\raw.sample_reg[16]_i_1_n_12 ,\raw.sample_reg[16]_i_1_n_13 ,\raw.sample_reg[16]_i_1_n_14 ,\raw.sample_reg[16]_i_1_n_15 }),
        .S(sample[16:9]));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_15 ),
        .Q(sample[17]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_14 ),
        .Q(sample[18]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_13 ),
        .Q(sample[19]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_15 ),
        .Q(sample[1]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_12 ),
        .Q(sample[20]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_11 ),
        .Q(sample[21]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_10 ),
        .Q(sample[22]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_9 ),
        .Q(sample[23]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[24]_i_1_n_8 ),
        .Q(sample[24]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[24]_i_1 
       (.CI(\raw.sample_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\raw.sample_reg[24]_i_1_n_0 ,\raw.sample_reg[24]_i_1_n_1 ,\raw.sample_reg[24]_i_1_n_2 ,\raw.sample_reg[24]_i_1_n_3 ,\raw.sample_reg[24]_i_1_n_4 ,\raw.sample_reg[24]_i_1_n_5 ,\raw.sample_reg[24]_i_1_n_6 ,\raw.sample_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\raw.sample_reg[24]_i_1_n_8 ,\raw.sample_reg[24]_i_1_n_9 ,\raw.sample_reg[24]_i_1_n_10 ,\raw.sample_reg[24]_i_1_n_11 ,\raw.sample_reg[24]_i_1_n_12 ,\raw.sample_reg[24]_i_1_n_13 ,\raw.sample_reg[24]_i_1_n_14 ,\raw.sample_reg[24]_i_1_n_15 }),
        .S(sample[24:17]));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_15 ),
        .Q(sample[25]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_14 ),
        .Q(sample[26]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_13 ),
        .Q(sample[27]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_12 ),
        .Q(sample[28]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_11 ),
        .Q(sample[29]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_14 ),
        .Q(sample[2]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_10 ),
        .Q(sample[30]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[31]_i_1_n_9 ),
        .Q(sample[31]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[31]_i_1 
       (.CI(\raw.sample_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_raw.sample_reg[31]_i_1_CO_UNCONNECTED [7:6],\raw.sample_reg[31]_i_1_n_2 ,\raw.sample_reg[31]_i_1_n_3 ,\raw.sample_reg[31]_i_1_n_4 ,\raw.sample_reg[31]_i_1_n_5 ,\raw.sample_reg[31]_i_1_n_6 ,\raw.sample_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_raw.sample_reg[31]_i_1_O_UNCONNECTED [7],\raw.sample_reg[31]_i_1_n_9 ,\raw.sample_reg[31]_i_1_n_10 ,\raw.sample_reg[31]_i_1_n_11 ,\raw.sample_reg[31]_i_1_n_12 ,\raw.sample_reg[31]_i_1_n_13 ,\raw.sample_reg[31]_i_1_n_14 ,\raw.sample_reg[31]_i_1_n_15 }),
        .S({1'b0,sample[31:25]}));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_15 ),
        .Q(sample[32]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_14 ),
        .Q(sample[33]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_13 ),
        .Q(sample[34]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_12 ),
        .Q(sample[35]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_11 ),
        .Q(sample[36]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_10 ),
        .Q(sample[37]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_9 ),
        .Q(sample[38]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[39]_i_1_n_8 ),
        .Q(sample[39]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[39]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\raw.sample_reg[39]_i_1_n_0 ,\raw.sample_reg[39]_i_1_n_1 ,\raw.sample_reg[39]_i_1_n_2 ,\raw.sample_reg[39]_i_1_n_3 ,\raw.sample_reg[39]_i_1_n_4 ,\raw.sample_reg[39]_i_1_n_5 ,\raw.sample_reg[39]_i_1_n_6 ,\raw.sample_reg[39]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sample[32]}),
        .O({\raw.sample_reg[39]_i_1_n_8 ,\raw.sample_reg[39]_i_1_n_9 ,\raw.sample_reg[39]_i_1_n_10 ,\raw.sample_reg[39]_i_1_n_11 ,\raw.sample_reg[39]_i_1_n_12 ,\raw.sample_reg[39]_i_1_n_13 ,\raw.sample_reg[39]_i_1_n_14 ,\raw.sample_reg[39]_i_1_n_15 }),
        .S({sample[39:33],\raw.sample[39]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_13 ),
        .Q(sample[3]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_15 ),
        .Q(sample[40]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_14 ),
        .Q(sample[41]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_13 ),
        .Q(sample[42]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_12 ),
        .Q(sample[43]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_11 ),
        .Q(sample[44]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_10 ),
        .Q(sample[45]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_9 ),
        .Q(sample[46]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[47]_i_1_n_8 ),
        .Q(sample[47]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[47]_i_1 
       (.CI(\raw.sample_reg[39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\raw.sample_reg[47]_i_1_n_0 ,\raw.sample_reg[47]_i_1_n_1 ,\raw.sample_reg[47]_i_1_n_2 ,\raw.sample_reg[47]_i_1_n_3 ,\raw.sample_reg[47]_i_1_n_4 ,\raw.sample_reg[47]_i_1_n_5 ,\raw.sample_reg[47]_i_1_n_6 ,\raw.sample_reg[47]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\raw.sample_reg[47]_i_1_n_8 ,\raw.sample_reg[47]_i_1_n_9 ,\raw.sample_reg[47]_i_1_n_10 ,\raw.sample_reg[47]_i_1_n_11 ,\raw.sample_reg[47]_i_1_n_12 ,\raw.sample_reg[47]_i_1_n_13 ,\raw.sample_reg[47]_i_1_n_14 ,\raw.sample_reg[47]_i_1_n_15 }),
        .S(sample[47:40]));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_15 ),
        .Q(sample[48]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_14 ),
        .Q(sample[49]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_12 ),
        .Q(sample[4]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_13 ),
        .Q(sample[50]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_12 ),
        .Q(sample[51]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_11 ),
        .Q(sample[52]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_10 ),
        .Q(sample[53]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_9 ),
        .Q(sample[54]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[55]_i_1_n_8 ),
        .Q(sample[55]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[55]_i_1 
       (.CI(\raw.sample_reg[47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\raw.sample_reg[55]_i_1_n_0 ,\raw.sample_reg[55]_i_1_n_1 ,\raw.sample_reg[55]_i_1_n_2 ,\raw.sample_reg[55]_i_1_n_3 ,\raw.sample_reg[55]_i_1_n_4 ,\raw.sample_reg[55]_i_1_n_5 ,\raw.sample_reg[55]_i_1_n_6 ,\raw.sample_reg[55]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\raw.sample_reg[55]_i_1_n_8 ,\raw.sample_reg[55]_i_1_n_9 ,\raw.sample_reg[55]_i_1_n_10 ,\raw.sample_reg[55]_i_1_n_11 ,\raw.sample_reg[55]_i_1_n_12 ,\raw.sample_reg[55]_i_1_n_13 ,\raw.sample_reg[55]_i_1_n_14 ,\raw.sample_reg[55]_i_1_n_15 }),
        .S(sample[55:48]));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_15 ),
        .Q(sample[56]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_14 ),
        .Q(sample[57]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_13 ),
        .Q(sample[58]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_12 ),
        .Q(sample[59]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_11 ),
        .Q(sample[5]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_11 ),
        .Q(sample[60]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_10 ),
        .Q(sample[61]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_9 ),
        .Q(sample[62]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[63]_i_2_n_8 ),
        .Q(sample[63]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[63]_i_2 
       (.CI(\raw.sample_reg[55]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_raw.sample_reg[63]_i_2_CO_UNCONNECTED [7],\raw.sample_reg[63]_i_2_n_1 ,\raw.sample_reg[63]_i_2_n_2 ,\raw.sample_reg[63]_i_2_n_3 ,\raw.sample_reg[63]_i_2_n_4 ,\raw.sample_reg[63]_i_2_n_5 ,\raw.sample_reg[63]_i_2_n_6 ,\raw.sample_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\raw.sample_reg[63]_i_2_n_8 ,\raw.sample_reg[63]_i_2_n_9 ,\raw.sample_reg[63]_i_2_n_10 ,\raw.sample_reg[63]_i_2_n_11 ,\raw.sample_reg[63]_i_2_n_12 ,\raw.sample_reg[63]_i_2_n_13 ,\raw.sample_reg[63]_i_2_n_14 ,\raw.sample_reg[63]_i_2_n_15 }),
        .S(sample[63:56]));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_10 ),
        .Q(sample[6]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_9 ),
        .Q(sample[7]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[8]_i_1_n_8 ),
        .Q(sample[8]),
        .R(\raw.sample[63]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \raw.sample_reg[8]_i_1 
       (.CI(sample[0]),
        .CI_TOP(1'b0),
        .CO({\raw.sample_reg[8]_i_1_n_0 ,\raw.sample_reg[8]_i_1_n_1 ,\raw.sample_reg[8]_i_1_n_2 ,\raw.sample_reg[8]_i_1_n_3 ,\raw.sample_reg[8]_i_1_n_4 ,\raw.sample_reg[8]_i_1_n_5 ,\raw.sample_reg[8]_i_1_n_6 ,\raw.sample_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\raw.sample_reg[8]_i_1_n_8 ,\raw.sample_reg[8]_i_1_n_9 ,\raw.sample_reg[8]_i_1_n_10 ,\raw.sample_reg[8]_i_1_n_11 ,\raw.sample_reg[8]_i_1_n_12 ,\raw.sample_reg[8]_i_1_n_13 ,\raw.sample_reg[8]_i_1_n_14 ,\raw.sample_reg[8]_i_1_n_15 }),
        .S(sample[8:1]));
  (* KEEP = "yes" *) 
  FDRE \raw.sample_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\raw.sample_reg[16]_i_1_n_15 ),
        .Q(sample[9]),
        .R(\raw.sample[63]_i_1_n_0 ));
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
