//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Wed Nov 19 21:46:07 2025
//Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
//Command     : generate_target ps_wrapper.bd
//Design      : ps_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_wrapper
   (GPIO_0_tri_o,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    led_8bits_tri_o,
    pl_clk_n,
    pl_clk_p,
    pl_sysref_n,
    pl_sysref_p,
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
  output [7:0]led_8bits_tri_o;
  input pl_clk_n;
  input pl_clk_p;
  input pl_sysref_n;
  input pl_sysref_p;
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
  wire [7:0]led_8bits_tri_o;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_sysref_n;
  wire pl_sysref_p;
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
        .led_8bits_tri_o(led_8bits_tri_o),
        .pl_clk_n(pl_clk_n),
        .pl_clk_p(pl_clk_p),
        .pl_sysref_n(pl_sysref_n),
        .pl_sysref_p(pl_sysref_p),
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
