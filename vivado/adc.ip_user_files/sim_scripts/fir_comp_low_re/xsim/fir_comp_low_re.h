
//------------------------------------------------------------------------------
// (c) Copyright 2023 Advanced Micro Devices. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
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
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_comp_low_re" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -212,-242,-271,-295,-312,-319,-313,-290,-246,-177,-80,49,212,412,648,921,1227,1562,1918,2286,2654,3006,3327,3597,3796,3902,3893,3749,3451,2982,2330,1488,455,-763,-2153,-3692,-5351,-7090,-8863,-10618,-12296,-13834,-15170,-16241,-16987,-17353,-17296,-16780,-15784,-14300,-12338,-9923,-7098,-3922,-467,3180,6924,10660,14283,17685,20765,23428,25592,27189,28167,28497,28167,27189,25592,23428,20765,17685,14283,10660,6924,3180,-467,-3922,-7098,-9923,-12338,-14300,-15784,-16780,-17296,-17353,-16987,-16241,-15170,-13834,-12296,-10618,-8863,-7090,-5351,-3692,-2153,-763,455,1488,2330,2982,3451,3749,3893,3902,3796,3597,3327,3006,2654,2286,1918,1562,1227,921,648,412,212,49,-80,-177,-246,-290,-313,-319,-312,-295,-271,-242,-212
// chanpats: 173
// name: fir_comp_low_re
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 131
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 16
// data_fract_width: 0
// output_rounding_mode: 0
// output_width: 36
// output_fract_width: 0
// config_method: 0

const double fir_comp_low_re_coefficients[131] = {-212,-242,-271,-295,-312,-319,-313,-290,-246,-177,-80,49,212,412,648,921,1227,1562,1918,2286,2654,3006,3327,3597,3796,3902,3893,3749,3451,2982,2330,1488,455,-763,-2153,-3692,-5351,-7090,-8863,-10618,-12296,-13834,-15170,-16241,-16987,-17353,-17296,-16780,-15784,-14300,-12338,-9923,-7098,-3922,-467,3180,6924,10660,14283,17685,20765,23428,25592,27189,28167,28497,28167,27189,25592,23428,20765,17685,14283,10660,6924,3180,-467,-3922,-7098,-9923,-12338,-14300,-15784,-16780,-17296,-17353,-16987,-16241,-15170,-13834,-12296,-10618,-8863,-7090,-5351,-3692,-2153,-763,455,1488,2330,2982,3451,3749,3893,3902,3796,3597,3327,3006,2654,2286,1918,1562,1227,921,648,412,212,49,-80,-177,-246,-290,-313,-319,-312,-295,-271,-242,-212};

const xip_fir_v7_2_pattern fir_comp_low_re_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_comp_low_re_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_comp_low_re";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_comp_low_re_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 131;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_comp_low_re_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_low_re_config = gen_fir_comp_low_re_config();

