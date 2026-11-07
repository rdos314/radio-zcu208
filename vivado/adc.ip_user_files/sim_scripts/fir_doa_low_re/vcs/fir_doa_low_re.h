
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
// C Model configuration for the "fir_doa_low_re" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -151,-161,-108,9,167,313,383,323,111,-215,-562,-796,-787,-466,133,853,1446,1642,1261,297,-1025,-2285,-2986,-2728,-1391,757,3083,4752,5007,3479,397,-3384,-6598,-7975,-6714,-2859,2583,7881,11115,10857,6765,-167,-7808,-13542,-15164,-11718,-3957,5780,14274,18505,16741,9231,-1764,-12665,-19765,-20522,-14488,-3523,8788,18344,21932,18344,8788,-3523,-14488,-20522,-19765,-12665,-1764,9231,16741,18505,14274,5780,-3957,-11718,-15164,-13542,-7808,-167,6765,10857,11115,7881,2583,-2859,-6714,-7975,-6598,-3384,397,3479,5007,4752,3083,757,-1391,-2728,-2986,-2285,-1025,297,1261,1642,1446,853,133,-466,-787,-796,-562,-215,111,323,383,313,167,9,-108,-161,-151
// chanpats: 173
// name: fir_doa_low_re
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 121
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

const double fir_doa_low_re_coefficients[121] = {-151,-161,-108,9,167,313,383,323,111,-215,-562,-796,-787,-466,133,853,1446,1642,1261,297,-1025,-2285,-2986,-2728,-1391,757,3083,4752,5007,3479,397,-3384,-6598,-7975,-6714,-2859,2583,7881,11115,10857,6765,-167,-7808,-13542,-15164,-11718,-3957,5780,14274,18505,16741,9231,-1764,-12665,-19765,-20522,-14488,-3523,8788,18344,21932,18344,8788,-3523,-14488,-20522,-19765,-12665,-1764,9231,16741,18505,14274,5780,-3957,-11718,-15164,-13542,-7808,-167,6765,10857,11115,7881,2583,-2859,-6714,-7975,-6598,-3384,397,3479,5007,4752,3083,757,-1391,-2728,-2986,-2285,-1025,297,1261,1642,1446,853,133,-466,-787,-796,-562,-215,111,323,383,313,167,9,-108,-161,-151};

const xip_fir_v7_2_pattern fir_doa_low_re_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_doa_low_re_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_doa_low_re";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_doa_low_re_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 121;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_doa_low_re_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_doa_low_re_config = gen_fir_doa_low_re_config();

