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

//--------------------------------------------------------------------------------
// Helper Address defines for IP.
// The DAC and ADC Tiles are split into 0x4000 addressable segments with 
// 0x0000 -> 0x1FFF : existing in the IP wrapper, register names to thia segment
//                    are reported in simulation prefixed with 
//                    DCC for DAC and ACC for ADC  
// 0x2000 -> 0x3FFF : existing in the silicon primitive. There are accessed via
//                    the AXI 2 DRP bridge. Register names to this segment
//                    are reported in simulation prefixed with DAC and ADC  
//--------------------------------------------------------------------------------
// Base address
`define HSAMS_CONFIG_BASE_ADDR                            'h0          // 0
`define T0_DCC_BASE_ADDR                                  'h4000       // 16384
`define T0_DAC_BASE_ADDR                                  'h6000       // 24576
`define T1_DCC_BASE_ADDR                                  'h8000       // 32768
`define T1_DAC_BASE_ADDR                                  'ha000       // 40960
`define T2_DCC_BASE_ADDR                                  'hc000       // 49152
`define T2_DAC_BASE_ADDR                                  'he000       // 57344
`define T3_DCC_BASE_ADDR                                  'h10000      // 65536
`define T3_DAC_BASE_ADDR                                  'h12000      // 73728
`define T0_ACC_BASE_ADDR                                  'h14000      // 81920
`define T0_ADC_BASE_ADDR                                  'h16000      // 90112
`define T1_ACC_BASE_ADDR                                  'h18000      // 98304
`define T1_ADC_BASE_ADDR                                  'h1a000      // 106496
`define T2_ACC_BASE_ADDR                                  'h1c000      // 114688
`define T2_ADC_BASE_ADDR                                  'h1e000      // 122880
`define T3_ACC_BASE_ADDR                                  'h20000      // 131072
`define T3_ADC_BASE_ADDR                                  'h22000      // 139264
// IP control register examples
`define DCC0_RESET_REGISTER_ADDR                          'h4000       // 16384
`define DCC0_RESTART_REGISTER_ADDR                        'h4004       // 16388
`define DCC0_RESTART_STATE_START_ADDR                     'h4008       // 16392
`define DCC0_RESTART_STATE_END_ADDR                       'h4008       // 16392
`define DCC0_CURRENT_STATE_ADDR                           'h400c       // 16396
`define DCC0_SIM_LEVEL_ADDR                               'h4100       // 16640
`define DCC1_SIM_LEVEL_ADDR                               'h8100       // 33024
`define DCC2_SIM_LEVEL_ADDR                               'hc100       // 49408
`define DCC3_SIM_LEVEL_ADDR                               'h10100      // 65792
`define ACC0_RESET_REGISTER_ADDR                          'h14000      // 81920
`define ACC0_RESTART_REGISTER_ADDR                        'h14004      // 81924
`define ACC0_RESTART_STATE_START_ADDR                     'h14008      // 81928
`define ACC0_RESTART_STATE_END_ADDR                       'h14008      // 81928
`define ACC0_CURRENT_STATE_ADDR                           'h1400c      // 81932
`define ACC0_SIM_LEVEL_ADDR                               'h14100      // 82176
`define ACC1_SIM_LEVEL_ADDR                               'h18100      // 98560
`define ACC2_SIM_LEVEL_ADDR                               'h1c100      // 114944
`define ACC3_SIM_LEVEL_ADDR                               'h20100      // 131328


///////////////////////////////////////////////////////////////////////////////
// CONFIGURATION_DEFINES_START
///////////////////////////////////////////////////////////////////////////////
//`define ENABLE_IPI_HELPER_BLOCKS
// Nano sequencer
//`define ENABLE_RW_MESSAGE_PRINT
`define ENABLE_NANO_STOP_IN_MODULE
//`define ENABLE_AXI4_LITE_MON_PORT
// Sim Stopper
//`define ENABLE_SIM_STOPPER_COUNT_PORTS
//`define ENABLE_SIM_STOPPER_STOP_IN_MODULE
///////////////////////////////////////////////////////////////////////////////
// CONFIGURATION_DEFINES_END
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// 
// Module Name: axi4l_nano_seq
//
// Description: This module is designed to enable a user to quickly inject
// AXI4-Lite stimulation into a design.
//
// This block is encapsulated in a module to allow it to be instantiated in IPI
// enabling the user to apply stimulus to an AXI4-Lite interface.
//
// This should be regarded as a template as other IO/tasks can be added as
// required. Im its raw form however it should be suffictent to configure
// AXI4-Lite interfaced systems in either IPI or general HDL.
// 
// This module is non-synthesisable however does contain two synthesiseable 
// components that can be reused in IPI or general HDL
//   axi4l_ns_rw_2_axi    : Conversion from RW data interface to AXI4-Lite
//   axi4l_ns_sim_stopper : Condition counter to indicate end on simulation
//
///////////////////////////////////////////////////////////////////////////////

// All submodules prefixed with the abbreviated with axi4l_ns
module demo_tb_axi4l_nano_seq #(
   parameter EXTERN_RETIMED_SIGNAL_BUS_W = 4 
) (

`ifdef ENABLE_AXI4_LITE_MON_PORT
   // If this module is used in IPI and the user wants to add a monitor on the 
   // AXI bus, this port set can be enabled. IPI does not currently allow 
   // multiple bus connections, so this offers a clean way to monitor the design
   // in simulation
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon AWADDR"  *) output  wire [34:0] mon_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon AWVALID" *) output  wire        mon_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon AWREADY" *) output  wire        mon_axi_awready  , // 
   
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon WDATA"   *) output  wire [31:0] mon_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon WVALID"  *) output  wire        mon_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon WREADY"  *) output  wire        mon_axi_wready   , // 
   
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon BRESP"   *) output  wire  [1:0] mon_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon BVALID"  *) output  wire        mon_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon BREADY"  *) output  wire        mon_axi_bready   , // 

   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon ARADDR"  *) output  wire [34:0] mon_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon ARVALID" *) output  wire        mon_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon ARREADY" *) output  wire        mon_axi_arready  , // 
   
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon RDATA"   *) output  wire [31:0] mon_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon RRESP"   *) output  wire  [1:0] mon_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon RVALID"  *) output  wire        mon_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:user:axi_monitor_if:1.0 nano_mon RREADY"  *) output  wire        mon_axi_rready   , // 
`endif

   // AXI-Lite Interface
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi AWADDR"  *)     output  wire [34:0] axi_awaddr       , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi AWVALID" *)     output  wire        axi_awvalid      , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi AWREADY" *)     input   wire        axi_awready      , // 
        
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi WDATA"   *)     output  wire [31:0] axi_wdata        , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi WVALID"  *)     output  wire        axi_wvalid       , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi WREADY"  *)     input   wire        axi_wready       , // 
        
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi BRESP"   *)     input   wire  [1:0] axi_bresp        , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi BVALID"  *)     input   wire        axi_bvalid       , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi BREADY"  *)     output  wire        axi_bready       , // 

   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi ARADDR"  *)     output  wire [34:0] axi_araddr       , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi ARVALID" *)     output  wire        axi_arvalid      , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi ARREADY" *)     input   wire        axi_arready      , // 
        
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi RDATA"   *)     input   wire [31:0] axi_rdata        , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi RRESP"   *)     input   wire  [1:0] axi_rresp        , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi RVALID"  *)     input   wire        axi_rvalid       , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 nano_axi RREADY"  *)     output  wire        axi_rready       , //    

   input  wire [255:0]  data_samples_in[15:0],
   output reg           data_samples_req[3:0],
   output reg  [31:0]   data_samples_out[1023:0],
   output reg  [31:0]   data_samples_out_q[1023:0],
   output reg   [1:0]   wr_channel,
   output reg   [1:0]   rd_channel,
   
   // clock and reset
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF nano_axi, ASSOCIATED_RESET reset" *)
   input  wire clk                ,
   (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
   (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
   input  wire reset              ,
   input  wire rising_stop_trigger,

   // External flags indicating error and complete status
   input  wire [EXTERN_RETIMED_SIGNAL_BUS_W-1: 0] external_signal_bus,

   // general purpose
   output reg  [7:0]   tile_clock_enable = 8'h00, // Clock enables to allow simulation acceleration
   output reg          axi_message_enable = 1'b1, // Optional AXI message disable
   output reg          int_axi_aresetn =0,        // 
   output reg          int_tb_aresetn =0,         // 
   output wire         axi_aresetn ,              // Inverted reset for AXI4 land 
   output reg          seq_done = 0               // 
);

//----------------------------------------------------------------------------
// Internal signals
//----------------------------------------------------------------------------
// Simple strobes to drive AXI control
reg           wr_req                = 0; // Set to request a write access
reg           rd_req                = 0; // Set to request a read access
reg    [34:0] address               = 0; // Address to use for request
reg    [31:0] wr_data               = 0; // Data to write on a write

wire          req_busy;                  // AXI4-Lite access is in progress
wire   [31:0] rd_data;                   // The data returned from the AXI4-Lite read
reg    [31:0] working_value         = 0; // Used as working variable in AXI tasks
wire          dac_sink_error_flag;
wire          adc_sink_error_flag;
wire          dac_sink_done_flag ;
wire          adc_sink_done_flag ;

integer       dac_error_counter     = 0;
integer       adc_error_counter     = 0;
integer       channel_count         = 0;
integer       clock_count           = 0;
reg           data_error            = 0;
reg    [3:0][3:0] dac_done          = {4'hf, 4'hf, 4'hf, 4'hf};
reg    [3:0][3:0] dac_done_last     = {4'hf, 4'hf, 4'hf, 4'hf};
reg    [31:0] adc_done              ='hffff_ffff;
reg    [31:0] adc_done_last         ='hffff_ffff;
wire          adc_axi_based_done;
wire    [3:0] dac_axi_based_done;
reg     [7:0] sm_end_stage_map      ='h00;
reg     [7:0] sm_done_map           ='h00;

//-----------------------------------------------------------------------------
// Strobes that indicate the AXI read done function has completed
//-----------------------------------------------------------------------------
assign dac_axi_based_done[0] = (!(&dac_done_last[0])) & (&dac_done[0]) ;
assign dac_axi_based_done[1] = (!(&dac_done_last[1])) & (&dac_done[1]) ;
assign dac_axi_based_done[2] = (!(&dac_done_last[2])) & (&dac_done[2]) ;
assign dac_axi_based_done[3] = (!(&dac_done_last[3])) & (&dac_done[3]) ;
assign adc_axi_based_done = (!(&adc_done_last)) & (&adc_done) ;

//-----------------------------------------------------------------------------
// Status flag demux
//-----------------------------------------------------------------------------
assign dac_sink_error_flag = external_signal_bus[0];
assign adc_sink_error_flag = external_signal_bus[1];
assign dac_sink_done_flag  = external_signal_bus[2];
assign adc_sink_done_flag  = external_signal_bus[3];

//-----------------------------------------------------------------------------
// Assign AXI4-Lite monitor port outputs
//-----------------------------------------------------------------------------
`ifdef ENABLE_AXI4_LITE_MON_PORT
 assign mon_axi_awaddr  =  axi_awaddr  ; // 
 assign mon_axi_awvalid =  axi_awvalid ; // 
 assign mon_axi_awready =  axi_awready ; // 
 assign mon_axi_wdata   =  axi_wdata   ; // 
 assign mon_axi_wvalid  =  axi_wvalid  ; // 
 assign mon_axi_wready  =  axi_wready  ; // 
 assign mon_axi_bresp   =  axi_bresp   ; // 
 assign mon_axi_bvalid  =  axi_bvalid  ; // 
 assign mon_axi_bready  =  axi_bready  ; // 
 assign mon_axi_araddr  =  axi_araddr  ; // 
 assign mon_axi_arvalid =  axi_arvalid ; // 
 assign mon_axi_arready =  axi_arready ; // 
 assign mon_axi_rdata   =  axi_rdata   ; // 
 assign mon_axi_rresp   =  axi_rresp   ; // 
 assign mon_axi_rvalid  =  axi_rvalid  ; // 
 assign mon_axi_rready  =  axi_rready  ; // 
`endif

localparam p_max_slice_count     = 4;
localparam p_max_allowable_error = 0;

//-----------------------------------------------------------------------------
// Error counters
//-----------------------------------------------------------------------------
always @(posedge clk) begin
//always @(*) begin
   if(dac_sink_error_flag)
      dac_error_counter <= dac_error_counter + 1;
   if(adc_sink_error_flag)
      adc_error_counter <= adc_error_counter + 1;
end

always @(posedge clk) begin
   if((adc_error_counter > p_max_allowable_error) | 
   	  (dac_error_counter > p_max_allowable_error)
     )
      data_error <= 1'd1;
end

//-----------------------------------------------------------------------------
// Optional stop on rising edge of stop_trigger. Note this intentionally 
// located here so that when the simulator stops you are located near the task
// code in your Text browser. Move it and scroll!
//-----------------------------------------------------------------------------
`ifdef ENABLE_NANO_STOP_IN_MODULE
always @(posedge ((!reset) & rising_stop_trigger)) begin
   $stop;
end
`endif

//-----------------------------------------------------------------------------
// (RECOMENDED_USER_MODIFY_SEQUENCE_SECTION_START)
//-----------------------------------------------------------------------------
// Memory MAP for exdes and testbench
//-----------------------------------------------------------------------------
wire [34:0] BASE_ADDR_RFAMS     = 35'h044B00000;  // DUT
wire [34:0] BASE_ADDR_EXSRCRAM  = 35'h0C0000000;  // EXDES data stim     DAC
wire [34:0] BASE_ADDR_EXSNKRAM  = 35'h0E0000000;  // EXDES data capture  ADC
wire [34:0] BASE_ADDR_TBSRC     = 35'h100000000;  // TB    data Source   ADC
wire [34:0] BASE_ADDR_TBSNK     = 35'h200000000;  // TB    data Sink     DAC
wire [34:0] BASE_ADDR_EXSRC     = 35'h300000000;  // TB    data Source   DAC
wire [34:0] BASE_ADDR_EXSNK     = 35'h400000000;  // TB    data Sink     ADC
initial begin
   // -------------------------------------------------------------------------
   // Task based demo testbench. 
   // Example basic tasks exist for interaction with the IP. 
   // Additional sequences may be added by the user. Be sure to save these to 
   // another file before IP regeneration 
   // -------------------------------------------------------------------------
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   $display("T=%12d: Xilinx RF AMS Demo Testbench.", $time);
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   int_axi_reset_after_for_cycles(10,20);
   delay_ps_32  (1000);
   axi_cwait    (40);   // Startup delay
   
   $display("T=%12d: Accelerate SIM startup", $time);
   set_timers_to_fast_sim(5);

   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   $display("T=%12d: Run state machine configuration stage.", $time);
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   call_setup_adc_config(0, 4'h0, 4'h1);
   call_setup_adc_config(1, 4'h0, 4'h1);
   call_setup_adc_config(2, 4'h0, 4'h1);
   call_setup_adc_config(3, 4'h0, 4'h1);
   call_setup_dac_config(0, 4'h0, 4'h1);
   call_setup_dac_config(1, 4'h0, 4'h1);
   call_setup_dac_config(2, 4'h0, 4'h1);
   call_setup_dac_config(3, 4'h0, 4'h1);

   $display("T=%12d: Wait for the serial tile configuration to complete before configuring core.", $time);
   $display("T=%12d: This is true once all POR tiles have left stage 0.", $time);
   sm_end_stage_map = 'h00;
   while ((&sm_end_stage_map) == 0) begin
      wait_on_dac_startup_exit();
      wait_on_adc_startup_exit();
   end

   $display("T=%12d: ADC configuration", $time);
   //-------------------------------------------------------------
   // Analog  = 0_01 0_23 1_01 1_23 2_01 2_23 3_01 3_23
   // Digital = 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
   //-------------------------------------------------------------
   call_adc_setup_ip   (0, 0, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (0, 1, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (0, 2, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (0, 3, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (1, 0, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (1, 1, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (1, 2, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (1, 3, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (2, 0, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (2, 1, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (2, 2, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (2, 3, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (3, 0, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (3, 1, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (3, 2, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_setup_ip   (3, 3, 12, 1, 0, 1, 2, 48'h0000_0000_0000, 1);
   call_adc_enable_signal_detector (0, 0, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (0, 1, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (0, 2, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (0, 3, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (1, 0, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (1, 1, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (1, 2, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (1, 3, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (2, 0, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (2, 1, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (2, 2, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (2, 3, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (3, 0, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (3, 1, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (3, 2, 1, 0, 3, 1, 32);
   call_adc_enable_signal_detector (3, 3, 1, 0, 3, 1, 32);
   call_adc_enable_sinks(0, 0, 12, 1, 0, 1);
   call_adc_enable_sinks(0, 1, 12, 1, 0, 1);
   call_adc_enable_sinks(0, 2, 12, 1, 0, 1);
   call_adc_enable_sinks(0, 3, 12, 1, 0, 1);
   call_adc_enable_sinks(1, 0, 12, 1, 0, 1);
   call_adc_enable_sinks(1, 1, 12, 1, 0, 1);
   call_adc_enable_sinks(1, 2, 12, 1, 0, 1);
   call_adc_enable_sinks(1, 3, 12, 1, 0, 1);
   call_adc_enable_sinks(2, 0, 12, 1, 0, 1);
   call_adc_enable_sinks(2, 1, 12, 1, 0, 1);
   call_adc_enable_sinks(2, 2, 12, 1, 0, 1);
   call_adc_enable_sinks(2, 3, 12, 1, 0, 1);
   call_adc_enable_sinks(3, 0, 12, 1, 0, 1);
   call_adc_enable_sinks(3, 1, 12, 1, 0, 1);
   call_adc_enable_sinks(3, 2, 12, 1, 0, 1);
   call_adc_enable_sinks(3, 3, 12, 1, 0, 1);

   $display("T=%12d: DAC configuration", $time);
   //-------------------------------------------------------------
   // Analog  = 00 02 10 12 20 22 30 32
   // Digital = 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
   //-------------------------------------------------------------
   call_dac_setup_ip   (0, 0, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (0, 1, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (0, 2, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (0, 3, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (1, 0, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (1, 1, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (1, 2, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (1, 3, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (2, 0, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (2, 1, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (2, 2, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (2, 3, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (3, 0, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (3, 1, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (3, 2, 16, 0, 2, 0, 2, 48'h0000_0000_0000);
   call_dac_setup_ip   (3, 3, 16, 0, 2, 0, 2, 48'h0000_0000_0000);

   //-------------------------------------------------------------
   // TB enables
   //-------------------------------------------------------------
   config_adc_exdes_sink_slice(0, 0, 0, 'd1); // Master ADC data sink enable
   config_adc_tb_source_slice (0, 0, 0, 'd1); // Global Source Enable 
   config_dac_tb_sink_slice   (0, 0, 0, 'd1); // Global DAC CFG

   //-------------------------------------------------------------
   // Load the DAC stimulus memories with data
   //-------------------------------------------------------------
   load_memory(0, 0, 2048, 16, 8, 8, 0);
   load_memory(0, 1, 2048, 16, 8, 8, 1);
   load_memory(0, 2, 2048, 16, 8, 8, 2);
   load_memory(0, 3, 2048, 16, 8, 8, 3);
   load_memory(1, 0, 2048, 16, 8, 8, 4);
   load_memory(1, 1, 2048, 16, 8, 8, 5);
   load_memory(1, 2, 2048, 16, 8, 8, 6);
   load_memory(1, 3, 2048, 16, 8, 8, 7);
   load_memory(2, 0, 2048, 16, 8, 8, 8);
   load_memory(2, 1, 2048, 16, 8, 8, 9);
   load_memory(2, 2, 2048, 16, 8, 8, 10);
   load_memory(2, 3, 2048, 16, 8, 8, 11);
   load_memory(3, 0, 2048, 16, 8, 8, 12);
   load_memory(3, 1, 2048, 16, 8, 8, 13);
   load_memory(3, 2, 2048, 16, 8, 8, 14);
   load_memory(3, 3, 2048, 16, 8, 8, 15);

   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   $display("T=%12d: Run state machine until clocks are enabled.", $time);
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   tile_clock_enable[4] = 1'd1;
   call_setup_adc_config(0, 4'h1, 4'h6);
   tile_clock_enable[5] = 1'd1;
   call_setup_adc_config(1, 4'h1, 4'h6);
   tile_clock_enable[6] = 1'd1;
   call_setup_adc_config(2, 4'h1, 4'h6);
   tile_clock_enable[7] = 1'd1;
   call_setup_adc_config(3, 4'h1, 4'h6);
   tile_clock_enable[0] = 1'd1;
   call_setup_dac_config(0, 4'h1, 4'h8);
   tile_clock_enable[1] = 1'd1;
   call_setup_dac_config(1, 4'h1, 4'h6);
   tile_clock_enable[2] = 1'd1;
   call_setup_dac_config(2, 4'h1, 4'h6);
   tile_clock_enable[3] = 1'd1;
   call_setup_dac_config(3, 4'h1, 4'h6);

   sm_end_stage_map = 'h00;
   while ((&sm_end_stage_map) == 0) begin
      wait_on_dac_startup_exit();
      wait_on_adc_startup_exit();
   end
   //-------------------------------------------------------------
   // Enable the stimulus blocks to send data to the DACs
   //-------------------------------------------------------------

   start_data(2048, 0);

   start_data(2048, 1);

   start_data(2048, 2);

   start_data(2048, 3);

   start_data(2048, 4);

   start_data(2048, 5);

   start_data(2048, 6);

   start_data(2048, 7);

   start_data(2048, 8);

   start_data(2048, 9);

   start_data(2048, 10);

   start_data(2048, 11);

   start_data(2048, 12);

   start_data(2048, 13);

   start_data(2048, 14);

   start_data(2048, 15);

   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   $display("T=%12d: Run DAC state machine until end stage.", $time);
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   call_setup_dac_config(0, 4'h8, 4'hf);
   call_setup_dac_config(1, 4'h6, 4'hf);
   call_setup_dac_config(2, 4'h6, 4'hf);
   call_setup_dac_config(3, 4'h6, 4'hf);

   sm_end_stage_map = 'h00;
   while ((&sm_end_stage_map[3:0]) == 0) begin
      wait_on_dac_startup_exit();
   end

   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 19.2, 0, 0);
   call_dac_setup_bench_tone(0, 0, 32'd19200000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 38.4, 0, 1);
   call_dac_setup_bench_tone(0, 1, 32'd38400000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 76.8, 0, 2);
   call_dac_setup_bench_tone(0, 2, 32'd76800000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 153.6, 0, 3);
   call_dac_setup_bench_tone(0, 3, 32'd153600000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 19.2, 1, 0);
   call_dac_setup_bench_tone(1, 0, 32'd19200000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 38.4, 1, 1);
   call_dac_setup_bench_tone(1, 1, 32'd38400000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 76.8, 1, 2);
   call_dac_setup_bench_tone(1, 2, 32'd76800000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 153.6, 1, 3);
   call_dac_setup_bench_tone(1, 3, 32'd153600000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 19.2, 2, 0);
   call_dac_setup_bench_tone(2, 0, 32'd19200000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 38.4, 2, 1);
   call_dac_setup_bench_tone(2, 1, 32'd38400000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 76.8, 2, 2);
   call_dac_setup_bench_tone(2, 2, 32'd76800000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 153.6, 2, 3);
   call_dac_setup_bench_tone(2, 3, 32'd153600000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 19.2, 3, 0);
   call_dac_setup_bench_tone(3, 0, 32'd19200000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 38.4, 3, 1);
   call_dac_setup_bench_tone(3, 1, 32'd38400000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 76.8, 3, 2);
   call_dac_setup_bench_tone(3, 2, 32'd76800000);
   $display("T=%12d: Sending tone at %f MHz to DAC%0d%0d.", $time, 153.6, 3, 3);
   call_dac_setup_bench_tone(3, 3, 32'd153600000);

   dac_done[0] = 4'h0;
   call_dac_setup_bench_enable(0, 0);
   call_dac_setup_bench_enable(0, 2);
   while ( !dac_axi_based_done[0]  ) begin
      wait_axi_dac_done(0);
   end
   dac_done[1] = 4'h0;
   call_dac_setup_bench_enable(1, 0);
   call_dac_setup_bench_enable(1, 2);
   while ( !dac_axi_based_done[1]  ) begin
      wait_axi_dac_done(1);
   end
   dac_done[2] = 4'h0;
   call_dac_setup_bench_enable(2, 0);
   call_dac_setup_bench_enable(2, 2);
   while ( !dac_axi_based_done[2]  ) begin
      wait_axi_dac_done(2);
   end
   dac_done[3] = 4'h0;
   call_dac_setup_bench_enable(3, 0);
   call_dac_setup_bench_enable(3, 2);

   while ( !dac_axi_based_done[3]  ) begin
      wait_axi_dac_done(3);
   end

   // Turn off DACs
   // Re-start upto stage 6 to ensure clock distribution is still ok
   rfams_w(`DCC0_RESTART_STATE_END_ADDR + ('h4000 * 0), 32'h6); //
   rfams_w(`DCC0_RESTART_REGISTER_ADDR  + ('h4000 * 0), 32'd1); //
   tile_clock_enable[0] = 1'd0;
   rfams_w(`DCC0_RESTART_STATE_END_ADDR + ('h4000 * 1), 32'h6); //
   rfams_w(`DCC0_RESTART_REGISTER_ADDR  + ('h4000 * 1), 32'd1); //
   tile_clock_enable[1] = 1'd0;
   rfams_w(`DCC0_RESTART_STATE_END_ADDR + ('h4000 * 2), 32'h6); //
   rfams_w(`DCC0_RESTART_REGISTER_ADDR  + ('h4000 * 2), 32'd1); //
   tile_clock_enable[2] = 1'd0;
   rfams_w(`DCC0_RESTART_STATE_END_ADDR + ('h4000 * 3), 32'h6); //
   rfams_w(`DCC0_RESTART_REGISTER_ADDR  + ('h4000 * 3), 32'd1); //
   tile_clock_enable[3] = 1'd0;
   // If any of the ADCs are using a distributed clock the tile may still
   // be starting up at this point. Check that all tiles are powered up before
   // continuing.
   sm_end_stage_map = 'h00;
   while ((&sm_end_stage_map[7:4]) == 0) begin
      wait_on_adc_startup_exit();
   end
   

   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   $display("T=%12d: Run ADC state machine until end stage.", $time);
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   call_setup_adc_config(0, 4'h6, 4'hf);
   call_setup_adc_config(1, 4'h6, 4'hf);
   call_setup_adc_config(2, 4'h6, 4'hf);
   call_setup_adc_config(3, 4'h6, 4'hf);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 4.8, 0, 0);
   call_adc_setup_bench(0, 0, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 19.2, 0, 2);
   call_adc_setup_bench(0, 2, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 4.8, 1, 0);
   call_adc_setup_bench(1, 0, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 19.2, 1, 2);
   call_adc_setup_bench(1, 2, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 4.8, 2, 0);
   call_adc_setup_bench(2, 0, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 19.2, 2, 2);
   call_adc_setup_bench(2, 2, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 4.8, 3, 0);
   call_adc_setup_bench(3, 0, 12, 1, 0, 1, 1);
   $display("T=%12d: Sending tone at %f MHz to ADC%0d%0d.", $time, 19.2, 3, 2);
   call_adc_setup_bench(3, 2, 12, 1, 0, 1, 1);

   sm_end_stage_map = 'h00;
   while ((&sm_end_stage_map[7:4]) == 0) begin
      wait_on_adc_startup_exit();
   end

   // Wait for the clock to be OK
   call_setup_adc_config(0, 4'he, 4'hf);
   call_setup_adc_config(1, 4'he, 4'hf);
   call_setup_adc_config(2, 4'he, 4'hf);
   call_setup_adc_config(3, 4'he, 4'hf);
   sm_end_stage_map = 'h00;
   while ((&sm_end_stage_map[7:4]) == 0) begin
      wait_on_adc_startup_exit();
   end

   //-------------------------------------------------------------
   // Capture the output data from the ADC in the data capture memory
   //-------------------------------------------------------------
   capture_memory(0, 0, 'd2048,12, 0, 0, 1);
   capture_memory(0, 2, 'd2048,12, 2, 0, 1);
   capture_memory(1, 0, 'd2048,12, 4, 0, 1);
   capture_memory(1, 2, 'd2048,12, 6, 0, 1);
   capture_memory(2, 0, 'd2048,12, 8, 0, 1);
   capture_memory(2, 2, 'd2048,12, 10, 0, 1);
   capture_memory(3, 0, 'd2048,12, 12, 0, 1);
   capture_memory(3, 2, 'd2048,12, 14, 0, 1);

   //-------------------------------------------------------------
   // Wait until data has been captured
   //-------------------------------------------------------------
   wait_on_adc_data_capture();
   
   // Turn off ADCs
   config_adc_tb_source_slice (1, 0, 'h00, 'd0); // Disable the data generator
   tile_clock_enable[4] = 1'd0;
   rfams_w(`ACC0_RESTART_STATE_END_ADDR + ('h4000 * 0), 32'h3); //
   rfams_w(`ACC0_RESTART_REGISTER_ADDR  + ('h4000 * 0), 32'd1); //
   config_adc_tb_source_slice (1, 2, 'h00, 'd0); // Disable the data generator
   config_adc_tb_source_slice (2, 0, 'h00, 'd0); // Disable the data generator
   tile_clock_enable[5] = 1'd0;
   rfams_w(`ACC0_RESTART_STATE_END_ADDR + ('h4000 * 1), 32'h3); //
   rfams_w(`ACC0_RESTART_REGISTER_ADDR  + ('h4000 * 1), 32'd1); //
   config_adc_tb_source_slice (2, 2, 'h00, 'd0); // Disable the data generator
   config_adc_tb_source_slice (3, 0, 'h00, 'd0); // Disable the data generator
   tile_clock_enable[6] = 1'd0;
   rfams_w(`ACC0_RESTART_STATE_END_ADDR + ('h4000 * 2), 32'h3); //
   rfams_w(`ACC0_RESTART_REGISTER_ADDR  + ('h4000 * 2), 32'd1); //
   config_adc_tb_source_slice (3, 2, 'h00, 'd0); // Disable the data generator
   config_adc_tb_source_slice (4, 0, 'h00, 'd0); // Disable the data generator
   tile_clock_enable[7] = 1'd0;
   rfams_w(`ACC0_RESTART_STATE_END_ADDR + ('h4000 * 3), 32'h3); //
   rfams_w(`ACC0_RESTART_REGISTER_ADDR  + ('h4000 * 3), 32'd1); //
   config_adc_tb_source_slice (4, 2, 'h00, 'd0); // Disable the data generator


   //-------------------------------------------------------------
   // Read the memory back over the AXI bus
   // Turn off checker once done
   //-------------------------------------------------------------
   read_memory(0, 0, 'd1024,12, 0, 0, 1);
   read_memory(0, 2, 'd1024,12, 2, 0, 1);
   read_memory(1, 0, 'd1024,12, 4, 0, 1);
   read_memory(1, 2, 'd1024,12, 6, 0, 1);
   read_memory(2, 0, 'd1024,12, 8, 0, 1);
   read_memory(2, 2, 'd1024,12, 10, 0, 1);
   read_memory(3, 0, 'd1024,12, 12, 0, 1);
   read_memory(3, 2, 'd1024,12, 14, 0, 1);

   axi_cwait    (20); // breathing room for waveform
   `ifdef QUESTA_REPORT_UTC_TIME
   $write("Test finished @");
   $system("date -u +%Y%m%d_%H%M%S");
   `endif

   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   if(data_error) begin
      $display("** Test Failed");
      $display("** Test incomplete");
   end else begin
      $display("** Test Passed");
      $display("** Test completed successfully");    
   end
   $display("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
   set_seq_done; // Sim AXI sequence complete
   $stop;
    
end

//-----------------------------------------------------------------------------
// TIMEOUT.
//-----------------------------------------------------------------------------
initial begin
   // Wait for configuration complete before starting timeout
   while ((&sm_done_map) == 0) begin
     @(posedge clk);
   end
   
   // Give the simulation 10000 DRP clocks per enabled DAC channel.
   for (channel_count = 0; channel_count < 16; channel_count = channel_count + 1) begin
     for (clock_count = 0; clock_count < 10000; clock_count = clock_count + 1) begin
       @(posedge clk);
     end
   end
   // Give the simulation 80000 DRP clocks per enabled ADC channel.
   for (channel_count = 0; channel_count < 16; channel_count = channel_count + 1) begin
     for (clock_count = 0; clock_count < 80000; clock_count = clock_count + 1) begin
       @(posedge clk);
     end
   end
   `ifdef QUESTA_REPORT_UTC_TIME
   $write("ERROR RFAMS demo_tb timeout @");
   $system("date -u +%Y%m%d_%H%M%S");
   `else
   $display("ERROR RFAMS demo_tb timeout");
   `endif
   $stop;
end

//-----------------------------------------------------------------------------
// (RECOMENDED_USER_MODIFY_SEQUENCE_SECTION_END)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// USER tasks
// The USER should add additional tasks here
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Report the end state occurances. Use as an example of monitoring progress
//-----------------------------------------------------------------------------
task report_endstates; 
   integer i, count;
   reg [31:0] end_start;
   begin
       
   axi_message_enable = 1'd0;
   for (i = 0; i<8; i=i+1) begin

      rfams_r(`T0_DCC_BASE_ADDR  + ('h4000 * i) + 'h8 ); // START_END_STATE_ADDR  
      end_start = rd_data;
      rfams_r(`T0_DCC_BASE_ADDR  + ('h4000 * i) + 'hc ); // CURRENT_STATE_ADDR
      
      if ((rd_data & 'hf) == (end_start & 'hf)) begin
         if (!sm_done_map[i]) begin
            $display("T=%12d: Tile %02d has reached its end state of %h", $time, i, (end_start & 'hf));
            sm_done_map[i] = 1'b1;
            end
         end 
      end
      axi_message_enable = 1'd1;
   end
endtask

//-----------------------------------------------------------------------------
// Wait until all the DAC PORs are at their end state.
// This is serial not parallel, so the length depends on the number of tiles
// & slices enabled in the design
//-----------------------------------------------------------------------------
task wait_on_dac_startup_exit;
   integer i, count;
   reg [31:0] end_start;
   begin
       
   axi_message_enable = 1'd0;
   for (i = 0; i<4; i=i+1) begin

      rfams_r(`T0_DCC_BASE_ADDR  + ('h4000 * i) + 'h8 ); // START_END_STATE_ADDR  
      end_start = rd_data;
      rfams_r(`T0_DCC_BASE_ADDR  + ('h4000 * i) + 'hc ); // CURRENT_STATE_ADDR
      
      if ((rd_data & 'hf) == (end_start & 'hf)) begin
         if (!sm_end_stage_map[i]) begin
            $display("T=%12d: Tile %02d has reached its end state of %h", $time, i, (end_start & 'hf));
            sm_end_stage_map[i] = 1'b1;
            if ((end_start & 'hf) == 4'hf) begin
               sm_done_map[i] = 1'b1;
            end
         end
      end 
   end
   axi_message_enable = 1'd1;
end
endtask

//-----------------------------------------------------------------------------
// Wait until all the ADC PORs are at their end state.
// This is serial not parallel, so the length depends on the number of tiles
// & slices enabled in the design
//-----------------------------------------------------------------------------
task wait_on_adc_startup_exit;
   integer i, count;
   reg [31:0] end_start;
   reg [31:0] curr_state;
   begin
       
   axi_message_enable = 1'd0;
   for (i = 0; i<4; i=i+1) begin

      rfams_r(`T0_ACC_BASE_ADDR  + ('h4000 * i) + 'h8 ); // START_END_STATE_ADDR  
      end_start = rd_data;
      rfams_r(`T0_ACC_BASE_ADDR  + ('h4000 * i) + 'hc ); // CURRENT_STATE_ADDR
      curr_state = rd_data;
      
      rfams_r(`T0_ACC_BASE_ADDR  + ('h4000 * i) + 'h4 ); // RESTART_ADDR
      
      if (((curr_state & 'hf) == (end_start & 'hf)) && ((rd_data & 'hf) == 4'h0)) begin
         if (!sm_end_stage_map[i+4]) begin
            $display("T=%12d: Tile %02d has reached its end state of %h", $time, i+4, (end_start & 'hf));
            sm_end_stage_map[i+4] = 1'b1;
            if ((end_start & 'hf) >= 4'hb) begin
               sm_done_map[i+4] = 1'b1;
            end
         end
      end 
   end
   axi_message_enable = 1'd1;
end
endtask

//-----------------------------------------------------------------------------
// Wait until all the ADCs have captured their data.
//-----------------------------------------------------------------------------
task wait_on_adc_data_capture;
   begin
       
   axi_message_enable = 1'd0;
   
   axi_cwait(200);
   
   exsnkram_r(32'h00000004);

   while (rd_data != 'd0) begin
     @(posedge clk);
     exsnkram_r(32'h00000004);
   end
   axi_message_enable = 1'd1;
end
endtask

//---------------------------------------------------------------------------
// set timers for simulation speedup
//---------------------------------------------------------------------------

task set_timers_to_fast_sim;
   input [2:0] sim_level;
   begin
   // DAC
   rfams_w(`DCC0_SIM_LEVEL_ADDR, sim_level );
   rfams_w(`DCC1_SIM_LEVEL_ADDR, sim_level );
   rfams_w(`DCC2_SIM_LEVEL_ADDR, sim_level );
   rfams_w(`DCC3_SIM_LEVEL_ADDR, sim_level );
   // ADC
   rfams_w(`ACC0_SIM_LEVEL_ADDR, sim_level );
   rfams_w(`ACC1_SIM_LEVEL_ADDR, sim_level );
   rfams_w(`ACC2_SIM_LEVEL_ADDR, sim_level );
   rfams_w(`ACC3_SIM_LEVEL_ADDR, sim_level );
   end
endtask

//---------------------------------------------------------------------------
// Done readbacks
// These do a lot of AXI messaging, so disable for these calls only. Force
// in simulator if required for debug.
//---------------------------------------------------------------------------
task wait_axi_adc_done;
   integer t, s, count;
   begin
   if(!adc_axi_based_done)  begin
      axi_message_enable = 1'd0;
      adc_done_last = adc_done;
      read_adc_done(adc_done);
      adc_done = adc_done | 'hffff_0000;
      @(posedge clk);
      @(posedge clk);

      for(t=0;t<p_max_slice_count;t=t+1) begin
         count = 0;
         for(s=0;s<p_max_slice_count;s=s+1) begin
            if ((adc_done_last[(t*4)+s]!= adc_done[(t*4)+s]) & adc_done[(t*4)+s]) begin
               count = count + 'd1;
            end
         end

      end

      axi_message_enable = 1'd1;
   end
   end
endtask

task wait_axi_dac_done;
   input integer t;
   integer s, count;
   reg [31:0] val;
   begin
   if(!dac_axi_based_done[t])  begin
      axi_message_enable = 1'd0;
      dac_done_last[t] = dac_done[t];
      read_dac_done(val);
      dac_done[t] = val[(t*4)+:4];
      @(posedge clk);

      count = 0;
      for(s=0;s<p_max_slice_count;s=s+1) begin
         if ((dac_done_last[t][s]!= dac_done[t][s]) & dac_done[t][s]) begin
            count = count + 'd1;
         end
      end
      
      if (count == 4) begin
         // Turn off checking
         for(s=0;s<p_max_slice_count;s=s+1) begin
           config_dac_tb_sink_slice(t+1, s, 0, 'd0);
         end
      end

      axi_message_enable = 1'd1;
   end
   end
endtask

//---------------------------------------------------------------------------
// DAC slice setup IP 
//---------------------------------------------------------------------------
task call_dac_setup_ip;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] width;
   input  [7:0] dg_type;
   input  [7:0] interp;
   input  [7:0] mixer_mode;
   input  [7:0] mixer_type;
   input [47:0] mixer_freq;
   
   integer i;

   reg   [31:0] inc_val;
   reg   [15:0] mixer_cfg0;
   reg   [15:0] mixer_cfg1;
   reg   [15:0] dac_mix_mode;
   reg   [15:0] init_addr;
   reg   [47:0] nco_freq;
   reg   [47:0] temp;
   reg    [7:0] tone_multiple;
   begin

      if (mixer_type == 2) begin
        // Set the NCO frequency so that it is an integer number of FFT bins
        rfams_w(`T0_DAC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h94, mixer_freq[47:32]);  // Freq 47:32
        rfams_w(`T0_DAC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h98, mixer_freq[31:16]);  // Freq 31:16 
        rfams_w(`T0_DAC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h9C, mixer_freq[15:0]);  // Freq 15:0 
        rfams_w(`T0_DAC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h20, 'd2);  // Update NCO freq
      end

      // Allow for the common setup address space.
      tile = tile + 1;
      if (mixer_mode < 2) begin
        // IQ Data
        tone_multiple = 2**slice;
        inc_val = (width/2)*tone_multiple;
        // Source
        config_dac_exdes_src_slice (tile, slice, 'h0008, 'h4);        // sine wave
        config_dac_exdes_src_slice (tile, slice, 'h0004, inc_val);    // increment
        for (i = 0; i < width/2; i = i + 1) begin
          init_addr = 'h0040 + ((i*2)*4);
          config_dac_exdes_src_slice (tile, slice, init_addr, (i*tone_multiple)+32);
          init_addr = 'h0040 + (((i*2)+1)*4);
          config_dac_exdes_src_slice (tile, slice, init_addr, i*tone_multiple);
        end
      end
      else begin
        // Real data
        tone_multiple = 2**slice;
        inc_val = width*tone_multiple;
        // Source
        config_dac_exdes_src_slice (tile, slice, 'h0008, 'h4);        // sine wave
        config_dac_exdes_src_slice (tile, slice, 'h0004, inc_val);    // increment
        for (i = 0; i < width; i = i + 1) begin
          init_addr = 'h0040 + (i*4);
          config_dac_exdes_src_slice (tile, slice, init_addr, i*tone_multiple);
        end
      end
      config_dac_exdes_src_slice (tile, slice, 'h0000, 'hffff);
      
   end
endtask

//---------------------------------------------------------------------------
// DAC slice setup bench signal generation
//---------------------------------------------------------------------------
task call_dac_setup_bench_tone;
   input  [7:0] tile;
   input  [7:0] slice;
   input [31:0] tone;
   begin
      // Allow for the common setup address space.
      tile = tile + 1;

      // Sink
      config_dac_tb_sink_slice(tile,slice,'h4c, tone  ); // Program the tone frequency
   end
endtask

task call_dac_setup_bench_enable;
   input  [7:0] tile;
   input  [7:0] slice;
   begin
      // Allow for the common setup address space.
      tile = tile + 1;

      // Sink
      config_dac_tb_sink_slice(tile,slice,'h00, 1  ); // Enable the sink lane
   end
endtask

//---------------------------------------------------------------------------
// ADC slice setup IP only
//---------------------------------------------------------------------------
task call_adc_setup_ip;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] width;
   input  [7:0] ds_type;
   input  [7:0] mixer;
   input  [7:0] decim;
   input  [7:0] mixer_type;
   input [47:0] mixer_freq;
   input        high_speed_adc;

   reg   [47:0] nco_freq;
   reg   [47:0] temp;
   reg   [15:0] mixer_cfg0;
   reg   [15:0] mixer_cfg1;
   reg   [15:0] rx_mc_config0;
   reg   [15:0] ti_dcb_ctrl0;
   begin


      if (mixer_type == 2) begin
        // Set the NCO frequency so that it is an integer number of FFT bins
        rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h94, mixer_freq[47:32]);  // Freq 47:32
        rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h98, mixer_freq[31:16]);  // Freq 31:16 
        rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h9C, mixer_freq[15:0]);  // Freq 15:0 
        rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h1c, 'd2);  // Update NCO freq
      
        // In IQ->IQ mode we should also set the frequency 
        // on the partner converter
        if (high_speed_adc == 1) begin
          if (slice == 0) begin
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+2)) + 'h94, mixer_freq[47:32]);  // Freq 47:32
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+2)) + 'h98, mixer_freq[31:16]);  // Freq 31:16 
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+2)) + 'h9C, mixer_freq[15:0]);  // Freq 15:0 
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+2)) + 'h1c, 'd2);  // Update NCO freq
          end
        end
        else begin
          if (slice % 2 == 0) begin
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+1)) + 'h94, mixer_freq[47:32]);  // Freq 47:32
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+1)) + 'h98, mixer_freq[31:16]);  // Freq 31:16 
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+1)) + 'h9C, mixer_freq[15:0]);  // Freq 15:0 
            rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+1)) + 'h1c, 'd2);  // Update NCO freq
          end
        end
      end

   end
endtask

//---------------------------------------------------------------------------
// ADC slice setup bench only
//---------------------------------------------------------------------------
task call_adc_setup_bench;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] width;
   input  [7:0] ds_type;
   input  [7:0] mixer;
   input  [7:0] decim;
   input        high_speed_adc;
   reg   [31:0] incr_value;
   begin

      incr_value = 2**slice;

      // ADC source type inside testbench. This is unsynthesiseable code.
      config_adc_tb_source_slice (tile + 1,slice, 'h10, 'd3     ); // Data type 0=triangle, 3=sine
 
      //-----------------------------------------------------------------------
      // Setup the data checker
      //-----------------------------------------------------------------------       
      config_adc_tb_source_slice (tile + 1,slice, 'h08, incr_value    ); // Set the increment
      config_adc_tb_source_slice (tile + 1,slice, 'h30, 'd1           ); // Set the divider
      config_adc_tb_source_slice (tile + 1,slice, 'h24, 'd0           ); // Set the offset 
      config_adc_tb_source_slice (tile + 1,slice, 'h00, 'd1           ); // Enable the generator

   end
endtask

//---------------------------------------------------------------------------
// ADC sink slice enable
//---------------------------------------------------------------------------
task call_adc_enable_sinks;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] width;
   input  [7:0] ds_type;
   input  [7:0] mixer;
   input  [7:0] decim;

   begin
      
      config_adc_exdes_sink_slice(tile + 1, slice, 'h04, 'hff    ); // Error boundary
      config_adc_exdes_sink_slice(tile + 1, slice, 'h08, 'h01    ); // 
      config_adc_exdes_sink_slice(tile + 1, slice, 'h10, 'd4000  ); // Wait data cycles

   end
endtask

task call_setup_adc_config;
   input  [7:0] tile;
   input  [3:0] start_stage;
   input  [3:0] end_stage;
   reg   [31:0] end_addr;
   begin
   end_addr = {16'd0, 4'h0, start_stage, 4'h0, end_stage};
   // Run to the specified end stage
   rfams_w(`ACC0_RESTART_STATE_END_ADDR + ('h4000 * tile), end_addr); //
   rfams_w(`ACC0_RESTART_REGISTER_ADDR  + ('h4000 * tile), 32'd1); // Restart the POR
       
   end
endtask

task call_setup_dac_config;
   input  [7:0] tile;
   input  [3:0] start_stage;
   input  [3:0] end_stage;
   reg   [31:0] end_addr;
   begin
   end_addr = {16'd0, 4'h0, start_stage, 4'h0, end_stage};
   // Run to the specified end stage
   rfams_w(`DCC0_RESTART_STATE_END_ADDR + ('h4000 * tile), end_addr); //
   rfams_w(`DCC0_RESTART_REGISTER_ADDR  + ('h4000 * tile), 32'd1); // Restart the POR
       
   end
endtask

//---------------------------------------------------------------------------
// Demo TB Dac Sink Slice configure task.
//
// 0_00  .. Slice 0
// 3_00     Slice 3
// 0_000 .. Tile  0
// 3_000    Tile  3
//  enable         : rw,    off: 0, width:  1,  addr: 0x00
//  dg_inc         : rw,    off: 0, width: 14,  addr: 0x08
//  dg_type        : rw,    off: 0, width:  3,  addr: 0x10
//  scaling_factor : rw,    off: 0, width: 32,  addr: 0x20
//  offset         : rw,    off: 0, width: 32,  addr: 0x24
//  phase_high     : rw,    off: 0, width: 16,  addr: 0x28
//  phase_low      : rw,    off: 0, width: 16,  addr: 0x2C
//  out_clk_div    : rw,    off: 0, width: 16,  addr: 0x30
//  change_count   : rw,    off: 0, width: 16,  addr: 0x34
//  error          : roSig, off: 0, width:  1,  addr: 0x38
//
//---------------------------------------------------------------------------

task config_dac_tb_sink_slice;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] address;
   input [31:0] value;
   reg   [31:0] working;
   begin
   working = (tile << 12) + (slice << 8) + address;
   tbsnk_w(working, value);
   end
endtask

task config_dac_exdes_src_slice;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] address;
   input [31:0] value;
   reg   [31:0] working;
   begin
   working = (tile << 12) + (slice << 8) + address;
   exsrc_w(working, value);
   end
endtask

task config_adc_tb_source_slice;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] address;
   input [31:0] value;
   reg   [31:0] working;
   begin
   working = (tile << 12) + (slice << 8) + address;
   tbsrc_w(working, value);
   end
endtask

task config_adc_exdes_sink_slice;
   input  [7:0] tile;
   input  [7:0] slice;
   input  [7:0] address;
   input [31:0] value;
   reg   [31:0] working;
   begin
   working = (tile << 12) + (slice << 8) + address;
   exsnk_w(working, value);
   end
endtask

task read_dac_done;
   output [31:0] value;
   begin
   tbsnk_r('h40);
   value = rd_data;
   end
endtask

task read_adc_done;
   output [31:0] value;
   begin
   exsnk_r('h40);
   value = rd_data;
   end
endtask

//---------------------------------------------------------------------------
// AXI RW tasks for each base address. Written as single lines, they are
// a wrapper around axi tasks with the appropiate address offset added to the
// address passed into the task.
//---------------------------------------------------------------------------
task rfams_w; input [31:0] addr;input [31:0] data; begin assign wr_channel=2'b00;axi_write (BASE_ADDR_RFAMS + addr, data);end endtask
task exsrc_w; input [31:0] addr;input [31:0] data; begin axi_write (BASE_ADDR_EXSRC + addr, data);end endtask
task exsnk_w; input [31:0] addr;input [31:0] data; begin axi_write (BASE_ADDR_EXSNK + addr, data);end endtask
task tbsrc_w; input [31:0] addr;input [31:0] data; begin axi_write (BASE_ADDR_TBSRC + addr, data);end endtask
task tbsnk_w; input [31:0] addr;input [31:0] data; begin axi_write (BASE_ADDR_TBSNK + addr, data);end endtask
task exsrcram_w; input [31:0] addr;input [31:0] data; begin assign wr_channel=2'b01;axi_write (BASE_ADDR_EXSRCRAM + addr, data);end endtask
task exsnkram_w; input [31:0] addr;input [31:0] data; begin assign wr_channel=2'b10;axi_write (BASE_ADDR_EXSNKRAM + addr, data);end endtask

task rfams_r; input [31:0] addr; begin assign rd_channel=2'b00;axi_read  (BASE_ADDR_RFAMS + addr);end endtask
task exsrc_r; input [31:0] addr; begin axi_read  (BASE_ADDR_EXSRC + addr);end endtask
task exsnk_r; input [31:0] addr; begin axi_read  (BASE_ADDR_EXSNK + addr);end endtask
task tbsrc_r; input [31:0] addr; begin axi_read  (BASE_ADDR_TBSRC + addr);end endtask
task tbsnk_r; input [31:0] addr; begin axi_read  (BASE_ADDR_TBSNK + addr);end endtask
task exsrcram_r; input [31:0] addr; begin assign rd_channel=2'b01;axi_read  (BASE_ADDR_EXSRCRAM + addr);end endtask
task exsnkram_r; input [31:0] addr; begin assign rd_channel=2'b10;axi_read  (BASE_ADDR_EXSNKRAM + addr);end endtask

// Wrap the reads with a test
task rfams_ck; input [31:0] addr;input [31:0] data; begin axi_check  (BASE_ADDR_RFAMS + addr, data);end endtask
task exsrc_ck; input [31:0] addr;input [31:0] data; begin axi_check  (BASE_ADDR_EXSRC + addr, data);end endtask
task exsnk_ck; input [31:0] addr;input [31:0] data; begin axi_check  (BASE_ADDR_EXSNK + addr, data);end endtask
task tbsrc_ck; input [31:0] addr;input [31:0] data; begin axi_check  (BASE_ADDR_TBSRC + addr, data);end endtask
task tbsnk_ck; input [31:0] addr;input [31:0] data; begin axi_check  (BASE_ADDR_TBSNK + addr, data);end endtask

// read modify write
task rfams_rmw; input [31:0] addr;input [31:0] mask; input [31:0] value; begin axi_rmw  (BASE_ADDR_RFAMS + addr, mask, value); end endtask
task exsrc_rmw; input [31:0] addr;input [31:0] mask; input [31:0] value; begin axi_rmw  (BASE_ADDR_EXSRC + addr, mask, value); end endtask
task exsnk_rmw; input [31:0] addr;input [31:0] mask; input [31:0] value; begin axi_rmw  (BASE_ADDR_EXSNK + addr, mask, value); end endtask
task tbsrc_rmw; input [31:0] addr;input [31:0] mask; input [31:0] value; begin axi_rmw  (BASE_ADDR_TBSRC + addr, mask, value); end endtask
task tbsnk_rmw; input [31:0] addr;input [31:0] mask; input [31:0] value; begin axi_rmw  (BASE_ADDR_TBSNK + addr, mask, value); end endtask

//---------------------------------------------------------------------------
// AXI write task.
//---------------------------------------------------------------------------
task axi_write;
  input [34:0] addr;
  input [31:0] data;
  begin
    while (req_busy)       // Wait on other tasks completing
      @(posedge clk);
    
    @(posedge clk);        // Drive Address, data and the request flag
    wr_req  <= 1'b1;
    wr_data <= data;
    address <= addr;

    while (req_busy == 0)  // Wait until the AXI convertor is busy
      @(posedge clk);

    wr_req  <= 1'b0;       // Clear the request

    while (req_busy)       // Wait for the AXI4-Lite transaction to complete
      @(posedge clk);

`ifdef ENABLE_RW_MESSAGE_PRINT
    $display ("MWR: @ 0x%8x = 0x%x", address, data);
`endif

  end
endtask // axi_write

//---------------------------------------------------------------------------
// AXI read task.
//---------------------------------------------------------------------------
task axi_read;
  input [34:0] addr;
  begin
    while (req_busy)       // Wait on other tasks completing
      @(posedge clk);
    
    @(posedge clk);        // Drive Address and the request flag
    rd_req  <= 1'b1;
    address <= addr;

    while (req_busy == 0)  // Wait until the AXI convertor is busy
      @(posedge clk);

    rd_req  <= 1'b0;       // Clear the request

    while (req_busy)       // Wait for the AXI4-Lite transaction to complete
      @(posedge clk);

`ifdef ENABLE_RW_MESSAGE_PRINT
    $display ("MRD: @ 0x%8x = 0x%x", address, rd_data);
`endif
  end
endtask // axi_read

// AXI read task with a data check
task axi_check;
  input [34:0] addr;
  input [31:0] value;
  begin
    axi_read(addr);
    if (rd_data != value)
       $display ("T=%12d: MISMATCH IN AXI READ: @ 0x%8x = 0x%8x, expected 0x%8x", $time, address, rd_data, value);
  end
endtask // axi_check

// AXI poll task
task axi_poll;
  input [34:0] addr;
  input [31:0] mask;
  input [31:0] value;
  input [31:0] attempts;
  begin
    while (attempts>0) begin
      axi_read(addr);
      if ((rd_data & mask) == value)
        attempts = 0;
      else
        attempts = attempts - 1;
    end
  end
endtask // axi_poll

// AXI read modify write task
task axi_rmw;
  input [34:0] addr;
  input [31:0] mask;
  input [31:0] value;
  begin
    axi_read(addr);
    working_value = rd_data;
    working_value = working_value & (~mask);
    working_value = working_value | value;
    axi_write(addr, working_value);
  end
endtask // axi_rmw

//---------------------------------------------------------------------------
// load_memory task.
//---------------------------------------------------------------------------
task load_memory;
  input  [7:0] tile;
  input  [7:0] slice;
  input [31:0] no_of_samples;
  input  [7:0] words_per_cycle;
  input  [3:0] mult;
  input  [3:0] divide;
  input  [7:0] channel;
  integer      i;
  integer      j;
  integer      j_addr;
  reg   [31:0] addr;
  reg          odd;
  reg   [15:0] sample_stored;
  reg    [4:0] sample_write_count;
  begin
    i = 0;
    j = 0;
    j_addr = 0;
    odd = 0;
    sample_write_count = 0;
    // Disable and re-enable the data generator in the demo_tb 
    // to start over at the initialization point.
    config_dac_exdes_src_slice (tile+1, slice, 'h0000, 'h0000);
    @(posedge clk);
    data_samples_req[tile] <= 1'b1;
    @(posedge clk);
    data_samples_req[tile] <= 1'b0;
    config_dac_exdes_src_slice (tile+1, slice, 'h0000, 'hffff);
    $display("Writing data to channel %0d memory", channel);
    // Clock over the first 2 samples as these are zeros
    data_samples_req[tile] <= 1'b0;
    for (i = 0; i <= 1; i = i + 1) begin
      @(posedge clk);
      data_samples_req[tile] <= 1'b1;
      @(posedge clk);
      data_samples_req[tile] <= 1'b0;
    end
    i = 0;
    while (i <= (no_of_samples+words_per_cycle)/2) begin
      // Load samples
      @(posedge clk);
      data_samples_req[tile] <= 1'b1;
      @(posedge clk);
      data_samples_req[tile] <= 1'b0;
      while (j < (words_per_cycle/2)) begin
        // Write samples
        addr = ((channel+1) << 15) + (i << 2) + (j_addr << 2);
        if (odd == 1) begin
          exsrcram_w(addr, {data_samples_in[channel][(j*32) +: 16], sample_stored});
          sample_stored = data_samples_in[channel][(((j*2)+1)*16) +: 16];
          sample_write_count = (sample_write_count + 2) % divide;
        end
        else begin
          exsrcram_w(addr, data_samples_in[channel][(j*32) +: 32]);
          sample_write_count = (sample_write_count + 2) % divide;
        end
        if (sample_write_count < mult) begin
          j_addr = j_addr + 1;
        end
        j = j + 1;
      end
      if (words_per_cycle % 2 == 1) begin
        // Odd number of samples
        if (odd == 0) begin
          sample_stored = data_samples_in[channel][(j*32) +: 16];
          odd = 1;
          i = i + j_addr;
        end
        else begin
          addr = ((channel+1) << 15) + (i << 2) + (j_addr << 2);
          exsrcram_w(addr, {data_samples_in[channel][(j*32) +: 16], sample_stored});
          sample_write_count = (sample_write_count + 2) % divide;
          odd = 0;
          i = i + j_addr + 1;
        end
      end
      else begin
        odd = 0;
        i = i + j_addr;
      end
      j = 0;
      j_addr = 0;
    end
  end
endtask // load_memory

//---------------------------------------------------------------------------
// start_data task.
//---------------------------------------------------------------------------
task start_data;
  input [31:0] no_of_samples;
  input  [7:0] channel;
  reg   [31:0] enable;
  begin
    $display("Enabling channel %0d memory", channel);
    exsrcram_w(32'h00000010 + (channel*4), no_of_samples);
    exsrcram_r(32'h00000008);
    enable = rd_data | (1'b1 << channel);
    exsrcram_w(32'h00000008, enable);
    exsrcram_w(32'h00000004, 32'h00000001);
  end
endtask // start_data

//---------------------------------------------------------------------------
// read_memory task.
//---------------------------------------------------------------------------
task read_memory;
  input [7:0]  tile;
  input [7:0]  slice;
  input [31:0] no_of_samples;
  input  [7:0] words_per_cycle;
  input  [7:0] channel;
  input  [1:0] mixer_type;
  input        high_speed_adc;
  integer     i;
  reg  [31:0] addr;
  begin
    i = 0;
    $display("Reading channel %0d capture memory", channel);
    axi_message_enable = 1'd0;    
    while (i < no_of_samples) begin
      // Read samples
      addr = ((channel+1) << 15) + (i << 2);
      exsnkram_r(addr);
      data_samples_out[i]   <= rd_data;
      i = i + 1;
    end
    if (high_speed_adc == 1) begin
      i = 0;
      $display("Reading channel %0d capture memory", channel+1);
      if (slice % 2 == 0 && mixer_type < 2) begin
        while (i < no_of_samples) begin
          // Read samples
          addr = ((channel+2) << 15) + (i << 2);
          exsnkram_r(addr);
          data_samples_out_q[i]   <= rd_data;
          i = i + 1;
        end
      end
      
      config_adc_exdes_sink_slice(tile+1, slice, 0, 'd1); // Enable the checker
      if (slice % 2 == 0 && mixer_type < 2) begin
        config_adc_exdes_sink_slice(tile+1, slice+1, 0, 'd1); // Enable the checker
      end

    end
    else begin

      config_adc_exdes_sink_slice(tile+1, slice, 0, 'd3); // Enable the checker
    end
    $display("Performing FFT on channel %0d capture memory data", channel);
    
    // Is ADC done?
    read_adc_done(adc_done);
    @(posedge clk);
    adc_done = adc_done >> (tile*4);
    adc_done = adc_done & (1'b1 << slice);
      
    while (adc_done != (1'b1 << slice)) begin
      read_adc_done(adc_done);
      @(posedge clk);
      adc_done = adc_done >> (tile*4);
      adc_done = adc_done & (1'b1 << slice);
    end
    
    config_adc_exdes_sink_slice(tile+1, slice, 0, 'd0); // Disable the checker
    if (high_speed_adc == 1) begin

      if (slice % 2 == 0 && mixer_type < 2) begin
        config_adc_exdes_sink_slice(tile+1, slice+1, 0, 'd0); // Disable the checker
      end
    end
    
    axi_message_enable = 1'd1;
  end
endtask // read_memory

//---------------------------------------------------------------------------
// capture_memory task.
//---------------------------------------------------------------------------
task capture_memory;
  input [7:0]  tile;
  input [7:0]  slice;
  input [31:0] no_of_samples;
  input  [7:0] words_per_cycle;
  input  [7:0] channel;
  input  [1:0] mixer_type;
  input        high_speed_adc;
  reg  [31:0] addr;
  reg  [31:0] enable;
  begin
    if (high_speed_adc == 1) begin
      exsnkram_w(32'h00000010 + (channel*4), no_of_samples);
      if (slice % 2 == 0 && mixer_type < 2) begin
        exsnkram_w(32'h00000010 + ((channel+1)*4), no_of_samples);
      end
      exsnkram_r(32'h00000008);
      enable = rd_data | (1'b1 << channel);
      if (slice % 2 == 0 && mixer_type < 2) begin
        enable = enable | (1'b1 << (channel+1));
      end
      exsnkram_w(32'h00000008, enable);    
      exsnkram_w(32'h00000004, 32'h00000001);
      if (slice % 2 == 0 && mixer_type < 2) begin
        $display("Capturing channels %0d and %0d to memory", channel, channel+1);
      end
      else begin
        $display("Capturing channel %0d to memory", channel);
      end
    end
    else begin
      exsnkram_w(32'h00000010 + (channel*4), no_of_samples);
      exsnkram_r(32'h00000008);
      enable = rd_data | (1'b1 << channel);
      exsnkram_w(32'h00000008, enable);    
      exsnkram_w(32'h00000004, 32'h00000001);
      $display("Capturing channel %0d to memory", channel);
    end
  end
endtask // capture_memory

//---------------------------------------------------------------------------
// Wait a number of AXI clock cycles.
//---------------------------------------------------------------------------
task int_axi_reset_after_for_cycles;
  input [31:0] cycles_after;
  input [31:0] cycles_for;
  begin
    while (cycles_after > 0) begin
      @(posedge clk);
      cycles_after <= cycles_after - 'd1;
    end
    int_axi_aresetn = 0;
    while (cycles_for > 0) begin
      @(posedge clk);
      cycles_for <= cycles_for - 'd1;
    end
    int_axi_aresetn = 1;
    int_tb_aresetn  = 1;
  end
endtask // int_axi_reset_after_for_cycles

task axi_cwait;
  input [31:0] cycles;
  begin
    @(posedge clk);
    @(posedge clk);
    $display("T=%d: Delay of %d cycles requested.", $time, cycles);
    while (cycles > 0) begin
      @(posedge clk);
      cycles <= cycles - 'd1;
    end
    @(posedge clk);
  end
endtask // axi_cwait

task axi_cwait_to;
  input [31:0] cycles;
  begin
    while (cycles > 0) begin
      @(posedge clk);
      cycles <= cycles - 'd1;
    end
    $display("ERROR RFAMS demo_tb timeout");
    // Set sequence done instead of stopping so the simulator stops hear the
    // stimulus in the file
    set_seq_done;
    //$stop;
  end
endtask // axi_cwait

task delay_ps_32;
  input [31:0] delay_time;
  begin
    #(delay_time);
  end
endtask // delay_ps_32
  
task set_seq_done;
  begin
  seq_done=1;
  end
endtask // set_seq_done

//---------------------------------------------------------------------------
// ADC setup threshold values
//---------------------------------------------------------------------------
task call_set_threshold_settings;
   input  [7:0]           tile;
   input  [7:0]           slice;
   input  [7:0]           mixer;
   input  threshold_cfg_t threshold_settings;
   input                  high_speed_adc;

   integer i;
   integer num_blocks;
   
   begin
   
      // Threshold update
      // Update both slices if this is an interleaved ADC
      if (high_speed_adc == 1) begin
        // If mixer == 1 then the input data is in I/Q format.
        // Configure both I and Q converters in this case.
        if (mixer == 1) begin
          // Slice input should be set to 0.
          num_blocks = 4;
        end
        else begin
          // Slice input can be 0 or 2.
          num_blocks = 2;
        end
      end
      else begin
        // If mixer == 1 then the input data is in I/Q format.
        // Configure both I and Q converters in this case.
        if (mixer == 1) begin
          // Slice input can be set to 0 or 2.
          num_blocks = 2;
        end
        else begin
          // Slice input can be 0, 1, 2 or 3.
          num_blocks = 1;
        end
      end
      
      for(i = 0; i < num_blocks; i = i + 1) begin
        // Do we want to update threshold0?
        // THRESHOLD0 -> update_threshold == 1
        // THRESHOLD1 -> update_threshold == 2
        // BOTH       -> update_threshold == 4
        if (threshold_settings.update_threshold == 1 || threshold_settings.update_threshold == 4) begin
          // Update the under and over thresholds
  
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hF8, threshold_settings.threshold_setups[0].threshold_under_val);
          // Over
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hFC, threshold_settings.threshold_setups[0].threshold_over_val); 
          
          // Update the threshold average
          // Bits 15:0
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hF4, threshold_settings.threshold_setups[0].threshold_avg_val[15:0]);
          // Bits 31:16
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hF0, threshold_settings.threshold_setups[0].threshold_avg_val[31:16]);          
          
          // Update the threshold mode
          // 0 = off
          // 1 = sticky-over
          // 2 = sticky-under
          // 3 = hysteresis
          rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hEC);
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hEC, {rd_data[15:2], threshold_settings.threshold_setups[0].threshold_mode});

        end
        
        // Do we want to update threshold1?
        // THRESHOLD0 -> update_threshold == 1
        // THRESHOLD1 -> update_threshold == 2
        // BOTH       -> update_threshold == 4
        if (threshold_settings.update_threshold == 2 || threshold_settings.update_threshold == 4) begin
          // Update the under and over thresholds
                   rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h10C, threshold_settings.threshold_setups[1].threshold_under_val);
          // Over
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h110, threshold_settings.threshold_setups[1].threshold_over_val);      
         
          // Update the threshold average
          // Bits 15:0
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h108, threshold_settings.threshold_setups[1].threshold_avg_val[15:0]);
          // Bits 31:16
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h104, threshold_settings.threshold_setups[1].threshold_avg_val[31:16]);
                    
          // Update the threshold mode
          // 0 = off
          // 1 = sticky-over
          // 2 = sticky-under
          // 3 = hysteresis
          rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h100);
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h100, {rd_data[15:2], threshold_settings.threshold_setups[1].threshold_mode});
          

        end
      end
   end
endtask


//---------------------------------------------------------------------------
// ADC setup threshold clear mode
//---------------------------------------------------------------------------
task call_set_threshold_clr_mode;
   input  [7:0]           tile;
   input  [7:0]           slice;
   input  [7:0]           mixer;
   input  threshold_cfg_t threshold_settings;
   input                  high_speed_adc;

   integer i;
   integer num_blocks;
   
   begin
   
      // Threshold update
      // Update both slices if this is an interleaved ADC
      if (high_speed_adc == 1) begin
        // If mixer == 1 then the input data is in I/Q format.
        // Configure both I and Q converters in this case.
        if (mixer == 1) begin
          // Slice input should be set to 0.
          num_blocks = 4;
        end
        else begin
          // Slice input can be 0 or 2.
          num_blocks = 2;
        end
      end
      else begin
        // If mixer == 1 then the input data is in I/Q format.
        // Configure both I and Q converters in this case.
        if (mixer == 1) begin
          // Slice input can be set to 0 or 2.
          num_blocks = 2;
        end
        else begin
          // Slice input can be 0, 1, 2 or 3.
          num_blocks = 1;
        end
      end
      
      for(i = 0; i < num_blocks; i = i + 1) begin
        // Do we want to update threshold0?
        // THRESHOLD0 -> update_threshold == 1
        // THRESHOLD1 -> update_threshold == 2
        // BOTH       -> update_threshold == 4
        if (threshold_settings.update_threshold == 1 || threshold_settings.update_threshold == 4) begin
          // Update the threshold clear mode
          // 0 = Manual
          // 1 = Auto
          rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hEC);
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hEC, {rd_data[15:3], threshold_settings.threshold_setups[0].clr_mode, rd_data[1:0]});
          
        end
        // Do we want to update threshold1?
        // THRESHOLD0 -> update_threshold == 1
        // THRESHOLD1 -> update_threshold == 2
        // BOTH       -> update_threshold == 4
        if (threshold_settings.update_threshold == 2 || threshold_settings.update_threshold == 4) begin
          // Update the threshold clear mode
          // 0 = Manual
          // 1 = Auto
          rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h100);
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h100, {rd_data[15:3], threshold_settings.threshold_setups[1].clr_mode, rd_data[1:0]});
          
        end
      end
   end
endtask

//---------------------------------------------------------------------------
// ADC threshold sticky clear
//---------------------------------------------------------------------------
task call_set_threshold_sticky_clear;
   input  [7:0]           tile;
   input  [7:0]           slice;
   input  [7:0]           mixer;
   input  threshold_cfg_t threshold_settings;
   input                  high_speed_adc;

   integer i;
   integer num_blocks;
   
   begin
   
      // Threshold update
      // Update both slices if this is an interleaved ADC
      if (high_speed_adc == 1) begin
        // If mixer == 1 then the input data is in I/Q format.
        // Configure both I and Q converters in this case.
        if (mixer == 1) begin
          // Slice input should be set to 0.
          num_blocks = 4;
        end
        else begin
          // Slice input can be 0 or 2.
          num_blocks = 2;
        end
      end
      else begin
        // If mixer == 1 then the input data is in I/Q format.
        // Configure both I and Q converters in this case.
        if (mixer == 1) begin
          // Slice input can be set to 0 or 2.
          num_blocks = 2;
        end
        else begin
          // Slice input can be 0, 1, 2 or 3.
          num_blocks = 1;
        end
      end
      
      for(i = 0; i < num_blocks; i = i + 1) begin
        // Do we want to update threshold0?
        // THRESHOLD0 -> update_threshold == 1
        // THRESHOLD1 -> update_threshold == 2
        // BOTH       -> update_threshold == 4
        if (threshold_settings.update_threshold == 1 || threshold_settings.update_threshold == 4) begin
          // Update the threshold clear mode
          // 0 = Manual
          // 1 = Auto
          rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hEC);
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'hEC, {rd_data[15:4], 1'b1, rd_data[2:0]});
          
        end
        // Do we want to update threshold1?
        // THRESHOLD0 -> update_threshold == 1
        // THRESHOLD1 -> update_threshold == 2
        // BOTH       -> update_threshold == 4
        if (threshold_settings.update_threshold == 2 || threshold_settings.update_threshold == 4) begin
          // Update the threshold clear mode
          // 0 = Manual
          // 1 = Auto
          rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h100);
          rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * (slice+i)) + 'h100, {rd_data[15:4], 1'b1, rd_data[2:0]});
          
        end
      end
   end
endtask

//---------------------------------------------------------------------------
// ADC enable signal detector
//---------------------------------------------------------------------------
task call_adc_enable_signal_detector;
   input  [7:0] tile;
   input  [7:0] slice;
   input        high_speed_adc;
   input        mode;
   input  [2:0] lambda_index;
   input [15:0] threshold;
   input [15:0] count;
   
   begin
     // Turn on signal detector
     // Bit 0 enables leaky integrator
     // Bit 7 enables hysteresis counter     
     // mode 0 = average
     // mode 1 = randomized
     rfams_r(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h114);
     rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h114, {rd_data[31:8], 1'b1, mode, rd_data[5], lambda_index, rd_data[1], 1'b1});
     rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h118, 'h1);
     rfams_w(`T0_ADC_BASE_ADDR  + ('h4000 * tile) + ('h400 * slice) + 'h11c, 'h20);
   end
endtask

//----------------------------------------------------------------------------
// convert simple RW strobing to AXI4 Lite.
//----------------------------------------------------------------------------
axi4l_ns_rw_2_axi rw_2_axi_i (
     .clk              ( clk                ),
     .rst              ( reset              ),
     
     .wr_req           ( wr_req             ),
     .rd_req           ( rd_req             ),
     .address          ( address            ),
     .wr_data          ( wr_data            ),
     .rd_data          ( rd_data            ),
     
     .axi_aresetn      ( axi_aresetn        ),
     .axi_awaddr       ( axi_awaddr         ),
     .axi_awvalid      ( axi_awvalid        ),
     .axi_awready      ( axi_awready        ),
     
     .axi_wdata        ( axi_wdata          ),
     .axi_wvalid       ( axi_wvalid         ),
     .axi_wready       ( axi_wready         ),
     
     .axi_bresp        ( axi_bresp          ),
     .axi_bvalid       ( axi_bvalid         ),
     .axi_bready       ( axi_bready         ),
     
     .axi_araddr       ( axi_araddr         ),
     .axi_arvalid      ( axi_arvalid        ),
     .axi_arready      ( axi_arready        ),
     
     .axi_rdata        ( axi_rdata          ),
     .axi_rresp        ( axi_rresp          ),
     .axi_rvalid       ( axi_rvalid         ),
     .axi_rready       ( axi_rready         ),
     
     .access_busy      ( req_busy           ) 
);

endmodule

//////////////////////////////////////////////////////////////////////////////////
// Description: module to convert a simple strobe RW Data interface to AXI4-Lite
// This has been included as it both simplified the RW tasks above and can also
// be used as a standalone module in HW, with the input control strobes driven 
// by VIO or some other mechanism.
// Once requrested by at least a single pulse the SM will carry out a read or 
// write access, simultanious is not supported, with the access_busy going high
// when the request is accepted and remaining high for the duration of the AXI4
// transaction
// Additional Comments: Conversion of the VHDL AXI IF state machine.
//////////////////////////////////////////////////////////////////////////////////

module axi4l_ns_rw_2_axi (

  input             clk                   , // 
  input             rst                   , // 

  // VIO Interface
  input             wr_req                , // 
  input             rd_req                , //
  input      [34:0] address               , //
  input      [31:0] wr_data               , // 
  output reg [31:0] rd_data       = 0     , // 

  // AXI-Lite Interface
  output reg        axi_aresetn   = 0     , //
  output reg [34:0] axi_awaddr    = 0     , //
  output reg        axi_awvalid   = 0     , // 
  input             axi_awready           , // 
  
  output reg [31:0] axi_wdata     = 0     , // 
  output reg        axi_wvalid    = 0     , // 
  input             axi_wready            , // 
  
  input       [1:0] axi_bresp             , // 
  input             axi_bvalid            , // 
  output reg        axi_bready    = 0     , // 

  output reg [34:0] axi_araddr    = 0     , //
  output reg        axi_arvalid   = 0     , // 
  input             axi_arready           , // 
  
  input      [31:0] axi_rdata             , // 
  input       [1:0] axi_rresp             , // 
  input             axi_rvalid            , // 
  output reg        axi_rready    = 0     , // 

  // Status
  output reg        access_busy   = 0       // 

  );

  parameter A_IDLE = 'd0;
  parameter WR0    = 'd1;
  parameter WR1    = 'd2;
  parameter RD0    = 'd3;
  parameter RD1    = 'd4;
  
  reg [3:0] accessor=0;

  //-- AXI interface
  //-- State machine for controlling individual writes and reads to and from the
  //-- AXI management registers
  always @(posedge clk)
    begin
    if (rst)
      begin
      accessor        <= A_IDLE;
      axi_awaddr      <= 'd0;
      axi_awvalid     <= 'd0;
      axi_wdata       <= 'd0;
      axi_wvalid      <= 'd0;
      axi_bready      <= 'd0;
      axi_araddr      <= 'd0;
      axi_arvalid     <= 'd0;
      axi_rready      <= 'd0;
      axi_aresetn     <= 'd0;
      access_busy     <= 'd0;
      end

    else
      begin

      axi_aresetn <= 'd1;
      accessor    <= accessor;

      case(accessor)
        A_IDLE : 
          begin
          axi_awvalid <= 'd0;
          axi_wvalid  <= 'd0;
          axi_bready  <= 'd0;
          axi_arvalid <= 'd0;
          axi_rready  <= 'd0;
          if (wr_req)
            begin
            accessor <= WR0;
            access_busy <= 1;
            end
          else 
            if (rd_req)
              begin
              accessor <= RD0;
              access_busy <= 1;
              end
            else
              begin
              accessor <= accessor;
              access_busy <= 0;
              end
          end

        WR0 :
          begin
          // Write address/data phase
          axi_awaddr  <= address;
          axi_awvalid <= 'd1;
          axi_wdata   <= wr_data;
          axi_wvalid  <= 'd1;
          axi_bready  <= 'd1;
          accessor    <= WR1;
          end
          
        WR1 :
          begin
          if (axi_awready)
            axi_awvalid <= 0;

          if (axi_wready)
            begin
            axi_wvalid <= 0;
            axi_bready <= 1;
            end

          //-- response phase
          if (axi_bvalid)
            begin
            accessor   <= A_IDLE;
            axi_bready <= 0;
            end
          end

        RD0 :
          begin
          // -- Read address phase
          axi_araddr  <= address;

          if ( axi_arready & axi_arvalid)
            begin
            accessor <= RD1;
            axi_arvalid <= 0;
            axi_rready  <= 1; 
            end
          else
            begin
            axi_arvalid <= 1;
            axi_rready  <= 0;
          end
          
          end

        RD1 :
          begin
          // -- Read response phase
          axi_arvalid <= 0;

          if (axi_rvalid)
            begin
            accessor     <= A_IDLE;
            axi_rready   <= 0;
            rd_data      <= axi_rdata;
            end
          end

      endcase
      end
    end 

endmodule

//////////////////////////////////////////////////////////////////////////////////
// Description: Simple module to facilitate simulation halt in IPI or general HDL
// Note this module is synthesiseable and can
// be used in hardware, either to drive LED, ILA or registers.
//////////////////////////////////////////////////////////////////////////////////
`ifdef ENABLE_IPI_HELPER_BLOCKS
module axi4l_ns_sim_stopper #(
   parameter edge_count_width     = 8,
   parameter cycles_count_width   = 16,
   parameter default_edge_count   = 1,
   parameter default_cycles_count = 1000,
   parameter tieoff_widths        = 1
) (
`ifdef ENABLE_SIM_STOPPER_COUNT_PORTS
   input  wire [edge_count_width   - 1:0] edges_to_count         , // Stop only after this number of edges
   input  wire [cycles_count_width - 1:0] cycles_after_last_edge , // After the last edge, wait this many cycles before raising complete flag
`endif
   input  wire                            rising_edge_signal     , // Signal to count edges on. Rising edge count
   input  wire                            clk                    , //
   input  wire                            restart                , //
       
   output wire [tieoff_widths-1:0]        high_tieoff            , // Quick user tieoff
   output wire [tieoff_widths-1:0]        low_tieoff             , // Quick user tieoff
   output reg                             complete_flag=0          // Complete flag

   );

reg                            rising_edge_signal_r = 0; // 
reg [edge_count_width - 1:0]   edge_count           = 0; // 
reg [cycles_count_width - 1:0] cycles_count         = 0; // 

assign low_tieoff  = {tieoff_widths,{1'b0}};
assign high_tieoff = {tieoff_widths,{1'b1}};

`ifndef ENABLE_SIM_STOPPER_COUNT_PORTS
   wire [edge_count_width - 1:0]   edges_to_count         ; // Stop only after this number of edges
   wire [cycles_count_width - 1:0] cycles_after_last_edge ; // After the last edge, wait this many cycles before raising complete flag
   assign edges_to_count = default_edge_count;
   assign cycles_after_last_edge = default_cycles_count;
`endif

// rising edge detect
always @(posedge clk) begin
   rising_edge_signal_r <= rising_edge_signal;
end

// count the edges, note this is a posedge count
always @(posedge clk) begin

   if (restart) begin
         edge_count <= 0;
   end else begin
      if((!rising_edge_signal_r) & rising_edge_signal) begin
         edge_count <= edge_count + 'd1;
      end else begin
         edge_count <= edge_count;
      end
   end

end

// Once all the edges requested have been counted we count cycles.
// The though being the user counts so many events, then a buffer out the
// back to see any post edge events. This should be sufficient for most
// use cases as edges can be aggregated externally.
always @(posedge clk) begin

   if (restart) begin
         cycles_count <= 0;
   end else begin
      if((cycles_count == 0) & (!complete_flag) & (edge_count == edges_to_count)) begin
         cycles_count <= cycles_after_last_edge;
      end else begin
         if(cycles_count != 0) begin
            cycles_count <= cycles_count - 'd1;
         end
      end
   end

end

// Generate the complete strobe. Note this module is synthesiseable and can
// be used in hardware, either to drive LED, ILA or registers.
always @(posedge clk) begin

   if (restart) begin
         complete_flag <= 0;
   end else begin
      if(cycles_count == 1) begin
         complete_flag <= 1'd1;
`ifdef ENABLE_SIM_STOPPER_STOP_IN_MODULE
         $stop;
`endif
      end else begin
         complete_flag <= complete_flag;
      end
   end

end

endmodule
`endif
