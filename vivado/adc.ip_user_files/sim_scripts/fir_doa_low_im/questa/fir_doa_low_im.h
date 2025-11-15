
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
// coefficients: -18,-157,-265,-297,-228,-63,154,354,461,422,224,-88,-421,-659,-701,-499,-86,424,863,1064,918,424,-296,-1018,-1487,-1499,-983,-47,1038,1908,2227,1807,696,-806,-2221,-3042,-2904,-1735,183,2273,3822,4227,3211,963,-1873,-4379,-5645,-5099,-2733,824,4465,6940,7277,5146,1044,-3808,-7808,-9504,-8104,-3811,2155,7895,11426,11359,7425,659,-6852,-12607,-14516,-11652,-4646,4412,12591,17063,16073,9613,-474,-10999,-18439,-20113,-15140,-4835,7615,18139,23113,20608,11121,-2480,-15824,-24444,-25277,-17752,-4073,11419,23632,28403,23926,11424,-5173,-20473,-29380,-28807,-18748,-2343,15107,27866,31665,25137,10311,-8023,-23874,-32025,-29763,-17788,0,17788,29763,32025,23874,8023,-10311,-25137,-31665,-27866,-15107,2343,18748,28807,29380,20473,5173,-11424,-23926,-28403,-23632,-11419,4073,17752,25277,24444,15824,2480,-11121,-20608,-23113,-18139,-7615,4835,15140,20113,18439,10999,474,-9613,-16073,-17063,-12591,-4412,4646,11652,14516,12607,6852,-659,-7425,-11359,-11426,-7895,-2155,3811,8104,9504,7808,3808,-1044,-5146,-7277,-6940,-4465,-824,2733,5099,5645,4379,1873,-963,-3211,-4227,-3822,-2273,-183,1735,2904,3042,2221,806,-696,-1807,-2227,-1908,-1038,47,983,1499,1487,1018,296,-424,-918,-1064,-863,-424,86,499,701,659,421,88,-224,-422,-461,-354,-154,63,228,297,265,157,18
// chanpats: 173
// name: fir_doa_low_im
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

const double fir_doa_low_im_coefficients[229] = {-18,-157,-265,-297,-228,-63,154,354,461,422,224,-88,-421,-659,-701,-499,-86,424,863,1064,918,424,-296,-1018,-1487,-1499,-983,-47,1038,1908,2227,1807,696,-806,-2221,-3042,-2904,-1735,183,2273,3822,4227,3211,963,-1873,-4379,-5645,-5099,-2733,824,4465,6940,7277,5146,1044,-3808,-7808,-9504,-8104,-3811,2155,7895,11426,11359,7425,659,-6852,-12607,-14516,-11652,-4646,4412,12591,17063,16073,9613,-474,-10999,-18439,-20113,-15140,-4835,7615,18139,23113,20608,11121,-2480,-15824,-24444,-25277,-17752,-4073,11419,23632,28403,23926,11424,-5173,-20473,-29380,-28807,-18748,-2343,15107,27866,31665,25137,10311,-8023,-23874,-32025,-29763,-17788,0,17788,29763,32025,23874,8023,-10311,-25137,-31665,-27866,-15107,2343,18748,28807,29380,20473,5173,-11424,-23926,-28403,-23632,-11419,4073,17752,25277,24444,15824,2480,-11121,-20608,-23113,-18139,-7615,4835,15140,20113,18439,10999,474,-9613,-16073,-17063,-12591,-4412,4646,11652,14516,12607,6852,-659,-7425,-11359,-11426,-7895,-2155,3811,8104,9504,7808,3808,-1044,-5146,-7277,-6940,-4465,-824,2733,5099,5645,4379,1873,-963,-3211,-4227,-3822,-2273,-183,1735,2904,3042,2221,806,-696,-1807,-2227,-1908,-1038,47,983,1499,1487,1018,296,-424,-918,-1064,-863,-424,86,499,701,659,421,88,-224,-422,-461,-354,-154,63,228,297,265,157,18};

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
  config.num_coeffs          = 229;
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
  config.output_width        = 37;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_doa_low_im_config = gen_fir_doa_low_im_config();

