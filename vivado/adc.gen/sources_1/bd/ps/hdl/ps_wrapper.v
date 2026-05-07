//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Thu May  7 21:11:12 2026
//Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target ps_wrapper.bd
//Design      : ps_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_wrapper
   (GPIO_0_tri_o,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    ddr4_sdram_c0_act_n,
    ddr4_sdram_c0_adr,
    ddr4_sdram_c0_ba,
    ddr4_sdram_c0_bg,
    ddr4_sdram_c0_ck_c,
    ddr4_sdram_c0_ck_t,
    ddr4_sdram_c0_cke,
    ddr4_sdram_c0_cs_n,
    ddr4_sdram_c0_dm_n,
    ddr4_sdram_c0_dq,
    ddr4_sdram_c0_dqs_c,
    ddr4_sdram_c0_dqs_t,
    ddr4_sdram_c0_odt,
    ddr4_sdram_c0_reset_n,
    default_sysclk_c0_300mhz_clk_n,
    default_sysclk_c0_300mhz_clk_p,
    led_8bits_tri_o,
    pl_clk_n,
    pl_clk_p,
    pl_sysref_n,
    pl_sysref_p,
    reset,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vin0_01_v_n,
    vin0_01_v_p,
    vin0_23_v_n,
    vin0_23_v_p,
    vin1_01_v_n,
    vin1_01_v_p,
    vin2_01_v_n,
    vin2_01_v_p,
    vin2_23_v_n,
    vin2_23_v_p,
    vin3_01_v_n,
    vin3_01_v_p);
  output [1:0]GPIO_0_tri_o;
  input adc1_clk_clk_n;
  input adc1_clk_clk_p;
  output ddr4_sdram_c0_act_n;
  output [16:0]ddr4_sdram_c0_adr;
  output [1:0]ddr4_sdram_c0_ba;
  output [1:0]ddr4_sdram_c0_bg;
  output ddr4_sdram_c0_ck_c;
  output ddr4_sdram_c0_ck_t;
  output ddr4_sdram_c0_cke;
  output [1:0]ddr4_sdram_c0_cs_n;
  inout [3:0]ddr4_sdram_c0_dm_n;
  inout [31:0]ddr4_sdram_c0_dq;
  inout [3:0]ddr4_sdram_c0_dqs_c;
  inout [3:0]ddr4_sdram_c0_dqs_t;
  output ddr4_sdram_c0_odt;
  output ddr4_sdram_c0_reset_n;
  input default_sysclk_c0_300mhz_clk_n;
  input default_sysclk_c0_300mhz_clk_p;
  output [7:0]led_8bits_tri_o;
  input pl_clk_n;
  input pl_clk_p;
  input pl_sysref_n;
  input pl_sysref_p;
  input reset;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input vin0_01_v_n;
  input vin0_01_v_p;
  input vin0_23_v_n;
  input vin0_23_v_p;
  input vin1_01_v_n;
  input vin1_01_v_p;
  input vin2_01_v_n;
  input vin2_01_v_p;
  input vin2_23_v_n;
  input vin2_23_v_p;
  input vin3_01_v_n;
  input vin3_01_v_p;

  wire [1:0]GPIO_0_tri_o;
  wire adc1_clk_clk_n;
  wire adc1_clk_clk_p;
  wire ddr4_sdram_c0_act_n;
  wire [16:0]ddr4_sdram_c0_adr;
  wire [1:0]ddr4_sdram_c0_ba;
  wire [1:0]ddr4_sdram_c0_bg;
  wire ddr4_sdram_c0_ck_c;
  wire ddr4_sdram_c0_ck_t;
  wire ddr4_sdram_c0_cke;
  wire [1:0]ddr4_sdram_c0_cs_n;
  wire [3:0]ddr4_sdram_c0_dm_n;
  wire [31:0]ddr4_sdram_c0_dq;
  wire [3:0]ddr4_sdram_c0_dqs_c;
  wire [3:0]ddr4_sdram_c0_dqs_t;
  wire ddr4_sdram_c0_odt;
  wire ddr4_sdram_c0_reset_n;
  wire default_sysclk_c0_300mhz_clk_n;
  wire default_sysclk_c0_300mhz_clk_p;
  wire [7:0]led_8bits_tri_o;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_sysref_n;
  wire pl_sysref_p;
  wire reset;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire vin0_01_v_n;
  wire vin0_01_v_p;
  wire vin0_23_v_n;
  wire vin0_23_v_p;
  wire vin1_01_v_n;
  wire vin1_01_v_p;
  wire vin2_01_v_n;
  wire vin2_01_v_p;
  wire vin2_23_v_n;
  wire vin2_23_v_p;
  wire vin3_01_v_n;
  wire vin3_01_v_p;

  ps ps_i
       (.GPIO_0_tri_o(GPIO_0_tri_o),
        .adc1_clk_clk_n(adc1_clk_clk_n),
        .adc1_clk_clk_p(adc1_clk_clk_p),
        .ddr4_sdram_c0_act_n(ddr4_sdram_c0_act_n),
        .ddr4_sdram_c0_adr(ddr4_sdram_c0_adr),
        .ddr4_sdram_c0_ba(ddr4_sdram_c0_ba),
        .ddr4_sdram_c0_bg(ddr4_sdram_c0_bg),
        .ddr4_sdram_c0_ck_c(ddr4_sdram_c0_ck_c),
        .ddr4_sdram_c0_ck_t(ddr4_sdram_c0_ck_t),
        .ddr4_sdram_c0_cke(ddr4_sdram_c0_cke),
        .ddr4_sdram_c0_cs_n(ddr4_sdram_c0_cs_n),
        .ddr4_sdram_c0_dm_n(ddr4_sdram_c0_dm_n),
        .ddr4_sdram_c0_dq(ddr4_sdram_c0_dq),
        .ddr4_sdram_c0_dqs_c(ddr4_sdram_c0_dqs_c),
        .ddr4_sdram_c0_dqs_t(ddr4_sdram_c0_dqs_t),
        .ddr4_sdram_c0_odt(ddr4_sdram_c0_odt),
        .ddr4_sdram_c0_reset_n(ddr4_sdram_c0_reset_n),
        .default_sysclk_c0_300mhz_clk_n(default_sysclk_c0_300mhz_clk_n),
        .default_sysclk_c0_300mhz_clk_p(default_sysclk_c0_300mhz_clk_p),
        .led_8bits_tri_o(led_8bits_tri_o),
        .pl_clk_n(pl_clk_n),
        .pl_clk_p(pl_clk_p),
        .pl_sysref_n(pl_sysref_n),
        .pl_sysref_p(pl_sysref_p),
        .reset(reset),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vin0_01_v_n(vin0_01_v_n),
        .vin0_01_v_p(vin0_01_v_p),
        .vin0_23_v_n(vin0_23_v_n),
        .vin0_23_v_p(vin0_23_v_p),
        .vin1_01_v_n(vin1_01_v_n),
        .vin1_01_v_p(vin1_01_v_p),
        .vin2_01_v_n(vin2_01_v_n),
        .vin2_01_v_p(vin2_01_v_p),
        .vin2_23_v_n(vin2_23_v_n),
        .vin2_23_v_p(vin2_23_v_p),
        .vin3_01_v_n(vin3_01_v_n),
        .vin3_01_v_p(vin3_01_v_p));
endmodule
