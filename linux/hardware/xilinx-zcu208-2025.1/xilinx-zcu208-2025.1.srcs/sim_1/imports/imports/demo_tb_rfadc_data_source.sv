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

import demo_tb_rfdac_utils_pkg::*;

module demo_tb_rfadc_data_source #(
  parameter  p_connections       = 8,
  parameter  p_connection_width  = 16,
  parameter  p_useable_width     = 12,
  parameter  p_data_inc_val_init = 1,
  parameter  p_data_type_width   = 3
) (

   // AXI-Lite Interface
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi AWADDR"  *) input  wire [17:0] s_axi_awaddr   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi AWVALID" *) input  wire        s_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi AWREADY" *) output wire        s_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WDATA"   *) input  wire [31:0] s_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WVALID"  *) input  wire        s_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WREADY"  *) output wire        s_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi BRESP"   *) output wire  [1:0] s_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi BVALID"  *) output wire        s_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi BREADY"  *) input  wire        s_axi_bready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi ARADDR"  *) input  wire [17:0] s_axi_araddr   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi ARVALID" *) input  wire        s_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi ARREADY" *) output wire        s_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RDATA"   *) output wire [31:0] s_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RRESP"   *) output wire  [1:0] s_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RVALID"  *) output wire        s_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RREADY"  *) input  wire        s_axi_rready   ,  // 

   input  wire [31:0]    clk_phase_hl_00,
   output wire [63:0]    vout_00_p,
   output wire [63:0]    vout_00_n,

   input  wire [31:0]    clk_phase_hl_02,
   output wire [63:0]    vout_02_p,
   output wire [63:0]    vout_02_n,

   input  wire [31:0]    clk_phase_hl_10,
   output wire [63:0]    vout_10_p,
   output wire [63:0]    vout_10_n,

   input  wire [31:0]    clk_phase_hl_12,
   output wire [63:0]    vout_12_p,
   output wire [63:0]    vout_12_n,

   input  wire [31:0]    clk_phase_hl_20,
   output wire [63:0]    vout_20_p,
   output wire [63:0]    vout_20_n,

   input  wire [31:0]    clk_phase_hl_22,
   output wire [63:0]    vout_22_p,
   output wire [63:0]    vout_22_n,

   input  wire [31:0]    clk_phase_hl_30,
   output wire [63:0]    vout_30_p,
   output wire [63:0]    vout_30_n,

   input  wire [31:0]    clk_phase_hl_32,
   output wire [63:0]    vout_32_p,
   output wire [63:0]    vout_32_n,

   // AXI-Lite Clock/Reset
   input  wire           s_axi_aclk   ,
   input  wire           s_axi_aresetn
  
  );
// ----------------------------------------------------------------------------
// Wire declarations for slices 0_01 0_23 1_01 1_23 2_01 2_23 3_01 3_23
// ----------------------------------------------------------------------------
wire                          global_enable;
wire      [p_connections-1:0] s00_enable         ; //
wire    [p_useable_width-1:0] s00_inc            ; //
wire  [p_data_type_width-1:0] s00_type           ; //
wire                   [31:0] s00_scaling_factor ; //
wire                   [31:0] s00_offset         ; //
wire                   [15:0] s00_phase_high     ; //
wire                   [15:0] s00_phase_low      ; //
wire                   [15:0] s00_div            ; //
wire      [p_connections-1:0] s02_enable         ; //
wire    [p_useable_width-1:0] s02_inc            ; //
wire  [p_data_type_width-1:0] s02_type           ; //
wire                   [31:0] s02_scaling_factor ; //
wire                   [31:0] s02_offset         ; //
wire                   [15:0] s02_phase_high     ; //
wire                   [15:0] s02_phase_low      ; //
wire                   [15:0] s02_div            ; //
wire      [p_connections-1:0] s10_enable         ; //
wire    [p_useable_width-1:0] s10_inc            ; //
wire  [p_data_type_width-1:0] s10_type           ; //
wire                   [31:0] s10_scaling_factor ; //
wire                   [31:0] s10_offset         ; //
wire                   [15:0] s10_phase_high     ; //
wire                   [15:0] s10_phase_low      ; //
wire                   [15:0] s10_div            ; //
wire      [p_connections-1:0] s12_enable         ; //
wire    [p_useable_width-1:0] s12_inc            ; //
wire  [p_data_type_width-1:0] s12_type           ; //
wire                   [31:0] s12_scaling_factor ; //
wire                   [31:0] s12_offset         ; //
wire                   [15:0] s12_phase_high     ; //
wire                   [15:0] s12_phase_low      ; //
wire                   [15:0] s12_div            ; //
wire      [p_connections-1:0] s20_enable         ; //
wire    [p_useable_width-1:0] s20_inc            ; //
wire  [p_data_type_width-1:0] s20_type           ; //
wire                   [31:0] s20_scaling_factor ; //
wire                   [31:0] s20_offset         ; //
wire                   [15:0] s20_phase_high     ; //
wire                   [15:0] s20_phase_low      ; //
wire                   [15:0] s20_div            ; //
wire      [p_connections-1:0] s22_enable         ; //
wire    [p_useable_width-1:0] s22_inc            ; //
wire  [p_data_type_width-1:0] s22_type           ; //
wire                   [31:0] s22_scaling_factor ; //
wire                   [31:0] s22_offset         ; //
wire                   [15:0] s22_phase_high     ; //
wire                   [15:0] s22_phase_low      ; //
wire                   [15:0] s22_div            ; //
wire      [p_connections-1:0] s30_enable         ; //
wire    [p_useable_width-1:0] s30_inc            ; //
wire  [p_data_type_width-1:0] s30_type           ; //
wire                   [31:0] s30_scaling_factor ; //
wire                   [31:0] s30_offset         ; //
wire                   [15:0] s30_phase_high     ; //
wire                   [15:0] s30_phase_low      ; //
wire                   [15:0] s30_div            ; //
wire      [p_connections-1:0] s32_enable         ; //
wire    [p_useable_width-1:0] s32_inc            ; //
wire  [p_data_type_width-1:0] s32_type           ; //
wire                   [31:0] s32_scaling_factor ; //
wire                   [31:0] s32_offset         ; //
wire                   [15:0] s32_phase_high     ; //
wire                   [15:0] s32_phase_low      ; //
wire                   [15:0] s32_div            ; //
// ----------------------------------------------------------------------------
// Setup Tile Configuration Structs for tile 0
// ----------------------------------------------------------------------------
tile_cfg_t tile_cfg_0;

assign tile_cfg_0.adc_dac_n = 1'b1;                                      // ADC Tile Configuration
assign tile_cfg_0.multiband = 3'd0;   // Multiband setting
 
   
assign tile_cfg_0.slice_cfg_setups[0].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_0.slice_cfg_setups[0].enable       = (s00_enable & global_enable); 
assign tile_cfg_0.slice_cfg_setups[0].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_0.slice_cfg_setups[0].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_0.slice_cfg_setups[0].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_0.slice_cfg_setups[0].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_0.slice_cfg_setups[0].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_0.slice_cfg_setups[0].neg_quad     = 1'b0;         // 
assign tile_cfg_0.slice_cfg_setups[0].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_0.slice_cfg_setups[0].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_0.slice_cfg_setups[1].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_0.slice_cfg_setups[1].enable       = 1'b0; 
assign tile_cfg_0.slice_cfg_setups[1].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_0.slice_cfg_setups[1].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_0.slice_cfg_setups[1].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_0.slice_cfg_setups[1].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_0.slice_cfg_setups[1].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_0.slice_cfg_setups[1].neg_quad     = 1'b0;         // 
assign tile_cfg_0.slice_cfg_setups[1].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_0.slice_cfg_setups[1].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_0.slice_cfg_setups[2].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_0.slice_cfg_setups[2].enable       = (s02_enable & global_enable); 
assign tile_cfg_0.slice_cfg_setups[2].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_0.slice_cfg_setups[2].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_0.slice_cfg_setups[2].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_0.slice_cfg_setups[2].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_0.slice_cfg_setups[2].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_0.slice_cfg_setups[2].neg_quad     = 1'b0;         // 
assign tile_cfg_0.slice_cfg_setups[2].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_0.slice_cfg_setups[2].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_0.slice_cfg_setups[3].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_0.slice_cfg_setups[3].enable       = 1'b0; 
assign tile_cfg_0.slice_cfg_setups[3].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_0.slice_cfg_setups[3].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_0.slice_cfg_setups[3].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_0.slice_cfg_setups[3].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_0.slice_cfg_setups[3].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_0.slice_cfg_setups[3].neg_quad     = 1'b0;         // 
assign tile_cfg_0.slice_cfg_setups[3].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_0.slice_cfg_setups[3].is_4g        = 1'b1;         // 4g part used
// ----------------------------------------------------------------------------
// Setup Tile Configuration Structs for tile 1
// ----------------------------------------------------------------------------
tile_cfg_t tile_cfg_1;

assign tile_cfg_1.adc_dac_n = 1'b1;                                      // ADC Tile Configuration
assign tile_cfg_1.multiband = 3'd0;   // Multiband setting
 
   
assign tile_cfg_1.slice_cfg_setups[0].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_1.slice_cfg_setups[0].enable       = (s10_enable & global_enable); 
assign tile_cfg_1.slice_cfg_setups[0].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_1.slice_cfg_setups[0].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_1.slice_cfg_setups[0].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_1.slice_cfg_setups[0].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_1.slice_cfg_setups[0].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_1.slice_cfg_setups[0].neg_quad     = 1'b0;         // 
assign tile_cfg_1.slice_cfg_setups[0].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_1.slice_cfg_setups[0].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_1.slice_cfg_setups[1].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_1.slice_cfg_setups[1].enable       = 1'b0; 
assign tile_cfg_1.slice_cfg_setups[1].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_1.slice_cfg_setups[1].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_1.slice_cfg_setups[1].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_1.slice_cfg_setups[1].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_1.slice_cfg_setups[1].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_1.slice_cfg_setups[1].neg_quad     = 1'b0;         // 
assign tile_cfg_1.slice_cfg_setups[1].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_1.slice_cfg_setups[1].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_1.slice_cfg_setups[2].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_1.slice_cfg_setups[2].enable       = (s12_enable & global_enable); 
assign tile_cfg_1.slice_cfg_setups[2].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_1.slice_cfg_setups[2].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_1.slice_cfg_setups[2].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_1.slice_cfg_setups[2].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_1.slice_cfg_setups[2].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_1.slice_cfg_setups[2].neg_quad     = 1'b0;         // 
assign tile_cfg_1.slice_cfg_setups[2].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_1.slice_cfg_setups[2].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_1.slice_cfg_setups[3].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_1.slice_cfg_setups[3].enable       = 1'b0; 
assign tile_cfg_1.slice_cfg_setups[3].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_1.slice_cfg_setups[3].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_1.slice_cfg_setups[3].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_1.slice_cfg_setups[3].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_1.slice_cfg_setups[3].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_1.slice_cfg_setups[3].neg_quad     = 1'b0;         // 
assign tile_cfg_1.slice_cfg_setups[3].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_1.slice_cfg_setups[3].is_4g        = 1'b1;         // 4g part used
// ----------------------------------------------------------------------------
// Setup Tile Configuration Structs for tile 2
// ----------------------------------------------------------------------------
tile_cfg_t tile_cfg_2;

assign tile_cfg_2.adc_dac_n = 1'b1;                                      // ADC Tile Configuration
assign tile_cfg_2.multiband = 3'd0;   // Multiband setting
 
   
assign tile_cfg_2.slice_cfg_setups[0].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_2.slice_cfg_setups[0].enable       = (s20_enable & global_enable); 
assign tile_cfg_2.slice_cfg_setups[0].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_2.slice_cfg_setups[0].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_2.slice_cfg_setups[0].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_2.slice_cfg_setups[0].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_2.slice_cfg_setups[0].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_2.slice_cfg_setups[0].neg_quad     = 1'b0;         // 
assign tile_cfg_2.slice_cfg_setups[0].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_2.slice_cfg_setups[0].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_2.slice_cfg_setups[1].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_2.slice_cfg_setups[1].enable       = 1'b0; 
assign tile_cfg_2.slice_cfg_setups[1].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_2.slice_cfg_setups[1].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_2.slice_cfg_setups[1].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_2.slice_cfg_setups[1].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_2.slice_cfg_setups[1].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_2.slice_cfg_setups[1].neg_quad     = 1'b0;         // 
assign tile_cfg_2.slice_cfg_setups[1].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_2.slice_cfg_setups[1].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_2.slice_cfg_setups[2].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_2.slice_cfg_setups[2].enable       = (s22_enable & global_enable); 
assign tile_cfg_2.slice_cfg_setups[2].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_2.slice_cfg_setups[2].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_2.slice_cfg_setups[2].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_2.slice_cfg_setups[2].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_2.slice_cfg_setups[2].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_2.slice_cfg_setups[2].neg_quad     = 1'b0;         // 
assign tile_cfg_2.slice_cfg_setups[2].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_2.slice_cfg_setups[2].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_2.slice_cfg_setups[3].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_2.slice_cfg_setups[3].enable       = 1'b0; 
assign tile_cfg_2.slice_cfg_setups[3].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_2.slice_cfg_setups[3].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_2.slice_cfg_setups[3].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_2.slice_cfg_setups[3].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_2.slice_cfg_setups[3].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_2.slice_cfg_setups[3].neg_quad     = 1'b0;         // 
assign tile_cfg_2.slice_cfg_setups[3].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_2.slice_cfg_setups[3].is_4g        = 1'b1;         // 4g part used
// ----------------------------------------------------------------------------
// Setup Tile Configuration Structs for tile 3
// ----------------------------------------------------------------------------
tile_cfg_t tile_cfg_3;

assign tile_cfg_3.adc_dac_n = 1'b1;                                      // ADC Tile Configuration
assign tile_cfg_3.multiband = 3'd0;   // Multiband setting
 
   
assign tile_cfg_3.slice_cfg_setups[0].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_3.slice_cfg_setups[0].enable       = (s30_enable & global_enable); 
assign tile_cfg_3.slice_cfg_setups[0].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_3.slice_cfg_setups[0].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_3.slice_cfg_setups[0].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_3.slice_cfg_setups[0].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_3.slice_cfg_setups[0].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_3.slice_cfg_setups[0].neg_quad     = 1'b0;         // 
assign tile_cfg_3.slice_cfg_setups[0].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_3.slice_cfg_setups[0].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_3.slice_cfg_setups[1].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_3.slice_cfg_setups[1].enable       = 1'b0; 
assign tile_cfg_3.slice_cfg_setups[1].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_3.slice_cfg_setups[1].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_3.slice_cfg_setups[1].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_3.slice_cfg_setups[1].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_3.slice_cfg_setups[1].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_3.slice_cfg_setups[1].neg_quad     = 1'b0;         // 
assign tile_cfg_3.slice_cfg_setups[1].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_3.slice_cfg_setups[1].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_3.slice_cfg_setups[2].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_3.slice_cfg_setups[2].enable       = (s32_enable & global_enable); 
assign tile_cfg_3.slice_cfg_setups[2].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_3.slice_cfg_setups[2].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_3.slice_cfg_setups[2].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_3.slice_cfg_setups[2].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_3.slice_cfg_setups[2].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_3.slice_cfg_setups[2].neg_quad     = 1'b0;         // 
assign tile_cfg_3.slice_cfg_setups[2].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_3.slice_cfg_setups[2].is_4g        = 1'b1;         // 4g part used
 
   
assign tile_cfg_3.slice_cfg_setups[3].adc_dac_n    = 1'b1;         // ADC Slice Configuration
assign tile_cfg_3.slice_cfg_setups[3].enable       = 1'b0; 
assign tile_cfg_3.slice_cfg_setups[3].decim        = 16'd1;        // decimation (for adc), or interpolation for dac
assign tile_cfg_3.slice_cfg_setups[3].mixer        = 2'd0;         // mixer_mode is (r2c=0 / c2c=1 / r2r=2)
assign tile_cfg_3.slice_cfg_setups[3].mixer_type   = 2'd2;         // bypassed/coarse/fine
assign tile_cfg_3.slice_cfg_setups[3].mixer_freq   = 33'd0;        // mixer freq
assign tile_cfg_3.slice_cfg_setups[3].fs           = 34'd4915200000;        // sample freq
assign tile_cfg_3.slice_cfg_setups[3].neg_quad     = 1'b0;         // 
assign tile_cfg_3.slice_cfg_setups[3].nyquist_zone = 1'b0;         // 0 = zone_1, 1 = zone_2
assign tile_cfg_3.slice_cfg_setups[3].is_4g        = 1'b1;         // 4g part used

// ----------------------------------------------------------------------------
// Data generator tile 0
// ----------------------------------------------------------------------------
demo_tb_rfadc_tile_source tile_source_0_i(
   .tile_cfg          (tile_cfg_0),

	// Connect data source 0
   .s0_init           ({p_useable_width{1'b0}}),  //
   .s0_enable         (s00_enable[0] & global_enable), //
   .s0_inc            (s00_inc             ), //
   .s0_div            (s00_div             ), //
   .s0_type           (s00_type            ), //
   .s0_scaling_factor (s00_scaling_factor  ), //
   .s0_offset         (s00_offset          ), //
   .s0_clk_phase_hl   (clk_phase_hl_00     ),
   .vout_0_p          (vout_00_p           ),
   .vout_0_n          (vout_00_n           ),

	// Connect data source 1
   .s1_init           ({p_useable_width{1'b0}}),  //
   .s1_scaling_factor (32'd0  ), //
   .s1_offset         (32'd0  ), //
   .s1_enable         (1'b0   ),  //
   .s1_inc            ({p_useable_width{1'b0}}),  //
   .s1_div            (16'd0),  //
   .s1_type           ({p_data_type_width{1'b0}}),  //
   .s1_clk_phase_hl   (32'd0  ),
   .vout_1_p          (),
   .vout_1_n          (),

	// Connect data source 2
   .s2_init           ({p_useable_width{1'b0}}),  //
   .s2_enable         (s02_enable[0] & global_enable), //
   .s2_inc            (s02_inc             ), //
   .s2_div            (s02_div             ), //
   .s2_type           (s02_type            ), //
   .s2_scaling_factor (s02_scaling_factor  ), //
   .s2_offset         (s02_offset          ), //
   .s2_clk_phase_hl   (clk_phase_hl_02     ),
   .vout_2_p          (vout_02_p           ),
   .vout_2_n          (vout_02_n           ),

	// Connect data source 3
   .s3_init           ({p_useable_width{1'b0}}),  //
   .s3_scaling_factor (32'd0  ), //
   .s3_offset         (32'd0  ), //
   .s3_enable         (1'b0   ),  //
   .s3_inc            ({p_useable_width{1'b0}}),  //
   .s3_div            (16'd0),  //
   .s3_type           ({p_data_type_width{1'b0}}),  //
   .s3_clk_phase_hl   (32'd0  ),
   .vout_3_p          (),
   .vout_3_n          (),

  .status             ()

  );
// ----------------------------------------------------------------------------
// Data generator tile 1
// ----------------------------------------------------------------------------
demo_tb_rfadc_tile_source tile_source_1_i(
   .tile_cfg          (tile_cfg_1),

	// Connect data source 0
   .s0_init           ({p_useable_width{1'b0}}),  //
   .s0_enable         (s10_enable[0] & global_enable), //
   .s0_inc            (s10_inc             ), //
   .s0_div            (s10_div             ), //
   .s0_type           (s10_type            ), //
   .s0_scaling_factor (s10_scaling_factor  ), //
   .s0_offset         (s10_offset          ), //
   .s0_clk_phase_hl   (clk_phase_hl_10     ),
   .vout_0_p          (vout_10_p           ),
   .vout_0_n          (vout_10_n           ),

	// Connect data source 1
   .s1_init           ({p_useable_width{1'b0}}),  //
   .s1_scaling_factor (32'd0  ), //
   .s1_offset         (32'd0  ), //
   .s1_enable         (1'b0   ),  //
   .s1_inc            ({p_useable_width{1'b0}}),  //
   .s1_div            (16'd0),  //
   .s1_type           ({p_data_type_width{1'b0}}),  //
   .s1_clk_phase_hl   (32'd0  ),
   .vout_1_p          (),
   .vout_1_n          (),

	// Connect data source 2
   .s2_init           ({p_useable_width{1'b0}}),  //
   .s2_enable         (s12_enable[0] & global_enable), //
   .s2_inc            (s12_inc             ), //
   .s2_div            (s12_div             ), //
   .s2_type           (s12_type            ), //
   .s2_scaling_factor (s12_scaling_factor  ), //
   .s2_offset         (s12_offset          ), //
   .s2_clk_phase_hl   (clk_phase_hl_12     ),
   .vout_2_p          (vout_12_p           ),
   .vout_2_n          (vout_12_n           ),

	// Connect data source 3
   .s3_init           ({p_useable_width{1'b0}}),  //
   .s3_scaling_factor (32'd0  ), //
   .s3_offset         (32'd0  ), //
   .s3_enable         (1'b0   ),  //
   .s3_inc            ({p_useable_width{1'b0}}),  //
   .s3_div            (16'd0),  //
   .s3_type           ({p_data_type_width{1'b0}}),  //
   .s3_clk_phase_hl   (32'd0  ),
   .vout_3_p          (),
   .vout_3_n          (),

  .status             ()

  );
// ----------------------------------------------------------------------------
// Data generator tile 2
// ----------------------------------------------------------------------------
demo_tb_rfadc_tile_source tile_source_2_i(
   .tile_cfg          (tile_cfg_2),

	// Connect data source 0
   .s0_init           ({p_useable_width{1'b0}}),  //
   .s0_enable         (s20_enable[0] & global_enable), //
   .s0_inc            (s20_inc             ), //
   .s0_div            (s20_div             ), //
   .s0_type           (s20_type            ), //
   .s0_scaling_factor (s20_scaling_factor  ), //
   .s0_offset         (s20_offset          ), //
   .s0_clk_phase_hl   (clk_phase_hl_20     ),
   .vout_0_p          (vout_20_p           ),
   .vout_0_n          (vout_20_n           ),

	// Connect data source 1
   .s1_init           ({p_useable_width{1'b0}}),  //
   .s1_scaling_factor (32'd0  ), //
   .s1_offset         (32'd0  ), //
   .s1_enable         (1'b0   ),  //
   .s1_inc            ({p_useable_width{1'b0}}),  //
   .s1_div            (16'd0),  //
   .s1_type           ({p_data_type_width{1'b0}}),  //
   .s1_clk_phase_hl   (32'd0  ),
   .vout_1_p          (),
   .vout_1_n          (),

	// Connect data source 2
   .s2_init           ({p_useable_width{1'b0}}),  //
   .s2_enable         (s22_enable[0] & global_enable), //
   .s2_inc            (s22_inc             ), //
   .s2_div            (s22_div             ), //
   .s2_type           (s22_type            ), //
   .s2_scaling_factor (s22_scaling_factor  ), //
   .s2_offset         (s22_offset          ), //
   .s2_clk_phase_hl   (clk_phase_hl_22     ),
   .vout_2_p          (vout_22_p           ),
   .vout_2_n          (vout_22_n           ),

	// Connect data source 3
   .s3_init           ({p_useable_width{1'b0}}),  //
   .s3_scaling_factor (32'd0  ), //
   .s3_offset         (32'd0  ), //
   .s3_enable         (1'b0   ),  //
   .s3_inc            ({p_useable_width{1'b0}}),  //
   .s3_div            (16'd0),  //
   .s3_type           ({p_data_type_width{1'b0}}),  //
   .s3_clk_phase_hl   (32'd0  ),
   .vout_3_p          (),
   .vout_3_n          (),

  .status             ()

  );
// ----------------------------------------------------------------------------
// Data generator tile 3
// ----------------------------------------------------------------------------
demo_tb_rfadc_tile_source tile_source_3_i(
   .tile_cfg          (tile_cfg_3),

	// Connect data source 0
   .s0_init           ({p_useable_width{1'b0}}),  //
   .s0_enable         (s30_enable[0] & global_enable), //
   .s0_inc            (s30_inc             ), //
   .s0_div            (s30_div             ), //
   .s0_type           (s30_type            ), //
   .s0_scaling_factor (s30_scaling_factor  ), //
   .s0_offset         (s30_offset          ), //
   .s0_clk_phase_hl   (clk_phase_hl_30     ),
   .vout_0_p          (vout_30_p           ),
   .vout_0_n          (vout_30_n           ),

	// Connect data source 1
   .s1_init           ({p_useable_width{1'b0}}),  //
   .s1_scaling_factor (32'd0  ), //
   .s1_offset         (32'd0  ), //
   .s1_enable         (1'b0   ),  //
   .s1_inc            ({p_useable_width{1'b0}}),  //
   .s1_div            (16'd0),  //
   .s1_type           ({p_data_type_width{1'b0}}),  //
   .s1_clk_phase_hl   (32'd0  ),
   .vout_1_p          (),
   .vout_1_n          (),

	// Connect data source 2
   .s2_init           ({p_useable_width{1'b0}}),  //
   .s2_enable         (s32_enable[0] & global_enable), //
   .s2_inc            (s32_inc             ), //
   .s2_div            (s32_div             ), //
   .s2_type           (s32_type            ), //
   .s2_scaling_factor (s32_scaling_factor  ), //
   .s2_offset         (s32_offset          ), //
   .s2_clk_phase_hl   (clk_phase_hl_32     ),
   .vout_2_p          (vout_32_p           ),
   .vout_2_n          (vout_32_n           ),

	// Connect data source 3
   .s3_init           ({p_useable_width{1'b0}}),  //
   .s3_scaling_factor (32'd0  ), //
   .s3_offset         (32'd0  ), //
   .s3_enable         (1'b0   ),  //
   .s3_inc            ({p_useable_width{1'b0}}),  //
   .s3_div            (16'd0),  //
   .s3_type           ({p_data_type_width{1'b0}}),  //
   .s3_clk_phase_hl   (32'd0  ),
   .vout_3_p          (),
   .vout_3_n          (),

  .status             ()

  );

//-----------------------------------------------------------------------------
// Control register map. Reusing the same bank as generated for the DAC
// data path control, hence the naming on the block below
//-----------------------------------------------------------------------------
demo_tb_hsadc_ctrl hsadc_exdes_ctrl_i (
   .adc00_enable_0         (s00_enable        ), //
   .adc00_dg_inc_0         (s00_inc           ), //
   .adc00_dg_type_0        (s00_type          ), //
   .adc00_scaling_factor_0 (s00_scaling_factor), //
   .adc00_offset_0         (s00_offset        ), //
   .adc00_phase_high_0     (s00_phase_high    ), //
   .adc00_phase_low_0      (s00_phase_low     ), //
   .adc00_dg_div_0         (s00_div           ), //

   .adc01_enable_0         (), //
   .adc01_dg_inc_0         (), //
   .adc01_dg_type_0        (), //
   .adc01_scaling_factor_0 (), //
   .adc01_offset_0         (), //
   .adc01_phase_high_0     (), //
   .adc01_phase_low_0      (), //
   .adc01_dg_div_0         (), //

   .adc02_enable_0         (s02_enable        ), //
   .adc02_dg_inc_0         (s02_inc           ), //
   .adc02_dg_type_0        (s02_type          ), //
   .adc02_scaling_factor_0 (s02_scaling_factor), //
   .adc02_offset_0         (s02_offset        ), //
   .adc02_phase_high_0     (s02_phase_high    ), //
   .adc02_phase_low_0      (s02_phase_low     ), //
   .adc02_dg_div_0         (s02_div           ), //

   .adc03_enable_0         (), //
   .adc03_dg_inc_0         (), //
   .adc03_dg_type_0        (), //
   .adc03_scaling_factor_0 (), //
   .adc03_offset_0         (), //
   .adc03_phase_high_0     (), //
   .adc03_phase_low_0      (), //
   .adc03_dg_div_0         (), //

   .adc10_enable_0         (s10_enable        ), //
   .adc10_dg_inc_0         (s10_inc           ), //
   .adc10_dg_type_0        (s10_type          ), //
   .adc10_scaling_factor_0 (s10_scaling_factor), //
   .adc10_offset_0         (s10_offset        ), //
   .adc10_phase_high_0     (s10_phase_high    ), //
   .adc10_phase_low_0      (s10_phase_low     ), //
   .adc10_dg_div_0         (s10_div           ), //

   .adc11_enable_0         (), //
   .adc11_dg_inc_0         (), //
   .adc11_dg_type_0        (), //
   .adc11_scaling_factor_0 (), //
   .adc11_offset_0         (), //
   .adc11_phase_high_0     (), //
   .adc11_phase_low_0      (), //
   .adc11_dg_div_0         (), //

   .adc12_enable_0         (s12_enable        ), //
   .adc12_dg_inc_0         (s12_inc           ), //
   .adc12_dg_type_0        (s12_type          ), //
   .adc12_scaling_factor_0 (s12_scaling_factor), //
   .adc12_offset_0         (s12_offset        ), //
   .adc12_phase_high_0     (s12_phase_high    ), //
   .adc12_phase_low_0      (s12_phase_low     ), //
   .adc12_dg_div_0         (s12_div           ), //

   .adc13_enable_0         (), //
   .adc13_dg_inc_0         (), //
   .adc13_dg_type_0        (), //
   .adc13_scaling_factor_0 (), //
   .adc13_offset_0         (), //
   .adc13_phase_high_0     (), //
   .adc13_phase_low_0      (), //
   .adc13_dg_div_0         (), //

   .adc20_enable_0         (s20_enable        ), //
   .adc20_dg_inc_0         (s20_inc           ), //
   .adc20_dg_type_0        (s20_type          ), //
   .adc20_scaling_factor_0 (s20_scaling_factor), //
   .adc20_offset_0         (s20_offset        ), //
   .adc20_phase_high_0     (s20_phase_high    ), //
   .adc20_phase_low_0      (s20_phase_low     ), //
   .adc20_dg_div_0         (s20_div           ), //

   .adc21_enable_0         (), //
   .adc21_dg_inc_0         (), //
   .adc21_dg_type_0        (), //
   .adc21_scaling_factor_0 (), //
   .adc21_offset_0         (), //
   .adc21_phase_high_0     (), //
   .adc21_phase_low_0      (), //
   .adc21_dg_div_0         (), //

   .adc22_enable_0         (s22_enable        ), //
   .adc22_dg_inc_0         (s22_inc           ), //
   .adc22_dg_type_0        (s22_type          ), //
   .adc22_scaling_factor_0 (s22_scaling_factor), //
   .adc22_offset_0         (s22_offset        ), //
   .adc22_phase_high_0     (s22_phase_high    ), //
   .adc22_phase_low_0      (s22_phase_low     ), //
   .adc22_dg_div_0         (s22_div           ), //

   .adc23_enable_0         (), //
   .adc23_dg_inc_0         (), //
   .adc23_dg_type_0        (), //
   .adc23_scaling_factor_0 (), //
   .adc23_offset_0         (), //
   .adc23_phase_high_0     (), //
   .adc23_phase_low_0      (), //
   .adc23_dg_div_0         (), //

   .adc30_enable_0         (s30_enable        ), //
   .adc30_dg_inc_0         (s30_inc           ), //
   .adc30_dg_type_0        (s30_type          ), //
   .adc30_scaling_factor_0 (s30_scaling_factor), //
   .adc30_offset_0         (s30_offset        ), //
   .adc30_phase_high_0     (s30_phase_high    ), //
   .adc30_phase_low_0      (s30_phase_low     ), //
   .adc30_dg_div_0         (s30_div           ), //

   .adc31_enable_0         (), //
   .adc31_dg_inc_0         (), //
   .adc31_dg_type_0        (), //
   .adc31_scaling_factor_0 (), //
   .adc31_offset_0         (), //
   .adc31_phase_high_0     (), //
   .adc31_phase_low_0      (), //
   .adc31_dg_div_0         (), //

   .adc32_enable_0         (s32_enable        ), //
   .adc32_dg_inc_0         (s32_inc           ), //
   .adc32_dg_type_0        (s32_type          ), //
   .adc32_scaling_factor_0 (s32_scaling_factor), //
   .adc32_offset_0         (s32_offset        ), //
   .adc32_phase_high_0     (s32_phase_high    ), //
   .adc32_phase_low_0      (s32_phase_low     ), //
   .adc32_dg_div_0         (s32_div           ), //

   .adc33_enable_0         (), //
   .adc33_dg_inc_0         (), //
   .adc33_dg_type_0        (), //
   .adc33_scaling_factor_0 (), //
   .adc33_offset_0         (), //
   .adc33_phase_high_0     (), //
   .adc33_phase_low_0      (), //
   .adc33_dg_div_0         (), //

   .adc_fab_clk0           (s_axi_aclk      ),
   .adc_fab_clk1           (s_axi_aclk      ),
   .adc_fab_clk2           (s_axi_aclk      ),
   .adc_fab_clk3           (s_axi_aclk      ),

   .adc_fab_reset0         (s_axi_aresetn   ),// This is a negedge reset despite the name
   .adc_fab_reset1         (s_axi_aresetn   ),
   .adc_fab_reset2         (s_axi_aresetn   ),
   .adc_fab_reset3         (s_axi_aresetn   ), 

   .enable                 (global_enable   ),

   .timeout_enable_in      (1'd0            ),
   .timeout_value_in       (12'd0           ), 

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

endmodule
