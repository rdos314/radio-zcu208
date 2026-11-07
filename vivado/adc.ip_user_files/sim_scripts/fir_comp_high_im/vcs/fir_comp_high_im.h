
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
// C Model configuration for the "fir_comp_high_im" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -20,-128,-223,-256,-192,-20,223,455,575,492,174,-320,-835,-1163,-1109,-584,329,1362,2122,2228,1468,-67,-1943,-3490,-4015,-3083,-751,2349,5157,6517,5632,2444,-2216,-6800,-9543,-9120,-5230,1137,7911,12604,13213,9051,1153,-7935,-14980,-17219,-13443,-4578,6509,15945,20235,17579,8619,-3685,-15063,-21454,-20496,-12418,0,12418,20496,21454,15063,3685,-8619,-17579,-20235,-15945,-6509,4578,13443,17219,14980,7935,-1153,-9051,-13213,-12604,-7911,-1137,5230,9120,9543,6800,2216,-2444,-5632,-6517,-5157,-2349,751,3083,4015,3490,1943,67,-1468,-2228,-2122,-1362,-329,584,1109,1163,835,320,-174,-492,-575,-455,-223,20,192,256,223,128,20
// chanpats: 173
// name: fir_comp_high_im
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 117
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

const double fir_comp_high_im_coefficients[117] = {-20,-128,-223,-256,-192,-20,223,455,575,492,174,-320,-835,-1163,-1109,-584,329,1362,2122,2228,1468,-67,-1943,-3490,-4015,-3083,-751,2349,5157,6517,5632,2444,-2216,-6800,-9543,-9120,-5230,1137,7911,12604,13213,9051,1153,-7935,-14980,-17219,-13443,-4578,6509,15945,20235,17579,8619,-3685,-15063,-21454,-20496,-12418,0,12418,20496,21454,15063,3685,-8619,-17579,-20235,-15945,-6509,4578,13443,17219,14980,7935,-1153,-9051,-13213,-12604,-7911,-1137,5230,9120,9543,6800,2216,-2444,-5632,-6517,-5157,-2349,751,3083,4015,3490,1943,67,-1468,-2228,-2122,-1362,-329,584,1109,1163,835,320,-174,-492,-575,-455,-223,20,192,256,223,128,20};

const xip_fir_v7_2_pattern fir_comp_high_im_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_comp_high_im_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_comp_high_im";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_comp_high_im_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 117;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_comp_high_im_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_high_im_config = gen_fir_comp_high_im_config();

