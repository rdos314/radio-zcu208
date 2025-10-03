// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Oct  3 21:41:03 2025
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
    doa0_clk,
    doa1_clk,
    user_sysref_adc,
    doa0_resetn,
    doa1_resetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk;
  input pl_sysref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input sys_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) output doa0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) output doa1_clk;
  output user_sysref_adc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa0_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa0_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa1_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa1_resetn;

  wire doa0_clk;
  wire doa0_resetn;
  wire doa1_clk;
  wire doa1_resetn;
  wire pl_clk;
  wire pl_sysref;
  wire sys_reset;
  wire user_sysref_adc;

  ps_mts_0_0_mts inst
       (.doa0_clk(doa0_clk),
        .doa0_resetn(doa0_resetn),
        .doa1_clk(doa1_clk),
        .doa1_resetn(doa1_resetn),
        .pl_clk(pl_clk),
        .pl_sysref(pl_sysref),
        .sys_reset(sys_reset),
        .user_sysref_adc(user_sysref_adc));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0" *) 
module ps_mts_0_0_clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  input reset;
  output locked;
  input clk_in1;


endmodule

(* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_1" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_mts_0_0_ila_1
   (clk,
    probe0,
    probe1);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;


endmodule

(* ORIG_REF_NAME = "mts" *) (* keep_hierarchy = "soft" *) 
module ps_mts_0_0_mts
   (pl_clk,
    pl_sysref,
    sys_reset,
    doa0_clk,
    doa1_clk,
    user_sysref_adc,
    doa0_resetn,
    doa1_resetn);
  input pl_clk;
  input pl_sysref;
  input sys_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output doa0_clk;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output doa1_clk;
  output user_sysref_adc;
  output doa0_resetn;
  output doa1_resetn;

  (* MARK_DEBUG *) wire adc_resetn;
  wire doa0_clk;
  (* async_reg = "true" *) wire doa0_reset_1;
  (* async_reg = "true" *) wire doa0_reset_2;
  wire doa0_resetn;
  wire doa1_clk;
  (* async_reg = "true" *) wire doa1_reset_1;
  (* async_reg = "true" *) wire doa1_reset_2;
  wire doa1_resetn;
  wire m_clk;
  wire m_clk_buf;
  (* async_reg = "true" *) wire master_reset;
  (* async_reg = "true" *) wire master_reset_async;
  wire mmcm_locked;
  wire \mts.doa0_resetn_i_1_n_0 ;
  wire \mts.doa1_resetn_i_1_n_0 ;
  wire \mts.master_reset_async_i_1_n_0 ;
  wire pl_clk;
  wire pl_clk_buf;
  wire pl_sysref;
  (* async_reg = "true" *) wire pl_sysref_r;
  (* async_reg = "true" *) wire [3:0]release_cnt;
  wire [3:0]release_cnt__0;
  wire rst_async;
  (* async_reg = "true" *) wire [1:0]rst_async_msync;
  wire sys_reset;
  (* async_reg = "true" *) wire [2:0]sysref_sync;
  (* MARK_DEBUG *) wire user_sysref_adc;
  wire NLW_pl_clk_wiz_i_reset_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    doa0_clk_i
       (.CE(1'b1),
        .I(m_clk),
        .O(doa0_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    doa1_clk_i
       (.CE(1'b1),
        .I(m_clk),
        .O(doa1_clk));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(adc_resetn));
  (* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_mts_0_0_ila_1 ila_i
       (.clk(m_clk_buf),
        .probe0(user_sysref_adc),
        .probe1(adc_resetn));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    m_clk_i
       (.CE(1'b1),
        .I(m_clk),
        .O(m_clk_buf));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa0_reset_1_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(master_reset),
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
  LUT1 #(
    .INIT(2'h1)) 
    \mts.doa0_resetn_i_1 
       (.I0(doa0_reset_2),
        .O(\mts.doa0_resetn_i_1_n_0 ));
  FDRE \mts.doa0_resetn_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(\mts.doa0_resetn_i_1_n_0 ),
        .Q(doa0_resetn),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa1_reset_1_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(master_reset),
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
  LUT1 #(
    .INIT(2'h1)) 
    \mts.doa1_resetn_i_1 
       (.I0(doa1_reset_2),
        .O(\mts.doa1_resetn_i_1_n_0 ));
  FDRE \mts.doa1_resetn_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(\mts.doa1_resetn_i_1_n_0 ),
        .Q(doa1_resetn),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \mts.master_reset_async_i_1 
       (.I0(master_reset_async),
        .I1(release_cnt[3]),
        .I2(release_cnt[2]),
        .I3(release_cnt[0]),
        .I4(release_cnt[1]),
        .O(\mts.master_reset_async_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \mts.master_reset_async_reg 
       (.C(m_clk_buf),
        .CE(1'b1),
        .D(\mts.master_reset_async_i_1_n_0 ),
        .PRE(rst_async),
        .Q(master_reset_async));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.master_reset_reg 
       (.C(m_clk_buf),
        .CE(1'b1),
        .D(master_reset_async),
        .Q(master_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.pl_sysref_r_reg 
       (.C(pl_clk_buf),
        .CE(1'b1),
        .D(pl_sysref),
        .Q(pl_sysref_r),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F0F)) 
    \mts.release_cnt[0]_i_1 
       (.I0(release_cnt[3]),
        .I1(release_cnt[2]),
        .I2(release_cnt[0]),
        .I3(release_cnt[1]),
        .O(release_cnt__0[0]));
  LUT4 #(
    .INIT(16'hD5AA)) 
    \mts.release_cnt[1]_i_1 
       (.I0(release_cnt[0]),
        .I1(release_cnt[2]),
        .I2(release_cnt[3]),
        .I3(release_cnt[1]),
        .O(release_cnt__0[1]));
  LUT4 #(
    .INIT(16'hBFC0)) 
    \mts.release_cnt[2]_i_1 
       (.I0(release_cnt[3]),
        .I1(release_cnt[1]),
        .I2(release_cnt[0]),
        .I3(release_cnt[2]),
        .O(release_cnt__0[2]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \mts.release_cnt[3]_i_1 
       (.I0(release_cnt[0]),
        .I1(release_cnt[1]),
        .I2(release_cnt[2]),
        .I3(release_cnt[3]),
        .O(release_cnt__0[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.release_cnt[3]_i_2 
       (.I0(sys_reset),
        .I1(mmcm_locked),
        .O(rst_async));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.release_cnt_reg[0] 
       (.C(m_clk_buf),
        .CE(master_reset_async),
        .CLR(rst_async),
        .D(release_cnt__0[0]),
        .Q(release_cnt[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.release_cnt_reg[1] 
       (.C(m_clk_buf),
        .CE(master_reset_async),
        .CLR(rst_async),
        .D(release_cnt__0[1]),
        .Q(release_cnt[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.release_cnt_reg[2] 
       (.C(m_clk_buf),
        .CE(master_reset_async),
        .CLR(rst_async),
        .D(release_cnt__0[2]),
        .Q(release_cnt[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.release_cnt_reg[3] 
       (.C(m_clk_buf),
        .CE(master_reset_async),
        .CLR(rst_async),
        .D(release_cnt__0[3]),
        .Q(release_cnt[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \mts.rst_async_msync_reg[0] 
       (.C(m_clk_buf),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_async),
        .Q(rst_async_msync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \mts.rst_async_msync_reg[1] 
       (.C(m_clk_buf),
        .CE(1'b1),
        .D(rst_async_msync[0]),
        .PRE(rst_async),
        .Q(rst_async_msync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[0] 
       (.C(m_clk_buf),
        .CE(1'b1),
        .D(pl_sysref_r),
        .Q(sysref_sync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[1] 
       (.C(m_clk_buf),
        .CE(1'b1),
        .D(sysref_sync[0]),
        .Q(sysref_sync[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[2] 
       (.C(m_clk_buf),
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
  ps_mts_0_0_clk_wiz_0 pl_clk_wiz_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(m_clk),
        .locked(mmcm_locked),
        .reset(NLW_pl_clk_wiz_i_reset_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    sysref_sync_inst
       (.I0(sysref_sync[2]),
        .O(user_sysref_adc));
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
