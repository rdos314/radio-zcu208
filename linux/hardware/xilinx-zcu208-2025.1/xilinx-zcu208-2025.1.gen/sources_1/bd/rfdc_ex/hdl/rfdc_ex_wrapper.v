//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Thu May 22 09:05:26 2025
//Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
//Command     : generate_target rfdc_ex_wrapper.bd
//Design      : rfdc_ex_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module rfdc_ex_wrapper
   (C0_DDR4_0_0_act_n,
    C0_DDR4_0_0_adr,
    C0_DDR4_0_0_ba,
    C0_DDR4_0_0_bg,
    C0_DDR4_0_0_ck_c,
    C0_DDR4_0_0_ck_t,
    C0_DDR4_0_0_cke,
    C0_DDR4_0_0_cs_n,
    C0_DDR4_0_0_dm_n,
    C0_DDR4_0_0_dq,
    C0_DDR4_0_0_dqs_c,
    C0_DDR4_0_0_dqs_t,
    C0_DDR4_0_0_odt,
    C0_DDR4_0_0_reset_n,
    C0_SYS_CLK_0_0_clk_n,
    C0_SYS_CLK_0_0_clk_p,
    C1_DDR4_0_0_act_n,
    C1_DDR4_0_0_adr,
    C1_DDR4_0_0_ba,
    C1_DDR4_0_0_bg,
    C1_DDR4_0_0_ck_c,
    C1_DDR4_0_0_ck_t,
    C1_DDR4_0_0_cke,
    C1_DDR4_0_0_cs_n,
    C1_DDR4_0_0_dm_n,
    C1_DDR4_0_0_dq,
    C1_DDR4_0_0_dqs_c,
    C1_DDR4_0_0_dqs_t,
    C1_DDR4_0_0_odt,
    C1_DDR4_0_0_reset_n,
    C1_SYS_CLK_0_0_clk_n,
    C1_SYS_CLK_0_0_clk_p,
    GPIO_0_tri_o,
    adc2_clk_clk_n,
    adc2_clk_clk_p,
    dac0_clk_clk_n,
    dac0_clk_clk_p,
    dac0_hw_trigger,
    dac0_hw_trigger_en,
    dac1_hw_trigger,
    dac1_hw_trigger_en,
    dac2_hw_trigger,
    dac2_hw_trigger_en,
    dac3_hw_trigger,
    dac3_hw_trigger_en,
    m0_axis_aclk,
    m1_axis_aclk,
    m2_axis_aclk,
    m3_axis_aclk,
    pl_clk_adc,
    pl_clk_dac,
    s0_axis_aclk,
    s1_axis_aclk,
    s2_axis_aclk,
    s3_axis_aclk,
    sysref_in_diff_n,
    sysref_in_diff_p,
    user_sysref_adc_0,
    user_sysref_dac_0,
    vin0_01_v_n,
    vin0_01_v_p,
    vin0_23_v_n,
    vin0_23_v_p,
    vin1_01_v_n,
    vin1_01_v_p,
    vin1_23_v_n,
    vin1_23_v_p,
    vin2_01_v_n,
    vin2_01_v_p,
    vin2_23_v_n,
    vin2_23_v_p,
    vin3_01_v_n,
    vin3_01_v_p,
    vin3_23_v_n,
    vin3_23_v_p,
    vout00_v_n,
    vout00_v_p,
    vout02_v_n,
    vout02_v_p,
    vout10_v_n,
    vout10_v_p,
    vout12_v_n,
    vout12_v_p,
    vout20_v_n,
    vout20_v_p,
    vout22_v_n,
    vout22_v_p,
    vout30_v_n,
    vout30_v_p,
    vout32_v_n,
    vout32_v_p);
  output C0_DDR4_0_0_act_n;
  output [16:0]C0_DDR4_0_0_adr;
  output [1:0]C0_DDR4_0_0_ba;
  output [1:0]C0_DDR4_0_0_bg;
  output [0:0]C0_DDR4_0_0_ck_c;
  output [0:0]C0_DDR4_0_0_ck_t;
  output [0:0]C0_DDR4_0_0_cke;
  output [1:0]C0_DDR4_0_0_cs_n;
  inout [3:0]C0_DDR4_0_0_dm_n;
  inout [31:0]C0_DDR4_0_0_dq;
  inout [3:0]C0_DDR4_0_0_dqs_c;
  inout [3:0]C0_DDR4_0_0_dqs_t;
  output [0:0]C0_DDR4_0_0_odt;
  output C0_DDR4_0_0_reset_n;
  input C0_SYS_CLK_0_0_clk_n;
  input C0_SYS_CLK_0_0_clk_p;
  output C1_DDR4_0_0_act_n;
  output [16:0]C1_DDR4_0_0_adr;
  output [1:0]C1_DDR4_0_0_ba;
  output [1:0]C1_DDR4_0_0_bg;
  output [0:0]C1_DDR4_0_0_ck_c;
  output [0:0]C1_DDR4_0_0_ck_t;
  output [0:0]C1_DDR4_0_0_cke;
  output [1:0]C1_DDR4_0_0_cs_n;
  inout [3:0]C1_DDR4_0_0_dm_n;
  inout [31:0]C1_DDR4_0_0_dq;
  inout [3:0]C1_DDR4_0_0_dqs_c;
  inout [3:0]C1_DDR4_0_0_dqs_t;
  output [0:0]C1_DDR4_0_0_odt;
  output C1_DDR4_0_0_reset_n;
  input C1_SYS_CLK_0_0_clk_n;
  input C1_SYS_CLK_0_0_clk_p;
  output [1:0]GPIO_0_tri_o;
  input adc2_clk_clk_n;
  input adc2_clk_clk_p;
  input dac0_clk_clk_n;
  input dac0_clk_clk_p;
  input dac0_hw_trigger;
  input dac0_hw_trigger_en;
  input dac1_hw_trigger;
  input dac1_hw_trigger_en;
  input dac2_hw_trigger;
  input dac2_hw_trigger_en;
  input dac3_hw_trigger;
  input dac3_hw_trigger_en;
  output m0_axis_aclk;
  output m1_axis_aclk;
  output m2_axis_aclk;
  output m3_axis_aclk;
  input pl_clk_adc;
  input pl_clk_dac;
  output s0_axis_aclk;
  output s1_axis_aclk;
  output s2_axis_aclk;
  output s3_axis_aclk;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input user_sysref_adc_0;
  input user_sysref_dac_0;
  input vin0_01_v_n;
  input vin0_01_v_p;
  input vin0_23_v_n;
  input vin0_23_v_p;
  input vin1_01_v_n;
  input vin1_01_v_p;
  input vin1_23_v_n;
  input vin1_23_v_p;
  input vin2_01_v_n;
  input vin2_01_v_p;
  input vin2_23_v_n;
  input vin2_23_v_p;
  input vin3_01_v_n;
  input vin3_01_v_p;
  input vin3_23_v_n;
  input vin3_23_v_p;
  output vout00_v_n;
  output vout00_v_p;
  output vout02_v_n;
  output vout02_v_p;
  output vout10_v_n;
  output vout10_v_p;
  output vout12_v_n;
  output vout12_v_p;
  output vout20_v_n;
  output vout20_v_p;
  output vout22_v_n;
  output vout22_v_p;
  output vout30_v_n;
  output vout30_v_p;
  output vout32_v_n;
  output vout32_v_p;

  wire C0_DDR4_0_0_act_n;
  wire [16:0]C0_DDR4_0_0_adr;
  wire [1:0]C0_DDR4_0_0_ba;
  wire [1:0]C0_DDR4_0_0_bg;
  wire [0:0]C0_DDR4_0_0_ck_c;
  wire [0:0]C0_DDR4_0_0_ck_t;
  wire [0:0]C0_DDR4_0_0_cke;
  wire [1:0]C0_DDR4_0_0_cs_n;
  wire [3:0]C0_DDR4_0_0_dm_n;
  wire [31:0]C0_DDR4_0_0_dq;
  wire [3:0]C0_DDR4_0_0_dqs_c;
  wire [3:0]C0_DDR4_0_0_dqs_t;
  wire [0:0]C0_DDR4_0_0_odt;
  wire C0_DDR4_0_0_reset_n;
  wire C0_SYS_CLK_0_0_clk_n;
  wire C0_SYS_CLK_0_0_clk_p;
  wire C1_DDR4_0_0_act_n;
  wire [16:0]C1_DDR4_0_0_adr;
  wire [1:0]C1_DDR4_0_0_ba;
  wire [1:0]C1_DDR4_0_0_bg;
  wire [0:0]C1_DDR4_0_0_ck_c;
  wire [0:0]C1_DDR4_0_0_ck_t;
  wire [0:0]C1_DDR4_0_0_cke;
  wire [1:0]C1_DDR4_0_0_cs_n;
  wire [3:0]C1_DDR4_0_0_dm_n;
  wire [31:0]C1_DDR4_0_0_dq;
  wire [3:0]C1_DDR4_0_0_dqs_c;
  wire [3:0]C1_DDR4_0_0_dqs_t;
  wire [0:0]C1_DDR4_0_0_odt;
  wire C1_DDR4_0_0_reset_n;
  wire C1_SYS_CLK_0_0_clk_n;
  wire C1_SYS_CLK_0_0_clk_p;
  wire [1:0]GPIO_0_tri_o;
  wire adc2_clk_clk_n;
  wire adc2_clk_clk_p;
  wire dac0_clk_clk_n;
  wire dac0_clk_clk_p;
  wire dac0_hw_trigger;
  wire dac0_hw_trigger_en;
  wire dac1_hw_trigger;
  wire dac1_hw_trigger_en;
  wire dac2_hw_trigger;
  wire dac2_hw_trigger_en;
  wire dac3_hw_trigger;
  wire dac3_hw_trigger_en;
  wire m0_axis_aclk;
  wire m1_axis_aclk;
  wire m2_axis_aclk;
  wire m3_axis_aclk;
  wire pl_clk_adc;
  wire pl_clk_dac;
  wire s0_axis_aclk;
  wire s1_axis_aclk;
  wire s2_axis_aclk;
  wire s3_axis_aclk;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire user_sysref_adc_0;
  wire user_sysref_dac_0;
  wire vin0_01_v_n;
  wire vin0_01_v_p;
  wire vin0_23_v_n;
  wire vin0_23_v_p;
  wire vin1_01_v_n;
  wire vin1_01_v_p;
  wire vin1_23_v_n;
  wire vin1_23_v_p;
  wire vin2_01_v_n;
  wire vin2_01_v_p;
  wire vin2_23_v_n;
  wire vin2_23_v_p;
  wire vin3_01_v_n;
  wire vin3_01_v_p;
  wire vin3_23_v_n;
  wire vin3_23_v_p;
  wire vout00_v_n;
  wire vout00_v_p;
  wire vout02_v_n;
  wire vout02_v_p;
  wire vout10_v_n;
  wire vout10_v_p;
  wire vout12_v_n;
  wire vout12_v_p;
  wire vout20_v_n;
  wire vout20_v_p;
  wire vout22_v_n;
  wire vout22_v_p;
  wire vout30_v_n;
  wire vout30_v_p;
  wire vout32_v_n;
  wire vout32_v_p;

  rfdc_ex rfdc_ex_i
       (.C0_DDR4_0_0_act_n(C0_DDR4_0_0_act_n),
        .C0_DDR4_0_0_adr(C0_DDR4_0_0_adr),
        .C0_DDR4_0_0_ba(C0_DDR4_0_0_ba),
        .C0_DDR4_0_0_bg(C0_DDR4_0_0_bg),
        .C0_DDR4_0_0_ck_c(C0_DDR4_0_0_ck_c),
        .C0_DDR4_0_0_ck_t(C0_DDR4_0_0_ck_t),
        .C0_DDR4_0_0_cke(C0_DDR4_0_0_cke),
        .C0_DDR4_0_0_cs_n(C0_DDR4_0_0_cs_n),
        .C0_DDR4_0_0_dm_n(C0_DDR4_0_0_dm_n),
        .C0_DDR4_0_0_dq(C0_DDR4_0_0_dq),
        .C0_DDR4_0_0_dqs_c(C0_DDR4_0_0_dqs_c),
        .C0_DDR4_0_0_dqs_t(C0_DDR4_0_0_dqs_t),
        .C0_DDR4_0_0_odt(C0_DDR4_0_0_odt),
        .C0_DDR4_0_0_reset_n(C0_DDR4_0_0_reset_n),
        .C0_SYS_CLK_0_0_clk_n(C0_SYS_CLK_0_0_clk_n),
        .C0_SYS_CLK_0_0_clk_p(C0_SYS_CLK_0_0_clk_p),
        .C1_DDR4_0_0_act_n(C1_DDR4_0_0_act_n),
        .C1_DDR4_0_0_adr(C1_DDR4_0_0_adr),
        .C1_DDR4_0_0_ba(C1_DDR4_0_0_ba),
        .C1_DDR4_0_0_bg(C1_DDR4_0_0_bg),
        .C1_DDR4_0_0_ck_c(C1_DDR4_0_0_ck_c),
        .C1_DDR4_0_0_ck_t(C1_DDR4_0_0_ck_t),
        .C1_DDR4_0_0_cke(C1_DDR4_0_0_cke),
        .C1_DDR4_0_0_cs_n(C1_DDR4_0_0_cs_n),
        .C1_DDR4_0_0_dm_n(C1_DDR4_0_0_dm_n),
        .C1_DDR4_0_0_dq(C1_DDR4_0_0_dq),
        .C1_DDR4_0_0_dqs_c(C1_DDR4_0_0_dqs_c),
        .C1_DDR4_0_0_dqs_t(C1_DDR4_0_0_dqs_t),
        .C1_DDR4_0_0_odt(C1_DDR4_0_0_odt),
        .C1_DDR4_0_0_reset_n(C1_DDR4_0_0_reset_n),
        .C1_SYS_CLK_0_0_clk_n(C1_SYS_CLK_0_0_clk_n),
        .C1_SYS_CLK_0_0_clk_p(C1_SYS_CLK_0_0_clk_p),
        .GPIO_0_tri_o(GPIO_0_tri_o),
        .adc2_clk_clk_n(adc2_clk_clk_n),
        .adc2_clk_clk_p(adc2_clk_clk_p),
        .dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .dac0_hw_trigger(dac0_hw_trigger),
        .dac0_hw_trigger_en(dac0_hw_trigger_en),
        .dac1_hw_trigger(dac1_hw_trigger),
        .dac1_hw_trigger_en(dac1_hw_trigger_en),
        .dac2_hw_trigger(dac2_hw_trigger),
        .dac2_hw_trigger_en(dac2_hw_trigger_en),
        .dac3_hw_trigger(dac3_hw_trigger),
        .dac3_hw_trigger_en(dac3_hw_trigger_en),
        .m0_axis_aclk(m0_axis_aclk),
        .m1_axis_aclk(m1_axis_aclk),
        .m2_axis_aclk(m2_axis_aclk),
        .m3_axis_aclk(m3_axis_aclk),
        .pl_clk_adc(pl_clk_adc),
        .pl_clk_dac(pl_clk_dac),
        .s0_axis_aclk(s0_axis_aclk),
        .s1_axis_aclk(s1_axis_aclk),
        .s2_axis_aclk(s2_axis_aclk),
        .s3_axis_aclk(s3_axis_aclk),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .user_sysref_adc_0(user_sysref_adc_0),
        .user_sysref_dac_0(user_sysref_dac_0),
        .vin0_01_v_n(vin0_01_v_n),
        .vin0_01_v_p(vin0_01_v_p),
        .vin0_23_v_n(vin0_23_v_n),
        .vin0_23_v_p(vin0_23_v_p),
        .vin1_01_v_n(vin1_01_v_n),
        .vin1_01_v_p(vin1_01_v_p),
        .vin1_23_v_n(vin1_23_v_n),
        .vin1_23_v_p(vin1_23_v_p),
        .vin2_01_v_n(vin2_01_v_n),
        .vin2_01_v_p(vin2_01_v_p),
        .vin2_23_v_n(vin2_23_v_n),
        .vin2_23_v_p(vin2_23_v_p),
        .vin3_01_v_n(vin3_01_v_n),
        .vin3_01_v_p(vin3_01_v_p),
        .vin3_23_v_n(vin3_23_v_n),
        .vin3_23_v_p(vin3_23_v_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p),
        .vout02_v_n(vout02_v_n),
        .vout02_v_p(vout02_v_p),
        .vout10_v_n(vout10_v_n),
        .vout10_v_p(vout10_v_p),
        .vout12_v_n(vout12_v_n),
        .vout12_v_p(vout12_v_p),
        .vout20_v_n(vout20_v_n),
        .vout20_v_p(vout20_v_p),
        .vout22_v_n(vout22_v_n),
        .vout22_v_p(vout22_v_p),
        .vout30_v_n(vout30_v_n),
        .vout30_v_p(vout30_v_p),
        .vout32_v_n(vout32_v_n),
        .vout32_v_p(vout32_v_p));
endmodule
