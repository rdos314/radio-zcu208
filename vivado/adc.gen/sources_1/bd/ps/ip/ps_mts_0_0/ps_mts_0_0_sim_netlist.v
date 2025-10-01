// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  2 00:57:19 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_sim_netlist.v
// Design      : ps_mts_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_mts_0_0,mts,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mts,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_mts_0_0
   (pl_clk_p,
    pl_clk_n,
    pl_clk,
    pl_sysref_p,
    pl_sysref_n,
    pl_sysref,
    user_sysref_adc,
    m0_axis_aclk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk_p CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_p, INSERT_VIP 0" *) input pl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk_n CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_pl_clk, INSERT_VIP 0" *) output pl_clk;
  input pl_sysref_p;
  input pl_sysref_n;
  output pl_sysref;
  output user_sysref_adc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_axis_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis_aclk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc0_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m0_axis_aclk;

  wire m0_axis_aclk;
  (* IBUF_LOW_PWR *) wire pl_clk;
  (* IBUF_LOW_PWR *) wire pl_clk_n;
  (* IBUF_LOW_PWR *) wire pl_clk_p;
  (* IBUF_LOW_PWR *) wire pl_sysref;
  (* IBUF_LOW_PWR *) wire pl_sysref_n;
  (* IBUF_LOW_PWR *) wire pl_sysref_p;
  wire user_sysref_adc;

  ps_mts_0_0_mts inst
       (.m0_axis_aclk(m0_axis_aclk),
        .pl_clk(pl_clk),
        .pl_clk_n(pl_clk_n),
        .pl_clk_p(pl_clk_p),
        .pl_sysref(pl_sysref),
        .pl_sysref_n(pl_sysref_n),
        .pl_sysref_p(pl_sysref_p),
        .user_sysref_adc(user_sysref_adc));
endmodule

(* ORIG_REF_NAME = "mts" *) 
module ps_mts_0_0_mts
   (pl_clk,
    pl_sysref,
    user_sysref_adc,
    pl_clk_p,
    pl_clk_n,
    pl_sysref_p,
    pl_sysref_n,
    m0_axis_aclk);
  output pl_clk;
  output pl_sysref;
  output user_sysref_adc;
  input pl_clk_p;
  input pl_clk_n;
  input pl_sysref_p;
  input pl_sysref_n;
  input m0_axis_aclk;

  wire m0_axis_aclk;
  wire pl_clk;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_sysref;
  wire pl_sysref_n;
  wire pl_sysref_p;
  wire pl_sysref_r;
  wire user_sysref_adc;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \mts.pl_clk_i 
       (.I(pl_clk_p),
        .IB(pl_clk_n),
        .O(pl_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \mts.pl_sysref_i 
       (.I(pl_sysref_p),
        .IB(pl_sysref_n),
        .O(pl_sysref));
  FDRE \mts.pl_sysref_r_reg 
       (.C(pl_clk),
        .CE(1'b1),
        .D(pl_sysref),
        .Q(pl_sysref_r),
        .R(1'b0));
  FDRE \mts.user_sysref_adc_reg 
       (.C(m0_axis_aclk),
        .CE(1'b1),
        .D(pl_sysref_r),
        .Q(user_sysref_adc),
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
