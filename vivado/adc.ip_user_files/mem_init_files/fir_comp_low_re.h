
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
// coefficients: -238,-272,-304,-331,-351,-359,-352,-326,-276,-199,-90,55,238,463,729,1036,1380,1757,2157,2571,2985,3382,3743,4046,4270,4389,4379,4217,3882,3354,2621,1674,512,-858,-2422,-4153,-6019,-7975,-9970,-11943,-13830,-15561,-17064,-18268,-19107,-19519,-19455,-18874,-17753,-16084,-13877,-11161,-7984,-4411,-525,3577,7788,11990,16065,19892,23356,26352,28786,30582,31683,32054,31683,30582,28786,26352,23356,19892,16065,11990,7788,3577,-525,-4411,-7984,-11161,-13877,-16084,-17753,-18874,-19455,-19519,-19107,-18268,-17064,-15561,-13830,-11943,-9970,-7975,-6019,-4153,-2422,-858,512,1674,2621,3354,3882,4217,4379,4389,4270,4046,3743,3382,2985,2571,2157,1757,1380,1036,729,463,238,55,-90,-199,-276,-326,-352,-359,-351,-331,-304,-272,-238
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
// output_width: 37
// output_fract_width: 0
// config_method: 0

const double fir_comp_low_re_coefficients[131] = {-238,-272,-304,-331,-351,-359,-352,-326,-276,-199,-90,55,238,463,729,1036,1380,1757,2157,2571,2985,3382,3743,4046,4270,4389,4379,4217,3882,3354,2621,1674,512,-858,-2422,-4153,-6019,-7975,-9970,-11943,-13830,-15561,-17064,-18268,-19107,-19519,-19455,-18874,-17753,-16084,-13877,-11161,-7984,-4411,-525,3577,7788,11990,16065,19892,23356,26352,28786,30582,31683,32054,31683,30582,28786,26352,23356,19892,16065,11990,7788,3577,-525,-4411,-7984,-11161,-13877,-16084,-17753,-18874,-19455,-19519,-19107,-18268,-17064,-15561,-13830,-11943,-9970,-7975,-6019,-4153,-2422,-858,512,1674,2621,3354,3882,4217,4379,4389,4270,4046,3743,3382,2985,2571,2157,1757,1380,1036,729,463,238,55,-90,-199,-276,-326,-352,-359,-351,-331,-304,-272,-238};

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
  config.output_width        = 37;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_low_re_config = gen_fir_comp_low_re_config();

