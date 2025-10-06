// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Oct  6 21:38:46 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_0_0/ps_doa_0_0_sim_netlist.v
// Design      : ps_doa_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_doa_0_0,doa,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "doa,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_doa_0_0
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [159:0]data_N;
  input ready_N;
  input [159:0]data_E;
  input ready_E;
  input [159:0]data_W;
  input ready_W;

  wire clk;
  wire [159:0]data_E;
  wire [159:0]data_N;
  wire [159:0]data_W;
  wire ready_E;
  wire ready_N;
  wire ready_W;

  ps_doa_0_0_doa inst
       (.clk(clk),
        .data_E(data_E),
        .data_N(data_N),
        .data_W(data_W),
        .ready_E(ready_E),
        .ready_N(ready_N),
        .ready_W(ready_W),
        .resetn(1'b0));
endmodule

(* ORIG_REF_NAME = "doa" *) (* keep_hierarchy = "soft" *) 
module ps_doa_0_0_doa
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W);
  input clk;
  input resetn;
  input [159:0]data_N;
  input ready_N;
  input [159:0]data_E;
  input ready_E;
  input [159:0]data_W;
  input ready_W;

  wire clk;
  (* MARK_DEBUG *) wire [159:0]data_E;
  (* MARK_DEBUG *) wire [159:0]data_N;
  (* MARK_DEBUG *) wire [159:0]data_W;
  (* MARK_DEBUG *) wire ready_E;
  (* MARK_DEBUG *) wire ready_N;
  (* MARK_DEBUG *) wire ready_W;

  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_doa_0_0_ila_0 ila_E
       (.clk(clk),
        .probe0(data_E[15:0]),
        .probe1(data_E[31:16]),
        .probe10(ready_E),
        .probe2(data_E[47:32]),
        .probe3(data_E[63:48]),
        .probe4(data_E[79:64]),
        .probe5(data_E[95:80]),
        .probe6(data_E[111:96]),
        .probe7(data_E[127:112]),
        .probe8(data_E[143:128]),
        .probe9(data_E[159:144]));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_doa_0_0_ila_0 ila_N
       (.clk(clk),
        .probe0(data_N[15:0]),
        .probe1(data_N[31:16]),
        .probe10(ready_N),
        .probe2(data_N[47:32]),
        .probe3(data_N[63:48]),
        .probe4(data_N[79:64]),
        .probe5(data_N[95:80]),
        .probe6(data_N[111:96]),
        .probe7(data_N[127:112]),
        .probe8(data_N[143:128]),
        .probe9(data_N[159:144]));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_doa_0_0_ila_0_HD1 ila_W
       (.clk(clk),
        .probe0(data_W[15:0]),
        .probe1(data_W[31:16]),
        .probe10(ready_W),
        .probe2(data_W[47:32]),
        .probe3(data_W[63:48]),
        .probe4(data_W[79:64]),
        .probe5(data_W[95:80]),
        .probe6(data_W[111:96]),
        .probe7(data_W[127:112]),
        .probe8(data_W[143:128]),
        .probe9(data_W[159:144]));
endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_doa_0_0_ila_0
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
    probe10);
  (* syn_isclock = "1" *) input clk;
  input [15:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
  input [15:0]probe3;
  input [15:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;
  input [0:0]probe10;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_doa_0_0_ila_0_HD1
   (clk,
    probe0,
    probe1,
    probe10,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  (* syn_isclock = "1" *) input clk;
  input [15:0]probe0;
  input [15:0]probe1;
  input [0:0]probe10;
  input [15:0]probe2;
  input [15:0]probe3;
  input [15:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;


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
