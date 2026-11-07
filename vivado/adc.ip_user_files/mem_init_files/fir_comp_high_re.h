
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
// C Model configuration for the "fir_comp_high_re" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -164,-148,-60,88,253,371,371,213,-91,-459,-755,-830,-583,-18,724,1385,1669,1354,405,-956,-2281,-3024,-2747,-1319,951,3345,4944,4952,3050,-389,-4312,-7287,-8001,-5808,-1084,4756,9657,11637,9563,3705,-4202,-11444,-15265,-13912,-7397,2340,12003,18065,18079,11661,763,-10925,-19251,-21114,-15642,-4584,8264,18397,22228,18397,8264,-4584,-15642,-21114,-19251,-10925,763,11661,18079,18065,12003,2340,-7397,-13912,-15265,-11444,-4202,3705,9563,11637,9657,4756,-1084,-5808,-8001,-7287,-4312,-389,3050,4952,4944,3345,951,-1319,-2747,-3024,-2281,-956,405,1354,1669,1385,724,-18,-583,-830,-755,-459,-91,213,371,371,253,88,-60,-148,-164
// chanpats: 173
// name: fir_comp_high_re
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

const double fir_comp_high_re_coefficients[117] = {-164,-148,-60,88,253,371,371,213,-91,-459,-755,-830,-583,-18,724,1385,1669,1354,405,-956,-2281,-3024,-2747,-1319,951,3345,4944,4952,3050,-389,-4312,-7287,-8001,-5808,-1084,4756,9657,11637,9563,3705,-4202,-11444,-15265,-13912,-7397,2340,12003,18065,18079,11661,763,-10925,-19251,-21114,-15642,-4584,8264,18397,22228,18397,8264,-4584,-15642,-21114,-19251,-10925,763,11661,18079,18065,12003,2340,-7397,-13912,-15265,-11444,-4202,3705,9563,11637,9657,4756,-1084,-5808,-8001,-7287,-4312,-389,3050,4952,4944,3345,951,-1319,-2747,-3024,-2281,-956,405,1354,1669,1385,724,-18,-583,-830,-755,-459,-91,213,371,371,253,88,-60,-148,-164};

const xip_fir_v7_2_pattern fir_comp_high_re_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_comp_high_re_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_comp_high_re";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_comp_high_re_coefficients[0];
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
  config.init_pattern        = fir_comp_high_re_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_high_re_config = gen_fir_comp_high_re_config();

