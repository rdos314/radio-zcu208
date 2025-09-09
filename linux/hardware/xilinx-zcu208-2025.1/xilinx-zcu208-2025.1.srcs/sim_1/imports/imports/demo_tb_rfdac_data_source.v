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
module demo_tb_rfdac_data_source #(
  
  parameter  enable_override          = 1'd1, // 

  parameter  default_signal_type      = 4'h4, //
  parameter  initial_interword_offset = 1     // 

) (

   // AXI-Lite Interface
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR"  *) input  wire [17:0] s_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input  wire        s_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output wire        s_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA"   *) input  wire [31:0] s_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID"  *) input  wire        s_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY"  *) output wire        s_axi_wready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB"   *) input  wire  [3:0] s_axi_wstrb    , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP"   *) output wire  [1:0] s_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID"  *) output wire        s_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY"  *) input  wire        s_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR"  *) input  wire [17:0] s_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input  wire        s_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output wire        s_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA"   *) output wire [31:0] s_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP"   *) output wire  [1:0] s_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID"  *) output wire        s_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY"  *) input  wire        s_axi_rready   , // 

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TDATA" *)       output wire [255:0] m00_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TVALID" *)      output wire         m00_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TREADY" *)      input  wire         m00_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TDATA" *)       output wire [255:0] m01_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TVALID" *)      output wire         m01_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TREADY" *)      input  wire         m01_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TDATA" *)       output wire [255:0] m02_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TVALID" *)      output wire         m02_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TREADY" *)      input  wire         m02_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TDATA" *)       output wire [255:0] m03_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TVALID" *)      output wire         m03_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TREADY" *)      input  wire         m03_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TDATA" *)       output wire [255:0] m10_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TVALID" *)      output wire         m10_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TREADY" *)      input  wire         m10_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TDATA" *)       output wire [255:0] m11_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TVALID" *)      output wire         m11_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TREADY" *)      input  wire         m11_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TDATA" *)       output wire [255:0] m12_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TVALID" *)      output wire         m12_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TREADY" *)      input  wire         m12_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TDATA" *)       output wire [255:0] m13_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TVALID" *)      output wire         m13_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TREADY" *)      input  wire         m13_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TDATA" *)       output wire [255:0] m20_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TVALID" *)      output wire         m20_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TREADY" *)      input  wire         m20_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TDATA" *)       output wire [255:0] m21_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TVALID" *)      output wire         m21_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TREADY" *)      input  wire         m21_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TDATA" *)       output wire [255:0] m22_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TVALID" *)      output wire         m22_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TREADY" *)      input  wire         m22_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TDATA" *)       output wire [255:0] m23_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TVALID" *)      output wire         m23_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TREADY" *)      input  wire         m23_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TDATA" *)       output wire [255:0] m30_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TVALID" *)      output wire         m30_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TREADY" *)      input  wire         m30_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TDATA" *)       output wire [255:0] m31_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TVALID" *)      output wire         m31_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TREADY" *)      input  wire         m31_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TDATA" *)       output wire [255:0] m32_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TVALID" *)      output wire         m32_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TREADY" *)      input  wire         m32_tready,     //

   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TDATA" *)       output wire [255:0] m33_tdata ,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TVALID" *)      output wire         m33_tvalid,     //
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TREADY" *)      input  wire         m33_tready,     //


   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m00:m01:m02:m03" *)
   input  wire           m0_axis_clock, //
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m1_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m10:m11:m12:m13" *)
   input  wire           m1_axis_clock, //
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m2_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m20:m21:m22:m23" *)
   input  wire           m2_axis_clock, //
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m3_axis_clock CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m30:m31:m32:m33" *)
   input  wire           m3_axis_clock, //
   // AXI-Lite Clock/Reset. Be explicit with the IPI interface declarations
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axi" *)
   input  wire           s_axi_aclk   ,
   (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
   (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
   input  wire           s_axi_aresetn
  
  );

// ----------------------------------------------------------------------------
// Local params
// ----------------------------------------------------------------------------
localparam  p_useable_w         = 16; // 
localparam  p_increment_w       = 7;  // 
localparam  p_data_inc_val_init = 1;  // 
localparam  p_data_type_width   = 4;  // 
localparam  p_init_incval       = 8;  // 
localparam  p_con_w             = 16; //

// ----------------------------------------------------------------------------
// Wire declarations
// ----------------------------------------------------------------------------
wire                            enable;
wire                            timeout_enable;
wire                     [11:0] timeout_value;
wire                     [3:0] axis_resetn_rt;
(* ASYNC_REG = "TRUE" *) reg [5:0] s_axi_aresetn_r [3:0];
wire                     [15:0] m00_dg_enable; //
wire                      [7:0] m00_dg_control;//
wire        [p_increment_w-1:0] m00_dg_inc   ; //
wire                    [255:0] m00_dg_init  ; //
wire                    [255:0] m00_dg_init_i; //
wire    [p_data_type_width-1:0] m00_dg_type  ; //

wire                            m00_dg_pulse_control_0;//
wire                     [15:0] m00_dg_i_value_0      ;//
wire                     [15:0] m00_dg_q_value_0      ;//
wire                      [2:0] m00_dg_mult_control_0 ;//

wire                     [15:0] m01_dg_enable; //
wire                      [7:0] m01_dg_control;//
wire        [p_increment_w-1:0] m01_dg_inc   ; //
wire                    [255:0] m01_dg_init  ; //
wire                    [255:0] m01_dg_init_i; //
wire    [p_data_type_width-1:0] m01_dg_type  ; //

wire                            m01_dg_pulse_control_0;//
wire                     [15:0] m01_dg_i_value_0      ;//
wire                     [15:0] m01_dg_q_value_0      ;//
wire                      [2:0] m01_dg_mult_control_0 ;//

wire                     [15:0] m02_dg_enable; //
wire                      [7:0] m02_dg_control;//
wire        [p_increment_w-1:0] m02_dg_inc   ; //
wire                    [255:0] m02_dg_init  ; //
wire                    [255:0] m02_dg_init_i; //
wire    [p_data_type_width-1:0] m02_dg_type  ; //

wire                            m02_dg_pulse_control_0;//
wire                     [15:0] m02_dg_i_value_0      ;//
wire                     [15:0] m02_dg_q_value_0      ;//
wire                      [2:0] m02_dg_mult_control_0 ;//

wire                     [15:0] m03_dg_enable; //
wire                      [7:0] m03_dg_control;//
wire        [p_increment_w-1:0] m03_dg_inc   ; //
wire                    [255:0] m03_dg_init  ; //
wire                    [255:0] m03_dg_init_i; //
wire    [p_data_type_width-1:0] m03_dg_type  ; //

wire                            m03_dg_pulse_control_0;//
wire                     [15:0] m03_dg_i_value_0      ;//
wire                     [15:0] m03_dg_q_value_0      ;//
wire                      [2:0] m03_dg_mult_control_0 ;//

wire                     [15:0] m10_dg_enable; //
wire                      [7:0] m10_dg_control;//
wire        [p_increment_w-1:0] m10_dg_inc   ; //
wire                    [255:0] m10_dg_init  ; //
wire                    [255:0] m10_dg_init_i; //
wire    [p_data_type_width-1:0] m10_dg_type  ; //

wire                            m10_dg_pulse_control_0;//
wire                     [15:0] m10_dg_i_value_0      ;//
wire                     [15:0] m10_dg_q_value_0      ;//
wire                      [2:0] m10_dg_mult_control_0 ;//

wire                     [15:0] m11_dg_enable; //
wire                      [7:0] m11_dg_control;//
wire        [p_increment_w-1:0] m11_dg_inc   ; //
wire                    [255:0] m11_dg_init  ; //
wire                    [255:0] m11_dg_init_i; //
wire    [p_data_type_width-1:0] m11_dg_type  ; //

wire                            m11_dg_pulse_control_0;//
wire                     [15:0] m11_dg_i_value_0      ;//
wire                     [15:0] m11_dg_q_value_0      ;//
wire                      [2:0] m11_dg_mult_control_0 ;//

wire                     [15:0] m12_dg_enable; //
wire                      [7:0] m12_dg_control;//
wire        [p_increment_w-1:0] m12_dg_inc   ; //
wire                    [255:0] m12_dg_init  ; //
wire                    [255:0] m12_dg_init_i; //
wire    [p_data_type_width-1:0] m12_dg_type  ; //

wire                            m12_dg_pulse_control_0;//
wire                     [15:0] m12_dg_i_value_0      ;//
wire                     [15:0] m12_dg_q_value_0      ;//
wire                      [2:0] m12_dg_mult_control_0 ;//

wire                     [15:0] m13_dg_enable; //
wire                      [7:0] m13_dg_control;//
wire        [p_increment_w-1:0] m13_dg_inc   ; //
wire                    [255:0] m13_dg_init  ; //
wire                    [255:0] m13_dg_init_i; //
wire    [p_data_type_width-1:0] m13_dg_type  ; //

wire                            m13_dg_pulse_control_0;//
wire                     [15:0] m13_dg_i_value_0      ;//
wire                     [15:0] m13_dg_q_value_0      ;//
wire                      [2:0] m13_dg_mult_control_0 ;//

wire                     [15:0] m20_dg_enable; //
wire                      [7:0] m20_dg_control;//
wire        [p_increment_w-1:0] m20_dg_inc   ; //
wire                    [255:0] m20_dg_init  ; //
wire                    [255:0] m20_dg_init_i; //
wire    [p_data_type_width-1:0] m20_dg_type  ; //

wire                            m20_dg_pulse_control_0;//
wire                     [15:0] m20_dg_i_value_0      ;//
wire                     [15:0] m20_dg_q_value_0      ;//
wire                      [2:0] m20_dg_mult_control_0 ;//

wire                     [15:0] m21_dg_enable; //
wire                      [7:0] m21_dg_control;//
wire        [p_increment_w-1:0] m21_dg_inc   ; //
wire                    [255:0] m21_dg_init  ; //
wire                    [255:0] m21_dg_init_i; //
wire    [p_data_type_width-1:0] m21_dg_type  ; //

wire                            m21_dg_pulse_control_0;//
wire                     [15:0] m21_dg_i_value_0      ;//
wire                     [15:0] m21_dg_q_value_0      ;//
wire                      [2:0] m21_dg_mult_control_0 ;//

wire                     [15:0] m22_dg_enable; //
wire                      [7:0] m22_dg_control;//
wire        [p_increment_w-1:0] m22_dg_inc   ; //
wire                    [255:0] m22_dg_init  ; //
wire                    [255:0] m22_dg_init_i; //
wire    [p_data_type_width-1:0] m22_dg_type  ; //

wire                            m22_dg_pulse_control_0;//
wire                     [15:0] m22_dg_i_value_0      ;//
wire                     [15:0] m22_dg_q_value_0      ;//
wire                      [2:0] m22_dg_mult_control_0 ;//

wire                     [15:0] m23_dg_enable; //
wire                      [7:0] m23_dg_control;//
wire        [p_increment_w-1:0] m23_dg_inc   ; //
wire                    [255:0] m23_dg_init  ; //
wire                    [255:0] m23_dg_init_i; //
wire    [p_data_type_width-1:0] m23_dg_type  ; //

wire                            m23_dg_pulse_control_0;//
wire                     [15:0] m23_dg_i_value_0      ;//
wire                     [15:0] m23_dg_q_value_0      ;//
wire                      [2:0] m23_dg_mult_control_0 ;//

wire                     [15:0] m30_dg_enable; //
wire                      [7:0] m30_dg_control;//
wire        [p_increment_w-1:0] m30_dg_inc   ; //
wire                    [255:0] m30_dg_init  ; //
wire                    [255:0] m30_dg_init_i; //
wire    [p_data_type_width-1:0] m30_dg_type  ; //

wire                            m30_dg_pulse_control_0;//
wire                     [15:0] m30_dg_i_value_0      ;//
wire                     [15:0] m30_dg_q_value_0      ;//
wire                      [2:0] m30_dg_mult_control_0 ;//

wire                     [15:0] m31_dg_enable; //
wire                      [7:0] m31_dg_control;//
wire        [p_increment_w-1:0] m31_dg_inc   ; //
wire                    [255:0] m31_dg_init  ; //
wire                    [255:0] m31_dg_init_i; //
wire    [p_data_type_width-1:0] m31_dg_type  ; //

wire                            m31_dg_pulse_control_0;//
wire                     [15:0] m31_dg_i_value_0      ;//
wire                     [15:0] m31_dg_q_value_0      ;//
wire                      [2:0] m31_dg_mult_control_0 ;//

wire                     [15:0] m32_dg_enable; //
wire                      [7:0] m32_dg_control;//
wire        [p_increment_w-1:0] m32_dg_inc   ; //
wire                    [255:0] m32_dg_init  ; //
wire                    [255:0] m32_dg_init_i; //
wire    [p_data_type_width-1:0] m32_dg_type  ; //

wire                            m32_dg_pulse_control_0;//
wire                     [15:0] m32_dg_i_value_0      ;//
wire                     [15:0] m32_dg_q_value_0      ;//
wire                      [2:0] m32_dg_mult_control_0 ;//

wire                     [15:0] m33_dg_enable; //
wire                      [7:0] m33_dg_control;//
wire        [p_increment_w-1:0] m33_dg_inc   ; //
wire                    [255:0] m33_dg_init  ; //
wire                    [255:0] m33_dg_init_i; //
wire    [p_data_type_width-1:0] m33_dg_type  ; //

wire                            m33_dg_pulse_control_0;//
wire                     [15:0] m33_dg_i_value_0      ;//
wire                     [15:0] m33_dg_q_value_0      ;//
wire                      [2:0] m33_dg_mult_control_0 ;//


`ifndef DACEXDES_ENABLETYPE_SELECTION
assign m00_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m00_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m00_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m00_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m00_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m00_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m00_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m00_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m00_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m00_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m00_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m00_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m00_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m00_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m00_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m00_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m01_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m01_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m01_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m01_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m01_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m01_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m01_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m01_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m01_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m01_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m01_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m01_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m01_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m01_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m01_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m01_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m02_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m02_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m02_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m02_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m02_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m02_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m02_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m02_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m02_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m02_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m02_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m02_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m02_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m02_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m02_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m02_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m03_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m03_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m03_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m03_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m03_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m03_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m03_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m03_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m03_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m03_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m03_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m03_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m03_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m03_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m03_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m03_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m10_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m10_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m10_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m10_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m10_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m10_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m10_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m10_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m10_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m10_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m10_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m10_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m10_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m10_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m10_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m10_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m11_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m11_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m11_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m11_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m11_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m11_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m11_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m11_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m11_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m11_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m11_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m11_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m11_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m11_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m11_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m11_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m12_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m12_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m12_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m12_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m12_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m12_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m12_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m12_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m12_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m12_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m12_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m12_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m12_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m12_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m12_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m12_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m13_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m13_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m13_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m13_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m13_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m13_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m13_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m13_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m13_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m13_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m13_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m13_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m13_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m13_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m13_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m13_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m20_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m20_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m20_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m20_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m20_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m20_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m20_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m20_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m20_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m20_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m20_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m20_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m20_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m20_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m20_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m20_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m21_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m21_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m21_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m21_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m21_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m21_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m21_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m21_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m21_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m21_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m21_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m21_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m21_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m21_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m21_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m21_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m22_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m22_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m22_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m22_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m22_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m22_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m22_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m22_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m22_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m22_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m22_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m22_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m22_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m22_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m22_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m22_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m23_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m23_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m23_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m23_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m23_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m23_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m23_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m23_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m23_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m23_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m23_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m23_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m23_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m23_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m23_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m23_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m30_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m30_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m30_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m30_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m30_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m30_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m30_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m30_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m30_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m30_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m30_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m30_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m30_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m30_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m30_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m30_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m31_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m31_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m31_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m31_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m31_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m31_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m31_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m31_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m31_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m31_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m31_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m31_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m31_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m31_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m31_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m31_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m32_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m32_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m32_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m32_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m32_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m32_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m32_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m32_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m32_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m32_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m32_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m32_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m32_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m32_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m32_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m32_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
assign m33_dg_init[(16* 1) - 1 : (16* 0)]  = ( 0 * initial_interword_offset ) + 32;
assign m33_dg_init[(16* 2) - 1 : (16* 1)]  =   0 * initial_interword_offset;
      
assign m33_dg_init[(16* 3) - 1 : (16* 2)]  = ( 1 * initial_interword_offset ) + 32;
assign m33_dg_init[(16* 4) - 1 : (16* 3)]  =   1 * initial_interword_offset;
      
assign m33_dg_init[(16* 5) - 1 : (16* 4)]  = ( 2 * initial_interword_offset ) + 32;
assign m33_dg_init[(16* 6) - 1 : (16* 5)]  =   2 * initial_interword_offset;
      
assign m33_dg_init[(16* 7) - 1 : (16* 6)]  = ( 3 * initial_interword_offset ) + 32;
assign m33_dg_init[(16* 8) - 1 : (16* 7)]  =   3 * initial_interword_offset;
      
assign m33_dg_init[(16* 9) - 1 : (16* 8)]  = ( 4 * initial_interword_offset ) + 32;
assign m33_dg_init[(16*10) - 1 : (16* 9)]  =   4 * initial_interword_offset;
      
assign m33_dg_init[(16*11) - 1 : (16*10)]  = ( 5 * initial_interword_offset ) + 32;
assign m33_dg_init[(16*12) - 1 : (16*11)]  =   5 * initial_interword_offset;
      
assign m33_dg_init[(16*13) - 1 : (16*12)]  = ( 6 * initial_interword_offset ) + 32;
assign m33_dg_init[(16*14) - 1 : (16*13)]  =   6 * initial_interword_offset;
      
assign m33_dg_init[(16*15) - 1 : (16*14)]  = ( 7 * initial_interword_offset ) + 32;
assign m33_dg_init[(16*16) - 1 : (16*15)]  =   7 * initial_interword_offset;
      
`endif

dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_00 (

   .clk       ( m0_axis_clock ),
   .dg_enable ( m00_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m00_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m00_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m00_dg_init      ),
   .dg_control( m00_dg_control   ), //

   .dg_tdata  ( m00_tdata        ),
   .dg_tvalid ( m00_tvalid       ),
   .dg_tready ( m00_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_01 (

   .clk       ( m0_axis_clock ),
   .dg_enable ( m01_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m01_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m01_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m01_dg_init      ),
   .dg_control( m01_dg_control   ), //

   .dg_tdata  ( m01_tdata        ),
   .dg_tvalid ( m01_tvalid       ),
   .dg_tready ( m01_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_02 (

   .clk       ( m0_axis_clock ),
   .dg_enable ( m02_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m02_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m02_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m02_dg_init      ),
   .dg_control( m02_dg_control   ), //

   .dg_tdata  ( m02_tdata        ),
   .dg_tvalid ( m02_tvalid       ),
   .dg_tready ( m02_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_03 (

   .clk       ( m0_axis_clock ),
   .dg_enable ( m03_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m03_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m03_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m03_dg_init      ),
   .dg_control( m03_dg_control   ), //

   .dg_tdata  ( m03_tdata        ),
   .dg_tvalid ( m03_tvalid       ),
   .dg_tready ( m03_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_10 (

   .clk       ( m1_axis_clock ),
   .dg_enable ( m10_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m10_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m10_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m10_dg_init      ),
   .dg_control( m10_dg_control   ), //

   .dg_tdata  ( m10_tdata        ),
   .dg_tvalid ( m10_tvalid       ),
   .dg_tready ( m10_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_11 (

   .clk       ( m1_axis_clock ),
   .dg_enable ( m11_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m11_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m11_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m11_dg_init      ),
   .dg_control( m11_dg_control   ), //

   .dg_tdata  ( m11_tdata        ),
   .dg_tvalid ( m11_tvalid       ),
   .dg_tready ( m11_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_12 (

   .clk       ( m1_axis_clock ),
   .dg_enable ( m12_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m12_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m12_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m12_dg_init      ),
   .dg_control( m12_dg_control   ), //

   .dg_tdata  ( m12_tdata        ),
   .dg_tvalid ( m12_tvalid       ),
   .dg_tready ( m12_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_13 (

   .clk       ( m1_axis_clock ),
   .dg_enable ( m13_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m13_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m13_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m13_dg_init      ),
   .dg_control( m13_dg_control   ), //

   .dg_tdata  ( m13_tdata        ),
   .dg_tvalid ( m13_tvalid       ),
   .dg_tready ( m13_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_20 (

   .clk       ( m2_axis_clock ),
   .dg_enable ( m20_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m20_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m20_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m20_dg_init      ),
   .dg_control( m20_dg_control   ), //

   .dg_tdata  ( m20_tdata        ),
   .dg_tvalid ( m20_tvalid       ),
   .dg_tready ( m20_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_21 (

   .clk       ( m2_axis_clock ),
   .dg_enable ( m21_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m21_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m21_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m21_dg_init      ),
   .dg_control( m21_dg_control   ), //

   .dg_tdata  ( m21_tdata        ),
   .dg_tvalid ( m21_tvalid       ),
   .dg_tready ( m21_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_22 (

   .clk       ( m2_axis_clock ),
   .dg_enable ( m22_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m22_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m22_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m22_dg_init      ),
   .dg_control( m22_dg_control   ), //

   .dg_tdata  ( m22_tdata        ),
   .dg_tvalid ( m22_tvalid       ),
   .dg_tready ( m22_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_23 (

   .clk       ( m2_axis_clock ),
   .dg_enable ( m23_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m23_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m23_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m23_dg_init      ),
   .dg_control( m23_dg_control   ), //

   .dg_tdata  ( m23_tdata        ),
   .dg_tvalid ( m23_tvalid       ),
   .dg_tready ( m23_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_30 (

   .clk       ( m3_axis_clock ),
   .dg_enable ( m30_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m30_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m30_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m30_dg_init      ),
   .dg_control( m30_dg_control   ), //

   .dg_tdata  ( m30_tdata        ),
   .dg_tvalid ( m30_tvalid       ),
   .dg_tready ( m30_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_31 (

   .clk       ( m3_axis_clock ),
   .dg_enable ( m31_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m31_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m31_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m31_dg_init      ),
   .dg_control( m31_dg_control   ), //

   .dg_tdata  ( m31_tdata        ),
   .dg_tvalid ( m31_tvalid       ),
   .dg_tready ( m31_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_32 (

   .clk       ( m3_axis_clock ),
   .dg_enable ( m32_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m32_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m32_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m32_dg_init      ),
   .dg_control( m32_dg_control   ), //

   .dg_tdata  ( m32_tdata        ),
   .dg_tvalid ( m32_tvalid       ),
   .dg_tready ( m32_tready       )

);
dg_slice #(
   
  .p_cons        (16),
  .p_con_w       (p_con_w),
  .p_useable_w   (p_useable_w),
  .p_increment_w (p_increment_w),
  .p_data_type_w (p_data_type_width)

) dg_slice_33 (

   .clk       ( m3_axis_clock ),
   .dg_enable ( m33_dg_enable[15:0] | {16{enable_override}}),
   .dg_inc    ( m33_dg_inc       ),
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dg_type   ( m33_dg_type      ),
`else
   .dg_type   ( default_signal_type   ),
`endif
   .dg_init   ( m33_dg_init      ),
   .dg_control( m33_dg_control   ), //

   .dg_tdata  ( m33_tdata        ),
   .dg_tvalid ( m33_tvalid       ),
   .dg_tready ( m33_tready       )

);

//-----------------------------------------------------------------------------
// Retime the AXIS resets for each tile
//-----------------------------------------------------------------------------
always @(posedge m0_axis_clock) begin
  s_axi_aresetn_r[0][5:1] <= s_axi_aresetn_r[0][4:0];
  s_axi_aresetn_r[0][0]   <= s_axi_aresetn;
end
assign axis_resetn_rt[0] = s_axi_aresetn_r[0][5];
always @(posedge m1_axis_clock) begin
  s_axi_aresetn_r[1][5:1] <= s_axi_aresetn_r[1][4:0];
  s_axi_aresetn_r[1][0]   <= s_axi_aresetn;
end
assign axis_resetn_rt[1] = s_axi_aresetn_r[1][5];
always @(posedge m2_axis_clock) begin
  s_axi_aresetn_r[2][5:1] <= s_axi_aresetn_r[2][4:0];
  s_axi_aresetn_r[2][0]   <= s_axi_aresetn;
end
assign axis_resetn_rt[2] = s_axi_aresetn_r[2][5];
always @(posedge m3_axis_clock) begin
  s_axi_aresetn_r[3][5:1] <= s_axi_aresetn_r[3][4:0];
  s_axi_aresetn_r[3][0]   <= s_axi_aresetn;
end
assign axis_resetn_rt[3] = s_axi_aresetn_r[3][5];

//-----------------------------------------------------------------------------
// Control and status registers
//-----------------------------------------------------------------------------
rfdac_source_demo_tb_ctrl rfdac_demo_tb_ctrl_i (
   .dac00_dg_enable_0            (m00_dg_enable ), //
   .dac00_dg_inc_0               (m00_dg_inc    ), //
   .dac00_dg_inc_0_pdef          (7'd8), //
   .dac00_dg_type_0              (m00_dg_type   ), //
   .dac00_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac00_dg_init_0              (m00_dg_init_i   ), //
`else
   .dac00_dg_init_0              (), //
`endif
   .dac00_dg_control_0           (m00_dg_control), //
   .dac00_dg_control_0_pdef      (8'd0), //
   .dac00_dg_pulse_control_0     (m00_dg_pulse_control_0), //
   .dac00_dg_i_value_0           (m00_dg_i_value_0      ), //
   .dac00_dg_q_value_0           (m00_dg_q_value_0      ), //
   .dac00_dg_mult_control_0      (m00_dg_mult_control_0 ), //
   .dac00_dg_i_value_0_pdef      (16'd0), //
   .dac00_dg_q_value_0_pdef      (16'd0), //
   .dac00_dg_mult_control_0_pdef (3'd0),  //

   .dac01_dg_enable_0            (m01_dg_enable ), //
   .dac01_dg_inc_0               (m01_dg_inc    ), //
   .dac01_dg_inc_0_pdef          (7'd8), //
   .dac01_dg_type_0              (m01_dg_type   ), //
   .dac01_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac01_dg_init_0              (m01_dg_init_i   ), //
`else
   .dac01_dg_init_0              (), //
`endif
   .dac01_dg_control_0           (m01_dg_control), //
   .dac01_dg_control_0_pdef      (8'd0), //
   .dac01_dg_pulse_control_0     (m01_dg_pulse_control_0), //
   .dac01_dg_i_value_0           (m01_dg_i_value_0      ), //
   .dac01_dg_q_value_0           (m01_dg_q_value_0      ), //
   .dac01_dg_mult_control_0      (m01_dg_mult_control_0 ), //
   .dac01_dg_i_value_0_pdef      (16'd0), //
   .dac01_dg_q_value_0_pdef      (16'd0), //
   .dac01_dg_mult_control_0_pdef (3'd0),  //

   .dac02_dg_enable_0            (m02_dg_enable ), //
   .dac02_dg_inc_0               (m02_dg_inc    ), //
   .dac02_dg_inc_0_pdef          (7'd8), //
   .dac02_dg_type_0              (m02_dg_type   ), //
   .dac02_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac02_dg_init_0              (m02_dg_init_i   ), //
`else
   .dac02_dg_init_0              (), //
`endif
   .dac02_dg_control_0           (m02_dg_control), //
   .dac02_dg_control_0_pdef      (8'd0), //
   .dac02_dg_pulse_control_0     (m02_dg_pulse_control_0), //
   .dac02_dg_i_value_0           (m02_dg_i_value_0      ), //
   .dac02_dg_q_value_0           (m02_dg_q_value_0      ), //
   .dac02_dg_mult_control_0      (m02_dg_mult_control_0 ), //
   .dac02_dg_i_value_0_pdef      (16'd0), //
   .dac02_dg_q_value_0_pdef      (16'd0), //
   .dac02_dg_mult_control_0_pdef (3'd0),  //

   .dac03_dg_enable_0            (m03_dg_enable ), //
   .dac03_dg_inc_0               (m03_dg_inc    ), //
   .dac03_dg_inc_0_pdef          (7'd8), //
   .dac03_dg_type_0              (m03_dg_type   ), //
   .dac03_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac03_dg_init_0              (m03_dg_init_i   ), //
`else
   .dac03_dg_init_0              (), //
`endif
   .dac03_dg_control_0           (m03_dg_control), //
   .dac03_dg_control_0_pdef      (8'd0), //
   .dac03_dg_pulse_control_0     (m03_dg_pulse_control_0), //
   .dac03_dg_i_value_0           (m03_dg_i_value_0      ), //
   .dac03_dg_q_value_0           (m03_dg_q_value_0      ), //
   .dac03_dg_mult_control_0      (m03_dg_mult_control_0 ), //
   .dac03_dg_i_value_0_pdef      (16'd0), //
   .dac03_dg_q_value_0_pdef      (16'd0), //
   .dac03_dg_mult_control_0_pdef (3'd0),  //

   .dac10_dg_enable_0            (m10_dg_enable ), //
   .dac10_dg_inc_0               (m10_dg_inc    ), //
   .dac10_dg_inc_0_pdef          (7'd8), //
   .dac10_dg_type_0              (m10_dg_type   ), //
   .dac10_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac10_dg_init_0              (m10_dg_init_i   ), //
`else
   .dac10_dg_init_0              (), //
`endif
   .dac10_dg_control_0           (m10_dg_control), //
   .dac10_dg_control_0_pdef      (8'd0), //
   .dac10_dg_pulse_control_0     (m10_dg_pulse_control_0), //
   .dac10_dg_i_value_0           (m10_dg_i_value_0      ), //
   .dac10_dg_q_value_0           (m10_dg_q_value_0      ), //
   .dac10_dg_mult_control_0      (m10_dg_mult_control_0 ), //
   .dac10_dg_i_value_0_pdef      (16'd0), //
   .dac10_dg_q_value_0_pdef      (16'd0), //
   .dac10_dg_mult_control_0_pdef (3'd0),  //

   .dac11_dg_enable_0            (m11_dg_enable ), //
   .dac11_dg_inc_0               (m11_dg_inc    ), //
   .dac11_dg_inc_0_pdef          (7'd8), //
   .dac11_dg_type_0              (m11_dg_type   ), //
   .dac11_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac11_dg_init_0              (m11_dg_init_i   ), //
`else
   .dac11_dg_init_0              (), //
`endif
   .dac11_dg_control_0           (m11_dg_control), //
   .dac11_dg_control_0_pdef      (8'd0), //
   .dac11_dg_pulse_control_0     (m11_dg_pulse_control_0), //
   .dac11_dg_i_value_0           (m11_dg_i_value_0      ), //
   .dac11_dg_q_value_0           (m11_dg_q_value_0      ), //
   .dac11_dg_mult_control_0      (m11_dg_mult_control_0 ), //
   .dac11_dg_i_value_0_pdef      (16'd0), //
   .dac11_dg_q_value_0_pdef      (16'd0), //
   .dac11_dg_mult_control_0_pdef (3'd0),  //

   .dac12_dg_enable_0            (m12_dg_enable ), //
   .dac12_dg_inc_0               (m12_dg_inc    ), //
   .dac12_dg_inc_0_pdef          (7'd8), //
   .dac12_dg_type_0              (m12_dg_type   ), //
   .dac12_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac12_dg_init_0              (m12_dg_init_i   ), //
`else
   .dac12_dg_init_0              (), //
`endif
   .dac12_dg_control_0           (m12_dg_control), //
   .dac12_dg_control_0_pdef      (8'd0), //
   .dac12_dg_pulse_control_0     (m12_dg_pulse_control_0), //
   .dac12_dg_i_value_0           (m12_dg_i_value_0      ), //
   .dac12_dg_q_value_0           (m12_dg_q_value_0      ), //
   .dac12_dg_mult_control_0      (m12_dg_mult_control_0 ), //
   .dac12_dg_i_value_0_pdef      (16'd0), //
   .dac12_dg_q_value_0_pdef      (16'd0), //
   .dac12_dg_mult_control_0_pdef (3'd0),  //

   .dac13_dg_enable_0            (m13_dg_enable ), //
   .dac13_dg_inc_0               (m13_dg_inc    ), //
   .dac13_dg_inc_0_pdef          (7'd8), //
   .dac13_dg_type_0              (m13_dg_type   ), //
   .dac13_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac13_dg_init_0              (m13_dg_init_i   ), //
`else
   .dac13_dg_init_0              (), //
`endif
   .dac13_dg_control_0           (m13_dg_control), //
   .dac13_dg_control_0_pdef      (8'd0), //
   .dac13_dg_pulse_control_0     (m13_dg_pulse_control_0), //
   .dac13_dg_i_value_0           (m13_dg_i_value_0      ), //
   .dac13_dg_q_value_0           (m13_dg_q_value_0      ), //
   .dac13_dg_mult_control_0      (m13_dg_mult_control_0 ), //
   .dac13_dg_i_value_0_pdef      (16'd0), //
   .dac13_dg_q_value_0_pdef      (16'd0), //
   .dac13_dg_mult_control_0_pdef (3'd0),  //

   .dac20_dg_enable_0            (m20_dg_enable ), //
   .dac20_dg_inc_0               (m20_dg_inc    ), //
   .dac20_dg_inc_0_pdef          (7'd8), //
   .dac20_dg_type_0              (m20_dg_type   ), //
   .dac20_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac20_dg_init_0              (m20_dg_init_i   ), //
`else
   .dac20_dg_init_0              (), //
`endif
   .dac20_dg_control_0           (m20_dg_control), //
   .dac20_dg_control_0_pdef      (8'd0), //
   .dac20_dg_pulse_control_0     (m20_dg_pulse_control_0), //
   .dac20_dg_i_value_0           (m20_dg_i_value_0      ), //
   .dac20_dg_q_value_0           (m20_dg_q_value_0      ), //
   .dac20_dg_mult_control_0      (m20_dg_mult_control_0 ), //
   .dac20_dg_i_value_0_pdef      (16'd0), //
   .dac20_dg_q_value_0_pdef      (16'd0), //
   .dac20_dg_mult_control_0_pdef (3'd0),  //

   .dac21_dg_enable_0            (m21_dg_enable ), //
   .dac21_dg_inc_0               (m21_dg_inc    ), //
   .dac21_dg_inc_0_pdef          (7'd8), //
   .dac21_dg_type_0              (m21_dg_type   ), //
   .dac21_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac21_dg_init_0              (m21_dg_init_i   ), //
`else
   .dac21_dg_init_0              (), //
`endif
   .dac21_dg_control_0           (m21_dg_control), //
   .dac21_dg_control_0_pdef      (8'd0), //
   .dac21_dg_pulse_control_0     (m21_dg_pulse_control_0), //
   .dac21_dg_i_value_0           (m21_dg_i_value_0      ), //
   .dac21_dg_q_value_0           (m21_dg_q_value_0      ), //
   .dac21_dg_mult_control_0      (m21_dg_mult_control_0 ), //
   .dac21_dg_i_value_0_pdef      (16'd0), //
   .dac21_dg_q_value_0_pdef      (16'd0), //
   .dac21_dg_mult_control_0_pdef (3'd0),  //

   .dac22_dg_enable_0            (m22_dg_enable ), //
   .dac22_dg_inc_0               (m22_dg_inc    ), //
   .dac22_dg_inc_0_pdef          (7'd8), //
   .dac22_dg_type_0              (m22_dg_type   ), //
   .dac22_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac22_dg_init_0              (m22_dg_init_i   ), //
`else
   .dac22_dg_init_0              (), //
`endif
   .dac22_dg_control_0           (m22_dg_control), //
   .dac22_dg_control_0_pdef      (8'd0), //
   .dac22_dg_pulse_control_0     (m22_dg_pulse_control_0), //
   .dac22_dg_i_value_0           (m22_dg_i_value_0      ), //
   .dac22_dg_q_value_0           (m22_dg_q_value_0      ), //
   .dac22_dg_mult_control_0      (m22_dg_mult_control_0 ), //
   .dac22_dg_i_value_0_pdef      (16'd0), //
   .dac22_dg_q_value_0_pdef      (16'd0), //
   .dac22_dg_mult_control_0_pdef (3'd0),  //

   .dac23_dg_enable_0            (m23_dg_enable ), //
   .dac23_dg_inc_0               (m23_dg_inc    ), //
   .dac23_dg_inc_0_pdef          (7'd8), //
   .dac23_dg_type_0              (m23_dg_type   ), //
   .dac23_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac23_dg_init_0              (m23_dg_init_i   ), //
`else
   .dac23_dg_init_0              (), //
`endif
   .dac23_dg_control_0           (m23_dg_control), //
   .dac23_dg_control_0_pdef      (8'd0), //
   .dac23_dg_pulse_control_0     (m23_dg_pulse_control_0), //
   .dac23_dg_i_value_0           (m23_dg_i_value_0      ), //
   .dac23_dg_q_value_0           (m23_dg_q_value_0      ), //
   .dac23_dg_mult_control_0      (m23_dg_mult_control_0 ), //
   .dac23_dg_i_value_0_pdef      (16'd0), //
   .dac23_dg_q_value_0_pdef      (16'd0), //
   .dac23_dg_mult_control_0_pdef (3'd0),  //

   .dac30_dg_enable_0            (m30_dg_enable ), //
   .dac30_dg_inc_0               (m30_dg_inc    ), //
   .dac30_dg_inc_0_pdef          (7'd8), //
   .dac30_dg_type_0              (m30_dg_type   ), //
   .dac30_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac30_dg_init_0              (m30_dg_init_i   ), //
`else
   .dac30_dg_init_0              (), //
`endif
   .dac30_dg_control_0           (m30_dg_control), //
   .dac30_dg_control_0_pdef      (8'd0), //
   .dac30_dg_pulse_control_0     (m30_dg_pulse_control_0), //
   .dac30_dg_i_value_0           (m30_dg_i_value_0      ), //
   .dac30_dg_q_value_0           (m30_dg_q_value_0      ), //
   .dac30_dg_mult_control_0      (m30_dg_mult_control_0 ), //
   .dac30_dg_i_value_0_pdef      (16'd0), //
   .dac30_dg_q_value_0_pdef      (16'd0), //
   .dac30_dg_mult_control_0_pdef (3'd0),  //

   .dac31_dg_enable_0            (m31_dg_enable ), //
   .dac31_dg_inc_0               (m31_dg_inc    ), //
   .dac31_dg_inc_0_pdef          (7'd8), //
   .dac31_dg_type_0              (m31_dg_type   ), //
   .dac31_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac31_dg_init_0              (m31_dg_init_i   ), //
`else
   .dac31_dg_init_0              (), //
`endif
   .dac31_dg_control_0           (m31_dg_control), //
   .dac31_dg_control_0_pdef      (8'd0), //
   .dac31_dg_pulse_control_0     (m31_dg_pulse_control_0), //
   .dac31_dg_i_value_0           (m31_dg_i_value_0      ), //
   .dac31_dg_q_value_0           (m31_dg_q_value_0      ), //
   .dac31_dg_mult_control_0      (m31_dg_mult_control_0 ), //
   .dac31_dg_i_value_0_pdef      (16'd0), //
   .dac31_dg_q_value_0_pdef      (16'd0), //
   .dac31_dg_mult_control_0_pdef (3'd0),  //

   .dac32_dg_enable_0            (m32_dg_enable ), //
   .dac32_dg_inc_0               (m32_dg_inc    ), //
   .dac32_dg_inc_0_pdef          (7'd8), //
   .dac32_dg_type_0              (m32_dg_type   ), //
   .dac32_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac32_dg_init_0              (m32_dg_init_i   ), //
`else
   .dac32_dg_init_0              (), //
`endif
   .dac32_dg_control_0           (m32_dg_control), //
   .dac32_dg_control_0_pdef      (8'd0), //
   .dac32_dg_pulse_control_0     (m32_dg_pulse_control_0), //
   .dac32_dg_i_value_0           (m32_dg_i_value_0      ), //
   .dac32_dg_q_value_0           (m32_dg_q_value_0      ), //
   .dac32_dg_mult_control_0      (m32_dg_mult_control_0 ), //
   .dac32_dg_i_value_0_pdef      (16'd0), //
   .dac32_dg_q_value_0_pdef      (16'd0), //
   .dac32_dg_mult_control_0_pdef (3'd0),  //

   .dac33_dg_enable_0            (m33_dg_enable ), //
   .dac33_dg_inc_0               (m33_dg_inc    ), //
   .dac33_dg_inc_0_pdef          (7'd8), //
   .dac33_dg_type_0              (m33_dg_type   ), //
   .dac33_dg_type_0_pdef         ( default_signal_type ), //
`ifdef DACEXDES_ENABLETYPE_SELECTION
   .dac33_dg_init_0              (m33_dg_init_i   ), //
`else
   .dac33_dg_init_0              (), //
`endif
   .dac33_dg_control_0           (m33_dg_control), //
   .dac33_dg_control_0_pdef      (8'd0), //
   .dac33_dg_pulse_control_0     (m33_dg_pulse_control_0), //
   .dac33_dg_i_value_0           (m33_dg_i_value_0      ), //
   .dac33_dg_q_value_0           (m33_dg_q_value_0      ), //
   .dac33_dg_mult_control_0      (m33_dg_mult_control_0 ), //
   .dac33_dg_i_value_0_pdef      (16'd0), //
   .dac33_dg_q_value_0_pdef      (16'd0), //
   .dac33_dg_mult_control_0_pdef (3'd0),  //

   .dac_fab_clk0           (m0_axis_clock),
   .dac_fab_resetn0        (axis_resetn_rt[0]), // Negedge reset
   .dac_fab_clk1           (m1_axis_clock),
   .dac_fab_resetn1        (axis_resetn_rt[1]), // Negedge reset
   .dac_fab_clk2           (m2_axis_clock),
   .dac_fab_resetn2        (axis_resetn_rt[2]), // Negedge reset
   .dac_fab_clk3           (m3_axis_clock),
   .dac_fab_resetn3        (axis_resetn_rt[3]), // Negedge reset

   .enable                 (enable          ),
   .timeout_enable         (timeout_enable  ),
   .timeout_value          (timeout_value   ),

   .timeout_enable_in      (timeout_enable  ),
   .timeout_value_in       (timeout_value   ), 

   .s_axi_aclk             (s_axi_aclk      ),
   .s_axi_aresetn          (s_axi_aresetn   ),

   .s_axi_awaddr           (s_axi_awaddr    ),
   .s_axi_awvalid          (s_axi_awvalid   ),
   .s_axi_awready          (s_axi_awready   ),
   .s_axi_wdata            (s_axi_wdata     ),
   .s_axi_wvalid           (s_axi_wvalid    ),
   .s_axi_wready           (s_axi_wready    ),
   .s_axi_bresp            (s_axi_bresp     ),
   .s_axi_bvalid           (s_axi_bvalid    ),
   .s_axi_bready           (s_axi_bready    ),
   .s_axi_araddr           (s_axi_araddr    ),
   .s_axi_arvalid          (s_axi_arvalid   ),
   .s_axi_arready          (s_axi_arready   ),
   .s_axi_rdata            (s_axi_rdata     ),
   .s_axi_rresp            (s_axi_rresp     ),
   .s_axi_rvalid           (s_axi_rvalid    ),
   .s_axi_rready           (s_axi_rready    )

);

`ifdef DACEXDES_ENABLETYPE_SELECTION
  assign m00_dg_init = m00_dg_init_i[255:0];
  assign m01_dg_init = m01_dg_init_i[255:0];
  assign m02_dg_init = m02_dg_init_i[255:0];
  assign m03_dg_init = m03_dg_init_i[255:0];
  assign m10_dg_init = m10_dg_init_i[255:0];
  assign m11_dg_init = m11_dg_init_i[255:0];
  assign m12_dg_init = m12_dg_init_i[255:0];
  assign m13_dg_init = m13_dg_init_i[255:0];
  assign m20_dg_init = m20_dg_init_i[255:0];
  assign m21_dg_init = m21_dg_init_i[255:0];
  assign m22_dg_init = m22_dg_init_i[255:0];
  assign m23_dg_init = m23_dg_init_i[255:0];
  assign m30_dg_init = m30_dg_init_i[255:0];
  assign m31_dg_init = m31_dg_init_i[255:0];
  assign m32_dg_init = m32_dg_init_i[255:0];
  assign m33_dg_init = m33_dg_init_i[255:0];
`endif

endmodule
