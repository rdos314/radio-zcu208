
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
// coefficients: -156,-178,-199,-217,-230,-235,-230,-213,-181,-131,-59,36,156,303,478,679,904,1151,1413,1685,1955,2215,2452,2651,2797,2875,2869,2763,2543,2197,1717,1097,335,-562,-1586,-2721,-3943,-5224,-6531,-7824,-9060,-10194,-11179,-11967,-12517,-12787,-12745,-12365,-11630,-10537,-9091,-7312,-5230,-2890,-344,2344,5102,7855,10524,13031,15301,17263,18858,20034,20756,20999,20756,20034,18858,17263,15301,13031,10524,7855,5102,2344,-344,-2890,-5230,-7312,-9091,-10537,-11630,-12365,-12745,-12787,-12517,-11967,-11179,-10194,-9060,-7824,-6531,-5224,-3943,-2721,-1586,-562,335,1097,1717,2197,2543,2763,2869,2875,2797,2651,2452,2215,1955,1685,1413,1151,904,679,478,303,156,36,-59,-131,-181,-213,-230,-235,-230,-217,-199,-178,-156
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
// output_width: 36
// output_fract_width: 0
// config_method: 0

const double fir_comp_low_re_coefficients[131] = {-156,-178,-199,-217,-230,-235,-230,-213,-181,-131,-59,36,156,303,478,679,904,1151,1413,1685,1955,2215,2452,2651,2797,2875,2869,2763,2543,2197,1717,1097,335,-562,-1586,-2721,-3943,-5224,-6531,-7824,-9060,-10194,-11179,-11967,-12517,-12787,-12745,-12365,-11630,-10537,-9091,-7312,-5230,-2890,-344,2344,5102,7855,10524,13031,15301,17263,18858,20034,20756,20999,20756,20034,18858,17263,15301,13031,10524,7855,5102,2344,-344,-2890,-5230,-7312,-9091,-10537,-11630,-12365,-12745,-12787,-12517,-11967,-11179,-10194,-9060,-7824,-6531,-5224,-3943,-2721,-1586,-562,335,1097,1717,2197,2543,2763,2869,2875,2797,2651,2452,2215,1955,1685,1413,1151,904,679,478,303,156,36,-59,-131,-181,-213,-230,-235,-230,-217,-199,-178,-156};

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
  config.output_width        = 36;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_comp_low_re_config = gen_fir_comp_low_re_config();

