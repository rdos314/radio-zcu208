// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep 30 22:50:22 2025
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
    data_0,
    data_1,
    data_2,
    ready_0,
    ready_1,
    ready_2,
    started,
    running);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc0_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input [159:0]data_0;
  input [159:0]data_1;
  input [159:0]data_2;
  input ready_0;
  input ready_1;
  input ready_2;
  input started;
  output running;

  wire \<const1> ;
  wire clk;
  wire [159:0]data_0;
  wire [159:0]data_1;
  wire [159:0]data_2;
  wire ready_0;
  wire ready_1;
  wire ready_2;
  wire started;
  wire NLW_inst_running_UNCONNECTED;

  assign running = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  ps_doa_0_0_doa inst
       (.clk(clk),
        .data_0(data_0),
        .data_1(data_1),
        .data_2(data_2),
        .ready_0(ready_0),
        .ready_1(ready_1),
        .ready_2(ready_2),
        .running(NLW_inst_running_UNCONNECTED),
        .started(started));
endmodule

(* ORIG_REF_NAME = "doa" *) (* keep_hierarchy = "soft" *) 
module ps_doa_0_0_doa
   (clk,
    data_0,
    data_1,
    data_2,
    ready_0,
    ready_1,
    ready_2,
    started,
    running);
  input clk;
  input [159:0]data_0;
  input [159:0]data_1;
  input [159:0]data_2;
  input ready_0;
  input ready_1;
  input ready_2;
  input started;
  output running;

  wire \<const0> ;
  wire clk;
  (* MARK_DEBUG *) wire [159:0]data_0;
  (* MARK_DEBUG *) wire [159:0]data_1;
  (* MARK_DEBUG *) wire [159:0]data_2;
  (* MARK_DEBUG *) wire ready_0;
  (* MARK_DEBUG *) wire ready_1;
  (* MARK_DEBUG *) wire ready_2;
  (* MARK_DEBUG *) wire started;

  assign running = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_doa_0_0_ila_0 ila_0_inst
       (.clk(clk),
        .probe0(data_0[15:0]),
        .probe1(data_0[31:16]),
        .probe10(data_1[15:0]),
        .probe11(data_1[31:16]),
        .probe12(data_1[47:32]),
        .probe13(data_1[63:48]),
        .probe14(data_1[79:64]),
        .probe15(data_1[95:80]),
        .probe16(data_1[111:96]),
        .probe17(data_1[127:112]),
        .probe18(data_1[143:128]),
        .probe19(data_1[159:144]),
        .probe2(data_0[47:32]),
        .probe20(data_2[15:0]),
        .probe21(data_2[31:16]),
        .probe22(data_2[47:32]),
        .probe23(data_2[63:48]),
        .probe24(data_2[79:64]),
        .probe25(data_2[95:80]),
        .probe26(data_2[111:96]),
        .probe27(data_2[127:112]),
        .probe28(data_2[143:128]),
        .probe29(data_2[159:144]),
        .probe3(data_0[63:48]),
        .probe30(ready_0),
        .probe31(ready_1),
        .probe32(ready_2),
        .probe33(started),
        .probe4(data_0[79:64]),
        .probe5(data_0[95:80]),
        .probe6(data_0[111:96]),
        .probe7(data_0[127:112]),
        .probe8(data_0[143:128]),
        .probe9(data_0[159:144]));
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
    probe31,
    probe32,
    probe33);
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
  input [15:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;
  input [15:0]probe13;
  input [15:0]probe14;
  input [15:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;
  input [15:0]probe18;
  input [15:0]probe19;
  input [15:0]probe20;
  input [15:0]probe21;
  input [15:0]probe22;
  input [15:0]probe23;
  input [15:0]probe24;
  input [15:0]probe25;
  input [15:0]probe26;
  input [15:0]probe27;
  input [15:0]probe28;
  input [15:0]probe29;
  input [0:0]probe30;
  input [0:0]probe31;
  input [0:0]probe32;
  input [0:0]probe33;


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
