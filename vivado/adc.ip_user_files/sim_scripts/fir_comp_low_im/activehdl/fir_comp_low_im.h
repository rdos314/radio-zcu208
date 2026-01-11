
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
// C Model configuration for the "fir_comp_low_im" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -7,-43,-90,-148,-218,-299,-393,-497,-610,-728,-848,-966,-1074,-1166,-1234,-1268,-1259,-1196,-1070,-872,-593,-227,230,780,1421,2145,2942,3797,4688,5590,6473,7303,8042,8653,9093,9326,9313,9023,8429,7513,6265,4688,2795,613,-1821,-4456,-7228,-10067,-12891,-15616,-18154,-20417,-22322,-23792,-24760,-25175,-25000,-24215,-22821,-20839,-18307,-15284,-11847,-8085,-4099,0,4099,8085,11847,15284,18307,20839,22821,24215,25000,25175,24760,23792,22322,20417,18154,15616,12891,10067,7228,4456,1821,-613,-2795,-4688,-6265,-7513,-8429,-9023,-9313,-9326,-9093,-8653,-8042,-7303,-6473,-5590,-4688,-3797,-2942,-2145,-1421,-780,-230,227,593,872,1070,1196,1259,1268,1234,1166,1074,966,848,728,610,497,393,299,218,148,90,43,7
// chanpats: 173
// name: fir_comp_low_im
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

const double fir_comp_low_im_coefficients[131] = {-7,-43,-90,-148,-218,-299,-393,-497,-610,-728,-848,-966,-1074,-1166,-1234,-1268,-1259,-1196,-1070,-872,-593,-227,230,780,1421,2145,2942,3797,4688,5590,6473,7303,8042,8653,9093,9326,9313,9023,8429,7513,6265,4688,2795,613,-1821,-4456,-7228,-10067,-12891,-15616,-18154,-20417,-22322,-23792,-24760,-25175,-25000,-24215,-22821,-20839,-18307,-15284,-11847,-8085,-4099,0,4099,8085,11847,15284,18307,20839,22821,24215,25000,25175,24760,23792,22322,20417,18154,15616,12891,10067,7228,4456,1821,-613,-2795,-4688,-6265,-7513,-8429,-9023,-9313,-9326,-9093,-8653,-8042,-7303,-6473,-5590,-4688,-3797,-2942,-2145,-1421,-780,-230,227,593,872,1070,1196,1259,1268,1234,1166,1074,966,848,728,610,497,393,299,218,148,90,43,7};

const xip_fir_v7_2_pattern fir_comp_low_im_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_comp_low_im_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_comp_low_im";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_comp_low_im_coefficients[0];
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
  config.init_pattern        = fir_comp_low_im_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_low_im_config = gen_fir_comp_low_im_config();

