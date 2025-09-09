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

//-----------------------------------------------------------------------------
// 
//-----------------------------------------------------------------------------
`timescale 1ps / 1ps

import demo_tb_rfdac_utils_pkg::*;

//`define EXCLUDE_SINE_WAVE_LUTS

`define DGTYPE_TRGL     0
`define DGTYPE_RAMPUP   1
`define DGTYPE_RAMPDOWN 2
`define DGTYPE_SINE0    3

// ----------------------------------------------------------------------------
// Data generator tile
// ----------------------------------------------------------------------------
module demo_tb_rfdac_tile_sink #(
  parameter  p_connection_width  = 16,
  parameter  p_change_width      = 16,
  parameter  p_useable_width     = 14,
  parameter  p_data_inc_val_init = 1,
  parameter  p_data_type_width   = 3
) (

                                                                                    input  tile_cfg_t tile_cfg,
                                                                                    input  wire    [p_change_width-1:0] s0_change_count   , // 
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_0 enable"    *) input  wire                         s0_enable         , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_0 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s0_inc            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_0 dg_type"   *) input  wire [p_data_type_width-1:0] s0_type           , //
                                                                                    input  wire                  [31:0] s0_scaling_factor , //
                                                                                    input  wire                  [31:0] s0_offset         , //
                                                                                    input  wire                  [31:0] s0_clk_phase_hl   , //
                                                                                    input  wire                  [63:0] s0_din_p          , //
                                                                                    input  wire                  [63:0] s0_din_n          , //
                                                                                    //
                                                                                    input  wire                   [7:0] s0_ds_ctrl          ,
                                                                                    output wire                  [31:0] s0_ds_fft_exec_cnt  ,
                                                                                    output wire                  [31:0] s0_ds_fft_max_level ,
                                                                                    output wire                   [7:0] s0_ds_status        ,
                                                                                    output wire                         s0_error          , //
 
                                                                                    input  wire    [p_change_width-1:0] s1_change_count   , // 
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_1 enable"    *) input  wire                         s1_enable         , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_1 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s1_inc            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_1 dg_type"   *) input  wire [p_data_type_width-1:0] s1_type           , //
                                                                                    input  wire                  [31:0] s1_scaling_factor , //
                                                                                    input  wire                  [31:0] s1_offset         , //
                                                                                    input  wire                  [31:0] s1_clk_phase_hl   , //
                                                                                    input  wire                  [63:0] s1_din_p          , //
                                                                                    input  wire                  [63:0] s1_din_n          , //
                                                                                    // 
                                                                                    input  wire                   [7:0] s1_ds_ctrl          ,
                                                                                    output wire                  [31:0] s1_ds_fft_exec_cnt  ,
                                                                                    output wire                  [31:0] s1_ds_fft_max_level ,
                                                                                    output wire                   [7:0] s1_ds_status        ,
                                                                                    output wire                         s1_error          , //

                                                                                    input  wire    [p_change_width-1:0] s2_change_count   , // 
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_2 enable"    *) input  wire                         s2_enable         , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_2 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s2_inc            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_2 dg_type"   *) input  wire [p_data_type_width-1:0] s2_type           , //
                                                                                    input  wire                  [31:0] s2_scaling_factor , //
                                                                                    input  wire                  [31:0] s2_offset         , //
                                                                                    input  wire                  [31:0] s2_clk_phase_hl   , //
                                                                                    input  wire                  [63:0] s2_din_p          , //
                                                                                    input  wire                  [63:0] s2_din_n          , //
                                                                                    //
                                                                                    input  wire                   [7:0] s2_ds_ctrl          ,
                                                                                    output wire                  [31:0] s2_ds_fft_exec_cnt  ,
                                                                                    output wire                  [31:0] s2_ds_fft_max_level ,
                                                                                    output wire                   [7:0] s2_ds_status        ,
                                                                                    output wire                         s2_error          , //
 
                                                                                    input  wire    [p_change_width-1:0] s3_change_count   , // 
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_3 enable"    *) input  wire                         s3_enable         , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_3 dg_inc_i"  *) input  wire   [p_useable_width-1:0] s3_inc            , //
  (* X_INTERFACE_INFO = "xilinx.com:user:hsams_data_gen:1.0 dg_tile_3 dg_type"   *) input  wire [p_data_type_width-1:0] s3_type           , //
                                                                                    input  wire                  [31:0] s3_scaling_factor , //
                                                                                    input  wire                  [31:0] s3_offset         , //
                                                                                    input  wire                  [31:0] s3_clk_phase_hl   , //
                                                                                    input  wire                  [63:0] s3_din_p          , //
                                                                                    input  wire                  [63:0] s3_din_n          , //
                                                                                    // 
                                                                                    input  wire                   [7:0] s3_ds_ctrl          ,
                                                                                    output wire                  [31:0] s3_ds_fft_exec_cnt  ,
                                                                                    output wire                  [31:0] s3_ds_fft_max_level ,
                                                                                    output wire                   [7:0] s3_ds_status        ,
                                                                                    output wire                         s3_error          , //

  output reg  done=1, //
  input  wire clk_samp, //
  input  wire clk_fabric //
  
  );
 
//--------------------------------------------------------------------------
// Signal declarations
//--------------------------------------------------------------------------
wire [3:0] done_bus;

//--------------------------------------------------------------------------
// Create done signal
//--------------------------------------------------------------------------
always @(posedge clk_fabric)
   done <= &done_bus;

//--------------------------------------------------------------------------
// SLICE 0
//--------------------------------------------------------------------------
hsdac_ts_slice #(
   .p_connection_width (p_connection_width ),
   .p_data_inc_val_init(p_data_inc_val_init),
   .p_change_width     (p_change_width     ),
   .p_data_type_width  (p_data_type_width  ),
   .p_useable_width    (p_useable_width    ),
   .p_slice_number     (0)
) ds_slice_0_1 (
   .clk_samp        (clk_samp              ),
   .clk_fabric      (clk_fabric            ),
   .d_enable        (s0_enable             ),
   .d_inc           (s0_inc                ),
   .d_type          (s0_type               ),
   .d_change_count  (s0_change_count       ),
   .d_scaling_factor(s0_scaling_factor     ),
   .d_offset        (s0_offset             ),
   .d_clk_phase_hl  (s0_clk_phase_hl       ),
   .d_in_p          (s0_din_p              ),
   .d_in_n          (s0_din_n              ),
   // 
   .ds_ctrl          (s0_ds_ctrl           ),
   .ds_fft_exec_cnt  (s0_ds_fft_exec_cnt   ),
   .ds_fft_max_level (s0_ds_fft_max_level  ),
   .ds_status        (s0_ds_status         ),
   .tile_cfg        (tile_cfg              ),
   .d_done          (done_bus[0]           ),
   .d_error         (s0_error              )
);

//--------------------------------------------------------------------------
// SLICE 1
//--------------------------------------------------------------------------
hsdac_ts_slice #(
   .p_connection_width (p_connection_width ),
   .p_data_inc_val_init(p_data_inc_val_init),
   .p_change_width     (p_change_width     ),
   .p_data_type_width  (p_data_type_width  ),
   .p_useable_width    (p_useable_width    ),
   .p_slice_number     (1)
) ds_slice_1_1 (
   .clk_samp        (clk_samp              ),
   .clk_fabric      (clk_fabric            ),
   .d_enable        (s1_enable             ),
   .d_inc           (s1_inc                ),
   .d_type          (s1_type               ),
   .d_change_count  (s1_change_count       ),
   .d_scaling_factor(s1_scaling_factor     ),
   .d_offset        (s1_offset             ),
   .d_clk_phase_hl  (s1_clk_phase_hl       ),
   .d_in_p          (s1_din_p              ),
   .d_in_n          (s1_din_n              ),
   //
   .ds_ctrl          (s1_ds_ctrl           ),
   .ds_fft_exec_cnt  (s1_ds_fft_exec_cnt   ),
   .ds_fft_max_level (s1_ds_fft_max_level  ),
   .ds_status        (s1_ds_status         ),
   .tile_cfg        (tile_cfg              ),  
   .d_done          (done_bus[1]           ),
   .d_error         (s1_error              )
);

//--------------------------------------------------------------------------
// SLICE 2
//--------------------------------------------------------------------------
hsdac_ts_slice #(
   .p_connection_width (p_connection_width ),
   .p_data_inc_val_init(p_data_inc_val_init),
   .p_change_width     (p_change_width     ),
   .p_data_type_width  (p_data_type_width  ),
   .p_useable_width    (p_useable_width    ),
   .p_slice_number     (2)
) ds_slice_2_1 (
   .clk_samp        (clk_samp              ),
   .clk_fabric      (clk_fabric            ),
   .d_enable        (s2_enable             ),
   .d_inc           (s2_inc                ),
   .d_type          (s2_type               ),
   .d_change_count  (s2_change_count       ),
   .d_scaling_factor(s2_scaling_factor     ),
   .d_offset        (s2_offset             ),
   .d_clk_phase_hl  (s2_clk_phase_hl       ),
   .d_in_p          (s2_din_p              ),
   .d_in_n          (s2_din_n              ),
   //
   .ds_ctrl          (s2_ds_ctrl           ),
   .ds_fft_exec_cnt  (s2_ds_fft_exec_cnt   ),
   .ds_fft_max_level (s2_ds_fft_max_level  ),
   .ds_status        (s2_ds_status         ),
   .tile_cfg        (tile_cfg              ),
   .d_done          (done_bus[2]           ),
   .d_error         (s2_error              )
);

//--------------------------------------------------------------------------
// SLICE 3
//--------------------------------------------------------------------------
hsdac_ts_slice #(
   .p_connection_width (p_connection_width ),
   .p_data_inc_val_init(p_data_inc_val_init),
   .p_change_width     (p_change_width     ),
   .p_data_type_width  (p_data_type_width  ),
   .p_useable_width    (p_useable_width    ),
   .p_slice_number     (3)
) ds_slice_3_1 (
   .clk_samp        (clk_samp              ),
   .clk_fabric      (clk_fabric            ),
   .d_enable        (s3_enable             ),
   .d_inc           (s3_inc                ),
   .d_type          (s3_type               ),
   .d_change_count  (s3_change_count       ),
   .d_scaling_factor(s3_scaling_factor     ),
   .d_offset        (s3_offset             ),
   .d_clk_phase_hl  (s3_clk_phase_hl       ),
   .d_in_p          (s3_din_p              ),
   .d_in_n          (s3_din_n              ),

   .ds_ctrl          (s3_ds_ctrl           ),
   .ds_fft_exec_cnt  (s3_ds_fft_exec_cnt   ),
   .ds_fft_max_level (s3_ds_fft_max_level  ),
   .ds_status        (s3_ds_status         ),
   .tile_cfg        (tile_cfg              ),
   .d_done          (done_bus[3]           ),
   .d_error         (s3_error              )
);

endmodule

// ----------------------------------------------------------------------------
// Data sink slice
// ----------------------------------------------------------------------------
module hsdac_ts_slice #(
  parameter  p_connection_width  = 16,
  parameter  p_useable_width     = 14,
  parameter  p_change_width      = 16,
  parameter  p_data_inc_val_init = 1,
  parameter  p_data_type_width   = 1,
  parameter  p_slice_number      = 0
) (

  input  wire                            d_enable         , //
  input  wire                            clk_samp         , //
  input  wire                            clk_fabric       , //
  input  wire      [p_useable_width-1:0] d_inc            , //
  input  wire    [p_data_type_width-1:0] d_type           , //
  input  wire       [p_change_width-1:0] d_change_count   , // 
  input  wire                     [31:0] d_scaling_factor , //
  input  wire                     [31:0] d_offset         , //
  input  wire                     [31:0] d_clk_phase_hl   , //

  input  wire                     [63:0] d_in_p           , //
  input  wire                     [63:0] d_in_n           , //
  //
  input  wire                    [7:0]   ds_ctrl          ,
  output wire                   [31:0]   ds_fft_exec_cnt  ,
  output wire                   [31:0]   ds_fft_max_level ,
  output wire                    [7:0]   ds_status        ,

  input  tile_cfg_t                      tile_cfg         ,

  output wire                            d_done           , // 
  output wire                            d_error            //

  );

// ----------------------------------------------------------------------------
// Signal declarations
// ----------------------------------------------------------------------------
wire        change_clk;
wire [15:0] sample;
wire [15:0] sample_fs;

 hsdac_data_sink #(.p_slice_number      (p_slice_number)
) hsdac_data_sink_i(

 .scaling_factor  (d_scaling_factor), // real to int scaling factor
 .d_offset        (d_offset        ), // VCM offset
 .VIN_N           (d_in_n          ), // 
 .VIN_P           (d_in_p          ), // 
 .change_clk      (change_clk      ), // 
 .samp_fs         (sample_fs       ), // 
 .samp            (sample          ), //
 .enable          (d_enable        ), //
 .tile_cfg        (tile_cfg        )  // 
);



fft_checker_wrapper #(
  .p_connection_width  (p_connection_width ),  // Data bus width
  .p_change_width      (p_change_width     ),  // Width of change counter
  .p_useable_width     (p_useable_width    ),  // Usable subset of the data bus width
  .p_data_inc_val_init (p_data_inc_val_init),  // Default value for data increment
  .p_data_type_width   (p_data_type_width  ),  // Default TYPE for data testing
  .p_slice_number      (p_slice_number     )
) fft_checker_wrapper_i(

  .enable           (d_enable         ) , // module enable
  .clk              (change_clk       ) , // recovered clock
  
   //
  .ds_ctrl          (ds_ctrl          ) ,
  .ds_fft_exec_cnt  (ds_fft_exec_cnt  ) ,
  .ds_fft_max_level (ds_fft_max_level ) ,
  .ds_status        (ds_status        ) ,

  .d_in           ({112'd0, sample_fs}) , // data input, for dac only 16 bits are used so fill top 112 bits with 0's
  .tile_cfg       (tile_cfg           ) ,

  .fft_completed  (d_done             ) , // fft completed flag
  .error          (d_error            )   // Error flag
  
  );


endmodule
// ----------------------------------------------------------------------------
// Convert the REAL signals to a n-bit code value 
// ----------------------------------------------------------------------------
module hsdac_data_sink #(
  parameter  p_connection_width  = 16,  // Data bus width
  parameter  p_useable_width     = 14,  // Usable subset of the data bus width
  parameter  p_useable_offset    = 0,   // Offset for useable width, use if 14-bit to 12 for example
  parameter  p_data_inc_val_init = 1,   // Default value for data increment
  parameter  p_data_type_width   = 1,   // Default TYPE for data testing
  parameter  p_data_default_type = 0,   // Default data type, Triangle Wave
  parameter  p_slice_number      = 0
) (

 input  wire [31:0] scaling_factor , // real to int scaling factor
 input  wire [63:0] VIN_N          , // 
 input  wire [63:0] VIN_P          , // 
 input  wire [31:0] d_offset       , //
 input  wire        enable         , //

 output wire [15:0] samp           , // 
 output wire [15:0] samp_fs        , // 
 output reg         change_clk     , //
 input  tile_cfg_t  tile_cfg         //

);

// Convert out reals, keep this verbose for debug
real    f64_VIN_N;        // 
real    f64_VIN_P;        //
real    f64_VIN_N_scaled; // 
real    f64_VIN_P_scaled; // 
integer s32_VIN_N;        // 
integer s32_VIN_N_dly;    // 
integer s32_VIN_P;        // 
integer s32_diff;         // 

real    dac_fs;            // recover full scale voltage
real    dac_fs_scaled;     // scale to codes, 2**16
integer dac_fs_scaled_int; // use for 16 bit truncation (possibly add over/under flow warnings)
wire    dac_vop_mode;      // Variable output power mode
wire    [10:0] dac_vop_code;      // Variable output power setting

real     fs_period_ps;
real     fs_khz;
integer  fs_int;
real     fs_frac;
integer  frac_inc = 0;
real     fs_frac_count = 0.0;

always @(*) begin
   // Convert back to a real number
   f64_VIN_P        = $bitstoreal(VIN_P); 
   f64_VIN_N        = $bitstoreal(VIN_N); 
   // Scale the value to an integer acceptable code range
   f64_VIN_P_scaled = f64_VIN_P * scaling_factor;
   f64_VIN_N_scaled = f64_VIN_N * scaling_factor;
   // Convert to integer
   s32_VIN_P        = $rtoi(f64_VIN_P_scaled); 
   s32_VIN_N        = $rtoi(f64_VIN_N_scaled); 
   // Form output sample
   s32_diff         = s32_VIN_P - d_offset;
end
// Assign output
assign samp = s32_diff[15:0];
assign dac_vop_mode = tile_cfg.slice_cfg_setups[p_slice_number].dac_vop_mode   ;
assign dac_vop_code = tile_cfg.slice_cfg_setups[p_slice_number].dac_vop_code   ;

//------------------------------------------------------------------------------
// Create a 2's complement codes version of the real signal. 
// This assumes a fullscale on the DAC of 1V.
//------------------------------------------------------------------------------
always @(*) begin
   dac_fs            = (f64_VIN_P - f64_VIN_N) * (1.00 / (0.036 + (dac_vop_code*0.0011)));
   dac_fs_scaled     = dac_fs * 'h7fff;             // code conversion
   dac_fs_scaled_int = $rtoi(dac_fs_scaled);        // as INT
end

assign samp_fs = dac_fs_scaled_int[15:0];

//------------------------------------------------------------------------------
// Generate a sample clock based on signal change
//------------------------------------------------------------------------------
always @(*) begin
  fs_khz = tile_cfg.slice_cfg_setups[p_slice_number].fs / 1000000.0;  // covert ghz to khz
  if (tile_cfg.slice_cfg_setups[p_slice_number].fs != 34'd0) begin
    fs_period_ps = 1000000.0 / fs_khz; // convert kHz to ps
    fs_int = fs_period_ps / 2;
    fs_frac = (fs_period_ps / 2.0) - fs_int;
  end
end

initial begin
  forever begin
    if (enable == 1'b1) begin
      change_clk = 0;
      #(fs_int + frac_inc); 
      change_clk = 1;
      #(fs_int + frac_inc);
    end
    else begin
      @(posedge enable);
      @(VIN_P);
    end
  end
end

always @(change_clk) begin
  if (fs_frac > 0.0) begin
    if (fs_frac_count + fs_frac > 1.0) begin
      fs_frac_count <= fs_frac_count + fs_frac - 1.0;
      frac_inc <= 1;
    end
    else begin
      fs_frac_count <= fs_frac_count + fs_frac;
      frac_inc <= 0;
    end
  end
  else begin
    if (fs_frac_count + fs_frac < -1.0) begin
      fs_frac_count <= fs_frac_count + fs_frac + 1.0;
      frac_inc <= -1;
    end
    else begin
      fs_frac_count <= fs_frac_count + fs_frac;
      frac_inc <= 0;
    end
  end
end

endmodule

// ----------------------------------------------------------------------------
// DAC Data Checker.
// FFT Checker wrapper to instantiate sv module.
// ----------------------------------------------------------------------------
module fft_checker_wrapper #(
  parameter  p_connection_width  = 16,  // Data bus width
  parameter  p_change_width      = 16,  // Width of change counter
  parameter  p_useable_width     = 14,  // Usable subset of the data bus width
  parameter  p_useable_offset    = 0,   // Offset for useable width, use if 14-bit to 12 for example
  parameter  p_data_inc_val_init = 1,   // Default value for data increment
  parameter  p_data_type_width   = 1,   // Default TYPE for data testing
  parameter  p_data_default_type = 0,   // Default data type, Triangle Wave
  parameter  p_slice_number      = 0
) (

  input  wire                           enable           , // module enable
  input  wire                           clk              , // recovered clock

  // fft checker axi accessible
  input  wire                     [7:0] ds_ctrl          ,
  output wire                    [31:0] ds_fft_exec_cnt  ,
  output wire                    [31:0] ds_fft_max_level ,
  output wire                     [7:0] ds_status        ,

  input                         [127:0] d_in             , // data input

  input  tile_cfg_t                     tile_cfg         ,    

  output                                fft_completed    , // Done flag
  output                                error              // Error flag
  
  );
  

fft_checker #(
  .p_slice_number(p_slice_number)
) 
dac_fft_checker_i(
  // inputs
  .clk            (clk),
  .d_in           (d_in),
  .d_in_sig_det   (d_in),
  .enable         (enable),
  .tile_cfg       (tile_cfg),
  .ds_ctrl        (ds_ctrl),

  // outputs
  .ds_fft_exec_cnt  (ds_fft_exec_cnt ),
  .ds_fft_max_level (ds_fft_max_level),
  .ds_status        (ds_status       ),
  .fft_completed    (fft_completed   ),
  .error            (error           )
);

endmodule


