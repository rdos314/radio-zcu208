//----------------------------------------------------------------------------
// Title : RFADC/RFDAC Primative Wrapper
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


`timescale 1ns / 1ps
`define DLY #1

//***********************************Entity Declaration************************
(* DowngradeIPIdentifiedWarnings="yes" *)
module rfdc_ex_rfip_0_rf_wrapper (
  // ADC Reference Clock for Tile 0
  input             adc0_clk_p,
  input             adc0_clk_n,

  // ADC PLL Reference Clock for Tile 0
  input             adc0_pll_clk,

  // ADC Fabric Feedback Clock for Tile 0
  output            clk_adc0,

  // ADC0 Fabric Clock
  input             adc0_fabricclk,
  input             adc0_fabricclk_val,

  input             adc0_clk_fifo_lm,
  input             adc0_obs_fabricclk_val,

  // ADC Common Status for Tile 0
  output  [23:0]    adc0_common_stat,

  // ADC Clock Detection for Tile 0
  input   [15:0]    adc0_clk_detect,
  input             adc0_clk_detector_ok,

  // ADC Reference Clock for Tile 1
  input             adc1_clk_p,
  input             adc1_clk_n,

  // ADC PLL Reference Clock for Tile 1
  input             adc1_pll_clk,

  // ADC Fabric Feedback Clock for Tile 1
  output            clk_adc1,

  // ADC1 Fabric Clock
  input             adc1_fabricclk,
  input             adc1_fabricclk_val,

  input             adc1_clk_fifo_lm,
  input             adc1_obs_fabricclk_val,

  // ADC Common Status for Tile 1
  output  [23:0]    adc1_common_stat,

  // ADC Clock Detection for Tile 1
  input   [15:0]    adc1_clk_detect,
  input             adc1_clk_detector_ok,

  // ADC Reference Clock for Tile 2
  input             adc2_clk_p,
  input             adc2_clk_n,

  // ADC PLL Reference Clock for Tile 2
  input             adc2_pll_clk,

  // ADC Fabric Feedback Clock for Tile 2
  output            clk_adc2,

  // ADC2 Fabric Clock
  input             adc2_fabricclk,
  input             adc2_fabricclk_val,

  input             adc2_clk_fifo_lm,
  input             adc2_obs_fabricclk_val,

  // ADC Common Status for Tile 2
  output  [23:0]    adc2_common_stat,

  // ADC Clock Detection for Tile 2
  input   [15:0]    adc2_clk_detect,
  input             adc2_clk_detector_ok,

  // ADC Reference Clock for Tile 3
  input             adc3_clk_p,
  input             adc3_clk_n,

  // ADC PLL Reference Clock for Tile 3
  input             adc3_pll_clk,

  // ADC Fabric Feedback Clock for Tile 3
  output            clk_adc3,

  // ADC3 Fabric Clock
  input             adc3_fabricclk,
  input             adc3_fabricclk_val,

  input             adc3_clk_fifo_lm,
  input             adc3_obs_fabricclk_val,

  // ADC Common Status for Tile 3
  output  [23:0]    adc3_common_stat,

  // ADC Clock Detection for Tile 3
  input   [15:0]    adc3_clk_detect,
  input             adc3_clk_detector_ok,

  input             vin0_01_p,
  input             vin0_01_n,

  input             vin0_23_p,
  input             vin0_23_n,

  input             vin1_01_p,
  input             vin1_01_n,

  input             vin1_23_p,
  input             vin1_23_n,

  input             vin2_01_p,
  input             vin2_01_n,

  input             vin2_23_p,
  input             vin2_23_n,

  input             vin3_01_p,
  input             vin3_01_n,

  input             vin3_23_p,
  input             vin3_23_n,

  // ADC AXI Streaming Data for ADC00
  output [191:0]    adc00_data_out,
  output            adc00_valid_out,
  input             adc00_ready_in,

  output            adc00_obs_valid_out,
  output  [23:0]    adc00_stat,

  // ADC AXI Streaming Data for ADC01
  output [191:0]    adc01_data_out,
  output            adc01_valid_out,
  input             adc01_ready_in,

  output            adc01_obs_valid_out,
  output  [23:0]    adc01_stat,

  // ADC AXI Streaming Data for ADC02
  output [191:0]    adc02_data_out,
  output            adc02_valid_out,
  input             adc02_ready_in,

  output            adc02_obs_valid_out,
  output  [23:0]    adc02_stat,

  // ADC AXI Streaming Data for ADC03
  output [191:0]    adc03_data_out,
  output            adc03_valid_out,
  input             adc03_ready_in,

  output            adc03_obs_valid_out,
  output  [23:0]    adc03_stat,

  // ADC AXI Streaming Data for ADC10
  output [191:0]    adc10_data_out,
  output            adc10_valid_out,
  input             adc10_ready_in,

  output            adc10_obs_valid_out,
  output  [23:0]    adc10_stat,

  // ADC AXI Streaming Data for ADC11
  output [191:0]    adc11_data_out,
  output            adc11_valid_out,
  input             adc11_ready_in,

  output            adc11_obs_valid_out,
  output  [23:0]    adc11_stat,

  // ADC AXI Streaming Data for ADC12
  output [191:0]    adc12_data_out,
  output            adc12_valid_out,
  input             adc12_ready_in,

  output            adc12_obs_valid_out,
  output  [23:0]    adc12_stat,

  // ADC AXI Streaming Data for ADC13
  output [191:0]    adc13_data_out,
  output            adc13_valid_out,
  input             adc13_ready_in,

  output            adc13_obs_valid_out,
  output  [23:0]    adc13_stat,

  // ADC AXI Streaming Data for ADC20
  output [191:0]    adc20_data_out,
  output            adc20_valid_out,
  input             adc20_ready_in,

  output            adc20_obs_valid_out,
  output  [23:0]    adc20_stat,

  // ADC AXI Streaming Data for ADC21
  output [191:0]    adc21_data_out,
  output            adc21_valid_out,
  input             adc21_ready_in,

  output            adc21_obs_valid_out,
  output  [23:0]    adc21_stat,

  // ADC AXI Streaming Data for ADC22
  output [191:0]    adc22_data_out,
  output            adc22_valid_out,
  input             adc22_ready_in,

  output            adc22_obs_valid_out,
  output  [23:0]    adc22_stat,

  // ADC AXI Streaming Data for ADC23
  output [191:0]    adc23_data_out,
  output            adc23_valid_out,
  input             adc23_ready_in,

  output            adc23_obs_valid_out,
  output  [23:0]    adc23_stat,

  // ADC AXI Streaming Data for ADC30
  output [191:0]    adc30_data_out,
  output            adc30_valid_out,
  input             adc30_ready_in,

  output            adc30_obs_valid_out,
  output  [23:0]    adc30_stat,

  // ADC AXI Streaming Data for ADC31
  output [191:0]    adc31_data_out,
  output            adc31_valid_out,
  input             adc31_ready_in,

  output            adc31_obs_valid_out,
  output  [23:0]    adc31_stat,

  // ADC AXI Streaming Data for ADC32
  output [191:0]    adc32_data_out,
  output            adc32_valid_out,
  input             adc32_ready_in,

  output            adc32_obs_valid_out,
  output  [23:0]    adc32_stat,

  // ADC AXI Streaming Data for ADC33
  output [191:0]    adc33_data_out,
  output            adc33_valid_out,
  input             adc33_ready_in,

  output            adc33_obs_valid_out,
  output  [23:0]    adc33_stat,

  // DAC Reference Clock for Tile 0
  input             dac0_clk_p,
  input             dac0_clk_n,

  // DAC PLL Reference Clock for Tile 0
  input             dac0_pll_clk,

  // DAC0 Fabric Clock
  input             dac0_fabricclk,
  input             dac0_fabricclk_val,

  // DAC Fabric Feedback Clock for Tile 0
  output            clk_dac0,

  // DAC Common Status for Tile 0
  output  [23:0]    dac0_common_stat,

  // DAC Clock Detection for Tile 0
  input   [15:0]    dac0_clk_detect,

  // DAC Reference Clock for Tile 1
  input             dac1_clk_p,
  input             dac1_clk_n,

  // DAC PLL Reference Clock for Tile 1
  input             dac1_pll_clk,

  // DAC1 Fabric Clock
  input             dac1_fabricclk,
  input             dac1_fabricclk_val,

  // DAC Fabric Feedback Clock for Tile 1
  output            clk_dac1,

  // DAC Common Status for Tile 1
  output  [23:0]    dac1_common_stat,

  // DAC Clock Detection for Tile 1
  input   [15:0]    dac1_clk_detect,

  // DAC Reference Clock for Tile 2
  input             dac2_clk_p,
  input             dac2_clk_n,

  // DAC PLL Reference Clock for Tile 2
  input             dac2_pll_clk,

  // DAC2 Fabric Clock
  input             dac2_fabricclk,
  input             dac2_fabricclk_val,

  // DAC Fabric Feedback Clock for Tile 2
  output            clk_dac2,

  // DAC Common Status for Tile 2
  output  [23:0]    dac2_common_stat,

  // DAC Clock Detection for Tile 2
  input   [15:0]    dac2_clk_detect,

  // DAC Reference Clock for Tile 3
  input             dac3_clk_p,
  input             dac3_clk_n,

  // DAC PLL Reference Clock for Tile 3
  input             dac3_pll_clk,

  // DAC3 Fabric Clock
  input             dac3_fabricclk,
  input             dac3_fabricclk_val,

  // DAC Fabric Feedback Clock for Tile 3
  output            clk_dac3,

  // DAC Common Status for Tile 3
  output  [23:0]    dac3_common_stat,

  // DAC Clock Detection for Tile 3
  input   [15:0]    dac3_clk_detect,

  output            vout00_p,
  output            vout00_n,

  output            vout02_p,
  output            vout02_n,

  output            vout10_p,
  output            vout10_n,

  output            vout12_p,
  output            vout12_n,

  output            vout20_p,
  output            vout20_n,

  output            vout22_p,
  output            vout22_n,

  output            vout30_p,
  output            vout30_n,

  output            vout32_p,
  output            vout32_n,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac00_data_in,
  input             dac00_valid_in,
  output            dac00_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac01_data_in,
  input             dac01_valid_in,
  output            dac01_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac02_data_in,
  input             dac02_valid_in,
  output            dac02_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac03_data_in,
  input             dac03_valid_in,
  output            dac03_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac10_data_in,
  input             dac10_valid_in,
  output            dac10_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac11_data_in,
  input             dac11_valid_in,
  output            dac11_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac12_data_in,
  input             dac12_valid_in,
  output            dac12_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac13_data_in,
  input             dac13_valid_in,
  output            dac13_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac20_data_in,
  input             dac20_valid_in,
  output            dac20_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac21_data_in,
  input             dac21_valid_in,
  output            dac21_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac22_data_in,
  input             dac22_valid_in,
  output            dac22_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac23_data_in,
  input             dac23_valid_in,
  output            dac23_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac30_data_in,
  input             dac30_valid_in,
  output            dac30_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac31_data_in,
  input             dac31_valid_in,
  output            dac31_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac32_data_in,
  input             dac32_valid_in,
  output            dac32_ready_out,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    dac33_data_in,
  input             dac33_valid_in,
  output            dac33_ready_out,

  input  [11:0]     drp_addr,
  input  [15:0]     drp_di,

  input             dac0_drp_en,
  input             dac0_drp_we,
  output [15:0]     dac0_drp_do,
  output            dac0_drp_rdy,
  input             dac0_drp_req,
  output            dac0_drp_gnt,


  input             dac1_drp_en,
  input             dac1_drp_we,
  output [15:0]     dac1_drp_do,
  output            dac1_drp_rdy,
  input             dac1_drp_req,
  output            dac1_drp_gnt,


  input             dac2_drp_en,
  input             dac2_drp_we,
  output [15:0]     dac2_drp_do,
  output            dac2_drp_rdy,
  input             dac2_drp_req,
  output            dac2_drp_gnt,


  input             dac3_drp_en,
  input             dac3_drp_we,
  output [15:0]     dac3_drp_do,
  output            dac3_drp_rdy,
  input             dac3_drp_req,
  output            dac3_drp_gnt,


  input             adc0_drp_en,
  input             adc0_drp_we,
  output [15:0]     adc0_drp_do,
  output            adc0_drp_rdy,
  input             adc0_drp_req,
  output            adc0_drp_gnt,

  input             adc1_drp_en,
  input             adc1_drp_we,
  output [15:0]     adc1_drp_do,
  output            adc1_drp_rdy,
  input             adc1_drp_req,
  output            adc1_drp_gnt,

  input             adc2_drp_en,
  input             adc2_drp_we,
  output [15:0]     adc2_drp_do,
  output            adc2_drp_rdy,
  input             adc2_drp_req,
  output            adc2_drp_gnt,

  input             adc3_drp_en,
  input             adc3_drp_we,
  output [15:0]     adc3_drp_do,
  output            adc3_drp_rdy,
  input             adc3_drp_req,
  output            adc3_drp_gnt,

  input             adc0_reset,
  input             adc0_restart,
  output            adc0_done,
  output [3:0]      adc0_status,
  output            adc0_pll_lock,
  output            adc0_pll_error,
  output            adc0_sm_reset,

  input             adc1_reset,
  input             adc1_restart,
  output            adc1_done,
  output [3:0]      adc1_status,
  output            adc1_pll_lock,
  output            adc1_pll_error,
  output            adc1_sm_reset,

  input             adc2_reset,
  input             adc2_restart,
  output            adc2_done,
  output [3:0]      adc2_status,
  output            adc2_pll_lock,
  output            adc2_pll_error,
  output            adc2_sm_reset,

  input             adc3_reset,
  input             adc3_restart,
  output            adc3_done,
  output [3:0]      adc3_status,
  output            adc3_pll_lock,
  output            adc3_pll_error,
  output            adc3_sm_reset,

  input             dac0_reset,
  input             dac0_restart,
  output            dac0_done,
  output [3:0]      dac0_status,
  output            dac0_pll_lock,
  output            dac0_pll_error,
  output            dac0_sm_reset,

  input             dac1_reset,
  input             dac1_restart,
  output            dac1_done,
  output [3:0]      dac1_status,
  output            dac1_pll_lock,
  output            dac1_pll_error,
  output            dac1_sm_reset,

  input             dac2_reset,
  input             dac2_restart,
  output            dac2_done,
  output [3:0]      dac2_status,
  output            dac2_pll_lock,
  output            dac2_pll_error,
  output            dac2_sm_reset,

  input             dac3_reset,
  input             dac3_restart,
  output            dac3_done,
  output [3:0]      dac3_status,
  output            dac3_pll_lock,
  output            dac3_pll_error,
  output            dac3_sm_reset,

  input  [3:0]      adc0_start_stage,
  input  [3:0]      adc0_end_stage,
  input [23:0]      adc0_supply_timer,
  input [23:0]      adc0_regulator_timer,
  input [23:0]      adc0_calibration_timer,
  input [31:0]      adc0_calibration_delay,
  input [31:0]      adc0_calibration_timer0,
  input [31:0]      adc0_calibration_timer1,
  input [31:0]      adc0_calibration_timer2,
  input [31:0]      adc0_calibration_timer3,
  input [31:0]      adc0_calibration_timer4,
  input             adc0_const_speedup,
  input             adc0_cal_speedup,
  input             adc0_fifo_disable,
  input             adc0_obs_fifo_disable,

  input  [3:0]      adc1_start_stage,
  input  [3:0]      adc1_end_stage,
  input [23:0]      adc1_supply_timer,
  input [23:0]      adc1_regulator_timer,
  input [23:0]      adc1_calibration_timer,
  input [31:0]      adc1_calibration_delay,
  input [31:0]      adc1_calibration_timer0,
  input [31:0]      adc1_calibration_timer1,
  input [31:0]      adc1_calibration_timer2,
  input [31:0]      adc1_calibration_timer3,
  input [31:0]      adc1_calibration_timer4,
  input             adc1_const_speedup,
  input             adc1_cal_speedup,
  input             adc1_fifo_disable,
  input             adc1_obs_fifo_disable,

  input  [3:0]      adc2_start_stage,
  input  [3:0]      adc2_end_stage,
  input [23:0]      adc2_supply_timer,
  input [23:0]      adc2_regulator_timer,
  input [23:0]      adc2_calibration_timer,
  input [31:0]      adc2_calibration_delay,
  input [31:0]      adc2_calibration_timer0,
  input [31:0]      adc2_calibration_timer1,
  input [31:0]      adc2_calibration_timer2,
  input [31:0]      adc2_calibration_timer3,
  input [31:0]      adc2_calibration_timer4,
  input             adc2_const_speedup,
  input             adc2_cal_speedup,
  input             adc2_fifo_disable,
  input             adc2_obs_fifo_disable,

  input  [3:0]      adc3_start_stage,
  input  [3:0]      adc3_end_stage,
  input [23:0]      adc3_supply_timer,
  input [23:0]      adc3_regulator_timer,
  input [23:0]      adc3_calibration_timer,
  input [31:0]      adc3_calibration_delay,
  input [31:0]      adc3_calibration_timer0,
  input [31:0]      adc3_calibration_timer1,
  input [31:0]      adc3_calibration_timer2,
  input [31:0]      adc3_calibration_timer3,
  input [31:0]      adc3_calibration_timer4,
  input             adc3_const_speedup,
  input             adc3_cal_speedup,
  input             adc3_fifo_disable,
  input             adc3_obs_fifo_disable,

  input  [3:0]      dac0_start_stage,
  input  [3:0]      dac0_end_stage,
  input [23:0]      dac0_supply_timer,
  input [23:0]      dac0_regulator_timer,
  input             dac0_fifo_disable,

  input  [3:0]      dac1_start_stage,
  input  [3:0]      dac1_end_stage,
  input [23:0]      dac1_supply_timer,
  input [23:0]      dac1_regulator_timer,
  input             dac1_fifo_disable,

  input  [3:0]      dac2_start_stage,
  input  [3:0]      dac2_end_stage,
  input [23:0]      dac2_supply_timer,
  input [23:0]      dac2_regulator_timer,
  input             dac2_fifo_disable,

  input  [3:0]      dac3_start_stage,
  input  [3:0]      dac3_end_stage,
  input [23:0]      dac3_supply_timer,
  input [23:0]      dac3_regulator_timer,
  input             dac3_fifo_disable,

  // External SYSREF input
  input             sysref_in_p,
  input             sysref_in_n,

  // ADC Multitile SYNC FIFO
  input             user_sysref_adc,
  input             mt_adc_fifo_en,
  input             mt_adc_fifo_src,

  // DAC Multitile SYNC FIFO
  input             user_sysref_dac,
  input             mt_dac_fifo_en,
  input             mt_dac_fifo_src,

  // DAC Debug Ports
  // DAC0
  input             dac0_sysref_gate,
  input  [14:0]     dac0_cmn_control,
  input  [15:0]     dac00_control,
  input  [15:0]     dac01_control,
  input  [15:0]     dac02_control,
  input  [15:0]     dac03_control,

  output [23:0]     dac00_status,
  output [23:0]     dac01_status,
  output [23:0]     dac02_status,
  output [23:0]     dac03_status,

  output            dac0_pll_dmon,

  output [11:0]     dac0_daddr_mon,
  output [15:0]     dac0_di_mon,
  output            dac0_den_mon,
  output            dac0_dwe_mon,
  output [15:0]     dac0_do_mon,
  output            dac0_drdy_mon,
  output            dac0_dreq_mon,
  output            dac0_dgnt_mon,

  output            dac0_powerup_state_interrupt,
  // DAC1
  input             dac1_sysref_gate,
  input  [14:0]     dac1_cmn_control,
  input  [15:0]     dac10_control,
  input  [15:0]     dac11_control,
  input  [15:0]     dac12_control,
  input  [15:0]     dac13_control,

  output [23:0]     dac10_status,
  output [23:0]     dac11_status,
  output [23:0]     dac12_status,
  output [23:0]     dac13_status,

  output            dac1_pll_dmon,

  output [11:0]     dac1_daddr_mon,
  output [15:0]     dac1_di_mon,
  output            dac1_den_mon,
  output            dac1_dwe_mon,
  output [15:0]     dac1_do_mon,
  output            dac1_drdy_mon,
  output            dac1_dreq_mon,
  output            dac1_dgnt_mon,

  output            dac1_powerup_state_interrupt,
  // DAC2
  input             dac2_sysref_gate,
  input  [14:0]     dac2_cmn_control,
  input  [15:0]     dac20_control,
  input  [15:0]     dac21_control,
  input  [15:0]     dac22_control,
  input  [15:0]     dac23_control,

  output [23:0]     dac20_status,
  output [23:0]     dac21_status,
  output [23:0]     dac22_status,
  output [23:0]     dac23_status,

  output            dac2_pll_dmon,

  output [11:0]     dac2_daddr_mon,
  output [15:0]     dac2_di_mon,
  output            dac2_den_mon,
  output            dac2_dwe_mon,
  output [15:0]     dac2_do_mon,
  output            dac2_drdy_mon,
  output            dac2_dreq_mon,
  output            dac2_dgnt_mon,

  output            dac2_powerup_state_interrupt,
  // DAC3
  input             dac3_sysref_gate,
  input  [14:0]     dac3_cmn_control,
  input  [15:0]     dac30_control,
  input  [15:0]     dac31_control,
  input  [15:0]     dac32_control,
  input  [15:0]     dac33_control,

  output [23:0]     dac30_status,
  output [23:0]     dac31_status,
  output [23:0]     dac32_status,
  output [23:0]     dac33_status,

  output            dac3_pll_dmon,

  output [11:0]     dac3_daddr_mon,
  output [15:0]     dac3_di_mon,
  output            dac3_den_mon,
  output            dac3_dwe_mon,
  output [15:0]     dac3_do_mon,
  output            dac3_drdy_mon,
  output            dac3_dreq_mon,
  output            dac3_dgnt_mon,

  output            dac3_powerup_state_interrupt,

  // ADC Debug Ports
  // ADC0
  input             adc0_sysref_gate,
  input [14:0]      adc0_cmn_control,
  input [15:0]      adc00_control,
  input [15:0]      adc01_control,
  input [15:0]      adc02_control,
  input [15:0]      adc03_control,

  output            adc0_pll_dmon,

  output [11:0]     adc0_daddr_mon,
  output [15:0]     adc0_di_mon,
  output            adc0_den_mon,
  output            adc0_dwe_mon,
  output [15:0]     adc0_do_mon,
  output            adc0_drdy_mon,
  output            adc0_dreq_mon,
  output            adc0_dgnt_mon,

  output            adc0_powerup_state_interrupt,

  input             adc00_signal_lost,
  input             adc01_signal_lost,
  input             adc02_signal_lost,
  input             adc03_signal_lost,
  output            adc00_bg_cal_off,
  output            adc01_bg_cal_off,
  output            adc02_bg_cal_off,
  output            adc03_bg_cal_off,
  input             adc00_cal_freeze,
  input             adc01_cal_freeze,
  input             adc02_cal_freeze,
  input             adc03_cal_freeze,

  // ADC1
  input             adc1_sysref_gate,
  input [14:0]      adc1_cmn_control,
  input [15:0]      adc10_control,
  input [15:0]      adc11_control,
  input [15:0]      adc12_control,
  input [15:0]      adc13_control,

  output            adc1_pll_dmon,

  output [11:0]     adc1_daddr_mon,
  output [15:0]     adc1_di_mon,
  output            adc1_den_mon,
  output            adc1_dwe_mon,
  output [15:0]     adc1_do_mon,
  output            adc1_drdy_mon,
  output            adc1_dreq_mon,
  output            adc1_dgnt_mon,

  output            adc1_powerup_state_interrupt,

  input             adc10_signal_lost,
  input             adc11_signal_lost,
  input             adc12_signal_lost,
  input             adc13_signal_lost,
  output            adc10_bg_cal_off,
  output            adc11_bg_cal_off,
  output            adc12_bg_cal_off,
  output            adc13_bg_cal_off,
  input             adc10_cal_freeze,
  input             adc11_cal_freeze,
  input             adc12_cal_freeze,
  input             adc13_cal_freeze,

  // ADC2
  input             adc2_sysref_gate,
  input [14:0]      adc2_cmn_control,
  input [15:0]      adc20_control,
  input [15:0]      adc21_control,
  input [15:0]      adc22_control,
  input [15:0]      adc23_control,

  output            adc2_pll_dmon,

  output [11:0]     adc2_daddr_mon,
  output [15:0]     adc2_di_mon,
  output            adc2_den_mon,
  output            adc2_dwe_mon,
  output [15:0]     adc2_do_mon,
  output            adc2_drdy_mon,
  output            adc2_dreq_mon,
  output            adc2_dgnt_mon,

  output            adc2_powerup_state_interrupt,

  input             adc20_signal_lost,
  input             adc21_signal_lost,
  input             adc22_signal_lost,
  input             adc23_signal_lost,
  output            adc20_bg_cal_off,
  output            adc21_bg_cal_off,
  output            adc22_bg_cal_off,
  output            adc23_bg_cal_off,
  input             adc20_cal_freeze,
  input             adc21_cal_freeze,
  input             adc22_cal_freeze,
  input             adc23_cal_freeze,

  // ADC3
  input             adc3_sysref_gate,
  input [14:0]      adc3_cmn_control,
  input [15:0]      adc30_control,
  input [15:0]      adc31_control,
  input [15:0]      adc32_control,
  input [15:0]      adc33_control,

  output            adc3_pll_dmon,

  output [11:0]     adc3_daddr_mon,
  output [15:0]     adc3_di_mon,
  output            adc3_den_mon,
  output            adc3_dwe_mon,
  output [15:0]     adc3_do_mon,
  output            adc3_drdy_mon,
  output            adc3_dreq_mon,
  output            adc3_dgnt_mon,

  output            adc3_powerup_state_interrupt,

  input             adc30_signal_lost,
  input             adc31_signal_lost,
  input             adc32_signal_lost,
  input             adc33_signal_lost,
  output            adc30_bg_cal_off,
  output            adc31_bg_cal_off,
  output            adc32_bg_cal_off,
  output            adc33_bg_cal_off,
  input             adc30_cal_freeze,
  input             adc31_cal_freeze,
  input             adc32_cal_freeze,
  input             adc33_cal_freeze,

  input [15:0]      startup_delay,
  input             drpclk,
  input             sm_start,
  input             reset
);

  parameter NMR_DAC_TILES = 4;
  parameter NMR_ADC_TILES = 4;

  wire                [3:0]       dac_drpen;
  wire                [3:0]       dac_drpwe;
  wire               [63:0]       dac_drpout;
  wire                [3:0]       dac_drprdy;
  wire               [47:0]       dac_drpaddr;
  wire               [63:0]       dac_drpdi;
  wire  [NMR_DAC_TILES-1:0]       dac_common_ctrl;
  wire  [(NMR_DAC_TILES*24)-1:0]  dac_common_stat;

  wire        [NMR_DAC_TILES-1:0] dac_fabric_clk;
  wire        [NMR_DAC_TILES-1:0] clk_dac;
  wire        [NMR_DAC_TILES-1:0] dac_pll_clk;
  wire        [NMR_DAC_TILES-1:0] dac_clk_p;
  wire        [NMR_DAC_TILES-1:0] dac_clk_n;

  wire  [(NMR_DAC_TILES*256)-1:0] data_dac0;
  wire  [(NMR_DAC_TILES*256)-1:0] data_dac1;
  wire  [(NMR_DAC_TILES*256)-1:0] data_dac2;
  wire  [(NMR_DAC_TILES*256)-1:0] data_dac3;

  wire                            dac0_drp_en_i;
  wire                            dac0_drp_we_i;
  wire                     [11:0] dac0_drp_addr;
  wire                     [15:0] dac0_drpdi;
  wire                      [3:0] dac0_status_bits;
  wire                            dac0_pll_lock_sync;
  wire                            dac0_powerup_state_sync;
  wire                            dac0_supplies_up_sync;
  wire                            dac0_clk_present_sync;
  wire                            dac0_done_sync;
  reg                             dac0_done_i;
  wire                            dac0_sm_reset_i;

  wire                            dac1_drp_en_i;
  wire                            dac1_drp_we_i;
  wire                     [11:0] dac1_drp_addr;
  wire                     [15:0] dac1_drpdi;
  wire                      [3:0] dac1_status_bits;
  wire                            dac1_pll_lock_sync;
  wire                            dac1_powerup_state_sync;
  wire                            dac1_supplies_up_sync;
  wire                            dac1_clk_present_sync;
  wire                            dac1_done_sync;
  reg                             dac1_done_i;
  wire                            dac1_sm_reset_i;

  wire                            dac2_drp_en_i;
  wire                            dac2_drp_we_i;
  wire                     [11:0] dac2_drp_addr;
  wire                     [15:0] dac2_drpdi;
  wire                      [3:0] dac2_status_bits;
  wire                            dac2_pll_lock_sync;
  wire                            dac2_powerup_state_sync;
  wire                            dac2_supplies_up_sync;
  wire                            dac2_clk_present_sync;
  wire                            dac2_done_sync;
  reg                             dac2_done_i;
  wire                            dac2_sm_reset_i;

  wire                            dac3_drp_en_i;
  wire                            dac3_drp_we_i;
  wire                     [11:0] dac3_drp_addr;
  wire                     [15:0] dac3_drpdi;
  wire                      [3:0] dac3_status_bits;
  wire                            dac3_pll_lock_sync;
  wire                            dac3_powerup_state_sync;
  wire                            dac3_supplies_up_sync;
  wire                            dac3_clk_present_sync;
  wire                            dac3_done_sync;
  reg                             dac3_done_i;
  wire                            dac3_sm_reset_i;

  wire       [NMR_ADC_TILES-1:0] adc_drpen;
  wire       [NMR_ADC_TILES-1:0] adc_drpwe;
  wire  [(NMR_ADC_TILES*16)-1:0] adc_drpout;
  wire       [NMR_ADC_TILES-1:0] adc_drprdy;
  wire  [(NMR_ADC_TILES*12)-1:0] adc_drpaddr;
  wire  [(NMR_ADC_TILES*16)-1:0] adc_drpdi;
  wire         [NMR_ADC_TILES:0] adc_common_ctrl;
  wire         [NMR_ADC_TILES:0] adc_common_ctrl_bit9;
  wire  [(NMR_ADC_TILES*24)-1:0] adc_common_stat;
  wire  [(NMR_ADC_TILES*24)-1:0] adc0_stat;
  wire  [(NMR_ADC_TILES*24)-1:0] adc1_stat;
  wire  [(NMR_ADC_TILES*24)-1:0] adc2_stat;
  wire  [(NMR_ADC_TILES*24)-1:0] adc3_stat;

  wire                     [8:0] sysref_north;
  wire                     [8:0] sysref_south;
  wire                     [8:0] clk_north;
  wire                     [8:0] clk_south;
  wire                     [8:0] t1_allowed;

  wire        [NMR_ADC_TILES-1:0] adc_fabric_clk;
  wire        [NMR_ADC_TILES-1:0] adc_fifo_clk;
  wire        [NMR_ADC_TILES-1:0] clk_adc;
  wire        [NMR_ADC_TILES-1:0] adc_pll_clk;
  wire        [NMR_ADC_TILES-1:0] adc_clk_p;
  wire        [NMR_ADC_TILES-1:0] adc_clk_n;

  wire  [(NMR_ADC_TILES*192)-1:0] data_adc0;
  wire  [(NMR_ADC_TILES*192)-1:0] data_adc1;
  wire  [(NMR_ADC_TILES*192)-1:0] data_adc2;
  wire  [(NMR_ADC_TILES*192)-1:0] data_adc3;

  wire                            adc0_drp_en_i;
  wire                            adc0_drp_we_i;
  wire                     [11:0] adc0_drp_addr;
  wire                     [15:0] adc0_drpdi;
  wire                      [3:0] adc0_status_bits;
  wire                      [3:0] adc0_signal_lost;
  wire                      [3:0] adc0_bg_cal_off;
  wire                            adc0_pll_lock_sync;
  wire                            adc0_powerup_state_sync;
  wire                            adc0_supplies_up_sync;
  wire                            adc0_clk_present_sync;
  wire                            adc0_done_sync;
  wire                            adc0_dsa_update;
  (* keep = "true" *) reg         adc0_done_i;
  wire                            adc0_obs_done_sync;
  (* keep = "true" *) reg         adc0_obs_done_i;
  wire                            adc0_sm_reset_i;

  wire                            adc1_drp_en_i;
  wire                            adc1_drp_we_i;
  wire                     [11:0] adc1_drp_addr;
  wire                     [15:0] adc1_drpdi;
  wire                      [3:0] adc1_status_bits;
  wire                      [3:0] adc1_signal_lost;
  wire                      [3:0] adc1_bg_cal_off;
  wire                            adc1_pll_lock_sync;
  wire                            adc1_powerup_state_sync;
  wire                            adc1_supplies_up_sync;
  wire                            adc1_clk_present_sync;
  wire                            adc1_done_sync;
  wire                            adc1_dsa_update;
  (* keep = "true" *) reg         adc1_done_i;
  wire                            adc1_obs_done_sync;
  (* keep = "true" *) reg         adc1_obs_done_i;
  wire                            adc1_sm_reset_i;

  wire                            adc2_drp_en_i;
  wire                            adc2_drp_we_i;
  wire                     [11:0] adc2_drp_addr;
  wire                     [15:0] adc2_drpdi;
  wire                      [3:0] adc2_status_bits;
  wire                      [3:0] adc2_signal_lost;
  wire                      [3:0] adc2_bg_cal_off;
  wire                            adc2_pll_lock_sync;
  wire                            adc2_powerup_state_sync;
  wire                            adc2_supplies_up_sync;
  wire                            adc2_clk_present_sync;
  wire                            adc2_done_sync;
  wire                            adc2_dsa_update;
  (* keep = "true" *) reg         adc2_done_i;
  wire                            adc2_obs_done_sync;
  (* keep = "true" *) reg         adc2_obs_done_i;
  wire                            adc2_sm_reset_i;

  wire                            adc3_drp_en_i;
  wire                            adc3_drp_we_i;
  wire                     [11:0] adc3_drp_addr;
  wire                     [15:0] adc3_drpdi;
  wire                      [3:0] adc3_status_bits;
  wire                      [3:0] adc3_signal_lost;
  wire                      [3:0] adc3_bg_cal_off;
  wire                            adc3_pll_lock_sync;
  wire                            adc3_powerup_state_sync;
  wire                            adc3_supplies_up_sync;
  wire                            adc3_clk_present_sync;
  wire                            adc3_done_sync;
  wire                            adc3_dsa_update;
  (* keep = "true" *) reg         adc3_done_i;
  wire                            adc3_obs_done_sync;
  (* keep = "true" *) reg         adc3_obs_done_i;
  wire                            adc3_sm_reset_i;

  wire                            por_sm_reset_i;
  reg                             por_sm_reset;


  wire [3:0] dac_fifo_en;
  wire [3:0] dac_mt_common_ctrl;
  wire [3:0] adc_fifo_en;
  wire [3:0] adc_mt_common_ctrl;

  wire clk_dac_to_adc;

  assign clk_dac0     = clk_dac[0];
  assign clk_dac1     = clk_dac[1];
  assign clk_dac2     = clk_dac[2];
  assign clk_dac3     = clk_dac[3];

  // Assign DAC signals
  assign dac_drpen        = {dac3_drp_en_i, dac2_drp_en_i, dac1_drp_en_i, dac0_drp_en_i};
  assign dac_drpwe        = {dac3_drp_we_i, dac2_drp_we_i, dac1_drp_we_i, dac0_drp_we_i};
  assign dac_drpaddr      = {dac3_drp_addr, dac2_drp_addr, dac1_drp_addr, dac0_drp_addr};
  assign dac_drpdi        = {dac3_drpdi, dac2_drpdi, dac1_drpdi, dac0_drpdi};
  assign dac_common_ctrl  = {dac3_done_sync, dac2_done_sync, dac1_done_sync, dac0_done_sync};
  assign dac_mt_common_ctrl[0]  = dac0_done_sync;
  assign dac_mt_common_ctrl[1]  = dac1_done_sync;
  assign dac_mt_common_ctrl[2]  = dac2_done_sync;
  assign dac_mt_common_ctrl[3]  = dac3_done_sync;

  // Synchronize common control bus onto the fabric clock for input
  // to the common control bus of the converters
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac0_done_i (
      .src_clk(1'b0),
      .src_in(dac0_done_i),
      .dest_clk(dac_fabric_clk[0]),
      .dest_out(dac0_done_sync)
    );

  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (dac0_end_stage >= 4'hA) begin
      if (dac0_fifo_disable == 1'b0 && dac0_fabricclk_val == 1'b1) begin
        dac0_done_i <= dac0_done;
      end
      else begin
        dac0_done_i <= 1'b0;
      end
    end
    else begin
      dac0_done_i <= 1'b0;
    end
  end

  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac1_done_i (
      .src_clk(1'b0),
      .src_in(dac1_done_i),
      .dest_clk(dac_fabric_clk[1]),
      .dest_out(dac1_done_sync)
    );

  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (dac1_end_stage >= 4'hA) begin
      if (dac1_fifo_disable == 1'b0 && dac1_fabricclk_val == 1'b1) begin
        dac1_done_i <= dac1_done;
      end
      else begin
        dac1_done_i <= 1'b0;
      end
    end
    else begin
      dac1_done_i <= 1'b0;
    end
  end

  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac2_done_i (
      .src_clk(1'b0),
      .src_in(dac2_done_i),
      .dest_clk(dac_fabric_clk[2]),
      .dest_out(dac2_done_sync)
    );

  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (dac2_end_stage >= 4'hA) begin
      if (dac2_fifo_disable == 1'b0 && dac2_fabricclk_val == 1'b1) begin
        dac2_done_i <= dac2_done;
      end
      else begin
        dac2_done_i <= 1'b0;
      end
    end
    else begin
      dac2_done_i <= 1'b0;
    end
  end

  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac3_done_i (
      .src_clk(1'b0),
      .src_in(dac3_done_i),
      .dest_clk(dac_fabric_clk[3]),
      .dest_out(dac3_done_sync)
    );

  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (dac3_end_stage >= 4'hA) begin
      if (dac3_fifo_disable == 1'b0 && dac3_fabricclk_val == 1'b1) begin
        dac3_done_i <= dac3_done;
      end
      else begin
        dac3_done_i <= 1'b0;
      end
    end
    else begin
      dac3_done_i <= 1'b0;
    end
  end

  assign dac_clk_p        = {dac3_clk_p, dac2_clk_p, dac1_clk_p, dac0_clk_p};
  assign dac_clk_n        = {dac3_clk_n, dac2_clk_n, dac1_clk_n, dac0_clk_n};
  assign dac_pll_clk      = {dac3_pll_clk, dac2_pll_clk, dac1_pll_clk, dac0_pll_clk};
  assign dac_fabric_clk   = {dac3_fabricclk, dac2_fabricclk, dac1_fabricclk, dac0_fabricclk};

  // Data from Slice 0 in all Tiles
  assign data_dac0        = {dac30_data_in, dac20_data_in, dac10_data_in, dac00_data_in};
  // Data from Slice 1 in all Tiles
  assign data_dac1        = {dac31_data_in, dac21_data_in, dac11_data_in, dac01_data_in};
  // Data from Slice 2 in all Tiles
  assign data_dac2        = {dac32_data_in, dac22_data_in, dac12_data_in, dac02_data_in};
  // Data from Slice 3 in all Tiles
  assign data_dac3        = {dac33_data_in, dac23_data_in, dac13_data_in, dac03_data_in};
  assign dac00_ready_out = dac_fifo_en[0];
  assign dac01_ready_out = dac_fifo_en[0];
  assign dac02_ready_out = dac_fifo_en[0];
  assign dac03_ready_out = dac_fifo_en[0];
  assign dac10_ready_out = dac_fifo_en[1];
  assign dac11_ready_out = dac_fifo_en[1];
  assign dac12_ready_out = dac_fifo_en[1];
  assign dac13_ready_out = dac_fifo_en[1];
  assign dac20_ready_out = dac_fifo_en[2];
  assign dac21_ready_out = dac_fifo_en[2];
  assign dac22_ready_out = dac_fifo_en[2];
  assign dac23_ready_out = dac_fifo_en[2];
  assign dac30_ready_out = dac_fifo_en[3];
  assign dac31_ready_out = dac_fifo_en[3];
  assign dac32_ready_out = dac_fifo_en[3];
  assign dac33_ready_out = dac_fifo_en[3];

  // Assign ADC signals
  assign adc_drpen       = {adc3_drp_en_i, adc2_drp_en_i, adc1_drp_en_i, adc0_drp_en_i};
  assign adc_drpwe       = {adc3_drp_we_i, adc2_drp_we_i, adc1_drp_we_i, adc0_drp_we_i};
  assign adc_drpaddr     = {adc3_drp_addr, adc2_drp_addr, adc1_drp_addr, adc0_drp_addr};
  assign adc_drpdi       = {adc3_drpdi, adc2_drpdi, adc1_drpdi, adc0_drpdi};
  assign adc_common_ctrl = {adc3_done_sync, adc2_done_sync, adc1_done_sync, adc0_done_sync};
  assign adc_common_ctrl_bit9 = {adc3_obs_done_sync, adc2_obs_done_sync, adc1_obs_done_sync, adc0_obs_done_sync};
  assign adc_mt_common_ctrl[0]  = adc0_done_sync;
  assign adc_mt_common_ctrl[1]  = adc1_done_sync;
  assign adc_mt_common_ctrl[2]  = adc2_done_sync;
  assign adc_mt_common_ctrl[3]  = adc3_done_sync;

  // Synchronize common control bus onto the fabric clock for input
  // to the common control bus of the converters
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc0_done_i (
      .src_clk(1'b0),
      .src_in(adc0_done_i),
      .dest_clk(adc_fabric_clk[0]),
      .dest_out(adc0_done_sync)
    );


  assign adc0_obs_done_sync = 1'b0;
  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (adc0_end_stage >= 4'hA && adc0_fabricclk_val == 1'b1) begin
      if (adc0_fifo_disable == 1'b0) begin
        adc0_done_i <= adc0_done;
      end
      else begin
        adc0_done_i <= 1'b0;
      end
    end
    else begin
      adc0_done_i <= 1'b0;
    end
  end

  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc1_done_i (
      .src_clk(1'b0),
      .src_in(adc1_done_i),
      .dest_clk(adc_fabric_clk[1]),
      .dest_out(adc1_done_sync)
    );


  assign adc1_obs_done_sync = 1'b0;
  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (adc1_end_stage >= 4'hA && adc1_fabricclk_val == 1'b1) begin
      if (adc1_fifo_disable == 1'b0) begin
        adc1_done_i <= adc1_done;
      end
      else begin
        adc1_done_i <= 1'b0;
      end
    end
    else begin
      adc1_done_i <= 1'b0;
    end
  end

  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc2_done_i (
      .src_clk(1'b0),
      .src_in(adc2_done_i),
      .dest_clk(adc_fabric_clk[2]),
      .dest_out(adc2_done_sync)
    );


  assign adc2_obs_done_sync = 1'b0;
  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (adc2_end_stage >= 4'hA && adc2_fabricclk_val == 1'b1) begin
      if (adc2_fifo_disable == 1'b0) begin
        adc2_done_i <= adc2_done;
      end
      else begin
        adc2_done_i <= 1'b0;
      end
    end
    else begin
      adc2_done_i <= 1'b0;
    end
  end

  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc3_done_i (
      .src_clk(1'b0),
      .src_in(adc3_done_i),
      .dest_clk(adc_fabric_clk[3]),
      .dest_out(adc3_done_sync)
    );


  assign adc3_obs_done_sync = 1'b0;
  // Only assert common control bit 15 if the clocks are active
  always @(posedge drpclk)
  begin
    if (adc3_end_stage >= 4'hA && adc3_fabricclk_val == 1'b1) begin
      if (adc3_fifo_disable == 1'b0) begin
        adc3_done_i <= adc3_done;
      end
      else begin
        adc3_done_i <= 1'b0;
      end
    end
    else begin
      adc3_done_i <= 1'b0;
    end
  end


  assign clk_adc0        = clk_adc[0];
  assign clk_adc1        = clk_adc[1];
  assign clk_adc2        = clk_adc[2];
  assign clk_adc3        = clk_adc[3];
  assign adc_clk_p       = {adc3_clk_p, adc2_clk_p, adc1_clk_p, adc0_clk_p};
  assign adc_clk_n       = {adc3_clk_n, adc2_clk_n, adc1_clk_n, adc0_clk_n};
  assign adc_pll_clk     = {adc3_pll_clk, adc2_pll_clk, adc1_pll_clk, adc0_pll_clk};
  assign adc_fabric_clk  = {adc3_fabricclk, adc2_fabricclk, adc1_fabricclk, adc0_fabricclk};
  assign adc_fifo_clk    = {adc3_clk_fifo_lm, adc2_clk_fifo_lm, adc1_clk_fifo_lm, adc0_clk_fifo_lm};

  assign adc00_data_out  = data_adc0[191 :0];
  assign adc01_data_out  = data_adc1[191 :0];
  assign adc02_data_out  = data_adc2[191 :0];
  assign adc03_data_out  = data_adc3[191 :0];

  assign adc10_data_out  = data_adc0[383 :192];
  assign adc11_data_out  = data_adc1[383 :192];
  assign adc12_data_out  = data_adc2[383 :192];
  assign adc13_data_out  = data_adc3[383 :192];

  assign adc20_data_out  = data_adc0[575 :384];
  assign adc21_data_out  = data_adc1[575 :384];
  assign adc22_data_out  = data_adc2[575 :384];
  assign adc23_data_out  = data_adc3[575 :384];

  assign adc30_data_out  = data_adc0[767 :576];
  assign adc31_data_out  = data_adc1[767 :576];
  assign adc32_data_out  = data_adc2[767 :576];
  assign adc33_data_out  = data_adc3[767 :576];

  assign adc00_valid_out = adc_fifo_en[0];
  assign adc00_obs_valid_out = adc0_obs_done_sync;
  assign adc01_valid_out = adc_fifo_en[0];
  assign adc01_obs_valid_out = adc0_obs_done_sync;
  assign adc02_valid_out = adc_fifo_en[0];
  assign adc02_obs_valid_out = adc0_obs_done_sync;
  assign adc03_valid_out = adc_fifo_en[0];
  assign adc03_obs_valid_out = adc0_obs_done_sync;
  assign adc10_valid_out = adc_fifo_en[1];
  assign adc10_obs_valid_out = adc1_obs_done_sync;
  assign adc11_valid_out = adc_fifo_en[1];
  assign adc11_obs_valid_out = adc1_obs_done_sync;
  assign adc12_valid_out = adc_fifo_en[1];
  assign adc12_obs_valid_out = adc1_obs_done_sync;
  assign adc13_valid_out = adc_fifo_en[1];
  assign adc13_obs_valid_out = adc1_obs_done_sync;
  assign adc20_valid_out = adc_fifo_en[2];
  assign adc20_obs_valid_out = adc2_obs_done_sync;
  assign adc21_valid_out = adc_fifo_en[2];
  assign adc21_obs_valid_out = adc2_obs_done_sync;
  assign adc22_valid_out = adc_fifo_en[2];
  assign adc22_obs_valid_out = adc2_obs_done_sync;
  assign adc23_valid_out = adc_fifo_en[2];
  assign adc23_obs_valid_out = adc2_obs_done_sync;
  assign adc30_valid_out = adc_fifo_en[3];
  assign adc30_obs_valid_out = adc3_obs_done_sync;
  assign adc31_valid_out = adc_fifo_en[3];
  assign adc31_obs_valid_out = adc3_obs_done_sync;
  assign adc32_valid_out = adc_fifo_en[3];
  assign adc32_obs_valid_out = adc3_obs_done_sync;
  assign adc33_valid_out = adc_fifo_en[3];
  assign adc33_obs_valid_out = adc3_obs_done_sync;

  assign adc00_stat = adc0_stat[23:0];
  assign adc01_stat = adc1_stat[23:0];
  assign adc02_stat = adc2_stat[23:0];
  assign adc03_stat = adc3_stat[23:0];

  assign adc10_stat = adc0_stat[47:24];
  assign adc11_stat = adc1_stat[47:24];
  assign adc12_stat = adc2_stat[47:24];
  assign adc13_stat = adc3_stat[47:24];

  assign adc20_stat = adc0_stat[71:48];
  assign adc21_stat = adc1_stat[71:48];
  assign adc22_stat = adc2_stat[71:48];
  assign adc23_stat = adc3_stat[71:48];

  assign adc30_stat = adc0_stat[95:72];
  assign adc31_stat = adc1_stat[95:72];
  assign adc32_stat = adc2_stat[95:72];
  assign adc33_stat = adc3_stat[95:72];

  // Status bits from the ADCs to the power up state machine
  // Bit 3 - DRP ready
  // Bit 2 - PLL lock
  // Bit 1 - Supplies up
  // Bit 0 - Clock Present

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (ADC0)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc0_pll_lock_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[3]),
      .dest_clk(drpclk),
      .dest_out(adc0_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc0_powerup_state_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[2]),
      .dest_clk(drpclk),
      .dest_out(adc0_powerup_state_sync)
    );
  assign adc0_powerup_state_interrupt = (adc0_status == 4'hf) ? ~adc0_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc0_supplies_up_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[1]),
      .dest_clk(drpclk),
      .dest_out(adc0_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc0_clk_present_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[0]),
      .dest_clk(drpclk),
      .dest_out(adc0_clk_present_sync)
    );
  assign adc0_status_bits    = {adc_common_stat[6], adc0_pll_lock_sync, adc0_supplies_up_sync, adc0_clk_present_sync};
  assign adc0_pll_lock       = adc0_pll_lock_sync;

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (ADC1)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc1_pll_lock_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[27]),
      .dest_clk(drpclk),
      .dest_out(adc1_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc1_powerup_state_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[26]),
      .dest_clk(drpclk),
      .dest_out(adc1_powerup_state_sync)
    );
  assign adc1_powerup_state_interrupt = (adc1_status == 4'hf) ? ~adc1_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc1_supplies_up_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[25]),
      .dest_clk(drpclk),
      .dest_out(adc1_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc1_clk_present_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[24]),
      .dest_clk(drpclk),
      .dest_out(adc1_clk_present_sync)
    );
  assign adc1_status_bits    = {adc_common_stat[30], adc1_pll_lock_sync, adc1_supplies_up_sync, adc1_clk_present_sync};
  assign adc1_pll_lock       = adc1_pll_lock_sync;

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (ADC2)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc2_pll_lock_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[51]),
      .dest_clk(drpclk),
      .dest_out(adc2_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc2_powerup_state_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[50]),
      .dest_clk(drpclk),
      .dest_out(adc2_powerup_state_sync)
    );
  assign adc2_powerup_state_interrupt = (adc2_status == 4'hf) ? ~adc2_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc2_supplies_up_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[49]),
      .dest_clk(drpclk),
      .dest_out(adc2_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc2_clk_present_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[48]),
      .dest_clk(drpclk),
      .dest_out(adc2_clk_present_sync)
    );
  assign adc2_status_bits    = {adc_common_stat[54], adc2_pll_lock_sync, adc2_supplies_up_sync, adc2_clk_present_sync};
  assign adc2_pll_lock       = adc2_pll_lock_sync;

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (ADC3)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc3_pll_lock_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[75]),
      .dest_clk(drpclk),
      .dest_out(adc3_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc3_powerup_state_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[74]),
      .dest_clk(drpclk),
      .dest_out(adc3_powerup_state_sync)
    );
  assign adc3_powerup_state_interrupt = (adc3_status == 4'hf) ? ~adc3_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc3_supplies_up_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[73]),
      .dest_clk(drpclk),
      .dest_out(adc3_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc3_clk_present_i (
      .src_clk(1'b0),
      .src_in(adc_common_stat[72]),
      .dest_clk(drpclk),
      .dest_out(adc3_clk_present_sync)
    );
  assign adc3_status_bits    = {adc_common_stat[78], adc3_pll_lock_sync, adc3_supplies_up_sync, adc3_clk_present_sync};
  assign adc3_pll_lock       = adc3_pll_lock_sync;

  // Status bits from the DACs to the power up state machine
  // Bit 3 - DRP ready
  // Bit 2 - PLL lock
  // Bit 1 - Supplies up
  // Bit 0 - Clock Present

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (DAC0)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac0_pll_lock_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[3]),
      .dest_clk(drpclk),
      .dest_out(dac0_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac0_powerup_state_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[2]),
      .dest_clk(drpclk),
      .dest_out(dac0_powerup_state_sync)
    );
  assign dac0_powerup_state_interrupt = (dac0_status == 4'hf) ? ~dac0_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac0_supplies_up_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[1]),
      .dest_clk(drpclk),
      .dest_out(dac0_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac0_clk_present_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[0]),
      .dest_clk(drpclk),
      .dest_out(dac0_clk_present_sync)
    );
  assign dac0_status_bits    = {dac_common_stat[6], dac0_pll_lock_sync, dac0_supplies_up_sync, dac0_clk_present_sync};
  assign dac0_pll_lock       = dac0_pll_lock_sync;

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (DAC1)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac1_pll_lock_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[27]),
      .dest_clk(drpclk),
      .dest_out(dac1_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac1_powerup_state_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[26]),
      .dest_clk(drpclk),
      .dest_out(dac1_powerup_state_sync)
    );
  assign dac1_powerup_state_interrupt = (dac1_status == 4'hf) ? ~dac1_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac1_supplies_up_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[25]),
      .dest_clk(drpclk),
      .dest_out(dac1_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac1_clk_present_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[24]),
      .dest_clk(drpclk),
      .dest_out(dac1_clk_present_sync)
    );
  assign dac1_status_bits    = {dac_common_stat[30], dac1_pll_lock_sync, dac1_supplies_up_sync, dac1_clk_present_sync};
  assign dac1_pll_lock       = dac1_pll_lock_sync;

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (DAC2)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac2_pll_lock_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[51]),
      .dest_clk(drpclk),
      .dest_out(dac2_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac2_powerup_state_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[50]),
      .dest_clk(drpclk),
      .dest_out(dac2_powerup_state_sync)
    );
  assign dac2_powerup_state_interrupt = (dac2_status == 4'hf) ? ~dac2_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac2_supplies_up_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[49]),
      .dest_clk(drpclk),
      .dest_out(dac2_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac2_clk_present_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[48]),
      .dest_clk(drpclk),
      .dest_out(dac2_clk_present_sync)
    );
  assign dac2_status_bits    = {dac_common_stat[54], dac2_pll_lock_sync, dac2_supplies_up_sync, dac2_clk_present_sync};
  assign dac2_pll_lock       = dac2_pll_lock_sync;

  // Synchronize common status bus onto the DRP clock for input
  // to the status_bits bus of the converters (DAC3)
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac3_pll_lock_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[75]),
      .dest_clk(drpclk),
      .dest_out(dac3_pll_lock_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac3_powerup_state_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[74]),
      .dest_clk(drpclk),
      .dest_out(dac3_powerup_state_sync)
    );
  assign dac3_powerup_state_interrupt = (dac3_status == 4'hf) ? ~dac3_powerup_state_sync : 1'b0;
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac3_supplies_up_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[73]),
      .dest_clk(drpclk),
      .dest_out(dac3_supplies_up_sync)
    );
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac3_clk_present_i (
      .src_clk(1'b0),
      .src_in(dac_common_stat[72]),
      .dest_clk(drpclk),
      .dest_out(dac3_clk_present_sync)
    );
  assign dac3_status_bits    = {dac_common_stat[78], dac3_pll_lock_sync, dac3_supplies_up_sync, dac3_clk_present_sync};
  assign dac3_pll_lock       = dac3_pll_lock_sync;

  assign por_sm_reset_i = reset | ~dac3_status_bits[3] | ~dac2_status_bits[3] | ~dac1_status_bits[3] | ~dac0_status_bits[3] |
                                  ~adc3_status_bits[3] | ~adc2_status_bits[3] | ~adc1_status_bits[3] | ~adc0_status_bits[3];

  assign dac0_common_stat = dac_common_stat[23:0];
  assign dac1_common_stat = dac_common_stat[47:24];
  assign dac2_common_stat = dac_common_stat[71:48];
  assign dac3_common_stat = dac_common_stat[95:72];

  assign adc0_common_stat = adc_common_stat[23:0];
  assign adc1_common_stat = adc_common_stat[47:24];
  assign adc2_common_stat = adc_common_stat[71:48];
  assign adc3_common_stat = adc_common_stat[95:72];

  // Instantiate the power on reset state machine
  rfdc_ex_rfip_0_por_fsm_top por_state_machine_i (

    .user_adc0_drp_req(adc0_drp_req),
    .user_adc0_drp_gnt(adc0_drp_gnt),
    .user_adc0_drpaddr(drp_addr),
    .user_adc0_drpen(adc0_drp_en),
    .user_adc0_drpdi(drp_di),
    .user_adc0_drpdo(adc0_drp_do),
    .user_adc0_drpwe(adc0_drp_we),
    .user_adc0_drprdy(adc0_drp_rdy),

    .user_adc1_drp_req(adc1_drp_req),
    .user_adc1_drp_gnt(adc1_drp_gnt),
    .user_adc1_drpaddr(drp_addr),
    .user_adc1_drpen(adc1_drp_en),
    .user_adc1_drpdi(drp_di),
    .user_adc1_drpdo(adc1_drp_do),
    .user_adc1_drpwe(adc1_drp_we),
    .user_adc1_drprdy(adc1_drp_rdy),

    .user_adc2_drp_req(adc2_drp_req),
    .user_adc2_drp_gnt(adc2_drp_gnt),
    .user_adc2_drpaddr(drp_addr),
    .user_adc2_drpen(adc2_drp_en),
    .user_adc2_drpdi(drp_di),
    .user_adc2_drpdo(adc2_drp_do),
    .user_adc2_drpwe(adc2_drp_we),
    .user_adc2_drprdy(adc2_drp_rdy),

    .user_adc3_drp_req(adc3_drp_req),
    .user_adc3_drp_gnt(adc3_drp_gnt),
    .user_adc3_drpaddr(drp_addr),
    .user_adc3_drpen(adc3_drp_en),
    .user_adc3_drpdi(drp_di),
    .user_adc3_drpdo(adc3_drp_do),
    .user_adc3_drpwe(adc3_drp_we),
    .user_adc3_drprdy(adc3_drp_rdy),

    .user_dac0_drp_req(dac0_drp_req),
    .user_dac0_drp_gnt(dac0_drp_gnt),
    .user_dac0_drpaddr(drp_addr),
    .user_dac0_drpen(dac0_drp_en),
    .user_dac0_drpdi(drp_di),
    .user_dac0_drpdo(dac0_drp_do),
    .user_dac0_drpwe(dac0_drp_we),
    .user_dac0_drprdy(dac0_drp_rdy),

    .user_dac1_drp_req(dac1_drp_req),
    .user_dac1_drp_gnt(dac1_drp_gnt),
    .user_dac1_drpaddr(drp_addr),
    .user_dac1_drpen(dac1_drp_en),
    .user_dac1_drpdi(drp_di),
    .user_dac1_drpdo(dac1_drp_do),
    .user_dac1_drpwe(dac1_drp_we),
    .user_dac1_drprdy(dac1_drp_rdy),

    .user_dac2_drp_req(dac2_drp_req),
    .user_dac2_drp_gnt(dac2_drp_gnt),
    .user_dac2_drpaddr(drp_addr),
    .user_dac2_drpen(dac2_drp_en),
    .user_dac2_drpdi(drp_di),
    .user_dac2_drpdo(dac2_drp_do),
    .user_dac2_drpwe(dac2_drp_we),
    .user_dac2_drprdy(dac2_drp_rdy),

    .user_dac3_drp_req(dac3_drp_req),
    .user_dac3_drp_gnt(dac3_drp_gnt),
    .user_dac3_drpaddr(drp_addr),
    .user_dac3_drpen(dac3_drp_en),
    .user_dac3_drpdi(drp_di),
    .user_dac3_drpdo(dac3_drp_do),
    .user_dac3_drpwe(dac3_drp_we),
    .user_dac3_drprdy(dac3_drp_rdy),

    .adc0_drpaddr(adc0_drp_addr),
    .adc0_drpen(adc0_drp_en_i),
    .adc0_drpdi(adc_drpout[15:0]),
    .adc0_drpdo(adc0_drpdi),
    .adc0_drpwe(adc0_drp_we_i),
    .adc0_drprdy(adc_drprdy[0]),

    .adc1_drpaddr(adc1_drp_addr),
    .adc1_drpen(adc1_drp_en_i),
    .adc1_drpdi(adc_drpout[31:16]),
    .adc1_drpdo(adc1_drpdi),
    .adc1_drpwe(adc1_drp_we_i),
    .adc1_drprdy(adc_drprdy[1]),

    .adc2_drpaddr(adc2_drp_addr),
    .adc2_drpen(adc2_drp_en_i),
    .adc2_drpdi(adc_drpout[47:32]),
    .adc2_drpdo(adc2_drpdi),
    .adc2_drpwe(adc2_drp_we_i),
    .adc2_drprdy(adc_drprdy[2]),

    .adc3_drpaddr(adc3_drp_addr),
    .adc3_drpen(adc3_drp_en_i),
    .adc3_drpdi(adc_drpout[63:48]),
    .adc3_drpdo(adc3_drpdi),
    .adc3_drpwe(adc3_drp_we_i),
    .adc3_drprdy(adc_drprdy[3]),

    .dac0_drpaddr(dac0_drp_addr),
    .dac0_drpen(dac0_drp_en_i),
    .dac0_drpdi(dac_drpout[15:0]),
    .dac0_drpdo(dac0_drpdi),
    .dac0_drpwe(dac0_drp_we_i),
    .dac0_drprdy(dac_drprdy[0]),

    .dac1_drpaddr(dac1_drp_addr),
    .dac1_drpen(dac1_drp_en_i),
    .dac1_drpdi(dac_drpout[31:16]),
    .dac1_drpdo(dac1_drpdi),
    .dac1_drpwe(dac1_drp_we_i),
    .dac1_drprdy(dac_drprdy[1]),

    .dac2_drpaddr(dac2_drp_addr),
    .dac2_drpen(dac2_drp_en_i),
    .dac2_drpdi(dac_drpout[47:32]),
    .dac2_drpdo(dac2_drpdi),
    .dac2_drpwe(dac2_drp_we_i),
    .dac2_drprdy(dac_drprdy[2]),

    .dac3_drpaddr(dac3_drp_addr),
    .dac3_drpen(dac3_drp_en_i),
    .dac3_drpdi(dac_drpout[63:48]),
    .dac3_drpdo(dac3_drpdi),
    .dac3_drpwe(dac3_drp_we_i),
    .dac3_drprdy(dac_drprdy[3]),

    .adc0_reset(adc0_reset),
    .adc0_restart(adc0_restart),
    .adc0_done(adc0_done),
    .adc0_status(adc0_status),
    .adc0_pll_error(adc0_pll_error),
    .adc0_sm_reset(adc0_sm_reset_i),
    .adc0_fabricclk_val(adc0_fabricclk_val),

    .adc1_reset(adc1_reset),
    .adc1_restart(adc1_restart),
    .adc1_done(adc1_done),
    .adc1_status(adc1_status),
    .adc1_pll_error(adc1_pll_error),
    .adc1_sm_reset(adc1_sm_reset_i),
    .adc1_fabricclk_val(adc1_fabricclk_val),

    .adc2_reset(adc2_reset),
    .adc2_restart(adc2_restart),
    .adc2_done(adc2_done),
    .adc2_status(adc2_status),
    .adc2_pll_error(adc2_pll_error),
    .adc2_sm_reset(adc2_sm_reset_i),
    .adc2_fabricclk_val(adc2_fabricclk_val),

    .adc3_reset(adc3_reset),
    .adc3_restart(adc3_restart),
    .adc3_done(adc3_done),
    .adc3_status(adc3_status),
    .adc3_pll_error(adc3_pll_error),
    .adc3_sm_reset(adc3_sm_reset_i),
    .adc3_fabricclk_val(adc3_fabricclk_val),

    .dac0_reset(dac0_reset),
    .dac0_restart(dac0_restart),
    .dac0_done(dac0_done),
    .dac0_status(dac0_status),
    .dac0_pll_error(dac0_pll_error),
    .dac0_sm_reset(dac0_sm_reset_i),
    .dac0_fabricclk_val(dac0_fabricclk_val),

    .dac1_reset(dac1_reset),
    .dac1_restart(dac1_restart),
    .dac1_done(dac1_done),
    .dac1_status(dac1_status),
    .dac1_pll_error(dac1_pll_error),
    .dac1_sm_reset(dac1_sm_reset_i),
    .dac1_fabricclk_val(dac1_fabricclk_val),

    .dac2_reset(dac2_reset),
    .dac2_restart(dac2_restart),
    .dac2_done(dac2_done),
    .dac2_status(dac2_status),
    .dac2_pll_error(dac2_pll_error),
    .dac2_sm_reset(dac2_sm_reset_i),
    .dac2_fabricclk_val(dac2_fabricclk_val),

    .dac3_reset(dac3_reset),
    .dac3_restart(dac3_restart),
    .dac3_done(dac3_done),
    .dac3_status(dac3_status),
    .dac3_pll_error(dac3_pll_error),
    .dac3_sm_reset(dac3_sm_reset_i),
    .dac3_fabricclk_val(dac3_fabricclk_val),


    .adc00_status(adc00_stat),
    .adc01_status(adc01_stat),
    .adc02_status(adc02_stat),
    .adc03_status(adc03_stat),
    .adc10_status(adc10_stat),
    .adc11_status(adc11_stat),
    .adc12_status(adc12_stat),
    .adc13_status(adc13_stat),
    .adc20_status(adc20_stat),
    .adc21_status(adc21_stat),
    .adc22_status(adc22_stat),
    .adc23_status(adc23_stat),
    .adc30_status(adc30_stat),
    .adc31_status(adc31_stat),
    .adc32_status(adc32_stat),
    .adc33_status(adc33_stat),

    .adc0_start_stage(adc0_start_stage),
    .adc0_end_stage(adc0_end_stage),
    .adc0_supply_timer(adc0_supply_timer),
    .adc0_regulator_timer(adc0_regulator_timer),
    .adc0_calibration_timer(adc0_calibration_timer),
    .adc0_calibration_delay(adc0_calibration_delay),
    .adc0_calibration_timer0(adc0_calibration_timer0),
    .adc0_calibration_timer1(adc0_calibration_timer1),
    .adc0_calibration_timer2(adc0_calibration_timer2),
    .adc0_calibration_timer3(adc0_calibration_timer3),
    .adc0_calibration_timer4(adc0_calibration_timer4),
    .adc0_status_bits(adc0_status_bits[2:0]),
    .adc0_signal_lost({adc03_cal_freeze,adc02_cal_freeze,adc01_cal_freeze,adc00_cal_freeze}),
    .adc0_bg_cal_off(adc0_bg_cal_off),
    .adc0_const_speedup(adc0_const_speedup),
    .adc0_cal_speedup(adc0_cal_speedup),
    .adc0_powerup_state(adc0_powerup_state_sync),
    .adc0_clk_detect(adc0_clk_detect),
    .adc0_clk_detector_ok(adc0_clk_detector_ok),
    .adc0_dsa_update(adc0_dsa_update),

    .adc1_start_stage(adc1_start_stage),
    .adc1_end_stage(adc1_end_stage),
    .adc1_supply_timer(adc1_supply_timer),
    .adc1_regulator_timer(adc1_regulator_timer),
    .adc1_calibration_timer(adc1_calibration_timer),
    .adc1_calibration_delay(adc1_calibration_delay),
    .adc1_calibration_timer0(adc1_calibration_timer0),
    .adc1_calibration_timer1(adc1_calibration_timer1),
    .adc1_calibration_timer2(adc1_calibration_timer2),
    .adc1_calibration_timer3(adc1_calibration_timer3),
    .adc1_calibration_timer4(adc1_calibration_timer4),
    .adc1_status_bits(adc1_status_bits[2:0]),
    .adc1_signal_lost({adc13_cal_freeze,adc12_cal_freeze,adc11_cal_freeze,adc10_cal_freeze}),
    .adc1_bg_cal_off(adc1_bg_cal_off),
    .adc1_const_speedup(adc1_const_speedup),
    .adc1_cal_speedup(adc1_cal_speedup),
    .adc1_powerup_state(adc1_powerup_state_sync),
    .adc1_clk_detect(adc1_clk_detect),
    .adc1_clk_detector_ok(adc1_clk_detector_ok),
    .adc1_dsa_update(adc1_dsa_update),

    .adc2_start_stage(adc2_start_stage),
    .adc2_end_stage(adc2_end_stage),
    .adc2_supply_timer(adc2_supply_timer),
    .adc2_regulator_timer(adc2_regulator_timer),
    .adc2_calibration_timer(adc2_calibration_timer),
    .adc2_calibration_delay(adc2_calibration_delay),
    .adc2_calibration_timer0(adc2_calibration_timer0),
    .adc2_calibration_timer1(adc2_calibration_timer1),
    .adc2_calibration_timer2(adc2_calibration_timer2),
    .adc2_calibration_timer3(adc2_calibration_timer3),
    .adc2_calibration_timer4(adc2_calibration_timer4),
    .adc2_status_bits(adc2_status_bits[2:0]),
    .adc2_signal_lost({adc23_cal_freeze,adc22_cal_freeze,adc21_cal_freeze,adc20_cal_freeze}),
    .adc2_bg_cal_off(adc2_bg_cal_off),
    .adc2_const_speedup(adc2_const_speedup),
    .adc2_cal_speedup(adc2_cal_speedup),
    .adc2_powerup_state(adc2_powerup_state_sync),
    .adc2_clk_detect(adc2_clk_detect),
    .adc2_clk_detector_ok(adc2_clk_detector_ok),
    .adc2_dsa_update(adc2_dsa_update),

    .adc3_start_stage(adc3_start_stage),
    .adc3_end_stage(adc3_end_stage),
    .adc3_supply_timer(adc3_supply_timer),
    .adc3_regulator_timer(adc3_regulator_timer),
    .adc3_calibration_timer(adc3_calibration_timer),
    .adc3_calibration_delay(adc3_calibration_delay),
    .adc3_calibration_timer0(adc3_calibration_timer0),
    .adc3_calibration_timer1(adc3_calibration_timer1),
    .adc3_calibration_timer2(adc3_calibration_timer2),
    .adc3_calibration_timer3(adc3_calibration_timer3),
    .adc3_calibration_timer4(adc3_calibration_timer4),
    .adc3_status_bits(adc3_status_bits[2:0]),
    .adc3_signal_lost({adc33_cal_freeze,adc32_cal_freeze,adc31_cal_freeze,adc30_cal_freeze}),
    .adc3_bg_cal_off(adc3_bg_cal_off),
    .adc3_const_speedup(adc3_const_speedup),
    .adc3_cal_speedup(adc3_cal_speedup),
    .adc3_powerup_state(adc3_powerup_state_sync),
    .adc3_clk_detect(adc3_clk_detect),
    .adc3_clk_detector_ok(adc3_clk_detector_ok),
    .adc3_dsa_update(adc3_dsa_update),

    .dac0_start_stage(dac0_start_stage),
    .dac0_end_stage(dac0_end_stage),
    .dac0_supply_timer(dac0_supply_timer),
    .dac0_regulator_timer(dac0_regulator_timer),
    .dac0_status_bits(dac0_status_bits[2:0]),
    .dac0_powerup_state(dac0_powerup_state_sync),
    .dac0_clk_detect(dac0_clk_detect),

    .dac1_start_stage(dac1_start_stage),
    .dac1_end_stage(dac1_end_stage),
    .dac1_supply_timer(dac1_supply_timer),
    .dac1_regulator_timer(dac1_regulator_timer),
    .dac1_status_bits(dac1_status_bits[2:0]),
    .dac1_powerup_state(dac1_powerup_state_sync),
    .dac1_clk_detect(dac1_clk_detect),

    .dac2_start_stage(dac2_start_stage),
    .dac2_end_stage(dac2_end_stage),
    .dac2_supply_timer(dac2_supply_timer),
    .dac2_regulator_timer(dac2_regulator_timer),
    .dac2_status_bits(dac2_status_bits[2:0]),
    .dac2_powerup_state(dac2_powerup_state_sync),
    .dac2_clk_detect(dac2_clk_detect),

    .dac3_start_stage(dac3_start_stage),
    .dac3_end_stage(dac3_end_stage),
    .dac3_supply_timer(dac3_supply_timer),
    .dac3_regulator_timer(dac3_regulator_timer),
    .dac3_status_bits(dac3_status_bits[2:0]),
    .dac3_powerup_state(dac3_powerup_state_sync),
    .dac3_clk_detect(dac3_clk_detect),
    .startup_delay(startup_delay),
    .reset(por_sm_reset),
    .sm_start(sm_start),
    .aux_clk(drpclk)
  );

  // Synchronize the state machine reset onto the DRP clock
  always @(posedge drpclk)
  begin
    por_sm_reset <= por_sm_reset_i;
  end

  rfdc_ex_rfip_0_mt_fifo_ctrl #(
    .MTS_NUM_TILES(4)
  )
  i_fifo_ctrl_dac(
    .ip_startup_done  (dac_mt_common_ctrl),
    .clk              (dac_fabric_clk[0] ),
    .mts_fifo_en      (mt_dac_fifo_en    ),
    .mts_fifo_src     (mt_dac_fifo_src   ),
    .reset_b          (1'b1              ), // TODO - do we need a reset?
    .fifo_en          (dac_fifo_en       )
  );

  rfdc_ex_rfip_0_mt_fifo_ctrl #(
    .MTS_NUM_TILES(4)
  )
  i_fifo_ctrl_adc(
    .ip_startup_done  (adc_mt_common_ctrl),
    .clk              (adc_fabric_clk[0] ),
    .mts_fifo_en      (mt_adc_fifo_en    ),
    .mts_fifo_src     (mt_adc_fifo_src   ),
    .reset_b          (1'b1              ), // TODO - do we need a reset?
    .fifo_en          (adc_fifo_en       )
  );

  RFDAC #(
    .OPT_CLK_DIST         (228),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (7864.320000000001),
    .XPA_NUM_DACS         (2),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DUCS         (4),
    .XPA_CFG0             (2),
    .XPA_CFG1             (1),
    .XPA_CFG2             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) tx0_u_dac (
    .CONTROL_COMMON     ( {dac_fifo_en[0], dac0_cmn_control[14:0]} ),  // input  [15:0]
    .CONTROL_DAC0       ( dac00_control ),                // input  [15:0]
    .CONTROL_DAC1       ( dac01_control ),                // input  [15:0]
    .CONTROL_DAC2       ( dac02_control ),                // input  [15:0]
    .CONTROL_DAC3       ( dac03_control ),                // input  [15:0]

    .SYSREF_N           (sysref_in_n),                     // input
    .SYSREF_P           (sysref_in_p),                     // input

    .SYSREF_OUT_NORTH   (sysref_north[5]),                 // output
    .SYSREF_OUT_SOUTH   (sysref_south[4]),                 // output
    .CLK_DIST_OUT_NORTH (clk_north[5]),                    // output
    .CLK_DIST_OUT_SOUTH (clk_south[4]),                    // output
    .T1_ALLOWED_SOUTH   (t1_allowed[4]),                   // output

    .DADDR              ( dac_drpaddr[11:0] ),            // input  [11:0]
    .DCLK               ( drpclk ),                        // input
    .DEN                ( dac_drpen[0] ),                  // input
    .DWE                ( dac_drpwe[0] ),                  // input
    .DI                 ( dac_drpdi[15:0] ),              // input  [15:0]
    .DOUT               ( dac_drpout[15:0] ),             // output [15:0]
    .DRDY               ( dac_drprdy[0] ),                 // output

    .FABRIC_CLK         ( dac_fabric_clk[0] ),             // input
    .PLL_MONCLK         ( drpclk ),                        // input
    .PLL_REFCLK_IN      ( dac_pll_clk[0] ),                // input
    .CLK_DAC            ( clk_dac[0] ),                    // output
    .STATUS_COMMON      ( dac_common_stat[23:0] ),        // output [23:0]
    .STATUS_DAC0        (dac00_status),                    // output [23:0]
    .STATUS_DAC1        (dac01_status),                    // output [23:0]
    .STATUS_DAC2        (dac02_status),                    // output [23:0]
    .STATUS_DAC3        (dac03_status),                    // output [23:0]

    .SYSREF_IN_NORTH    (sysref_south[5]),                 // input
    .SYSREF_IN_SOUTH    (sysref_north[4]),                 // input
    .CLK_DIST_IN_NORTH  (clk_south[5]),                    // input
    .CLK_DIST_IN_SOUTH  (),                    // input
    .T1_ALLOWED_NORTH   (t1_allowed[5]),                   // input

    .CLK_FIFO_LM        (),                                // Input
    .PLL_REFCLK_OUT     (),                                // output
    .PLL_DMON_OUT       (dac0_pll_dmon),                 // output

    .DAC_CLK_N          ( dac_clk_n[0] ),                  // input
    .DAC_CLK_P          ( dac_clk_p[0] ),                  // input

    .DATA_DAC0          ( data_dac0[255:0] ),            // input  [255:0]
    .DATA_DAC1          ( data_dac1[255:0] ),            // input  [255:0]
    .DATA_DAC2          ( data_dac2[255:0] ),            // input  [255:0]
    .DATA_DAC3          ( data_dac3[255:0] ),            // input  [255:0]
    .VOUT0_N            (vout00_n),                      // output
    .VOUT0_P            (vout00_p),                      // output
    .VOUT1_N            (),                               // output
    .VOUT1_P            (),                               // output
    .VOUT2_N            (vout02_n),                      // output
    .VOUT2_P            (vout02_p),                      // output
    .VOUT3_N            (),                               // output
    .VOUT3_P            ()                                // output
  );

  RFDAC #(
    .OPT_CLK_DIST         (229),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (7864.320000000001),
    .XPA_NUM_DACS         (2),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DUCS         (4),
    .XPA_CFG0             (2),
    .XPA_CFG1             (1),
    .XPA_CFG2             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) tx1_u_dac (
    .CONTROL_COMMON     ( {dac_fifo_en[1], dac1_cmn_control[14:0]} ),  // input  [15:0]
    .CONTROL_DAC0       ( dac10_control ),                // input  [15:0]
    .CONTROL_DAC1       ( dac11_control ),                // input  [15:0]
    .CONTROL_DAC2       ( dac12_control ),                // input  [15:0]
    .CONTROL_DAC3       ( dac13_control ),                // input  [15:0]

    .SYSREF_N           (),                                // input
    .SYSREF_P           (),                                // input

    .SYSREF_OUT_NORTH   (sysref_north[6]),                 // output
    .SYSREF_OUT_SOUTH   (sysref_south[5]),                 // output
    .CLK_DIST_OUT_NORTH (clk_north[6]),                    // output
    .CLK_DIST_OUT_SOUTH (clk_south[5]),                    // output
    .T1_ALLOWED_SOUTH   (t1_allowed[5]),                   // output

    .DADDR              ( dac_drpaddr[23:12] ),            // input  [11:0]
    .DCLK               ( drpclk ),                        // input
    .DEN                ( dac_drpen[1] ),                  // input
    .DWE                ( dac_drpwe[1] ),                  // input
    .DI                 ( dac_drpdi[31:16] ),              // input  [15:0]
    .DOUT               ( dac_drpout[31:16] ),             // output [15:0]
    .DRDY               ( dac_drprdy[1] ),                 // output

    .FABRIC_CLK         ( dac_fabric_clk[1] ),             // input
    .PLL_MONCLK         ( drpclk ),                        // input
    .PLL_REFCLK_IN      ( dac_pll_clk[1] ),                // input
    .CLK_DAC            ( clk_dac[1] ),                    // output
    .STATUS_COMMON      ( dac_common_stat[47:24] ),        // output [23:0]
    .STATUS_DAC0        (dac10_status),                    // output [23:0]
    .STATUS_DAC1        (dac11_status),                    // output [23:0]
    .STATUS_DAC2        (dac12_status),                    // output [23:0]
    .STATUS_DAC3        (dac13_status),                    // output [23:0]

    .SYSREF_IN_NORTH    (sysref_south[6]),                 // input
    .SYSREF_IN_SOUTH    (sysref_north[5]),                 // input
    .CLK_DIST_IN_NORTH  (clk_south[6]),                    // input
    .CLK_DIST_IN_SOUTH  (clk_north[5]),                    // input
    .T1_ALLOWED_NORTH   (t1_allowed[6]),                   // input

    .CLK_FIFO_LM        (),                                // Input
    .PLL_REFCLK_OUT     (),                                // output
    .PLL_DMON_OUT       (dac1_pll_dmon),                 // output

    .DAC_CLK_N          ( dac_clk_n[1] ),                  // input
    .DAC_CLK_P          ( dac_clk_p[1] ),                  // input

    .DATA_DAC0          ( data_dac0[511:256] ),            // input  [255:0]
    .DATA_DAC1          ( data_dac1[511:256] ),            // input  [255:0]
    .DATA_DAC2          ( data_dac2[511:256] ),            // input  [255:0]
    .DATA_DAC3          ( data_dac3[511:256] ),            // input  [255:0]
    .VOUT0_N            (vout10_n),                      // output
    .VOUT0_P            (vout10_p),                      // output
    .VOUT1_N            (),                               // output
    .VOUT1_P            (),                               // output
    .VOUT2_N            (vout12_n),                      // output
    .VOUT2_P            (vout12_p),                      // output
    .VOUT3_N            (),                               // output
    .VOUT3_P            ()                                // output
  );

  RFDAC #(
    .OPT_CLK_DIST         (230),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (7864.320000000001),
    .XPA_NUM_DACS         (2),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DUCS         (4),
    .XPA_CFG0             (2),
    .XPA_CFG1             (1),
    .XPA_CFG2             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) tx2_u_dac (
    .CONTROL_COMMON     ( {dac_fifo_en[2], dac2_cmn_control[14:0]} ),  // input  [15:0]
    .CONTROL_DAC0       ( dac20_control ),                // input  [15:0]
    .CONTROL_DAC1       ( dac21_control ),                // input  [15:0]
    .CONTROL_DAC2       ( dac22_control ),                // input  [15:0]
    .CONTROL_DAC3       ( dac23_control ),                // input  [15:0]

    .SYSREF_N           (),                                // input
    .SYSREF_P           (),                                // input

    .SYSREF_OUT_NORTH   (sysref_north[7]),                 // output
    .SYSREF_OUT_SOUTH   (sysref_south[6]),                 // output
    .CLK_DIST_OUT_NORTH (clk_north[7]),                    // output
    .CLK_DIST_OUT_SOUTH (clk_south[6]),                    // output
    .T1_ALLOWED_SOUTH   (t1_allowed[6]),                   // output

    .DADDR              ( dac_drpaddr[35:24] ),            // input  [11:0]
    .DCLK               ( drpclk ),                        // input
    .DEN                ( dac_drpen[2] ),                  // input
    .DWE                ( dac_drpwe[2] ),                  // input
    .DI                 ( dac_drpdi[47:32] ),              // input  [15:0]
    .DOUT               ( dac_drpout[47:32] ),             // output [15:0]
    .DRDY               ( dac_drprdy[2] ),                 // output

    .FABRIC_CLK         ( dac_fabric_clk[2] ),             // input
    .PLL_MONCLK         ( drpclk ),                        // input
    .PLL_REFCLK_IN      ( dac_pll_clk[2] ),                // input
    .CLK_DAC            ( clk_dac[2] ),                    // output
    .STATUS_COMMON      ( dac_common_stat[71:48] ),        // output [23:0]
    .STATUS_DAC0        (dac20_status),                    // output [23:0]
    .STATUS_DAC1        (dac21_status),                    // output [23:0]
    .STATUS_DAC2        (dac22_status),                    // output [23:0]
    .STATUS_DAC3        (dac23_status),                    // output [23:0]

    .SYSREF_IN_NORTH    (sysref_south[7]),                 // input
    .SYSREF_IN_SOUTH    (sysref_north[6]),                 // input
    .CLK_DIST_IN_NORTH  (clk_south[7]),                    // input
    .CLK_DIST_IN_SOUTH  (clk_north[6]),                    // input
    .T1_ALLOWED_NORTH   (t1_allowed[7]),                   // input

    .CLK_FIFO_LM        (),                                // Input
    .PLL_REFCLK_OUT     (),                                // output
    .PLL_DMON_OUT       (dac2_pll_dmon),                 // output

    .DAC_CLK_N          ( dac_clk_n[2] ),                  // input
    .DAC_CLK_P          ( dac_clk_p[2] ),                  // input

    .DATA_DAC0          ( data_dac0[767:512] ),            // input  [255:0]
    .DATA_DAC1          ( data_dac1[767:512] ),            // input  [255:0]
    .DATA_DAC2          ( data_dac2[767:512] ),            // input  [255:0]
    .DATA_DAC3          ( data_dac3[767:512] ),            // input  [255:0]
    .VOUT0_N            (vout20_n),                      // output
    .VOUT0_P            (vout20_p),                      // output
    .VOUT1_N            (),                               // output
    .VOUT1_P            (),                               // output
    .VOUT2_N            (vout22_n),                      // output
    .VOUT2_P            (vout22_p),                      // output
    .VOUT3_N            (),                               // output
    .VOUT3_P            ()                                // output
  );

  RFDAC #(
    .OPT_CLK_DIST         (231),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (7864.320000000001),
    .XPA_NUM_DACS         (2),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DUCS         (4),
    .XPA_CFG0             (2),
    .XPA_CFG1             (1),
    .XPA_CFG2             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) tx3_u_dac (
    .CONTROL_COMMON     ( {dac_fifo_en[3], dac3_cmn_control[14:0]} ),  // input  [15:0]
    .CONTROL_DAC0       ( dac30_control ),                // input  [15:0]
    .CONTROL_DAC1       ( dac31_control ),                // input  [15:0]
    .CONTROL_DAC2       ( dac32_control ),                // input  [15:0]
    .CONTROL_DAC3       ( dac33_control ),                // input  [15:0]

    .SYSREF_N           (),                                // input
    .SYSREF_P           (),                                // input

    .SYSREF_OUT_NORTH   (sysref_north[8]),                 // output
    .SYSREF_OUT_SOUTH   (sysref_south[7]),                 // output
    .CLK_DIST_OUT_NORTH (clk_north[8]),                    // output
    .CLK_DIST_OUT_SOUTH (clk_south[7]),                    // output
    .T1_ALLOWED_SOUTH   (t1_allowed[7]),                   // output

    .DADDR              ( dac_drpaddr[47:36] ),            // input  [11:0]
    .DCLK               ( drpclk ),                        // input
    .DEN                ( dac_drpen[3] ),                  // input
    .DWE                ( dac_drpwe[3] ),                  // input
    .DI                 ( dac_drpdi[63:48] ),              // input  [15:0]
    .DOUT               ( dac_drpout[63:48] ),             // output [15:0]
    .DRDY               ( dac_drprdy[3] ),                 // output

    .FABRIC_CLK         ( dac_fabric_clk[3] ),             // input
    .PLL_MONCLK         ( drpclk ),                        // input
    .PLL_REFCLK_IN      ( dac_pll_clk[3] ),                // input
    .CLK_DAC            ( clk_dac[3] ),                    // output
    .STATUS_COMMON      ( dac_common_stat[95:72] ),        // output [23:0]
    .STATUS_DAC0        (dac30_status),                    // output [23:0]
    .STATUS_DAC1        (dac31_status),                    // output [23:0]
    .STATUS_DAC2        (dac32_status),                    // output [23:0]
    .STATUS_DAC3        (dac33_status),                    // output [23:0]

    .SYSREF_IN_NORTH    (sysref_south[8]),                 // input
    .SYSREF_IN_SOUTH    (sysref_north[7]),                 // input
    .CLK_DIST_IN_NORTH  (clk_south[8]),                    // input
    .CLK_DIST_IN_SOUTH  (clk_north[7]),                    // input
    .T1_ALLOWED_NORTH   (t1_allowed[8]),                   // input

    .CLK_FIFO_LM        (),                                // Input
    .PLL_REFCLK_OUT     (),                                // output
    .PLL_DMON_OUT       (dac3_pll_dmon),                 // output

    .DAC_CLK_N          ( dac_clk_n[3] ),                  // input
    .DAC_CLK_P          ( dac_clk_p[3] ),                  // input

    .DATA_DAC0          ( data_dac0[1023:768] ),            // input  [255:0]
    .DATA_DAC1          ( data_dac1[1023:768] ),            // input  [255:0]
    .DATA_DAC2          ( data_dac2[1023:768] ),            // input  [255:0]
    .DATA_DAC3          ( data_dac3[1023:768] ),            // input  [255:0]
    .VOUT0_N            (vout30_n),                      // output
    .VOUT0_P            (vout30_p),                      // output
    .VOUT1_N            (),                               // output
    .VOUT1_P            (),                               // output
    .VOUT2_N            (vout32_n),                      // output
    .VOUT2_P            (vout32_p),                      // output
    .VOUT3_N            (),                               // output
    .VOUT3_P            ()                                // output
  );

  
RFADC #(
    .OPT_CLK_DIST         (224),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (4423.68),
    .XPA_NUM_ADCS         ("2I"),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DDCS         (2),
    .XPA_CFG0             (1),
    .XPA_CFG1             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) rx0_u_adc (
    .CONTROL_COMMON       ( {adc_fifo_en[0], adc0_cmn_control[14:4], (adc0_dsa_update | adc0_cmn_control[3]), adc0_sysref_gate, adc0_cmn_control[1:0]} ),   // input  [15:0]
    .CONTROL_ADC0         ( adc00_control ),                         // input  [15:0]
    .CONTROL_ADC1         ( adc01_control ),                         // input  [15:0]
    .CONTROL_ADC2         ( adc02_control ),                         // input  [15:0]
    .CONTROL_ADC3         ( adc03_control ),                         // input  [15:0]

    .SYSREF_OUT_NORTH     (sysref_north[1]),                 // output
    .SYSREF_OUT_SOUTH     (sysref_south[0]),                 // output
    .CLK_DIST_OUT_NORTH   (clk_north[1]),                    // output
    .CLK_DIST_OUT_SOUTH   (clk_south[0]),                    // output
    .T1_ALLOWED_SOUTH     (t1_allowed[0]),                   // output

    .DADDR                ( adc_drpaddr[11:0] ),             // input  [11:0]
    .DCLK                 ( drpclk ),                        // input
    .DEN                  ( adc_drpen[0] ),                  // input
    .DWE                  ( adc_drpwe[0] ),                  // input
    .DI                   ( adc_drpdi[15:0] ),               // input  [15:0]
    .DOUT                 ( adc_drpout[15:0] ),              // output [15:0]
    .DRDY                 ( adc_drprdy[0] ),                 // output

    .FABRIC_CLK           ( adc_fabric_clk[0] ),             // input
    .PLL_MONCLK           ( drpclk ),                        // input
    .PLL_REFCLK_IN        ( adc_pll_clk[0] ),                // input
    .CLK_ADC              ( clk_adc[0] ),                    // output
    .STATUS_COMMON        ( adc_common_stat[23:0] ),         // output [23:0]
    .STATUS_ADC0          ( adc0_stat[23:0] ),               // output [23:0]
    .STATUS_ADC1          ( adc1_stat[23:0] ),               // output [23:0]
    .STATUS_ADC2          ( adc2_stat[23:0] ),               // output [23:0]
    .STATUS_ADC3          ( adc3_stat[23:0] ),               // output [23:0]

    .SYSREF_IN_NORTH      (sysref_south[1]),                 // input
    .SYSREF_IN_SOUTH      (sysref_north[0]),                 // input
    .CLK_DIST_IN_NORTH    (clk_south[1]),                    // input
    .CLK_DIST_IN_SOUTH    (clk_north[0]),                    // input
    .T1_ALLOWED_NORTH     (t1_allowed[1]),                   // input

    .ADC_CLK_N            ( adc_clk_n[0] ),                  // input
    .ADC_CLK_P            ( adc_clk_p[0] ),                  // input

    .DATA_ADC0            ( data_adc0[ 191:0] ),           // output  [191:0]
    .DATA_ADC1            ( data_adc1[ 191:0] ),           // output  [191:0]
    .DATA_ADC2            ( data_adc2[ 191:0] ),           // output  [191:0]
    .DATA_ADC3            ( data_adc3[ 191:0] ),           // output  [191:0]

    .SYSREF_P             (),                                //
    .SYSREF_N             (),                                //
    .CLK_FIFO_LM          ( adc_fifo_clk[0] ),               //

    .PLL_REFCLK_OUT       (),                                //
    .PLL_DMON_OUT         (adc0_pll_dmon),                 //

    // 4gsps bonding points
    .VIN_I01_P            (vin0_01_p),                       // input
    .VIN_I01_N            (vin0_01_n),                       // input
    .VIN_I23_P            (vin0_23_p),                       // input
    .VIN_I23_N            (vin0_23_n),                       // input

    // 2gsps bonding points
    .VIN0_N               (),                                // input
    .VIN0_P               (),                                // input
    .VIN1_N               (),                                // input
    .VIN1_P               (),                                // input
    .VIN2_N               (),                                // input
    .VIN2_P               (),                                // input
    .VIN3_N               (),                                // input
    .VIN3_P               ()                                 // input
  ) ;
  
RFADC #(
    .OPT_CLK_DIST         (225),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (4423.68),
    .XPA_NUM_ADCS         ("2I"),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DDCS         (2),
    .XPA_CFG0             (1),
    .XPA_CFG1             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) rx1_u_adc (
    .CONTROL_COMMON       ( {adc_fifo_en[1], adc1_cmn_control[14:4], (adc1_dsa_update | adc1_cmn_control[3]), adc1_sysref_gate, adc1_cmn_control[1:0]} ),   // input  [15:0]
    .CONTROL_ADC0         ( adc10_control ),                         // input  [15:0]
    .CONTROL_ADC1         ( adc11_control ),                         // input  [15:0]
    .CONTROL_ADC2         ( adc12_control ),                         // input  [15:0]
    .CONTROL_ADC3         ( adc13_control ),                         // input  [15:0]

    .SYSREF_OUT_NORTH     (sysref_north[2]),                 // output
    .SYSREF_OUT_SOUTH     (sysref_south[1]),                 // output
    .CLK_DIST_OUT_NORTH   (clk_north[2]),                    // output
    .CLK_DIST_OUT_SOUTH   (clk_south[1]),                    // output
    .T1_ALLOWED_SOUTH     (t1_allowed[1]),                   // output

    .DADDR                ( adc_drpaddr[23:12] ),             // input  [11:0]
    .DCLK                 ( drpclk ),                        // input
    .DEN                  ( adc_drpen[1] ),                  // input
    .DWE                  ( adc_drpwe[1] ),                  // input
    .DI                   ( adc_drpdi[31:16] ),               // input  [15:0]
    .DOUT                 ( adc_drpout[31:16] ),              // output [15:0]
    .DRDY                 ( adc_drprdy[1] ),                 // output

    .FABRIC_CLK           ( adc_fabric_clk[1] ),             // input
    .PLL_MONCLK           ( drpclk ),                        // input
    .PLL_REFCLK_IN        ( adc_pll_clk[1] ),                // input
    .CLK_ADC              ( clk_adc[1] ),                    // output
    .STATUS_COMMON        ( adc_common_stat[47:24] ),         // output [23:0]
    .STATUS_ADC0          ( adc0_stat[47:24] ),               // output [23:0]
    .STATUS_ADC1          ( adc1_stat[47:24] ),               // output [23:0]
    .STATUS_ADC2          ( adc2_stat[47:24] ),               // output [23:0]
    .STATUS_ADC3          ( adc3_stat[47:24] ),               // output [23:0]

    .SYSREF_IN_NORTH      (sysref_south[2]),                 // input
    .SYSREF_IN_SOUTH      (sysref_north[1]),                 // input
    .CLK_DIST_IN_NORTH    (clk_south[2]),                    // input
    .CLK_DIST_IN_SOUTH    (clk_north[1]),                    // input
    .T1_ALLOWED_NORTH     (t1_allowed[2]),                   // input

    .ADC_CLK_N            ( adc_clk_n[1] ),                  // input
    .ADC_CLK_P            ( adc_clk_p[1] ),                  // input

    .DATA_ADC0            ( data_adc0[ 383:192] ),           // output  [191:0]
    .DATA_ADC1            ( data_adc1[ 383:192] ),           // output  [191:0]
    .DATA_ADC2            ( data_adc2[ 383:192] ),           // output  [191:0]
    .DATA_ADC3            ( data_adc3[ 383:192] ),           // output  [191:0]

    .SYSREF_P             (),                                //
    .SYSREF_N             (),                                //
    .CLK_FIFO_LM          ( adc_fifo_clk[1] ),               //

    .PLL_REFCLK_OUT       (),                                //
    .PLL_DMON_OUT         (adc1_pll_dmon),                 //

    // 4gsps bonding points
    .VIN_I01_P            (vin1_01_p),                       // input
    .VIN_I01_N            (vin1_01_n),                       // input
    .VIN_I23_P            (vin1_23_p),                       // input
    .VIN_I23_N            (vin1_23_n),                       // input

    // 2gsps bonding points
    .VIN0_N               (),                                // input
    .VIN0_P               (),                                // input
    .VIN1_N               (),                                // input
    .VIN1_P               (),                                // input
    .VIN2_N               (),                                // input
    .VIN2_P               (),                                // input
    .VIN3_N               (),                                // input
    .VIN3_P               ()                                 // input
  ) ;
  
RFADC #(
    .OPT_CLK_DIST         (226),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (4423.68),
    .XPA_NUM_ADCS         ("2I"),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DDCS         (2),
    .XPA_CFG0             (1),
    .XPA_CFG1             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) rx2_u_adc (
    .CONTROL_COMMON       ( {adc_fifo_en[2], adc2_cmn_control[14:4], (adc2_dsa_update | adc2_cmn_control[3]), adc2_sysref_gate, adc2_cmn_control[1:0]} ),   // input  [15:0]
    .CONTROL_ADC0         ( adc20_control ),                         // input  [15:0]
    .CONTROL_ADC1         ( adc21_control ),                         // input  [15:0]
    .CONTROL_ADC2         ( adc22_control ),                         // input  [15:0]
    .CONTROL_ADC3         ( adc23_control ),                         // input  [15:0]

    .SYSREF_OUT_NORTH     (sysref_north[3]),                 // output
    .SYSREF_OUT_SOUTH     (sysref_south[2]),                 // output
    .CLK_DIST_OUT_NORTH   (clk_north[3]),                    // output
    .CLK_DIST_OUT_SOUTH   (clk_south[2]),                    // output
    .T1_ALLOWED_SOUTH     (t1_allowed[2]),                   // output

    .DADDR                ( adc_drpaddr[35:24] ),             // input  [11:0]
    .DCLK                 ( drpclk ),                        // input
    .DEN                  ( adc_drpen[2] ),                  // input
    .DWE                  ( adc_drpwe[2] ),                  // input
    .DI                   ( adc_drpdi[47:32] ),               // input  [15:0]
    .DOUT                 ( adc_drpout[47:32] ),              // output [15:0]
    .DRDY                 ( adc_drprdy[2] ),                 // output

    .FABRIC_CLK           ( adc_fabric_clk[2] ),             // input
    .PLL_MONCLK           ( drpclk ),                        // input
    .PLL_REFCLK_IN        ( adc_pll_clk[2] ),                // input
    .CLK_ADC              ( clk_adc[2] ),                    // output
    .STATUS_COMMON        ( adc_common_stat[71:48] ),         // output [23:0]
    .STATUS_ADC0          ( adc0_stat[71:48] ),               // output [23:0]
    .STATUS_ADC1          ( adc1_stat[71:48] ),               // output [23:0]
    .STATUS_ADC2          ( adc2_stat[71:48] ),               // output [23:0]
    .STATUS_ADC3          ( adc3_stat[71:48] ),               // output [23:0]

    .SYSREF_IN_NORTH      (sysref_south[3]),                 // input
    .SYSREF_IN_SOUTH      (sysref_north[2]),                 // input
    .CLK_DIST_IN_NORTH    (clk_south[3]),                    // input
    .CLK_DIST_IN_SOUTH    (clk_north[2]),                    // input
    .T1_ALLOWED_NORTH     (t1_allowed[3]),                   // input

    .ADC_CLK_N            ( adc_clk_n[2] ),                  // input
    .ADC_CLK_P            ( adc_clk_p[2] ),                  // input

    .DATA_ADC0            ( data_adc0[ 575:384] ),           // output  [191:0]
    .DATA_ADC1            ( data_adc1[ 575:384] ),           // output  [191:0]
    .DATA_ADC2            ( data_adc2[ 575:384] ),           // output  [191:0]
    .DATA_ADC3            ( data_adc3[ 575:384] ),           // output  [191:0]

    .SYSREF_P             (),                                //
    .SYSREF_N             (),                                //
    .CLK_FIFO_LM          ( adc_fifo_clk[2] ),               //

    .PLL_REFCLK_OUT       (),                                //
    .PLL_DMON_OUT         (adc2_pll_dmon),                 //

    // 4gsps bonding points
    .VIN_I01_P            (vin2_01_p),                       // input
    .VIN_I01_N            (vin2_01_n),                       // input
    .VIN_I23_P            (vin2_23_p),                       // input
    .VIN_I23_N            (vin2_23_n),                       // input

    // 2gsps bonding points
    .VIN0_N               (),                                // input
    .VIN0_P               (),                                // input
    .VIN1_N               (),                                // input
    .VIN1_P               (),                                // input
    .VIN2_N               (),                                // input
    .VIN2_P               (),                                // input
    .VIN3_N               (),                                // input
    .VIN3_P               ()                                 // input
  ) ;
  
RFADC #(
    .OPT_CLK_DIST         (227),
    .SIM_DEVICE           ("ULTRASCALE_PLUS"),
    .XPA_SAMPLE_RATE_MSPS (4423.68),
    .XPA_NUM_ADCS         ("2I"),
    .XPA_PLL_USED         ("INTERNAL_PLL"),
    .XPA_NUM_DDCS         (2),
    .XPA_CFG0             (1),
    .XPA_CFG1             (1),
    .XPA_ACTIVE_DUTYCYCLE (100),
    .LD_DEVICE            (0)
  ) rx3_u_adc (
    .CONTROL_COMMON       ( {adc_fifo_en[3], adc3_cmn_control[14:4], (adc3_dsa_update | adc3_cmn_control[3]), adc3_sysref_gate, adc3_cmn_control[1:0]} ),   // input  [15:0]
    .CONTROL_ADC0         ( adc30_control ),                         // input  [15:0]
    .CONTROL_ADC1         ( adc31_control ),                         // input  [15:0]
    .CONTROL_ADC2         ( adc32_control ),                         // input  [15:0]
    .CONTROL_ADC3         ( adc33_control ),                         // input  [15:0]

    .SYSREF_OUT_NORTH     (sysref_north[4]),                 // output
    .SYSREF_OUT_SOUTH     (sysref_south[3]),                 // output
    .CLK_DIST_OUT_NORTH   (clk_north[4]),                    // output
    .CLK_DIST_OUT_SOUTH   (clk_south[3]),                    // output
    .T1_ALLOWED_SOUTH     (t1_allowed[3]),                   // output

    .DADDR                ( adc_drpaddr[47:36] ),             // input  [11:0]
    .DCLK                 ( drpclk ),                        // input
    .DEN                  ( adc_drpen[3] ),                  // input
    .DWE                  ( adc_drpwe[3] ),                  // input
    .DI                   ( adc_drpdi[63:48] ),               // input  [15:0]
    .DOUT                 ( adc_drpout[63:48] ),              // output [15:0]
    .DRDY                 ( adc_drprdy[3] ),                 // output

    .FABRIC_CLK           ( adc_fabric_clk[3] ),             // input
    .PLL_MONCLK           ( drpclk ),                        // input
    .PLL_REFCLK_IN        ( adc_pll_clk[3] ),                // input
    .CLK_ADC              ( clk_adc[3] ),                    // output
    .STATUS_COMMON        ( adc_common_stat[95:72] ),         // output [23:0]
    .STATUS_ADC0          ( adc0_stat[95:72] ),               // output [23:0]
    .STATUS_ADC1          ( adc1_stat[95:72] ),               // output [23:0]
    .STATUS_ADC2          ( adc2_stat[95:72] ),               // output [23:0]
    .STATUS_ADC3          ( adc3_stat[95:72] ),               // output [23:0]

    .SYSREF_IN_NORTH      (sysref_south[4]),                 // input
    .SYSREF_IN_SOUTH      (sysref_north[3]),                 // input
    .CLK_DIST_IN_NORTH    (clk_dac_to_adc),                  // input
    .CLK_DIST_IN_SOUTH    (clk_north[3]),                    // input
    .T1_ALLOWED_NORTH     (t1_allowed[4]),                   // input

    .ADC_CLK_N            ( adc_clk_n[3] ),                  // input
    .ADC_CLK_P            ( adc_clk_p[3] ),                  // input

    .DATA_ADC0            ( data_adc0[ 767:576] ),           // output  [191:0]
    .DATA_ADC1            ( data_adc1[ 767:576] ),           // output  [191:0]
    .DATA_ADC2            ( data_adc2[ 767:576] ),           // output  [191:0]
    .DATA_ADC3            ( data_adc3[ 767:576] ),           // output  [191:0]

    .SYSREF_P             (),                                //
    .SYSREF_N             (),                                //
    .CLK_FIFO_LM          ( adc_fifo_clk[3] ),               //

    .PLL_REFCLK_OUT       (),                                //
    .PLL_DMON_OUT         (adc3_pll_dmon),                 //

    // 4gsps bonding points
    .VIN_I01_P            (vin3_01_p),                       // input
    .VIN_I01_N            (vin3_01_n),                       // input
    .VIN_I23_P            (vin3_23_p),                       // input
    .VIN_I23_N            (vin3_23_n),                       // input

    // 2gsps bonding points
    .VIN0_N               (),                                // input
    .VIN0_P               (),                                // input
    .VIN1_N               (),                                // input
    .VIN1_P               (),                                // input
    .VIN2_N               (),                                // input
    .VIN2_P               (),                                // input
    .VIN3_N               (),                                // input
    .VIN3_P               ()                                 // input
  ) ;

  // Tie off unused SYSREF inputs
  assign sysref_south[8] = 1'b0;
  assign sysref_north[0] = 1'b0;
  // Tie off unused clock inputs
  // assign t1_allowed[8] = 1'b0;
  assign clk_dac_to_adc = clk_south[4];

  // Connect up DRP monitor
  // DAC0
  assign dac0_daddr_mon =  dac_drpaddr[11:0];
  assign dac0_di_mon    =  dac_drpdi[15:0];
  assign dac0_den_mon   =  dac_drpen[0];
  assign dac0_dwe_mon   =  dac_drpwe[0];
  assign dac0_do_mon    =  dac_drpout[15:0];
  assign dac0_drdy_mon  =  dac_drprdy[0];
  assign dac0_dreq_mon  =  dac0_drp_req;
  assign dac0_dgnt_mon  =  dac0_drp_gnt;

  // DAC1
  assign dac1_daddr_mon =  dac_drpaddr[23:12];
  assign dac1_di_mon    =  dac_drpdi[31:16];
  assign dac1_den_mon   =  dac_drpen[1];
  assign dac1_dwe_mon   =  dac_drpwe[1];
  assign dac1_do_mon    =  dac_drpout[31:16];
  assign dac1_drdy_mon  =  dac_drprdy[1];
  assign dac1_dreq_mon  =  dac1_drp_req;
  assign dac1_dgnt_mon  =  dac1_drp_gnt;

  // DAC2
  assign dac2_daddr_mon =  dac_drpaddr[35:24];
  assign dac2_di_mon    =  dac_drpdi[47:32];
  assign dac2_den_mon   =  dac_drpen[2];
  assign dac2_dwe_mon   =  dac_drpwe[2];
  assign dac2_do_mon    =  dac_drpout[47:32];
  assign dac2_drdy_mon  =  dac_drprdy[2];
  assign dac2_dreq_mon  =  dac2_drp_req;
  assign dac2_dgnt_mon  =  dac2_drp_gnt;

  // DAC3
  assign dac3_daddr_mon =  dac_drpaddr[47:36];
  assign dac3_di_mon    =  dac_drpdi[63:48];
  assign dac3_den_mon   =  dac_drpen[3];
  assign dac3_dwe_mon   =  dac_drpwe[3];
  assign dac3_do_mon    =  dac_drpout[63:48];
  assign dac3_drdy_mon  =  dac_drprdy[3];
  assign dac3_dreq_mon  =  dac3_drp_req;
  assign dac3_dgnt_mon  =  dac3_drp_gnt;

  // ADC0
  assign adc0_daddr_mon =  adc_drpaddr[11:0];
  assign adc0_di_mon    =  adc_drpdi[15:0];
  assign adc0_den_mon   =  adc_drpen[0];
  assign adc0_dwe_mon   =  adc_drpwe[0];
  assign adc0_do_mon    =  adc_drpout[15:0];
  assign adc0_drdy_mon  =  adc_drprdy[0];
  assign adc0_dreq_mon  =  adc0_drp_req;
  assign adc0_dgnt_mon  =  adc0_drp_gnt;

  // ADC1
  assign adc1_daddr_mon =  adc_drpaddr[23:12];
  assign adc1_di_mon    =  adc_drpdi[31:16];
  assign adc1_den_mon   =  adc_drpen[1];
  assign adc1_dwe_mon   =  adc_drpwe[1];
  assign adc1_do_mon    =  adc_drpout[31:16];
  assign adc1_drdy_mon  =  adc_drprdy[1];
  assign adc1_dreq_mon  =  adc1_drp_req;
  assign adc1_dgnt_mon  =  adc1_drp_gnt;

  // ADC2
  assign adc2_daddr_mon =  adc_drpaddr[35:24];
  assign adc2_di_mon    =  adc_drpdi[47:32];
  assign adc2_den_mon   =  adc_drpen[2];
  assign adc2_dwe_mon   =  adc_drpwe[2];
  assign adc2_do_mon    =  adc_drpout[47:32];
  assign adc2_drdy_mon  =  adc_drprdy[2];
  assign adc2_dreq_mon  =  adc2_drp_req;
  assign adc2_dgnt_mon  =  adc2_drp_gnt;

  // ADC3
  assign adc3_daddr_mon =  adc_drpaddr[47:36];
  assign adc3_di_mon    =  adc_drpdi[63:48];
  assign adc3_den_mon   =  adc_drpen[3];
  assign adc3_dwe_mon   =  adc_drpwe[3];
  assign adc3_do_mon    =  adc_drpout[63:48];
  assign adc3_drdy_mon  =  adc_drprdy[3];
  assign adc3_dreq_mon  =  adc3_drp_req;
  assign adc3_dgnt_mon  =  adc3_drp_gnt;


  // Connect up the ADC signal lost inputs
  assign adc0_signal_lost = {adc03_signal_lost, adc02_signal_lost, adc01_signal_lost, adc00_signal_lost};
  assign adc00_bg_cal_off = adc00_control[1];
  assign adc01_bg_cal_off = adc01_control[1];
  assign adc02_bg_cal_off = adc02_control[1];
  assign adc03_bg_cal_off = adc03_control[1];
  assign adc1_signal_lost = {adc13_signal_lost, adc12_signal_lost, adc11_signal_lost, adc10_signal_lost};
  assign adc10_bg_cal_off = adc10_control[1];
  assign adc11_bg_cal_off = adc11_control[1];
  assign adc12_bg_cal_off = adc12_control[1];
  assign adc13_bg_cal_off = adc13_control[1];
  assign adc2_signal_lost = {adc23_signal_lost, adc22_signal_lost, adc21_signal_lost, adc20_signal_lost};
  assign adc20_bg_cal_off = adc20_control[1];
  assign adc21_bg_cal_off = adc21_control[1];
  assign adc22_bg_cal_off = adc22_control[1];
  assign adc23_bg_cal_off = adc23_control[1];
  assign adc3_signal_lost = {adc33_signal_lost, adc32_signal_lost, adc31_signal_lost, adc30_signal_lost};
  assign adc30_bg_cal_off = adc30_control[1];
  assign adc31_bg_cal_off = adc31_control[1];
  assign adc32_bg_cal_off = adc32_control[1];
  assign adc33_bg_cal_off = adc33_control[1];

  assign adc0_sm_reset = (adc0_sm_reset_i | ~adc0_supplies_up_sync) & adc0_done;
  assign adc1_sm_reset = (adc1_sm_reset_i | ~adc1_supplies_up_sync) & adc1_done;
  assign adc2_sm_reset = (adc2_sm_reset_i | ~adc2_supplies_up_sync) & adc2_done;
  assign adc3_sm_reset = (adc3_sm_reset_i | ~adc3_supplies_up_sync) & adc3_done;

  assign dac0_sm_reset = (dac0_sm_reset_i | ~dac0_supplies_up_sync) & dac0_done;
  assign dac1_sm_reset = (dac1_sm_reset_i | ~dac1_supplies_up_sync) & dac1_done;
  assign dac2_sm_reset = (dac2_sm_reset_i | ~dac2_supplies_up_sync) & dac2_done;
  assign dac3_sm_reset = (dac3_sm_reset_i | ~dac3_supplies_up_sync) & dac3_done;

endmodule
