
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
// coefficients: -7,-48,-101,-166,-245,-337,-442,-559,-686,-819,-954,-1086,-1208,-1312,-1388,-1426,-1416,-1345,-1204,-981,-667,-255,259,878,1598,2413,3309,4270,5273,6287,7280,8214,9046,9732,10228,10490,10475,10149,9481,8450,7047,5273,3144,689,-2049,-5012,-8130,-11323,-14500,-17565,-20420,-22965,-25108,-26761,-27850,-28317,-28120,-27237,-25669,-23439,-20591,-17192,-13325,-9094,-4611,0,4611,9094,13325,17192,20591,23439,25669,27237,28120,28317,27850,26761,25108,22965,20420,17565,14500,11323,8130,5012,2049,-689,-3144,-5273,-7047,-8450,-9481,-10149,-10475,-10490,-10228,-9732,-9046,-8214,-7280,-6287,-5273,-4270,-3309,-2413,-1598,-878,-259,255,667,981,1204,1345,1416,1426,1388,1312,1208,1086,954,819,686,559,442,337,245,166,101,48,7
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
// output_width: 37
// output_fract_width: 0
// config_method: 0

const double fir_comp_low_im_coefficients[131] = {-7,-48,-101,-166,-245,-337,-442,-559,-686,-819,-954,-1086,-1208,-1312,-1388,-1426,-1416,-1345,-1204,-981,-667,-255,259,878,1598,2413,3309,4270,5273,6287,7280,8214,9046,9732,10228,10490,10475,10149,9481,8450,7047,5273,3144,689,-2049,-5012,-8130,-11323,-14500,-17565,-20420,-22965,-25108,-26761,-27850,-28317,-28120,-27237,-25669,-23439,-20591,-17192,-13325,-9094,-4611,0,4611,9094,13325,17192,20591,23439,25669,27237,28120,28317,27850,26761,25108,22965,20420,17565,14500,11323,8130,5012,2049,-689,-3144,-5273,-7047,-8450,-9481,-10149,-10475,-10490,-10228,-9732,-9046,-8214,-7280,-6287,-5273,-4270,-3309,-2413,-1598,-878,-259,255,667,981,1204,1345,1416,1426,1388,1312,1208,1086,954,819,686,559,442,337,245,166,101,48,7};

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
  config.output_width        = 37;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_low_im_config = gen_fir_comp_low_im_config();

