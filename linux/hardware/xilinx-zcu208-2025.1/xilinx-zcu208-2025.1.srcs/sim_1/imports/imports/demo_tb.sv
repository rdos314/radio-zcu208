//----------------------------------------------------------------------------
// Title : Demo Testbench
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
// File : demo_tb.v
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

//
//----------------------------------------------------------------------------

`timescale 1ps / 1ps
// List of instance paths used in the AXI transaction messaging blocks
`define DUT_AXI_PATH     dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst
`define EX_AXI_PATH      dut_and_data_i.DUT.rfip_ex_i.ex_design

// Allow hierarchial probing of the design. Use in functional simulation only
`define ENABLE_VERILOG_HIER_PROBES
// `define ENABLE_VERILOG_SM_PROBES

module demo_tb ;

//-----------------------------------------------------------------------------
// declare TB signals
//-----------------------------------------------------------------------------
wire           s_axi_aclk    ; //
wire           s_axi_aresetn ; //
wire           s_axi_tb_aresetn ; //
wire [34:0]    s_axi_awaddr  ; //
wire           s_axi_awvalid ; //
wire           s_axi_awready ; //
wire [31:0]    s_axi_wdata   ; //
wire           s_axi_wvalid  ; //
wire           s_axi_wready  ; //
wire [ 1:0]    s_axi_bresp   ; //
wire           s_axi_bvalid  ; //
wire           s_axi_bready  ; //
wire [34:0]    s_axi_araddr  ; //
wire           s_axi_arvalid ; //
wire           s_axi_arready ; //
wire [31:0]    s_axi_rdata   ; //
wire [ 1:0]    s_axi_rresp   ; //
wire           s_axi_rvalid  ; //
wire           s_axi_rready  ; //
wire           seq_done      ; // Sequencer done flag
wire           dac_sink_error_flag; //
wire           dac_sink_done_flag ; //
wire           adc_sink_error_flag; //
wire           adc_sink_done_flag ; //
wire [3:0]     external_signal_bus; //
wire [7:0]     tile_clock_enable;   //
wire [255:0]   data_samples_in[15:0];
wire           data_samples_req[3:0];
wire  [31:0]   data_samples_out[1023:0];
wire  [31:0]   data_samples_out_q[1023:0];
wire   [1:0]   wr_channel;
wire   [1:0]   rd_channel;

//-----------------------------------------------------------------------------
// Sequencer to generate AXI control to exdes and textbench
// Refer to demo_tb_axi4l_nano_seq.v to modify the AXI test sequence.
//-----------------------------------------------------------------------------
demo_tb_axi4l_nano_seq sequencer_i (

   .axi_awaddr             (s_axi_awaddr       ) , //
   .axi_awvalid            (s_axi_awvalid      ) , //
   .axi_awready            (s_axi_awready      ) , //
   .axi_wdata              (s_axi_wdata        ) , //
   .axi_wvalid             (s_axi_wvalid       ) , //
   .axi_wready             (s_axi_wready       ) , //
   .axi_bresp              (s_axi_bresp        ) , //
   .axi_bvalid             (s_axi_bvalid       ) , //
   .axi_bready             (s_axi_bready       ) , //
   .axi_araddr             (s_axi_araddr       ) , //
   .axi_arvalid            (s_axi_arvalid      ) , //
   .axi_arready            (s_axi_arready      ) , //
   .axi_rdata              (s_axi_rdata        ) , //
   .axi_rresp              (s_axi_rresp        ) , //
   .axi_rvalid             (s_axi_rvalid       ) , //
   .axi_rready             (s_axi_rready       ) , //

   .data_samples_in        (data_samples_in),
   .data_samples_req       (data_samples_req),
   .data_samples_out       (data_samples_out),
   .data_samples_out_q     (data_samples_out_q),

   .wr_channel             (wr_channel),
   .rd_channel             (rd_channel),

   .clk                    (s_axi_aclk         ) , //
   .reset                  (1'd0               ) , //
   .axi_message_enable     (axi_message_enable ),
   .external_signal_bus    (external_signal_bus) , //
   .tile_clock_enable      (tile_clock_enable  ) , //
   .rising_stop_trigger    (seq_done           ) , //
   .axi_aresetn            (                   ) , //
   .int_axi_aresetn        (s_axi_aresetn      ) , //
   .int_tb_aresetn         (s_axi_tb_aresetn   ) , //
   .seq_done               (seq_done           )   //
);

assign external_signal_bus[0] = dac_sink_error_flag;
assign external_signal_bus[1] = adc_sink_error_flag;
assign external_signal_bus[2] = dac_sink_done_flag;
assign external_signal_bus[3] = adc_sink_done_flag;

//-----------------------------------------------------------------------------
// This block contains the DUT and the real number sink/sources for the AMS IP.
//-----------------------------------------------------------------------------
demo_tb_dut_checker dut_and_data_i (

   .s_axi_awaddr           (s_axi_awaddr      ) , //
   .s_axi_awvalid          (s_axi_awvalid     ) , //
   .s_axi_awready          (s_axi_awready     ) , //
   .s_axi_wdata            (s_axi_wdata       ) , //
   .s_axi_wstrb            (4'hf              ) , //
   .s_axi_wvalid           (s_axi_wvalid      ) , //
   .s_axi_wready           (s_axi_wready      ) , //
   .s_axi_bresp            (s_axi_bresp       ) , //
   .s_axi_bvalid           (s_axi_bvalid      ) , //
   .s_axi_bready           (s_axi_bready      ) , //
   .s_axi_araddr           (s_axi_araddr      ) , //
   .s_axi_arvalid          (s_axi_arvalid     ) , //
   .s_axi_arready          (s_axi_arready     ) , //
   .s_axi_rdata            (s_axi_rdata       ) , //
   .s_axi_rresp            (s_axi_rresp       ) , //
   .s_axi_rvalid           (s_axi_rvalid      ) , //
   .s_axi_rready           (s_axi_rready      ) , //

   .tile_clock_enable      (tile_clock_enable ) , //
   .clock_enable_reg       (),

   .dac_sink_error_flag    (dac_sink_error_flag),
   .dac_sink_done_flag     (dac_sink_done_flag ),
   .adc_sink_error_flag    (adc_sink_error_flag),
   .adc_sink_done_flag     (adc_sink_done_flag ),
   .data_samples_out       (data_samples_in),
   .data_samples_req       (data_samples_req),
   .data_samples_in        (data_samples_out),
   .data_samples_in_q      (data_samples_out_q),
   .wr_channel             (wr_channel),
   .rd_channel             (rd_channel),

   .s_axi_aclk             (s_axi_aclk        ) , //
   .s_axi_aresetn          (s_axi_aresetn     ) , //
   .s_axi_tb_aresetn       (s_axi_tb_aresetn  )   //
);

//-----------------------------------------------------------------------------
// Decodes AXI transaction to the IP and "pretty" prints message to the screen
//-----------------------------------------------------------------------------
`ifdef ENABLE_VERILOG_HIER_PROBES
demo_tb_axi_transaction_decode_hsams transaction_decode_i (
   .s_axi_aclk             ( `DUT_AXI_PATH.s_axi_aclk           ),
   .s_axi_aresetn          ( `DUT_AXI_PATH.s_axi_aresetn        ),
   .enable                 (  axi_message_enable                ),
   .s_axi_awaddr           ( {14'd0,`DUT_AXI_PATH.s_axi_awaddr} ),
   .s_axi_awvalid          ( `DUT_AXI_PATH.s_axi_awvalid        ),
   .s_axi_awready          ( `DUT_AXI_PATH.s_axi_awready        ),
   .s_axi_wdata            ( `DUT_AXI_PATH.s_axi_wdata          ),
   .s_axi_wvalid           ( `DUT_AXI_PATH.s_axi_wvalid         ),
   .s_axi_wready           ( `DUT_AXI_PATH.s_axi_wready         ),
   .s_axi_bresp            ( `DUT_AXI_PATH.s_axi_bresp          ),
   .s_axi_bvalid           ( `DUT_AXI_PATH.s_axi_bvalid         ),
   .s_axi_bready           ( `DUT_AXI_PATH.s_axi_bready         ),
   .s_axi_araddr           ( {14'd0,`DUT_AXI_PATH.s_axi_araddr} ),
   .s_axi_arvalid          ( `DUT_AXI_PATH.s_axi_arvalid        ),
   .s_axi_arready          ( `DUT_AXI_PATH.s_axi_arready        ),
   .s_axi_rdata            ( `DUT_AXI_PATH.s_axi_rdata          ),
   .s_axi_rresp            ( `DUT_AXI_PATH.s_axi_rresp          ),
   .s_axi_rvalid           ( `DUT_AXI_PATH.s_axi_rvalid         ),
   .s_axi_rready           ( `DUT_AXI_PATH.s_axi_rready         )
);
`endif

//-----------------------------------------------------------------------------
// Interface signal range measurement
//-----------------------------------------------------------------------------
demo_tb_signal_ranges sig_range_stats (

   .seq_done_adc           (adc_sink_done_flag),
   .seq_done_dac           (dac_sink_done_flag)

);

//-----------------------------------------------------------------------------
// RFAMS Analog Real pins for easy reference
//-----------------------------------------------------------------------------
`ifndef DO_NOT_USE_RFAMS_REAL_SIGNAL_FORCE
// ADC
real adc0_01_p;
real adc0_01_n;
real adc0_23_p;
real adc0_23_n;
real adc1_01_p;
real adc1_01_n;
real adc1_23_p;
real adc1_23_n;
real adc2_01_p;
real adc2_01_n;
real adc2_23_p;
real adc2_23_n;
real adc3_01_p;
real adc3_01_n;
real adc3_23_p;
real adc3_23_n;

always @ (*) begin
   // Map the ADC signals to top level. Probed at UNSIM level for driver confidence
   adc0_01_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P;
   adc0_01_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N;
   sig_range_stats.adc0_01_a.sig_p = adc0_01_p;
   sig_range_stats.adc0_01_a.sig_n = adc0_01_n;
   adc0_23_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P;
   adc0_23_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N;
   sig_range_stats.adc0_23_a.sig_p = adc0_23_p;
   sig_range_stats.adc0_23_a.sig_n = adc0_23_n;
   adc1_01_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P;
   adc1_01_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N;
   sig_range_stats.adc1_01_a.sig_p = adc1_01_p;
   sig_range_stats.adc1_01_a.sig_n = adc1_01_n;
   adc1_23_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P;
   adc1_23_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N;
   sig_range_stats.adc1_23_a.sig_p = adc1_23_p;
   sig_range_stats.adc1_23_a.sig_n = adc1_23_n;
   adc2_01_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P;
   adc2_01_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N;
   sig_range_stats.adc2_01_a.sig_p = adc2_01_p;
   sig_range_stats.adc2_01_a.sig_n = adc2_01_n;
   adc2_23_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P;
   adc2_23_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N;
   sig_range_stats.adc2_23_a.sig_p = adc2_23_p;
   sig_range_stats.adc2_23_a.sig_n = adc2_23_n;
   adc3_01_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P;
   adc3_01_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N;
   sig_range_stats.adc3_01_a.sig_p = adc3_01_p;
   sig_range_stats.adc3_01_a.sig_n = adc3_01_n;
   adc3_23_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P;
   adc3_23_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N;
   sig_range_stats.adc3_23_a.sig_p = adc3_23_p;
   sig_range_stats.adc3_23_a.sig_n = adc3_23_n;
end

// DAC
real dac00_p;
real dac00_n;
real dac02_p;
real dac02_n;
real dac10_p;
real dac10_n;
real dac12_p;
real dac12_n;
real dac20_p;
real dac20_n;
real dac22_p;
real dac22_n;
real dac30_p;
real dac30_n;
real dac32_p;
real dac32_n;

always @ (*) begin
   // Map the DAC signals to the top level
   dac00_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac00_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   sig_range_stats.dac00_a.sig_p = dac00_p;
   sig_range_stats.dac00_a.sig_n = dac00_n;
   dac02_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac02_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   sig_range_stats.dac02_a.sig_p = dac02_p;
   sig_range_stats.dac02_a.sig_n = dac02_n;
   dac10_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac10_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   sig_range_stats.dac10_a.sig_p = dac10_p;
   sig_range_stats.dac10_a.sig_n = dac10_n;
   dac12_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac12_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   sig_range_stats.dac12_a.sig_p = dac12_p;
   sig_range_stats.dac12_a.sig_n = dac12_n;
   dac20_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac20_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   sig_range_stats.dac20_a.sig_p = dac20_p;
   sig_range_stats.dac20_a.sig_n = dac20_n;
   dac22_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac22_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   sig_range_stats.dac22_a.sig_p = dac22_p;
   sig_range_stats.dac22_a.sig_n = dac22_n;
   dac30_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac30_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   sig_range_stats.dac30_a.sig_p = dac30_p;
   sig_range_stats.dac30_a.sig_n = dac30_n;
   dac32_p = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac32_n = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   sig_range_stats.dac32_a.sig_p = dac32_p;
   sig_range_stats.dac32_a.sig_n = dac32_n;
end
`endif

//-----------------------------------------------------------------------------
// Probe data interfaces for EOU
//-----------------------------------------------------------------------------
`ifdef ENABLE_VERILOG_HIER_PROBES
// ADC - 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
reg [191:0] adc00_axis_tdata ; //
reg         adc00_axis_tvalid; //
reg         adc00_axis_tready; //

reg [191:0] adc01_axis_tdata ; //
reg         adc01_axis_tvalid; //
reg         adc01_axis_tready; //

reg [191:0] adc02_axis_tdata ; //
reg         adc02_axis_tvalid; //
reg         adc02_axis_tready; //

reg [191:0] adc03_axis_tdata ; //
reg         adc03_axis_tvalid; //
reg         adc03_axis_tready; //

reg [191:0] adc10_axis_tdata ; //
reg         adc10_axis_tvalid; //
reg         adc10_axis_tready; //

reg [191:0] adc11_axis_tdata ; //
reg         adc11_axis_tvalid; //
reg         adc11_axis_tready; //

reg [191:0] adc12_axis_tdata ; //
reg         adc12_axis_tvalid; //
reg         adc12_axis_tready; //

reg [191:0] adc13_axis_tdata ; //
reg         adc13_axis_tvalid; //
reg         adc13_axis_tready; //

reg [191:0] adc20_axis_tdata ; //
reg         adc20_axis_tvalid; //
reg         adc20_axis_tready; //

reg [191:0] adc21_axis_tdata ; //
reg         adc21_axis_tvalid; //
reg         adc21_axis_tready; //

reg [191:0] adc22_axis_tdata ; //
reg         adc22_axis_tvalid; //
reg         adc22_axis_tready; //

reg [191:0] adc23_axis_tdata ; //
reg         adc23_axis_tvalid; //
reg         adc23_axis_tready; //

reg [191:0] adc30_axis_tdata ; //
reg         adc30_axis_tvalid; //
reg         adc30_axis_tready; //

reg [191:0] adc31_axis_tdata ; //
reg         adc31_axis_tvalid; //
reg         adc31_axis_tready; //

reg [191:0] adc32_axis_tdata ; //
reg         adc32_axis_tvalid; //
reg         adc32_axis_tready; //

reg [191:0] adc33_axis_tdata ; //
reg         adc33_axis_tvalid; //
reg         adc33_axis_tready; //

// DAC - 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
reg [255:0] dac00_axis_tdata ; //
reg         dac00_axis_tvalid; //
reg         dac00_axis_tready; //

reg [255:0] dac01_axis_tdata ; //
reg         dac01_axis_tvalid; //
reg         dac01_axis_tready; //

reg [255:0] dac02_axis_tdata ; //
reg         dac02_axis_tvalid; //
reg         dac02_axis_tready; //

reg [255:0] dac03_axis_tdata ; //
reg         dac03_axis_tvalid; //
reg         dac03_axis_tready; //

reg [255:0] dac10_axis_tdata ; //
reg         dac10_axis_tvalid; //
reg         dac10_axis_tready; //

reg [255:0] dac11_axis_tdata ; //
reg         dac11_axis_tvalid; //
reg         dac11_axis_tready; //

reg [255:0] dac12_axis_tdata ; //
reg         dac12_axis_tvalid; //
reg         dac12_axis_tready; //

reg [255:0] dac13_axis_tdata ; //
reg         dac13_axis_tvalid; //
reg         dac13_axis_tready; //

reg [255:0] dac20_axis_tdata ; //
reg         dac20_axis_tvalid; //
reg         dac20_axis_tready; //

reg [255:0] dac21_axis_tdata ; //
reg         dac21_axis_tvalid; //
reg         dac21_axis_tready; //

reg [255:0] dac22_axis_tdata ; //
reg         dac22_axis_tvalid; //
reg         dac22_axis_tready; //

reg [255:0] dac23_axis_tdata ; //
reg         dac23_axis_tvalid; //
reg         dac23_axis_tready; //

reg [255:0] dac30_axis_tdata ; //
reg         dac30_axis_tvalid; //
reg         dac30_axis_tready; //

reg [255:0] dac31_axis_tdata ; //
reg         dac31_axis_tvalid; //
reg         dac31_axis_tready; //

reg [255:0] dac32_axis_tdata ; //
reg         dac32_axis_tvalid; //
reg         dac32_axis_tready; //

reg [255:0] dac33_axis_tdata ; //
reg         dac33_axis_tvalid; //
reg         dac33_axis_tready; //

always @ (*) begin
   adc00_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m00_axis_tdata;
   adc00_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m00_axis_tvalid;
   adc00_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m00_axis_tready;
   sig_range_stats.adc00_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m00_axis_tdata;
   sig_range_stats.adc00_x.sig_axis_valid = adc00_axis_tvalid & adc00_axis_tready;
   adc01_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m01_axis_tdata;
   adc01_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m01_axis_tvalid;
   adc01_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m01_axis_tready;
   sig_range_stats.adc01_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m01_axis_tdata;
   sig_range_stats.adc01_x.sig_axis_valid = adc01_axis_tvalid & adc01_axis_tready;
   adc02_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m02_axis_tdata;
   adc02_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m02_axis_tvalid;
   adc02_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m02_axis_tready;
   sig_range_stats.adc02_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m02_axis_tdata;
   sig_range_stats.adc02_x.sig_axis_valid = adc02_axis_tvalid & adc02_axis_tready;
   adc03_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m03_axis_tdata;
   adc03_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m03_axis_tvalid;
   adc03_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m03_axis_tready;
   sig_range_stats.adc03_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m03_axis_tdata;
   sig_range_stats.adc03_x.sig_axis_valid = adc03_axis_tvalid & adc03_axis_tready;
   adc10_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m10_axis_tdata;
   adc10_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m10_axis_tvalid;
   adc10_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m10_axis_tready;
   sig_range_stats.adc10_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m10_axis_tdata;
   sig_range_stats.adc10_x.sig_axis_valid = adc10_axis_tvalid & adc10_axis_tready;
   adc11_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m11_axis_tdata;
   adc11_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m11_axis_tvalid;
   adc11_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m11_axis_tready;
   sig_range_stats.adc11_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m11_axis_tdata;
   sig_range_stats.adc11_x.sig_axis_valid = adc11_axis_tvalid & adc11_axis_tready;
   adc12_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m12_axis_tdata;
   adc12_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m12_axis_tvalid;
   adc12_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m12_axis_tready;
   sig_range_stats.adc12_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m12_axis_tdata;
   sig_range_stats.adc12_x.sig_axis_valid = adc12_axis_tvalid & adc12_axis_tready;
   adc13_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m13_axis_tdata;
   adc13_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m13_axis_tvalid;
   adc13_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m13_axis_tready;
   sig_range_stats.adc13_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m13_axis_tdata;
   sig_range_stats.adc13_x.sig_axis_valid = adc13_axis_tvalid & adc13_axis_tready;
   adc20_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m20_axis_tdata;
   adc20_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m20_axis_tvalid;
   adc20_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m20_axis_tready;
   sig_range_stats.adc20_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m20_axis_tdata;
   sig_range_stats.adc20_x.sig_axis_valid = adc20_axis_tvalid & adc20_axis_tready;
   adc21_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m21_axis_tdata;
   adc21_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m21_axis_tvalid;
   adc21_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m21_axis_tready;
   sig_range_stats.adc21_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m21_axis_tdata;
   sig_range_stats.adc21_x.sig_axis_valid = adc21_axis_tvalid & adc21_axis_tready;
   adc22_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m22_axis_tdata;
   adc22_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m22_axis_tvalid;
   adc22_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m22_axis_tready;
   sig_range_stats.adc22_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m22_axis_tdata;
   sig_range_stats.adc22_x.sig_axis_valid = adc22_axis_tvalid & adc22_axis_tready;
   adc23_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m23_axis_tdata;
   adc23_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m23_axis_tvalid;
   adc23_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m23_axis_tready;
   sig_range_stats.adc23_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m23_axis_tdata;
   sig_range_stats.adc23_x.sig_axis_valid = adc23_axis_tvalid & adc23_axis_tready;
   adc30_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m30_axis_tdata;
   adc30_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m30_axis_tvalid;
   adc30_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m30_axis_tready;
   sig_range_stats.adc30_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m30_axis_tdata;
   sig_range_stats.adc30_x.sig_axis_valid = adc30_axis_tvalid & adc30_axis_tready;
   adc31_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m31_axis_tdata;
   adc31_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m31_axis_tvalid;
   adc31_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m31_axis_tready;
   sig_range_stats.adc31_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m31_axis_tdata;
   sig_range_stats.adc31_x.sig_axis_valid = adc31_axis_tvalid & adc31_axis_tready;
   adc32_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m32_axis_tdata;
   adc32_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m32_axis_tvalid;
   adc32_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m32_axis_tready;
   sig_range_stats.adc32_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m32_axis_tdata;
   sig_range_stats.adc32_x.sig_axis_valid = adc32_axis_tvalid & adc32_axis_tready;
   adc33_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m33_axis_tdata;
   adc33_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m33_axis_tvalid;
   adc33_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m33_axis_tready;
   sig_range_stats.adc33_x.sig_axis_tdata = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.m33_axis_tdata;
   sig_range_stats.adc33_x.sig_axis_valid = adc33_axis_tvalid & adc33_axis_tready;
   dac00_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s00_axis_tdata;
   dac00_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s00_axis_tvalid;
   dac00_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s00_axis_tready;
   sig_range_stats.dac00_x.sig_axis_tdata = dac00_axis_tdata;
   sig_range_stats.dac00_x.sig_axis_valid = dac00_axis_tvalid & dac00_axis_tready;
   dac01_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s01_axis_tdata;
   dac01_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s01_axis_tvalid;
   dac01_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s01_axis_tready;
   sig_range_stats.dac01_x.sig_axis_tdata = dac01_axis_tdata;
   sig_range_stats.dac01_x.sig_axis_valid = dac01_axis_tvalid & dac01_axis_tready;
   dac02_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s02_axis_tdata;
   dac02_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s02_axis_tvalid;
   dac02_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s02_axis_tready;
   sig_range_stats.dac02_x.sig_axis_tdata = dac02_axis_tdata;
   sig_range_stats.dac02_x.sig_axis_valid = dac02_axis_tvalid & dac02_axis_tready;
   dac03_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s03_axis_tdata;
   dac03_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s03_axis_tvalid;
   dac03_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s03_axis_tready;
   sig_range_stats.dac03_x.sig_axis_tdata = dac03_axis_tdata;
   sig_range_stats.dac03_x.sig_axis_valid = dac03_axis_tvalid & dac03_axis_tready;
   dac10_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s10_axis_tdata;
   dac10_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s10_axis_tvalid;
   dac10_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s10_axis_tready;
   sig_range_stats.dac10_x.sig_axis_tdata = dac10_axis_tdata;
   sig_range_stats.dac10_x.sig_axis_valid = dac10_axis_tvalid & dac10_axis_tready;
   dac11_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s11_axis_tdata;
   dac11_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s11_axis_tvalid;
   dac11_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s11_axis_tready;
   sig_range_stats.dac11_x.sig_axis_tdata = dac11_axis_tdata;
   sig_range_stats.dac11_x.sig_axis_valid = dac11_axis_tvalid & dac11_axis_tready;
   dac12_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s12_axis_tdata;
   dac12_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s12_axis_tvalid;
   dac12_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s12_axis_tready;
   sig_range_stats.dac12_x.sig_axis_tdata = dac12_axis_tdata;
   sig_range_stats.dac12_x.sig_axis_valid = dac12_axis_tvalid & dac12_axis_tready;
   dac13_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s13_axis_tdata;
   dac13_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s13_axis_tvalid;
   dac13_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s13_axis_tready;
   sig_range_stats.dac13_x.sig_axis_tdata = dac13_axis_tdata;
   sig_range_stats.dac13_x.sig_axis_valid = dac13_axis_tvalid & dac13_axis_tready;
   dac20_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s20_axis_tdata;
   dac20_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s20_axis_tvalid;
   dac20_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s20_axis_tready;
   sig_range_stats.dac20_x.sig_axis_tdata = dac20_axis_tdata;
   sig_range_stats.dac20_x.sig_axis_valid = dac20_axis_tvalid & dac20_axis_tready;
   dac21_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s21_axis_tdata;
   dac21_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s21_axis_tvalid;
   dac21_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s21_axis_tready;
   sig_range_stats.dac21_x.sig_axis_tdata = dac21_axis_tdata;
   sig_range_stats.dac21_x.sig_axis_valid = dac21_axis_tvalid & dac21_axis_tready;
   dac22_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s22_axis_tdata;
   dac22_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s22_axis_tvalid;
   dac22_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s22_axis_tready;
   sig_range_stats.dac22_x.sig_axis_tdata = dac22_axis_tdata;
   sig_range_stats.dac22_x.sig_axis_valid = dac22_axis_tvalid & dac22_axis_tready;
   dac23_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s23_axis_tdata;
   dac23_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s23_axis_tvalid;
   dac23_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s23_axis_tready;
   sig_range_stats.dac23_x.sig_axis_tdata = dac23_axis_tdata;
   sig_range_stats.dac23_x.sig_axis_valid = dac23_axis_tvalid & dac23_axis_tready;
   dac30_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s30_axis_tdata;
   dac30_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s30_axis_tvalid;
   dac30_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s30_axis_tready;
   sig_range_stats.dac30_x.sig_axis_tdata = dac30_axis_tdata;
   sig_range_stats.dac30_x.sig_axis_valid = dac30_axis_tvalid & dac30_axis_tready;
   dac31_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s31_axis_tdata;
   dac31_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s31_axis_tvalid;
   dac31_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s31_axis_tready;
   sig_range_stats.dac31_x.sig_axis_tdata = dac31_axis_tdata;
   sig_range_stats.dac31_x.sig_axis_valid = dac31_axis_tvalid & dac31_axis_tready;
   dac32_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s32_axis_tdata;
   dac32_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s32_axis_tvalid;
   dac32_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s32_axis_tready;
   sig_range_stats.dac32_x.sig_axis_tdata = dac32_axis_tdata;
   sig_range_stats.dac32_x.sig_axis_valid = dac32_axis_tvalid & dac32_axis_tready;
   dac33_axis_tdata  = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s33_axis_tdata;
   dac33_axis_tvalid = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s33_axis_tvalid;
   dac33_axis_tready = dut_and_data_i.DUT.rfip_ex_i.ex_design.rfip.s33_axis_tready;
   sig_range_stats.dac33_x.sig_axis_tdata = dac33_axis_tdata;
   sig_range_stats.dac33_x.sig_axis_valid = dac33_axis_tvalid & dac33_axis_tready;
end
`endif

endmodule

//-----------------------------------------------------------------------------
// Module to report signal ranges
//-----------------------------------------------------------------------------
module demo_tb_signal_ranges #(
   parameter p_data_width = 16
) (
   input wire seq_done_adc,
   input wire seq_done_dac
);

//-----------------------------------------------------------------------------
// Probe analog interfaces for EOU
//-----------------------------------------------------------------------------
dtb_sig_range_analog #(.p_id("<<-----        ADC0_01"),.p_code_w(12)) adc0_01_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC0_23"),.p_code_w(12)) adc0_23_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC1_01"),.p_code_w(12)) adc1_01_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC1_23"),.p_code_w(12)) adc1_23_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC2_01"),.p_code_w(12)) adc2_01_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC2_23"),.p_code_w(12)) adc2_23_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC3_01"),.p_code_w(12)) adc3_01_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
dtb_sig_range_analog #(.p_id("<<-----        ADC3_23"),.p_code_w(12)) adc3_23_a (.seq_done(seq_done_adc), .enable_toggle_time(1'd0));
// DAC - 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
dtb_sig_range_analog #(.p_id("       ----->> DAC00"),.p_code_w(14)) dac00_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC02"),.p_code_w(14)) dac02_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC10"),.p_code_w(14)) dac10_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC12"),.p_code_w(14)) dac12_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC20"),.p_code_w(14)) dac20_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC22"),.p_code_w(14)) dac22_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC30"),.p_code_w(14)) dac30_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));
dtb_sig_range_analog #(.p_id("       ----->> DAC32"),.p_code_w(14)) dac32_a (.seq_done(seq_done_dac), .enable_toggle_time(1'd1));

//-----------------------------------------------------------------------------
// Probe data interfaces for EOU
//-----------------------------------------------------------------------------
dtb_sig_range_axis   #(.p_id("<<-----        ADC00"))  adc00_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC01"))  adc01_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC02"))  adc02_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC03"))  adc03_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC10"))  adc10_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC11"))  adc11_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC12"))  adc12_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC13"))  adc13_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC20"))  adc20_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC21"))  adc21_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC22"))  adc22_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC23"))  adc23_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC30"))  adc30_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC31"))  adc31_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC32"))  adc32_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("<<-----        ADC33"))  adc33_x (.seq_done(seq_done_adc), .enable_toggle_time(1'd1));
dtb_sig_range_axis   #(.p_id("       ----->> DAC00"))  dac00_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC01"))  dac01_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC02"))  dac02_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC03"))  dac03_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC10"))  dac10_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC11"))  dac11_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC12"))  dac12_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC13"))  dac13_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC20"))  dac20_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC21"))  dac21_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC22"))  dac22_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC23"))  dac23_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC30"))  dac30_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC31"))  dac31_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC32"))  dac32_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));
dtb_sig_range_axis   #(.p_id("       ----->> DAC33"))  dac33_x (.seq_done(seq_done_dac), .enable_toggle_time(1'd0));

endmodule

//-----------------------------------------------------------------------------
// Module to report AXI Stream code range
//-----------------------------------------------------------------------------
module dtb_sig_range_axis #(
   parameter p_data_width = 16,
   parameter p_id = ""
) (
   input wire seq_done,
   input wire enable_toggle_time
);

reg     [255:0] sig_axis_tdata ; //
reg             sig_axis_valid; //

integer         transitions = 0; //
integer         sig_axis_tdata_maxval = 0; //
integer         sig_axis_tdata_minval = (2**31)-1; //
integer         sig_axis_tdata_sign_extended; //
integer         sig_axis_tdata_made_positive; //

localparam p_transition_limit = 20;

always @ (sig_axis_tdata) begin
   if (sig_axis_valid & enable_toggle_time)
      transitions = transitions + 'd1;
end

`ifdef QUESTA_REPORT_UTC_TIME
always @ (posedge (transitions == p_transition_limit)) begin
   $write("%s AXI-Stream started @", p_id);
   $system("date -u +%Y%m%d_%H%M%S");
end
`endif

always @ (*) begin

   // Perform a "cast" from the 16 bit net to an integer to get +-values for GT/LT comparrisons.
   sig_axis_tdata_sign_extended = {{32 - p_data_width{sig_axis_tdata[p_data_width-1]}},(sig_axis_tdata[p_data_width-1:0])};

end

always @ (*) begin

   // Then make +ve by adding the half the bit range
   sig_axis_tdata_made_positive = sig_axis_tdata_sign_extended + (2**(p_data_width - 1));

end

always @ (*) begin

   if (sig_axis_valid) begin
      if ((sig_axis_tdata_made_positive > sig_axis_tdata_maxval) ) begin
         #1 sig_axis_tdata_maxval = sig_axis_tdata_made_positive;
      end
   end

end

always @ (*) begin

   if (sig_axis_valid) begin
      if ((sig_axis_tdata_made_positive < sig_axis_tdata_minval) ) begin
         #1 sig_axis_tdata_minval = sig_axis_tdata_made_positive;
      end
   end

end

always @(posedge seq_done)
   $display("%s AXI-Stream range = %d", p_id, sig_axis_tdata_maxval - sig_axis_tdata_minval);

endmodule

//-----------------------------------------------------------------------------
// Module to calculate analog signal code range
//-----------------------------------------------------------------------------
module dtb_sig_range_analog #(
   parameter p_code_w     = 16,
   parameter p_max_r      = 1.12/2,
   parameter p_id         = "",
   parameter p_tcount_max = 20
) (
   input wire seq_done,
   input wire enable_toggle_time
);

localparam plsb_value = p_max_r/(2**p_code_w);

//-----------------------------------------------------------------------------
// Mechanism for displaying ranges on the DAC
//-----------------------------------------------------------------------------
// DAC
real sig_p;
real sig_n;
real sig_p_maxval=0;
real sig_p_minval=1;
real range;
real codes;

integer transition_count = 0;

always @ (*) begin

   if (transition_count > p_tcount_max) begin
      if ((sig_p > sig_p_maxval) ) begin
         #1 sig_p_maxval = sig_p;
      end

       if(sig_p == 0)
         sig_p_minval = 1;
       else
         if ((sig_p < sig_p_minval) ) begin
            #1 sig_p_minval = sig_p;
         end // else do nothing
   end

   transition_count = transition_count + 1;

end

`ifdef QUESTA_REPORT_UTC_TIME
always @ (posedge ((transition_count == p_tcount_max) & enable_toggle_time)) begin
   $write("%s Analog REAL started @", p_id);
   $system("date -u +%Y%m%d_%H%M%S");
end
`endif

always @(posedge seq_done) begin
   range = sig_p_maxval - sig_p_minval;
   codes = range/plsb_value;
   $display("%s Analog range = %.3f @%dbit = %.1f codes (%.1f%%)", p_id, range, p_code_w, codes, 100*codes/(2**p_code_w));
   end

endmodule

//-----------------------------------------------------------------------------
// Wrapper for the clock block. Allows direct USE in IPI with correct
// frequencies. Note Clocks are generated from multiples of the sample rate in
// ps for correct operation in the simulator. The IPI clock frequencies are
// generated his the High and Low phases in PS.
//-----------------------------------------------------------------------------
module demo_tb_clk_gen_wrap #( parameter axi_reset_cycles   = 100 )(

  input  wire [7:0]     tile_clock_enable,

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac0_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307219662" *)
  output wire           dac0_axis_aclk      ,
  output wire           dac0_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac1_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307219662" *)
  output wire           dac1_axis_aclk      ,
  output wire           dac1_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac2_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307219662" *)
  output wire           dac2_axis_aclk      ,
  output wire           dac2_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac3_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307219662" *)
  output wire           dac3_axis_aclk      ,
  output wire           dac3_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc0_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 409668169" *)
  output wire           adc0_axis_aclk      ,
  output wire           adc0_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc1_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 409668169" *)
  output wire           adc1_axis_aclk      ,
  output wire           adc1_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc2_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 409668169" *)
  output wire           adc2_axis_aclk      ,
  output wire           adc2_clk_p          ,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc3_axis_aclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 409668169" *)
  output wire           adc3_axis_aclk      ,
  output wire           adc3_clk_p          ,

  // AXI-Lite Control/Status
   (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_resetn RST" *)
   (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
  output wire           axi_resetn ,
   (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_reset  RST" *)
   (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
  output wire           axi_reset  ,
  output wire           s_axi_aclk

) ;

//-----------------------------------------------------------------------------
// Clock generator block
// This is wrapped with the port settings fixed so this block can be used
// directly in IPI
//-----------------------------------------------------------------------------
demo_tb_clk_gen # ( .axi_reset_cycles (axi_reset_cycles) ) clocks_i(

   .axi_clk_phase         ({16'd8696, 16'd8696} ), // AXI CLK 57.5MHz
   .pl_clk_phase          ({16'd5000, 16'd5000} ), // PL CLK 100.0MHz
   .clkdac_0_fab_freq     (64'd307200),
   .clkdac_0_ref_freq     (64'd245760),
   .clkdac_0_enable       (tile_clock_enable[0] ), //

   .clkdac_1_fab_freq     (64'd307200),
   .clkdac_1_ref_freq     (64'd245760),
   .clkdac_1_enable       (tile_clock_enable[1] ), //

   .clkdac_2_fab_freq     (64'd307200),
   .clkdac_2_ref_freq     (64'd245760),
   .clkdac_2_enable       (tile_clock_enable[2] ), //

   .clkdac_3_fab_freq     (64'd307200),
   .clkdac_3_ref_freq     (64'd245760),
   .clkdac_3_enable       (tile_clock_enable[3] ), //

   .clkadc_0_fab_phase    ({32'd1218 ,32'd1218 }),
   .clkadc_0_ref_phase    ({16'd2030 ,16'd2030 }),
   .clkadc_0_enable       (tile_clock_enable[4] ), //

   .clkadc_1_fab_phase    ({32'd1218 ,32'd1218 }),
   .clkadc_1_ref_phase    ({16'd2030 ,16'd2030 }),
   .clkadc_1_enable       (tile_clock_enable[5] ), //

   .clkadc_2_fab_phase    ({32'd1218 ,32'd1218 }),
   .clkadc_2_ref_phase    ({16'd2030 ,16'd2030 }),
   .clkadc_2_enable       (tile_clock_enable[6] ), //

   .clkadc_3_fab_phase    ({32'd1218 ,32'd1218 }),
   .clkadc_3_ref_phase    ({16'd2030 ,16'd2030 }),
   .clkadc_3_enable       (tile_clock_enable[7] ), //


   .clkdac_0_fab          (dac0_axis_aclk       ),
   .clkdac_0_ref          (dac0_clk_p           ),
   .clkdac_1_fab          (dac1_axis_aclk       ),
   .clkdac_1_ref          (),
   .clkdac_2_fab          (dac2_axis_aclk       ),
   .clkdac_2_ref          (),
   .clkdac_3_fab          (dac3_axis_aclk       ),
   .clkdac_3_ref          (),
   .clkadc_0_fab          (adc0_axis_aclk       ),
   .clkadc_0_ref          (),
   .clkadc_1_fab          (adc1_axis_aclk       ),
   .clkadc_1_ref          (),
   .clkadc_2_fab          (adc2_axis_aclk       ),
   .clkadc_2_ref          (adc2_clk_p           ),
   .clkadc_3_fab          (adc3_axis_aclk       ),
   .clkadc_3_ref          (),
   .axi_resetn             (axi_resetn ), //
   .axi_reset              (axi_reset  ), //
   .pl_clk_p               (),
   .clk_axi                (s_axi_aclk )  //

);

endmodule

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// This testbench layer wraps the real data generation/checking with the DUT
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
module demo_tb_dut_checker(

  // AXI-Lite clock/reset
  output wire           s_axi_aclk   ,
  input  wire           s_axi_aresetn,
  input  wire           s_axi_tb_aresetn,

  output wire           dac_sink_error_flag,
  output wire           dac_sink_done_flag ,
  output wire           adc_sink_error_flag,
  output wire           adc_sink_done_flag ,

  input  wire [7:0]     tile_clock_enable,
  output wire [15:0]    clock_enable_reg,
  output wire [255:0]   data_samples_out[15:0],
  output wire [255:0]   data_samples_out_q[15:0],
  input  wire           data_samples_req[3:0],
  input  wire  [31:0]   data_samples_in[1023:0],
  input  wire  [31:0]   data_samples_in_q[1023:0],
  input  wire   [1:0]   wr_channel,
  input  wire   [1:0]   rd_channel,

  // AXI-Lite Control/Status
  input  wire [34:0]    s_axi_awaddr ,
  input  wire           s_axi_awvalid,
  output wire           s_axi_awready,
  input  wire [31:0]    s_axi_wdata  ,
  input  wire  [3:0]    s_axi_wstrb  ,
  input  wire           s_axi_wvalid ,
  output wire           s_axi_wready ,
  output wire  [1:0]    s_axi_bresp  ,
  output wire           s_axi_bvalid ,
  input  wire           s_axi_bready ,
  input  wire [34:0]    s_axi_araddr ,
  input  wire           s_axi_arvalid,
  output wire           s_axi_arready,
  output wire [31:0]    s_axi_rdata  ,
  output wire  [1:0]    s_axi_rresp  ,
  output wire           s_axi_rvalid ,
  input  wire           s_axi_rready

) ;

//-----------------------------------------------------------------------------
// Wires for ADC sample generation High[31:16]/Low[15:0] phase
//-----------------------------------------------------------------------------
wire [31:0]  clk_phase_hl_00;
wire [31:0]  clk_phase_hl_02;
wire [31:0]  clk_phase_hl_10;
wire [31:0]  clk_phase_hl_12;
wire [31:0]  clk_phase_hl_20;
wire [31:0]  clk_phase_hl_22;
wire [31:0]  clk_phase_hl_30;
wire [31:0]  clk_phase_hl_32;

//-----------------------------------------------------------------------------
// Clock declarations
//-----------------------------------------------------------------------------
wire         adc0_clk_p    ;
wire         adc0_axis_aclk; //
wire         adc1_clk_p    ;
wire         adc1_axis_aclk; //
wire         adc2_clk_p    ;
wire         adc2_axis_aclk; //
wire         adc3_clk_p    ;
wire         adc3_axis_aclk; //
wire         dac0_clk_p    ; //
wire         dac0_axis_aclk; //
wire         dac1_clk_p    ; //
wire         dac1_axis_aclk; //
wire         dac2_clk_p    ; //
wire         dac2_axis_aclk; //
wire         dac3_clk_p    ; //
wire         dac3_axis_aclk; //

//-----------------------------------------------------------------------------
// Declare AXI decoder wires
//-----------------------------------------------------------------------------
// AXI M 0
wire [31:0]  m_exdes_axi_awaddr  ; //
wire         m_exdes_axi_awvalid ; //
wire         m_exdes_axi_awready ; //
wire [31:0]  m_exdes_axi_wdata   ; //
wire  [3:0]  m_exdes_axi_wstrb   ; //
wire         m_exdes_axi_wvalid  ; //
wire         m_exdes_axi_wready  ; //
wire  [1:0]  m_exdes_axi_bresp   ; //
wire         m_exdes_axi_bvalid  ; //
wire         m_exdes_axi_bready  ; //
wire [31:0]  m_exdes_axi_araddr  ; //
wire         m_exdes_axi_arvalid ; //
wire         m_exdes_axi_arready ; //
wire [31:0]  m_exdes_axi_rdata   ; //
wire  [1:0]  m_exdes_axi_rresp   ; //
wire         m_exdes_axi_rvalid  ; //
wire         m_exdes_axi_rready  ; //

// AXI M 1
wire [19:0]  m_tbsrc_axi_awaddr  ; //
wire         m_tbsrc_axi_awvalid ; //
wire         m_tbsrc_axi_awready ; //
wire [31:0]  m_tbsrc_axi_wdata   ; //
wire  [3:0]  m_tbsrc_axi_wstrb   ; //
wire         m_tbsrc_axi_wvalid  ; //
wire         m_tbsrc_axi_wready  ; //
wire  [1:0]  m_tbsrc_axi_bresp   ; //
wire         m_tbsrc_axi_bvalid  ; //
wire         m_tbsrc_axi_bready  ; //
wire [19:0]  m_tbsrc_axi_araddr  ; //
wire         m_tbsrc_axi_arvalid ; //
wire         m_tbsrc_axi_arready ; //
wire [31:0]  m_tbsrc_axi_rdata   ; //
wire  [1:0]  m_tbsrc_axi_rresp   ; //
wire         m_tbsrc_axi_rvalid  ; //
wire         m_tbsrc_axi_rready  ; //

// AXI M 2
wire [19:0]  m_tbsnk_axi_awaddr  ; //
wire         m_tbsnk_axi_awvalid ; //
wire         m_tbsnk_axi_awready ; //
wire [31:0]  m_tbsnk_axi_wdata   ; //
wire  [3:0]  m_tbsnk_axi_wstrb   ; //
wire         m_tbsnk_axi_wvalid  ; //
wire         m_tbsnk_axi_wready  ; //
wire  [1:0]  m_tbsnk_axi_bresp   ; //
wire         m_tbsnk_axi_bvalid  ; //
wire         m_tbsnk_axi_bready  ; //
wire [19:0]  m_tbsnk_axi_araddr  ; //
wire         m_tbsnk_axi_arvalid ; //
wire         m_tbsnk_axi_arready ; //
wire [31:0]  m_tbsnk_axi_rdata   ; //
wire  [1:0]  m_tbsnk_axi_rresp   ; //
wire         m_tbsnk_axi_rvalid  ; //
wire         m_tbsnk_axi_rready  ; //

// AXI M 3
wire [19:0]  m_tbgen_axi_awaddr  ; //
wire         m_tbgen_axi_awvalid ; //
wire         m_tbgen_axi_awready ; //
wire [31:0]  m_tbgen_axi_wdata   ; //
wire  [3:0]  m_tbgen_axi_wstrb   ; //
wire         m_tbgen_axi_wvalid  ; //
wire         m_tbgen_axi_wready  ; //
wire  [1:0]  m_tbgen_axi_bresp   ; //
wire         m_tbgen_axi_bvalid  ; //
wire         m_tbgen_axi_bready  ; //
wire [19:0]  m_tbgen_axi_araddr  ; //
wire         m_tbgen_axi_arvalid ; //
wire         m_tbgen_axi_arready ; //
wire [31:0]  m_tbgen_axi_rdata   ; //
wire  [1:0]  m_tbgen_axi_rresp   ; //
wire         m_tbgen_axi_rvalid  ; //
wire         m_tbgen_axi_rready  ; //

// AXI M 4
wire [19:0]  m_tbcap_axi_awaddr  ; //
wire         m_tbcap_axi_awvalid ; //
wire         m_tbcap_axi_awready ; //
wire [31:0]  m_tbcap_axi_wdata   ; //
wire  [3:0]  m_tbcap_axi_wstrb   ; //
wire         m_tbcap_axi_wvalid  ; //
wire         m_tbcap_axi_wready  ; //
wire  [1:0]  m_tbcap_axi_bresp   ; //
wire         m_tbcap_axi_bvalid  ; //
wire         m_tbcap_axi_bready  ; //
wire [19:0]  m_tbcap_axi_araddr  ; //
wire         m_tbcap_axi_arvalid ; //
wire         m_tbcap_axi_arready ; //
wire [31:0]  m_tbcap_axi_rdata   ; //
wire  [1:0]  m_tbcap_axi_rresp   ; //
wire         m_tbcap_axi_rvalid  ; //
wire         m_tbcap_axi_rready  ; //
wire [31:0]  s_axi_rdata_i;
reg   [9:0]  sample_addr = 0;

//-----------------------------------------------------------------------------
// Clock generator wrapper block, improved IPI EOU
//-----------------------------------------------------------------------------
demo_tb_clk_gen_wrap clocks_w_i(

   .dac0_axis_aclk         (dac0_axis_aclk      ), // clkdac_0_fab
   .dac0_clk_p             (dac0_clk_p          ), // clkdac_0_ref
   .dac1_axis_aclk         (dac1_axis_aclk      ), // clkdac_1_fab
   .dac1_clk_p             (dac1_clk_p          ), // clkdac_1_ref
   .dac2_axis_aclk         (dac2_axis_aclk      ), // clkdac_2_fab
   .dac2_clk_p             (dac2_clk_p          ), // clkdac_2_ref
   .dac3_axis_aclk         (dac3_axis_aclk      ), // clkdac_3_fab
   .dac3_clk_p             (dac3_clk_p          ), // clkdac_3_ref
   .adc0_axis_aclk         (adc0_axis_aclk      ), // clkadc_0_fab
   .adc0_clk_p             (adc0_clk_p          ), // clkadc_0_ref
   .adc1_axis_aclk         (adc1_axis_aclk      ), // clkadc_1_fab
   .adc1_clk_p             (adc1_clk_p          ), // clkadc_1_ref
   .adc2_axis_aclk         (adc2_axis_aclk      ), // clkadc_2_fab
   .adc2_clk_p             (adc2_clk_p          ), // clkadc_2_ref
   .adc3_axis_aclk         (adc3_axis_aclk      ), // clkadc_3_fab
   .adc3_clk_p             (adc3_clk_p          ), // clkadc_3_ref

   .tile_clock_enable      (tile_clock_enable   ),
   .axi_resetn             (),
   .axi_reset              (),
   .s_axi_aclk             ()  //

);

  // Get the AXI clock from the example design
  always @(*) begin
    force s_axi_aclk = `EX_AXI_PATH.s_axi_aclk;
  end

//-----------------------------------------------------------------------------
// RFAMS Example Design
//-----------------------------------------------------------------------------
rfip_example_design DUT(
  // External SYSREF input
   .sysref_in_p            (),
   .sysref_in_n            (),


   .adc2_clk_p             (adc2_clk_p       ), // ADC Reference Clock for Tile 2
   .adc2_clk_n             (~adc2_clk_p      ), //


   .dac0_clk_p             (dac0_clk_p       ), // DAC Reference Clock for Tile 0
   .dac0_clk_n             (~dac0_clk_p      ),





   .vin0_01_p              ( ),
   .vin0_01_n              ( ),
   .vin0_23_p              ( ),
   .vin0_23_n              ( ),
   .vin1_01_p              ( ),
   .vin1_01_n              ( ),
   .vin1_23_p              ( ),
   .vin1_23_n              ( ),
   .vin2_01_p              ( ),
   .vin2_01_n              ( ),
   .vin2_23_p              ( ),
   .vin2_23_n              ( ),
   .vin3_01_p              ( ),
   .vin3_01_n              ( ),
   .vin3_23_p              ( ),
   .vin3_23_n              ( ),

   .vout00_p               ( ),
   .vout00_n               ( ),
   .vout02_p               ( ),
   .vout02_n               ( ),
   .vout10_p               ( ),
   .vout10_n               ( ),
   .vout12_p               ( ),
   .vout12_n               ( ),
   .vout20_p               ( ),
   .vout20_n               ( ),
   .vout22_p               ( ),
   .vout22_n               ( ),
   .vout30_p               ( ),
   .vout30_n               ( ),
   .vout32_p               ( ),
   .vout32_n               ( )
);

  // Override the microblaze with the AXI commands from the sequencer.
  // If a simulation of the microblaze program is required then please
  // comment out these lines.
  always @(*) begin

    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_awaddr   = m_exdes_axi_awaddr;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_awvalid  = m_exdes_axi_awvalid;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_wdata    = m_exdes_axi_wdata;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_wvalid   = m_exdes_axi_wvalid;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_bready   = m_exdes_axi_bready;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_araddr   = m_exdes_axi_araddr;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_arvalid  = m_exdes_axi_arvalid;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_rready   = m_exdes_axi_rready;
    force dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_wstrb    = m_exdes_axi_wstrb;

    force m_exdes_axi_awready = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_awready;
    force m_exdes_axi_wready  = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_wready;
    force m_exdes_axi_bresp   = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_bresp;
    force m_exdes_axi_bvalid  = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_bvalid;
    force m_exdes_axi_arready = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_arready;
    force s_axi_rdata_i       = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_rdata;
    force m_exdes_axi_rresp   = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_rresp;
    force m_exdes_axi_rvalid  = dut_and_data_i.DUT.rfip_ex_i.ex_design.smartconnect_0.S01_AXI_rvalid;

  end
  assign m_exdes_axi_rdata = s_axi_rdata_i[31:0];       // Full width data bus

//-----------------------------------------------------------------------------
// Decoder for the AXI4 bus. The REAL source/sink blocks also have processor
// interfaces for configuration
//-----------------------------------------------------------------------------
demo_tb_axi4l_decode #(.loweraddrwidth_i(32),
                       .strobewidth(5))
  axi4l_decoder_tb_i (

   // AXI M 0
   .m0_axi_awaddr          (m_exdes_axi_awaddr  ), //
   .m0_axi_awvalid         (m_exdes_axi_awvalid ), //
   .m0_axi_awready         (m_exdes_axi_awready ), //
   .m0_axi_wdata           (m_exdes_axi_wdata   ), //
   .m0_axi_wstrb           (m_exdes_axi_wstrb   ), //
   .m0_axi_wvalid          (m_exdes_axi_wvalid  ), //
   .m0_axi_wready          (m_exdes_axi_wready  ), //
   .m0_axi_bresp           (m_exdes_axi_bresp   ), //
   .m0_axi_bvalid          (m_exdes_axi_bvalid  ), //
   .m0_axi_bready          (m_exdes_axi_bready  ), //
   .m0_axi_araddr          (m_exdes_axi_araddr  ), //
   .m0_axi_arvalid         (m_exdes_axi_arvalid ), //
   .m0_axi_arready         (m_exdes_axi_arready ), //
   .m0_axi_rdata           (m_exdes_axi_rdata   ), //
   .m0_axi_rresp           (m_exdes_axi_rresp   ), //
   .m0_axi_rvalid          (m_exdes_axi_rvalid  ), //
   .m0_axi_rready          (m_exdes_axi_rready  ), //

   // AXI M 1
   .m1_axi_awaddr          (m_tbsrc_axi_awaddr  ), //
   .m1_axi_awvalid         (m_tbsrc_axi_awvalid ), //
   .m1_axi_awready         (m_tbsrc_axi_awready ), //
   .m1_axi_wdata           (m_tbsrc_axi_wdata   ), //
   .m1_axi_wstrb           (m_tbsrc_axi_wstrb   ), //
   .m1_axi_wvalid          (m_tbsrc_axi_wvalid  ), //
   .m1_axi_wready          (m_tbsrc_axi_wready  ), //
   .m1_axi_bresp           (m_tbsrc_axi_bresp   ), //
   .m1_axi_bvalid          (m_tbsrc_axi_bvalid  ), //
   .m1_axi_bready          (m_tbsrc_axi_bready  ), //
   .m1_axi_araddr          (m_tbsrc_axi_araddr  ), //
   .m1_axi_arvalid         (m_tbsrc_axi_arvalid ), //
   .m1_axi_arready         (m_tbsrc_axi_arready ), //
   .m1_axi_rdata           (m_tbsrc_axi_rdata   ), //
   .m1_axi_rresp           (m_tbsrc_axi_rresp   ), //
   .m1_axi_rvalid          (m_tbsrc_axi_rvalid  ), //
   .m1_axi_rready          (m_tbsrc_axi_rready  ), //

   // AXI M 2
   .m2_axi_awaddr          (m_tbsnk_axi_awaddr  ), //
   .m2_axi_awvalid         (m_tbsnk_axi_awvalid ), //
   .m2_axi_awready         (m_tbsnk_axi_awready ), //
   .m2_axi_wdata           (m_tbsnk_axi_wdata   ), //
   .m2_axi_wstrb           (m_tbsnk_axi_wstrb   ), //
   .m2_axi_wvalid          (m_tbsnk_axi_wvalid  ), //
   .m2_axi_wready          (m_tbsnk_axi_wready  ), //
   .m2_axi_bresp           (m_tbsnk_axi_bresp   ), //
   .m2_axi_bvalid          (m_tbsnk_axi_bvalid  ), //
   .m2_axi_bready          (m_tbsnk_axi_bready  ), //
   .m2_axi_araddr          (m_tbsnk_axi_araddr  ), //
   .m2_axi_arvalid         (m_tbsnk_axi_arvalid ), //
   .m2_axi_arready         (m_tbsnk_axi_arready ), //
   .m2_axi_rdata           (m_tbsnk_axi_rdata   ), //
   .m2_axi_rresp           (m_tbsnk_axi_rresp   ), //
   .m2_axi_rvalid          (m_tbsnk_axi_rvalid  ), //
   .m2_axi_rready          (m_tbsnk_axi_rready  ), //

    // AXI M 3
   .m3_axi_awaddr          (m_tbgen_axi_awaddr  ), //
   .m3_axi_awvalid         (m_tbgen_axi_awvalid ), //
   .m3_axi_awready         (m_tbgen_axi_awready ), //
   .m3_axi_wdata           (m_tbgen_axi_wdata   ), //
   .m3_axi_wstrb           (m_tbgen_axi_wstrb   ), //
   .m3_axi_wvalid          (m_tbgen_axi_wvalid  ), //
   .m3_axi_wready          (m_tbgen_axi_wready  ), //
   .m3_axi_bresp           (m_tbgen_axi_bresp   ), //
   .m3_axi_bvalid          (m_tbgen_axi_bvalid  ), //
   .m3_axi_bready          (m_tbgen_axi_bready  ), //
   .m3_axi_araddr          (m_tbgen_axi_araddr  ), //
   .m3_axi_arvalid         (m_tbgen_axi_arvalid ), //
   .m3_axi_arready         (m_tbgen_axi_arready ), //
   .m3_axi_rdata           (m_tbgen_axi_rdata   ), //
   .m3_axi_rresp           (m_tbgen_axi_rresp   ), //
   .m3_axi_rvalid          (m_tbgen_axi_rvalid  ), //
   .m3_axi_rready          (m_tbgen_axi_rready  ), //

   // AXI M 4
   .m4_axi_awaddr          (m_tbcap_axi_awaddr  ), //
   .m4_axi_awvalid         (m_tbcap_axi_awvalid ), //
   .m4_axi_awready         (m_tbcap_axi_awready ), //
   .m4_axi_wdata           (m_tbcap_axi_wdata   ), //
   .m4_axi_wstrb           (m_tbcap_axi_wstrb   ), //
   .m4_axi_wvalid          (m_tbcap_axi_wvalid  ), //
   .m4_axi_wready          (m_tbcap_axi_wready  ), //
   .m4_axi_bresp           (m_tbcap_axi_bresp   ), //
   .m4_axi_bvalid          (m_tbcap_axi_bvalid  ), //
   .m4_axi_bready          (m_tbcap_axi_bready  ), //
   .m4_axi_araddr          (m_tbcap_axi_araddr  ), //
   .m4_axi_arvalid         (m_tbcap_axi_arvalid ), //
   .m4_axi_arready         (m_tbcap_axi_arready ), //
   .m4_axi_rdata           (m_tbcap_axi_rdata   ), //
   .m4_axi_rresp           (m_tbcap_axi_rresp   ), //
   .m4_axi_rvalid          (m_tbcap_axi_rvalid  ), //
   .m4_axi_rready          (m_tbcap_axi_rready  ), //

   // AXI-Lite Interface
   .s_axi_awaddr           (s_axi_awaddr  ), //
   .s_axi_awvalid          (s_axi_awvalid ), //
   .s_axi_awready          (s_axi_awready ), //
   .s_axi_wdata            (s_axi_wdata   ), //
   .s_axi_wstrb            (4'hF          ), //
   .s_axi_wvalid           (s_axi_wvalid  ), //
   .s_axi_wready           (s_axi_wready  ), //
   .s_axi_bresp            (s_axi_bresp   ), //
   .s_axi_bvalid           (s_axi_bvalid  ), //
   .s_axi_bready           (s_axi_bready  ), //
   .s_axi_araddr           (s_axi_araddr  ), //
   .s_axi_arvalid          (s_axi_arvalid ), //
   .s_axi_arready          (s_axi_arready ), //
   .s_axi_rdata            (s_axi_rdata   ), //
   .s_axi_rresp            (s_axi_rresp   ), //
   .s_axi_rvalid           (s_axi_rvalid  ), //
   .s_axi_rready           (s_axi_rready  ),  //

   .clk                    (s_axi_aclk    ) ,
   .s_axi_aresetn          (s_axi_tb_aresetn )

);

//-----------------------------------------------------------------------------
// Demo testbench real data source, with processor configuration interface.
// Forces are used to apply real data from the DAC onto these pins
//-----------------------------------------------------------------------------
demo_tb_rfdac_data_sink dac_sink(

   .s_axi_awaddr           (m_tbsnk_axi_awaddr[17:0]), //
   .s_axi_awvalid          (m_tbsnk_axi_awvalid), //
   .s_axi_awready          (m_tbsnk_axi_awready), //
   .s_axi_wdata            (m_tbsnk_axi_wdata  ), //
   .s_axi_wvalid           (m_tbsnk_axi_wvalid ), //
   .s_axi_wready           (m_tbsnk_axi_wready ), //
   .s_axi_bresp            (m_tbsnk_axi_bresp  ), //
   .s_axi_bvalid           (m_tbsnk_axi_bvalid ), //
   .s_axi_bready           (m_tbsnk_axi_bready ), //
   .s_axi_araddr           (m_tbsnk_axi_araddr[17:0]), //
   .s_axi_arvalid          (m_tbsnk_axi_arvalid), //
   .s_axi_arready          (m_tbsnk_axi_arready), //
   .s_axi_rdata            (m_tbsnk_axi_rdata  ), //
   .s_axi_rresp            (m_tbsnk_axi_rresp  ), //
   .s_axi_rvalid           (m_tbsnk_axi_rvalid ), //
   .s_axi_rready           (m_tbsnk_axi_rready ),  //

   .vin_00_p               ( ),
   .vin_00_n               ( ),
   .vin_02_p               ( ),
   .vin_02_n               ( ),
   .vin_10_p               ( ),
   .vin_10_n               ( ),
   .vin_12_p               ( ),
   .vin_12_n               ( ),
   .vin_20_p               ( ),
   .vin_20_n               ( ),
   .vin_22_p               ( ),
   .vin_22_n               ( ),
   .vin_30_p               ( ),
   .vin_30_n               ( ),
   .vin_32_p               ( ),
   .vin_32_n               ( ),
   .sample_rate0_clk       (dac0_clk_p  ),
   .fabric_rate0_clk       (dac0_axis_aclk),
   .sample_rate1_clk       (dac1_clk_p  ),
   .fabric_rate1_clk       (dac1_axis_aclk),
   .sample_rate2_clk       (dac2_clk_p  ),
   .fabric_rate2_clk       (dac2_axis_aclk),
   .sample_rate3_clk       (dac3_clk_p  ),
   .fabric_rate3_clk       (dac3_axis_aclk),

   .done_flag              (dac_sink_done_flag ),
   .error_flag             (dac_sink_error_flag),
   .clock_enable_reg       (clock_enable_reg   ),

   // AXI-Lite Clock/Reset
   .s_axi_aclk             (s_axi_aclk         ) ,
   .s_axi_aresetn          (s_axi_tb_aresetn   )

  );

//-----------------------------------------------------------------------------
// Demo testbench real data generation, with processor configuration interface.
// Forces are used to apply real data to the ADC.
//-----------------------------------------------------------------------------
assign clk_phase_hl_00 = {16'd102,16'd101};
assign clk_phase_hl_02 = {16'd102,16'd101};
assign clk_phase_hl_10 = {16'd102,16'd101};
assign clk_phase_hl_12 = {16'd102,16'd101};
assign clk_phase_hl_20 = {16'd102,16'd101};
assign clk_phase_hl_22 = {16'd102,16'd101};
assign clk_phase_hl_30 = {16'd102,16'd101};
assign clk_phase_hl_32 = {16'd102,16'd101};

demo_tb_rfadc_data_source adc_source(

   .s_axi_awaddr           (m_tbsrc_axi_awaddr[17:0]), //
   .s_axi_awvalid          (m_tbsrc_axi_awvalid), //
   .s_axi_awready          (m_tbsrc_axi_awready), //
   .s_axi_wdata            (m_tbsrc_axi_wdata  ), //
   .s_axi_wvalid           (m_tbsrc_axi_wvalid ), //
   .s_axi_wready           (m_tbsrc_axi_wready ), //
   .s_axi_bresp            (m_tbsrc_axi_bresp  ), //
   .s_axi_bvalid           (m_tbsrc_axi_bvalid ), //
   .s_axi_bready           (m_tbsrc_axi_bready ), //
   .s_axi_araddr           (m_tbsrc_axi_araddr[17:0]), //
   .s_axi_arvalid          (m_tbsrc_axi_arvalid), //
   .s_axi_arready          (m_tbsrc_axi_arready), //
   .s_axi_rdata            (m_tbsrc_axi_rdata  ), //
   .s_axi_rresp            (m_tbsrc_axi_rresp  ), //
   .s_axi_rvalid           (m_tbsrc_axi_rvalid ), //
   .s_axi_rready           (m_tbsrc_axi_rready ),  //

   .clk_phase_hl_00        (clk_phase_hl_00),
   .vout_00_p              ( ),
   .vout_00_n              ( ),

   .clk_phase_hl_02        (clk_phase_hl_02),
   .vout_02_p              ( ),
   .vout_02_n              ( ),

   .clk_phase_hl_10        (clk_phase_hl_10),
   .vout_10_p              ( ),
   .vout_10_n              ( ),

   .clk_phase_hl_12        (clk_phase_hl_12),
   .vout_12_p              ( ),
   .vout_12_n              ( ),

   .clk_phase_hl_20        (clk_phase_hl_20),
   .vout_20_p              ( ),
   .vout_20_n              ( ),

   .clk_phase_hl_22        (clk_phase_hl_22),
   .vout_22_p              ( ),
   .vout_22_n              ( ),

   .clk_phase_hl_30        (clk_phase_hl_30),
   .vout_30_p              ( ),
   .vout_30_n              ( ),

   .clk_phase_hl_32        (clk_phase_hl_32),
   .vout_32_p              ( ),
   .vout_32_n              ( ),

   // AXI-Lite Clock/Reset
   .s_axi_aclk             (s_axi_aclk         ) ,
   .s_axi_aresetn          (s_axi_tb_aresetn   )

  );

//-----------------------------------------------------------------------------
// Force the analog signals.
//-----------------------------------------------------------------------------
`ifndef DO_NOT_USE_RFAMS_REAL_SIGNAL_FORCE
// Map the walking one to a 32 bit window to allow a covergroup binding
reg  [31:0]     adc_wo_driver_remap=0;
reg  [31:0]     adc_wo_endpoint_remap=0;

// ADC
reg  [15:0] adc_wo_driver = 1;
reg  [15:0] adc_wo_endpoint;

real adc0_01_p;
real adc0_01_n;
real adc0_23_p;
real adc0_23_n;
real adc1_01_p;
real adc1_01_n;
real adc1_23_p;
real adc1_23_n;
real adc2_01_p;
real adc2_01_n;
real adc2_23_p;
real adc2_23_n;
real adc3_01_p;
real adc3_01_n;
real adc3_23_p;
real adc3_23_n;

always @(*) begin
   force DUT.vin0_01_n               = adc_wo_driver[0];
   force DUT.vin0_01_p               = adc_wo_driver[1];
   force DUT.vin0_23_n               = adc_wo_driver[2];
   force DUT.vin0_23_p               = adc_wo_driver[3];
   force DUT.vin1_01_n               = adc_wo_driver[4];
   force DUT.vin1_01_p               = adc_wo_driver[5];
   force DUT.vin1_23_n               = adc_wo_driver[6];
   force DUT.vin1_23_p               = adc_wo_driver[7];
   force DUT.vin2_01_n               = adc_wo_driver[8];
   force DUT.vin2_01_p               = adc_wo_driver[9];
   force DUT.vin2_23_n               = adc_wo_driver[10];
   force DUT.vin2_23_p               = adc_wo_driver[11];
   force DUT.vin3_01_n               = adc_wo_driver[12];
   force DUT.vin3_01_p               = adc_wo_driver[13];
   force DUT.vin3_23_n               = adc_wo_driver[14];
   force DUT.vin3_23_p               = adc_wo_driver[15];

   adc_wo_endpoint[0] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.VIN_I01_N; //
   adc_wo_endpoint[1] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.VIN_I01_P; //
   adc_wo_endpoint[2] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.VIN_I23_N; //
   adc_wo_endpoint[3] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.VIN_I23_P; //
   adc_wo_endpoint[4] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.VIN_I01_N; //
   adc_wo_endpoint[5] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.VIN_I01_P; //
   adc_wo_endpoint[6] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.VIN_I23_N; //
   adc_wo_endpoint[7] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.VIN_I23_P; //
   adc_wo_endpoint[8] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.VIN_I01_N; //
   adc_wo_endpoint[9] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.VIN_I01_P; //
   adc_wo_endpoint[10] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.VIN_I23_N; //
   adc_wo_endpoint[11] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.VIN_I23_P; //
   adc_wo_endpoint[12] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.VIN_I01_N; //
   adc_wo_endpoint[13] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.VIN_I01_P; //
   adc_wo_endpoint[14] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.VIN_I23_N; //
   adc_wo_endpoint[15] =  DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.VIN_I23_P; //
end

always @(*) begin
   adc_wo_driver_remap   = 32'd0;
   adc_wo_driver_remap  [1:0] = adc_wo_driver[1:0];
   adc_wo_driver_remap  [5:4] = adc_wo_driver[3:2];
   adc_wo_driver_remap  [9:8] = adc_wo_driver[5:4];
   adc_wo_driver_remap  [13:12] = adc_wo_driver[7:6];
   adc_wo_driver_remap  [17:16] = adc_wo_driver[9:8];
   adc_wo_driver_remap  [21:20] = adc_wo_driver[11:10];
   adc_wo_driver_remap  [25:24] = adc_wo_driver[13:12];
   adc_wo_driver_remap  [29:28] = adc_wo_driver[15:14];
end

always @(*) begin
   adc_wo_endpoint_remap = 32'd0;
   adc_wo_endpoint_remap[1:0] = adc_wo_endpoint    [1:0];
   adc_wo_endpoint_remap[5:4] = adc_wo_endpoint    [3:2];
   adc_wo_endpoint_remap[9:8] = adc_wo_endpoint    [5:4];
   adc_wo_endpoint_remap[13:12] = adc_wo_endpoint    [7:6];
   adc_wo_endpoint_remap[17:16] = adc_wo_endpoint    [9:8];
   adc_wo_endpoint_remap[21:20] = adc_wo_endpoint    [11:10];
   adc_wo_endpoint_remap[25:24] = adc_wo_endpoint    [13:12];
   adc_wo_endpoint_remap[29:28] = adc_wo_endpoint    [15:14];
end

always @(posedge s_axi_aclk) begin
   adc_wo_driver <= {adc_wo_driver[14:0],adc_wo_driver[15]};
end

always @ (*) begin
   // Map the ADC signals to top level
   adc0_01_p = $bitstoreal(adc_source.vout_00_p);
   adc0_01_n = $bitstoreal(adc_source.vout_00_n);
   adc0_23_p = $bitstoreal(adc_source.vout_02_p);
   adc0_23_n = $bitstoreal(adc_source.vout_02_n);
   adc1_01_p = $bitstoreal(adc_source.vout_10_p);
   adc1_01_n = $bitstoreal(adc_source.vout_10_n);
   adc1_23_p = $bitstoreal(adc_source.vout_12_p);
   adc1_23_n = $bitstoreal(adc_source.vout_12_n);
   adc2_01_p = $bitstoreal(adc_source.vout_20_p);
   adc2_01_n = $bitstoreal(adc_source.vout_20_n);
   adc2_23_p = $bitstoreal(adc_source.vout_22_p);
   adc2_23_n = $bitstoreal(adc_source.vout_22_n);
   adc3_01_p = $bitstoreal(adc_source.vout_30_p);
   adc3_01_n = $bitstoreal(adc_source.vout_30_n);
   adc3_23_p = $bitstoreal(adc_source.vout_32_p);
   adc3_23_n = $bitstoreal(adc_source.vout_32_n);

   // Force the ADC analog input
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P = adc0_01_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N = adc0_01_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P = adc0_23_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N = adc0_23_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P = adc1_01_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N = adc1_01_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P = adc1_23_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N = adc1_23_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P = adc2_01_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N = adc2_01_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P = adc2_23_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N = adc2_23_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_P = adc3_01_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I01_N = adc3_01_n; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_P = adc3_23_p; //
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.VIN_I23_N = adc3_23_n; //
end

// DAC
real dac00_p;
real dac00_n;
real dac02_p;
real dac02_n;
real dac10_p;
real dac10_n;
real dac12_p;
real dac12_n;
real dac20_p;
real dac20_n;
real dac22_p;
real dac22_n;
real dac30_p;
real dac30_n;
real dac32_p;
real dac32_n;

always @ (*) begin
   // Map the DAC signals to the top level
   dac00_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac00_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   dac02_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac02_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   dac10_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac10_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   dac12_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac12_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   dac20_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac20_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   dac22_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac22_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;
   dac30_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_P;
   dac30_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT0_N;
   dac32_p = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_P;
   dac32_n = DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.VOUT2_N;

   // force the DAC output onto the DAC sink
   force dac_sink.vin_00_p = $realtobits(dac00_p);
   force dac_sink.vin_00_n = $realtobits(dac00_n);
   force dac_sink.vin_02_p = $realtobits(dac02_p);
   force dac_sink.vin_02_n = $realtobits(dac02_n);
   force dac_sink.vin_10_p = $realtobits(dac10_p);
   force dac_sink.vin_10_n = $realtobits(dac10_n);
   force dac_sink.vin_12_p = $realtobits(dac12_p);
   force dac_sink.vin_12_n = $realtobits(dac12_n);
   force dac_sink.vin_20_p = $realtobits(dac20_p);
   force dac_sink.vin_20_n = $realtobits(dac20_n);
   force dac_sink.vin_22_p = $realtobits(dac22_p);
   force dac_sink.vin_22_n = $realtobits(dac22_n);
   force dac_sink.vin_30_p = $realtobits(dac30_p);
   force dac_sink.vin_30_n = $realtobits(dac30_n);
   force dac_sink.vin_32_p = $realtobits(dac32_p);
   force dac_sink.vin_32_n = $realtobits(dac32_n);

end

initial begin
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx0 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx1 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx2 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx3 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx0 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx1 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx2 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx3 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx0 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx1 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx2 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx3 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx0 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx1 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx2 = 3.0;
   force DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST._vterm_tx3 = 3.0;
end
`endif


//-----------------------------------------------------------------------------
// POR SM state probes
//-----------------------------------------------------------------------------
`ifdef ENABLE_VERILOG_SM_PROBES
wire [12:0] dgb_por_sm_dac0;
wire [12:0] dgb_por_sm_dac1;
wire [12:0] dgb_por_sm_dac2;
wire [12:0] dgb_por_sm_dac3;

wire [12:0] dgb_por_sm_adc0;
wire [12:0] dgb_por_sm_adc1;
wire [12:0] dgb_por_sm_adc2;
wire [12:0] dgb_por_sm_adc3;

assign dgb_por_sm_dac0 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac0.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac0.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac0.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac0.end_stage
                         };
assign dgb_por_sm_dac1 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac1.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac1.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac1.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac1.end_stage
                         };
assign dgb_por_sm_dac2 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac2.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac2.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac2.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac2.end_stage
                         };
assign dgb_por_sm_dac3 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac3.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac3.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac3.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_dac3.end_stage
                         };

assign dgb_por_sm_adc0 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc0.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc0.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc0.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc0.end_stage
                         };
assign dgb_por_sm_adc1 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc1.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc1.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc1.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc1.end_stage
                         };
assign dgb_por_sm_adc2 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc2.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc2.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc2.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc2.end_stage
                         };
assign dgb_por_sm_adc3 = {
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc3.done,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc3.status,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc3.start_stage,
                           DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.por_state_machine_i.por_fsm_adc3.end_stage
                         };
`endif

//-----------------------------------------------------------------------------
// Probe data interfaces for EOU
//-----------------------------------------------------------------------------
`ifdef ENABLE_VERILOG_HIER_PROBES
// ADC - 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
reg [191:0] adc00_axis_tdata ; //
reg         adc00_axis_tvalid; //
reg         adc00_axis_tready; //

reg [191:0] adc01_axis_tdata ; //
reg         adc01_axis_tvalid; //
reg         adc01_axis_tready; //

reg [191:0] adc02_axis_tdata ; //
reg         adc02_axis_tvalid; //
reg         adc02_axis_tready; //

reg [191:0] adc03_axis_tdata ; //
reg         adc03_axis_tvalid; //
reg         adc03_axis_tready; //

reg [191:0] adc10_axis_tdata ; //
reg         adc10_axis_tvalid; //
reg         adc10_axis_tready; //

reg [191:0] adc11_axis_tdata ; //
reg         adc11_axis_tvalid; //
reg         adc11_axis_tready; //

reg [191:0] adc12_axis_tdata ; //
reg         adc12_axis_tvalid; //
reg         adc12_axis_tready; //

reg [191:0] adc13_axis_tdata ; //
reg         adc13_axis_tvalid; //
reg         adc13_axis_tready; //

reg [191:0] adc20_axis_tdata ; //
reg         adc20_axis_tvalid; //
reg         adc20_axis_tready; //

reg [191:0] adc21_axis_tdata ; //
reg         adc21_axis_tvalid; //
reg         adc21_axis_tready; //

reg [191:0] adc22_axis_tdata ; //
reg         adc22_axis_tvalid; //
reg         adc22_axis_tready; //

reg [191:0] adc23_axis_tdata ; //
reg         adc23_axis_tvalid; //
reg         adc23_axis_tready; //

reg [191:0] adc30_axis_tdata ; //
reg         adc30_axis_tvalid; //
reg         adc30_axis_tready; //

reg [191:0] adc31_axis_tdata ; //
reg         adc31_axis_tvalid; //
reg         adc31_axis_tready; //

reg [191:0] adc32_axis_tdata ; //
reg         adc32_axis_tvalid; //
reg         adc32_axis_tready; //

reg [191:0] adc33_axis_tdata ; //
reg         adc33_axis_tvalid; //
reg         adc33_axis_tready; //

// DAC - 00 01 02 03 10 11 12 13 20 21 22 23 30 31 32 33
reg [255:0] dac00_axis_tdata ; //
reg         dac00_axis_tvalid; //
reg         dac00_axis_tready; //

reg [255:0] dac01_axis_tdata ; //
reg         dac01_axis_tvalid; //
reg         dac01_axis_tready; //

reg [255:0] dac02_axis_tdata ; //
reg         dac02_axis_tvalid; //
reg         dac02_axis_tready; //

reg [255:0] dac03_axis_tdata ; //
reg         dac03_axis_tvalid; //
reg         dac03_axis_tready; //

reg [255:0] dac10_axis_tdata ; //
reg         dac10_axis_tvalid; //
reg         dac10_axis_tready; //

reg [255:0] dac11_axis_tdata ; //
reg         dac11_axis_tvalid; //
reg         dac11_axis_tready; //

reg [255:0] dac12_axis_tdata ; //
reg         dac12_axis_tvalid; //
reg         dac12_axis_tready; //

reg [255:0] dac13_axis_tdata ; //
reg         dac13_axis_tvalid; //
reg         dac13_axis_tready; //

reg [255:0] dac20_axis_tdata ; //
reg         dac20_axis_tvalid; //
reg         dac20_axis_tready; //

reg [255:0] dac21_axis_tdata ; //
reg         dac21_axis_tvalid; //
reg         dac21_axis_tready; //

reg [255:0] dac22_axis_tdata ; //
reg         dac22_axis_tvalid; //
reg         dac22_axis_tready; //

reg [255:0] dac23_axis_tdata ; //
reg         dac23_axis_tvalid; //
reg         dac23_axis_tready; //

reg [255:0] dac30_axis_tdata ; //
reg         dac30_axis_tvalid; //
reg         dac30_axis_tready; //

reg [255:0] dac31_axis_tdata ; //
reg         dac31_axis_tvalid; //
reg         dac31_axis_tready; //

reg [255:0] dac32_axis_tdata ; //
reg         dac32_axis_tvalid; //
reg         dac32_axis_tready; //

reg [255:0] dac33_axis_tdata ; //
reg         dac33_axis_tvalid; //
reg         dac33_axis_tready; //

always @ (*) begin
   adc00_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m00_axis_tdata;
   adc00_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m00_axis_tvalid;
   adc00_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m00_axis_tready;
   adc01_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m01_axis_tdata;
   adc01_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m01_axis_tvalid;
   adc01_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m01_axis_tready;
   adc02_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m02_axis_tdata;
   adc02_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m02_axis_tvalid;
   adc02_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m02_axis_tready;
   adc03_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m03_axis_tdata;
   adc03_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m03_axis_tvalid;
   adc03_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m03_axis_tready;
   adc10_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m10_axis_tdata;
   adc10_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m10_axis_tvalid;
   adc10_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m10_axis_tready;
   adc11_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m11_axis_tdata;
   adc11_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m11_axis_tvalid;
   adc11_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m11_axis_tready;
   adc12_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m12_axis_tdata;
   adc12_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m12_axis_tvalid;
   adc12_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m12_axis_tready;
   adc13_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m13_axis_tdata;
   adc13_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m13_axis_tvalid;
   adc13_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m13_axis_tready;
   adc20_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m20_axis_tdata;
   adc20_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m20_axis_tvalid;
   adc20_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m20_axis_tready;
   adc21_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m21_axis_tdata;
   adc21_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m21_axis_tvalid;
   adc21_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m21_axis_tready;
   adc22_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m22_axis_tdata;
   adc22_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m22_axis_tvalid;
   adc22_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m22_axis_tready;
   adc23_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m23_axis_tdata;
   adc23_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m23_axis_tvalid;
   adc23_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m23_axis_tready;
   adc30_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m30_axis_tdata;
   adc30_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m30_axis_tvalid;
   adc30_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m30_axis_tready;
   adc31_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m31_axis_tdata;
   adc31_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m31_axis_tvalid;
   adc31_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m31_axis_tready;
   adc32_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m32_axis_tdata;
   adc32_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m32_axis_tvalid;
   adc32_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m32_axis_tready;
   adc33_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.m33_axis_tdata;
   adc33_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.m33_axis_tvalid;
   adc33_axis_tready = DUT.rfip_ex_i.ex_design.rfip.m33_axis_tready;
   dac00_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s00_axis_tdata;
   dac00_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s00_axis_tvalid;
   dac00_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s00_axis_tready;
   dac01_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s01_axis_tdata;
   dac01_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s01_axis_tvalid;
   dac01_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s01_axis_tready;
   dac02_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s02_axis_tdata;
   dac02_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s02_axis_tvalid;
   dac02_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s02_axis_tready;
   dac03_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s03_axis_tdata;
   dac03_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s03_axis_tvalid;
   dac03_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s03_axis_tready;
   dac10_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s10_axis_tdata;
   dac10_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s10_axis_tvalid;
   dac10_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s10_axis_tready;
   dac11_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s11_axis_tdata;
   dac11_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s11_axis_tvalid;
   dac11_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s11_axis_tready;
   dac12_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s12_axis_tdata;
   dac12_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s12_axis_tvalid;
   dac12_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s12_axis_tready;
   dac13_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s13_axis_tdata;
   dac13_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s13_axis_tvalid;
   dac13_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s13_axis_tready;
   dac20_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s20_axis_tdata;
   dac20_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s20_axis_tvalid;
   dac20_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s20_axis_tready;
   dac21_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s21_axis_tdata;
   dac21_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s21_axis_tvalid;
   dac21_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s21_axis_tready;
   dac22_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s22_axis_tdata;
   dac22_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s22_axis_tvalid;
   dac22_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s22_axis_tready;
   dac23_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s23_axis_tdata;
   dac23_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s23_axis_tvalid;
   dac23_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s23_axis_tready;
   dac30_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s30_axis_tdata;
   dac30_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s30_axis_tvalid;
   dac30_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s30_axis_tready;
   dac31_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s31_axis_tdata;
   dac31_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s31_axis_tvalid;
   dac31_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s31_axis_tready;
   dac32_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s32_axis_tdata;
   dac32_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s32_axis_tvalid;
   dac32_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s32_axis_tready;
   dac33_axis_tdata  = DUT.rfip_ex_i.ex_design.rfip.s33_axis_tdata;
   dac33_axis_tvalid = DUT.rfip_ex_i.ex_design.rfip.s33_axis_tvalid;
   dac33_axis_tready = DUT.rfip_ex_i.ex_design.rfip.s33_axis_tready;
end




//-----------------------------------------------------------------------------
// Monitors for the AMS DRP bus. Force these in the simulator to display.
// Example command for Questa
// force -freeze sim:/demo_tb/dut_and_data_i/hsadc_drp_decode_i/enable 1'h1 0
//-----------------------------------------------------------------------------
rfdac_drp_decode z_dac_drp_decode_0_i (

   .marker      (8'd0),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx0_u_dac.generate_block1.SIP_RFDAC_INST.DOUT  )
);

rfdac_drp_decode z_dac_drp_decode_1_i (

   .marker      (8'd1),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx1_u_dac.generate_block1.SIP_RFDAC_INST.DOUT  )
);

rfdac_drp_decode z_dac_drp_decode_2_i (

   .marker      (8'd2),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx2_u_dac.generate_block1.SIP_RFDAC_INST.DOUT  )
);

rfdac_drp_decode z_dac_drp_decode_3_i (

   .marker      (8'd3),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.tx3_u_dac.generate_block1.SIP_RFDAC_INST.DOUT  )
);

rfadc_drp_decode z_adc_drp_decode_0_i (

   .marker      (8'd0),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx0_u_adc.generate_block1.SIP_RFADC_INST.DOUT  )
);

rfadc_drp_decode z_adc_drp_decode_1_i (

   .marker      (8'd1),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx1_u_adc.generate_block1.SIP_RFADC_INST.DOUT  )
);

rfadc_drp_decode z_adc_drp_decode_2_i (

   .marker      (8'd2),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx2_u_adc.generate_block1.SIP_RFADC_INST.DOUT  )
);

rfadc_drp_decode z_adc_drp_decode_3_i (

   .marker      (8'd3),
   .enable      (1'd0),
   .drp_clk     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DCLK  ),
   .drp_addr    (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DADDR ),
   .drp_we      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DWE   ),
   .drp_di      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DI    ),
   .drp_en      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DEN   ),
   .drp_rdy     (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DRDY  ),
   .drp_do      (DUT.rfip_ex_i.ex_design.rfip.inst.rfdc_ex_rfip_0_rf_wrapper_i.rx3_u_adc.generate_block1.SIP_RFADC_INST.DOUT  )
);

`endif
//-----------------------------------------------------------------------------
// Data source block
//-----------------------------------------------------------------------------
demo_tb_rfdac_data_source #(
   .enable_override          (1'd0)
) dac_source_i (

   // AXI-Lite Interface
   .s_axi_awaddr          (m_tbgen_axi_awaddr[17:0] ), //
   .s_axi_awvalid         (m_tbgen_axi_awvalid), //
   .s_axi_awready         (m_tbgen_axi_awready), //
   .s_axi_wdata           (m_tbgen_axi_wdata  ), //
   .s_axi_wvalid          (m_tbgen_axi_wvalid ), //
   .s_axi_wready          (m_tbgen_axi_wready ), //
   .s_axi_bresp           (m_tbgen_axi_bresp  ), //
   .s_axi_bvalid          (m_tbgen_axi_bvalid ), //
   .s_axi_bready          (m_tbgen_axi_bready ), //
   .s_axi_araddr          (m_tbgen_axi_araddr[17:0] ), //
   .s_axi_arvalid         (m_tbgen_axi_arvalid), //
   .s_axi_arready         (m_tbgen_axi_arready), //
   .s_axi_rdata           (m_tbgen_axi_rdata  ), //
   .s_axi_rresp           (m_tbgen_axi_rresp  ), //
   .s_axi_rvalid          (m_tbgen_axi_rvalid ), //
   .s_axi_rready          (m_tbgen_axi_rready ),  //

   .m00_tdata             (data_samples_out[0][255:0]   ),
   .m00_tvalid            (),
   .m00_tready            (1'b1),

   .m01_tdata             (data_samples_out[1][255:0]   ),
   .m01_tvalid            (),
   .m01_tready            (1'b1),

   .m02_tdata             (data_samples_out[2][255:0]   ),
   .m02_tvalid            (),
   .m02_tready            (1'b1),

   .m03_tdata             (data_samples_out[3][255:0]   ),
   .m03_tvalid            (),
   .m03_tready            (1'b1),

   .m10_tdata             (data_samples_out[4][255:0]   ),
   .m10_tvalid            (),
   .m10_tready            (1'b1),

   .m11_tdata             (data_samples_out[5][255:0]   ),
   .m11_tvalid            (),
   .m11_tready            (1'b1),

   .m12_tdata             (data_samples_out[6][255:0]   ),
   .m12_tvalid            (),
   .m12_tready            (1'b1),

   .m13_tdata             (data_samples_out[7][255:0]   ),
   .m13_tvalid            (),
   .m13_tready            (1'b1),

   .m20_tdata             (data_samples_out[8][255:0]   ),
   .m20_tvalid            (),
   .m20_tready            (1'b1),

   .m21_tdata             (data_samples_out[9][255:0]   ),
   .m21_tvalid            (),
   .m21_tready            (1'b1),

   .m22_tdata             (data_samples_out[10][255:0]   ),
   .m22_tvalid            (),
   .m22_tready            (1'b1),

   .m23_tdata             (data_samples_out[11][255:0]   ),
   .m23_tvalid            (),
   .m23_tready            (1'b1),

   .m30_tdata             (data_samples_out[12][255:0]   ),
   .m30_tvalid            (),
   .m30_tready            (1'b1),

   .m31_tdata             (data_samples_out[13][255:0]   ),
   .m31_tvalid            (),
   .m31_tready            (1'b1),

   .m32_tdata             (data_samples_out[14][255:0]   ),
   .m32_tvalid            (),
   .m32_tready            (1'b1),

   .m33_tdata             (data_samples_out[15][255:0]   ),
   .m33_tvalid            (),
   .m33_tready            (1'b1),

   .m0_axis_clock         (data_samples_req[0]   ), //

   .m1_axis_clock         (data_samples_req[1]   ), //

   .m2_axis_clock         (data_samples_req[2]   ), //

   .m3_axis_clock         (data_samples_req[3]   ), //

  .s_axi_aclk             (s_axi_aclk),
  .s_axi_aresetn          (s_axi_tb_aresetn)
  );

//-----------------------------------------------------------------------------
// Data sink block
//-----------------------------------------------------------------------------
demo_tb_rfadc_data_sink #(.p_connections(2))
  adc_sink_i (

   // AXI-Lite Interface
   .s_axi_awaddr          (m_tbcap_axi_awaddr[17:0] ), //
   .s_axi_awvalid         (m_tbcap_axi_awvalid), //
   .s_axi_awready         (m_tbcap_axi_awready), //
   .s_axi_wdata           (m_tbcap_axi_wdata  ), //
   .s_axi_wvalid          (m_tbcap_axi_wvalid ), //
   .s_axi_wready          (m_tbcap_axi_wready ), //
   .s_axi_bresp           (m_tbcap_axi_bresp  ), //
   .s_axi_bvalid          (m_tbcap_axi_bvalid ), //
   .s_axi_bready          (m_tbcap_axi_bready ), //
   .s_axi_araddr          (m_tbcap_axi_araddr[17:0] ), //
   .s_axi_arvalid         (m_tbcap_axi_arvalid), //
   .s_axi_arready         (m_tbcap_axi_arready), //
   .s_axi_rdata           (m_tbcap_axi_rdata  ), //
   .s_axi_rresp           (m_tbcap_axi_rresp  ), //
   .s_axi_rvalid          (m_tbcap_axi_rvalid ), //
   .s_axi_rready          (m_tbcap_axi_rready ),  //

   .s00_tdata             (data_samples_in[sample_addr] ),
   .s00_tvalid            (1'b1),
   .s00_tready            (),
   .s01_tdata             (data_samples_in_q[sample_addr] ),
   .s01_tvalid            (1'b1),
   .s01_tready            (),
   .s02_tdata             (data_samples_in[sample_addr] ),
   .s02_tvalid            (1'b1),
   .s02_tready            (),
   .s03_tdata             (data_samples_in_q[sample_addr] ),
   .s03_tvalid            (1'b1),
   .s03_tready            (),
   .s10_tdata             (data_samples_in[sample_addr] ),
   .s10_tvalid            (1'b1),
   .s10_tready            (),
   .s11_tdata             (data_samples_in_q[sample_addr] ),
   .s11_tvalid            (1'b1),
   .s11_tready            (),
   .s12_tdata             (data_samples_in[sample_addr] ),
   .s12_tvalid            (1'b1),
   .s12_tready            (),
   .s13_tdata             (data_samples_in_q[sample_addr] ),
   .s13_tvalid            (1'b1),
   .s13_tready            (),
   .s20_tdata             (data_samples_in[sample_addr] ),
   .s20_tvalid            (1'b1),
   .s20_tready            (),
   .s21_tdata             (data_samples_in_q[sample_addr] ),
   .s21_tvalid            (1'b1),
   .s21_tready            (),
   .s22_tdata             (data_samples_in[sample_addr] ),
   .s22_tvalid            (1'b1),
   .s22_tready            (),
   .s23_tdata             (data_samples_in_q[sample_addr] ),
   .s23_tvalid            (1'b1),
   .s23_tready            (),
   .s30_tdata             (data_samples_in[sample_addr] ),
   .s30_tvalid            (1'b1),
   .s30_tready            (),
   .s31_tdata             (data_samples_in_q[sample_addr] ),
   .s31_tvalid            (1'b1),
   .s31_tready            (),
   .s32_tdata             (data_samples_in[sample_addr] ),
   .s32_tvalid            (1'b1),
   .s32_tready            (),
   .s33_tdata             (data_samples_in_q[sample_addr] ),
   .s33_tvalid            (1'b1),
   .s33_tready            (),

   .s0_axis_clock (s_axi_aclk), //

   .s1_axis_clock (s_axi_aclk), //

   .s2_axis_clock (s_axi_aclk), //

   .s3_axis_clock (s_axi_aclk), //

  .error_flag             (adc_sink_error_flag),
  .done_flag              (adc_sink_done_flag ),
  .s_axi_aclk             (s_axi_aclk),
  .s_axi_aresetn          (s_axi_tb_aresetn)

  );

  always @(posedge s_axi_aclk) begin
    sample_addr <= sample_addr + 1;
  end

endmodule
