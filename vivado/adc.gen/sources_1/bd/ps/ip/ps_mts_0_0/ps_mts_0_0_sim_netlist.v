// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Nov 13 23:41:46 2025
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
   (pl_clk,
    pl_sysref,
    sys_reset,
    deci_clk,
    deci_resetn,
    comp0_clk,
    comp0_reset,
    comp1_clk,
    comp1_reset,
    doa0_clk,
    doa0_reset,
    doa1_clk,
    doa1_reset,
    user_sysref_adc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk;
  input pl_sysref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input sys_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) output deci_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 deci_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output deci_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) output comp0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) output comp1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp1_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) output doa0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) output doa1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa1_reset;
  output user_sysref_adc;

  wire comp0_clk;
  wire comp0_reset;
  wire comp1_clk;
  wire comp1_reset;
  wire deci_clk;
  wire deci_resetn;
  wire doa0_clk;
  wire doa0_reset;
  wire doa1_clk;
  wire doa1_reset;
  wire pl_clk;
  wire pl_sysref;
  wire sys_reset;
  wire user_sysref_adc;

  ps_mts_0_0_mts inst
       (.comp0_clk(comp0_clk),
        .comp0_reset(comp0_reset),
        .comp1_clk(comp1_clk),
        .comp1_reset(comp1_reset),
        .deci_clk(deci_clk),
        .deci_resetn(deci_resetn),
        .doa0_clk(doa0_clk),
        .doa0_reset(doa0_reset),
        .doa1_clk(doa1_clk),
        .doa1_reset(doa1_reset),
        .pl_clk(pl_clk),
        .pl_sysref(pl_sysref),
        .sys_reset(sys_reset),
        .user_sysref_adc(user_sysref_adc));
endmodule

(* ORIG_REF_NAME = "clk_wiz_adc" *) 
module ps_mts_0_0_clk_wiz_adc
   (clk_out1,
    clk_out2,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  (* syn_isclock = "1" *) output clk_out2;
  output locked;
  input clk_in1;


endmodule

(* ORIG_REF_NAME = "clk_wiz_adc" *) 
module ps_mts_0_0_clk_wiz_adc_HD1
   (clk_in1,
    clk_out1,
    clk_out2,
    locked);
  input clk_in1;
  (* syn_isclock = "1" *) output clk_out1;
  (* syn_isclock = "1" *) output clk_out2;
  output locked;


endmodule

(* ORIG_REF_NAME = "clk_wiz_deci" *) 
module ps_mts_0_0_clk_wiz_deci
   (clk_out1,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  output locked;
  input clk_in1;


endmodule

(* ORIG_REF_NAME = "mts" *) 
module ps_mts_0_0_mts
   (pl_clk,
    pl_sysref,
    sys_reset,
    deci_clk,
    deci_resetn,
    comp0_clk,
    comp0_reset,
    comp1_clk,
    comp1_reset,
    doa0_clk,
    doa0_reset,
    doa1_clk,
    doa1_reset,
    user_sysref_adc);
  input pl_clk;
  input pl_sysref;
  input sys_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DECI_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output deci_clk;
  output deci_resetn;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output comp0_clk;
  output comp0_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output comp1_clk;
  output comp1_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output doa0_clk;
  output doa0_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output doa1_clk;
  output doa1_reset;
  output user_sysref_adc;

  wire comp0_clk;
  wire comp0_reset;
  (* async_reg = "true" *) wire comp0_reset_1;
  (* async_reg = "true" *) wire comp0_reset_2;
  wire comp1_clk;
  wire comp1_reset;
  (* async_reg = "true" *) wire comp1_reset_1;
  (* async_reg = "true" *) wire comp1_reset_2;
  wire comp_locked;
  wire deci_clk;
  wire deci_locked;
  (* async_reg = "true" *) wire [3:0]deci_release_cnt;
  wire [3:0]deci_release_cnt__0;
  (* async_reg = "true" *) wire deci_reset_1;
  (* async_reg = "true" *) wire deci_reset_2;
  (* async_reg = "true" *) wire deci_reset_async;
  wire deci_resetn;
  wire doa0_clk;
  wire doa0_reset;
  (* async_reg = "true" *) wire doa0_reset_1;
  (* async_reg = "true" *) wire doa0_reset_2;
  wire doa1_clk;
  wire doa1_reset;
  (* async_reg = "true" *) wire doa1_reset_1;
  (* async_reg = "true" *) wire doa1_reset_2;
  wire doa_locked;
  wire \mts.comp0_reset_1_reg0 ;
  wire \mts.deci_reset_async_i_1_n_0 ;
  wire \mts.deci_resetn_i_1_n_0 ;
  wire \mts.doa0_reset_1_reg0 ;
  wire pl_clk;
  wire pl_clk_buf;
  wire pl_sysref;
  wire rst_async;
  wire sys_reset;
  (* async_reg = "true" *) wire sysref_r;
  (* async_reg = "true" *) wire [2:0]sysref_sync;

  assign user_sysref_adc = sysref_sync[2];
  ps_mts_0_0_clk_wiz_adc clk_wiz_comp_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(comp0_clk),
        .clk_out2(comp1_clk),
        .locked(comp_locked));
  ps_mts_0_0_clk_wiz_deci clk_wiz_deci_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(deci_clk),
        .locked(deci_locked));
  ps_mts_0_0_clk_wiz_adc_HD1 clk_wiz_doa_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(doa0_clk),
        .clk_out2(doa1_clk),
        .locked(doa_locked));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.comp0_reset_1_i_1 
       (.I0(deci_reset_async),
        .I1(comp_locked),
        .O(\mts.comp0_reset_1_reg0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp0_reset_1_reg 
       (.C(comp0_clk),
        .CE(1'b1),
        .D(\mts.comp0_reset_1_reg0 ),
        .Q(comp0_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp0_reset_2_reg 
       (.C(comp0_clk),
        .CE(1'b1),
        .D(comp0_reset_1),
        .Q(comp0_reset_2),
        .R(1'b0));
  FDRE \mts.comp0_reset_reg 
       (.C(comp0_clk),
        .CE(1'b1),
        .D(comp0_reset_2),
        .Q(comp0_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp1_reset_1_reg 
       (.C(comp1_clk),
        .CE(1'b1),
        .D(\mts.comp0_reset_1_reg0 ),
        .Q(comp1_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp1_reset_2_reg 
       (.C(comp1_clk),
        .CE(1'b1),
        .D(comp1_reset_1),
        .Q(comp1_reset_2),
        .R(1'b0));
  FDRE \mts.comp1_reset_reg 
       (.C(comp1_clk),
        .CE(1'b1),
        .D(comp1_reset_2),
        .Q(comp1_reset),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F0F)) 
    \mts.deci_release_cnt[0]_i_1 
       (.I0(deci_release_cnt[3]),
        .I1(deci_release_cnt[2]),
        .I2(deci_release_cnt[0]),
        .I3(deci_release_cnt[1]),
        .O(deci_release_cnt__0[0]));
  LUT4 #(
    .INIT(16'hD5AA)) 
    \mts.deci_release_cnt[1]_i_1 
       (.I0(deci_release_cnt[0]),
        .I1(deci_release_cnt[2]),
        .I2(deci_release_cnt[3]),
        .I3(deci_release_cnt[1]),
        .O(deci_release_cnt__0[1]));
  LUT4 #(
    .INIT(16'hBFC0)) 
    \mts.deci_release_cnt[2]_i_1 
       (.I0(deci_release_cnt[3]),
        .I1(deci_release_cnt[1]),
        .I2(deci_release_cnt[0]),
        .I3(deci_release_cnt[2]),
        .O(deci_release_cnt__0[2]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \mts.deci_release_cnt[3]_i_1 
       (.I0(deci_release_cnt[0]),
        .I1(deci_release_cnt[1]),
        .I2(deci_release_cnt[2]),
        .I3(deci_release_cnt[3]),
        .O(deci_release_cnt__0[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.deci_release_cnt[3]_i_2 
       (.I0(sys_reset),
        .I1(deci_locked),
        .O(rst_async));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[0] 
       (.C(deci_clk),
        .CE(deci_reset_async),
        .CLR(rst_async),
        .D(deci_release_cnt__0[0]),
        .Q(deci_release_cnt[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[1] 
       (.C(deci_clk),
        .CE(deci_reset_async),
        .CLR(rst_async),
        .D(deci_release_cnt__0[1]),
        .Q(deci_release_cnt[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[2] 
       (.C(deci_clk),
        .CE(deci_reset_async),
        .CLR(rst_async),
        .D(deci_release_cnt__0[2]),
        .Q(deci_release_cnt[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[3] 
       (.C(deci_clk),
        .CE(deci_reset_async),
        .CLR(rst_async),
        .D(deci_release_cnt__0[3]),
        .Q(deci_release_cnt[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_reset_1_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_reset_async),
        .Q(deci_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_reset_2_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_reset_1),
        .Q(deci_reset_2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \mts.deci_reset_async_i_1 
       (.I0(deci_reset_async),
        .I1(deci_release_cnt[3]),
        .I2(deci_release_cnt[2]),
        .I3(deci_release_cnt[0]),
        .I4(deci_release_cnt[1]),
        .O(\mts.deci_reset_async_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \mts.deci_reset_async_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(\mts.deci_reset_async_i_1_n_0 ),
        .PRE(rst_async),
        .Q(deci_reset_async));
  LUT1 #(
    .INIT(2'h1)) 
    \mts.deci_resetn_i_1 
       (.I0(deci_reset_2),
        .O(\mts.deci_resetn_i_1_n_0 ));
  FDRE \mts.deci_resetn_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(\mts.deci_resetn_i_1_n_0 ),
        .Q(deci_resetn),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.doa0_reset_1_i_1 
       (.I0(deci_reset_async),
        .I1(doa_locked),
        .O(\mts.doa0_reset_1_reg0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa0_reset_1_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(\mts.doa0_reset_1_reg0 ),
        .Q(doa0_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa0_reset_2_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(doa0_reset_1),
        .Q(doa0_reset_2),
        .R(1'b0));
  FDRE \mts.doa0_reset_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(doa0_reset_2),
        .Q(doa0_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa1_reset_1_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(\mts.doa0_reset_1_reg0 ),
        .Q(doa1_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa1_reset_2_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(doa1_reset_1),
        .Q(doa1_reset_2),
        .R(1'b0));
  FDRE \mts.doa1_reset_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(doa1_reset_2),
        .Q(doa1_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_r_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(pl_sysref),
        .Q(sysref_r),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[0] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sysref_r),
        .Q(sysref_sync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[1] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sysref_sync[0]),
        .Q(sysref_sync[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[2] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sysref_sync[1]),
        .Q(sysref_sync[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    p_clk_i
       (.CE(1'b1),
        .I(pl_clk),
        .O(pl_clk_buf));
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
