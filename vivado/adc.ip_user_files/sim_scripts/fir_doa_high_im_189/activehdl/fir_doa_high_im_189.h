
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
// C Model configuration for the "fir_doa_high_im_189" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -111,-207,-27,266,273,-129,-488,-250,446,725,28,-942,-847,515,1548,649,-1449,-2058,112,2701,2122,-1607,-3975,-1315,3791,4728,-706,-6271,-4276,3971,8273,2031,-8007,-8789,2176,11789,6912,-7828,-13947,-2270,13666,13205,-4635,-17957,-8929,12359,19048,1547,-18863,-16022,7405,22161,9164,-15681,-21067,0,21067,15681,-9164,-22161,-7405,16022,18863,-1547,-19048,-12359,8929,17957,4635,-13205,-13666,2270,13947,7828,-6912,-11789,-2176,8789,8007,-2031,-8273,-3971,4276,6271,706,-4728,-3791,1315,3975,1607,-2122,-2701,-112,2058,1449,-649,-1548,-515,847,942,-28,-725,-446,250,488,129,-273,-266,27,207,111
// chanpats: 173
// name: fir_doa_high_im_189
// filter_type: 2
// rate_change: 0
// interp_rate: 1
// decim_rate: 2
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 111
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

const double fir_doa_high_im_189_coefficients[111] = {-111,-207,-27,266,273,-129,-488,-250,446,725,28,-942,-847,515,1548,649,-1449,-2058,112,2701,2122,-1607,-3975,-1315,3791,4728,-706,-6271,-4276,3971,8273,2031,-8007,-8789,2176,11789,6912,-7828,-13947,-2270,13666,13205,-4635,-17957,-8929,12359,19048,1547,-18863,-16022,7405,22161,9164,-15681,-21067,0,21067,15681,-9164,-22161,-7405,16022,18863,-1547,-19048,-12359,8929,17957,4635,-13205,-13666,2270,13947,7828,-6912,-11789,-2176,8789,8007,-2031,-8273,-3971,4276,6271,706,-4728,-3791,1315,3975,1607,-2122,-2701,-112,2058,1449,-649,-1548,-515,847,942,-28,-725,-446,250,488,129,-273,-266,27,207,111};

const xip_fir_v7_2_pattern fir_doa_high_im_189_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_doa_high_im_189_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_doa_high_im_189";
  config.filter_type         = 2;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 2;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_doa_high_im_189_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 111;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_doa_high_im_189_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_doa_high_im_189_config = gen_fir_doa_high_im_189_config();

