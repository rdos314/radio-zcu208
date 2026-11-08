// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  7 21:30:11 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_spi_gain_0_0/ps_spi_gain_0_0_sim_netlist.v
// Design      : ps_spi_gain_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_spi_gain_0_0,spi_gain,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_gain,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_spi_gain_0_0
   (clk,
    resetn,
    axi_in,
    axi_out,
    spi_clk,
    spi_in,
    spi_out,
    spi_sel);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [31:0]axi_in;
  output [31:0]axi_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_spi_gain_0_0_spi_clk, INSERT_VIP 0" *) output spi_clk;
  input spi_in;
  output spi_out;
  output [2:0]spi_sel;

  wire [31:0]axi_in;
  wire [31:0]axi_out;
  wire clk;
  wire resetn;
  wire spi_clk;
  wire spi_in;
  wire spi_out;
  wire [2:0]spi_sel;

  ps_spi_gain_0_0_spi_gain inst
       (.axi_in(axi_in),
        .axi_out(axi_out),
        .clk(clk),
        .resetn(resetn),
        .spi_clk(spi_clk),
        .spi_in(spi_in),
        .spi_out(spi_out),
        .spi_sel(spi_sel));
endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_spi_gain_0_0_ila_2
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  (* syn_isclock = "1" *) input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [2:0]probe5;


endmodule

(* ORIG_REF_NAME = "spi_gain" *) (* keep_hierarchy = "soft" *) 
module ps_spi_gain_0_0_spi_gain
   (clk,
    resetn,
    axi_in,
    axi_out,
    spi_clk,
    spi_in,
    spi_out,
    spi_sel);
  input clk;
  input resetn;
  input [31:0]axi_in;
  output [31:0]axi_out;
  output spi_clk;
  input spi_in;
  output spi_out;
  output [2:0]spi_sel;

  (* MARK_DEBUG *) wire [31:0]axi_in;
  (* MARK_DEBUG *) wire [31:0]axi_out;
  wire clk;
  wire resetn;
  (* MARK_DEBUG *) wire spi_clk;
  wire \spi_gain.axi_out[31]_i_1_n_0 ;
  (* MARK_DEBUG *) wire spi_in;
  (* MARK_DEBUG *) wire spi_out;
  (* MARK_DEBUG *) wire [2:0]spi_sel;

  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_spi_gain_0_0_ila_2 ila_i
       (.clk(clk),
        .probe0(axi_in),
        .probe1(axi_out),
        .probe2(spi_clk),
        .probe3(spi_in),
        .probe4(spi_out),
        .probe5(spi_sel));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_gain.axi_out[31]_i_1 
       (.I0(resetn),
        .O(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[0]),
        .Q(axi_out[0]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[10]),
        .Q(axi_out[10]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[11]),
        .Q(axi_out[11]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[12]),
        .Q(axi_out[12]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[13]),
        .Q(axi_out[13]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[14]),
        .Q(axi_out[14]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[15]),
        .Q(axi_out[15]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[16]),
        .Q(axi_out[16]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[17]),
        .Q(axi_out[17]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[18]),
        .Q(axi_out[18]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[19]),
        .Q(axi_out[19]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[1]),
        .Q(axi_out[1]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[20]),
        .Q(axi_out[20]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[21]),
        .Q(axi_out[21]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[22]),
        .Q(axi_out[22]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[23]),
        .Q(axi_out[23]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[24]),
        .Q(axi_out[24]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[25]),
        .Q(axi_out[25]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[26]),
        .Q(axi_out[26]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[27]),
        .Q(axi_out[27]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[28]),
        .Q(axi_out[28]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[29]),
        .Q(axi_out[29]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[2]),
        .Q(axi_out[2]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[30]),
        .Q(axi_out[30]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[31]),
        .Q(axi_out[31]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[3]),
        .Q(axi_out[3]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[4]),
        .Q(axi_out[4]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[5]),
        .Q(axi_out[5]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[6]),
        .Q(axi_out[6]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[7]),
        .Q(axi_out[7]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[8]),
        .Q(axi_out[8]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.axi_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_out[9]),
        .Q(axi_out[9]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_clk_reg 
       (.C(clk),
        .CE(1'b1),
        .D(spi_clk),
        .Q(spi_clk),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_out_reg 
       (.C(clk),
        .CE(1'b1),
        .D(spi_out),
        .Q(spi_out),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_sel_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(spi_sel[0]),
        .Q(spi_sel[0]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_sel_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(spi_sel[1]),
        .Q(spi_sel[1]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_sel_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(spi_sel[2]),
        .Q(spi_sel[2]),
        .R(\spi_gain.axi_out[31]_i_1_n_0 ));
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
