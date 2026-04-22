// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Apr 21 22:55:06 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_spy_0_4/ps_axi_spy_0_4_sim_netlist.v
// Design      : ps_axi_spy_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_axi_spy_0_4,axi_spy,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_spy,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_axi_spy_0_4
   (clk,
    resetn,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_bresp,
    wr,
    data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "monitor master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) input s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) input s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) input s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) input [1:0]s_axi_bresp;
  output wr;
  output [31:0]data;

  wire clk;
  wire [31:0]data;
  wire resetn;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wr;

  ps_axi_spy_0_4_axi_spy inst
       (.clk(clk),
        .data(data),
        .resetn(resetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wr(wr));
endmodule

(* ORIG_REF_NAME = "axi_spy" *) 
module ps_axi_spy_0_4_axi_spy
   (data,
    wr,
    s_axi_wdata,
    clk,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_wready,
    resetn);
  output [31:0]data;
  output wr;
  input [31:0]s_axi_wdata;
  input clk;
  input [11:0]s_axi_awaddr;
  input s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bvalid;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_wready;
  input resetn;

  wire \__0/i__n_0 ;
  wire \axi_spy.match_i_1_n_0 ;
  wire \axi_spy.match_i_2_n_0 ;
  wire \axi_spy.match_i_3_n_0 ;
  wire \axi_spy.match_i_4_n_0 ;
  wire \axi_spy.match_i_5_n_0 ;
  wire \axi_spy.match_reg_n_0 ;
  wire \axi_spy.wr_i_1_n_0 ;
  wire clk;
  wire [31:0]data;
  wire resetn;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wr;

  LUT4 #(
    .INIT(16'h0080)) 
    \__0/i_ 
       (.I0(s_axi_wvalid),
        .I1(s_axi_wready),
        .I2(\axi_spy.match_reg_n_0 ),
        .I3(resetn),
        .O(\__0/i__n_0 ));
  FDRE \axi_spy.data_reg[0] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[10] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[10]),
        .Q(data[10]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[11] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[11]),
        .Q(data[11]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[12] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[12]),
        .Q(data[12]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[13] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[13]),
        .Q(data[13]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[14] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[14]),
        .Q(data[14]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[15] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[15]),
        .Q(data[15]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[16] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[16]),
        .Q(data[16]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[17] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[17]),
        .Q(data[17]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[18] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[18]),
        .Q(data[18]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[19] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[19]),
        .Q(data[19]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[1] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[20] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[20]),
        .Q(data[20]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[21] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[21]),
        .Q(data[21]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[22] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[22]),
        .Q(data[22]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[23] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[23]),
        .Q(data[23]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[24] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[24]),
        .Q(data[24]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[25] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[25]),
        .Q(data[25]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[26] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[26]),
        .Q(data[26]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[27] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[27]),
        .Q(data[27]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[28] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[28]),
        .Q(data[28]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[29] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[29]),
        .Q(data[29]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[2] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[30] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[30]),
        .Q(data[30]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[31] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[31]),
        .Q(data[31]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[3] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[4] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[5] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[6] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[7] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[7]),
        .Q(data[7]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[8] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[8]),
        .Q(data[8]),
        .R(1'b0));
  FDRE \axi_spy.data_reg[9] 
       (.C(clk),
        .CE(\__0/i__n_0 ),
        .D(s_axi_wdata[9]),
        .Q(data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \axi_spy.match_i_1 
       (.I0(\axi_spy.match_reg_n_0 ),
        .I1(\axi_spy.match_i_2_n_0 ),
        .I2(\axi_spy.match_i_3_n_0 ),
        .I3(\axi_spy.match_i_4_n_0 ),
        .I4(\axi_spy.match_i_5_n_0 ),
        .I5(resetn),
        .O(\axi_spy.match_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \axi_spy.match_i_2 
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(s_axi_awready),
        .I3(s_axi_awvalid),
        .O(\axi_spy.match_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \axi_spy.match_i_3 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[7]),
        .I5(s_axi_awaddr[6]),
        .O(\axi_spy.match_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \axi_spy.match_i_4 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .O(\axi_spy.match_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \axi_spy.match_i_5 
       (.I0(s_axi_awaddr[10]),
        .I1(s_axi_awaddr[11]),
        .I2(s_axi_awaddr[8]),
        .I3(s_axi_awaddr[9]),
        .I4(s_axi_awready),
        .I5(s_axi_awvalid),
        .O(\axi_spy.match_i_5_n_0 ));
  FDRE \axi_spy.match_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_spy.match_i_1_n_0 ),
        .Q(\axi_spy.match_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_spy.wr_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(\axi_spy.match_reg_n_0 ),
        .I3(resetn),
        .O(\axi_spy.wr_i_1_n_0 ));
  FDRE \axi_spy.wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_spy.wr_i_1_n_0 ),
        .Q(wr),
        .R(1'b0));
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
