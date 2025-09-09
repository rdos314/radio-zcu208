//----------------------------------------------------------------------------
// Title : ROM for tile configuration
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

module rfdc_ex_rfip_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:868] = '{
       30'h07230000,  // Clock Network Control 0 (ADC0)
       30'h07240000,  // Clock Network Control 1 (ADC0)
       30'h07226018,  // Clock Distribution Control (ADC0)
       30'h07170022,  // PLL FB Div (ADC0)
       30'h070c0040,  // PLL Output Divide (ADC0)
       30'h07100050,  // PLL Ref clock divide (ADC0)
       30'h07000080,  // PLL SDM CONFIG0 (ADC0)
       30'h07060111,  // PLL SDM seed (ADC0)
       30'h07070011,  // PLL SDM seed setup (ADC0)
       30'h070e0d07,  // PLL ChargePump setup (ADC0)
       30'h070f2080,  // PLL temprature sensor control (ADC0)
       30'h0712ffff,  // PLL ChargePump setup (ADC0)
       30'h07137f86,  // PLL loop filter setup (ADC0)
       30'h07140006,  // PLL loop filter setup (ADC0)
       30'h07155800,  // PLL VCO setup (ADC0)
       30'h07160008,  // PLL VCO setup (ADC0)
       30'h070a7a21,  // PLL Coarse Frequency setup (ADC0)
       30'h070b7008,  // PLL Coarse Frequency setup (ADC0)
       30'h0711002d,  // PLL Voltage Regulator setup (ADC0)
       30'h072c0022,  // CLK_DIV (ADC0)
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h072dfdfe,  // HSCOM_PWR_MASK (ADC0)
       30'h07310062,  // CLOCK_DETECT_CTRL0 (ADC0)
       30'h07320032,  // CLOCK_DETECT_CTRL1 (ADC0)
       30'h07300000,  // FIFO_START (ADC0)
       30'h00020c08,  // ADC00 Data Width
       30'h00100003,  // ADC00 Decimation Config
       30'h00110001,  // ADC00 Decimation Mode
       30'h00221015,  // ADC00 Mixer Mode
       30'h002a0001,  // ADC00 NCO Phase Mode
       30'h00270000,  // ADC00 NCO Frequency Word 0
       30'h00260000,  // ADC00 NCO Frequency Word 1
       30'h00250000,  // ADC00 NCO Frequency Word 2
       30'h00290000,  // ADC00 NCO Phase Offset Word 0
       30'h00280000,  // ADC00 NCO Phase Offset Word 1
       30'h003a0020,  // ADC00 Switch Matrix Config
       30'h007101f1,  // ADC00 RX MC Config 0
       30'h00780002,  // ADC00 DSA Control
       30'h005181c3,  // ADC00 TI_DCB_CTRL0
       30'h0055d55a,  // ADC00 TI_TIME_SKEW_CTRL0
       30'h005a0000,  // ADC00 TI_TIME_SKEW_CTRL5
       30'h001a7cff,  // ADC00 TDD_MODE
       30'h001d001c,  // ADC00 CAL_FREEZE_MASK
       30'h00450091,  // ADC00_SIG_DET_CTRL
       30'h00460148,  // ADC00_SIG_DET_THRESHOLD_LEVEL0
       30'h0047012c,  // ADC00_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0048012c,  // ADC00_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0006000c,  // ADC00 FABRIC_DEBUG
       30'h01020c08,  // ADC01 Data Width
       30'h01100003,  // ADC01 Decimation Config
       30'h01110001,  // ADC01 Decimation Mode
       30'h01221015,  // ADC01 Mixer Mode
       30'h012a0002,  // ADC01 NCO Phase Mode
       30'h01270000,  // ADC01 NCO Frequency Word 0
       30'h01260000,  // ADC01 NCO Frequency Word 1
       30'h01250000,  // ADC01 NCO Frequency Word 2
       30'h01290000,  // ADC01 NCO Phase Offset Word 0
       30'h01280000,  // ADC01 NCO Phase Offset Word 1
       30'h013a0024,  // ADC01 Switch Matrix Config
       30'h017101f9,  // ADC01 RX MC Config 0
       30'h01780002,  // ADC01 DSA Control
       30'h015181c7,  // ADC01 TI_DCB_CTRL0
       30'h0155d55a,  // ADC01 TI_TIME_SKEW_CTRL0
       30'h015a0000,  // ADC01 TI_TIME_SKEW_CTRL5
       30'h011a7cff,  // ADC01 TDD_MODE
       30'h011d001c,  // ADC01 CAL_FREEZE_MASK
       30'h01450091,  // ADC01_SIG_DET_CTRL
       30'h01460148,  // ADC01_SIG_DET_THRESHOLD_LEVEL0
       30'h0147012c,  // ADC01_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0148012c,  // ADC01_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0106000c,  // ADC01 FABRIC_DEBUG
       30'h02020c08,  // ADC02 Data Width
       30'h02100003,  // ADC02 Decimation Config
       30'h02110001,  // ADC02 Decimation Mode
       30'h02221015,  // ADC02 Mixer Mode
       30'h022a0001,  // ADC02 NCO Phase Mode
       30'h02270000,  // ADC02 NCO Frequency Word 0
       30'h02260000,  // ADC02 NCO Frequency Word 1
       30'h02250000,  // ADC02 NCO Frequency Word 2
       30'h02290000,  // ADC02 NCO Phase Offset Word 0
       30'h02280000,  // ADC02 NCO Phase Offset Word 1
       30'h023a0028,  // ADC02 Switch Matrix Config
       30'h027101f1,  // ADC02 RX MC Config 0
       30'h02780002,  // ADC02 DSA Control
       30'h025181c3,  // ADC02 TI_DCB_CTRL0
       30'h0255d55a,  // ADC02 TI_TIME_SKEW_CTRL0
       30'h025a0000,  // ADC02 TI_TIME_SKEW_CTRL5
       30'h021a7cff,  // ADC02 TDD_MODE
       30'h021d001c,  // ADC02 CAL_FREEZE_MASK
       30'h02450091,  // ADC02_SIG_DET_CTRL
       30'h02460148,  // ADC02_SIG_DET_THRESHOLD_LEVEL0
       30'h0247012c,  // ADC02_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0248012c,  // ADC02_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0206000c,  // ADC02 FABRIC_DEBUG
       30'h03020c08,  // ADC03 Data Width
       30'h03100003,  // ADC03 Decimation Config
       30'h03110001,  // ADC03 Decimation Mode
       30'h03221015,  // ADC03 Mixer Mode
       30'h032a0002,  // ADC03 NCO Phase Mode
       30'h03270000,  // ADC03 NCO Frequency Word 0
       30'h03260000,  // ADC03 NCO Frequency Word 1
       30'h03250000,  // ADC03 NCO Frequency Word 2
       30'h03290000,  // ADC03 NCO Phase Offset Word 0
       30'h03280000,  // ADC03 NCO Phase Offset Word 1
       30'h033a002c,  // ADC03 Switch Matrix Config
       30'h037101f9,  // ADC03 RX MC Config 0
       30'h03780002,  // ADC03 DSA Control
       30'h035181c7,  // ADC03 TI_DCB_CTRL0
       30'h0355d55a,  // ADC03 TI_TIME_SKEW_CTRL0
       30'h035a0000,  // ADC03 TI_TIME_SKEW_CTRL5
       30'h031a7cff,  // ADC03 TDD_MODE
       30'h031d001c,  // ADC03 CAL_FREEZE_MASK
       30'h03450091,  // ADC03_SIG_DET_CTRL
       30'h03460148,  // ADC03_SIG_DET_THRESHOLD_LEVEL0
       30'h0347012c,  // ADC03_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0348012c,  // ADC03_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0306000c,  // ADC03 FABRIC_DEBUG
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240000,  // Clock Network Control 1 (ADC1)
       30'h0f226090,  // Clock Distribution Control (ADC1)
       30'h0f170022,  // PLL FB Div (ADC1)
       30'h0f0c0040,  // PLL Output Divide (ADC1)
       30'h0f100050,  // PLL Ref clock divide (ADC1)
       30'h0f000080,  // PLL SDM CONFIG0 (ADC1)
       30'h0f060111,  // PLL SDM seed (ADC1)
       30'h0f070011,  // PLL SDM seed setup (ADC1)
       30'h0f0e0d07,  // PLL ChargePump setup (ADC1)
       30'h0f0f2080,  // PLL temprature sensor control (ADC1)
       30'h0f12ffff,  // PLL ChargePump setup (ADC1)
       30'h0f137f86,  // PLL loop filter setup (ADC1)
       30'h0f140006,  // PLL loop filter setup (ADC1)
       30'h0f155800,  // PLL VCO setup (ADC1)
       30'h0f160008,  // PLL VCO setup (ADC1)
       30'h0f0a7a21,  // PLL Coarse Frequency setup (ADC1)
       30'h0f0b7008,  // PLL Coarse Frequency setup (ADC1)
       30'h0f11002d,  // PLL Voltage Regulator setup (ADC1)
       30'h0f2c0022,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2dfdfe,  // HSCOM_PWR_MASK (ADC1)
       30'h0f310062,  // CLOCK_DETECT_CTRL0 (ADC1)
       30'h0f320032,  // CLOCK_DETECT_CTRL1 (ADC1)
       30'h0f300000,  // FIFO_START (ADC1)
       30'h08020c08,  // ADC10 Data Width
       30'h08100003,  // ADC10 Decimation Config
       30'h08110001,  // ADC10 Decimation Mode
       30'h08221015,  // ADC10 Mixer Mode
       30'h082a0001,  // ADC10 NCO Phase Mode
       30'h08270000,  // ADC10 NCO Frequency Word 0
       30'h08260000,  // ADC10 NCO Frequency Word 1
       30'h08250000,  // ADC10 NCO Frequency Word 2
       30'h08290000,  // ADC10 NCO Phase Offset Word 0
       30'h08280000,  // ADC10 NCO Phase Offset Word 1
       30'h083a0020,  // ADC10 Switch Matrix Config
       30'h087101f1,  // ADC10 RX MC Config 0
       30'h08780002,  // ADC10 DSA Control
       30'h085181c3,  // ADC10 TI_DCB_CTRL0
       30'h0855d55a,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h085a0000,  // ADC10 TI_TIME_SKEW_CTRL5
       30'h081a7cff,  // ADC10 TDD_MODE
       30'h081d001c,  // ADC10 CAL_FREEZE_MASK
       30'h08450091,  // ADC10_SIG_DET_CTRL
       30'h08460148,  // ADC10_SIG_DET_THRESHOLD_LEVEL0
       30'h0847012c,  // ADC10_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0848012c,  // ADC10_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0806000c,  // ADC10 FABRIC_DEBUG
       30'h09020c08,  // ADC11 Data Width
       30'h09100003,  // ADC11 Decimation Config
       30'h09110001,  // ADC11 Decimation Mode
       30'h09221015,  // ADC11 Mixer Mode
       30'h092a0002,  // ADC11 NCO Phase Mode
       30'h09270000,  // ADC11 NCO Frequency Word 0
       30'h09260000,  // ADC11 NCO Frequency Word 1
       30'h09250000,  // ADC11 NCO Frequency Word 2
       30'h09290000,  // ADC11 NCO Phase Offset Word 0
       30'h09280000,  // ADC11 NCO Phase Offset Word 1
       30'h093a0024,  // ADC11 Switch Matrix Config
       30'h097101f9,  // ADC11 RX MC Config 0
       30'h09780002,  // ADC11 DSA Control
       30'h095181c7,  // ADC11 TI_DCB_CTRL0
       30'h0955d55a,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h095a0000,  // ADC11 TI_TIME_SKEW_CTRL5
       30'h091a7cff,  // ADC11 TDD_MODE
       30'h091d001c,  // ADC11 CAL_FREEZE_MASK
       30'h09450091,  // ADC11_SIG_DET_CTRL
       30'h09460148,  // ADC11_SIG_DET_THRESHOLD_LEVEL0
       30'h0947012c,  // ADC11_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0948012c,  // ADC11_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0906000c,  // ADC11 FABRIC_DEBUG
       30'h0a020c08,  // ADC12 Data Width
       30'h0a100003,  // ADC12 Decimation Config
       30'h0a110001,  // ADC12 Decimation Mode
       30'h0a221015,  // ADC12 Mixer Mode
       30'h0a2a0001,  // ADC12 NCO Phase Mode
       30'h0a270000,  // ADC12 NCO Frequency Word 0
       30'h0a260000,  // ADC12 NCO Frequency Word 1
       30'h0a250000,  // ADC12 NCO Frequency Word 2
       30'h0a290000,  // ADC12 NCO Phase Offset Word 0
       30'h0a280000,  // ADC12 NCO Phase Offset Word 1
       30'h0a3a0028,  // ADC12 Switch Matrix Config
       30'h0a7101f1,  // ADC12 RX MC Config 0
       30'h0a780002,  // ADC12 DSA Control
       30'h0a5181c3,  // ADC12 TI_DCB_CTRL0
       30'h0a55d55a,  // ADC12 TI_TIME_SKEW_CTRL0
       30'h0a5a0000,  // ADC12 TI_TIME_SKEW_CTRL5
       30'h0a1a7cff,  // ADC12 TDD_MODE
       30'h0a1d001c,  // ADC12 CAL_FREEZE_MASK
       30'h0a450091,  // ADC12_SIG_DET_CTRL
       30'h0a460148,  // ADC12_SIG_DET_THRESHOLD_LEVEL0
       30'h0a47012c,  // ADC12_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0a48012c,  // ADC12_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0a06000c,  // ADC12 FABRIC_DEBUG
       30'h0b020c08,  // ADC13 Data Width
       30'h0b100003,  // ADC13 Decimation Config
       30'h0b110001,  // ADC13 Decimation Mode
       30'h0b221015,  // ADC13 Mixer Mode
       30'h0b2a0002,  // ADC13 NCO Phase Mode
       30'h0b270000,  // ADC13 NCO Frequency Word 0
       30'h0b260000,  // ADC13 NCO Frequency Word 1
       30'h0b250000,  // ADC13 NCO Frequency Word 2
       30'h0b290000,  // ADC13 NCO Phase Offset Word 0
       30'h0b280000,  // ADC13 NCO Phase Offset Word 1
       30'h0b3a002c,  // ADC13 Switch Matrix Config
       30'h0b7101f9,  // ADC13 RX MC Config 0
       30'h0b780002,  // ADC13 DSA Control
       30'h0b5181c7,  // ADC13 TI_DCB_CTRL0
       30'h0b55d55a,  // ADC13 TI_TIME_SKEW_CTRL0
       30'h0b5a0000,  // ADC13 TI_TIME_SKEW_CTRL5
       30'h0b1a7cff,  // ADC13 TDD_MODE
       30'h0b1d001c,  // ADC13 CAL_FREEZE_MASK
       30'h0b450091,  // ADC13_SIG_DET_CTRL
       30'h0b460148,  // ADC13_SIG_DET_THRESHOLD_LEVEL0
       30'h0b47012c,  // ADC13_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h0b48012c,  // ADC13_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h0b06000c,  // ADC13 FABRIC_DEBUG
       30'h17230000,  // Clock Network Control 0 (ADC2)
       30'h17240000,  // Clock Network Control 1 (ADC2)
       30'h1722a358,  // Clock Distribution Control (ADC2)
       30'h17170022,  // PLL FB Div (ADC2)
       30'h170c0040,  // PLL Output Divide (ADC2)
       30'h17100050,  // PLL Ref clock divide (ADC2)
       30'h17000080,  // PLL SDM CONFIG0 (ADC2)
       30'h17060111,  // PLL SDM seed (ADC2)
       30'h17070011,  // PLL SDM seed setup (ADC2)
       30'h170e0d07,  // PLL ChargePump setup (ADC2)
       30'h170f2080,  // PLL temprature sensor control (ADC2)
       30'h1712ffff,  // PLL ChargePump setup (ADC2)
       30'h17137f86,  // PLL loop filter setup (ADC2)
       30'h17140006,  // PLL loop filter setup (ADC2)
       30'h17155800,  // PLL VCO setup (ADC2)
       30'h17160008,  // PLL VCO setup (ADC2)
       30'h170a7a21,  // PLL Coarse Frequency setup (ADC2)
       30'h170b7008,  // PLL Coarse Frequency setup (ADC2)
       30'h1711002d,  // PLL Voltage Regulator setup (ADC2)
       30'h172c0022,  // CLK_DIV (ADC2)
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h172dfffc,  // HSCOM_PWR_MASK (ADC2)
       30'h17310062,  // CLOCK_DETECT_CTRL0 (ADC2)
       30'h17320032,  // CLOCK_DETECT_CTRL1 (ADC2)
       30'h17300000,  // FIFO_START (ADC2)
       30'h10020c08,  // ADC20 Data Width
       30'h10100003,  // ADC20 Decimation Config
       30'h10110001,  // ADC20 Decimation Mode
       30'h10221015,  // ADC20 Mixer Mode
       30'h102a0001,  // ADC20 NCO Phase Mode
       30'h10270000,  // ADC20 NCO Frequency Word 0
       30'h10260000,  // ADC20 NCO Frequency Word 1
       30'h10250000,  // ADC20 NCO Frequency Word 2
       30'h10290000,  // ADC20 NCO Phase Offset Word 0
       30'h10280000,  // ADC20 NCO Phase Offset Word 1
       30'h103a0020,  // ADC20 Switch Matrix Config
       30'h107101f1,  // ADC20 RX MC Config 0
       30'h10780002,  // ADC20 DSA Control
       30'h105181c3,  // ADC20 TI_DCB_CTRL0
       30'h1055d55a,  // ADC20 TI_TIME_SKEW_CTRL0
       30'h105a0000,  // ADC20 TI_TIME_SKEW_CTRL5
       30'h101a7cff,  // ADC20 TDD_MODE
       30'h101d001c,  // ADC20 CAL_FREEZE_MASK
       30'h10450091,  // ADC20_SIG_DET_CTRL
       30'h10460148,  // ADC20_SIG_DET_THRESHOLD_LEVEL0
       30'h1047012c,  // ADC20_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1048012c,  // ADC20_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1006000c,  // ADC20 FABRIC_DEBUG
       30'h11020c08,  // ADC21 Data Width
       30'h11100003,  // ADC21 Decimation Config
       30'h11110001,  // ADC21 Decimation Mode
       30'h11221015,  // ADC21 Mixer Mode
       30'h112a0002,  // ADC21 NCO Phase Mode
       30'h11270000,  // ADC21 NCO Frequency Word 0
       30'h11260000,  // ADC21 NCO Frequency Word 1
       30'h11250000,  // ADC21 NCO Frequency Word 2
       30'h11290000,  // ADC21 NCO Phase Offset Word 0
       30'h11280000,  // ADC21 NCO Phase Offset Word 1
       30'h113a0024,  // ADC21 Switch Matrix Config
       30'h117101f9,  // ADC21 RX MC Config 0
       30'h11780002,  // ADC21 DSA Control
       30'h115181c7,  // ADC21 TI_DCB_CTRL0
       30'h1155d55a,  // ADC21 TI_TIME_SKEW_CTRL0
       30'h115a0000,  // ADC21 TI_TIME_SKEW_CTRL5
       30'h111a7cff,  // ADC21 TDD_MODE
       30'h111d001c,  // ADC21 CAL_FREEZE_MASK
       30'h11450091,  // ADC21_SIG_DET_CTRL
       30'h11460148,  // ADC21_SIG_DET_THRESHOLD_LEVEL0
       30'h1147012c,  // ADC21_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1148012c,  // ADC21_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1106000c,  // ADC21 FABRIC_DEBUG
       30'h12020c08,  // ADC22 Data Width
       30'h12100003,  // ADC22 Decimation Config
       30'h12110001,  // ADC22 Decimation Mode
       30'h12221015,  // ADC22 Mixer Mode
       30'h122a0001,  // ADC22 NCO Phase Mode
       30'h12270000,  // ADC22 NCO Frequency Word 0
       30'h12260000,  // ADC22 NCO Frequency Word 1
       30'h12250000,  // ADC22 NCO Frequency Word 2
       30'h12290000,  // ADC22 NCO Phase Offset Word 0
       30'h12280000,  // ADC22 NCO Phase Offset Word 1
       30'h123a0028,  // ADC22 Switch Matrix Config
       30'h127101f1,  // ADC22 RX MC Config 0
       30'h12780002,  // ADC22 DSA Control
       30'h125181c3,  // ADC22 TI_DCB_CTRL0
       30'h1255d55a,  // ADC22 TI_TIME_SKEW_CTRL0
       30'h125a0000,  // ADC22 TI_TIME_SKEW_CTRL5
       30'h121a7cff,  // ADC22 TDD_MODE
       30'h121d001c,  // ADC22 CAL_FREEZE_MASK
       30'h12450091,  // ADC22_SIG_DET_CTRL
       30'h12460148,  // ADC22_SIG_DET_THRESHOLD_LEVEL0
       30'h1247012c,  // ADC22_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1248012c,  // ADC22_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1206000c,  // ADC22 FABRIC_DEBUG
       30'h13020c08,  // ADC23 Data Width
       30'h13100003,  // ADC23 Decimation Config
       30'h13110001,  // ADC23 Decimation Mode
       30'h13221015,  // ADC23 Mixer Mode
       30'h132a0002,  // ADC23 NCO Phase Mode
       30'h13270000,  // ADC23 NCO Frequency Word 0
       30'h13260000,  // ADC23 NCO Frequency Word 1
       30'h13250000,  // ADC23 NCO Frequency Word 2
       30'h13290000,  // ADC23 NCO Phase Offset Word 0
       30'h13280000,  // ADC23 NCO Phase Offset Word 1
       30'h133a002c,  // ADC23 Switch Matrix Config
       30'h137101f9,  // ADC23 RX MC Config 0
       30'h13780002,  // ADC23 DSA Control
       30'h135181c7,  // ADC23 TI_DCB_CTRL0
       30'h1355d55a,  // ADC23 TI_TIME_SKEW_CTRL0
       30'h135a0000,  // ADC23 TI_TIME_SKEW_CTRL5
       30'h131a7cff,  // ADC23 TDD_MODE
       30'h131d001c,  // ADC23 CAL_FREEZE_MASK
       30'h13450091,  // ADC23_SIG_DET_CTRL
       30'h13460148,  // ADC23_SIG_DET_THRESHOLD_LEVEL0
       30'h1347012c,  // ADC23_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1348012c,  // ADC23_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1306000c,  // ADC23 FABRIC_DEBUG
       30'h1f230000,  // Clock Network Control 0 (ADC3)
       30'h1f240000,  // Clock Network Control 1 (ADC3)
       30'h1f222010,  // Clock Distribution Control (ADC3)
       30'h1f170022,  // PLL FB Div (ADC3)
       30'h1f0c0040,  // PLL Output Divide (ADC3)
       30'h1f100050,  // PLL Ref clock divide (ADC3)
       30'h1f000080,  // PLL SDM CONFIG0 (ADC3)
       30'h1f060111,  // PLL SDM seed (ADC3)
       30'h1f070011,  // PLL SDM seed setup (ADC3)
       30'h1f0e0d07,  // PLL ChargePump setup (ADC3)
       30'h1f0f2080,  // PLL temprature sensor control (ADC3)
       30'h1f12ffff,  // PLL ChargePump setup (ADC3)
       30'h1f137f86,  // PLL loop filter setup (ADC3)
       30'h1f140006,  // PLL loop filter setup (ADC3)
       30'h1f155800,  // PLL VCO setup (ADC3)
       30'h1f160008,  // PLL VCO setup (ADC3)
       30'h1f0a7a21,  // PLL Coarse Frequency setup (ADC3)
       30'h1f0b7008,  // PLL Coarse Frequency setup (ADC3)
       30'h1f11002d,  // PLL Voltage Regulator setup (ADC3)
       30'h1f2c0022,  // CLK_DIV (ADC3)
       30'h1f280700,  // SYSREF Distribution (ADC3)
       30'h1f2dfdfe,  // HSCOM_PWR_MASK (ADC3)
       30'h1f310062,  // CLOCK_DETECT_CTRL0 (ADC3)
       30'h1f320032,  // CLOCK_DETECT_CTRL1 (ADC3)
       30'h1f300000,  // FIFO_START (ADC3)
       30'h18020c08,  // ADC30 Data Width
       30'h18100003,  // ADC30 Decimation Config
       30'h18110001,  // ADC30 Decimation Mode
       30'h18221015,  // ADC30 Mixer Mode
       30'h182a0001,  // ADC30 NCO Phase Mode
       30'h18270000,  // ADC30 NCO Frequency Word 0
       30'h18260000,  // ADC30 NCO Frequency Word 1
       30'h18250000,  // ADC30 NCO Frequency Word 2
       30'h18290000,  // ADC30 NCO Phase Offset Word 0
       30'h18280000,  // ADC30 NCO Phase Offset Word 1
       30'h183a0020,  // ADC30 Switch Matrix Config
       30'h187101f1,  // ADC30 RX MC Config 0
       30'h18780002,  // ADC30 DSA Control
       30'h185181c3,  // ADC30 TI_DCB_CTRL0
       30'h1855d55a,  // ADC30 TI_TIME_SKEW_CTRL0
       30'h185a0000,  // ADC30 TI_TIME_SKEW_CTRL5
       30'h181a7cff,  // ADC30 TDD_MODE
       30'h181d001c,  // ADC30 CAL_FREEZE_MASK
       30'h18450091,  // ADC30_SIG_DET_CTRL
       30'h18460148,  // ADC30_SIG_DET_THRESHOLD_LEVEL0
       30'h1847012c,  // ADC30_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1848012c,  // ADC30_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1806000c,  // ADC30 FABRIC_DEBUG
       30'h19020c08,  // ADC31 Data Width
       30'h19100003,  // ADC31 Decimation Config
       30'h19110001,  // ADC31 Decimation Mode
       30'h19221015,  // ADC31 Mixer Mode
       30'h192a0002,  // ADC31 NCO Phase Mode
       30'h19270000,  // ADC31 NCO Frequency Word 0
       30'h19260000,  // ADC31 NCO Frequency Word 1
       30'h19250000,  // ADC31 NCO Frequency Word 2
       30'h19290000,  // ADC31 NCO Phase Offset Word 0
       30'h19280000,  // ADC31 NCO Phase Offset Word 1
       30'h193a0024,  // ADC31 Switch Matrix Config
       30'h197101f9,  // ADC31 RX MC Config 0
       30'h19780002,  // ADC31 DSA Control
       30'h195181c7,  // ADC31 TI_DCB_CTRL0
       30'h1955d55a,  // ADC31 TI_TIME_SKEW_CTRL0
       30'h195a0000,  // ADC31 TI_TIME_SKEW_CTRL5
       30'h191a7cff,  // ADC31 TDD_MODE
       30'h191d001c,  // ADC31 CAL_FREEZE_MASK
       30'h19450091,  // ADC31_SIG_DET_CTRL
       30'h19460148,  // ADC31_SIG_DET_THRESHOLD_LEVEL0
       30'h1947012c,  // ADC31_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1948012c,  // ADC31_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1906000c,  // ADC31 FABRIC_DEBUG
       30'h1a020c08,  // ADC32 Data Width
       30'h1a100003,  // ADC32 Decimation Config
       30'h1a110001,  // ADC32 Decimation Mode
       30'h1a221015,  // ADC32 Mixer Mode
       30'h1a2a0001,  // ADC32 NCO Phase Mode
       30'h1a270000,  // ADC32 NCO Frequency Word 0
       30'h1a260000,  // ADC32 NCO Frequency Word 1
       30'h1a250000,  // ADC32 NCO Frequency Word 2
       30'h1a290000,  // ADC32 NCO Phase Offset Word 0
       30'h1a280000,  // ADC32 NCO Phase Offset Word 1
       30'h1a3a0028,  // ADC32 Switch Matrix Config
       30'h1a7101f1,  // ADC32 RX MC Config 0
       30'h1a780002,  // ADC32 DSA Control
       30'h1a5181c3,  // ADC32 TI_DCB_CTRL0
       30'h1a55d55a,  // ADC32 TI_TIME_SKEW_CTRL0
       30'h1a5a0000,  // ADC32 TI_TIME_SKEW_CTRL5
       30'h1a1a7cff,  // ADC32 TDD_MODE
       30'h1a1d001c,  // ADC32 CAL_FREEZE_MASK
       30'h1a450091,  // ADC32_SIG_DET_CTRL
       30'h1a460148,  // ADC32_SIG_DET_THRESHOLD_LEVEL0
       30'h1a47012c,  // ADC32_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1a48012c,  // ADC32_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1a06000c,  // ADC32 FABRIC_DEBUG
       30'h1b020c08,  // ADC33 Data Width
       30'h1b100003,  // ADC33 Decimation Config
       30'h1b110001,  // ADC33 Decimation Mode
       30'h1b221015,  // ADC33 Mixer Mode
       30'h1b2a0002,  // ADC33 NCO Phase Mode
       30'h1b270000,  // ADC33 NCO Frequency Word 0
       30'h1b260000,  // ADC33 NCO Frequency Word 1
       30'h1b250000,  // ADC33 NCO Frequency Word 2
       30'h1b290000,  // ADC33 NCO Phase Offset Word 0
       30'h1b280000,  // ADC33 NCO Phase Offset Word 1
       30'h1b3a002c,  // ADC33 Switch Matrix Config
       30'h1b7101f9,  // ADC33 RX MC Config 0
       30'h1b780002,  // ADC33 DSA Control
       30'h1b5181c7,  // ADC33 TI_DCB_CTRL0
       30'h1b55d55a,  // ADC33 TI_TIME_SKEW_CTRL0
       30'h1b5a0000,  // ADC33 TI_TIME_SKEW_CTRL5
       30'h1b1a7cff,  // ADC33 TDD_MODE
       30'h1b1d001c,  // ADC33 CAL_FREEZE_MASK
       30'h1b450091,  // ADC33_SIG_DET_CTRL
       30'h1b460148,  // ADC33_SIG_DET_THRESHOLD_LEVEL0
       30'h1b47012c,  // ADC33_SIG_DET_THRESHOLD_LEVEL0_CNT_ON
       30'h1b48012c,  // ADC33_SIG_DET_THRESHOLD_LEVEL0_CNT_OFF
       30'h1b06000c,  // ADC33 FABRIC_DEBUG
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240000,  // Clock Network Control 1 (DAC0)
       30'h2722a458,  // Clock Distribution Control (DAC0)
       30'h2717001e,  // PLL FB Div (DAC0)
       30'h270c0400,  // PLL Output Divide (DAC0)
       30'h27100050,  // PLL Ref clock divide (DAC0)
       30'h27000080,  // PLL SDM CONFIG0 (DAC0)
       30'h27060111,  // PLL SDM seed (DAC0)
       30'h27070011,  // PLL SDM seed setup (DAC0)
       30'h270e0d07,  // PLL ChargePump setup (DAC0)
       30'h270f2080,  // PLL temprature sensor control (DAC0)
       30'h2712ffff,  // PLL ChargePump setup (DAC0)
       30'h27137fe2,  // PLL loop filter setup (DAC0)
       30'h27140006,  // PLL loop filter setup (DAC0)
       30'h27155f03,  // PLL VCO setup (DAC0)
       30'h27160008,  // PLL VCO setup (DAC0)
       30'h270a7a21,  // PLL Coarse Frequency setup (DAC0)
       30'h270b7008,  // PLL Coarse Frequency setup (DAC0)
       30'h2711002d,  // PLL Voltage Regulator setup (DAC0)
       30'h272c0022,  // CLK_DIV (DAC0)
       30'h2728ca80,  // SYSREF Distribution (DAC0)
       30'h272dfffc,  // HSCOM_PWR_MASK (DAC0)
       30'h273103e6,  // CLOCK_DETECT_CTRL0 (DAC0)
       30'h273204e1,  // CLOCK_DETECT_CTRL1 (DAC0)
       30'h20020810,  // DAC00 Data Width
       30'h20100202,  // DAC00 Interpolation Control
       30'h20110001,  // DAC00 Interpolation Data
       30'h20220c03,  // DAC00 Mixer Mode
       30'h20270000,  // DAC00 NCO Frequency Word 0
       30'h20260000,  // DAC00 NCO Frequency Word 1
       30'h20250000,  // DAC00 NCO Frequency Word 2
       30'h20290000,  // DAC00 NCO Phase Offest Word 0
       30'h20280000,  // DAC00 NCO Phase Offest Word 1
       30'h20300000,  // DAC00 Inv Sinc Filter
       30'h2031005c,  // DAC00 Multiband Config
       30'h20600009,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h20718000,  // DAC00 MC_CONFIG0
       30'h2073e6d6,  // DAC00 MC_CONFIG2
       30'h2074aed0,  // DAC00 MC_CONFIG3
       30'h20660001,  // DAC00 VOP_CTRL
       30'h200d0002,  // DAC00 DATAPATH
       30'h20040000,  // DAC00 FIFO_START
       30'h20183fff,  // DAC00 TDD_MODE
       30'h20070008,  // DAC00 FABRIC_DEBUG
       30'h21020810,  // DAC01 Data Width
       30'h21100202,  // DAC01 Interpolation Control
       30'h21110001,  // DAC01 Interpolation Data
       30'h21220c03,  // DAC01 Mixer Mode
       30'h21270000,  // DAC01 NCO Frequency Word 0
       30'h21260000,  // DAC01 NCO Frequency Word 1
       30'h21250000,  // DAC01 NCO Frequency Word 2
       30'h21290000,  // DAC01 NCO Phase Offest Word 0
       30'h21280000,  // DAC01 NCO Phase Offest Word 1
       30'h21300000,  // DAC01 Inv Sinc Filter
       30'h21310000,  // DAC01 Multiband Config
       30'h21600009,  // DAC01 Decoder Control
       30'h21610001,  // DAC01 Decoder Clock Enable
       30'h210d0002,  // DAC01 DATAPATH
       30'h21040000,  // DAC01 FIFO_START
       30'h21183fff,  // DAC01 TDD_MODE
       30'h21070008,  // DAC01 FABRIC_DEBUG
       30'h22020810,  // DAC02 Data Width
       30'h22100202,  // DAC02 Interpolation Control
       30'h22110001,  // DAC02 Interpolation Data
       30'h22220c03,  // DAC02 Mixer Mode
       30'h22270000,  // DAC02 NCO Frequency Word 0
       30'h22260000,  // DAC02 NCO Frequency Word 1
       30'h22250000,  // DAC02 NCO Frequency Word 2
       30'h22290000,  // DAC02 NCO Phase Offest Word 0
       30'h22280000,  // DAC02 NCO Phase Offest Word 1
       30'h22300000,  // DAC02 Inv Sinc Filter
       30'h2231005c,  // DAC02 Multiband Config
       30'h22600009,  // DAC02 Decoder Control
       30'h22610001,  // DAC02 Decoder Clock Enable
       30'h22718000,  // DAC02 MC_CONFIG0
       30'h2273e6d6,  // DAC02 MC_CONFIG2
       30'h2274aed0,  // DAC02 MC_CONFIG3
       30'h22660001,  // DAC02 VOP_CTRL
       30'h220d0002,  // DAC02 DATAPATH
       30'h22040000,  // DAC02 FIFO_START
       30'h22183fff,  // DAC02 TDD_MODE
       30'h22070008,  // DAC02 FABRIC_DEBUG
       30'h23020810,  // DAC03 Data Width
       30'h23100202,  // DAC03 Interpolation Control
       30'h23110001,  // DAC03 Interpolation Data
       30'h23220c03,  // DAC03 Mixer Mode
       30'h23270000,  // DAC03 NCO Frequency Word 0
       30'h23260000,  // DAC03 NCO Frequency Word 1
       30'h23250000,  // DAC03 NCO Frequency Word 2
       30'h23290000,  // DAC03 NCO Phase Offest Word 0
       30'h23280000,  // DAC03 NCO Phase Offest Word 1
       30'h23300000,  // DAC03 Inv Sinc Filter
       30'h23310000,  // DAC03 Multiband Config
       30'h23600009,  // DAC03 Decoder Control
       30'h23610001,  // DAC03 Decoder Clock Enable
       30'h230d0002,  // DAC03 DATAPATH
       30'h23040000,  // DAC03 FIFO_START
       30'h23183fff,  // DAC03 TDD_MODE
       30'h23070008,  // DAC03 FABRIC_DEBUG
       30'h2f230000,  // Clock Network Control 0 (DAC1)
       30'h2f240000,  // Clock Network Control 1 (DAC1)
       30'h2f22a210,  // Clock Distribution Control (DAC1)
       30'h2f17001e,  // PLL FB Div (DAC1)
       30'h2f0c0400,  // PLL Output Divide (DAC1)
       30'h2f100050,  // PLL Ref clock divide (DAC1)
       30'h2f000080,  // PLL SDM CONFIG0 (DAC1)
       30'h2f060111,  // PLL SDM seed (DAC1)
       30'h2f070011,  // PLL SDM seed setup (DAC1)
       30'h2f0e0d07,  // PLL ChargePump setup (DAC1)
       30'h2f0f2080,  // PLL temprature sensor control (DAC1)
       30'h2f12ffff,  // PLL ChargePump setup (DAC1)
       30'h2f137fe2,  // PLL loop filter setup (DAC1)
       30'h2f140006,  // PLL loop filter setup (DAC1)
       30'h2f155f03,  // PLL VCO setup (DAC1)
       30'h2f160008,  // PLL VCO setup (DAC1)
       30'h2f0a7a21,  // PLL Coarse Frequency setup (DAC1)
       30'h2f0b7008,  // PLL Coarse Frequency setup (DAC1)
       30'h2f11002d,  // PLL Voltage Regulator setup (DAC1)
       30'h2f2c0022,  // CLK_DIV (DAC1)
       30'h2f282400,  // SYSREF Distribution (DAC1)
       30'h2f2dfdfe,  // HSCOM_PWR_MASK (DAC1)
       30'h2f3103e6,  // CLOCK_DETECT_CTRL0 (DAC1)
       30'h2f3204e1,  // CLOCK_DETECT_CTRL1 (DAC1)
       30'h28020810,  // DAC10 Data Width
       30'h28100202,  // DAC10 Interpolation Control
       30'h28110001,  // DAC10 Interpolation Data
       30'h28220c03,  // DAC10 Mixer Mode
       30'h28270000,  // DAC10 NCO Frequency Word 0
       30'h28260000,  // DAC10 NCO Frequency Word 1
       30'h28250000,  // DAC10 NCO Frequency Word 2
       30'h28290000,  // DAC10 NCO Phase Offest Word 0
       30'h28280000,  // DAC10 NCO Phase Offest Word 1
       30'h28300000,  // DAC10 Inv Sinc Filter
       30'h2831005c,  // DAC10 Multiband Config
       30'h28600009,  // DAC10 Decoder Control
       30'h28610001,  // DAC10 Decoder Clock Enable
       30'h28718000,  // DAC10 MC_CONFIG0
       30'h2873e6d6,  // DAC10 MC_CONFIG2
       30'h2874aed0,  // DAC10 MC_CONFIG3
       30'h28660001,  // DAC10 VOP_CTRL
       30'h280d0002,  // DAC10 DATAPATH
       30'h28040000,  // DAC10 FIFO_START
       30'h28183fff,  // DAC10 TDD_MODE
       30'h28070008,  // DAC10 FABRIC_DEBUG
       30'h29020810,  // DAC11 Data Width
       30'h29100202,  // DAC11 Interpolation Control
       30'h29110001,  // DAC11 Interpolation Data
       30'h29220c03,  // DAC11 Mixer Mode
       30'h29270000,  // DAC11 NCO Frequency Word 0
       30'h29260000,  // DAC11 NCO Frequency Word 1
       30'h29250000,  // DAC11 NCO Frequency Word 2
       30'h29290000,  // DAC11 NCO Phase Offest Word 0
       30'h29280000,  // DAC11 NCO Phase Offest Word 1
       30'h29300000,  // DAC11 Inv Sinc Filter
       30'h29310000,  // DAC11 Multiband Config
       30'h29600009,  // DAC11 Decoder Control
       30'h29610001,  // DAC11 Decoder Clock Enable
       30'h290d0002,  // DAC11 DATAPATH
       30'h29040000,  // DAC11 FIFO_START
       30'h29183fff,  // DAC11 TDD_MODE
       30'h29070008,  // DAC11 FABRIC_DEBUG
       30'h2a020810,  // DAC12 Data Width
       30'h2a100202,  // DAC12 Interpolation Control
       30'h2a110001,  // DAC12 Interpolation Data
       30'h2a220c03,  // DAC12 Mixer Mode
       30'h2a270000,  // DAC12 NCO Frequency Word 0
       30'h2a260000,  // DAC12 NCO Frequency Word 1
       30'h2a250000,  // DAC12 NCO Frequency Word 2
       30'h2a290000,  // DAC12 NCO Phase Offest Word 0
       30'h2a280000,  // DAC12 NCO Phase Offest Word 1
       30'h2a300000,  // DAC12 Inv Sinc Filter
       30'h2a31005c,  // DAC12 Multiband Config
       30'h2a600009,  // DAC12 Decoder Control
       30'h2a610001,  // DAC12 Decoder Clock Enable
       30'h2a718000,  // DAC12 MC_CONFIG0
       30'h2a73e6d6,  // DAC12 MC_CONFIG2
       30'h2a74aed0,  // DAC12 MC_CONFIG3
       30'h2a660001,  // DAC12 VOP_CTRL
       30'h2a0d0002,  // DAC12 DATAPATH
       30'h2a040000,  // DAC12 FIFO_START
       30'h2a183fff,  // DAC12 TDD_MODE
       30'h2a070008,  // DAC12 FABRIC_DEBUG
       30'h2b020810,  // DAC13 Data Width
       30'h2b100202,  // DAC13 Interpolation Control
       30'h2b110001,  // DAC13 Interpolation Data
       30'h2b220c03,  // DAC13 Mixer Mode
       30'h2b270000,  // DAC13 NCO Frequency Word 0
       30'h2b260000,  // DAC13 NCO Frequency Word 1
       30'h2b250000,  // DAC13 NCO Frequency Word 2
       30'h2b290000,  // DAC13 NCO Phase Offest Word 0
       30'h2b280000,  // DAC13 NCO Phase Offest Word 1
       30'h2b300000,  // DAC13 Inv Sinc Filter
       30'h2b310000,  // DAC13 Multiband Config
       30'h2b600009,  // DAC13 Decoder Control
       30'h2b610001,  // DAC13 Decoder Clock Enable
       30'h2b0d0002,  // DAC13 DATAPATH
       30'h2b040000,  // DAC13 FIFO_START
       30'h2b183fff,  // DAC13 TDD_MODE
       30'h2b070008,  // DAC13 FABRIC_DEBUG
       30'h37230000,  // Clock Network Control 0 (DAC2)
       30'h37240000,  // Clock Network Control 1 (DAC2)
       30'h3722a218,  // Clock Distribution Control (DAC2)
       30'h3717001e,  // PLL FB Div (DAC2)
       30'h370c0400,  // PLL Output Divide (DAC2)
       30'h37100050,  // PLL Ref clock divide (DAC2)
       30'h37000080,  // PLL SDM CONFIG0 (DAC2)
       30'h37060111,  // PLL SDM seed (DAC2)
       30'h37070011,  // PLL SDM seed setup (DAC2)
       30'h370e0d07,  // PLL ChargePump setup (DAC2)
       30'h370f2080,  // PLL temprature sensor control (DAC2)
       30'h3712ffff,  // PLL ChargePump setup (DAC2)
       30'h37137fe2,  // PLL loop filter setup (DAC2)
       30'h37140006,  // PLL loop filter setup (DAC2)
       30'h37155f03,  // PLL VCO setup (DAC2)
       30'h37160008,  // PLL VCO setup (DAC2)
       30'h370a7a21,  // PLL Coarse Frequency setup (DAC2)
       30'h370b7008,  // PLL Coarse Frequency setup (DAC2)
       30'h3711002d,  // PLL Voltage Regulator setup (DAC2)
       30'h372c0022,  // CLK_DIV (DAC2)
       30'h37280980,  // SYSREF Distribution (DAC2)
       30'h372dfdfe,  // HSCOM_PWR_MASK (DAC2)
       30'h373103e6,  // CLOCK_DETECT_CTRL0 (DAC2)
       30'h373204e1,  // CLOCK_DETECT_CTRL1 (DAC2)
       30'h30020810,  // DAC20 Data Width
       30'h30100202,  // DAC20 Interpolation Control
       30'h30110001,  // DAC20 Interpolation Data
       30'h30220c03,  // DAC20 Mixer Mode
       30'h30270000,  // DAC20 NCO Frequency Word 0
       30'h30260000,  // DAC20 NCO Frequency Word 1
       30'h30250000,  // DAC20 NCO Frequency Word 2
       30'h30290000,  // DAC20 NCO Phase Offest Word 0
       30'h30280000,  // DAC20 NCO Phase Offest Word 1
       30'h30300000,  // DAC20 Inv Sinc Filter
       30'h3031005c,  // DAC20 Multiband Config
       30'h30600009,  // DAC20 Decoder Control
       30'h30610001,  // DAC20 Decoder Clock Enable
       30'h30718000,  // DAC20 MC_CONFIG0
       30'h3073e6d6,  // DAC20 MC_CONFIG2
       30'h3074aed0,  // DAC20 MC_CONFIG3
       30'h30660001,  // DAC20 VOP_CTRL
       30'h300d0002,  // DAC20 DATAPATH
       30'h30040000,  // DAC20 FIFO_START
       30'h30183fff,  // DAC20 TDD_MODE
       30'h30070008,  // DAC20 FABRIC_DEBUG
       30'h31020810,  // DAC21 Data Width
       30'h31100202,  // DAC21 Interpolation Control
       30'h31110001,  // DAC21 Interpolation Data
       30'h31220c03,  // DAC21 Mixer Mode
       30'h31270000,  // DAC21 NCO Frequency Word 0
       30'h31260000,  // DAC21 NCO Frequency Word 1
       30'h31250000,  // DAC21 NCO Frequency Word 2
       30'h31290000,  // DAC21 NCO Phase Offest Word 0
       30'h31280000,  // DAC21 NCO Phase Offest Word 1
       30'h31300000,  // DAC21 Inv Sinc Filter
       30'h31310000,  // DAC21 Multiband Config
       30'h31600009,  // DAC21 Decoder Control
       30'h31610001,  // DAC21 Decoder Clock Enable
       30'h310d0002,  // DAC21 DATAPATH
       30'h31040000,  // DAC21 FIFO_START
       30'h31183fff,  // DAC21 TDD_MODE
       30'h31070008,  // DAC21 FABRIC_DEBUG
       30'h32020810,  // DAC22 Data Width
       30'h32100202,  // DAC22 Interpolation Control
       30'h32110001,  // DAC22 Interpolation Data
       30'h32220c03,  // DAC22 Mixer Mode
       30'h32270000,  // DAC22 NCO Frequency Word 0
       30'h32260000,  // DAC22 NCO Frequency Word 1
       30'h32250000,  // DAC22 NCO Frequency Word 2
       30'h32290000,  // DAC22 NCO Phase Offest Word 0
       30'h32280000,  // DAC22 NCO Phase Offest Word 1
       30'h32300000,  // DAC22 Inv Sinc Filter
       30'h3231005c,  // DAC22 Multiband Config
       30'h32600009,  // DAC22 Decoder Control
       30'h32610001,  // DAC22 Decoder Clock Enable
       30'h32718000,  // DAC22 MC_CONFIG0
       30'h3273e6d6,  // DAC22 MC_CONFIG2
       30'h3274aed0,  // DAC22 MC_CONFIG3
       30'h32660001,  // DAC22 VOP_CTRL
       30'h320d0002,  // DAC22 DATAPATH
       30'h32040000,  // DAC22 FIFO_START
       30'h32183fff,  // DAC22 TDD_MODE
       30'h32070008,  // DAC22 FABRIC_DEBUG
       30'h33020810,  // DAC23 Data Width
       30'h33100202,  // DAC23 Interpolation Control
       30'h33110001,  // DAC23 Interpolation Data
       30'h33220c03,  // DAC23 Mixer Mode
       30'h33270000,  // DAC23 NCO Frequency Word 0
       30'h33260000,  // DAC23 NCO Frequency Word 1
       30'h33250000,  // DAC23 NCO Frequency Word 2
       30'h33290000,  // DAC23 NCO Phase Offest Word 0
       30'h33280000,  // DAC23 NCO Phase Offest Word 1
       30'h33300000,  // DAC23 Inv Sinc Filter
       30'h33310000,  // DAC23 Multiband Config
       30'h33600009,  // DAC23 Decoder Control
       30'h33610001,  // DAC23 Decoder Clock Enable
       30'h330d0002,  // DAC23 DATAPATH
       30'h33040000,  // DAC23 FIFO_START
       30'h33183fff,  // DAC23 TDD_MODE
       30'h33070008,  // DAC23 FABRIC_DEBUG
       30'h3f230000,  // Clock Network Control 0 (DAC3)
       30'h3f240000,  // Clock Network Control 1 (DAC3)
       30'h3f222010,  // Clock Distribution Control (DAC3)
       30'h3f17001e,  // PLL FB Div (DAC3)
       30'h3f0c0400,  // PLL Output Divide (DAC3)
       30'h3f100050,  // PLL Ref clock divide (DAC3)
       30'h3f000080,  // PLL SDM CONFIG0 (DAC3)
       30'h3f060111,  // PLL SDM seed (DAC3)
       30'h3f070011,  // PLL SDM seed setup (DAC3)
       30'h3f0e0d07,  // PLL ChargePump setup (DAC3)
       30'h3f0f2080,  // PLL temprature sensor control (DAC3)
       30'h3f12ffff,  // PLL ChargePump setup (DAC3)
       30'h3f137fe2,  // PLL loop filter setup (DAC3)
       30'h3f140006,  // PLL loop filter setup (DAC3)
       30'h3f155f03,  // PLL VCO setup (DAC3)
       30'h3f160008,  // PLL VCO setup (DAC3)
       30'h3f0a7a21,  // PLL Coarse Frequency setup (DAC3)
       30'h3f0b7008,  // PLL Coarse Frequency setup (DAC3)
       30'h3f11002d,  // PLL Voltage Regulator setup (DAC3)
       30'h3f2c0022,  // CLK_DIV (DAC3)
       30'h3f280100,  // SYSREF Distribution (DAC3)
       30'h3f2dfdfe,  // HSCOM_PWR_MASK (DAC3)
       30'h3f3103e6,  // CLOCK_DETECT_CTRL0 (DAC3)
       30'h3f3204e1,  // CLOCK_DETECT_CTRL1 (DAC3)
       30'h38020810,  // DAC30 Data Width
       30'h38100202,  // DAC30 Interpolation Control
       30'h38110001,  // DAC30 Interpolation Data
       30'h38220c03,  // DAC30 Mixer Mode
       30'h38270000,  // DAC30 NCO Frequency Word 0
       30'h38260000,  // DAC30 NCO Frequency Word 1
       30'h38250000,  // DAC30 NCO Frequency Word 2
       30'h38290000,  // DAC30 NCO Phase Offest Word 0
       30'h38280000,  // DAC30 NCO Phase Offest Word 1
       30'h38300000,  // DAC30 Inv Sinc Filter
       30'h3831005c,  // DAC30 Multiband Config
       30'h38600009,  // DAC30 Decoder Control
       30'h38610001,  // DAC30 Decoder Clock Enable
       30'h38718000,  // DAC30 MC_CONFIG0
       30'h3873e6d6,  // DAC30 MC_CONFIG2
       30'h3874aed0,  // DAC30 MC_CONFIG3
       30'h38660001,  // DAC30 VOP_CTRL
       30'h380d0002,  // DAC30 DATAPATH
       30'h38040000,  // DAC30 FIFO_START
       30'h38183fff,  // DAC30 TDD_MODE
       30'h38070008,  // DAC30 FABRIC_DEBUG
       30'h39020810,  // DAC31 Data Width
       30'h39100202,  // DAC31 Interpolation Control
       30'h39110001,  // DAC31 Interpolation Data
       30'h39220c03,  // DAC31 Mixer Mode
       30'h39270000,  // DAC31 NCO Frequency Word 0
       30'h39260000,  // DAC31 NCO Frequency Word 1
       30'h39250000,  // DAC31 NCO Frequency Word 2
       30'h39290000,  // DAC31 NCO Phase Offest Word 0
       30'h39280000,  // DAC31 NCO Phase Offest Word 1
       30'h39300000,  // DAC31 Inv Sinc Filter
       30'h39310000,  // DAC31 Multiband Config
       30'h39600009,  // DAC31 Decoder Control
       30'h39610001,  // DAC31 Decoder Clock Enable
       30'h390d0002,  // DAC31 DATAPATH
       30'h39040000,  // DAC31 FIFO_START
       30'h39183fff,  // DAC31 TDD_MODE
       30'h39070008,  // DAC31 FABRIC_DEBUG
       30'h3a020810,  // DAC32 Data Width
       30'h3a100202,  // DAC32 Interpolation Control
       30'h3a110001,  // DAC32 Interpolation Data
       30'h3a220c03,  // DAC32 Mixer Mode
       30'h3a270000,  // DAC32 NCO Frequency Word 0
       30'h3a260000,  // DAC32 NCO Frequency Word 1
       30'h3a250000,  // DAC32 NCO Frequency Word 2
       30'h3a290000,  // DAC32 NCO Phase Offest Word 0
       30'h3a280000,  // DAC32 NCO Phase Offest Word 1
       30'h3a300000,  // DAC32 Inv Sinc Filter
       30'h3a31005c,  // DAC32 Multiband Config
       30'h3a600009,  // DAC32 Decoder Control
       30'h3a610001,  // DAC32 Decoder Clock Enable
       30'h3a718000,  // DAC32 MC_CONFIG0
       30'h3a73e6d6,  // DAC32 MC_CONFIG2
       30'h3a74aed0,  // DAC32 MC_CONFIG3
       30'h3a660001,  // DAC32 VOP_CTRL
       30'h3a0d0002,  // DAC32 DATAPATH
       30'h3a040000,  // DAC32 FIFO_START
       30'h3a183fff,  // DAC32 TDD_MODE
       30'h3a070008,  // DAC32 FABRIC_DEBUG
       30'h3b020810,  // DAC33 Data Width
       30'h3b100202,  // DAC33 Interpolation Control
       30'h3b110001,  // DAC33 Interpolation Data
       30'h3b220c03,  // DAC33 Mixer Mode
       30'h3b270000,  // DAC33 NCO Frequency Word 0
       30'h3b260000,  // DAC33 NCO Frequency Word 1
       30'h3b250000,  // DAC33 NCO Frequency Word 2
       30'h3b290000,  // DAC33 NCO Phase Offest Word 0
       30'h3b280000,  // DAC33 NCO Phase Offest Word 1
       30'h3b300000,  // DAC33 Inv Sinc Filter
       30'h3b310000,  // DAC33 Multiband Config
       30'h3b600009,  // DAC33 Decoder Control
       30'h3b610001,  // DAC33 Decoder Clock Enable
       30'h3b0d0002,  // DAC33 DATAPATH
       30'h3b040000,  // DAC33 FIFO_START
       30'h3b183fff,  // DAC33 TDD_MODE
       30'h3b070008,  // DAC33 FABRIC_DEBUG
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
