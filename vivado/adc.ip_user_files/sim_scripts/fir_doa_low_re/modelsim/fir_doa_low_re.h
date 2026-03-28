
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
// coefficients: -230,-200,-91,71,236,347,352,231,6,-261,-480,-564,-460,-174,222,603,830,798,476,-65,-668,-1125,-1253,-956,-277,600,1391,1804,1640,875,-302,-1533,-2391,-2524,-1791,-337,1420,2902,3555,3049,1421,-894,-3169,-4607,-4612,-3020,-208,2982,5482,6355,5128,2012,-2109,-5911,-8053,-7637,-4566,349,5589,9384,10306,7793,2416,-4224,-9962,-12768,-11458,-6164,1607,9396,14558,15159,10685,2314,-7373,-15184,-18364,-15565,-7379,3740,14212,20479,20219,13189,1417,-11375,-20950,-23964,-19130,-7742,6657,19381,26128,24447,14619,-348,-15637,-26185,-28368,-21251,-6971,9911,23868,30238,26786,14492,-2722,-19254,-29660,-30460,-21310,-5146,12772,26579,31747,26579,12772,-5146,-21310,-30460,-29660,-19254,-2722,14492,26786,30238,23868,9911,-6971,-21251,-28368,-26185,-15637,-348,14619,24447,26128,19381,6657,-7742,-19130,-23964,-20950,-11375,1417,13189,20219,20479,14212,3740,-7379,-15565,-18364,-15184,-7373,2314,10685,15159,14558,9396,1607,-6164,-11458,-12768,-9962,-4224,2416,7793,10306,9384,5589,349,-4566,-7637,-8053,-5911,-2109,2012,5128,6355,5482,2982,-208,-3020,-4612,-4607,-3169,-894,1421,3049,3555,2902,1420,-337,-1791,-2524,-2391,-1533,-302,875,1640,1804,1391,600,-277,-956,-1253,-1125,-668,-65,476,798,830,603,222,-174,-460,-564,-480,-261,6,231,352,347,236,71,-91,-200,-230
// chanpats: 173
// name: fir_doa_low_re
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 229
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

const double fir_doa_low_re_coefficients[229] = {-230,-200,-91,71,236,347,352,231,6,-261,-480,-564,-460,-174,222,603,830,798,476,-65,-668,-1125,-1253,-956,-277,600,1391,1804,1640,875,-302,-1533,-2391,-2524,-1791,-337,1420,2902,3555,3049,1421,-894,-3169,-4607,-4612,-3020,-208,2982,5482,6355,5128,2012,-2109,-5911,-8053,-7637,-4566,349,5589,9384,10306,7793,2416,-4224,-9962,-12768,-11458,-6164,1607,9396,14558,15159,10685,2314,-7373,-15184,-18364,-15565,-7379,3740,14212,20479,20219,13189,1417,-11375,-20950,-23964,-19130,-7742,6657,19381,26128,24447,14619,-348,-15637,-26185,-28368,-21251,-6971,9911,23868,30238,26786,14492,-2722,-19254,-29660,-30460,-21310,-5146,12772,26579,31747,26579,12772,-5146,-21310,-30460,-29660,-19254,-2722,14492,26786,30238,23868,9911,-6971,-21251,-28368,-26185,-15637,-348,14619,24447,26128,19381,6657,-7742,-19130,-23964,-20950,-11375,1417,13189,20219,20479,14212,3740,-7379,-15565,-18364,-15184,-7373,2314,10685,15159,14558,9396,1607,-6164,-11458,-12768,-9962,-4224,2416,7793,10306,9384,5589,349,-4566,-7637,-8053,-5911,-2109,2012,5128,6355,5482,2982,-208,-3020,-4612,-4607,-3169,-894,1421,3049,3555,2902,1420,-337,-1791,-2524,-2391,-1533,-302,875,1640,1804,1391,600,-277,-956,-1253,-1125,-668,-65,476,798,830,603,222,-174,-460,-564,-480,-261,6,231,352,347,236,71,-91,-200,-230};

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
  config.num_coeffs          = 229;
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
  config.output_width        = 37;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_doa_low_re_config = gen_fir_doa_low_re_config();

