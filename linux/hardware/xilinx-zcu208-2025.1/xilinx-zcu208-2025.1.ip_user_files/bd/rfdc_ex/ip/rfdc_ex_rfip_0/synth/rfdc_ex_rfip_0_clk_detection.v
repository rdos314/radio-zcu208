//----------------------------------------------------------------------------
// Title : Clock Detection Module
// Project : UltraScale+ RF Data Converter
//----------------------------------------------------------------------------
//
// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


`timescale 1ns / 1ps
`define DLY #1

//***********************************Entity Declaration************************
(* DowngradeIPIdentifiedWarnings="yes" *)
module rfdc_ex_rfip_0_clk_detection (
  input         tile224_clk_ok,
  input         tile224_dist_ok,
  input         tile225_clk_ok,
  input         tile225_dist_ok,
  input         tile226_clk_ok,
  input         tile226_dist_ok,
  input         tile227_clk_ok,
  input         tile227_dist_ok,
  input         tile228_clk_ok,
  input         tile228_dist_ok,
  input         tile229_clk_ok,
  input         tile229_dist_ok,
  input         tile230_clk_ok,
  input         tile230_dist_ok,
  input         tile231_clk_ok,
  input         tile231_dist_ok,
  input  [15:0] clk_detect,
  output        clk_ok
);

  wire clk224_ok_i;
  wire clk224_dist_i;
  wire clk225_ok_i;
  wire clk225_dist_i;
  wire clk226_ok_i;
  wire clk226_dist_i;
  wire clk227_ok_i;
  wire clk227_dist_i;
  wire clk228_ok_i;
  wire clk228_dist_i;
  wire clk229_ok_i;
  wire clk229_dist_i;
  wire clk230_ok_i;
  wire clk230_dist_i;
  wire clk231_ok_i;
  wire clk231_dist_i;

  assign clk224_ok_i   = tile224_clk_ok | !clk_detect[0];
  assign clk224_dist_i = tile224_dist_ok | !clk_detect[1];

  assign clk225_ok_i   = tile225_clk_ok | !clk_detect[2];
  assign clk225_dist_i = tile225_dist_ok | !clk_detect[3];

  assign clk226_ok_i   = tile226_clk_ok | !clk_detect[4];
  assign clk226_dist_i = tile226_dist_ok | !clk_detect[5];

  assign clk227_ok_i   = tile227_clk_ok | !clk_detect[6];
  assign clk227_dist_i = tile227_dist_ok | !clk_detect[7];

  assign clk228_ok_i   = tile228_clk_ok | !clk_detect[8];
  assign clk228_dist_i = tile228_dist_ok | !clk_detect[9];

  assign clk229_ok_i   = tile229_clk_ok | !clk_detect[10];
  assign clk229_dist_i = tile229_dist_ok | !clk_detect[11];

  assign clk230_ok_i   = tile230_clk_ok | !clk_detect[12];
  assign clk230_dist_i = tile230_dist_ok | !clk_detect[13];

  assign clk231_ok_i   = tile231_clk_ok | !clk_detect[14];
  assign clk231_dist_i = tile231_dist_ok | !clk_detect[15];

  assign clk_ok = clk224_ok_i & clk224_dist_i & clk225_ok_i & clk225_dist_i & clk226_ok_i & clk226_dist_i & clk227_ok_i & clk227_dist_i &
                  clk228_ok_i & clk228_dist_i & clk229_ok_i & clk229_dist_i & clk230_ok_i & clk230_dist_i & clk231_ok_i & clk231_dist_i;

endmodule
