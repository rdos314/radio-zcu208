`timescale 1ps / 1ps
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


module demo_tb_clk_gen #(
  
  parameter clkdac_0_fab_delay   = 100  , // Clock startup delay
  parameter clkdac_0_ref_delay   = 100  , // Clock startup delay
  parameter clkdac_1_fab_delay   = 100  , // Clock startup delay
  parameter clkdac_1_ref_delay   = 100  , // Clock startup delay
  parameter clkdac_2_fab_delay   = 100  , // Clock startup delay
  parameter clkdac_2_ref_delay   = 100  , // Clock startup delay
  parameter clkdac_3_fab_delay   = 100  , // Clock startup delay
  parameter clkdac_3_ref_delay   = 100  , // Clock startup delay
  parameter clkadc_0_fab_delay   = 100  , // Clock startup delay
  parameter clkadc_0_ref_delay   = 100  , // Clock startup delay
  parameter clkadc_1_fab_delay   = 100  , // Clock startup delay
  parameter clkadc_1_ref_delay   = 100  , // Clock startup delay
  parameter clkadc_2_fab_delay   = 100  , // Clock startup delay
  parameter clkadc_2_ref_delay   = 100  , // Clock startup delay
  parameter clkadc_3_fab_delay   = 100  , // Clock startup delay
  parameter clkadc_3_ref_delay   = 100  , // Clock startup delay
  parameter axi_reset_cycles     = 100 , // 
  parameter axi_clk_delay        = 100  // Clock startup delay

) (

    input  wire [31:0] axi_clk_phase, // Clock phase
    input  wire [31:0] pl_clk_phase,  // PL Clock phase for MTS

    input  wire [63:0] clkdac_0_fab_freq , // 
    input  wire [63:0] clkdac_0_ref_freq , //
    input  wire        clkdac_0_enable    , // 
    input  wire [63:0] clkdac_1_fab_freq , // 
    input  wire [63:0] clkdac_1_ref_freq , //
    input  wire        clkdac_1_enable    , // 
    input  wire [63:0] clkdac_2_fab_freq , // 
    input  wire [63:0] clkdac_2_ref_freq , //
    input  wire        clkdac_2_enable    , // 
    input  wire [63:0] clkdac_3_fab_freq , // 
    input  wire [63:0] clkdac_3_ref_freq , //
    input  wire        clkdac_3_enable    , // 
    input  wire [63:0] clkadc_0_fab_phase , // 
    input  wire [31:0] clkadc_0_ref_phase , //
    input  wire        clkadc_0_enable    , // 
    input  wire [63:0] clkadc_1_fab_phase , // 
    input  wire [31:0] clkadc_1_ref_phase , //
    input  wire        clkadc_1_enable    , // 
    input  wire [63:0] clkadc_2_fab_phase , // 
    input  wire [31:0] clkadc_2_ref_phase , //
    input  wire        clkadc_2_enable    , // 
    input  wire [63:0] clkadc_3_fab_phase , // 
    input  wire [31:0] clkadc_3_ref_phase , //
    input  wire        clkadc_3_enable    , // 

    output reg         clkdac_0_fab       , // 
    output reg         clkdac_0_ref       , // 
    output reg         clkdac_1_fab       , // 
    output reg         clkdac_1_ref       , // 
    output reg         clkdac_2_fab       , // 
    output reg         clkdac_2_ref       , // 
    output reg         clkdac_3_fab       , // 
    output reg         clkdac_3_ref       , // 
    output reg         clkadc_0_fab       , // 
    output reg         clkadc_0_ref       , // 
    output reg         clkadc_1_fab       , // 
    output reg         clkadc_1_ref       , // 
    output reg         clkadc_2_fab       , // 
    output reg         clkadc_2_ref       , // 
    output reg         clkadc_3_fab       , // 
    output reg         clkadc_3_ref       , // 
    output reg         axi_resetn=0       , // 
    output reg         axi_reset=1        , //
    output reg         pl_clk_p           , //
    output reg         clk_axi              // 

);

integer reset_counter = axi_reset_cycles;

//////////////////////////////////////////////////////////////////////////////////
// AXI Clock generator. 
// Generate a POS and Negedge reset for use if required
//////////////////////////////////////////////////////////////////////////////////
initial
  begin
     clk_axi <= 1'b0;
     #(axi_clk_delay);
     forever
     begin
        clk_axi <= 1'b0;
        #(axi_clk_phase[31:16]);
        clk_axi <= 1'b1;
        #(axi_clk_phase[15:0]);
     end
  end

always @(posedge clk_axi) begin
   if (reset_counter != 0)
      reset_counter <= reset_counter - 1;
end

always @(posedge clk_axi) begin
   if (reset_counter == 0) begin
      axi_resetn <= 1;
      axi_reset  <= 0;
   end
end

//////////////////////////////////////////////////////////////////////////////////
// PL Clock generator for MTS. 
//////////////////////////////////////////////////////////////////////////////////
initial
  begin
     pl_clk_p <= 1'b0;
     forever
     begin
        pl_clk_p <= 1'b0;
        #(pl_clk_phase[31:16]);
        pl_clk_p <= 1'b1;
        #(pl_clk_phase[15:0]);
     end
  end

//////////////////////////////////////////////////////////////////////////////////
// Slice dac_0
//////////////////////////////////////////////////////////////////////////////////
real     fab_period_ps_dac_0;
real     fab_mhz_dac_0;
integer  fab_int_dac_0;
real     fab_frac_dac_0;
integer  fab_frac_inc_dac_0 = 0;
real     fab_frac_count_dac_0 = 0.0;

always @(*) begin
  fab_mhz_dac_0 = clkdac_0_fab_freq / 1000.0;
  if (clkdac_0_fab_freq != 64'd0) begin
    fab_period_ps_dac_0 = 1000000.0 / fab_mhz_dac_0;
    fab_int_dac_0 = fab_period_ps_dac_0 / 2;
    fab_frac_dac_0 = (fab_period_ps_dac_0 / 2.0) - fab_int_dac_0;
  end
end

initial begin
  forever begin
    if (clkdac_0_enable == 1'b1) begin
      clkdac_0_fab = 0;
      #(fab_int_dac_0 + fab_frac_inc_dac_0); 
      clkdac_0_fab = 1;
      #(fab_int_dac_0 + fab_frac_inc_dac_0);
    end
    else begin
      @(posedge clkdac_0_enable);
    end
  end
end

always @(clkdac_0_fab) begin
  if (fab_frac_dac_0 > 0.0) begin
    if (fab_frac_count_dac_0 + fab_frac_dac_0 > 1.0) begin
      fab_frac_count_dac_0 <= fab_frac_count_dac_0 + fab_frac_dac_0 - 1.0;
      fab_frac_inc_dac_0 <= 1;
    end
    else begin
      fab_frac_count_dac_0 <= fab_frac_count_dac_0 + fab_frac_dac_0;
      fab_frac_inc_dac_0 <= 0;
    end
  end
  else begin
    if (fab_frac_count_dac_0 + fab_frac_dac_0 < -1.0) begin
      fab_frac_count_dac_0 <= fab_frac_count_dac_0 + fab_frac_dac_0 + 1.0;
      fab_frac_inc_dac_0 <= -1;
    end
    else begin
      fab_frac_count_dac_0 <= fab_frac_count_dac_0 + fab_frac_dac_0;
      fab_frac_inc_dac_0 <= 0;
    end
  end
end

real     ref_period_ps_dac_0;
real     ref_mhz_dac_0;
integer  ref_int_dac_0;
real     ref_frac_dac_0;
integer  ref_frac_inc_dac_0 = 0;
real     ref_frac_count_dac_0 = 0.0;

always @(*) begin
  ref_mhz_dac_0 = clkdac_0_ref_freq / 1000.0;
  if (clkdac_0_ref_freq != 64'd0) begin
    ref_period_ps_dac_0 = 1000000.0 / ref_mhz_dac_0;
    ref_int_dac_0 = ref_period_ps_dac_0 / 2;
    ref_frac_dac_0 = (ref_period_ps_dac_0 / 2.0) - ref_int_dac_0;
  end
end

initial begin
  forever begin
    if (clkdac_0_enable == 1'b1) begin
      clkdac_0_ref = 0;
      #(ref_int_dac_0 + ref_frac_inc_dac_0); 
      clkdac_0_ref = 1;
      #(ref_int_dac_0 + ref_frac_inc_dac_0);
    end
    else begin
      @(posedge clkdac_0_enable);
    end
  end
end

always @(clkdac_0_ref) begin
  if (ref_frac_dac_0 > 0.0) begin
    if (ref_frac_count_dac_0 + ref_frac_dac_0 > 1.0) begin
      ref_frac_count_dac_0 <= ref_frac_count_dac_0 + ref_frac_dac_0 - 1.0;
      ref_frac_inc_dac_0 <= 1;
    end
    else begin
      ref_frac_count_dac_0 <= ref_frac_count_dac_0 + ref_frac_dac_0;
      ref_frac_inc_dac_0 <= 0;
    end
  end
  else begin
    if (ref_frac_count_dac_0 + ref_frac_dac_0 < -1.0) begin
      ref_frac_count_dac_0 <= ref_frac_count_dac_0 + ref_frac_dac_0 + 1.0;
      ref_frac_inc_dac_0 <= -1;
    end
    else begin
      ref_frac_count_dac_0 <= ref_frac_count_dac_0 + ref_frac_dac_0;
      ref_frac_inc_dac_0 <= 0;
    end
  end
end
//////////////////////////////////////////////////////////////////////////////////
// Slice dac_1
//////////////////////////////////////////////////////////////////////////////////
real     fab_period_ps_dac_1;
real     fab_mhz_dac_1;
integer  fab_int_dac_1;
real     fab_frac_dac_1;
integer  fab_frac_inc_dac_1 = 0;
real     fab_frac_count_dac_1 = 0.0;

always @(*) begin
  fab_mhz_dac_1 = clkdac_1_fab_freq / 1000.0;
  if (clkdac_1_fab_freq != 64'd0) begin
    fab_period_ps_dac_1 = 1000000.0 / fab_mhz_dac_1;
    fab_int_dac_1 = fab_period_ps_dac_1 / 2;
    fab_frac_dac_1 = (fab_period_ps_dac_1 / 2.0) - fab_int_dac_1;
  end
end

initial begin
  forever begin
    if (clkdac_1_enable == 1'b1) begin
      clkdac_1_fab = 0;
      #(fab_int_dac_1 + fab_frac_inc_dac_1); 
      clkdac_1_fab = 1;
      #(fab_int_dac_1 + fab_frac_inc_dac_1);
    end
    else begin
      @(posedge clkdac_1_enable);
    end
  end
end

always @(clkdac_1_fab) begin
  if (fab_frac_dac_1 > 0.0) begin
    if (fab_frac_count_dac_1 + fab_frac_dac_1 > 1.0) begin
      fab_frac_count_dac_1 <= fab_frac_count_dac_1 + fab_frac_dac_1 - 1.0;
      fab_frac_inc_dac_1 <= 1;
    end
    else begin
      fab_frac_count_dac_1 <= fab_frac_count_dac_1 + fab_frac_dac_1;
      fab_frac_inc_dac_1 <= 0;
    end
  end
  else begin
    if (fab_frac_count_dac_1 + fab_frac_dac_1 < -1.0) begin
      fab_frac_count_dac_1 <= fab_frac_count_dac_1 + fab_frac_dac_1 + 1.0;
      fab_frac_inc_dac_1 <= -1;
    end
    else begin
      fab_frac_count_dac_1 <= fab_frac_count_dac_1 + fab_frac_dac_1;
      fab_frac_inc_dac_1 <= 0;
    end
  end
end

real     ref_period_ps_dac_1;
real     ref_mhz_dac_1;
integer  ref_int_dac_1;
real     ref_frac_dac_1;
integer  ref_frac_inc_dac_1 = 0;
real     ref_frac_count_dac_1 = 0.0;

always @(*) begin
  ref_mhz_dac_1 = clkdac_1_ref_freq / 1000.0;
  if (clkdac_1_ref_freq != 64'd0) begin
    ref_period_ps_dac_1 = 1000000.0 / ref_mhz_dac_1;
    ref_int_dac_1 = ref_period_ps_dac_1 / 2;
    ref_frac_dac_1 = (ref_period_ps_dac_1 / 2.0) - ref_int_dac_1;
  end
end

initial begin
  forever begin
    if (clkdac_1_enable == 1'b1) begin
      clkdac_1_ref = 0;
      #(ref_int_dac_1 + ref_frac_inc_dac_1); 
      clkdac_1_ref = 1;
      #(ref_int_dac_1 + ref_frac_inc_dac_1);
    end
    else begin
      @(posedge clkdac_1_enable);
    end
  end
end

always @(clkdac_1_ref) begin
  if (ref_frac_dac_1 > 0.0) begin
    if (ref_frac_count_dac_1 + ref_frac_dac_1 > 1.0) begin
      ref_frac_count_dac_1 <= ref_frac_count_dac_1 + ref_frac_dac_1 - 1.0;
      ref_frac_inc_dac_1 <= 1;
    end
    else begin
      ref_frac_count_dac_1 <= ref_frac_count_dac_1 + ref_frac_dac_1;
      ref_frac_inc_dac_1 <= 0;
    end
  end
  else begin
    if (ref_frac_count_dac_1 + ref_frac_dac_1 < -1.0) begin
      ref_frac_count_dac_1 <= ref_frac_count_dac_1 + ref_frac_dac_1 + 1.0;
      ref_frac_inc_dac_1 <= -1;
    end
    else begin
      ref_frac_count_dac_1 <= ref_frac_count_dac_1 + ref_frac_dac_1;
      ref_frac_inc_dac_1 <= 0;
    end
  end
end
//////////////////////////////////////////////////////////////////////////////////
// Slice dac_2
//////////////////////////////////////////////////////////////////////////////////
real     fab_period_ps_dac_2;
real     fab_mhz_dac_2;
integer  fab_int_dac_2;
real     fab_frac_dac_2;
integer  fab_frac_inc_dac_2 = 0;
real     fab_frac_count_dac_2 = 0.0;

always @(*) begin
  fab_mhz_dac_2 = clkdac_2_fab_freq / 1000.0;
  if (clkdac_2_fab_freq != 64'd0) begin
    fab_period_ps_dac_2 = 1000000.0 / fab_mhz_dac_2;
    fab_int_dac_2 = fab_period_ps_dac_2 / 2;
    fab_frac_dac_2 = (fab_period_ps_dac_2 / 2.0) - fab_int_dac_2;
  end
end

initial begin
  forever begin
    if (clkdac_2_enable == 1'b1) begin
      clkdac_2_fab = 0;
      #(fab_int_dac_2 + fab_frac_inc_dac_2); 
      clkdac_2_fab = 1;
      #(fab_int_dac_2 + fab_frac_inc_dac_2);
    end
    else begin
      @(posedge clkdac_2_enable);
    end
  end
end

always @(clkdac_2_fab) begin
  if (fab_frac_dac_2 > 0.0) begin
    if (fab_frac_count_dac_2 + fab_frac_dac_2 > 1.0) begin
      fab_frac_count_dac_2 <= fab_frac_count_dac_2 + fab_frac_dac_2 - 1.0;
      fab_frac_inc_dac_2 <= 1;
    end
    else begin
      fab_frac_count_dac_2 <= fab_frac_count_dac_2 + fab_frac_dac_2;
      fab_frac_inc_dac_2 <= 0;
    end
  end
  else begin
    if (fab_frac_count_dac_2 + fab_frac_dac_2 < -1.0) begin
      fab_frac_count_dac_2 <= fab_frac_count_dac_2 + fab_frac_dac_2 + 1.0;
      fab_frac_inc_dac_2 <= -1;
    end
    else begin
      fab_frac_count_dac_2 <= fab_frac_count_dac_2 + fab_frac_dac_2;
      fab_frac_inc_dac_2 <= 0;
    end
  end
end

real     ref_period_ps_dac_2;
real     ref_mhz_dac_2;
integer  ref_int_dac_2;
real     ref_frac_dac_2;
integer  ref_frac_inc_dac_2 = 0;
real     ref_frac_count_dac_2 = 0.0;

always @(*) begin
  ref_mhz_dac_2 = clkdac_2_ref_freq / 1000.0;
  if (clkdac_2_ref_freq != 64'd0) begin
    ref_period_ps_dac_2 = 1000000.0 / ref_mhz_dac_2;
    ref_int_dac_2 = ref_period_ps_dac_2 / 2;
    ref_frac_dac_2 = (ref_period_ps_dac_2 / 2.0) - ref_int_dac_2;
  end
end

initial begin
  forever begin
    if (clkdac_2_enable == 1'b1) begin
      clkdac_2_ref = 0;
      #(ref_int_dac_2 + ref_frac_inc_dac_2); 
      clkdac_2_ref = 1;
      #(ref_int_dac_2 + ref_frac_inc_dac_2);
    end
    else begin
      @(posedge clkdac_2_enable);
    end
  end
end

always @(clkdac_2_ref) begin
  if (ref_frac_dac_2 > 0.0) begin
    if (ref_frac_count_dac_2 + ref_frac_dac_2 > 1.0) begin
      ref_frac_count_dac_2 <= ref_frac_count_dac_2 + ref_frac_dac_2 - 1.0;
      ref_frac_inc_dac_2 <= 1;
    end
    else begin
      ref_frac_count_dac_2 <= ref_frac_count_dac_2 + ref_frac_dac_2;
      ref_frac_inc_dac_2 <= 0;
    end
  end
  else begin
    if (ref_frac_count_dac_2 + ref_frac_dac_2 < -1.0) begin
      ref_frac_count_dac_2 <= ref_frac_count_dac_2 + ref_frac_dac_2 + 1.0;
      ref_frac_inc_dac_2 <= -1;
    end
    else begin
      ref_frac_count_dac_2 <= ref_frac_count_dac_2 + ref_frac_dac_2;
      ref_frac_inc_dac_2 <= 0;
    end
  end
end
//////////////////////////////////////////////////////////////////////////////////
// Slice dac_3
//////////////////////////////////////////////////////////////////////////////////
real     fab_period_ps_dac_3;
real     fab_mhz_dac_3;
integer  fab_int_dac_3;
real     fab_frac_dac_3;
integer  fab_frac_inc_dac_3 = 0;
real     fab_frac_count_dac_3 = 0.0;

always @(*) begin
  fab_mhz_dac_3 = clkdac_3_fab_freq / 1000.0;
  if (clkdac_3_fab_freq != 64'd0) begin
    fab_period_ps_dac_3 = 1000000.0 / fab_mhz_dac_3;
    fab_int_dac_3 = fab_period_ps_dac_3 / 2;
    fab_frac_dac_3 = (fab_period_ps_dac_3 / 2.0) - fab_int_dac_3;
  end
end

initial begin
  forever begin
    if (clkdac_3_enable == 1'b1) begin
      clkdac_3_fab = 0;
      #(fab_int_dac_3 + fab_frac_inc_dac_3); 
      clkdac_3_fab = 1;
      #(fab_int_dac_3 + fab_frac_inc_dac_3);
    end
    else begin
      @(posedge clkdac_3_enable);
    end
  end
end

always @(clkdac_3_fab) begin
  if (fab_frac_dac_3 > 0.0) begin
    if (fab_frac_count_dac_3 + fab_frac_dac_3 > 1.0) begin
      fab_frac_count_dac_3 <= fab_frac_count_dac_3 + fab_frac_dac_3 - 1.0;
      fab_frac_inc_dac_3 <= 1;
    end
    else begin
      fab_frac_count_dac_3 <= fab_frac_count_dac_3 + fab_frac_dac_3;
      fab_frac_inc_dac_3 <= 0;
    end
  end
  else begin
    if (fab_frac_count_dac_3 + fab_frac_dac_3 < -1.0) begin
      fab_frac_count_dac_3 <= fab_frac_count_dac_3 + fab_frac_dac_3 + 1.0;
      fab_frac_inc_dac_3 <= -1;
    end
    else begin
      fab_frac_count_dac_3 <= fab_frac_count_dac_3 + fab_frac_dac_3;
      fab_frac_inc_dac_3 <= 0;
    end
  end
end

real     ref_period_ps_dac_3;
real     ref_mhz_dac_3;
integer  ref_int_dac_3;
real     ref_frac_dac_3;
integer  ref_frac_inc_dac_3 = 0;
real     ref_frac_count_dac_3 = 0.0;

always @(*) begin
  ref_mhz_dac_3 = clkdac_3_ref_freq / 1000.0;
  if (clkdac_3_ref_freq != 64'd0) begin
    ref_period_ps_dac_3 = 1000000.0 / ref_mhz_dac_3;
    ref_int_dac_3 = ref_period_ps_dac_3 / 2;
    ref_frac_dac_3 = (ref_period_ps_dac_3 / 2.0) - ref_int_dac_3;
  end
end

initial begin
  forever begin
    if (clkdac_3_enable == 1'b1) begin
      clkdac_3_ref = 0;
      #(ref_int_dac_3 + ref_frac_inc_dac_3); 
      clkdac_3_ref = 1;
      #(ref_int_dac_3 + ref_frac_inc_dac_3);
    end
    else begin
      @(posedge clkdac_3_enable);
    end
  end
end

always @(clkdac_3_ref) begin
  if (ref_frac_dac_3 > 0.0) begin
    if (ref_frac_count_dac_3 + ref_frac_dac_3 > 1.0) begin
      ref_frac_count_dac_3 <= ref_frac_count_dac_3 + ref_frac_dac_3 - 1.0;
      ref_frac_inc_dac_3 <= 1;
    end
    else begin
      ref_frac_count_dac_3 <= ref_frac_count_dac_3 + ref_frac_dac_3;
      ref_frac_inc_dac_3 <= 0;
    end
  end
  else begin
    if (ref_frac_count_dac_3 + ref_frac_dac_3 < -1.0) begin
      ref_frac_count_dac_3 <= ref_frac_count_dac_3 + ref_frac_dac_3 + 1.0;
      ref_frac_inc_dac_3 <= -1;
    end
    else begin
      ref_frac_count_dac_3 <= ref_frac_count_dac_3 + ref_frac_dac_3;
      ref_frac_inc_dac_3 <= 0;
    end
  end
end
//////////////////////////////////////////////////////////////////////////////////
// Slice adc_0
//////////////////////////////////////////////////////////////////////////////////
initial
  begin
     clkadc_0_fab <= 1'b0;
     #(clkadc_0_fab_delay);
     forever
     begin
     clkadc_0_fab <= 1'b0;
     #(clkadc_0_fab_phase[63:32]);
     clkadc_0_fab <= clkadc_0_enable;
     #(clkadc_0_fab_phase[31:0]);
     end
  end
initial
  begin
     clkadc_0_ref <= 1'b0;
     #(clkadc_0_ref_delay);
     forever
     begin
     clkadc_0_ref <= 1'b0;
     #(clkadc_0_ref_phase[31:16]);
     clkadc_0_ref <= clkadc_0_enable;
     #(clkadc_0_ref_phase[15:0]);
     end
  end
//////////////////////////////////////////////////////////////////////////////////
// Slice adc_1
//////////////////////////////////////////////////////////////////////////////////
initial
  begin
     clkadc_1_fab <= 1'b0;
     #(clkadc_1_fab_delay);
     forever
     begin
     clkadc_1_fab <= 1'b0;
     #(clkadc_1_fab_phase[63:32]);
     clkadc_1_fab <= clkadc_1_enable;
     #(clkadc_1_fab_phase[31:0]);
     end
  end
initial
  begin
     clkadc_1_ref <= 1'b0;
     #(clkadc_1_ref_delay);
     forever
     begin
     clkadc_1_ref <= 1'b0;
     #(clkadc_1_ref_phase[31:16]);
     clkadc_1_ref <= clkadc_1_enable;
     #(clkadc_1_ref_phase[15:0]);
     end
  end
//////////////////////////////////////////////////////////////////////////////////
// Slice adc_2
//////////////////////////////////////////////////////////////////////////////////
initial
  begin
     clkadc_2_fab <= 1'b0;
     #(clkadc_2_fab_delay);
     forever
     begin
     clkadc_2_fab <= 1'b0;
     #(clkadc_2_fab_phase[63:32]);
     clkadc_2_fab <= clkadc_2_enable;
     #(clkadc_2_fab_phase[31:0]);
     end
  end
initial
  begin
     clkadc_2_ref <= 1'b0;
     #(clkadc_2_ref_delay);
     forever
     begin
     clkadc_2_ref <= 1'b0;
     #(clkadc_2_ref_phase[31:16]);
     clkadc_2_ref <= clkadc_2_enable;
     #(clkadc_2_ref_phase[15:0]);
     end
  end
//////////////////////////////////////////////////////////////////////////////////
// Slice adc_3
//////////////////////////////////////////////////////////////////////////////////
initial
  begin
     clkadc_3_fab <= 1'b0;
     #(clkadc_3_fab_delay);
     forever
     begin
     clkadc_3_fab <= 1'b0;
     #(clkadc_3_fab_phase[63:32]);
     clkadc_3_fab <= clkadc_3_enable;
     #(clkadc_3_fab_phase[31:0]);
     end
  end
initial
  begin
     clkadc_3_ref <= 1'b0;
     #(clkadc_3_ref_delay);
     forever
     begin
     clkadc_3_ref <= 1'b0;
     #(clkadc_3_ref_phase[31:16]);
     clkadc_3_ref <= clkadc_3_enable;
     #(clkadc_3_ref_phase[15:0]);
     end
  end

endmodule
