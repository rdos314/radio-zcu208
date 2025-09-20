//----------------------------------------------------------------------------
// Title : ADC signal_lost state machine
// Project : Ultrascale+ RF Data Converter Subsystem
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


`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module exdes_signal_lost_fsm
#(parameter INPUT_WIDTH     = 32,
            THRESHOLD       = 16'h0001,
            COUNT_THRESHOLD = 32)
(
    input  wire                   adc_axis_aclk    , // ADC AXI Streaming Clock and Reset
    input  wire                   adc_axis_aresetn , //
    input  wire [INPUT_WIDTH-1:0] adc_axis_tdata   , // ADC AXI output data and valid
    input  wire                   adc_axis_tvalid  , //
    input  wire                   axi_clk          , // AXI Clock
    output wire                   signal_lost        // Signal lost indication            
);

    // States for the signal_lost state machine
    localparam idle                   = 3'd0;
    localparam signal_ok              = 3'd1;
    localparam last_below             = 3'd2;
    localparam sig_lost               = 3'd3;
    localparam last_above             = 3'd4;
    
    reg [3:0]  signal_lost_sm_state;
    
    localparam samples_per_cycle = INPUT_WIDTH / 16;

    reg [15:0] signal_count;
    reg [samples_per_cycle-1:0] signal_present;
    wire all_below;
    reg  signal_lost_i;
    reg [15:0] adc_axis_tdata_check[samples_per_cycle-1:0];

  // State machine to count the number of consecutive samples that are
  // below the threshold. When COUNT_THRESHOLD consecutive samples have been
  // below the threshold flag signal_lost. If COUNT_THRESHOLD consecutive 
  // samples are above the threshold remove the signal_lost indication.
  always @(posedge adc_axis_aclk)
  begin
    if (adc_axis_aresetn == 1'b0)
    begin
      signal_lost_sm_state     <= idle;
      signal_count             <= 16'd0;
      signal_lost_i            <= 1'b0;
    end
    else
    begin
      case(signal_lost_sm_state)
        idle: begin
          signal_count         <= 16'd0;
          signal_lost_i        <= 1'b0;
          if (adc_axis_tvalid == 1'b1) begin
            signal_lost_sm_state <= signal_ok;
          end
        end
        signal_ok: begin
          if (adc_axis_tvalid == 1'b1) begin
            signal_lost_i <= 1'b0;
            signal_count  <= 16'd0;
            if (all_below == 1'b1) begin
              // Increment a counter when we see all the samples
              // lower than the THRESHOLD parameter
              signal_count <= signal_count + 'd1;
              signal_lost_sm_state <= last_below;
            end
          end
          else begin
            signal_lost_sm_state     <= idle;
          end
        end
        last_below: begin
          if (adc_axis_tvalid == 1'b1) begin
            signal_lost_i <= 1'b0;
            if (all_below == 1'b0) begin
              // Move back to the signal_ok state as there are now
              // samples above the threshold
              signal_lost_sm_state <= signal_ok;
            end
            else
            begin
              if (signal_count > COUNT_THRESHOLD) begin
                // We've seen more than COUNT_THRESHOLD consecutive
                // samples under the threshold. Flag signal_lost
                signal_lost_sm_state <= sig_lost;
              end
              else
              begin
                signal_count <= signal_count + 'd1;
              end
            end
          end
          else begin
            signal_lost_sm_state     <= idle;
          end
        end
        sig_lost: begin
          if (adc_axis_tvalid == 1'b1) begin
            signal_lost_i <= 1'b1;
            signal_count <= 16'd0;
            if (all_below == 1'b0) begin
              // There are samples above the threshold. Wait for there
              // to be COUNT_THRESHOLD consecutive ones
              signal_count <= signal_count + 'd1;
              signal_lost_sm_state <= last_above;
            end
          end
          else begin
            signal_lost_sm_state     <= idle;
          end
        end
        last_above: begin
          if (adc_axis_tvalid == 1'b1) begin
            signal_lost_i <= 1'b1;
            if (all_below == 1'b1) begin
              // Move back to the signal_lost state as the samples are now
              // below the threshold
              signal_lost_sm_state <= sig_lost;
            end
            else
            begin
              if (signal_count > COUNT_THRESHOLD) begin
                // We've seen more than COUNT_THRESHOLD consecutive
                // samples over the threshold. Go back to signal_ok
                signal_lost_sm_state <= signal_ok;
              end
              else
              begin
                signal_count <= signal_count + 'd1;
              end
            end
          end
          else begin
            signal_lost_sm_state     <= idle;
          end
        end
        default: begin
          signal_count             <= 16'd0;
          signal_lost_i            <= 1'b0;
          signal_lost_sm_state     <= idle;
        end
      endcase
    end
  end
  
  // Calculate the all_below signal.
  genvar i;  
  generate
    for (i = 0; i < samples_per_cycle; i=i+1) begin: below_loop
    
      // Negate the sample if it is a negative number
      always @(posedge adc_axis_aclk)
      begin
        if (adc_axis_aresetn == 1'b0)
        begin
          adc_axis_tdata_check[i] <= 16'h7fff;
        end
        else
        begin
          if (adc_axis_tdata[(i*16)+15] == 1'b1) begin
            adc_axis_tdata_check[i] <= ~adc_axis_tdata[(i*16)+15:(i*16)]; 
          end
          else
          begin
            adc_axis_tdata_check[i] <= adc_axis_tdata[(i*16)+15:(i*16)];
          end
        end
      end
      
      always @(posedge adc_axis_aclk)
      begin: alway_blk
        if (adc_axis_aresetn == 1'b0)
        begin : rst_blk
          signal_present[i] <= 1'b1;
        end
        else
        begin: main_blk
          if (adc_axis_tdata_check[i] < THRESHOLD) begin: below_blk
            signal_present[i] <= 1'b0;
          end
          else begin: over_blk
            signal_present[i] <= 1'b1;
          end
        end
      end
    end
  endgenerate  
  assign all_below = (signal_present == 'd0) ? 1'b1 : 1'b0;
  
  // Synchronize the signal_lost output onto the AXI clock domain
  xpm_cdc_single #(
  .SRC_INPUT_REG (0)
  ) cdc_i  (
  .src_clk  (1'd0),
  .dest_clk (axi_clk),
  .src_in   (signal_lost_i),
  .dest_out (signal_lost)
  );
  
endmodule
  
