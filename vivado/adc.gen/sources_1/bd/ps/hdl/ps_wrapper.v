//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sat Sep 20 13:46:56 2025
//Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
//Command     : generate_target ps_wrapper.bd
//Design      : ps_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_wrapper
   (led_8bits_tri_o);
  output [7:0]led_8bits_tri_o;

  wire [7:0]led_8bits_tri_o;

  ps ps_i
       (.led_8bits_tri_o(led_8bits_tri_o));
endmodule
