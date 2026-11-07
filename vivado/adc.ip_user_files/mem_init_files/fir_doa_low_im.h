
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
// C Model configuration for the "fir_doa_low_im" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 19,-78,-181,-247,-236,-124,78,319,512,565,408,40,-459,-928,-1173,-1032,-450,466,1448,2133,2179,1410,-75,-1879,-3389,-3970,-3202,-1094,1838,4664,6317,5976,3414,-804,-5413,-8800,-9558,-7036,-1689,4943,10659,13322,11646,5759,-2696,-11004,-16257,-16378,-10929,-1398,9203,17303,20000,16117,6698,-5269,-15822,-21373,-19963,-11967,0,11967,19963,21373,15822,5269,-6698,-16117,-20000,-17303,-9203,1398,10929,16378,16257,11004,2696,-5759,-11646,-13322,-10659,-4943,1689,7036,9558,8800,5413,804,-3414,-5976,-6317,-4664,-1838,1094,3202,3970,3389,1879,75,-1410,-2179,-2133,-1448,-466,450,1032,1173,928,459,-40,-408,-565,-512,-319,-78,124,236,247,181,78,-19
// chanpats: 173
// name: fir_doa_low_im
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

const double fir_doa_low_im_coefficients[121] = {19,-78,-181,-247,-236,-124,78,319,512,565,408,40,-459,-928,-1173,-1032,-450,466,1448,2133,2179,1410,-75,-1879,-3389,-3970,-3202,-1094,1838,4664,6317,5976,3414,-804,-5413,-8800,-9558,-7036,-1689,4943,10659,13322,11646,5759,-2696,-11004,-16257,-16378,-10929,-1398,9203,17303,20000,16117,6698,-5269,-15822,-21373,-19963,-11967,0,11967,19963,21373,15822,5269,-6698,-16117,-20000,-17303,-9203,1398,10929,16378,16257,11004,2696,-5759,-11646,-13322,-10659,-4943,1689,7036,9558,8800,5413,804,-3414,-5976,-6317,-4664,-1838,1094,3202,3970,3389,1879,75,-1410,-2179,-2133,-1448,-466,450,1032,1173,928,459,-40,-408,-565,-512,-319,-78,124,236,247,181,78,-19};

const xip_fir_v7_2_pattern fir_doa_low_im_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_doa_low_im_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_doa_low_im";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_doa_low_im_coefficients[0];
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
  config.init_pattern        = fir_doa_low_im_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_doa_low_im_config = gen_fir_doa_low_im_config();

