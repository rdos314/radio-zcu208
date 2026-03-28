
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
// coefficients: -143,59,254,142,-228,-397,-34,514,494,-266,-893,-415,826,1254,-10,-1638,-1378,937,2547,953,-2407,-3203,325,4226,3096,-2599,-5887,-1694,5658,6620,-1310,-8827,-5590,5734,11028,2249,-10742,-11064,3302,14938,8082,-10110,-16734,-2040,16487,14940,-6057,-20480,-9314,14305,20568,836,-20468,-16284,8494,22751,8494,-16284,-20468,836,20568,14305,-9314,-20480,-6057,14940,16487,-2040,-16734,-10110,8082,14938,3302,-11064,-10742,2249,11028,5734,-5590,-8827,-1310,6620,5658,-1694,-5887,-2599,3096,4226,325,-3203,-2407,953,2547,937,-1378,-1638,-10,1254,826,-415,-893,-266,494,514,-34,-397,-228,142,254,59,-143
// chanpats: 173
// name: fir_doa_high_re_189
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

const double fir_doa_high_re_189_coefficients[111] = {-143,59,254,142,-228,-397,-34,514,494,-266,-893,-415,826,1254,-10,-1638,-1378,937,2547,953,-2407,-3203,325,4226,3096,-2599,-5887,-1694,5658,6620,-1310,-8827,-5590,5734,11028,2249,-10742,-11064,3302,14938,8082,-10110,-16734,-2040,16487,14940,-6057,-20480,-9314,14305,20568,836,-20468,-16284,8494,22751,8494,-16284,-20468,836,20568,14305,-9314,-20480,-6057,14940,16487,-2040,-16734,-10110,8082,14938,3302,-11064,-10742,2249,11028,5734,-5590,-8827,-1310,6620,5658,-1694,-5887,-2599,3096,4226,325,-3203,-2407,953,2547,937,-1378,-1638,-10,1254,826,-415,-893,-266,494,514,-34,-397,-228,142,254,59,-143};

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
  config.num_coeffs          = 111;
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

