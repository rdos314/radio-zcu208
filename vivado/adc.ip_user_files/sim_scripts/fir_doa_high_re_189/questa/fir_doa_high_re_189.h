
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
// C Model configuration for the "fir_doa_high_re_189" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -55,180,-228,137,81,-322,429,-283,-103,547,-768,549,102,-880,1307,-1001,-42,1340,-2114,1726,-133,-1931,3253,-2814,500,2627,-4759,4348,-1151,-3362,6619,-6372,2173,4035,-8753,8863,-3626,-4513,11001,-11707,5509,4659,-13136,14693,-7740,-4364,14895,-17527,10147,3583,-16029,19877,-12481,-2359,16356,-21434,14457,824,-15810,21980,-15810,824,14457,-21434,16356,-2359,-12481,19877,-16029,3583,10147,-17527,14895,-4364,-7740,14693,-13136,4659,5509,-11707,11001,-4513,-3626,8863,-8753,4035,2173,-6372,6619,-3362,-1151,4348,-4759,2627,500,-2814,3253,-1931,-133,1726,-2114,1340,-42,-1001,1307,-880,102,549,-768,547,-103,-283,429,-322,81,137,-228,180,-55
// chanpats: 173
// name: fir_doa_high_re_189
// filter_type: 2
// rate_change: 0
// interp_rate: 1
// decim_rate: 2
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 119
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

const double fir_doa_high_re_189_coefficients[119] = {-55,180,-228,137,81,-322,429,-283,-103,547,-768,549,102,-880,1307,-1001,-42,1340,-2114,1726,-133,-1931,3253,-2814,500,2627,-4759,4348,-1151,-3362,6619,-6372,2173,4035,-8753,8863,-3626,-4513,11001,-11707,5509,4659,-13136,14693,-7740,-4364,14895,-17527,10147,3583,-16029,19877,-12481,-2359,16356,-21434,14457,824,-15810,21980,-15810,824,14457,-21434,16356,-2359,-12481,19877,-16029,3583,10147,-17527,14895,-4364,-7740,14693,-13136,4659,5509,-11707,11001,-4513,-3626,8863,-8753,4035,2173,-6372,6619,-3362,-1151,4348,-4759,2627,500,-2814,3253,-1931,-133,1726,-2114,1340,-42,-1001,1307,-880,102,549,-768,547,-103,-283,429,-322,81,137,-228,180,-55};

const xip_fir_v7_2_pattern fir_doa_high_re_189_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_doa_high_re_189_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_doa_high_re_189";
  config.filter_type         = 2;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 2;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_doa_high_re_189_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 119;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_doa_high_re_189_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_doa_high_re_189_config = gen_fir_doa_high_re_189_config();

