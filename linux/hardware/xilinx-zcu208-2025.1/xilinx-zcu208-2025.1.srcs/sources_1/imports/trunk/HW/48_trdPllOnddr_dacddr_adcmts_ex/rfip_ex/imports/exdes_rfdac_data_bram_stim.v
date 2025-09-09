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

`timescale 1ps / 1ps

// Uncomment the line below to allow signal type selection via the AXI interface
// This also enables full control over the initial start values for the generation counters
`define DACEXDES_ENABLETYPE_SELECTION

(* DowngradeIPIdentifiedWarnings="yes" *)
module exdes_rfdac_data_bram_stim #(
  
  parameter  mem_size                 = 131072, // memory size per channel in bits
  parameter  axi_addr_top             = 18,     // top address of the AXI address bus
  parameter  use_div2_clk_0      = 0,      // ADC0. Select for high fabric clock rates. Memory is doubled and run at half the speed
  parameter  use_div2_clk_1      = 0,      // ADC1. Select for high fabric clock rates. Memory is doubled and run at half the speed
  parameter  use_div2_clk_2      = 0,      // ADC2. Select for high fabric clock rates. Memory is doubled and run at half the speed
  parameter  use_div2_clk_3      = 0       // ADC3. Select for high fabric clock rates. Memory is doubled and run at half the speed

) (

   // AXI-Lite Interface
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR"  *) input  wire [axi_addr_top:0] s_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input  wire                  s_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output wire                  s_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA"   *) input  wire           [31:0] s_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID"  *) input  wire                  s_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY"  *) output wire                  s_axi_wready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB"   *) input  wire            [3:0] s_axi_wstrb    , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP"   *) output wire            [1:0] s_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID"  *) output wire                  s_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY"  *) input  wire                  s_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR"  *) input  wire [axi_addr_top:0] s_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input  wire                  s_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output wire                  s_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA"   *) output wire           [31:0] s_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP"   *) output wire            [1:0] s_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID"  *) output wire                  s_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY"  *) input  wire                  s_axi_rready   , // 

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TDATA" *)       output wire [255:0] m00_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TVALID" *)      output wire         m00_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TREADY" *)      input  wire         m00_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TDATA" *)       input  wire [255:0] s00_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TVALID" *)      input  wire         s00_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TREADY" *)      output wire         s00_user_tready,     //
   input  wire           user_select_00, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TDATA" *)       output wire [255:0] m01_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TVALID" *)      output wire         m01_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TREADY" *)      input  wire         m01_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TDATA" *)       input  wire [255:0] s01_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TVALID" *)      input  wire         s01_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TREADY" *)      output wire         s01_user_tready,     //
   input  wire           user_select_01, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TDATA" *)       output wire [255:0] m02_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TVALID" *)      output wire         m02_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TREADY" *)      input  wire         m02_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TDATA" *)       input  wire [255:0] s02_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TVALID" *)      input  wire         s02_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TREADY" *)      output wire         s02_user_tready,     //
   input  wire           user_select_02, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TDATA" *)       output wire [255:0] m03_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TVALID" *)      output wire         m03_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TREADY" *)      input  wire         m03_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TDATA" *)       input  wire [255:0] s03_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TVALID" *)      input  wire         s03_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TREADY" *)      output wire         s03_user_tready,     //
   input  wire           user_select_03, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TDATA" *)       output wire [255:0] m10_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TVALID" *)      output wire         m10_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TREADY" *)      input  wire         m10_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TDATA" *)       input  wire [255:0] s10_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TVALID" *)      input  wire         s10_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TREADY" *)      output wire         s10_user_tready,     //
   input  wire           user_select_10, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TDATA" *)       output wire [255:0] m11_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TVALID" *)      output wire         m11_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TREADY" *)      input  wire         m11_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TDATA" *)       input  wire [255:0] s11_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TVALID" *)      input  wire         s11_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TREADY" *)      output wire         s11_user_tready,     //
   input  wire           user_select_11, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TDATA" *)       output wire [255:0] m12_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TVALID" *)      output wire         m12_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TREADY" *)      input  wire         m12_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TDATA" *)       input  wire [255:0] s12_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TVALID" *)      input  wire         s12_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TREADY" *)      output wire         s12_user_tready,     //
   input  wire           user_select_12, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TDATA" *)       output wire [255:0] m13_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TVALID" *)      output wire         m13_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TREADY" *)      input  wire         m13_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TDATA" *)       input  wire [255:0] s13_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TVALID" *)      input  wire         s13_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TREADY" *)      output wire         s13_user_tready,     //
   input  wire           user_select_13, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TDATA" *)       output wire [255:0] m20_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TVALID" *)      output wire         m20_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TREADY" *)      input  wire         m20_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TDATA" *)       input  wire [255:0] s20_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TVALID" *)      input  wire         s20_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TREADY" *)      output wire         s20_user_tready,     //
   input  wire           user_select_20, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TDATA" *)       output wire [255:0] m21_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TVALID" *)      output wire         m21_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TREADY" *)      input  wire         m21_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TDATA" *)       input  wire [255:0] s21_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TVALID" *)      input  wire         s21_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TREADY" *)      output wire         s21_user_tready,     //
   input  wire           user_select_21, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TDATA" *)       output wire [255:0] m22_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TVALID" *)      output wire         m22_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TREADY" *)      input  wire         m22_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TDATA" *)       input  wire [255:0] s22_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TVALID" *)      input  wire         s22_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TREADY" *)      output wire         s22_user_tready,     //
   input  wire           user_select_22, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TDATA" *)       output wire [255:0] m23_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TVALID" *)      output wire         m23_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TREADY" *)      input  wire         m23_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TDATA" *)       input  wire [255:0] s23_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TVALID" *)      input  wire         s23_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TREADY" *)      output wire         s23_user_tready,     //
   input  wire           user_select_23, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TDATA" *)       output wire [255:0] m30_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TVALID" *)      output wire         m30_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TREADY" *)      input  wire         m30_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TDATA" *)       input  wire [255:0] s30_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TVALID" *)      input  wire         s30_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TREADY" *)      output wire         s30_user_tready,     //
   input  wire           user_select_30, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TDATA" *)       output wire [255:0] m31_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TVALID" *)      output wire         m31_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TREADY" *)      input  wire         m31_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TDATA" *)       input  wire [255:0] s31_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TVALID" *)      input  wire         s31_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TREADY" *)      output wire         s31_user_tready,     //
   input  wire           user_select_31, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TDATA" *)       output wire [255:0] m32_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TVALID" *)      output wire         m32_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TREADY" *)      input  wire         m32_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TDATA" *)       input  wire [255:0] s32_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TVALID" *)      input  wire         s32_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TREADY" *)      output wire         s32_user_tready,     //
   input  wire           user_select_32, //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TDATA" *)       output wire [255:0] m33_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TVALID" *)      output wire         m33_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TREADY" *)      input  wire         m33_tready,     //
   
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TDATA" *)       input  wire [255:0] s33_user_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TVALID" *)      input  wire         s33_user_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TREADY" *)      output wire         s33_user_tready,     //
   input  wire           user_select_33, //


   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m00:s00:m01:s01:m02:s02:m03:s03" *)
   input  wire           m0_axis_clock, //
   input  wire           m0_div2_axis_clock, //
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m1_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m10:s10:m11:s11:m12:s12:m13:s13" *)
   input  wire           m1_axis_clock, //
   input  wire           m1_div2_axis_clock, //
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m2_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m20:s20:m21:s21:m22:s22:m23:s23" *)
   input  wire           m2_axis_clock, //
   input  wire           m2_div2_axis_clock, //
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m3_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m30:s30:m31:s31:m32:s32:m33:s33" *)
   input  wire           m3_axis_clock, //
   input  wire           m3_div2_axis_clock, //

   input  wire           hw_trigger_0, //
   input  wire           hw_trigger_en_0, //

   input  wire           hw_trigger_1, //
   input  wire           hw_trigger_en_1, //

   input  wire           hw_trigger_2, //
   input  wire           hw_trigger_en_2, //

   input  wire           hw_trigger_3, //
   input  wire           hw_trigger_en_3, //


   // AXI-Lite Clock/Reset. Be explicit with the IPI interface declarations
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axi" *)
   input  wire           s_axi_aclk   ,
   (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
   (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
   input  wire           s_axi_aresetn
  
  );

//------------------------------------------------------------------------------
// Function clog2 - returns the integer ceiling of the base 2 logarithm of x,
//------------------------------------------------------------------------------
function integer clog2;
input [31:0] Depth;
integer i;
begin
 i = Depth;     
 for(clog2 = 0; i > 0; clog2 = clog2 + 1)
   i = i >> 1;
end
endfunction

//------------------------------------------------------------------------------
// Function get_mem_width_in_samples - returns the output data width of the memory,
//------------------------------------------------------------------------------
function integer get_mem_width_in_samples;
input [31:0] no_of_samples;
input [31:0] memory_size;
integer val;
begin
 if (memory_size > 131072) begin
   val = 16;
 end
 else begin
   if (no_of_samples <= 8) begin
     val = 8;
   end
   else begin
     val = 16;
   end
 end
 get_mem_width_in_samples = val;
end
endfunction

// ----------------------------------------------------------------------------
// Local params
// ----------------------------------------------------------------------------
// Block RAM local parameters
localparam C_NUM_MEMORY_BLOCK = 17;
localparam SELECT_MEM_WIDTH = clog2(C_NUM_MEMORY_BLOCK-1);
localparam C_S_AXI_ADDR_WIDTH = clog2((mem_size/32)-1)+SELECT_MEM_WIDTH+2;
localparam C_MEMORY_ADDR_WIDTH = clog2((mem_size/32)-1);
localparam C_MEMORY_DATA_WITH = 32;


// ----------------------------------------------------------------------------
// Wire declarations
// ----------------------------------------------------------------------------
wire                            enable;
wire [3:0]                      tile_enable;
wire                            timeout_enable;
wire                     [11:0] timeout_value;

wire  [clog2((mem_size/32)-1)-1:0] m00_dg_addra          ;//
wire                               m00_dg_wea            ;//
wire                               m00_dg_ena            ;//
wire                        [31:0] m00_dg_dina           ;//
wire                        [31:0] m00_dg_douta          ;//
wire                        [31:0] m00_dg_num_samples    ;//
wire                        [31:0] m00_mem_stop          ;//
wire                               m00_dg_enable_ram     ;//
wire                               m00_tready_r          ;//

wire              [255:0] m00_tdata_i;     //
wire                               m00_tvalid_i;     //
wire                               m00_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m01_dg_addra          ;//
wire                               m01_dg_wea            ;//
wire                               m01_dg_ena            ;//
wire                        [31:0] m01_dg_dina           ;//
wire                        [31:0] m01_dg_douta          ;//
wire                        [31:0] m01_dg_num_samples    ;//
wire                        [31:0] m01_mem_stop          ;//
wire                               m01_dg_enable_ram     ;//
wire                               m01_tready_r          ;//

wire              [255:0] m01_tdata_i;     //
wire                               m01_tvalid_i;     //
wire                               m01_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m02_dg_addra          ;//
wire                               m02_dg_wea            ;//
wire                               m02_dg_ena            ;//
wire                        [31:0] m02_dg_dina           ;//
wire                        [31:0] m02_dg_douta          ;//
wire                        [31:0] m02_dg_num_samples    ;//
wire                        [31:0] m02_mem_stop          ;//
wire                               m02_dg_enable_ram     ;//
wire                               m02_tready_r          ;//

wire              [255:0] m02_tdata_i;     //
wire                               m02_tvalid_i;     //
wire                               m02_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m03_dg_addra          ;//
wire                               m03_dg_wea            ;//
wire                               m03_dg_ena            ;//
wire                        [31:0] m03_dg_dina           ;//
wire                        [31:0] m03_dg_douta          ;//
wire                        [31:0] m03_dg_num_samples    ;//
wire                        [31:0] m03_mem_stop          ;//
wire                               m03_dg_enable_ram     ;//
wire                               m03_tready_r          ;//

wire              [255:0] m03_tdata_i;     //
wire                               m03_tvalid_i;     //
wire                               m03_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m10_dg_addra          ;//
wire                               m10_dg_wea            ;//
wire                               m10_dg_ena            ;//
wire                        [31:0] m10_dg_dina           ;//
wire                        [31:0] m10_dg_douta          ;//
wire                        [31:0] m10_dg_num_samples    ;//
wire                        [31:0] m10_mem_stop          ;//
wire                               m10_dg_enable_ram     ;//
wire                               m10_tready_r          ;//

wire              [255:0] m10_tdata_i;     //
wire                               m10_tvalid_i;     //
wire                               m10_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m11_dg_addra          ;//
wire                               m11_dg_wea            ;//
wire                               m11_dg_ena            ;//
wire                        [31:0] m11_dg_dina           ;//
wire                        [31:0] m11_dg_douta          ;//
wire                        [31:0] m11_dg_num_samples    ;//
wire                        [31:0] m11_mem_stop          ;//
wire                               m11_dg_enable_ram     ;//
wire                               m11_tready_r          ;//

wire              [255:0] m11_tdata_i;     //
wire                               m11_tvalid_i;     //
wire                               m11_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m12_dg_addra          ;//
wire                               m12_dg_wea            ;//
wire                               m12_dg_ena            ;//
wire                        [31:0] m12_dg_dina           ;//
wire                        [31:0] m12_dg_douta          ;//
wire                        [31:0] m12_dg_num_samples    ;//
wire                        [31:0] m12_mem_stop          ;//
wire                               m12_dg_enable_ram     ;//
wire                               m12_tready_r          ;//

wire              [255:0] m12_tdata_i;     //
wire                               m12_tvalid_i;     //
wire                               m12_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m13_dg_addra          ;//
wire                               m13_dg_wea            ;//
wire                               m13_dg_ena            ;//
wire                        [31:0] m13_dg_dina           ;//
wire                        [31:0] m13_dg_douta          ;//
wire                        [31:0] m13_dg_num_samples    ;//
wire                        [31:0] m13_mem_stop          ;//
wire                               m13_dg_enable_ram     ;//
wire                               m13_tready_r          ;//

wire              [255:0] m13_tdata_i;     //
wire                               m13_tvalid_i;     //
wire                               m13_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m20_dg_addra          ;//
wire                               m20_dg_wea            ;//
wire                               m20_dg_ena            ;//
wire                        [31:0] m20_dg_dina           ;//
wire                        [31:0] m20_dg_douta          ;//
wire                        [31:0] m20_dg_num_samples    ;//
wire                        [31:0] m20_mem_stop          ;//
wire                               m20_dg_enable_ram     ;//
wire                               m20_tready_r          ;//

wire              [255:0] m20_tdata_i;     //
wire                               m20_tvalid_i;     //
wire                               m20_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m21_dg_addra          ;//
wire                               m21_dg_wea            ;//
wire                               m21_dg_ena            ;//
wire                        [31:0] m21_dg_dina           ;//
wire                        [31:0] m21_dg_douta          ;//
wire                        [31:0] m21_dg_num_samples    ;//
wire                        [31:0] m21_mem_stop          ;//
wire                               m21_dg_enable_ram     ;//
wire                               m21_tready_r          ;//

wire              [255:0] m21_tdata_i;     //
wire                               m21_tvalid_i;     //
wire                               m21_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m22_dg_addra          ;//
wire                               m22_dg_wea            ;//
wire                               m22_dg_ena            ;//
wire                        [31:0] m22_dg_dina           ;//
wire                        [31:0] m22_dg_douta          ;//
wire                        [31:0] m22_dg_num_samples    ;//
wire                        [31:0] m22_mem_stop          ;//
wire                               m22_dg_enable_ram     ;//
wire                               m22_tready_r          ;//

wire              [255:0] m22_tdata_i;     //
wire                               m22_tvalid_i;     //
wire                               m22_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m23_dg_addra          ;//
wire                               m23_dg_wea            ;//
wire                               m23_dg_ena            ;//
wire                        [31:0] m23_dg_dina           ;//
wire                        [31:0] m23_dg_douta          ;//
wire                        [31:0] m23_dg_num_samples    ;//
wire                        [31:0] m23_mem_stop          ;//
wire                               m23_dg_enable_ram     ;//
wire                               m23_tready_r          ;//

wire              [255:0] m23_tdata_i;     //
wire                               m23_tvalid_i;     //
wire                               m23_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m30_dg_addra          ;//
wire                               m30_dg_wea            ;//
wire                               m30_dg_ena            ;//
wire                        [31:0] m30_dg_dina           ;//
wire                        [31:0] m30_dg_douta          ;//
wire                        [31:0] m30_dg_num_samples    ;//
wire                        [31:0] m30_mem_stop          ;//
wire                               m30_dg_enable_ram     ;//
wire                               m30_tready_r          ;//

wire              [255:0] m30_tdata_i;     //
wire                               m30_tvalid_i;     //
wire                               m30_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m31_dg_addra          ;//
wire                               m31_dg_wea            ;//
wire                               m31_dg_ena            ;//
wire                        [31:0] m31_dg_dina           ;//
wire                        [31:0] m31_dg_douta          ;//
wire                        [31:0] m31_dg_num_samples    ;//
wire                        [31:0] m31_mem_stop          ;//
wire                               m31_dg_enable_ram     ;//
wire                               m31_tready_r          ;//

wire              [255:0] m31_tdata_i;     //
wire                               m31_tvalid_i;     //
wire                               m31_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m32_dg_addra          ;//
wire                               m32_dg_wea            ;//
wire                               m32_dg_ena            ;//
wire                        [31:0] m32_dg_dina           ;//
wire                        [31:0] m32_dg_douta          ;//
wire                        [31:0] m32_dg_num_samples    ;//
wire                        [31:0] m32_mem_stop          ;//
wire                               m32_dg_enable_ram     ;//
wire                               m32_tready_r          ;//

wire              [255:0] m32_tdata_i;     //
wire                               m32_tvalid_i;     //
wire                               m32_tready_i;     //

wire  [clog2((mem_size/32)-1)-1:0] m33_dg_addra          ;//
wire                               m33_dg_wea            ;//
wire                               m33_dg_ena            ;//
wire                        [31:0] m33_dg_dina           ;//
wire                        [31:0] m33_dg_douta          ;//
wire                        [31:0] m33_dg_num_samples    ;//
wire                        [31:0] m33_mem_stop          ;//
wire                               m33_dg_enable_ram     ;//
wire                               m33_tready_r          ;//

wire              [255:0] m33_tdata_i;     //
wire                               m33_tvalid_i;     //
wire                               m33_tready_i;     //
wire                               start_data;
wire                               tile_enable0_sync;
reg                                start_send00_i;
wire                               start_send00_sync;
reg                                start_send01_i;
wire                               start_send01_sync;
reg                                start_send02_i;
wire                               start_send02_sync;
reg                                start_send03_i;
wire                               start_send03_sync;
wire                               tile_enable1_sync;
reg                                start_send10_i;
wire                               start_send10_sync;
reg                                start_send11_i;
wire                               start_send11_sync;
reg                                start_send12_i;
wire                               start_send12_sync;
reg                                start_send13_i;
wire                               start_send13_sync;
wire                               tile_enable2_sync;
reg                                start_send20_i;
wire                               start_send20_sync;
reg                                start_send21_i;
wire                               start_send21_sync;
reg                                start_send22_i;
wire                               start_send22_sync;
reg                                start_send23_i;
wire                               start_send23_sync;
wire                               tile_enable3_sync;
reg                                start_send30_i;
wire                               start_send30_sync;
reg                                start_send31_i;
wire                               start_send31_sync;
reg                                start_send32_i;
wire                               start_send32_sync;
reg                                start_send33_i;
wire                               start_send33_sync;
assign m00_mem_stop = (m00_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_0),
  .mem_size      (mem_size)

) dg_slice_00 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m0_axis_clock          ),
   .clkb_div2  ( m0_div2_axis_clock     ),
   .enable     ( m00_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_0          ),
   .hw_trigger_en(hw_trigger_en_0       ),

   .addra      ( m00_dg_addra           ),
   .wea        ( m00_dg_wea             ),
   .ena        ( m00_dg_ena             ),
   .dina       ( m00_dg_dina            ),
   .douta      ( m00_dg_douta           ),

   .endaddrb   ( m00_mem_stop           ),
   .start_data ( start_send00_sync & tile_enable0_sync),
   .axis_data  ( m00_tdata_i            ),
   .axis_valid ( m00_tvalid_i           ),
   .axis_ready ( m00_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m00_dg_enable_ram) begin
      start_send00_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send00_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_0 == 1) begin : gen_start_send_sync00_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (start_send00_i), .dest_out (start_send00_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_send_sync00_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_axis_clock), .src_in (start_send00_i), .dest_out (start_send00_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_0 == 1) begin : gen_tile_en_sync0_div2
    // Synchronize tile enable onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (tile_enable[0]), .dest_out (tile_enable0_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_tile_en_sync0_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_axis_clock), .src_in (tile_enable[0]), .dest_out (tile_enable0_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 1) begin : gen_sync_tready00_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (m00_tready), .dest_out (m00_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_tready00_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m00_tready_r = m00_tready;
  end
  endgenerate
    

  assign m00_tdata         = (user_select_00 == 1'b1) ? s00_user_tdata :  m00_tdata_i;
  assign m00_tvalid        = (user_select_00 == 1'b1) ? s00_user_tvalid :  m00_tvalid_i;
  assign m00_tready_i      = (user_select_00 == 1'b1) ? 1'b0 : m00_tready_r;
  assign s00_user_tready = (user_select_00 == 1'b1) ? m00_tready : 1'b0;
assign m01_mem_stop = (m01_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_0),
  .mem_size      (mem_size)

) dg_slice_01 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m0_axis_clock          ),
   .clkb_div2  ( m0_div2_axis_clock     ),
   .enable     ( m01_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_0          ),
   .hw_trigger_en(hw_trigger_en_0       ),

   .addra      ( m01_dg_addra           ),
   .wea        ( m01_dg_wea             ),
   .ena        ( m01_dg_ena             ),
   .dina       ( m01_dg_dina            ),
   .douta      ( m01_dg_douta           ),

   .endaddrb   ( m01_mem_stop           ),
   .start_data ( start_send01_sync & tile_enable0_sync),
   .axis_data  ( m01_tdata_i            ),
   .axis_valid ( m01_tvalid_i           ),
   .axis_ready ( m01_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m01_dg_enable_ram) begin
      start_send01_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send01_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_0 == 1) begin : gen_start_send_sync01_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (start_send01_i), .dest_out (start_send01_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_send_sync01_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_axis_clock), .src_in (start_send01_i), .dest_out (start_send01_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_0 == 1) begin : gen_sync_tready01_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (m01_tready), .dest_out (m01_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_tready01_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m01_tready_r = m01_tready;
  end
  endgenerate
    

  assign m01_tdata         = (user_select_01 == 1'b1) ? s01_user_tdata :  m01_tdata_i;
  assign m01_tvalid        = (user_select_01 == 1'b1) ? s01_user_tvalid :  m01_tvalid_i;
  assign m01_tready_i      = (user_select_01 == 1'b1) ? 1'b0 : m01_tready_r;
  assign s01_user_tready = (user_select_01 == 1'b1) ? m01_tready : 1'b0;
assign m02_mem_stop = (m02_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_0),
  .mem_size      (mem_size)

) dg_slice_02 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m0_axis_clock          ),
   .clkb_div2  ( m0_div2_axis_clock     ),
   .enable     ( m02_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_0          ),
   .hw_trigger_en(hw_trigger_en_0       ),

   .addra      ( m02_dg_addra           ),
   .wea        ( m02_dg_wea             ),
   .ena        ( m02_dg_ena             ),
   .dina       ( m02_dg_dina            ),
   .douta      ( m02_dg_douta           ),

   .endaddrb   ( m02_mem_stop           ),
   .start_data ( start_send02_sync & tile_enable0_sync),
   .axis_data  ( m02_tdata_i            ),
   .axis_valid ( m02_tvalid_i           ),
   .axis_ready ( m02_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m02_dg_enable_ram) begin
      start_send02_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send02_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_0 == 1) begin : gen_start_send_sync02_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (start_send02_i), .dest_out (start_send02_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_send_sync02_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_axis_clock), .src_in (start_send02_i), .dest_out (start_send02_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_0 == 1) begin : gen_sync_tready02_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (m02_tready), .dest_out (m02_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_tready02_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m02_tready_r = m02_tready;
  end
  endgenerate
    

  assign m02_tdata         = (user_select_02 == 1'b1) ? s02_user_tdata :  m02_tdata_i;
  assign m02_tvalid        = (user_select_02 == 1'b1) ? s02_user_tvalid :  m02_tvalid_i;
  assign m02_tready_i      = (user_select_02 == 1'b1) ? 1'b0 : m02_tready_r;
  assign s02_user_tready = (user_select_02 == 1'b1) ? m02_tready : 1'b0;
assign m03_mem_stop = (m03_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_0),
  .mem_size      (mem_size)

) dg_slice_03 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m0_axis_clock          ),
   .clkb_div2  ( m0_div2_axis_clock     ),
   .enable     ( m03_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_0          ),
   .hw_trigger_en(hw_trigger_en_0       ),

   .addra      ( m03_dg_addra           ),
   .wea        ( m03_dg_wea             ),
   .ena        ( m03_dg_ena             ),
   .dina       ( m03_dg_dina            ),
   .douta      ( m03_dg_douta           ),

   .endaddrb   ( m03_mem_stop           ),
   .start_data ( start_send03_sync & tile_enable0_sync),
   .axis_data  ( m03_tdata_i            ),
   .axis_valid ( m03_tvalid_i           ),
   .axis_ready ( m03_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m03_dg_enable_ram) begin
      start_send03_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send03_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_0 == 1) begin : gen_start_send_sync03_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (start_send03_i), .dest_out (start_send03_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_send_sync03_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m0_axis_clock), .src_in (start_send03_i), .dest_out (start_send03_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_0 == 1) begin : gen_sync_tready03_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m0_div2_axis_clock), .src_in (m03_tready), .dest_out (m03_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_0 == 0) begin : gen_sync_tready03_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m03_tready_r = m03_tready;
  end
  endgenerate
    

  assign m03_tdata         = (user_select_03 == 1'b1) ? s03_user_tdata :  m03_tdata_i;
  assign m03_tvalid        = (user_select_03 == 1'b1) ? s03_user_tvalid :  m03_tvalid_i;
  assign m03_tready_i      = (user_select_03 == 1'b1) ? 1'b0 : m03_tready_r;
  assign s03_user_tready = (user_select_03 == 1'b1) ? m03_tready : 1'b0;
assign m10_mem_stop = (m10_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_1),
  .mem_size      (mem_size)

) dg_slice_10 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m1_axis_clock          ),
   .clkb_div2  ( m1_div2_axis_clock     ),
   .enable     ( m10_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_1          ),
   .hw_trigger_en(hw_trigger_en_1       ),

   .addra      ( m10_dg_addra           ),
   .wea        ( m10_dg_wea             ),
   .ena        ( m10_dg_ena             ),
   .dina       ( m10_dg_dina            ),
   .douta      ( m10_dg_douta           ),

   .endaddrb   ( m10_mem_stop           ),
   .start_data ( start_send10_sync & tile_enable1_sync),
   .axis_data  ( m10_tdata_i            ),
   .axis_valid ( m10_tvalid_i           ),
   .axis_ready ( m10_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m10_dg_enable_ram) begin
      start_send10_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send10_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_1 == 1) begin : gen_start_send_sync10_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (start_send10_i), .dest_out (start_send10_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_send_sync10_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_axis_clock), .src_in (start_send10_i), .dest_out (start_send10_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_1 == 1) begin : gen_tile_en_sync1_div2
    // Synchronize tile enable onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (tile_enable[1]), .dest_out (tile_enable1_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_tile_en_sync1_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_axis_clock), .src_in (tile_enable[1]), .dest_out (tile_enable1_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 1) begin : gen_sync_tready10_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (m10_tready), .dest_out (m10_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_tready10_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m10_tready_r = m10_tready;
  end
  endgenerate
    

  assign m10_tdata         = (user_select_10 == 1'b1) ? s10_user_tdata :  m10_tdata_i;
  assign m10_tvalid        = (user_select_10 == 1'b1) ? s10_user_tvalid :  m10_tvalid_i;
  assign m10_tready_i      = (user_select_10 == 1'b1) ? 1'b0 : m10_tready_r;
  assign s10_user_tready = (user_select_10 == 1'b1) ? m10_tready : 1'b0;
assign m11_mem_stop = (m11_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_1),
  .mem_size      (mem_size)

) dg_slice_11 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m1_axis_clock          ),
   .clkb_div2  ( m1_div2_axis_clock     ),
   .enable     ( m11_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_1          ),
   .hw_trigger_en(hw_trigger_en_1       ),

   .addra      ( m11_dg_addra           ),
   .wea        ( m11_dg_wea             ),
   .ena        ( m11_dg_ena             ),
   .dina       ( m11_dg_dina            ),
   .douta      ( m11_dg_douta           ),

   .endaddrb   ( m11_mem_stop           ),
   .start_data ( start_send11_sync & tile_enable1_sync),
   .axis_data  ( m11_tdata_i            ),
   .axis_valid ( m11_tvalid_i           ),
   .axis_ready ( m11_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m11_dg_enable_ram) begin
      start_send11_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send11_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_1 == 1) begin : gen_start_send_sync11_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (start_send11_i), .dest_out (start_send11_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_send_sync11_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_axis_clock), .src_in (start_send11_i), .dest_out (start_send11_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_1 == 1) begin : gen_sync_tready11_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (m11_tready), .dest_out (m11_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_tready11_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m11_tready_r = m11_tready;
  end
  endgenerate
    

  assign m11_tdata         = (user_select_11 == 1'b1) ? s11_user_tdata :  m11_tdata_i;
  assign m11_tvalid        = (user_select_11 == 1'b1) ? s11_user_tvalid :  m11_tvalid_i;
  assign m11_tready_i      = (user_select_11 == 1'b1) ? 1'b0 : m11_tready_r;
  assign s11_user_tready = (user_select_11 == 1'b1) ? m11_tready : 1'b0;
assign m12_mem_stop = (m12_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_1),
  .mem_size      (mem_size)

) dg_slice_12 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m1_axis_clock          ),
   .clkb_div2  ( m1_div2_axis_clock     ),
   .enable     ( m12_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_1          ),
   .hw_trigger_en(hw_trigger_en_1       ),

   .addra      ( m12_dg_addra           ),
   .wea        ( m12_dg_wea             ),
   .ena        ( m12_dg_ena             ),
   .dina       ( m12_dg_dina            ),
   .douta      ( m12_dg_douta           ),

   .endaddrb   ( m12_mem_stop           ),
   .start_data ( start_send12_sync & tile_enable1_sync),
   .axis_data  ( m12_tdata_i            ),
   .axis_valid ( m12_tvalid_i           ),
   .axis_ready ( m12_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m12_dg_enable_ram) begin
      start_send12_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send12_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_1 == 1) begin : gen_start_send_sync12_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (start_send12_i), .dest_out (start_send12_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_send_sync12_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_axis_clock), .src_in (start_send12_i), .dest_out (start_send12_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_1 == 1) begin : gen_sync_tready12_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (m12_tready), .dest_out (m12_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_tready12_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m12_tready_r = m12_tready;
  end
  endgenerate
    

  assign m12_tdata         = (user_select_12 == 1'b1) ? s12_user_tdata :  m12_tdata_i;
  assign m12_tvalid        = (user_select_12 == 1'b1) ? s12_user_tvalid :  m12_tvalid_i;
  assign m12_tready_i      = (user_select_12 == 1'b1) ? 1'b0 : m12_tready_r;
  assign s12_user_tready = (user_select_12 == 1'b1) ? m12_tready : 1'b0;
assign m13_mem_stop = (m13_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_1),
  .mem_size      (mem_size)

) dg_slice_13 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m1_axis_clock          ),
   .clkb_div2  ( m1_div2_axis_clock     ),
   .enable     ( m13_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_1          ),
   .hw_trigger_en(hw_trigger_en_1       ),

   .addra      ( m13_dg_addra           ),
   .wea        ( m13_dg_wea             ),
   .ena        ( m13_dg_ena             ),
   .dina       ( m13_dg_dina            ),
   .douta      ( m13_dg_douta           ),

   .endaddrb   ( m13_mem_stop           ),
   .start_data ( start_send13_sync & tile_enable1_sync),
   .axis_data  ( m13_tdata_i            ),
   .axis_valid ( m13_tvalid_i           ),
   .axis_ready ( m13_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m13_dg_enable_ram) begin
      start_send13_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send13_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_1 == 1) begin : gen_start_send_sync13_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (start_send13_i), .dest_out (start_send13_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_send_sync13_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m1_axis_clock), .src_in (start_send13_i), .dest_out (start_send13_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_1 == 1) begin : gen_sync_tready13_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m1_div2_axis_clock), .src_in (m13_tready), .dest_out (m13_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_1 == 0) begin : gen_sync_tready13_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m13_tready_r = m13_tready;
  end
  endgenerate
    

  assign m13_tdata         = (user_select_13 == 1'b1) ? s13_user_tdata :  m13_tdata_i;
  assign m13_tvalid        = (user_select_13 == 1'b1) ? s13_user_tvalid :  m13_tvalid_i;
  assign m13_tready_i      = (user_select_13 == 1'b1) ? 1'b0 : m13_tready_r;
  assign s13_user_tready = (user_select_13 == 1'b1) ? m13_tready : 1'b0;
assign m20_mem_stop = (m20_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_2),
  .mem_size      (mem_size)

) dg_slice_20 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m2_axis_clock          ),
   .clkb_div2  ( m2_div2_axis_clock     ),
   .enable     ( m20_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_2          ),
   .hw_trigger_en(hw_trigger_en_2       ),

   .addra      ( m20_dg_addra           ),
   .wea        ( m20_dg_wea             ),
   .ena        ( m20_dg_ena             ),
   .dina       ( m20_dg_dina            ),
   .douta      ( m20_dg_douta           ),

   .endaddrb   ( m20_mem_stop           ),
   .start_data ( start_send20_sync & tile_enable2_sync),
   .axis_data  ( m20_tdata_i            ),
   .axis_valid ( m20_tvalid_i           ),
   .axis_ready ( m20_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m20_dg_enable_ram) begin
      start_send20_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send20_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_2 == 1) begin : gen_start_send_sync20_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (start_send20_i), .dest_out (start_send20_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_send_sync20_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_axis_clock), .src_in (start_send20_i), .dest_out (start_send20_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_2 == 1) begin : gen_tile_en_sync2_div2
    // Synchronize tile enable onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (tile_enable[2]), .dest_out (tile_enable2_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_tile_en_sync2_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_axis_clock), .src_in (tile_enable[2]), .dest_out (tile_enable2_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 1) begin : gen_sync_tready20_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (m20_tready), .dest_out (m20_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_tready20_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m20_tready_r = m20_tready;
  end
  endgenerate
    

  assign m20_tdata         = (user_select_20 == 1'b1) ? s20_user_tdata :  m20_tdata_i;
  assign m20_tvalid        = (user_select_20 == 1'b1) ? s20_user_tvalid :  m20_tvalid_i;
  assign m20_tready_i      = (user_select_20 == 1'b1) ? 1'b0 : m20_tready_r;
  assign s20_user_tready = (user_select_20 == 1'b1) ? m20_tready : 1'b0;
assign m21_mem_stop = (m21_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_2),
  .mem_size      (mem_size)

) dg_slice_21 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m2_axis_clock          ),
   .clkb_div2  ( m2_div2_axis_clock     ),
   .enable     ( m21_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_2          ),
   .hw_trigger_en(hw_trigger_en_2       ),

   .addra      ( m21_dg_addra           ),
   .wea        ( m21_dg_wea             ),
   .ena        ( m21_dg_ena             ),
   .dina       ( m21_dg_dina            ),
   .douta      ( m21_dg_douta           ),

   .endaddrb   ( m21_mem_stop           ),
   .start_data ( start_send21_sync & tile_enable2_sync),
   .axis_data  ( m21_tdata_i            ),
   .axis_valid ( m21_tvalid_i           ),
   .axis_ready ( m21_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m21_dg_enable_ram) begin
      start_send21_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send21_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_2 == 1) begin : gen_start_send_sync21_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (start_send21_i), .dest_out (start_send21_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_send_sync21_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_axis_clock), .src_in (start_send21_i), .dest_out (start_send21_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_2 == 1) begin : gen_sync_tready21_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (m21_tready), .dest_out (m21_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_tready21_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m21_tready_r = m21_tready;
  end
  endgenerate
    

  assign m21_tdata         = (user_select_21 == 1'b1) ? s21_user_tdata :  m21_tdata_i;
  assign m21_tvalid        = (user_select_21 == 1'b1) ? s21_user_tvalid :  m21_tvalid_i;
  assign m21_tready_i      = (user_select_21 == 1'b1) ? 1'b0 : m21_tready_r;
  assign s21_user_tready = (user_select_21 == 1'b1) ? m21_tready : 1'b0;
assign m22_mem_stop = (m22_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_2),
  .mem_size      (mem_size)

) dg_slice_22 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m2_axis_clock          ),
   .clkb_div2  ( m2_div2_axis_clock     ),
   .enable     ( m22_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_2          ),
   .hw_trigger_en(hw_trigger_en_2       ),

   .addra      ( m22_dg_addra           ),
   .wea        ( m22_dg_wea             ),
   .ena        ( m22_dg_ena             ),
   .dina       ( m22_dg_dina            ),
   .douta      ( m22_dg_douta           ),

   .endaddrb   ( m22_mem_stop           ),
   .start_data ( start_send22_sync & tile_enable2_sync),
   .axis_data  ( m22_tdata_i            ),
   .axis_valid ( m22_tvalid_i           ),
   .axis_ready ( m22_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m22_dg_enable_ram) begin
      start_send22_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send22_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_2 == 1) begin : gen_start_send_sync22_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (start_send22_i), .dest_out (start_send22_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_send_sync22_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_axis_clock), .src_in (start_send22_i), .dest_out (start_send22_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_2 == 1) begin : gen_sync_tready22_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (m22_tready), .dest_out (m22_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_tready22_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m22_tready_r = m22_tready;
  end
  endgenerate
    

  assign m22_tdata         = (user_select_22 == 1'b1) ? s22_user_tdata :  m22_tdata_i;
  assign m22_tvalid        = (user_select_22 == 1'b1) ? s22_user_tvalid :  m22_tvalid_i;
  assign m22_tready_i      = (user_select_22 == 1'b1) ? 1'b0 : m22_tready_r;
  assign s22_user_tready = (user_select_22 == 1'b1) ? m22_tready : 1'b0;
assign m23_mem_stop = (m23_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_2),
  .mem_size      (mem_size)

) dg_slice_23 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m2_axis_clock          ),
   .clkb_div2  ( m2_div2_axis_clock     ),
   .enable     ( m23_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_2          ),
   .hw_trigger_en(hw_trigger_en_2       ),

   .addra      ( m23_dg_addra           ),
   .wea        ( m23_dg_wea             ),
   .ena        ( m23_dg_ena             ),
   .dina       ( m23_dg_dina            ),
   .douta      ( m23_dg_douta           ),

   .endaddrb   ( m23_mem_stop           ),
   .start_data ( start_send23_sync & tile_enable2_sync),
   .axis_data  ( m23_tdata_i            ),
   .axis_valid ( m23_tvalid_i           ),
   .axis_ready ( m23_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m23_dg_enable_ram) begin
      start_send23_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send23_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_2 == 1) begin : gen_start_send_sync23_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (start_send23_i), .dest_out (start_send23_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_send_sync23_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m2_axis_clock), .src_in (start_send23_i), .dest_out (start_send23_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_2 == 1) begin : gen_sync_tready23_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m2_div2_axis_clock), .src_in (m23_tready), .dest_out (m23_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_2 == 0) begin : gen_sync_tready23_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m23_tready_r = m23_tready;
  end
  endgenerate
    

  assign m23_tdata         = (user_select_23 == 1'b1) ? s23_user_tdata :  m23_tdata_i;
  assign m23_tvalid        = (user_select_23 == 1'b1) ? s23_user_tvalid :  m23_tvalid_i;
  assign m23_tready_i      = (user_select_23 == 1'b1) ? 1'b0 : m23_tready_r;
  assign s23_user_tready = (user_select_23 == 1'b1) ? m23_tready : 1'b0;
assign m30_mem_stop = (m30_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_3),
  .mem_size      (mem_size)

) dg_slice_30 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m3_axis_clock          ),
   .clkb_div2  ( m3_div2_axis_clock     ),
   .enable     ( m30_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_3          ),
   .hw_trigger_en(hw_trigger_en_3       ),

   .addra      ( m30_dg_addra           ),
   .wea        ( m30_dg_wea             ),
   .ena        ( m30_dg_ena             ),
   .dina       ( m30_dg_dina            ),
   .douta      ( m30_dg_douta           ),

   .endaddrb   ( m30_mem_stop           ),
   .start_data ( start_send30_sync & tile_enable3_sync),
   .axis_data  ( m30_tdata_i            ),
   .axis_valid ( m30_tvalid_i           ),
   .axis_ready ( m30_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m30_dg_enable_ram) begin
      start_send30_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send30_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_3 == 1) begin : gen_start_send_sync30_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (start_send30_i), .dest_out (start_send30_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_send_sync30_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_axis_clock), .src_in (start_send30_i), .dest_out (start_send30_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_3 == 1) begin : gen_tile_en_sync3_div2
    // Synchronize tile enable onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (tile_enable[3]), .dest_out (tile_enable3_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_tile_en_sync3_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_axis_clock), .src_in (tile_enable[3]), .dest_out (tile_enable3_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 1) begin : gen_sync_tready30_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (m30_tready), .dest_out (m30_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_tready30_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m30_tready_r = m30_tready;
  end
  endgenerate
    

  assign m30_tdata         = (user_select_30 == 1'b1) ? s30_user_tdata :  m30_tdata_i;
  assign m30_tvalid        = (user_select_30 == 1'b1) ? s30_user_tvalid :  m30_tvalid_i;
  assign m30_tready_i      = (user_select_30 == 1'b1) ? 1'b0 : m30_tready_r;
  assign s30_user_tready = (user_select_30 == 1'b1) ? m30_tready : 1'b0;
assign m31_mem_stop = (m31_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_3),
  .mem_size      (mem_size)

) dg_slice_31 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m3_axis_clock          ),
   .clkb_div2  ( m3_div2_axis_clock     ),
   .enable     ( m31_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_3          ),
   .hw_trigger_en(hw_trigger_en_3       ),

   .addra      ( m31_dg_addra           ),
   .wea        ( m31_dg_wea             ),
   .ena        ( m31_dg_ena             ),
   .dina       ( m31_dg_dina            ),
   .douta      ( m31_dg_douta           ),

   .endaddrb   ( m31_mem_stop           ),
   .start_data ( start_send31_sync & tile_enable3_sync),
   .axis_data  ( m31_tdata_i            ),
   .axis_valid ( m31_tvalid_i           ),
   .axis_ready ( m31_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m31_dg_enable_ram) begin
      start_send31_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send31_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_3 == 1) begin : gen_start_send_sync31_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (start_send31_i), .dest_out (start_send31_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_send_sync31_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_axis_clock), .src_in (start_send31_i), .dest_out (start_send31_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_3 == 1) begin : gen_sync_tready31_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (m31_tready), .dest_out (m31_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_tready31_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m31_tready_r = m31_tready;
  end
  endgenerate
    

  assign m31_tdata         = (user_select_31 == 1'b1) ? s31_user_tdata :  m31_tdata_i;
  assign m31_tvalid        = (user_select_31 == 1'b1) ? s31_user_tvalid :  m31_tvalid_i;
  assign m31_tready_i      = (user_select_31 == 1'b1) ? 1'b0 : m31_tready_r;
  assign s31_user_tready = (user_select_31 == 1'b1) ? m31_tready : 1'b0;
assign m32_mem_stop = (m32_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_3),
  .mem_size      (mem_size)

) dg_slice_32 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m3_axis_clock          ),
   .clkb_div2  ( m3_div2_axis_clock     ),
   .enable     ( m32_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_3          ),
   .hw_trigger_en(hw_trigger_en_3       ),

   .addra      ( m32_dg_addra           ),
   .wea        ( m32_dg_wea             ),
   .ena        ( m32_dg_ena             ),
   .dina       ( m32_dg_dina            ),
   .douta      ( m32_dg_douta           ),

   .endaddrb   ( m32_mem_stop           ),
   .start_data ( start_send32_sync & tile_enable3_sync),
   .axis_data  ( m32_tdata_i            ),
   .axis_valid ( m32_tvalid_i           ),
   .axis_ready ( m32_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m32_dg_enable_ram) begin
      start_send32_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send32_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_3 == 1) begin : gen_start_send_sync32_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (start_send32_i), .dest_out (start_send32_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_send_sync32_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_axis_clock), .src_in (start_send32_i), .dest_out (start_send32_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_3 == 1) begin : gen_sync_tready32_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (m32_tready), .dest_out (m32_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_tready32_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m32_tready_r = m32_tready;
  end
  endgenerate
    

  assign m32_tdata         = (user_select_32 == 1'b1) ? s32_user_tdata :  m32_tdata_i;
  assign m32_tvalid        = (user_select_32 == 1'b1) ? s32_user_tvalid :  m32_tvalid_i;
  assign m32_tready_i      = (user_select_32 == 1'b1) ? 1'b0 : m32_tready_r;
  assign s32_user_tready = (user_select_32 == 1'b1) ? m32_tready : 1'b0;
assign m33_mem_stop = (m33_dg_num_samples / get_mem_width_in_samples(16,mem_size)) - 1;

exdes_xpm_mem_dg #(
   
  .wordWidth     (256),
  .memWordWidth  (get_mem_width_in_samples(16,mem_size)),
  .addrbWidth    (clog2((mem_size/(16 * get_mem_width_in_samples(16,mem_size)))-1)),
  .addrWidth     (clog2((mem_size/32)-1)),
  .use_div2_clk  (use_div2_clk_3),
  .mem_size      (mem_size)

) dg_slice_33 (

   .clka       ( s_axi_aclk             ),
   .clkb       ( m3_axis_clock          ),
   .clkb_div2  ( m3_div2_axis_clock     ),
   .enable     ( m33_dg_enable_ram      ),   
   .hw_trigger   (hw_trigger_3          ),
   .hw_trigger_en(hw_trigger_en_3       ),

   .addra      ( m33_dg_addra           ),
   .wea        ( m33_dg_wea             ),
   .ena        ( m33_dg_ena             ),
   .dina       ( m33_dg_dina            ),
   .douta      ( m33_dg_douta           ),

   .endaddrb   ( m33_mem_stop           ),
   .start_data ( start_send33_sync & tile_enable3_sync),
   .axis_data  ( m33_tdata_i            ),
   .axis_valid ( m33_tvalid_i           ),
   .axis_ready ( m33_tready_r           )

);

  always @(posedge s_axi_aclk) begin
    if (~m33_dg_enable_ram) begin
      start_send33_i <= 1'b0;
    end
    else begin
      if (start_data) begin
        start_send33_i <= 1'b1;
      end
    end
  end
  
  generate
  if (use_div2_clk_3 == 1) begin : gen_start_send_sync33_div2
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (start_send33_i), .dest_out (start_send33_sync) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_send_sync33_div1
    // Synchronize data start onto the AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_i (.src_clk(1'd0),.dest_clk (m3_axis_clock), .src_in (start_send33_i), .dest_out (start_send33_sync) );
  end
  endgenerate
  

  generate
  if (use_div2_clk_3 == 1) begin : gen_sync_tready33_div2
    // Synchronize axis_ready onto the half speed AXI streaming clock domain
    xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_gen_enable_div2_i (.src_clk(1'd0),.dest_clk (m3_div2_axis_clock), .src_in (m33_tready), .dest_out (m33_tready_r) );
  end
  endgenerate

  generate
  if (use_div2_clk_3 == 0) begin : gen_sync_tready33_div1
    // Synchronize data start onto the AXI streaming clock domain
    assign m33_tready_r = m33_tready;
  end
  endgenerate
    

  assign m33_tdata         = (user_select_33 == 1'b1) ? s33_user_tdata :  m33_tdata_i;
  assign m33_tvalid        = (user_select_33 == 1'b1) ? s33_user_tvalid :  m33_tvalid_i;
  assign m33_tready_i      = (user_select_33 == 1'b1) ? 1'b0 : m33_tready_r;
  assign s33_user_tready = (user_select_33 == 1'b1) ? m33_tready : 1'b0;

//-----------------------------------------------------------------------------
// Control and status registers
//-----------------------------------------------------------------------------
rfdac_exdes_ctrl_rfa # (
  .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
  .C_MEMORY_ADDR_WIDTH(C_MEMORY_ADDR_WIDTH),
  .C_NUM_MEMORY_BLOCK(C_NUM_MEMORY_BLOCK),
  .C_MEM_SIZE(mem_size))
  rfdac_exdes_ctrl_i (
   .dac00_dg_addra               (m00_dg_addra       ), //
   .dac00_dg_wea                 (m00_dg_wea         ), //
   .dac00_dg_ena                 (m00_dg_ena         ), //
   .dac00_dg_dina                (m00_dg_dina        ), //
   .dac00_dg_douta               (m00_dg_douta       ), //
   .dac00_dg_num_samples         (m00_dg_num_samples ), //
   .dac00_dg_enable              (m00_dg_enable_ram  ), //
   .dac01_dg_addra               (m01_dg_addra       ), //
   .dac01_dg_wea                 (m01_dg_wea         ), //
   .dac01_dg_ena                 (m01_dg_ena         ), //
   .dac01_dg_dina                (m01_dg_dina        ), //
   .dac01_dg_douta               (m01_dg_douta       ), //
   .dac01_dg_num_samples         (m01_dg_num_samples ), //
   .dac01_dg_enable              (m01_dg_enable_ram  ), //
   .dac02_dg_addra               (m02_dg_addra       ), //
   .dac02_dg_wea                 (m02_dg_wea         ), //
   .dac02_dg_ena                 (m02_dg_ena         ), //
   .dac02_dg_dina                (m02_dg_dina        ), //
   .dac02_dg_douta               (m02_dg_douta       ), //
   .dac02_dg_num_samples         (m02_dg_num_samples ), //
   .dac02_dg_enable              (m02_dg_enable_ram  ), //
   .dac03_dg_addra               (m03_dg_addra       ), //
   .dac03_dg_wea                 (m03_dg_wea         ), //
   .dac03_dg_ena                 (m03_dg_ena         ), //
   .dac03_dg_dina                (m03_dg_dina        ), //
   .dac03_dg_douta               (m03_dg_douta       ), //
   .dac03_dg_num_samples         (m03_dg_num_samples ), //
   .dac03_dg_enable              (m03_dg_enable_ram  ), //
   .dac10_dg_addra               (m10_dg_addra       ), //
   .dac10_dg_wea                 (m10_dg_wea         ), //
   .dac10_dg_ena                 (m10_dg_ena         ), //
   .dac10_dg_dina                (m10_dg_dina        ), //
   .dac10_dg_douta               (m10_dg_douta       ), //
   .dac10_dg_num_samples         (m10_dg_num_samples ), //
   .dac10_dg_enable              (m10_dg_enable_ram  ), //
   .dac11_dg_addra               (m11_dg_addra       ), //
   .dac11_dg_wea                 (m11_dg_wea         ), //
   .dac11_dg_ena                 (m11_dg_ena         ), //
   .dac11_dg_dina                (m11_dg_dina        ), //
   .dac11_dg_douta               (m11_dg_douta       ), //
   .dac11_dg_num_samples         (m11_dg_num_samples ), //
   .dac11_dg_enable              (m11_dg_enable_ram  ), //
   .dac12_dg_addra               (m12_dg_addra       ), //
   .dac12_dg_wea                 (m12_dg_wea         ), //
   .dac12_dg_ena                 (m12_dg_ena         ), //
   .dac12_dg_dina                (m12_dg_dina        ), //
   .dac12_dg_douta               (m12_dg_douta       ), //
   .dac12_dg_num_samples         (m12_dg_num_samples ), //
   .dac12_dg_enable              (m12_dg_enable_ram  ), //
   .dac13_dg_addra               (m13_dg_addra       ), //
   .dac13_dg_wea                 (m13_dg_wea         ), //
   .dac13_dg_ena                 (m13_dg_ena         ), //
   .dac13_dg_dina                (m13_dg_dina        ), //
   .dac13_dg_douta               (m13_dg_douta       ), //
   .dac13_dg_num_samples         (m13_dg_num_samples ), //
   .dac13_dg_enable              (m13_dg_enable_ram  ), //
   .dac20_dg_addra               (m20_dg_addra       ), //
   .dac20_dg_wea                 (m20_dg_wea         ), //
   .dac20_dg_ena                 (m20_dg_ena         ), //
   .dac20_dg_dina                (m20_dg_dina        ), //
   .dac20_dg_douta               (m20_dg_douta       ), //
   .dac20_dg_num_samples         (m20_dg_num_samples ), //
   .dac20_dg_enable              (m20_dg_enable_ram  ), //
   .dac21_dg_addra               (m21_dg_addra       ), //
   .dac21_dg_wea                 (m21_dg_wea         ), //
   .dac21_dg_ena                 (m21_dg_ena         ), //
   .dac21_dg_dina                (m21_dg_dina        ), //
   .dac21_dg_douta               (m21_dg_douta       ), //
   .dac21_dg_num_samples         (m21_dg_num_samples ), //
   .dac21_dg_enable              (m21_dg_enable_ram  ), //
   .dac22_dg_addra               (m22_dg_addra       ), //
   .dac22_dg_wea                 (m22_dg_wea         ), //
   .dac22_dg_ena                 (m22_dg_ena         ), //
   .dac22_dg_dina                (m22_dg_dina        ), //
   .dac22_dg_douta               (m22_dg_douta       ), //
   .dac22_dg_num_samples         (m22_dg_num_samples ), //
   .dac22_dg_enable              (m22_dg_enable_ram  ), //
   .dac23_dg_addra               (m23_dg_addra       ), //
   .dac23_dg_wea                 (m23_dg_wea         ), //
   .dac23_dg_ena                 (m23_dg_ena         ), //
   .dac23_dg_dina                (m23_dg_dina        ), //
   .dac23_dg_douta               (m23_dg_douta       ), //
   .dac23_dg_num_samples         (m23_dg_num_samples ), //
   .dac23_dg_enable              (m23_dg_enable_ram  ), //
   .dac30_dg_addra               (m30_dg_addra       ), //
   .dac30_dg_wea                 (m30_dg_wea         ), //
   .dac30_dg_ena                 (m30_dg_ena         ), //
   .dac30_dg_dina                (m30_dg_dina        ), //
   .dac30_dg_douta               (m30_dg_douta       ), //
   .dac30_dg_num_samples         (m30_dg_num_samples ), //
   .dac30_dg_enable              (m30_dg_enable_ram  ), //
   .dac31_dg_addra               (m31_dg_addra       ), //
   .dac31_dg_wea                 (m31_dg_wea         ), //
   .dac31_dg_ena                 (m31_dg_ena         ), //
   .dac31_dg_dina                (m31_dg_dina        ), //
   .dac31_dg_douta               (m31_dg_douta       ), //
   .dac31_dg_num_samples         (m31_dg_num_samples ), //
   .dac31_dg_enable              (m31_dg_enable_ram  ), //
   .dac32_dg_addra               (m32_dg_addra       ), //
   .dac32_dg_wea                 (m32_dg_wea         ), //
   .dac32_dg_ena                 (m32_dg_ena         ), //
   .dac32_dg_dina                (m32_dg_dina        ), //
   .dac32_dg_douta               (m32_dg_douta       ), //
   .dac32_dg_num_samples         (m32_dg_num_samples ), //
   .dac32_dg_enable              (m32_dg_enable_ram  ), //
   .dac33_dg_addra               (m33_dg_addra       ), //
   .dac33_dg_wea                 (m33_dg_wea         ), //
   .dac33_dg_ena                 (m33_dg_ena         ), //
   .dac33_dg_dina                (m33_dg_dina        ), //
   .dac33_dg_douta               (m33_dg_douta       ), //
   .dac33_dg_num_samples         (m33_dg_num_samples ), //
   .dac33_dg_enable              (m33_dg_enable_ram  ), //

   .tile_enable                  (tile_enable     ),
   .start_data                   (start_data      ),
   .timeout_enable               (timeout_enable  ),
   .timeout_value                (timeout_value   ),

   .timeout_enable_in            (timeout_enable  ),
   .timeout_value_in             (timeout_value   ),

   .s_axi_aclk                   (s_axi_aclk      ),
   .s_axi_aresetn                (s_axi_aresetn   ),

   .s_axi_awaddr                 (s_axi_awaddr    ),
   .s_axi_awprot                 (3'b111          ),
   .s_axi_awvalid                (s_axi_awvalid   ),
   .s_axi_awready                (s_axi_awready   ),
   .s_axi_wdata                  (s_axi_wdata     ),
   .s_axi_wstrb                  (s_axi_wstrb     ),
   .s_axi_wvalid                 (s_axi_wvalid    ),
   .s_axi_wready                 (s_axi_wready    ),
   .s_axi_bresp                  (s_axi_bresp     ),
   .s_axi_bvalid                 (s_axi_bvalid    ),
   .s_axi_bready                 (s_axi_bready    ),
   .s_axi_araddr                 (s_axi_araddr    ),
   .s_axi_arprot                 (3'b111          ),
   .s_axi_arvalid                (s_axi_arvalid   ),
   .s_axi_arready                (s_axi_arready   ),
   .s_axi_rdata                  (s_axi_rdata     ),
   .s_axi_rresp                  (s_axi_rresp     ),
   .s_axi_rvalid                 (s_axi_rvalid    ),
   .s_axi_rready                 (s_axi_rready    )

);

endmodule
