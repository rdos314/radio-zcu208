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
`timescale 1ns / 1ps

import demo_tb_rfdac_utils_pkg::*;

// ----------------------------------------------------------------------------
// IQ data sink tile
// ----------------------------------------------------------------------------
(* X_INTERFACE_PRIORITY_LIST = "xilinx.com:user:hsams_data_sink_ctrl:1.0" *)
(* DowngradeIPIdentifiedWarnings="yes" *)
module ds_slice #(

  parameter  p_cons          = 16,    // axis word width (gui default = 8)
  parameter  p_con_w         = 12,    // bits per axis word (default = 16)
  parameter  p_useable_w     = 12,
  parameter  p_increment_w   = 12,
  parameter  p_data_type_w   = 3, 
  parameter  p_change_w      = 8,
  parameter  p_slice_number  = 0

) (
  input  tile_cfg_t                   tile_cfg,
  input  wire                         clk              , //
  input  wire            [p_cons-1:0] ds_enable        , //
  input  wire     [p_increment_w-1:0] ds_inc           , //
  input  wire     [p_data_type_w-1:0] ds_type          , //
  input  wire        [p_change_w-1:0] ds_change_count  , //
  input  wire  [(p_con_w*p_cons)-1:0] ds_in            , //
  input  wire                   [7:0] ds_ctrl          , //
  output wire                  [31:0] ds_fft_exec_cnt  , //
  output wire                  [31:0] ds_fft_max_level , //
  output wire                   [7:0] ds_status        , //
  output reg                          ds_done=0        , //
  output reg                          ds_error=0         //
  
  );

// ----------------------------------------------------------------------------
// Internal done bus, register single bit output
// ----------------------------------------------------------------------------
wire [p_cons-1:0] ds_done_bus;  // 
wire [p_cons-1:0] ds_error_bus; // 
wire      [127:0] ds_in_i;

always @(posedge clk) begin
   ds_done  <= ds_done_bus[0];
   ds_error <= ds_error_bus[0];
end


// ----------------------------------------------------------------------------
// FFT checker for each AXI-S interface
// ----------------------------------------------------------------------------
   adc_fft_checker_wrapper #(
     .p_connection_width  (p_con_w        ),  // Data bus width
     .p_connections       (p_cons         ),  // Number of samples per cycle
     .p_change_width      (p_change_w     ),  // Width of change counter
     .p_useable_width     (p_useable_w    ),  // Usable subset of the data bus width
     .p_data_inc_val_init (p_increment_w  ),  // Default value for data increment
     .p_data_type_width   (p_data_type_w  ),  // Default TYPE for data testing
     .p_slice_number      (p_slice_number )
   ) fft_checker_wrapper_i(
   
     .enable              (ds_enable           ), // module enable
     .clk                 (clk                 ), // recovered clock
   
     .ds_ctrl             (ds_ctrl             ),
     .ds_fft_exec_cnt     (ds_fft_exec_cnt     ),
     .ds_fft_max_level    (ds_fft_max_level    ),
     .ds_status           (ds_status           ),

     .d_in                (ds_in_i             ),
     .tile_cfg            (tile_cfg            ),
   
     .fft_completed       (ds_done_bus[0]      ), // fft completed flag
     .error               (ds_error_bus[0]     )  // Error flag
     
     );
     
   assign ds_in_i = (p_cons == 8) ? ds_in : {{(128-(p_con_w*p_cons)){1'b0}}, ds_in};
endmodule

// ----------------------------------------------------------------------------
// ADC Data Checker.
// FFT Checker wrapper to instantiate sv module.
// ----------------------------------------------------------------------------
module adc_fft_checker_wrapper #(
  parameter  p_connection_width  = 16,  // Data bus width
  parameter  p_connections       = 2,   // Number of samples per cycle
  parameter  p_change_width      = 16,  // Width of change counter
  parameter  p_useable_width     = 14,  // Usable subset of the data bus width
  parameter  p_useable_offset    = 0,   // Offset for useable width, use if 14-bit to 12 for example
  parameter  p_data_inc_val_init = 1,   // Default value for data increment
  parameter  p_data_type_width   = 1,   // Default TYPE for data testing
  parameter  p_data_default_type = 0 ,   // Default data type, Triangle Wave
  parameter  p_slice_number      = 0
) (

  input  wire       [p_connections-1:0] enable          , // module enable
  input  wire                           clk             , // recovered clock

  // fft checker axi accessible
  input  wire                     [7:0] ds_ctrl          ,
  output wire                    [31:0] ds_fft_exec_cnt  ,
  output wire                    [31:0] ds_fft_max_level ,
  output wire                     [7:0] ds_status        ,

  input                         [127:0] d_in            , // data input

  input  tile_cfg_t                     tile_cfg,    

  output reg                            fft_completed  , // Done flag
  output reg                            error            // Error flag
  
  );
  
  reg [127:0] d_in_i;
  reg [127:0] d_in_q;
  reg         enable_i;
  reg         enable_q;
  wire        fft_completed_i;
  wire        fft_completed_q;
  wire        error_i;
  wire        error_q;
  integer     i;

  // The tone on the Q output can be cancelled out if using
  // real to IQ mixing. The following function is used to disable the
  // Q FFT checker if this is the case.
  function bit calc_enable_q;
    input integer    index;
    input tile_cfg_t tile_cfg;
  
    if (tile_cfg.slice_cfg_setups[index].mixer == 0) begin  // R2C mixing
      // If the mixer frequency is zero or Fs/2 then there is no Q output
      if ((tile_cfg.slice_cfg_setups[index].mixer_freq == 32'd0 ||
          (tile_cfg.slice_cfg_setups[index].mixer_freq == tile_cfg.slice_cfg_setups[index].fs/2))
          && (tile_cfg.slice_cfg_setups[index].mixer_phase == 0 || tile_cfg.slice_cfg_setups[index].mixer_phase == 180 || tile_cfg.slice_cfg_setups[index].mixer_phase == 360))  begin
        calc_enable_q = 1'b0;
      end
      else begin
        calc_enable_q = 1'b1;
      end
    end
    else begin
      calc_enable_q = 1'b1;
    end
  endfunction
  
  // The tone on the I output can be cancelled out if using
  // real to IQ mixing. The following function is used to disable the
  // I FFT checker if this is the case.
  function bit calc_enable_i;
    input integer    index;
    input tile_cfg_t tile_cfg;
  
    if (tile_cfg.slice_cfg_setups[index].mixer == 0) begin  // R2C mixing
      // If the mixer frequency is zero or Fs/2 then there is no I output
      if ((tile_cfg.slice_cfg_setups[index].mixer_freq == 32'd0 ||
          (tile_cfg.slice_cfg_setups[index].mixer_freq == tile_cfg.slice_cfg_setups[index].fs/2))
           && (tile_cfg.slice_cfg_setups[index].mixer_phase == 90 || tile_cfg.slice_cfg_setups[index].mixer_phase == 270)) begin
        calc_enable_i = 1'b0;
      end
      else begin
        calc_enable_i = 1'b1;
      end
    end
    else begin
      calc_enable_i = 1'b1;
    end
  endfunction
        

  assign enable_i = (tile_cfg.slice_cfg_setups[p_slice_number].is_4g == 1'b0) ? 
                     calc_enable_i(p_slice_number, tile_cfg) & enable[0] : 
                      (p_slice_number % 2 == 1 ? calc_enable_q(p_slice_number, tile_cfg) & enable[0] : 
                        calc_enable_i(p_slice_number, tile_cfg) & enable[0]);
  assign enable_q = (tile_cfg.slice_cfg_setups[p_slice_number].is_4g == 1'b0) ? 
                     ((tile_cfg.slice_cfg_setups[p_slice_number].mixer < 2) ? 
                       calc_enable_q(p_slice_number, tile_cfg) & enable[1] : 1'b0) :
                       1'b0;

// The following code presumes that p_connections = 2. This will need fixed
// for the more general production testbench cases.
always @(*) begin
  if (tile_cfg.slice_cfg_setups[p_slice_number].is_4g == 1'b0) begin
    if (tile_cfg.slice_cfg_setups[p_slice_number].mixer < 2) begin
      // We have I and Q in the same bus. Split them up into 2 FFTs
      for (i = 0; i < 2; i = i + 1) begin
        d_in_i[(i*16) +: 16] = d_in[((i*2)*16) +: 16];
        d_in_q[(i*16) +: 16] = d_in[(((i*2)+1)*16) +: 16];
      end
      d_in_i[127:32] = 32'd0;
      d_in_q[127:32] = 32'd0;
      fft_completed  = fft_completed_i & fft_completed_q;
      error          = error_i | error_q;
    end
    else begin
      for (i = 0; i < 2; i = i + 1) begin
        d_in_i[(i*32) +: 32] = d_in[(i*32) +: 32];
        d_in_q[(i*32) +: 32] = 32'd0;
      end
      d_in_i[127:32] = 32'd0;
      d_in_q[127:32] = 32'd0;
      fft_completed  = fft_completed_i;
      error          = error_i;
    end
  end
  else begin
    for (i = 0; i < 2; i = i + 1) begin
      d_in_i[(i*32) +: 32] = d_in[(i*32) +: 32];
      d_in_q[(i*32) +: 32] = 32'd0;
    end
    d_in_i[127:32] = 32'd0;
    d_in_q[127:32] = 32'd0;
    fft_completed  = fft_completed_i;
    error          = error_i;
  end
end

fft_checker #(
  .p_slice_number(p_slice_number)
) 
adc_fft_checker_i_i(
  // inputs
  .clk            (clk),
  .d_in           (d_in_i),
  .d_in_sig_det   (d_in_i),
  .enable         (enable_i),
  .tile_cfg       (tile_cfg),
  .ds_ctrl        (ds_ctrl)      ,

  // outputs
  .ds_fft_exec_cnt  (ds_fft_exec_cnt ),
  .ds_fft_max_level (ds_fft_max_level),
  .ds_status        (ds_status       ),
  .fft_completed    (fft_completed_i ),
  .error            (error_i         )
);

fft_checker #(
  .p_slice_number(p_slice_number)
) 
adc_fft_checker_q_i(
  // inputs
  .clk            (clk),
  .d_in           (d_in_q),
  .d_in_sig_det   (d_in_q),
  .enable         (enable_q),
  .tile_cfg       (tile_cfg),
  .ds_ctrl        (ds_ctrl)      ,

  // outputs
  .ds_fft_exec_cnt  (                ),
  .ds_fft_max_level (                ),
  .ds_status        (                ),
  .fft_completed    (fft_completed_q ),
  .error            (error_q         )
);

endmodule

