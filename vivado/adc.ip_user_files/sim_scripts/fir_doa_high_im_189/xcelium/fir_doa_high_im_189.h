
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
// coefficients: -163,93,68,-243,315,-199,-93,422,-578,397,107,-698,1008,-747,-82,1093,-1673,1324,-27,-1620,2639,-2219,287,2269,-3959,3521,-784,-2995,5648,-5298,1611,3715,-7660,7564,-2844,-4307,9876,-10252,4517,4635,-12099,13199,-6590,-4571,14079,-16150,8936,4034,-15554,18783,-11341,-3020,16301,-20771,13531,1619,-16191,21842,-15225,0,15225,-21842,16191,-1619,-13531,20771,-16301,3020,11341,-18783,15554,-4034,-8936,16150,-14079,4571,6590,-13199,12099,-4635,-4517,10252,-9876,4307,2844,-7564,7660,-3715,-1611,5298,-5648,2995,784,-3521,3959,-2269,-287,2219,-2639,1620,27,-1324,1673,-1093,82,747,-1008,698,-107,-397,578,-422,93,199,-315,243,-68,-93,163
// chanpats: 173
// name: fir_doa_high_im_189
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

const double fir_doa_high_im_189_coefficients[119] = {-163,93,68,-243,315,-199,-93,422,-578,397,107,-698,1008,-747,-82,1093,-1673,1324,-27,-1620,2639,-2219,287,2269,-3959,3521,-784,-2995,5648,-5298,1611,3715,-7660,7564,-2844,-4307,9876,-10252,4517,4635,-12099,13199,-6590,-4571,14079,-16150,8936,4034,-15554,18783,-11341,-3020,16301,-20771,13531,1619,-16191,21842,-15225,0,15225,-21842,16191,-1619,-13531,20771,-16301,3020,11341,-18783,15554,-4034,-8936,16150,-14079,4571,6590,-13199,12099,-4635,-4517,10252,-9876,4307,2844,-7564,7660,-3715,-1611,5298,-5648,2995,784,-3521,3959,-2269,-287,2219,-2639,1620,27,-1324,1673,-1093,82,747,-1008,698,-107,-397,578,-422,93,199,-315,243,-68,-93,163};

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
  config.num_coeffs          = 119;
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

