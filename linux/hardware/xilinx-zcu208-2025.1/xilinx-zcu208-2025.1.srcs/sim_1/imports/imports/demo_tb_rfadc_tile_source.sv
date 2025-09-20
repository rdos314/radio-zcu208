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

//`define EXCLUDE_SINE_WAVE_LUTS

`define DGTYPE_TRGL     0
`define DGTYPE_RAMPUP   1
`define DGTYPE_RAMPDOWN 2
`define DGTYPE_SINE0    3
`define DGTYPE_SQR      6

// ----------------------------------------------------------------------------
// Non synthesiseable real data generator
// ----------------------------------------------------------------------------
module demo_tb_rfadc_tile_source #(
  parameter  p_useable_width     = 12,
  parameter  p_data_inc_val_init = 1,
  parameter  p_data_type_width   = 3
) (
                                                                                    input  tile_cfg_t                   tile_cfg             , //

  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_0 enable"    *) input  wire                         s0_enable            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_0 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s0_inc               , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_0 dg_type"   *) input  wire [p_data_type_width-1:0] s0_type              , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_0 dg_init"   *) input  wire   [p_useable_width-1:0] s0_init              , //
                                                                                    input  wire                  [31:0] s0_scaling_factor    , //
                                                                                    input  wire                  [31:0] s0_offset            , //
                                                                                    input  wire                  [31:0] s0_clk_phase_hl      , //
                                                                                    input  wire                  [15:0] s0_div               , //
                                                                                    output wire                  [63:0] vout_0_p             , //
                                                                                    output wire                  [63:0] vout_0_n             , //

  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_1 enable"    *) input  wire                         s1_enable            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_1 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s1_inc               , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_1 dg_type"   *) input  wire [p_data_type_width-1:0] s1_type              , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_1 dg_init"   *) input  wire   [p_useable_width-1:0] s1_init              , //
                                                                                    input  wire                  [31:0] s1_scaling_factor    , //
                                                                                    input  wire                  [31:0] s1_offset            , //
                                                                                    input  wire                  [31:0] s1_clk_phase_hl      , //
                                                                                    input  wire                  [15:0] s1_div               , //
                                                                                    output wire                  [63:0] vout_1_p             , //
                                                                                    output wire                  [63:0] vout_1_n             , //

  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_2 enable"    *) input  wire                         s2_enable            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_2 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s2_inc               , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_2 dg_type"   *) input  wire [p_data_type_width-1:0] s2_type              , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_2 dg_init"   *) input  wire   [p_useable_width-1:0] s2_init              , //
                                                                                    input  wire                  [31:0] s2_scaling_factor    , //
                                                                                    input  wire                  [31:0] s2_offset            , //
                                                                                    input  wire                  [31:0] s2_clk_phase_hl      , //
                                                                                    input  wire                  [15:0] s2_div               , //
                                                                                    output wire                  [63:0] vout_2_p             , //
                                                                                    output wire                  [63:0] vout_2_n             , //

  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_3 enable"    *) input  wire                         s3_enable            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_3 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s3_inc               , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_3 dg_type"   *) input  wire [p_data_type_width-1:0] s3_type              , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 ds_tile_3 dg_init"   *) input  wire   [p_useable_width-1:0] s3_init              , //
                                                                                    input  wire                  [31:0] s3_scaling_factor    , //
                                                                                    input  wire                  [31:0] s3_offset            , //
                                                                                    input  wire                  [31:0] s3_clk_phase_hl      , //
                                                                                    input  wire                  [15:0] s3_div               , //
                                                                                    output wire                  [63:0] vout_3_p             , //
                                                                                    output wire                  [63:0] vout_3_n             , //

  output wire           status  // 
  );

// ----------------------------------------------------------------------------
// Internal signals
// ----------------------------------------------------------------------------
wire                         s0_status;
wire                         s1_status;
wire                         s2_status;
wire                         s3_status;
 
 // -----------------------------------------------------------------------------
// Parameters for V full scale & common mode voltage
// -----------------------------------------------------------------------------
parameter VCM = 0.70;           // adjust to match fe/ch switch common mode attenuation
parameter FS  = 1.00;           // p to p
parameter LSB = 0.0000732421;   // lsb size

parameter diff_range   = FS;                   // 
parameter bits         = 12;                   // Modelled Bits in use                
parameter in_scale_lsb = diff_range/(2**bits); // LSB                
parameter bit_width_d2 = (2**bits)/2;          // half bits range

// -----------------------------------------------------------------------------
// Variables
// -----------------------------------------------------------------------------
reg  [3:0][p_useable_width-1:0] samp;
reg  [3:0][p_useable_width+1:0] samp_comb;
wire [3:0][p_useable_width-1:0] i_samp;
wire [3:0][p_useable_width-1:0] q_samp;
real                            f64_VIN_N_scaled[3:0];
real                            f64_VIN_P_scaled[3:0];
integer                         sequence_counter[3:0];
real                            sequence_counter_asreal[3:0];

genvar i;

// Assign the outputs depending on the mixer type and multi-band mode
always @(*) begin
  // Slices 0 and 1
  if (tile_cfg.slice_cfg_setups[0].is_4g == 0) begin
    // 2GSPS
    if (tile_cfg.multiband == 0 || tile_cfg.multiband == 2) begin // Single band
      samp_comb[0] = i_samp[0];
      if (tile_cfg.slice_cfg_setups[0].mixer == 1) begin
        samp_comb[1] = q_samp[0];
      end
      else begin
        samp_comb[1] = i_samp[1];
      end
      samp[0] = samp_comb[0][p_useable_width-1:0];
      samp[1] = samp_comb[1][p_useable_width-1:0];
    end
    else if (tile_cfg.multiband == 1 || tile_cfg.multiband == 3) begin // 2x Multi-band
      samp_comb[0] = i_samp[0] + i_samp[1];
      if (tile_cfg.slice_cfg_setups[0].mixer == 1) begin
        samp_comb[1] = q_samp[0] + q_samp[1];
      end
      else begin
        samp_comb[1] = 'd0; // Not used
      end
      samp[0] = samp_comb[0][p_useable_width:1];
      samp[1] = samp_comb[1][p_useable_width:1];
    end
    else begin // x4 Multi-band
      samp_comb[0] = i_samp[0] +
                     i_samp[1] +
                     i_samp[2] +
                     i_samp[3];
      if (tile_cfg.slice_cfg_setups[0].mixer == 1) begin
        samp_comb[1] = q_samp[0] +
                       q_samp[1] +
                       q_samp[2] +
                       q_samp[3];
      end
      else begin
        samp_comb[1] = 'd0; // Not used
      end
      samp[0] = samp_comb[0][p_useable_width+1:2];
      samp[1] = samp_comb[1][p_useable_width+1:2];
    end
  end
  else begin
    // 4GSPS
    if (tile_cfg.multiband == 0 || tile_cfg.multiband == 2 || tile_cfg.multiband == 4) begin // Single band
      samp_comb[0] = i_samp[0];
      samp[0] = samp_comb[0][p_useable_width-1:0];
    end
    else begin // 2x Multi-band
      samp_comb[0] = i_samp[0] + i_samp[2];
      samp[0] = samp_comb[0][p_useable_width:1];
    end
    samp_comb[1] = 'd0; // Not used
    samp[1] = samp_comb[1][p_useable_width-1:0];
  end
  
  // Slices 2 and 3
  if (tile_cfg.slice_cfg_setups[0].is_4g == 0) begin
    // 2GSPS
    if (tile_cfg.multiband == 0 || tile_cfg.multiband == 1) begin // Single band
      samp_comb[2] = i_samp[2];
      if (tile_cfg.slice_cfg_setups[2].mixer == 1) begin
        samp_comb[3] = q_samp[2];
      end
      else begin
        samp_comb[3] = i_samp[3];
      end
      samp[2] = samp_comb[2][p_useable_width-1:0];
      samp[3] = samp_comb[3][p_useable_width-1:0];
    end
    else if (tile_cfg.multiband == 2 || tile_cfg.multiband == 3) begin // 2x Multi-band
      samp_comb[2] = i_samp[2] + i_samp[3];
      if (tile_cfg.slice_cfg_setups[2].mixer == 1) begin
        samp_comb[3] = q_samp[2] + q_samp[3];
      end
      else begin
        samp_comb[3] = 'd0; // Not used
      end
      samp[2] = samp_comb[2][p_useable_width:1];
      samp[3] = samp_comb[3][p_useable_width:1];
    end
    else begin // x4 Multi-band
      samp_comb[2] = 'd0; // Not used
      samp_comb[3] = 'd0; // Not used
      samp[2] = samp_comb[2][p_useable_width-1:0];
      samp[3] = samp_comb[3][p_useable_width-1:0];
    end
  end
  else begin
    // 4GSPS
    if (tile_cfg.multiband == 0) begin // Single band
      if (tile_cfg.slice_cfg_setups[2].mixer == 1) begin
        samp_comb[2] = q_samp[0];
      end
      else begin
        samp_comb[2] = i_samp[2];
      end
      samp[2] = samp_comb[2][p_useable_width-1:0];
    end
    else begin // 2x Multi-band
      if (tile_cfg.slice_cfg_setups[2].mixer == 1) begin
        samp_comb[2] = q_samp[0] + q_samp[2];
      end
      else begin
        samp_comb[2] = 'd0; // Not used
      end
      samp[2] = samp_comb[2][p_useable_width:1];
    end
    samp_comb[3] = 'd0; // Not used
    samp[3] = samp_comb[3][p_useable_width-1:0];
  end
end

generate
for (i = 0; i < 4; i = i + 1) begin
  // Convert out reals, keep this verbose for debug
  always @(*) begin
     // Scale the value to an integer acceptable code range
     sequence_counter[i] = samp[i];
  `ifdef MAKE_RAMPS_POS_ONLY_IN_DEMO_TB
     sequence_counter_asreal[i] = ((sequence_counter[i] - 0)            * (in_scale_lsb/2));
  `else
     // Scale to 90% of range as dither can cause ringing with a full range triangle wave
     // used in the demo_tb to verify basic function.
     sequence_counter_asreal[i] = ((sequence_counter[i] - bit_width_d2) * in_scale_lsb) * 0.9;
  `endif
     f64_VIN_P_scaled[i] = VCM + (sequence_counter_asreal[i]/2);
     f64_VIN_N_scaled[i] = VCM - (sequence_counter_asreal[i]/2);
  end
end
endgenerate

// Assign outputs
assign vout_0_p = $realtobits(f64_VIN_P_scaled[0]);
assign vout_0_n = $realtobits(f64_VIN_N_scaled[0]);
assign vout_1_p = $realtobits(f64_VIN_P_scaled[1]);
assign vout_1_n = $realtobits(f64_VIN_N_scaled[1]);
assign vout_2_p = $realtobits(f64_VIN_P_scaled[2]);
assign vout_2_n = $realtobits(f64_VIN_N_scaled[2]);
assign vout_3_p = $realtobits(f64_VIN_P_scaled[3]);
assign vout_3_n = $realtobits(f64_VIN_N_scaled[3]);

// ----------------------------------------------------------------------------
// Status flag
// ----------------------------------------------------------------------------
assign status = s0_status|s1_status|s2_status|s3_status;

// ----------------------------------------------------------------------------
// Tile slices
// ----------------------------------------------------------------------------
      adc_src_slice #(
      .p_data_inc_val_init(p_data_inc_val_init),
      .p_data_type_width  (p_data_type_width  ),
      .p_useable_width    (p_useable_width    ),
      .p_slice_number     (0                  )
      ) ds_slice_0_1 (
         .tile_cfg       (tile_cfg              ),
         .clk_high       (s0_clk_phase_hl[31:16]),
         .clk_low        (s0_clk_phase_hl[15:0] ),
         .samp           (                      ),
         .i_samp         (i_samp[0]             ),
         .q_samp         (q_samp[0]             ),
         .enable         (s0_enable             ),
         .inc            (s0_inc                ),
         .div            (s0_div                ),
         .slice_type     (s0_type               ),
         .init           (s0_init               ),
         .status         (s0_status             )
      );
      adc_src_slice #(
      .p_data_inc_val_init(p_data_inc_val_init),
      .p_data_type_width  (p_data_type_width  ),
      .p_useable_width    (p_useable_width    ),
      .p_slice_number     (1                  )
      ) ds_slice_1_1 (
         .tile_cfg       (tile_cfg              ),
         .clk_high       (s1_clk_phase_hl[31:16]),
         .clk_low        (s1_clk_phase_hl[15:0] ),
         .samp           (                      ),
         .i_samp         (i_samp[1]             ),
         .q_samp         (q_samp[1]             ),
         .enable         (s1_enable             ),
         .inc            (s1_inc                ),
         .div            (s1_div                ),
         .slice_type     (s1_type               ),
         .init           (s1_init               ),
         .status         (s1_status             )
      );
      adc_src_slice #(
      .p_data_inc_val_init(p_data_inc_val_init),
      .p_data_type_width  (p_data_type_width  ),
      .p_useable_width    (p_useable_width    ),
      .p_slice_number     (2                  )
      ) ds_slice_2_1 (
         .tile_cfg       (tile_cfg              ),
         .clk_high       (s2_clk_phase_hl[31:16]),
         .clk_low        (s2_clk_phase_hl[15:0] ),
         .samp           (                      ),
         .i_samp         (i_samp[2]             ),
         .q_samp         (q_samp[2]             ),
         .enable         (s2_enable             ),
         .inc            (s2_inc                ),
         .div            (s2_div                ),
         .slice_type     (s2_type               ),
         .init           (s2_init               ),
         .status         (s2_status             )
      );
      adc_src_slice #(
      .p_data_inc_val_init(p_data_inc_val_init),
      .p_data_type_width  (p_data_type_width  ),
      .p_useable_width    (p_useable_width    ),
      .p_slice_number     (3                  )
      ) ds_slice_3_1 (
         .tile_cfg       (tile_cfg              ),
         .clk_high       (s3_clk_phase_hl[31:16]),
         .clk_low        (s3_clk_phase_hl[15:0] ),
         .samp           (                      ),
         .i_samp         (i_samp[3]             ),
         .q_samp         (q_samp[3]             ),
         .enable         (s3_enable             ),
         .inc            (s3_inc                ),
         .div            (s3_div                ),
         .slice_type     (s3_type               ),
         .init           (s3_init               ),
         .status         (s3_status             )
      );

endmodule

// ----------------------------------------------------------------------------
// Data sink slice block
// ----------------------------------------------------------------------------
module adc_src_slice #(
  parameter  p_useable_width     = 12,
  parameter  p_data_inc_val_init = 1,
  parameter  p_data_type_width   = 3,
  parameter  p_slice_number      = 0
) (
  input  tile_cfg_t                    tile_cfg, 

  input  wire                   [15:0] clk_high       , //
  input  wire                   [15:0] clk_low        , //
  output  wire   [p_useable_width-1:0] samp           , //
  output  wire   [p_useable_width-1:0] i_samp         , //
  output  wire   [p_useable_width-1:0] q_samp         , // 

  input  wire                          enable         , //
  input  wire    [p_useable_width-1:0] inc            , //
  input  wire                   [15:0] div            , //
  input  wire  [p_data_type_width-1:0] slice_type     , //
  input  wire    [p_useable_width-1:0] init           , //
  output wire                          status           //
  
  );

// ----------------------------------------------------------------------------
// Variables
// ----------------------------------------------------------------------------
reg sample_clock=0;

// ----------------------------------------------------------------------------
// clock generation
// ----------------------------------------------------------------------------
always @(*)
   while((clk_high != 16'd0) & (clk_low != 16'd0)) begin
      sample_clock = 1;
      #(clk_high);
      sample_clock = 0;
      #(clk_low);
   end

  hsadc_data_source #(

   .p_data_inc_val_init(p_data_inc_val_init),
   .p_data_type_width  (p_data_type_width  ),
   .p_useable_width    (p_useable_width    ),
   .p_slice_number     (p_slice_number     )

  ) hsadc_data_source_i(
  .tile_cfg        ( tile_cfg       ), // Tile configuration object

  .data_gen_type   ( slice_type     ), // input   wire [3:0]  
  .data_gen_inc    ( inc            ), // input   wire [31:0] 
  .data_gen_div    ( div            ), // input   wire [15:0] 
  .update_clk      ( sample_clock   ), // input   wire        
  .enable          ( enable         ), // input   wire

  .samp            ( samp           ), // output  wire [p_useable_width-1:0]
  .i_samp          ( i_samp         ), // output  wire [p_useable_width-1:0] 
  .q_samp          ( q_samp         )  // output  wire [p_useable_width-1:0] 

  );

endmodule

// ----------------------------------------------------------------------------
// Generic data generator. Capable of ramps, sine and other waves.
// Programmable increment
// ----------------------------------------------------------------------------
//`define MAKE_RAMPS_POS_ONLY_IN_DEMO_TB
module hsadc_data_source #(
  parameter  p_useable_width     = 12,  //
  parameter  p_data_inc_val_init = 1,   //
  parameter  p_data_type_width   = 1,   //
  parameter  p_slice_number      = 0    //
) (
 input   tile_cfg_t                     tile_cfg,  

 input   wire [p_data_type_width-1:0]   data_gen_type   , // 
 input   wire [p_useable_width-1:0]     data_gen_inc    , // 
 input   wire [15:0]                    data_gen_div    , //
 input   wire                           update_clk      , // 
 input   wire                           enable          , // 

 output  wire [p_useable_width-1:0]     samp            , // 
 output  wire [p_useable_width-1:0]     i_samp          , // 
 output  wire [p_useable_width-1:0]     q_samp            // 

);

adc_gen_cell #(

   .p_data_inc_val_init(p_data_inc_val_init),
   .p_data_type_width  (p_data_type_width  ),
   .p_useable_width    (p_useable_width    ),
   .p_slice_number     (p_slice_number     )

  ) adc_gen_cell_i (

  .tile_cfg    (tile_cfg               ), //
  .enable      (enable                 ), // 
  .clk         (update_clk             ), // 
  .dg_inc      (data_gen_inc           ), // 
  .dg_div      (data_gen_div           ), //
  .dg_init     ({p_useable_width{1'd0}}), // 
  .dg_type     (data_gen_type          ), // 
  .dg_fast_i   (i_samp                 ), //
  .dg_fast_q   (q_samp                 ),
  .dg_out      (samp                   )  // 
);

endmodule


// ----------------------------------------------------------------------------
// Generic data generator. Capable of ramps, sine and other waves.
// Programmable increment
// ----------------------------------------------------------------------------
module adc_gen_cell #(
  parameter  p_useable_width     = 12,             //
  parameter  p_data_inc_val_init = 1,              //
  parameter  p_data_type_width   = 1,              //
  parameter  p_slice_number      = 0
) (

  input  tile_cfg_t                     tile_cfg , //

  input  wire                           enable   , // 
  input  wire                           clk      , // 
  input  wire     [p_useable_width-1:0] dg_inc   , // 
  input  wire                    [15:0] dg_div   , // 
  input  wire     [p_useable_width-1:0] dg_init  , // 
  input  wire   [p_data_type_width-1:0] dg_type  , // 

  output reg      [p_useable_width-1:0] dg_out   , //
  output wire     [p_useable_width-1:0] dg_fast_i,  
  output wire     [p_useable_width-1:0] dg_fast_q
  
  );
  
// ----------------------------------------------------------------------------
// local params
// ----------------------------------------------------------------------------
localparam zero_stuff = 0; // 0 for the real number generators
  
// ----------------------------------------------------------------------------
// Variables
// ----------------------------------------------------------------------------
reg  [p_useable_width-1:0] counter      = 0;    //        
reg  [p_useable_width-1:0] counter_fast = 0;    // 
reg                        updown       = 1'd1; // 
reg  [p_useable_width-1:0] dg_inc_int   = p_data_inc_val_init; // Reg for timing
wire [p_useable_width-1:0] next_count; // 
wire                       overflow;   // 
wire [p_useable_width-1:0] sine_value; // 
wire [p_useable_width:0]   inc_by;     // 
wire [p_useable_width:0]   inc_by_inv; //
wire                       neg_quad;   //
reg                 [15:0] ce_count    = 0;//
wire                       ce;         //

// Mixer
wire [32:0] fm;       // mixer freq
wire [33:0] fs;       // sample freq

real  fmixer_incr_float                     = 0.0;
real  fmixer_counter_float                  = 0.0;
reg   [p_useable_width-1:0] fmixer_counter  = 0;

// ----------------------------------------------------------------------------
// Counter 
// ----------------------------------------------------------------------------
assign inc_by     =  {1'd0,{dg_inc_int[p_useable_width-1:0]}};
assign inc_by_inv = ~{1'd0,{dg_inc_int[p_useable_width-1:0]}} + {{p_useable_width{1'b0}}, 1'b1};
assign {overflow, next_count} = {1'd0,{counter}} + (updown?inc_by:inc_by_inv);

// ----------------------------------------------------------------------------
// Mixer settings
// ----------------------------------------------------------------------------
assign fm       = tile_cfg.slice_cfg_setups[p_slice_number].mixer_freq;
assign fs       = tile_cfg.slice_cfg_setups[p_slice_number].fs;
assign neg_quad = tile_cfg.slice_cfg_setups[p_slice_number].neg_quad;

// ----------------------------------------------------------------------------
// Clock enable generation
// ----------------------------------------------------------------------------
always @(posedge clk) begin
  if(enable) begin
    if (ce_count == dg_div-1) begin
      ce_count <= 'd0;
    end
    else begin
      ce_count <= ce_count + 1;
    end
  end
end
assign ce = (dg_div <= 'd1) ? 1'b1 : ((ce_count == dg_div-1) ? 1'b1 : 1'b0);

// ----------------------------------------------------------------------------
// RAMP generation
// ----------------------------------------------------------------------------
always @(posedge clk) begin
   dg_inc_int <= dg_inc; // Data increment
   if(enable && ce) begin
      updown <= updown;  // Default maintain value when enabled.

      // Counter load control. Assign sequence counter. May or may not change
      // the state of updown. 
      case (dg_type)
      `DGTYPE_TRGL     : case({updown,overflow})
                         2'b00 : begin counter <= next_count;              end
                         2'b01 : begin counter <= counter; updown <= 1'd1; end
                         2'b10 : begin counter <= next_count;              end
                         2'b11 : begin counter <= counter; updown <= 1'd0; end
                         endcase
      `DGTYPE_RAMPUP   : begin counter <= next_count; updown <= 1'd1;   end
      `DGTYPE_RAMPDOWN : begin counter <= next_count; updown <= 1'd0;   end
      `DGTYPE_SINE0    : begin counter <= next_count; updown <= 1'd1;   end
      `DGTYPE_SQR      : begin counter <= next_count; updown <= 1'd1;   end
      default          : counter <= 0;
      endcase
    end

    if(enable) begin

      // Calculate the address in the sine LUT for the mixed output
      fmixer_incr_float <= ($itor(fm) / $itor(fs)) * 1024.0;
      if (fmixer_counter_float + fmixer_incr_float < 1024) begin
        fmixer_counter_float <= fmixer_counter_float + fmixer_incr_float;
      end
      else begin
        fmixer_counter_float <= fmixer_counter_float + fmixer_incr_float - 1024.0;
      end
      fmixer_counter       <= counter - $rtoi(fmixer_counter_float);

      // OUTPUT aselection control. SINE waves come from the LUT's with the
      // counter used to address the LUT
      // Zero stuff has been removed as there is no concept in an analog source
      case (dg_type)
      `DGTYPE_SINE0    : dg_out <= sine_value;
      `DGTYPE_SQR      : if (counter[p_useable_width-1] == 0) begin
                           dg_out <= {1'b0, {(p_useable_width-1){1'b0}}};  // max -ve ( = 0 )
                         end
                         else begin
                           dg_out <= {1'b1, {(p_useable_width-1){1'b1}}};  // max +ve ( = all 1's )
                         end
      default          : dg_out <= counter;
      endcase 
      
   end else begin
      // Default
      fmixer_counter <= dg_init[p_useable_width-1:0];
      counter        <= dg_init[p_useable_width-1:0];
      dg_out         <= dg_init[p_useable_width-1:0];
      updown         <= 1'd1;
   end
end

// ----------------------------------------------------------------------------
// Instance the SINE wave LUT
// ----------------------------------------------------------------------------
`ifdef EXCLUDE_SINE_WAVE_LUTS
assign sine_value = 'd0;
`else
demo_tb_rfadc_sine_wave_lut sine0_lut (
   .sine_value     (sine_value         ), 
   .address        (counter[9:0]       ),
   .sine_value_i   (dg_fast_i          ),
   .sine_value_q   (dg_fast_q          ),
   .address_fast   (fmixer_counter[9:0]),
   .neg_quad       (neg_quad           )
);
`endif

endmodule

module demo_tb_rfadc_sine_wave_lut #(

   parameter bitwidth       = 12,
   parameter addresswidth   = 10

   ) (

   output wire [bitwidth-1:0]     sine_value   ,
   input  wire [addresswidth-1:0] address      ,
   output wire [bitwidth-1:0]     sine_value_i ,
   output wire [bitwidth-1:0]     sine_value_q ,
   input  wire [addresswidth-1:0] address_fast ,
   input  wire                    neg_quad

);

// array
wire [11:0] sine_lut1024_12bit[0:1023];

// -----------------------------------------------------------------------------
// Sine wave LUT
// -----------------------------------------------------------------------------
// Freq=50.0MHz,  LUT Entries=1024, Bitwidth=12, TwosComplement=0
assign sine_lut1024_12bit[0] = 12'h80c     ; // offset dec =   2060 signed = 12.559921
assign sine_lut1024_12bit[1] = 12'h819     ; // offset dec =   2073 signed = 25.119370
assign sine_lut1024_12bit[2] = 12'h825     ; // offset dec =   2085 signed = 37.677874
assign sine_lut1024_12bit[3] = 12'h832     ; // offset dec =   2098 signed = 50.234961
assign sine_lut1024_12bit[4] = 12'h83e     ; // offset dec =   2110 signed = 62.790159
assign sine_lut1024_12bit[5] = 12'h84b     ; // offset dec =   2123 signed = 75.342995
assign sine_lut1024_12bit[6] = 12'h857     ; // offset dec =   2135 signed = 87.892997
assign sine_lut1024_12bit[7] = 12'h864     ; // offset dec =   2148 signed = 100.439693
assign sine_lut1024_12bit[8] = 12'h870     ; // offset dec =   2160 signed = 112.982612
assign sine_lut1024_12bit[9] = 12'h87d     ; // offset dec =   2173 signed = 125.521282
assign sine_lut1024_12bit[10] = 12'h88a     ; // offset dec =   2186 signed = 138.055230
assign sine_lut1024_12bit[11] = 12'h896     ; // offset dec =   2198 signed = 150.583986
assign sine_lut1024_12bit[12] = 12'h8a3     ; // offset dec =   2211 signed = 163.107078
assign sine_lut1024_12bit[13] = 12'h8af     ; // offset dec =   2223 signed = 175.624036
assign sine_lut1024_12bit[14] = 12'h8bc     ; // offset dec =   2236 signed = 188.134388
assign sine_lut1024_12bit[15] = 12'h8c8     ; // offset dec =   2248 signed = 200.637664
assign sine_lut1024_12bit[16] = 12'h8d5     ; // offset dec =   2261 signed = 213.133394
assign sine_lut1024_12bit[17] = 12'h8e1     ; // offset dec =   2273 signed = 225.621108
assign sine_lut1024_12bit[18] = 12'h8ee     ; // offset dec =   2286 signed = 238.100336
assign sine_lut1024_12bit[19] = 12'h8fa     ; // offset dec =   2298 signed = 250.570608
assign sine_lut1024_12bit[20] = 12'h907     ; // offset dec =   2311 signed = 263.031457
assign sine_lut1024_12bit[21] = 12'h913     ; // offset dec =   2323 signed = 275.482412
assign sine_lut1024_12bit[22] = 12'h91f     ; // offset dec =   2335 signed = 287.923006
assign sine_lut1024_12bit[23] = 12'h92c     ; // offset dec =   2348 signed = 300.352771
assign sine_lut1024_12bit[24] = 12'h938     ; // offset dec =   2360 signed = 312.771239
assign sine_lut1024_12bit[25] = 12'h945     ; // offset dec =   2373 signed = 325.177944
assign sine_lut1024_12bit[26] = 12'h951     ; // offset dec =   2385 signed = 337.572418
assign sine_lut1024_12bit[27] = 12'h95d     ; // offset dec =   2397 signed = 349.954196
assign sine_lut1024_12bit[28] = 12'h96a     ; // offset dec =   2410 signed = 362.322811
assign sine_lut1024_12bit[29] = 12'h976     ; // offset dec =   2422 signed = 374.677799
assign sine_lut1024_12bit[30] = 12'h983     ; // offset dec =   2435 signed = 387.018695
assign sine_lut1024_12bit[31] = 12'h98f     ; // offset dec =   2447 signed = 399.345035
assign sine_lut1024_12bit[32] = 12'h99b     ; // offset dec =   2459 signed = 411.656355
assign sine_lut1024_12bit[33] = 12'h9a7     ; // offset dec =   2471 signed = 423.952192
assign sine_lut1024_12bit[34] = 12'h9b4     ; // offset dec =   2484 signed = 436.232083
assign sine_lut1024_12bit[35] = 12'h9c0     ; // offset dec =   2496 signed = 448.495567
assign sine_lut1024_12bit[36] = 12'h9cc     ; // offset dec =   2508 signed = 460.742183
assign sine_lut1024_12bit[37] = 12'h9d8     ; // offset dec =   2520 signed = 472.971470
assign sine_lut1024_12bit[38] = 12'h9e5     ; // offset dec =   2533 signed = 485.182968
assign sine_lut1024_12bit[39] = 12'h9f1     ; // offset dec =   2545 signed = 497.376217
assign sine_lut1024_12bit[40] = 12'h9fd     ; // offset dec =   2557 signed = 509.550759
assign sine_lut1024_12bit[41] = 12'ha09     ; // offset dec =   2569 signed = 521.706137
assign sine_lut1024_12bit[42] = 12'ha15     ; // offset dec =   2581 signed = 533.841892
assign sine_lut1024_12bit[43] = 12'ha21     ; // offset dec =   2593 signed = 545.957569
assign sine_lut1024_12bit[44] = 12'ha2e     ; // offset dec =   2606 signed = 558.052712
assign sine_lut1024_12bit[45] = 12'ha3a     ; // offset dec =   2618 signed = 570.126866
assign sine_lut1024_12bit[46] = 12'ha46     ; // offset dec =   2630 signed = 582.179576
assign sine_lut1024_12bit[47] = 12'ha52     ; // offset dec =   2642 signed = 594.210390
assign sine_lut1024_12bit[48] = 12'ha5e     ; // offset dec =   2654 signed = 606.218855
assign sine_lut1024_12bit[49] = 12'ha6a     ; // offset dec =   2666 signed = 618.204519
assign sine_lut1024_12bit[50] = 12'ha76     ; // offset dec =   2678 signed = 630.166932
assign sine_lut1024_12bit[51] = 12'ha82     ; // offset dec =   2690 signed = 642.105644
assign sine_lut1024_12bit[52] = 12'ha8e     ; // offset dec =   2702 signed = 654.020205
assign sine_lut1024_12bit[53] = 12'ha99     ; // offset dec =   2713 signed = 665.910168
assign sine_lut1024_12bit[54] = 12'haa5     ; // offset dec =   2725 signed = 677.775084
assign sine_lut1024_12bit[55] = 12'hab1     ; // offset dec =   2737 signed = 689.614509
assign sine_lut1024_12bit[56] = 12'habd     ; // offset dec =   2749 signed = 701.427997
assign sine_lut1024_12bit[57] = 12'hac9     ; // offset dec =   2761 signed = 713.215103
assign sine_lut1024_12bit[58] = 12'had4     ; // offset dec =   2772 signed = 724.975384
assign sine_lut1024_12bit[59] = 12'hae0     ; // offset dec =   2784 signed = 736.708398
assign sine_lut1024_12bit[60] = 12'haec     ; // offset dec =   2796 signed = 748.413703
assign sine_lut1024_12bit[61] = 12'haf8     ; // offset dec =   2808 signed = 760.090860
assign sine_lut1024_12bit[62] = 12'hb03     ; // offset dec =   2819 signed = 771.739428
assign sine_lut1024_12bit[63] = 12'hb0f     ; // offset dec =   2831 signed = 783.358970
assign sine_lut1024_12bit[64] = 12'hb1a     ; // offset dec =   2842 signed = 794.949050
assign sine_lut1024_12bit[65] = 12'hb26     ; // offset dec =   2854 signed = 806.509230
assign sine_lut1024_12bit[66] = 12'hb32     ; // offset dec =   2866 signed = 818.039076
assign sine_lut1024_12bit[67] = 12'hb3d     ; // offset dec =   2877 signed = 829.538155
assign sine_lut1024_12bit[68] = 12'hb49     ; // offset dec =   2889 signed = 841.006034
assign sine_lut1024_12bit[69] = 12'hb54     ; // offset dec =   2900 signed = 852.442282
assign sine_lut1024_12bit[70] = 12'hb5f     ; // offset dec =   2911 signed = 863.846468
assign sine_lut1024_12bit[71] = 12'hb6b     ; // offset dec =   2923 signed = 875.218164
assign sine_lut1024_12bit[72] = 12'hb76     ; // offset dec =   2934 signed = 886.556941
assign sine_lut1024_12bit[73] = 12'hb81     ; // offset dec =   2945 signed = 897.862375
assign sine_lut1024_12bit[74] = 12'hb8d     ; // offset dec =   2957 signed = 909.134038
assign sine_lut1024_12bit[75] = 12'hb98     ; // offset dec =   2968 signed = 920.371508
assign sine_lut1024_12bit[76] = 12'hba3     ; // offset dec =   2979 signed = 931.574361
assign sine_lut1024_12bit[77] = 12'hbae     ; // offset dec =   2990 signed = 942.742177
assign sine_lut1024_12bit[78] = 12'hbb9     ; // offset dec =   3001 signed = 953.874535
assign sine_lut1024_12bit[79] = 12'hbc4     ; // offset dec =   3012 signed = 964.971017
assign sine_lut1024_12bit[80] = 12'hbd0     ; // offset dec =   3024 signed = 976.031204
assign sine_lut1024_12bit[81] = 12'hbdb     ; // offset dec =   3035 signed = 987.054683
assign sine_lut1024_12bit[82] = 12'hbe6     ; // offset dec =   3046 signed = 998.041036
assign sine_lut1024_12bit[83] = 12'hbf0     ; // offset dec =   3056 signed = 1008.989852
assign sine_lut1024_12bit[84] = 12'hbfb     ; // offset dec =   3067 signed = 1019.900719
assign sine_lut1024_12bit[85] = 12'hc06     ; // offset dec =   3078 signed = 1030.773226
assign sine_lut1024_12bit[86] = 12'hc11     ; // offset dec =   3089 signed = 1041.606964
assign sine_lut1024_12bit[87] = 12'hc1c     ; // offset dec =   3100 signed = 1052.401526
assign sine_lut1024_12bit[88] = 12'hc27     ; // offset dec =   3111 signed = 1063.156506
assign sine_lut1024_12bit[89] = 12'hc31     ; // offset dec =   3121 signed = 1073.871499
assign sine_lut1024_12bit[90] = 12'hc3c     ; // offset dec =   3132 signed = 1084.546103
assign sine_lut1024_12bit[91] = 12'hc47     ; // offset dec =   3143 signed = 1095.179915
assign sine_lut1024_12bit[92] = 12'hc51     ; // offset dec =   3153 signed = 1105.772536
assign sine_lut1024_12bit[93] = 12'hc5c     ; // offset dec =   3164 signed = 1116.323568
assign sine_lut1024_12bit[94] = 12'hc66     ; // offset dec =   3174 signed = 1126.832613
assign sine_lut1024_12bit[95] = 12'hc71     ; // offset dec =   3185 signed = 1137.299277
assign sine_lut1024_12bit[96] = 12'hc7b     ; // offset dec =   3195 signed = 1147.723166
assign sine_lut1024_12bit[97] = 12'hc86     ; // offset dec =   3206 signed = 1158.103887
assign sine_lut1024_12bit[98] = 12'hc90     ; // offset dec =   3216 signed = 1168.441050
assign sine_lut1024_12bit[99] = 12'hc9a     ; // offset dec =   3226 signed = 1178.734267
assign sine_lut1024_12bit[100] = 12'hca4     ; // offset dec =   3236 signed = 1188.983150
assign sine_lut1024_12bit[101] = 12'hcaf     ; // offset dec =   3247 signed = 1199.187314
assign sine_lut1024_12bit[102] = 12'hcb9     ; // offset dec =   3257 signed = 1209.346376
assign sine_lut1024_12bit[103] = 12'hcc3     ; // offset dec =   3267 signed = 1219.459952
assign sine_lut1024_12bit[104] = 12'hccd     ; // offset dec =   3277 signed = 1229.527662
assign sine_lut1024_12bit[105] = 12'hcd7     ; // offset dec =   3287 signed = 1239.549129
assign sine_lut1024_12bit[106] = 12'hce1     ; // offset dec =   3297 signed = 1249.523974
assign sine_lut1024_12bit[107] = 12'hceb     ; // offset dec =   3307 signed = 1259.451823
assign sine_lut1024_12bit[108] = 12'hcf5     ; // offset dec =   3317 signed = 1269.332303
assign sine_lut1024_12bit[109] = 12'hcff     ; // offset dec =   3327 signed = 1279.165041
assign sine_lut1024_12bit[110] = 12'hd08     ; // offset dec =   3336 signed = 1288.949669
assign sine_lut1024_12bit[111] = 12'hd12     ; // offset dec =   3346 signed = 1298.685817
assign sine_lut1024_12bit[112] = 12'hd1c     ; // offset dec =   3356 signed = 1308.373121
assign sine_lut1024_12bit[113] = 12'hd26     ; // offset dec =   3366 signed = 1318.011214
assign sine_lut1024_12bit[114] = 12'hd2f     ; // offset dec =   3375 signed = 1327.599736
assign sine_lut1024_12bit[115] = 12'hd39     ; // offset dec =   3385 signed = 1337.138325
assign sine_lut1024_12bit[116] = 12'hd42     ; // offset dec =   3394 signed = 1346.626622
assign sine_lut1024_12bit[117] = 12'hd4c     ; // offset dec =   3404 signed = 1356.064271
assign sine_lut1024_12bit[118] = 12'hd55     ; // offset dec =   3413 signed = 1365.450917
assign sine_lut1024_12bit[119] = 12'hd5e     ; // offset dec =   3422 signed = 1374.786206
assign sine_lut1024_12bit[120] = 12'hd68     ; // offset dec =   3432 signed = 1384.069788
assign sine_lut1024_12bit[121] = 12'hd71     ; // offset dec =   3441 signed = 1393.301313
assign sine_lut1024_12bit[122] = 12'hd7a     ; // offset dec =   3450 signed = 1402.480435
assign sine_lut1024_12bit[123] = 12'hd83     ; // offset dec =   3459 signed = 1411.606807
assign sine_lut1024_12bit[124] = 12'hd8c     ; // offset dec =   3468 signed = 1420.680087
assign sine_lut1024_12bit[125] = 12'hd95     ; // offset dec =   3477 signed = 1429.699934
assign sine_lut1024_12bit[126] = 12'hd9e     ; // offset dec =   3486 signed = 1438.666007
assign sine_lut1024_12bit[127] = 12'hda7     ; // offset dec =   3495 signed = 1447.577971
assign sine_lut1024_12bit[128] = 12'hdb0     ; // offset dec =   3504 signed = 1456.435489
assign sine_lut1024_12bit[129] = 12'hdb9     ; // offset dec =   3513 signed = 1465.238229
assign sine_lut1024_12bit[130] = 12'hdc1     ; // offset dec =   3521 signed = 1473.985860
assign sine_lut1024_12bit[131] = 12'hdca     ; // offset dec =   3530 signed = 1482.678052
assign sine_lut1024_12bit[132] = 12'hdd3     ; // offset dec =   3539 signed = 1491.314478
assign sine_lut1024_12bit[133] = 12'hddb     ; // offset dec =   3547 signed = 1499.894815
assign sine_lut1024_12bit[134] = 12'hde4     ; // offset dec =   3556 signed = 1508.418738
assign sine_lut1024_12bit[135] = 12'hdec     ; // offset dec =   3564 signed = 1516.885928
assign sine_lut1024_12bit[136] = 12'hdf5     ; // offset dec =   3573 signed = 1525.296066
assign sine_lut1024_12bit[137] = 12'hdfd     ; // offset dec =   3581 signed = 1533.648835
assign sine_lut1024_12bit[138] = 12'he05     ; // offset dec =   3589 signed = 1541.943922
assign sine_lut1024_12bit[139] = 12'he0e     ; // offset dec =   3598 signed = 1550.181015
assign sine_lut1024_12bit[140] = 12'he16     ; // offset dec =   3606 signed = 1558.359803
assign sine_lut1024_12bit[141] = 12'he1e     ; // offset dec =   3614 signed = 1566.479980
assign sine_lut1024_12bit[142] = 12'he26     ; // offset dec =   3622 signed = 1574.541239
assign sine_lut1024_12bit[143] = 12'he2e     ; // offset dec =   3630 signed = 1582.543277
assign sine_lut1024_12bit[144] = 12'he36     ; // offset dec =   3638 signed = 1590.485794
assign sine_lut1024_12bit[145] = 12'he3e     ; // offset dec =   3646 signed = 1598.368491
assign sine_lut1024_12bit[146] = 12'he46     ; // offset dec =   3654 signed = 1606.191072
assign sine_lut1024_12bit[147] = 12'he4d     ; // offset dec =   3661 signed = 1613.953241
assign sine_lut1024_12bit[148] = 12'he55     ; // offset dec =   3669 signed = 1621.654708
assign sine_lut1024_12bit[149] = 12'he5d     ; // offset dec =   3677 signed = 1629.295182
assign sine_lut1024_12bit[150] = 12'he64     ; // offset dec =   3684 signed = 1636.874376
assign sine_lut1024_12bit[151] = 12'he6c     ; // offset dec =   3692 signed = 1644.392005
assign sine_lut1024_12bit[152] = 12'he73     ; // offset dec =   3699 signed = 1651.847787
assign sine_lut1024_12bit[153] = 12'he7b     ; // offset dec =   3707 signed = 1659.241440
assign sine_lut1024_12bit[154] = 12'he82     ; // offset dec =   3714 signed = 1666.572688
assign sine_lut1024_12bit[155] = 12'he89     ; // offset dec =   3721 signed = 1673.841253
assign sine_lut1024_12bit[156] = 12'he91     ; // offset dec =   3729 signed = 1681.046863
assign sine_lut1024_12bit[157] = 12'he98     ; // offset dec =   3736 signed = 1688.189247
assign sine_lut1024_12bit[158] = 12'he9f     ; // offset dec =   3743 signed = 1695.268136
assign sine_lut1024_12bit[159] = 12'hea6     ; // offset dec =   3750 signed = 1702.283263
assign sine_lut1024_12bit[160] = 12'head     ; // offset dec =   3757 signed = 1709.234366
assign sine_lut1024_12bit[161] = 12'heb4     ; // offset dec =   3764 signed = 1716.121182
assign sine_lut1024_12bit[162] = 12'heba     ; // offset dec =   3770 signed = 1722.943453
assign sine_lut1024_12bit[163] = 12'hec1     ; // offset dec =   3777 signed = 1729.700921
assign sine_lut1024_12bit[164] = 12'hec8     ; // offset dec =   3784 signed = 1736.393334
assign sine_lut1024_12bit[165] = 12'hecf     ; // offset dec =   3791 signed = 1743.020438
assign sine_lut1024_12bit[166] = 12'hed5     ; // offset dec =   3797 signed = 1749.581985
assign sine_lut1024_12bit[167] = 12'hedc     ; // offset dec =   3804 signed = 1756.077728
assign sine_lut1024_12bit[168] = 12'hee2     ; // offset dec =   3810 signed = 1762.507423
assign sine_lut1024_12bit[169] = 12'hee8     ; // offset dec =   3816 signed = 1768.870828
assign sine_lut1024_12bit[170] = 12'heef     ; // offset dec =   3823 signed = 1775.167703
assign sine_lut1024_12bit[171] = 12'hef5     ; // offset dec =   3829 signed = 1781.397812
assign sine_lut1024_12bit[172] = 12'hefb     ; // offset dec =   3835 signed = 1787.560920
assign sine_lut1024_12bit[173] = 12'hf01     ; // offset dec =   3841 signed = 1793.656796
assign sine_lut1024_12bit[174] = 12'hf07     ; // offset dec =   3847 signed = 1799.685210
assign sine_lut1024_12bit[175] = 12'hf0d     ; // offset dec =   3853 signed = 1805.645935
assign sine_lut1024_12bit[176] = 12'hf13     ; // offset dec =   3859 signed = 1811.538748
assign sine_lut1024_12bit[177] = 12'hf19     ; // offset dec =   3865 signed = 1817.363427
assign sine_lut1024_12bit[178] = 12'hf1f     ; // offset dec =   3871 signed = 1823.119753
assign sine_lut1024_12bit[179] = 12'hf24     ; // offset dec =   3876 signed = 1828.807508
assign sine_lut1024_12bit[180] = 12'hf2a     ; // offset dec =   3882 signed = 1834.426480
assign sine_lut1024_12bit[181] = 12'hf2f     ; // offset dec =   3887 signed = 1839.976456
assign sine_lut1024_12bit[182] = 12'hf35     ; // offset dec =   3893 signed = 1845.457229
assign sine_lut1024_12bit[183] = 12'hf3a     ; // offset dec =   3898 signed = 1850.868592
assign sine_lut1024_12bit[184] = 12'hf40     ; // offset dec =   3904 signed = 1856.210341
assign sine_lut1024_12bit[185] = 12'hf45     ; // offset dec =   3909 signed = 1861.482276
assign sine_lut1024_12bit[186] = 12'hf4a     ; // offset dec =   3914 signed = 1866.684198
assign sine_lut1024_12bit[187] = 12'hf4f     ; // offset dec =   3919 signed = 1871.815912
assign sine_lut1024_12bit[188] = 12'hf54     ; // offset dec =   3924 signed = 1876.877224
assign sine_lut1024_12bit[189] = 12'hf59     ; // offset dec =   3929 signed = 1881.867945
assign sine_lut1024_12bit[190] = 12'hf5e     ; // offset dec =   3934 signed = 1886.787886
assign sine_lut1024_12bit[191] = 12'hf63     ; // offset dec =   3939 signed = 1891.636863
assign sine_lut1024_12bit[192] = 12'hf68     ; // offset dec =   3944 signed = 1896.414693
assign sine_lut1024_12bit[193] = 12'hf6d     ; // offset dec =   3949 signed = 1901.121196
assign sine_lut1024_12bit[194] = 12'hf71     ; // offset dec =   3953 signed = 1905.756196
assign sine_lut1024_12bit[195] = 12'hf76     ; // offset dec =   3958 signed = 1910.319517
assign sine_lut1024_12bit[196] = 12'hf7a     ; // offset dec =   3962 signed = 1914.810990
assign sine_lut1024_12bit[197] = 12'hf7f     ; // offset dec =   3967 signed = 1919.230443
assign sine_lut1024_12bit[198] = 12'hf83     ; // offset dec =   3971 signed = 1923.577712
assign sine_lut1024_12bit[199] = 12'hf87     ; // offset dec =   3975 signed = 1927.852633
assign sine_lut1024_12bit[200] = 12'hf8c     ; // offset dec =   3980 signed = 1932.055045
assign sine_lut1024_12bit[201] = 12'hf90     ; // offset dec =   3984 signed = 1936.184790
assign sine_lut1024_12bit[202] = 12'hf94     ; // offset dec =   3988 signed = 1940.241712
assign sine_lut1024_12bit[203] = 12'hf98     ; // offset dec =   3992 signed = 1944.225660
assign sine_lut1024_12bit[204] = 12'hf9c     ; // offset dec =   3996 signed = 1948.136483
assign sine_lut1024_12bit[205] = 12'hf9f     ; // offset dec =   3999 signed = 1951.974033
assign sine_lut1024_12bit[206] = 12'hfa3     ; // offset dec =   4003 signed = 1955.738168
assign sine_lut1024_12bit[207] = 12'hfa7     ; // offset dec =   4007 signed = 1959.428745
assign sine_lut1024_12bit[208] = 12'hfab     ; // offset dec =   4011 signed = 1963.045625
assign sine_lut1024_12bit[209] = 12'hfae     ; // offset dec =   4014 signed = 1966.588672
assign sine_lut1024_12bit[210] = 12'hfb2     ; // offset dec =   4018 signed = 1970.057754
assign sine_lut1024_12bit[211] = 12'hfb5     ; // offset dec =   4021 signed = 1973.452739
assign sine_lut1024_12bit[212] = 12'hfb8     ; // offset dec =   4024 signed = 1976.773500
assign sine_lut1024_12bit[213] = 12'hfbc     ; // offset dec =   4028 signed = 1980.019913
assign sine_lut1024_12bit[214] = 12'hfbf     ; // offset dec =   4031 signed = 1983.191854
assign sine_lut1024_12bit[215] = 12'hfc2     ; // offset dec =   4034 signed = 1986.289205
assign sine_lut1024_12bit[216] = 12'hfc5     ; // offset dec =   4037 signed = 1989.311849
assign sine_lut1024_12bit[217] = 12'hfc8     ; // offset dec =   4040 signed = 1992.259672
assign sine_lut1024_12bit[218] = 12'hfcb     ; // offset dec =   4043 signed = 1995.132564
assign sine_lut1024_12bit[219] = 12'hfcd     ; // offset dec =   4045 signed = 1997.930416
assign sine_lut1024_12bit[220] = 12'hfd0     ; // offset dec =   4048 signed = 2000.653124
assign sine_lut1024_12bit[221] = 12'hfd3     ; // offset dec =   4051 signed = 2003.300585
assign sine_lut1024_12bit[222] = 12'hfd5     ; // offset dec =   4053 signed = 2005.872699
assign sine_lut1024_12bit[223] = 12'hfd8     ; // offset dec =   4056 signed = 2008.369369
assign sine_lut1024_12bit[224] = 12'hfda     ; // offset dec =   4058 signed = 2010.790503
assign sine_lut1024_12bit[225] = 12'hfdd     ; // offset dec =   4061 signed = 2013.136007
assign sine_lut1024_12bit[226] = 12'hfdf     ; // offset dec =   4063 signed = 2015.405796
assign sine_lut1024_12bit[227] = 12'hfe1     ; // offset dec =   4065 signed = 2017.599782
assign sine_lut1024_12bit[228] = 12'hfe3     ; // offset dec =   4067 signed = 2019.717884
assign sine_lut1024_12bit[229] = 12'hfe5     ; // offset dec =   4069 signed = 2021.760021
assign sine_lut1024_12bit[230] = 12'hfe7     ; // offset dec =   4071 signed = 2023.726118
assign sine_lut1024_12bit[231] = 12'hfe9     ; // offset dec =   4073 signed = 2025.616100
assign sine_lut1024_12bit[232] = 12'hfeb     ; // offset dec =   4075 signed = 2027.429896
assign sine_lut1024_12bit[233] = 12'hfed     ; // offset dec =   4077 signed = 2029.167437
assign sine_lut1024_12bit[234] = 12'hfee     ; // offset dec =   4078 signed = 2030.828659
assign sine_lut1024_12bit[235] = 12'hff0     ; // offset dec =   4080 signed = 2032.413499
assign sine_lut1024_12bit[236] = 12'hff1     ; // offset dec =   4081 signed = 2033.921897
assign sine_lut1024_12bit[237] = 12'hff3     ; // offset dec =   4083 signed = 2035.353797
assign sine_lut1024_12bit[238] = 12'hff4     ; // offset dec =   4084 signed = 2036.709145
assign sine_lut1024_12bit[239] = 12'hff5     ; // offset dec =   4085 signed = 2037.987889
assign sine_lut1024_12bit[240] = 12'hff7     ; // offset dec =   4087 signed = 2039.189982
assign sine_lut1024_12bit[241] = 12'hff8     ; // offset dec =   4088 signed = 2040.315379
assign sine_lut1024_12bit[242] = 12'hff9     ; // offset dec =   4089 signed = 2041.364037
assign sine_lut1024_12bit[243] = 12'hffa     ; // offset dec =   4090 signed = 2042.335916
assign sine_lut1024_12bit[244] = 12'hffb     ; // offset dec =   4091 signed = 2043.230981
assign sine_lut1024_12bit[245] = 12'hffc     ; // offset dec =   4092 signed = 2044.049197
assign sine_lut1024_12bit[246] = 12'hffc     ; // offset dec =   4092 signed = 2044.790533
assign sine_lut1024_12bit[247] = 12'hffd     ; // offset dec =   4093 signed = 2045.454963
assign sine_lut1024_12bit[248] = 12'hffe     ; // offset dec =   4094 signed = 2046.042460
assign sine_lut1024_12bit[249] = 12'hffe     ; // offset dec =   4094 signed = 2046.553004
assign sine_lut1024_12bit[250] = 12'hffe     ; // offset dec =   4094 signed = 2046.986573
assign sine_lut1024_12bit[251] = 12'hfff     ; // offset dec =   4095 signed = 2047.343153
assign sine_lut1024_12bit[252] = 12'hfff     ; // offset dec =   4095 signed = 2047.622730
assign sine_lut1024_12bit[253] = 12'hfff     ; // offset dec =   4095 signed = 2047.825293
assign sine_lut1024_12bit[254] = 12'hfff     ; // offset dec =   4095 signed = 2047.950835
assign sine_lut1024_12bit[255] = 12'hfff     ; // offset dec =   4095 signed = 2047.999351
assign sine_lut1024_12bit[256] = 12'hfff     ; // offset dec =   4095 signed = 2047.970839
assign sine_lut1024_12bit[257] = 12'hfff     ; // offset dec =   4095 signed = 2047.865300
assign sine_lut1024_12bit[258] = 12'hfff     ; // offset dec =   4095 signed = 2047.682738
assign sine_lut1024_12bit[259] = 12'hfff     ; // offset dec =   4095 signed = 2047.423160
assign sine_lut1024_12bit[260] = 12'hfff     ; // offset dec =   4095 signed = 2047.086576
assign sine_lut1024_12bit[261] = 12'hffe     ; // offset dec =   4094 signed = 2046.672999
assign sine_lut1024_12bit[262] = 12'hffe     ; // offset dec =   4094 signed = 2046.182444
assign sine_lut1024_12bit[263] = 12'hffd     ; // offset dec =   4093 signed = 2045.614929
assign sine_lut1024_12bit[264] = 12'hffc     ; // offset dec =   4092 signed = 2044.970476
assign sine_lut1024_12bit[265] = 12'hffc     ; // offset dec =   4092 signed = 2044.249109
assign sine_lut1024_12bit[266] = 12'hffb     ; // offset dec =   4091 signed = 2043.450855
assign sine_lut1024_12bit[267] = 12'hffa     ; // offset dec =   4090 signed = 2042.575744
assign sine_lut1024_12bit[268] = 12'hff9     ; // offset dec =   4089 signed = 2041.623810
assign sine_lut1024_12bit[269] = 12'hff8     ; // offset dec =   4088 signed = 2040.595087
assign sine_lut1024_12bit[270] = 12'hff7     ; // offset dec =   4087 signed = 2039.489615
assign sine_lut1024_12bit[271] = 12'hff6     ; // offset dec =   4086 signed = 2038.307435
assign sine_lut1024_12bit[272] = 12'hff5     ; // offset dec =   4085 signed = 2037.048592
assign sine_lut1024_12bit[273] = 12'hff3     ; // offset dec =   4083 signed = 2035.713133
assign sine_lut1024_12bit[274] = 12'hff2     ; // offset dec =   4082 signed = 2034.301109
assign sine_lut1024_12bit[275] = 12'hff0     ; // offset dec =   4080 signed = 2032.812571
assign sine_lut1024_12bit[276] = 12'hfef     ; // offset dec =   4079 signed = 2031.247577
assign sine_lut1024_12bit[277] = 12'hfed     ; // offset dec =   4077 signed = 2029.606185
assign sine_lut1024_12bit[278] = 12'hfeb     ; // offset dec =   4075 signed = 2027.888457
assign sine_lut1024_12bit[279] = 12'hfea     ; // offset dec =   4074 signed = 2026.094458
assign sine_lut1024_12bit[280] = 12'hfe8     ; // offset dec =   4072 signed = 2024.224254
assign sine_lut1024_12bit[281] = 12'hfe6     ; // offset dec =   4070 signed = 2022.277917
assign sine_lut1024_12bit[282] = 12'hfe4     ; // offset dec =   4068 signed = 2020.255520
assign sine_lut1024_12bit[283] = 12'hfe2     ; // offset dec =   4066 signed = 2018.157138
assign sine_lut1024_12bit[284] = 12'hfdf     ; // offset dec =   4063 signed = 2015.982850
assign sine_lut1024_12bit[285] = 12'hfdd     ; // offset dec =   4061 signed = 2013.732739
assign sine_lut1024_12bit[286] = 12'hfdb     ; // offset dec =   4059 signed = 2011.406889
assign sine_lut1024_12bit[287] = 12'hfd9     ; // offset dec =   4057 signed = 2009.005388
assign sine_lut1024_12bit[288] = 12'hfd6     ; // offset dec =   4054 signed = 2006.528325
assign sine_lut1024_12bit[289] = 12'hfd3     ; // offset dec =   4051 signed = 2003.975794
assign sine_lut1024_12bit[290] = 12'hfd1     ; // offset dec =   4049 signed = 2001.347891
assign sine_lut1024_12bit[291] = 12'hfce     ; // offset dec =   4046 signed = 1998.644714
assign sine_lut1024_12bit[292] = 12'hfcb     ; // offset dec =   4043 signed = 1995.866366
assign sine_lut1024_12bit[293] = 12'hfc9     ; // offset dec =   4041 signed = 1993.012952
assign sine_lut1024_12bit[294] = 12'hfc6     ; // offset dec =   4038 signed = 1990.084577
assign sine_lut1024_12bit[295] = 12'hfc3     ; // offset dec =   4035 signed = 1987.081353
assign sine_lut1024_12bit[296] = 12'hfc0     ; // offset dec =   4032 signed = 1984.003392
assign sine_lut1024_12bit[297] = 12'hfbc     ; // offset dec =   4028 signed = 1980.850810
assign sine_lut1024_12bit[298] = 12'hfb9     ; // offset dec =   4025 signed = 1977.623726
assign sine_lut1024_12bit[299] = 12'hfb6     ; // offset dec =   4022 signed = 1974.322260
assign sine_lut1024_12bit[300] = 12'hfb2     ; // offset dec =   4018 signed = 1970.946539
assign sine_lut1024_12bit[301] = 12'hfaf     ; // offset dec =   4015 signed = 1967.496687
assign sine_lut1024_12bit[302] = 12'hfab     ; // offset dec =   4011 signed = 1963.972835
assign sine_lut1024_12bit[303] = 12'hfa8     ; // offset dec =   4008 signed = 1960.375116
assign sine_lut1024_12bit[304] = 12'hfa4     ; // offset dec =   4004 signed = 1956.703664
assign sine_lut1024_12bit[305] = 12'hfa0     ; // offset dec =   4000 signed = 1952.958619
assign sine_lut1024_12bit[306] = 12'hf9d     ; // offset dec =   3997 signed = 1949.140120
assign sine_lut1024_12bit[307] = 12'hf99     ; // offset dec =   3993 signed = 1945.248312
assign sine_lut1024_12bit[308] = 12'hf95     ; // offset dec =   3989 signed = 1941.283340
assign sine_lut1024_12bit[309] = 12'hf91     ; // offset dec =   3985 signed = 1937.245354
assign sine_lut1024_12bit[310] = 12'hf8d     ; // offset dec =   3981 signed = 1933.134506
assign sine_lut1024_12bit[311] = 12'hf88     ; // offset dec =   3976 signed = 1928.950950
assign sine_lut1024_12bit[312] = 12'hf84     ; // offset dec =   3972 signed = 1924.694844
assign sine_lut1024_12bit[313] = 12'hf80     ; // offset dec =   3968 signed = 1920.366348
assign sine_lut1024_12bit[314] = 12'hf7b     ; // offset dec =   3963 signed = 1915.965624
assign sine_lut1024_12bit[315] = 12'hf77     ; // offset dec =   3959 signed = 1911.492839
assign sine_lut1024_12bit[316] = 12'hf72     ; // offset dec =   3954 signed = 1906.948159
assign sine_lut1024_12bit[317] = 12'hf6e     ; // offset dec =   3950 signed = 1902.331757
assign sine_lut1024_12bit[318] = 12'hf69     ; // offset dec =   3945 signed = 1897.643806
assign sine_lut1024_12bit[319] = 12'hf64     ; // offset dec =   3940 signed = 1892.884482
assign sine_lut1024_12bit[320] = 12'hf60     ; // offset dec =   3936 signed = 1888.053964
assign sine_lut1024_12bit[321] = 12'hf5b     ; // offset dec =   3931 signed = 1883.152435
assign sine_lut1024_12bit[322] = 12'hf56     ; // offset dec =   3926 signed = 1878.180077
assign sine_lut1024_12bit[323] = 12'hf51     ; // offset dec =   3921 signed = 1873.137079
assign sine_lut1024_12bit[324] = 12'hf4c     ; // offset dec =   3916 signed = 1868.023629
assign sine_lut1024_12bit[325] = 12'hf46     ; // offset dec =   3910 signed = 1862.839921
assign sine_lut1024_12bit[326] = 12'hf41     ; // offset dec =   3905 signed = 1857.586149
assign sine_lut1024_12bit[327] = 12'hf3c     ; // offset dec =   3900 signed = 1852.262511
assign sine_lut1024_12bit[328] = 12'hf36     ; // offset dec =   3894 signed = 1846.869207
assign sine_lut1024_12bit[329] = 12'hf31     ; // offset dec =   3889 signed = 1841.406440
assign sine_lut1024_12bit[330] = 12'hf2b     ; // offset dec =   3883 signed = 1835.874415
assign sine_lut1024_12bit[331] = 12'hf26     ; // offset dec =   3878 signed = 1830.273341
assign sine_lut1024_12bit[332] = 12'hf20     ; // offset dec =   3872 signed = 1824.603428
assign sine_lut1024_12bit[333] = 12'hf1a     ; // offset dec =   3866 signed = 1818.864889
assign sine_lut1024_12bit[334] = 12'hf15     ; // offset dec =   3861 signed = 1813.057940
assign sine_lut1024_12bit[335] = 12'hf0f     ; // offset dec =   3855 signed = 1807.182800
assign sine_lut1024_12bit[336] = 12'hf09     ; // offset dec =   3849 signed = 1801.239689
assign sine_lut1024_12bit[337] = 12'hf03     ; // offset dec =   3843 signed = 1795.228832
assign sine_lut1024_12bit[338] = 12'hefd     ; // offset dec =   3837 signed = 1789.150453
assign sine_lut1024_12bit[339] = 12'hef7     ; // offset dec =   3831 signed = 1783.004783
assign sine_lut1024_12bit[340] = 12'hef0     ; // offset dec =   3824 signed = 1776.792051
assign sine_lut1024_12bit[341] = 12'heea     ; // offset dec =   3818 signed = 1770.512492
assign sine_lut1024_12bit[342] = 12'hee4     ; // offset dec =   3812 signed = 1764.166342
assign sine_lut1024_12bit[343] = 12'hedd     ; // offset dec =   3805 signed = 1757.753839
assign sine_lut1024_12bit[344] = 12'hed7     ; // offset dec =   3799 signed = 1751.275225
assign sine_lut1024_12bit[345] = 12'hed0     ; // offset dec =   3792 signed = 1744.730743
assign sine_lut1024_12bit[346] = 12'heca     ; // offset dec =   3786 signed = 1738.120640
assign sine_lut1024_12bit[347] = 12'hec3     ; // offset dec =   3779 signed = 1731.445163
assign sine_lut1024_12bit[348] = 12'hebc     ; // offset dec =   3772 signed = 1724.704565
assign sine_lut1024_12bit[349] = 12'heb5     ; // offset dec =   3765 signed = 1717.899099
assign sine_lut1024_12bit[350] = 12'heaf     ; // offset dec =   3759 signed = 1711.029020
assign sine_lut1024_12bit[351] = 12'hea8     ; // offset dec =   3752 signed = 1704.094587
assign sine_lut1024_12bit[352] = 12'hea1     ; // offset dec =   3745 signed = 1697.096061
assign sine_lut1024_12bit[353] = 12'he9a     ; // offset dec =   3738 signed = 1690.033705
assign sine_lut1024_12bit[354] = 12'he92     ; // offset dec =   3730 signed = 1682.907785
assign sine_lut1024_12bit[355] = 12'he8b     ; // offset dec =   3723 signed = 1675.718568
assign sine_lut1024_12bit[356] = 12'he84     ; // offset dec =   3716 signed = 1668.466326
assign sine_lut1024_12bit[357] = 12'he7d     ; // offset dec =   3709 signed = 1661.151330
assign sine_lut1024_12bit[358] = 12'he75     ; // offset dec =   3701 signed = 1653.773856
assign sine_lut1024_12bit[359] = 12'he6e     ; // offset dec =   3694 signed = 1646.334182
assign sine_lut1024_12bit[360] = 12'he66     ; // offset dec =   3686 signed = 1638.832587
assign sine_lut1024_12bit[361] = 12'he5f     ; // offset dec =   3679 signed = 1631.269354
assign sine_lut1024_12bit[362] = 12'he57     ; // offset dec =   3671 signed = 1623.644766
assign sine_lut1024_12bit[363] = 12'he4f     ; // offset dec =   3663 signed = 1615.959111
assign sine_lut1024_12bit[364] = 12'he48     ; // offset dec =   3656 signed = 1608.212678
assign sine_lut1024_12bit[365] = 12'he40     ; // offset dec =   3648 signed = 1600.405758
assign sine_lut1024_12bit[366] = 12'he38     ; // offset dec =   3640 signed = 1592.538645
assign sine_lut1024_12bit[367] = 12'he30     ; // offset dec =   3632 signed = 1584.611634
assign sine_lut1024_12bit[368] = 12'he28     ; // offset dec =   3624 signed = 1576.625024
assign sine_lut1024_12bit[369] = 12'he20     ; // offset dec =   3616 signed = 1568.579115
assign sine_lut1024_12bit[370] = 12'he18     ; // offset dec =   3608 signed = 1560.474209
assign sine_lut1024_12bit[371] = 12'he10     ; // offset dec =   3600 signed = 1552.310613
assign sine_lut1024_12bit[372] = 12'he08     ; // offset dec =   3592 signed = 1544.088632
assign sine_lut1024_12bit[373] = 12'hdff     ; // offset dec =   3583 signed = 1535.808576
assign sine_lut1024_12bit[374] = 12'hdf7     ; // offset dec =   3575 signed = 1527.470756
assign sine_lut1024_12bit[375] = 12'hdef     ; // offset dec =   3567 signed = 1519.075486
assign sine_lut1024_12bit[376] = 12'hde6     ; // offset dec =   3558 signed = 1510.623082
assign sine_lut1024_12bit[377] = 12'hdde     ; // offset dec =   3550 signed = 1502.113861
assign sine_lut1024_12bit[378] = 12'hdd5     ; // offset dec =   3541 signed = 1493.548144
assign sine_lut1024_12bit[379] = 12'hdcc     ; // offset dec =   3532 signed = 1484.926252
assign sine_lut1024_12bit[380] = 12'hdc4     ; // offset dec =   3524 signed = 1476.248511
assign sine_lut1024_12bit[381] = 12'hdbb     ; // offset dec =   3515 signed = 1467.515246
assign sine_lut1024_12bit[382] = 12'hdb2     ; // offset dec =   3506 signed = 1458.726786
assign sine_lut1024_12bit[383] = 12'hda9     ; // offset dec =   3497 signed = 1449.883461
assign sine_lut1024_12bit[384] = 12'hda0     ; // offset dec =   3488 signed = 1440.985604
assign sine_lut1024_12bit[385] = 12'hd98     ; // offset dec =   3480 signed = 1432.033550
assign sine_lut1024_12bit[386] = 12'hd8f     ; // offset dec =   3471 signed = 1423.027636
assign sine_lut1024_12bit[387] = 12'hd85     ; // offset dec =   3461 signed = 1413.968199
assign sine_lut1024_12bit[388] = 12'hd7c     ; // offset dec =   3452 signed = 1404.855582
assign sine_lut1024_12bit[389] = 12'hd73     ; // offset dec =   3443 signed = 1395.690126
assign sine_lut1024_12bit[390] = 12'hd6a     ; // offset dec =   3434 signed = 1386.472176
assign sine_lut1024_12bit[391] = 12'hd61     ; // offset dec =   3425 signed = 1377.202080
assign sine_lut1024_12bit[392] = 12'hd57     ; // offset dec =   3415 signed = 1367.880185
assign sine_lut1024_12bit[393] = 12'hd4e     ; // offset dec =   3406 signed = 1358.506842
assign sine_lut1024_12bit[394] = 12'hd45     ; // offset dec =   3397 signed = 1349.082404
assign sine_lut1024_12bit[395] = 12'hd3b     ; // offset dec =   3387 signed = 1339.607226
assign sine_lut1024_12bit[396] = 12'hd32     ; // offset dec =   3378 signed = 1330.081663
assign sine_lut1024_12bit[397] = 12'hd28     ; // offset dec =   3368 signed = 1320.506074
assign sine_lut1024_12bit[398] = 12'hd1e     ; // offset dec =   3358 signed = 1310.880819
assign sine_lut1024_12bit[399] = 12'hd15     ; // offset dec =   3349 signed = 1301.206260
assign sine_lut1024_12bit[400] = 12'hd0b     ; // offset dec =   3339 signed = 1291.482762
assign sine_lut1024_12bit[401] = 12'hd01     ; // offset dec =   3329 signed = 1281.710689
assign sine_lut1024_12bit[402] = 12'hcf7     ; // offset dec =   3319 signed = 1271.890409
assign sine_lut1024_12bit[403] = 12'hcee     ; // offset dec =   3310 signed = 1262.022291
assign sine_lut1024_12bit[404] = 12'hce4     ; // offset dec =   3300 signed = 1252.106708
assign sine_lut1024_12bit[405] = 12'hcda     ; // offset dec =   3290 signed = 1242.144031
assign sine_lut1024_12bit[406] = 12'hcd0     ; // offset dec =   3280 signed = 1232.134636
assign sine_lut1024_12bit[407] = 12'hcc6     ; // offset dec =   3270 signed = 1222.078898
assign sine_lut1024_12bit[408] = 12'hcbb     ; // offset dec =   3259 signed = 1211.977197
assign sine_lut1024_12bit[409] = 12'hcb1     ; // offset dec =   3249 signed = 1201.829911
assign sine_lut1024_12bit[410] = 12'hca7     ; // offset dec =   3239 signed = 1191.637423
assign sine_lut1024_12bit[411] = 12'hc9d     ; // offset dec =   3229 signed = 1181.400116
assign sine_lut1024_12bit[412] = 12'hc93     ; // offset dec =   3219 signed = 1171.118375
assign sine_lut1024_12bit[413] = 12'hc88     ; // offset dec =   3208 signed = 1160.792587
assign sine_lut1024_12bit[414] = 12'hc7e     ; // offset dec =   3198 signed = 1150.423140
assign sine_lut1024_12bit[415] = 12'hc74     ; // offset dec =   3188 signed = 1140.010424
assign sine_lut1024_12bit[416] = 12'hc69     ; // offset dec =   3177 signed = 1129.554831
assign sine_lut1024_12bit[417] = 12'hc5f     ; // offset dec =   3167 signed = 1119.056754
assign sine_lut1024_12bit[418] = 12'hc54     ; // offset dec =   3156 signed = 1108.516588
assign sine_lut1024_12bit[419] = 12'hc49     ; // offset dec =   3145 signed = 1097.934729
assign sine_lut1024_12bit[420] = 12'hc3f     ; // offset dec =   3135 signed = 1087.311575
assign sine_lut1024_12bit[421] = 12'hc34     ; // offset dec =   3124 signed = 1076.647526
assign sine_lut1024_12bit[422] = 12'hc29     ; // offset dec =   3113 signed = 1065.942984
assign sine_lut1024_12bit[423] = 12'hc1f     ; // offset dec =   3103 signed = 1055.198349
assign sine_lut1024_12bit[424] = 12'hc14     ; // offset dec =   3092 signed = 1044.414027
assign sine_lut1024_12bit[425] = 12'hc09     ; // offset dec =   3081 signed = 1033.590424
assign sine_lut1024_12bit[426] = 12'hbfe     ; // offset dec =   3070 signed = 1022.727946
assign sine_lut1024_12bit[427] = 12'hbf3     ; // offset dec =   3059 signed = 1011.827002
assign sine_lut1024_12bit[428] = 12'hbe8     ; // offset dec =   3048 signed = 1000.888001
assign sine_lut1024_12bit[429] = 12'hbdd     ; // offset dec =   3037 signed = 989.911356
assign sine_lut1024_12bit[430] = 12'hbd2     ; // offset dec =   3026 signed = 978.897479
assign sine_lut1024_12bit[431] = 12'hbc7     ; // offset dec =   3015 signed = 967.846785
assign sine_lut1024_12bit[432] = 12'hbbc     ; // offset dec =   3004 signed = 956.759689
assign sine_lut1024_12bit[433] = 12'hbb1     ; // offset dec =   2993 signed = 945.636607
assign sine_lut1024_12bit[434] = 12'hba6     ; // offset dec =   2982 signed = 934.477959
assign sine_lut1024_12bit[435] = 12'hb9b     ; // offset dec =   2971 signed = 923.284164
assign sine_lut1024_12bit[436] = 12'hb90     ; // offset dec =   2960 signed = 912.055644
assign sine_lut1024_12bit[437] = 12'hb84     ; // offset dec =   2948 signed = 900.792820
assign sine_lut1024_12bit[438] = 12'hb79     ; // offset dec =   2937 signed = 889.496115
assign sine_lut1024_12bit[439] = 12'hb6e     ; // offset dec =   2926 signed = 878.165956
assign sine_lut1024_12bit[440] = 12'hb62     ; // offset dec =   2914 signed = 866.802768
assign sine_lut1024_12bit[441] = 12'hb57     ; // offset dec =   2903 signed = 855.406978
assign sine_lut1024_12bit[442] = 12'hb4b     ; // offset dec =   2891 signed = 843.979015
assign sine_lut1024_12bit[443] = 12'hb40     ; // offset dec =   2880 signed = 832.519309
assign sine_lut1024_12bit[444] = 12'hb35     ; // offset dec =   2869 signed = 821.028291
assign sine_lut1024_12bit[445] = 12'hb29     ; // offset dec =   2857 signed = 809.506393
assign sine_lut1024_12bit[446] = 12'hb1d     ; // offset dec =   2845 signed = 797.954049
assign sine_lut1024_12bit[447] = 12'hb12     ; // offset dec =   2834 signed = 786.371692
assign sine_lut1024_12bit[448] = 12'hb06     ; // offset dec =   2822 signed = 774.759759
assign sine_lut1024_12bit[449] = 12'hafb     ; // offset dec =   2811 signed = 763.118687
assign sine_lut1024_12bit[450] = 12'haef     ; // offset dec =   2799 signed = 751.448912
assign sine_lut1024_12bit[451] = 12'hae3     ; // offset dec =   2787 signed = 739.750875
assign sine_lut1024_12bit[452] = 12'had8     ; // offset dec =   2776 signed = 728.025014
assign sine_lut1024_12bit[453] = 12'hacc     ; // offset dec =   2764 signed = 716.271772
assign sine_lut1024_12bit[454] = 12'hac0     ; // offset dec =   2752 signed = 704.491590
assign sine_lut1024_12bit[455] = 12'hab4     ; // offset dec =   2740 signed = 692.684910
assign sine_lut1024_12bit[456] = 12'haa8     ; // offset dec =   2728 signed = 680.852178
assign sine_lut1024_12bit[457] = 12'ha9c     ; // offset dec =   2716 signed = 668.993839
assign sine_lut1024_12bit[458] = 12'ha91     ; // offset dec =   2705 signed = 657.110338
assign sine_lut1024_12bit[459] = 12'ha85     ; // offset dec =   2693 signed = 645.202122
assign sine_lut1024_12bit[460] = 12'ha79     ; // offset dec =   2681 signed = 633.269639
assign sine_lut1024_12bit[461] = 12'ha6d     ; // offset dec =   2669 signed = 621.313338
assign sine_lut1024_12bit[462] = 12'ha61     ; // offset dec =   2657 signed = 609.333668
assign sine_lut1024_12bit[463] = 12'ha55     ; // offset dec =   2645 signed = 597.331081
assign sine_lut1024_12bit[464] = 12'ha49     ; // offset dec =   2633 signed = 585.306027
assign sine_lut1024_12bit[465] = 12'ha3d     ; // offset dec =   2621 signed = 573.258960
assign sine_lut1024_12bit[466] = 12'ha31     ; // offset dec =   2609 signed = 561.190331
assign sine_lut1024_12bit[467] = 12'ha25     ; // offset dec =   2597 signed = 549.100595
assign sine_lut1024_12bit[468] = 12'ha18     ; // offset dec =   2584 signed = 536.990207
assign sine_lut1024_12bit[469] = 12'ha0c     ; // offset dec =   2572 signed = 524.859622
assign sine_lut1024_12bit[470] = 12'ha00     ; // offset dec =   2560 signed = 512.709296
assign sine_lut1024_12bit[471] = 12'h9f4     ; // offset dec =   2548 signed = 500.539687
assign sine_lut1024_12bit[472] = 12'h9e8     ; // offset dec =   2536 signed = 488.351252
assign sine_lut1024_12bit[473] = 12'h9dc     ; // offset dec =   2524 signed = 476.144449
assign sine_lut1024_12bit[474] = 12'h9cf     ; // offset dec =   2511 signed = 463.919738
assign sine_lut1024_12bit[475] = 12'h9c3     ; // offset dec =   2499 signed = 451.677578
assign sine_lut1024_12bit[476] = 12'h9b7     ; // offset dec =   2487 signed = 439.418430
assign sine_lut1024_12bit[477] = 12'h9ab     ; // offset dec =   2475 signed = 427.142755
assign sine_lut1024_12bit[478] = 12'h99e     ; // offset dec =   2462 signed = 414.851015
assign sine_lut1024_12bit[479] = 12'h992     ; // offset dec =   2450 signed = 402.543671
assign sine_lut1024_12bit[480] = 12'h986     ; // offset dec =   2438 signed = 390.221188
assign sine_lut1024_12bit[481] = 12'h979     ; // offset dec =   2425 signed = 377.884027
assign sine_lut1024_12bit[482] = 12'h96d     ; // offset dec =   2413 signed = 365.532654
assign sine_lut1024_12bit[483] = 12'h961     ; // offset dec =   2401 signed = 353.167533
assign sine_lut1024_12bit[484] = 12'h954     ; // offset dec =   2388 signed = 340.789129
assign sine_lut1024_12bit[485] = 12'h948     ; // offset dec =   2376 signed = 328.397907
assign sine_lut1024_12bit[486] = 12'h93b     ; // offset dec =   2363 signed = 315.994334
assign sine_lut1024_12bit[487] = 12'h92f     ; // offset dec =   2351 signed = 303.578875
assign sine_lut1024_12bit[488] = 12'h923     ; // offset dec =   2339 signed = 291.151999
assign sine_lut1024_12bit[489] = 12'h916     ; // offset dec =   2326 signed = 278.714172
assign sine_lut1024_12bit[490] = 12'h90a     ; // offset dec =   2314 signed = 266.265863
assign sine_lut1024_12bit[491] = 12'h8fd     ; // offset dec =   2301 signed = 253.807539
assign sine_lut1024_12bit[492] = 12'h8f1     ; // offset dec =   2289 signed = 241.339668
assign sine_lut1024_12bit[493] = 12'h8e4     ; // offset dec =   2276 signed = 228.862721
assign sine_lut1024_12bit[494] = 12'h8d8     ; // offset dec =   2264 signed = 216.377166
assign sine_lut1024_12bit[495] = 12'h8cb     ; // offset dec =   2251 signed = 203.883473
assign sine_lut1024_12bit[496] = 12'h8bf     ; // offset dec =   2239 signed = 191.382111
assign sine_lut1024_12bit[497] = 12'h8b2     ; // offset dec =   2226 signed = 178.873551
assign sine_lut1024_12bit[498] = 12'h8a6     ; // offset dec =   2214 signed = 166.358264
assign sine_lut1024_12bit[499] = 12'h899     ; // offset dec =   2201 signed = 153.836719
assign sine_lut1024_12bit[500] = 12'h88d     ; // offset dec =   2189 signed = 141.309389
assign sine_lut1024_12bit[501] = 12'h880     ; // offset dec =   2176 signed = 128.776744
assign sine_lut1024_12bit[502] = 12'h874     ; // offset dec =   2164 signed = 116.239255
assign sine_lut1024_12bit[503] = 12'h867     ; // offset dec =   2151 signed = 103.697394
assign sine_lut1024_12bit[504] = 12'h85b     ; // offset dec =   2139 signed = 91.151634
assign sine_lut1024_12bit[505] = 12'h84e     ; // offset dec =   2126 signed = 78.602444
assign sine_lut1024_12bit[506] = 12'h842     ; // offset dec =   2114 signed = 66.050299
assign sine_lut1024_12bit[507] = 12'h835     ; // offset dec =   2101 signed = 53.495669
assign sine_lut1024_12bit[508] = 12'h828     ; // offset dec =   2088 signed = 40.939028
assign sine_lut1024_12bit[509] = 12'h81c     ; // offset dec =   2076 signed = 28.380846
assign sine_lut1024_12bit[510] = 12'h80f     ; // offset dec =   2063 signed = 15.821597
assign sine_lut1024_12bit[511] = 12'h803     ; // offset dec =   2051 signed = 3.261753
assign sine_lut1024_12bit[512] = 12'h7f6     ; // offset dec =   2038 signed = -9.298214
assign sine_lut1024_12bit[513] = 12'h7ea     ; // offset dec =   2026 signed = -21.857830
assign sine_lut1024_12bit[514] = 12'h7dd     ; // offset dec =   2013 signed = -34.416625
assign sine_lut1024_12bit[515] = 12'h7d1     ; // offset dec =   2001 signed = -46.974126
assign sine_lut1024_12bit[516] = 12'h7c4     ; // offset dec =   1988 signed = -59.529859
assign sine_lut1024_12bit[517] = 12'h7b7     ; // offset dec =   1975 signed = -72.083354
assign sine_lut1024_12bit[518] = 12'h7ab     ; // offset dec =   1963 signed = -84.634138
assign sine_lut1024_12bit[519] = 12'h79e     ; // offset dec =   1950 signed = -97.181738
assign sine_lut1024_12bit[520] = 12'h792     ; // offset dec =   1938 signed = -109.725683
assign sine_lut1024_12bit[521] = 12'h785     ; // offset dec =   1925 signed = -122.265501
assign sine_lut1024_12bit[522] = 12'h779     ; // offset dec =   1913 signed = -134.800721
assign sine_lut1024_12bit[523] = 12'h76c     ; // offset dec =   1900 signed = -147.330871
assign sine_lut1024_12bit[524] = 12'h760     ; // offset dec =   1888 signed = -159.855479
assign sine_lut1024_12bit[525] = 12'h753     ; // offset dec =   1875 signed = -172.374075
assign sine_lut1024_12bit[526] = 12'h747     ; // offset dec =   1863 signed = -184.886188
assign sine_lut1024_12bit[527] = 12'h73a     ; // offset dec =   1850 signed = -197.391347
assign sine_lut1024_12bit[528] = 12'h72e     ; // offset dec =   1838 signed = -209.889082
assign sine_lut1024_12bit[529] = 12'h721     ; // offset dec =   1825 signed = -222.378922
assign sine_lut1024_12bit[530] = 12'h715     ; // offset dec =   1813 signed = -234.860399
assign sine_lut1024_12bit[531] = 12'h708     ; // offset dec =   1800 signed = -247.333042
assign sine_lut1024_12bit[532] = 12'h6fc     ; // offset dec =   1788 signed = -259.796383
assign sine_lut1024_12bit[533] = 12'h6ef     ; // offset dec =   1775 signed = -272.249953
assign sine_lut1024_12bit[534] = 12'h6e3     ; // offset dec =   1763 signed = -284.693283
assign sine_lut1024_12bit[535] = 12'h6d6     ; // offset dec =   1750 signed = -297.125905
assign sine_lut1024_12bit[536] = 12'h6ca     ; // offset dec =   1738 signed = -309.547352
assign sine_lut1024_12bit[537] = 12'h6be     ; // offset dec =   1726 signed = -321.957156
assign sine_lut1024_12bit[538] = 12'h6b1     ; // offset dec =   1713 signed = -334.354851
assign sine_lut1024_12bit[539] = 12'h6a5     ; // offset dec =   1701 signed = -346.739971
assign sine_lut1024_12bit[540] = 12'h698     ; // offset dec =   1688 signed = -359.112049
assign sine_lut1024_12bit[541] = 12'h68c     ; // offset dec =   1676 signed = -371.470621
assign sine_lut1024_12bit[542] = 12'h680     ; // offset dec =   1664 signed = -383.815221
assign sine_lut1024_12bit[543] = 12'h673     ; // offset dec =   1651 signed = -396.145386
assign sine_lut1024_12bit[544] = 12'h667     ; // offset dec =   1639 signed = -408.460651
assign sine_lut1024_12bit[545] = 12'h65b     ; // offset dec =   1627 signed = -420.760553
assign sine_lut1024_12bit[546] = 12'h64e     ; // offset dec =   1614 signed = -433.044630
assign sine_lut1024_12bit[547] = 12'h642     ; // offset dec =   1602 signed = -445.312419
assign sine_lut1024_12bit[548] = 12'h636     ; // offset dec =   1590 signed = -457.563460
assign sine_lut1024_12bit[549] = 12'h62a     ; // offset dec =   1578 signed = -469.797291
assign sine_lut1024_12bit[550] = 12'h61d     ; // offset dec =   1565 signed = -482.013453
assign sine_lut1024_12bit[551] = 12'h611     ; // offset dec =   1553 signed = -494.211485
assign sine_lut1024_12bit[552] = 12'h605     ; // offset dec =   1541 signed = -506.390929
assign sine_lut1024_12bit[553] = 12'h5f9     ; // offset dec =   1529 signed = -518.551328
assign sine_lut1024_12bit[554] = 12'h5ed     ; // offset dec =   1517 signed = -530.692223
assign sine_lut1024_12bit[555] = 12'h5e1     ; // offset dec =   1505 signed = -542.813158
assign sine_lut1024_12bit[556] = 12'h5d5     ; // offset dec =   1493 signed = -554.913677
assign sine_lut1024_12bit[557] = 12'h5c9     ; // offset dec =   1481 signed = -566.993325
assign sine_lut1024_12bit[558] = 12'h5bc     ; // offset dec =   1468 signed = -579.051648
assign sine_lut1024_12bit[559] = 12'h5b0     ; // offset dec =   1456 signed = -591.088192
assign sine_lut1024_12bit[560] = 12'h5a4     ; // offset dec =   1444 signed = -603.102504
assign sine_lut1024_12bit[561] = 12'h598     ; // offset dec =   1432 signed = -615.094133
assign sine_lut1024_12bit[562] = 12'h58c     ; // offset dec =   1420 signed = -627.062628
assign sine_lut1024_12bit[563] = 12'h580     ; // offset dec =   1408 signed = -639.007538
assign sine_lut1024_12bit[564] = 12'h575     ; // offset dec =   1397 signed = -650.928413
assign sine_lut1024_12bit[565] = 12'h569     ; // offset dec =   1385 signed = -662.824807
assign sine_lut1024_12bit[566] = 12'h55d     ; // offset dec =   1373 signed = -674.696271
assign sine_lut1024_12bit[567] = 12'h551     ; // offset dec =   1361 signed = -686.542359
assign sine_lut1024_12bit[568] = 12'h545     ; // offset dec =   1349 signed = -698.362625
assign sine_lut1024_12bit[569] = 12'h539     ; // offset dec =   1337 signed = -710.156625
assign sine_lut1024_12bit[570] = 12'h52e     ; // offset dec =   1326 signed = -721.923915
assign sine_lut1024_12bit[571] = 12'h522     ; // offset dec =   1314 signed = -733.664052
assign sine_lut1024_12bit[572] = 12'h516     ; // offset dec =   1302 signed = -745.376596
assign sine_lut1024_12bit[573] = 12'h50a     ; // offset dec =   1290 signed = -757.061104
assign sine_lut1024_12bit[574] = 12'h4ff     ; // offset dec =   1279 signed = -768.717139
assign sine_lut1024_12bit[575] = 12'h4f3     ; // offset dec =   1267 signed = -780.344261
assign sine_lut1024_12bit[576] = 12'h4e8     ; // offset dec =   1256 signed = -791.942034
assign sine_lut1024_12bit[577] = 12'h4dc     ; // offset dec =   1244 signed = -803.510021
assign sine_lut1024_12bit[578] = 12'h4d0     ; // offset dec =   1232 signed = -815.047786
assign sine_lut1024_12bit[579] = 12'h4c5     ; // offset dec =   1221 signed = -826.554897
assign sine_lut1024_12bit[580] = 12'h4b9     ; // offset dec =   1209 signed = -838.030920
assign sine_lut1024_12bit[581] = 12'h4ae     ; // offset dec =   1198 signed = -849.475423
assign sine_lut1024_12bit[582] = 12'h4a3     ; // offset dec =   1187 signed = -860.887977
assign sine_lut1024_12bit[583] = 12'h497     ; // offset dec =   1175 signed = -872.268152
assign sine_lut1024_12bit[584] = 12'h48c     ; // offset dec =   1164 signed = -883.615519
assign sine_lut1024_12bit[585] = 12'h481     ; // offset dec =   1153 signed = -894.929652
assign sine_lut1024_12bit[586] = 12'h475     ; // offset dec =   1141 signed = -906.210127
assign sine_lut1024_12bit[587] = 12'h46a     ; // offset dec =   1130 signed = -917.456517
assign sine_lut1024_12bit[588] = 12'h45f     ; // offset dec =   1119 signed = -928.668400
assign sine_lut1024_12bit[589] = 12'h454     ; // offset dec =   1108 signed = -939.845356
assign sine_lut1024_12bit[590] = 12'h449     ; // offset dec =   1097 signed = -950.986962
assign sine_lut1024_12bit[591] = 12'h43d     ; // offset dec =   1085 signed = -962.092801
assign sine_lut1024_12bit[592] = 12'h432     ; // offset dec =   1074 signed = -973.162454
assign sine_lut1024_12bit[593] = 12'h427     ; // offset dec =   1063 signed = -984.195505
assign sine_lut1024_12bit[594] = 12'h41c     ; // offset dec =   1052 signed = -995.191540
assign sine_lut1024_12bit[595] = 12'h411     ; // offset dec =   1041 signed = -1006.150144
assign sine_lut1024_12bit[596] = 12'h406     ; // offset dec =   1030 signed = -1017.070905
assign sine_lut1024_12bit[597] = 12'h3fc     ; // offset dec =   1020 signed = -1027.953413
assign sine_lut1024_12bit[598] = 12'h3f1     ; // offset dec =   1009 signed = -1038.797258
assign sine_lut1024_12bit[599] = 12'h3e6     ; // offset dec =    998 signed = -1049.602033
assign sine_lut1024_12bit[600] = 12'h3db     ; // offset dec =    987 signed = -1060.367331
assign sine_lut1024_12bit[601] = 12'h3d0     ; // offset dec =    976 signed = -1071.092748
assign sine_lut1024_12bit[602] = 12'h3c6     ; // offset dec =    966 signed = -1081.777879
assign sine_lut1024_12bit[603] = 12'h3bb     ; // offset dec =    955 signed = -1092.422323
assign sine_lut1024_12bit[604] = 12'h3b0     ; // offset dec =    944 signed = -1103.025680
assign sine_lut1024_12bit[605] = 12'h3a6     ; // offset dec =    934 signed = -1113.587550
assign sine_lut1024_12bit[606] = 12'h39b     ; // offset dec =    923 signed = -1124.107537
assign sine_lut1024_12bit[607] = 12'h391     ; // offset dec =    913 signed = -1134.585245
assign sine_lut1024_12bit[608] = 12'h386     ; // offset dec =    902 signed = -1145.020280
assign sine_lut1024_12bit[609] = 12'h37c     ; // offset dec =    892 signed = -1155.412249
assign sine_lut1024_12bit[610] = 12'h372     ; // offset dec =    882 signed = -1165.760761
assign sine_lut1024_12bit[611] = 12'h367     ; // offset dec =    871 signed = -1176.065428
assign sine_lut1024_12bit[612] = 12'h35d     ; // offset dec =    861 signed = -1186.325862
assign sine_lut1024_12bit[613] = 12'h353     ; // offset dec =    851 signed = -1196.541676
assign sine_lut1024_12bit[614] = 12'h349     ; // offset dec =    841 signed = -1206.712487
assign sine_lut1024_12bit[615] = 12'h33f     ; // offset dec =    831 signed = -1216.837912
assign sine_lut1024_12bit[616] = 12'h335     ; // offset dec =    821 signed = -1226.917570
assign sine_lut1024_12bit[617] = 12'h32b     ; // offset dec =    811 signed = -1236.951082
assign sine_lut1024_12bit[618] = 12'h321     ; // offset dec =    801 signed = -1246.938071
assign sine_lut1024_12bit[619] = 12'h317     ; // offset dec =    791 signed = -1256.878160
assign sine_lut1024_12bit[620] = 12'h30d     ; // offset dec =    781 signed = -1266.770978
assign sine_lut1024_12bit[621] = 12'h303     ; // offset dec =    771 signed = -1276.616150
assign sine_lut1024_12bit[622] = 12'h2f9     ; // offset dec =    761 signed = -1286.413307
assign sine_lut1024_12bit[623] = 12'h2ef     ; // offset dec =    751 signed = -1296.162080
assign sine_lut1024_12bit[624] = 12'h2e6     ; // offset dec =    742 signed = -1305.862103
assign sine_lut1024_12bit[625] = 12'h2dc     ; // offset dec =    732 signed = -1315.513011
assign sine_lut1024_12bit[626] = 12'h2d2     ; // offset dec =    722 signed = -1325.114441
assign sine_lut1024_12bit[627] = 12'h2c9     ; // offset dec =    713 signed = -1334.666032
assign sine_lut1024_12bit[628] = 12'h2bf     ; // offset dec =    703 signed = -1344.167424
assign sine_lut1024_12bit[629] = 12'h2b6     ; // offset dec =    694 signed = -1353.618260
assign sine_lut1024_12bit[630] = 12'h2ac     ; // offset dec =    684 signed = -1363.018185
assign sine_lut1024_12bit[631] = 12'h2a3     ; // offset dec =    675 signed = -1372.366845
assign sine_lut1024_12bit[632] = 12'h29a     ; // offset dec =    666 signed = -1381.663889
assign sine_lut1024_12bit[633] = 12'h291     ; // offset dec =    657 signed = -1390.908966
assign sine_lut1024_12bit[634] = 12'h287     ; // offset dec =    647 signed = -1400.101730
assign sine_lut1024_12bit[635] = 12'h27e     ; // offset dec =    638 signed = -1409.241834
assign sine_lut1024_12bit[636] = 12'h275     ; // offset dec =    629 signed = -1418.328935
assign sine_lut1024_12bit[637] = 12'h26c     ; // offset dec =    620 signed = -1427.362690
assign sine_lut1024_12bit[638] = 12'h263     ; // offset dec =    611 signed = -1436.342761
assign sine_lut1024_12bit[639] = 12'h25a     ; // offset dec =    602 signed = -1445.268809
assign sine_lut1024_12bit[640] = 12'h251     ; // offset dec =    593 signed = -1454.140499
assign sine_lut1024_12bit[641] = 12'h249     ; // offset dec =    585 signed = -1462.957496
assign sine_lut1024_12bit[642] = 12'h240     ; // offset dec =    576 signed = -1471.719470
assign sine_lut1024_12bit[643] = 12'h237     ; // offset dec =    567 signed = -1480.426090
assign sine_lut1024_12bit[644] = 12'h22e     ; // offset dec =    558 signed = -1489.077030
assign sine_lut1024_12bit[645] = 12'h226     ; // offset dec =    550 signed = -1497.671964
assign sine_lut1024_12bit[646] = 12'h21d     ; // offset dec =    541 signed = -1506.210568
assign sine_lut1024_12bit[647] = 12'h215     ; // offset dec =    533 signed = -1514.692522
assign sine_lut1024_12bit[648] = 12'h20c     ; // offset dec =    524 signed = -1523.117507
assign sine_lut1024_12bit[649] = 12'h204     ; // offset dec =    516 signed = -1531.485205
assign sine_lut1024_12bit[650] = 12'h1fc     ; // offset dec =    508 signed = -1539.795302
assign sine_lut1024_12bit[651] = 12'h1f3     ; // offset dec =    499 signed = -1548.047485
assign sine_lut1024_12bit[652] = 12'h1eb     ; // offset dec =    491 signed = -1556.241444
assign sine_lut1024_12bit[653] = 12'h1e3     ; // offset dec =    483 signed = -1564.376871
assign sine_lut1024_12bit[654] = 12'h1db     ; // offset dec =    475 signed = -1572.453460
assign sine_lut1024_12bit[655] = 12'h1d3     ; // offset dec =    467 signed = -1580.470907
assign sine_lut1024_12bit[656] = 12'h1cb     ; // offset dec =    459 signed = -1588.428910
assign sine_lut1024_12bit[657] = 12'h1c3     ; // offset dec =    451 signed = -1596.327170
assign sine_lut1024_12bit[658] = 12'h1bb     ; // offset dec =    443 signed = -1604.165391
assign sine_lut1024_12bit[659] = 12'h1b4     ; // offset dec =    436 signed = -1611.943277
assign sine_lut1024_12bit[660] = 12'h1ac     ; // offset dec =    428 signed = -1619.660536
assign sine_lut1024_12bit[661] = 12'h1a4     ; // offset dec =    420 signed = -1627.316877
assign sine_lut1024_12bit[662] = 12'h19d     ; // offset dec =    413 signed = -1634.912012
assign sine_lut1024_12bit[663] = 12'h195     ; // offset dec =    405 signed = -1642.445657
assign sine_lut1024_12bit[664] = 12'h18e     ; // offset dec =    398 signed = -1649.917527
assign sine_lut1024_12bit[665] = 12'h186     ; // offset dec =    390 signed = -1657.327342
assign sine_lut1024_12bit[666] = 12'h17f     ; // offset dec =    383 signed = -1664.674822
assign sine_lut1024_12bit[667] = 12'h178     ; // offset dec =    376 signed = -1671.959692
assign sine_lut1024_12bit[668] = 12'h170     ; // offset dec =    368 signed = -1679.181677
assign sine_lut1024_12bit[669] = 12'h169     ; // offset dec =    361 signed = -1686.340507
assign sine_lut1024_12bit[670] = 12'h162     ; // offset dec =    354 signed = -1693.435910
assign sine_lut1024_12bit[671] = 12'h15b     ; // offset dec =    347 signed = -1700.467622
assign sine_lut1024_12bit[672] = 12'h154     ; // offset dec =    340 signed = -1707.435377
assign sine_lut1024_12bit[673] = 12'h14d     ; // offset dec =    333 signed = -1714.338913
assign sine_lut1024_12bit[674] = 12'h146     ; // offset dec =    326 signed = -1721.177970
assign sine_lut1024_12bit[675] = 12'h140     ; // offset dec =    320 signed = -1727.952292
assign sine_lut1024_12bit[676] = 12'h139     ; // offset dec =    313 signed = -1734.661623
assign sine_lut1024_12bit[677] = 12'h132     ; // offset dec =    306 signed = -1741.305712
assign sine_lut1024_12bit[678] = 12'h12c     ; // offset dec =    300 signed = -1747.884307
assign sine_lut1024_12bit[679] = 12'h125     ; // offset dec =    293 signed = -1754.397163
assign sine_lut1024_12bit[680] = 12'h11f     ; // offset dec =    287 signed = -1760.844033
assign sine_lut1024_12bit[681] = 12'h118     ; // offset dec =    280 signed = -1767.224676
assign sine_lut1024_12bit[682] = 12'h112     ; // offset dec =    274 signed = -1773.538852
assign sine_lut1024_12bit[683] = 12'h10c     ; // offset dec =    268 signed = -1779.786322
assign sine_lut1024_12bit[684] = 12'h106     ; // offset dec =    262 signed = -1785.966852
assign sine_lut1024_12bit[685] = 12'hff      ; // offset dec =    255 signed = -1792.080210
assign sine_lut1024_12bit[686] = 12'hf9      ; // offset dec =    249 signed = -1798.126165
assign sine_lut1024_12bit[687] = 12'hf3      ; // offset dec =    243 signed = -1804.104491
assign sine_lut1024_12bit[688] = 12'hed      ; // offset dec =    237 signed = -1810.014962
assign sine_lut1024_12bit[689] = 12'he8      ; // offset dec =    232 signed = -1815.857356
assign sine_lut1024_12bit[690] = 12'he2      ; // offset dec =    226 signed = -1821.631453
assign sine_lut1024_12bit[691] = 12'hdc      ; // offset dec =    220 signed = -1827.337036
assign sine_lut1024_12bit[692] = 12'hd7      ; // offset dec =    215 signed = -1832.973891
assign sine_lut1024_12bit[693] = 12'hd1      ; // offset dec =    209 signed = -1838.541806
assign sine_lut1024_12bit[694] = 12'hcb      ; // offset dec =    203 signed = -1844.040570
assign sine_lut1024_12bit[695] = 12'hc6      ; // offset dec =    198 signed = -1849.469978
assign sine_lut1024_12bit[696] = 12'hc1      ; // offset dec =    193 signed = -1854.829825
assign sine_lut1024_12bit[697] = 12'hbb      ; // offset dec =    187 signed = -1860.119909
assign sine_lut1024_12bit[698] = 12'hb6      ; // offset dec =    182 signed = -1865.340032
assign sine_lut1024_12bit[699] = 12'hb1      ; // offset dec =    177 signed = -1870.489997
assign sine_lut1024_12bit[700] = 12'hac      ; // offset dec =    172 signed = -1875.569611
assign sine_lut1024_12bit[701] = 12'ha7      ; // offset dec =    167 signed = -1880.578682
assign sine_lut1024_12bit[702] = 12'ha2      ; // offset dec =    162 signed = -1885.517022
assign sine_lut1024_12bit[703] = 12'h9d      ; // offset dec =    157 signed = -1890.384445
assign sine_lut1024_12bit[704] = 12'h98      ; // offset dec =    152 signed = -1895.180769
assign sine_lut1024_12bit[705] = 12'h94      ; // offset dec =    148 signed = -1899.905812
assign sine_lut1024_12bit[706] = 12'h8f      ; // offset dec =    143 signed = -1904.559398
assign sine_lut1024_12bit[707] = 12'h8a      ; // offset dec =    138 signed = -1909.141351
assign sine_lut1024_12bit[708] = 12'h86      ; // offset dec =    134 signed = -1913.651498
assign sine_lut1024_12bit[709] = 12'h81      ; // offset dec =    129 signed = -1918.089671
assign sine_lut1024_12bit[710] = 12'h7d      ; // offset dec =    125 signed = -1922.455702
assign sine_lut1024_12bit[711] = 12'h79      ; // offset dec =    121 signed = -1926.749426
assign sine_lut1024_12bit[712] = 12'h75      ; // offset dec =    117 signed = -1930.970684
assign sine_lut1024_12bit[713] = 12'h70      ; // offset dec =    112 signed = -1935.119315
assign sine_lut1024_12bit[714] = 12'h6c      ; // offset dec =    108 signed = -1939.195163
assign sine_lut1024_12bit[715] = 12'h68      ; // offset dec =    104 signed = -1943.198077
assign sine_lut1024_12bit[716] = 12'h64      ; // offset dec =    100 signed = -1947.127904
assign sine_lut1024_12bit[717] = 12'h61      ; // offset dec =     97 signed = -1950.984497
assign sine_lut1024_12bit[718] = 12'h5d      ; // offset dec =     93 signed = -1954.767711
assign sine_lut1024_12bit[719] = 12'h59      ; // offset dec =     89 signed = -1958.477403
assign sine_lut1024_12bit[720] = 12'h55      ; // offset dec =     85 signed = -1962.113435
assign sine_lut1024_12bit[721] = 12'h52      ; // offset dec =     82 signed = -1965.675670
assign sine_lut1024_12bit[722] = 12'h4e      ; // offset dec =     78 signed = -1969.163972
assign sine_lut1024_12bit[723] = 12'h4b      ; // offset dec =     75 signed = -1972.578212
assign sine_lut1024_12bit[724] = 12'h48      ; // offset dec =     72 signed = -1975.918261
assign sine_lut1024_12bit[725] = 12'h44      ; // offset dec =     68 signed = -1979.183993
assign sine_lut1024_12bit[726] = 12'h41      ; // offset dec =     65 signed = -1982.375286
assign sine_lut1024_12bit[727] = 12'h3e      ; // offset dec =     62 signed = -1985.492018
assign sine_lut1024_12bit[728] = 12'h3b      ; // offset dec =     59 signed = -1988.534074
assign sine_lut1024_12bit[729] = 12'h38      ; // offset dec =     56 signed = -1991.501339
assign sine_lut1024_12bit[730] = 12'h35      ; // offset dec =     53 signed = -1994.393700
assign sine_lut1024_12bit[731] = 12'h32      ; // offset dec =     50 signed = -1997.211050
assign sine_lut1024_12bit[732] = 12'h30      ; // offset dec =     48 signed = -1999.953283
assign sine_lut1024_12bit[733] = 12'h2d      ; // offset dec =     45 signed = -2002.620294
assign sine_lut1024_12bit[734] = 12'h2a      ; // offset dec =     42 signed = -2005.211985
assign sine_lut1024_12bit[735] = 12'h28      ; // offset dec =     40 signed = -2007.728257
assign sine_lut1024_12bit[736] = 12'h25      ; // offset dec =     37 signed = -2010.169015
assign sine_lut1024_12bit[737] = 12'h23      ; // offset dec =     35 signed = -2012.534169
assign sine_lut1024_12bit[738] = 12'h21      ; // offset dec =     33 signed = -2014.823629
assign sine_lut1024_12bit[739] = 12'h1e      ; // offset dec =     30 signed = -2017.037309
assign sine_lut1024_12bit[740] = 12'h1c      ; // offset dec =     28 signed = -2019.175125
assign sine_lut1024_12bit[741] = 12'h1a      ; // offset dec =     26 signed = -2021.236997
assign sine_lut1024_12bit[742] = 12'h18      ; // offset dec =     24 signed = -2023.222849
assign sine_lut1024_12bit[743] = 12'h16      ; // offset dec =     22 signed = -2025.132604
assign sine_lut1024_12bit[744] = 12'h15      ; // offset dec =     21 signed = -2026.966191
assign sine_lut1024_12bit[745] = 12'h13      ; // offset dec =     19 signed = -2028.723542
assign sine_lut1024_12bit[746] = 12'h11      ; // offset dec =     17 signed = -2030.404590
assign sine_lut1024_12bit[747] = 12'hf       ; // offset dec =     15 signed = -2032.009272
assign sine_lut1024_12bit[748] = 12'he       ; // offset dec =     14 signed = -2033.537527
assign sine_lut1024_12bit[749] = 12'hd       ; // offset dec =     13 signed = -2034.989298
assign sine_lut1024_12bit[750] = 12'hb       ; // offset dec =     11 signed = -2036.364531
assign sine_lut1024_12bit[751] = 12'ha       ; // offset dec =     10 signed = -2037.663173
assign sine_lut1024_12bit[752] = 12'h9       ; // offset dec =      9 signed = -2038.885177
assign sine_lut1024_12bit[753] = 12'h7       ; // offset dec =      7 signed = -2040.030495
assign sine_lut1024_12bit[754] = 12'h6       ; // offset dec =      6 signed = -2041.099086
assign sine_lut1024_12bit[755] = 12'h5       ; // offset dec =      5 signed = -2042.090907
assign sine_lut1024_12bit[756] = 12'h4       ; // offset dec =      4 signed = -2043.005924
assign sine_lut1024_12bit[757] = 12'h4       ; // offset dec =      4 signed = -2043.844100
assign sine_lut1024_12bit[758] = 12'h3       ; // offset dec =      3 signed = -2044.605405
assign sine_lut1024_12bit[759] = 12'h2       ; // offset dec =      2 signed = -2045.289809
assign sine_lut1024_12bit[760] = 12'h2       ; // offset dec =      2 signed = -2045.897287
assign sine_lut1024_12bit[761] = 12'h1       ; // offset dec =      1 signed = -2046.427817
assign sine_lut1024_12bit[762] = 12'h1       ; // offset dec =      1 signed = -2046.881378
assign sine_lut1024_12bit[763] = 12'h0       ; // offset dec =      0 signed = -2047.257953
assign sine_lut1024_12bit[764] = 12'h0       ; // offset dec =      0 signed = -2047.557528
assign sine_lut1024_12bit[765] = 12'h0       ; // offset dec =      0 signed = -2047.780092
assign sine_lut1024_12bit[766] = 12'h0       ; // offset dec =      0 signed = -2047.925637
assign sine_lut1024_12bit[767] = 12'h0       ; // offset dec =      0 signed = -2047.994156
assign sine_lut1024_12bit[768] = 12'h0       ; // offset dec =      0 signed = -2047.985647
assign sine_lut1024_12bit[769] = 12'h0       ; // offset dec =      0 signed = -2047.900112
assign sine_lut1024_12bit[770] = 12'h0       ; // offset dec =      0 signed = -2047.737552
assign sine_lut1024_12bit[771] = 12'h0       ; // offset dec =      0 signed = -2047.497974
assign sine_lut1024_12bit[772] = 12'h0       ; // offset dec =      0 signed = -2047.181387
assign sine_lut1024_12bit[773] = 12'h1       ; // offset dec =      1 signed = -2046.787803
assign sine_lut1024_12bit[774] = 12'h1       ; // offset dec =      1 signed = -2046.317236
assign sine_lut1024_12bit[775] = 12'h2       ; // offset dec =      2 signed = -2045.769705
assign sine_lut1024_12bit[776] = 12'h2       ; // offset dec =      2 signed = -2045.145231
assign sine_lut1024_12bit[777] = 12'h3       ; // offset dec =      3 signed = -2044.443835
assign sine_lut1024_12bit[778] = 12'h4       ; // offset dec =      4 signed = -2043.665546
assign sine_lut1024_12bit[779] = 12'h5       ; // offset dec =      5 signed = -2042.810391
assign sine_lut1024_12bit[780] = 12'h6       ; // offset dec =      6 signed = -2041.878404
assign sine_lut1024_12bit[781] = 12'h7       ; // offset dec =      7 signed = -2040.869619
assign sine_lut1024_12bit[782] = 12'h8       ; // offset dec =      8 signed = -2039.784075
assign sine_lut1024_12bit[783] = 12'h9       ; // offset dec =      9 signed = -2038.621811
assign sine_lut1024_12bit[784] = 12'ha       ; // offset dec =     10 signed = -2037.382873
assign sine_lut1024_12bit[785] = 12'hb       ; // offset dec =     11 signed = -2036.067306
assign sine_lut1024_12bit[786] = 12'hd       ; // offset dec =     13 signed = -2034.675160
assign sine_lut1024_12bit[787] = 12'he       ; // offset dec =     14 signed = -2033.206487
assign sine_lut1024_12bit[788] = 12'h10      ; // offset dec =     16 signed = -2031.661343
assign sine_lut1024_12bit[789] = 12'h11      ; // offset dec =     17 signed = -2030.039785
assign sine_lut1024_12bit[790] = 12'h13      ; // offset dec =     19 signed = -2028.341875
assign sine_lut1024_12bit[791] = 12'h15      ; // offset dec =     21 signed = -2026.567676
assign sine_lut1024_12bit[792] = 12'h17      ; // offset dec =     23 signed = -2024.717256
assign sine_lut1024_12bit[793] = 12'h19      ; // offset dec =     25 signed = -2022.790683
assign sine_lut1024_12bit[794] = 12'h1b      ; // offset dec =     27 signed = -2020.788031
assign sine_lut1024_12bit[795] = 12'h1d      ; // offset dec =     29 signed = -2018.709374
assign sine_lut1024_12bit[796] = 12'h1f      ; // offset dec =     31 signed = -2016.554791
assign sine_lut1024_12bit[797] = 12'h21      ; // offset dec =     33 signed = -2014.324363
assign sine_lut1024_12bit[798] = 12'h23      ; // offset dec =     35 signed = -2012.018174
assign sine_lut1024_12bit[799] = 12'h26      ; // offset dec =     38 signed = -2009.636310
assign sine_lut1024_12bit[800] = 12'h28      ; // offset dec =     40 signed = -2007.178861
assign sine_lut1024_12bit[801] = 12'h2b      ; // offset dec =     43 signed = -2004.645919
assign sine_lut1024_12bit[802] = 12'h2d      ; // offset dec =     45 signed = -2002.037581
assign sine_lut1024_12bit[803] = 12'h30      ; // offset dec =     48 signed = -1999.353943
assign sine_lut1024_12bit[804] = 12'h33      ; // offset dec =     51 signed = -1996.595106
assign sine_lut1024_12bit[805] = 12'h36      ; // offset dec =     54 signed = -1993.761176
assign sine_lut1024_12bit[806] = 12'h39      ; // offset dec =     57 signed = -1990.852257
assign sine_lut1024_12bit[807] = 12'h3c      ; // offset dec =     60 signed = -1987.868460
assign sine_lut1024_12bit[808] = 12'h3f      ; // offset dec =     63 signed = -1984.809897
assign sine_lut1024_12bit[809] = 12'h42      ; // offset dec =     66 signed = -1981.676682
assign sine_lut1024_12bit[810] = 12'h45      ; // offset dec =     69 signed = -1978.468934
assign sine_lut1024_12bit[811] = 12'h48      ; // offset dec =     72 signed = -1975.186774
assign sine_lut1024_12bit[812] = 12'h4c      ; // offset dec =     76 signed = -1971.830324
assign sine_lut1024_12bit[813] = 12'h4f      ; // offset dec =     79 signed = -1968.399711
assign sine_lut1024_12bit[814] = 12'h53      ; // offset dec =     83 signed = -1964.895064
assign sine_lut1024_12bit[815] = 12'h56      ; // offset dec =     86 signed = -1961.316515
assign sine_lut1024_12bit[816] = 12'h5a      ; // offset dec =     90 signed = -1957.664198
assign sine_lut1024_12bit[817] = 12'h5e      ; // offset dec =     94 signed = -1953.938251
assign sine_lut1024_12bit[818] = 12'h61      ; // offset dec =     97 signed = -1950.138814
assign sine_lut1024_12bit[819] = 12'h65      ; // offset dec =    101 signed = -1946.266029
assign sine_lut1024_12bit[820] = 12'h69      ; // offset dec =    105 signed = -1942.320043
assign sine_lut1024_12bit[821] = 12'h6d      ; // offset dec =    109 signed = -1938.301004
assign sine_lut1024_12bit[822] = 12'h71      ; // offset dec =    113 signed = -1934.209063
assign sine_lut1024_12bit[823] = 12'h75      ; // offset dec =    117 signed = -1930.044374
assign sine_lut1024_12bit[824] = 12'h7a      ; // offset dec =    122 signed = -1925.807094
assign sine_lut1024_12bit[825] = 12'h7e      ; // offset dec =    126 signed = -1921.497381
assign sine_lut1024_12bit[826] = 12'h82      ; // offset dec =    130 signed = -1917.115399
assign sine_lut1024_12bit[827] = 12'h87      ; // offset dec =    135 signed = -1912.661311
assign sine_lut1024_12bit[828] = 12'h8b      ; // offset dec =    139 signed = -1908.135286
assign sine_lut1024_12bit[829] = 12'h90      ; // offset dec =    144 signed = -1903.537493
assign sine_lut1024_12bit[830] = 12'h95      ; // offset dec =    149 signed = -1898.868106
assign sine_lut1024_12bit[831] = 12'h99      ; // offset dec =    153 signed = -1894.127300
assign sine_lut1024_12bit[832] = 12'h9e      ; // offset dec =    158 signed = -1889.315254
assign sine_lut1024_12bit[833] = 12'ha3      ; // offset dec =    163 signed = -1884.432148
assign sine_lut1024_12bit[834] = 12'ha8      ; // offset dec =    168 signed = -1879.478166
assign sine_lut1024_12bit[835] = 12'had      ; // offset dec =    173 signed = -1874.453494
assign sine_lut1024_12bit[836] = 12'hb2      ; // offset dec =    178 signed = -1869.358322
assign sine_lut1024_12bit[837] = 12'hb7      ; // offset dec =    183 signed = -1864.192841
assign sine_lut1024_12bit[838] = 12'hbd      ; // offset dec =    189 signed = -1858.957245
assign sine_lut1024_12bit[839] = 12'hc2      ; // offset dec =    194 signed = -1853.651732
assign sine_lut1024_12bit[840] = 12'hc7      ; // offset dec =    199 signed = -1848.276500
assign sine_lut1024_12bit[841] = 12'hcd      ; // offset dec =    205 signed = -1842.831753
assign sine_lut1024_12bit[842] = 12'hd2      ; // offset dec =    210 signed = -1837.317694
assign sine_lut1024_12bit[843] = 12'hd8      ; // offset dec =    216 signed = -1831.734531
assign sine_lut1024_12bit[844] = 12'hdd      ; // offset dec =    221 signed = -1826.082475
assign sine_lut1024_12bit[845] = 12'he3      ; // offset dec =    227 signed = -1820.361737
assign sine_lut1024_12bit[846] = 12'he9      ; // offset dec =    233 signed = -1814.572533
assign sine_lut1024_12bit[847] = 12'hef      ; // offset dec =    239 signed = -1808.715080
assign sine_lut1024_12bit[848] = 12'hf5      ; // offset dec =    245 signed = -1802.789600
assign sine_lut1024_12bit[849] = 12'hfb      ; // offset dec =    251 signed = -1796.796314
assign sine_lut1024_12bit[850] = 12'h101     ; // offset dec =    257 signed = -1790.735449
assign sine_lut1024_12bit[851] = 12'h107     ; // offset dec =    263 signed = -1784.607231
assign sine_lut1024_12bit[852] = 12'h10d     ; // offset dec =    269 signed = -1778.411893
assign sine_lut1024_12bit[853] = 12'h113     ; // offset dec =    275 signed = -1772.149666
assign sine_lut1024_12bit[854] = 12'h11a     ; // offset dec =    282 signed = -1765.820786
assign sine_lut1024_12bit[855] = 12'h120     ; // offset dec =    288 signed = -1759.425491
assign sine_lut1024_12bit[856] = 12'h127     ; // offset dec =    295 signed = -1752.964023
assign sine_lut1024_12bit[857] = 12'h12d     ; // offset dec =    301 signed = -1746.436623
assign sine_lut1024_12bit[858] = 12'h134     ; // offset dec =    308 signed = -1739.843537
assign sine_lut1024_12bit[859] = 12'h13a     ; // offset dec =    314 signed = -1733.185013
assign sine_lut1024_12bit[860] = 12'h141     ; // offset dec =    321 signed = -1726.461303
assign sine_lut1024_12bit[861] = 12'h148     ; // offset dec =    328 signed = -1719.672658
assign sine_lut1024_12bit[862] = 12'h14f     ; // offset dec =    335 signed = -1712.819333
assign sine_lut1024_12bit[863] = 12'h156     ; // offset dec =    342 signed = -1705.901588
assign sine_lut1024_12bit[864] = 12'h15d     ; // offset dec =    349 signed = -1698.919681
assign sine_lut1024_12bit[865] = 12'h164     ; // offset dec =    356 signed = -1691.873876
assign sine_lut1024_12bit[866] = 12'h16b     ; // offset dec =    363 signed = -1684.764438
assign sine_lut1024_12bit[867] = 12'h172     ; // offset dec =    370 signed = -1677.591633
assign sine_lut1024_12bit[868] = 12'h179     ; // offset dec =    377 signed = -1670.355732
assign sine_lut1024_12bit[869] = 12'h180     ; // offset dec =    384 signed = -1663.057006
assign sine_lut1024_12bit[870] = 12'h188     ; // offset dec =    392 signed = -1655.695731
assign sine_lut1024_12bit[871] = 12'h18f     ; // offset dec =    399 signed = -1648.272183
assign sine_lut1024_12bit[872] = 12'h197     ; // offset dec =    407 signed = -1640.786642
assign sine_lut1024_12bit[873] = 12'h19e     ; // offset dec =    414 signed = -1633.239388
assign sine_lut1024_12bit[874] = 12'h1a6     ; // offset dec =    422 signed = -1625.630706
assign sine_lut1024_12bit[875] = 12'h1ae     ; // offset dec =    430 signed = -1617.960883
assign sine_lut1024_12bit[876] = 12'h1b5     ; // offset dec =    437 signed = -1610.230205
assign sine_lut1024_12bit[877] = 12'h1bd     ; // offset dec =    445 signed = -1602.438965
assign sine_lut1024_12bit[878] = 12'h1c5     ; // offset dec =    453 signed = -1594.587455
assign sine_lut1024_12bit[879] = 12'h1cd     ; // offset dec =    461 signed = -1586.675971
assign sine_lut1024_12bit[880] = 12'h1d5     ; // offset dec =    469 signed = -1578.704809
assign sine_lut1024_12bit[881] = 12'h1dd     ; // offset dec =    477 signed = -1570.674271
assign sine_lut1024_12bit[882] = 12'h1e5     ; // offset dec =    485 signed = -1562.584657
assign sine_lut1024_12bit[883] = 12'h1ed     ; // offset dec =    493 signed = -1554.436273
assign sine_lut1024_12bit[884] = 12'h1f5     ; // offset dec =    501 signed = -1546.229425
assign sine_lut1024_12bit[885] = 12'h1fe     ; // offset dec =    510 signed = -1537.964420
assign sine_lut1024_12bit[886] = 12'h206     ; // offset dec =    518 signed = -1529.641571
assign sine_lut1024_12bit[887] = 12'h20e     ; // offset dec =    526 signed = -1521.261191
assign sine_lut1024_12bit[888] = 12'h217     ; // offset dec =    535 signed = -1512.823593
assign sine_lut1024_12bit[889] = 12'h21f     ; // offset dec =    543 signed = -1504.329097
assign sine_lut1024_12bit[890] = 12'h228     ; // offset dec =    552 signed = -1495.778020
assign sine_lut1024_12bit[891] = 12'h230     ; // offset dec =    560 signed = -1487.170686
assign sine_lut1024_12bit[892] = 12'h239     ; // offset dec =    569 signed = -1478.507417
assign sine_lut1024_12bit[893] = 12'h242     ; // offset dec =    578 signed = -1469.788540
assign sine_lut1024_12bit[894] = 12'h24a     ; // offset dec =    586 signed = -1461.014382
assign sine_lut1024_12bit[895] = 12'h253     ; // offset dec =    595 signed = -1452.185273
assign sine_lut1024_12bit[896] = 12'h25c     ; // offset dec =    604 signed = -1443.301546
assign sine_lut1024_12bit[897] = 12'h265     ; // offset dec =    613 signed = -1434.363535
assign sine_lut1024_12bit[898] = 12'h26e     ; // offset dec =    622 signed = -1425.371575
assign sine_lut1024_12bit[899] = 12'h277     ; // offset dec =    631 signed = -1416.326005
assign sine_lut1024_12bit[900] = 12'h280     ; // offset dec =    640 signed = -1407.227165
assign sine_lut1024_12bit[901] = 12'h289     ; // offset dec =    649 signed = -1398.075398
assign sine_lut1024_12bit[902] = 12'h293     ; // offset dec =    659 signed = -1388.871048
assign sine_lut1024_12bit[903] = 12'h29c     ; // offset dec =    668 signed = -1379.614460
assign sine_lut1024_12bit[904] = 12'h2a5     ; // offset dec =    677 signed = -1370.305983
assign sine_lut1024_12bit[905] = 12'h2af     ; // offset dec =    687 signed = -1360.945967
assign sine_lut1024_12bit[906] = 12'h2b8     ; // offset dec =    696 signed = -1351.534764
assign sine_lut1024_12bit[907] = 12'h2c1     ; // offset dec =    705 signed = -1342.072729
assign sine_lut1024_12bit[908] = 12'h2cb     ; // offset dec =    715 signed = -1332.560216
assign sine_lut1024_12bit[909] = 12'h2d5     ; // offset dec =    725 signed = -1322.997584
assign sine_lut1024_12bit[910] = 12'h2de     ; // offset dec =    734 signed = -1313.385192
assign sine_lut1024_12bit[911] = 12'h2e8     ; // offset dec =    744 signed = -1303.723403
assign sine_lut1024_12bit[912] = 12'h2f1     ; // offset dec =    753 signed = -1294.012578
assign sine_lut1024_12bit[913] = 12'h2fb     ; // offset dec =    763 signed = -1284.253084
assign sine_lut1024_12bit[914] = 12'h305     ; // offset dec =    773 signed = -1274.445288
assign sine_lut1024_12bit[915] = 12'h30f     ; // offset dec =    783 signed = -1264.589558
assign sine_lut1024_12bit[916] = 12'h319     ; // offset dec =    793 signed = -1254.686266
assign sine_lut1024_12bit[917] = 12'h323     ; // offset dec =    803 signed = -1244.735783
assign sine_lut1024_12bit[918] = 12'h32d     ; // offset dec =    813 signed = -1234.738484
assign sine_lut1024_12bit[919] = 12'h337     ; // offset dec =    823 signed = -1224.694745
assign sine_lut1024_12bit[920] = 12'h341     ; // offset dec =    833 signed = -1214.604943
assign sine_lut1024_12bit[921] = 12'h34b     ; // offset dec =    843 signed = -1204.469459
assign sine_lut1024_12bit[922] = 12'h355     ; // offset dec =    853 signed = -1194.288673
assign sine_lut1024_12bit[923] = 12'h35f     ; // offset dec =    863 signed = -1184.062969
assign sine_lut1024_12bit[924] = 12'h36a     ; // offset dec =    874 signed = -1173.792730
assign sine_lut1024_12bit[925] = 12'h374     ; // offset dec =    884 signed = -1163.478343
assign sine_lut1024_12bit[926] = 12'h37e     ; // offset dec =    894 signed = -1153.120197
assign sine_lut1024_12bit[927] = 12'h389     ; // offset dec =    905 signed = -1142.718680
assign sine_lut1024_12bit[928] = 12'h393     ; // offset dec =    915 signed = -1132.274184
assign sine_lut1024_12bit[929] = 12'h39e     ; // offset dec =    926 signed = -1121.787102
assign sine_lut1024_12bit[930] = 12'h3a8     ; // offset dec =    936 signed = -1111.257828
assign sine_lut1024_12bit[931] = 12'h3b3     ; // offset dec =    947 signed = -1100.686758
assign sine_lut1024_12bit[932] = 12'h3bd     ; // offset dec =    957 signed = -1090.074290
assign sine_lut1024_12bit[933] = 12'h3c8     ; // offset dec =    968 signed = -1079.420823
assign sine_lut1024_12bit[934] = 12'h3d3     ; // offset dec =    979 signed = -1068.726757
assign sine_lut1024_12bit[935] = 12'h3de     ; // offset dec =    990 signed = -1057.992496
assign sine_lut1024_12bit[936] = 12'h3e8     ; // offset dec =   1000 signed = -1047.218442
assign sine_lut1024_12bit[937] = 12'h3f3     ; // offset dec =   1011 signed = -1036.405000
assign sine_lut1024_12bit[938] = 12'h3fe     ; // offset dec =   1022 signed = -1025.552578
assign sine_lut1024_12bit[939] = 12'h409     ; // offset dec =   1033 signed = -1014.661584
assign sine_lut1024_12bit[940] = 12'h414     ; // offset dec =   1044 signed = -1003.732427
assign sine_lut1024_12bit[941] = 12'h41f     ; // offset dec =   1055 signed = -992.765519
assign sine_lut1024_12bit[942] = 12'h42a     ; // offset dec =   1066 signed = -981.761271
assign sine_lut1024_12bit[943] = 12'h435     ; // offset dec =   1077 signed = -970.720098
assign sine_lut1024_12bit[944] = 12'h440     ; // offset dec =   1088 signed = -959.642415
assign sine_lut1024_12bit[945] = 12'h44b     ; // offset dec =   1099 signed = -948.528639
assign sine_lut1024_12bit[946] = 12'h456     ; // offset dec =   1110 signed = -937.379187
assign sine_lut1024_12bit[947] = 12'h461     ; // offset dec =   1121 signed = -926.194479
assign sine_lut1024_12bit[948] = 12'h46d     ; // offset dec =   1133 signed = -914.974936
assign sine_lut1024_12bit[949] = 12'h478     ; // offset dec =   1144 signed = -903.720979
assign sine_lut1024_12bit[950] = 12'h483     ; // offset dec =   1155 signed = -892.433033
assign sine_lut1024_12bit[951] = 12'h48e     ; // offset dec =   1166 signed = -881.111521
assign sine_lut1024_12bit[952] = 12'h49a     ; // offset dec =   1178 signed = -869.756869
assign sine_lut1024_12bit[953] = 12'h4a5     ; // offset dec =   1189 signed = -858.369504
assign sine_lut1024_12bit[954] = 12'h4b1     ; // offset dec =   1201 signed = -846.949855
assign sine_lut1024_12bit[955] = 12'h4bc     ; // offset dec =   1212 signed = -835.498352
assign sine_lut1024_12bit[956] = 12'h4c7     ; // offset dec =   1223 signed = -824.015424
assign sine_lut1024_12bit[957] = 12'h4d3     ; // offset dec =   1235 signed = -812.501503
assign sine_lut1024_12bit[958] = 12'h4df     ; // offset dec =   1247 signed = -800.957024
assign sine_lut1024_12bit[959] = 12'h4ea     ; // offset dec =   1258 signed = -789.382420
assign sine_lut1024_12bit[960] = 12'h4f6     ; // offset dec =   1270 signed = -777.778126
assign sine_lut1024_12bit[961] = 12'h501     ; // offset dec =   1281 signed = -766.144578
assign sine_lut1024_12bit[962] = 12'h50d     ; // offset dec =   1293 signed = -754.482215
assign sine_lut1024_12bit[963] = 12'h519     ; // offset dec =   1305 signed = -742.791475
assign sine_lut1024_12bit[964] = 12'h524     ; // offset dec =   1316 signed = -731.072798
assign sine_lut1024_12bit[965] = 12'h530     ; // offset dec =   1328 signed = -719.326624
assign sine_lut1024_12bit[966] = 12'h53c     ; // offset dec =   1340 signed = -707.553395
assign sine_lut1024_12bit[967] = 12'h548     ; // offset dec =   1352 signed = -695.753554
assign sine_lut1024_12bit[968] = 12'h554     ; // offset dec =   1364 signed = -683.927546
assign sine_lut1024_12bit[969] = 12'h55f     ; // offset dec =   1375 signed = -672.075813
assign sine_lut1024_12bit[970] = 12'h56b     ; // offset dec =   1387 signed = -660.198803
assign sine_lut1024_12bit[971] = 12'h577     ; // offset dec =   1399 signed = -648.296963
assign sine_lut1024_12bit[972] = 12'h583     ; // offset dec =   1411 signed = -636.370739
assign sine_lut1024_12bit[973] = 12'h58f     ; // offset dec =   1423 signed = -624.420580
assign sine_lut1024_12bit[974] = 12'h59b     ; // offset dec =   1435 signed = -612.446936
assign sine_lut1024_12bit[975] = 12'h5a7     ; // offset dec =   1447 signed = -600.450257
assign sine_lut1024_12bit[976] = 12'h5b3     ; // offset dec =   1459 signed = -588.430994
assign sine_lut1024_12bit[977] = 12'h5bf     ; // offset dec =   1471 signed = -576.389600
assign sine_lut1024_12bit[978] = 12'h5cb     ; // offset dec =   1483 signed = -564.326527
assign sine_lut1024_12bit[979] = 12'h5d7     ; // offset dec =   1495 signed = -552.242229
assign sine_lut1024_12bit[980] = 12'h5e3     ; // offset dec =   1507 signed = -540.137160
assign sine_lut1024_12bit[981] = 12'h5ef     ; // offset dec =   1519 signed = -528.011776
assign sine_lut1024_12bit[982] = 12'h5fc     ; // offset dec =   1532 signed = -515.866533
assign sine_lut1024_12bit[983] = 12'h608     ; // offset dec =   1544 signed = -503.701888
assign sine_lut1024_12bit[984] = 12'h614     ; // offset dec =   1556 signed = -491.518297
assign sine_lut1024_12bit[985] = 12'h620     ; // offset dec =   1568 signed = -479.316220
assign sine_lut1024_12bit[986] = 12'h62c     ; // offset dec =   1580 signed = -467.096116
assign sine_lut1024_12bit[987] = 12'h639     ; // offset dec =   1593 signed = -454.858443
assign sine_lut1024_12bit[988] = 12'h645     ; // offset dec =   1605 signed = -442.603663
assign sine_lut1024_12bit[989] = 12'h651     ; // offset dec =   1617 signed = -430.332235
assign sine_lut1024_12bit[990] = 12'h65d     ; // offset dec =   1629 signed = -418.044623
assign sine_lut1024_12bit[991] = 12'h66a     ; // offset dec =   1642 signed = -405.741287
assign sine_lut1024_12bit[992] = 12'h676     ; // offset dec =   1654 signed = -393.422690
assign sine_lut1024_12bit[993] = 12'h682     ; // offset dec =   1666 signed = -381.089297
assign sine_lut1024_12bit[994] = 12'h68f     ; // offset dec =   1679 signed = -368.741570
assign sine_lut1024_12bit[995] = 12'h69b     ; // offset dec =   1691 signed = -356.379974
assign sine_lut1024_12bit[996] = 12'h6a7     ; // offset dec =   1703 signed = -344.004975
assign sine_lut1024_12bit[997] = 12'h6b4     ; // offset dec =   1716 signed = -331.617037
assign sine_lut1024_12bit[998] = 12'h6c0     ; // offset dec =   1728 signed = -319.216626
assign sine_lut1024_12bit[999] = 12'h6cd     ; // offset dec =   1741 signed = -306.804210
assign sine_lut1024_12bit[1000] = 12'h6d9     ; // offset dec =   1753 signed = -294.380254
assign sine_lut1024_12bit[1001] = 12'h6e6     ; // offset dec =   1766 signed = -281.945226
assign sine_lut1024_12bit[1002] = 12'h6f2     ; // offset dec =   1778 signed = -269.499594
assign sine_lut1024_12bit[1003] = 12'h6fe     ; // offset dec =   1790 signed = -257.043825
assign sine_lut1024_12bit[1004] = 12'h70b     ; // offset dec =   1803 signed = -244.578389
assign sine_lut1024_12bit[1005] = 12'h717     ; // offset dec =   1815 signed = -232.103754
assign sine_lut1024_12bit[1006] = 12'h724     ; // offset dec =   1828 signed = -219.620389
assign sine_lut1024_12bit[1007] = 12'h730     ; // offset dec =   1840 signed = -207.128764
assign sine_lut1024_12bit[1008] = 12'h73d     ; // offset dec =   1853 signed = -194.629348
assign sine_lut1024_12bit[1009] = 12'h749     ; // offset dec =   1865 signed = -182.122613
assign sine_lut1024_12bit[1010] = 12'h756     ; // offset dec =   1878 signed = -169.609027
assign sine_lut1024_12bit[1011] = 12'h762     ; // offset dec =   1890 signed = -157.089062
assign sine_lut1024_12bit[1012] = 12'h76f     ; // offset dec =   1903 signed = -144.563189
assign sine_lut1024_12bit[1013] = 12'h77b     ; // offset dec =   1915 signed = -132.031879
assign sine_lut1024_12bit[1014] = 12'h788     ; // offset dec =   1928 signed = -119.495603
assign sine_lut1024_12bit[1015] = 12'h795     ; // offset dec =   1941 signed = -106.954832
assign sine_lut1024_12bit[1016] = 12'h7a1     ; // offset dec =   1953 signed = -94.410039
assign sine_lut1024_12bit[1017] = 12'h7ae     ; // offset dec =   1966 signed = -81.861695
assign sine_lut1024_12bit[1018] = 12'h7ba     ; // offset dec =   1978 signed = -69.310272
assign sine_lut1024_12bit[1019] = 12'h7c7     ; // offset dec =   1991 signed = -56.756242
assign sine_lut1024_12bit[1020] = 12'h7d3     ; // offset dec =   2003 signed = -44.200077
assign sine_lut1024_12bit[1021] = 12'h7e0     ; // offset dec =   2016 signed = -31.642250
assign sine_lut1024_12bit[1022] = 12'h7ec     ; // offset dec =   2028 signed = -19.083233
assign sine_lut1024_12bit[1023] = 12'h7f9     ; // offset dec =   2041 signed = -6.523498


// -----------------------------------------------------------------------------
// Assign the output
// -----------------------------------------------------------------------------
assign sine_value   = sine_lut1024_12bit[address];
assign sine_value_i = sine_lut1024_12bit[address_fast + 10'd256];
assign sine_value_q = (neg_quad == 1'b0) ? sine_lut1024_12bit[address_fast] : sine_lut1024_12bit[address_fast + 10'd512] ;

endmodule
