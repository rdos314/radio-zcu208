
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
// coefficients: -17,-153,-258,-290,-222,-62,150,345,450,411,219,-86,-411,-643,-683,-486,-84,413,841,1037,895,413,-288,-992,-1450,-1461,-958,-45,1012,1860,2171,1761,678,-785,-2165,-2965,-2831,-1692,179,2215,3726,4120,3130,939,-1826,-4268,-5503,-4970,-2664,803,4352,6765,7093,5017,1017,-3712,-7611,-9265,-7899,-3715,2101,7696,11138,11073,7237,642,-6679,-12289,-14150,-11358,-4529,4301,12274,16633,15668,9370,-462,-10721,-17974,-19606,-14758,-4713,7423,17682,22530,20088,10841,-2417,-15425,-23827,-24639,-17304,-3970,11131,23036,27687,23323,11136,-5043,-19956,-28639,-28080,-18275,-2284,14726,27163,30866,24503,10051,-7821,-23272,-31217,-29012,-17340,0,17340,29012,31217,23272,7821,-10051,-24503,-30866,-27163,-14726,2284,18275,28080,28639,19956,5043,-11136,-23323,-27687,-23036,-11131,3970,17304,24639,23827,15425,2417,-10841,-20088,-22530,-17682,-7423,4713,14758,19606,17974,10721,462,-9370,-15668,-16633,-12274,-4301,4529,11358,14150,12289,6679,-642,-7237,-11073,-11138,-7696,-2101,3715,7899,9265,7611,3712,-1017,-5017,-7093,-6765,-4352,-803,2664,4970,5503,4268,1826,-939,-3130,-4120,-3726,-2215,-179,1692,2831,2965,2165,785,-678,-1761,-2171,-1860,-1012,45,958,1461,1450,992,288,-413,-895,-1037,-841,-413,84,486,683,643,411,86,-219,-411,-450,-345,-150,62,222,290,258,153,17
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

const double fir_doa_low_im_coefficients[229] = {-17,-153,-258,-290,-222,-62,150,345,450,411,219,-86,-411,-643,-683,-486,-84,413,841,1037,895,413,-288,-992,-1450,-1461,-958,-45,1012,1860,2171,1761,678,-785,-2165,-2965,-2831,-1692,179,2215,3726,4120,3130,939,-1826,-4268,-5503,-4970,-2664,803,4352,6765,7093,5017,1017,-3712,-7611,-9265,-7899,-3715,2101,7696,11138,11073,7237,642,-6679,-12289,-14150,-11358,-4529,4301,12274,16633,15668,9370,-462,-10721,-17974,-19606,-14758,-4713,7423,17682,22530,20088,10841,-2417,-15425,-23827,-24639,-17304,-3970,11131,23036,27687,23323,11136,-5043,-19956,-28639,-28080,-18275,-2284,14726,27163,30866,24503,10051,-7821,-23272,-31217,-29012,-17340,0,17340,29012,31217,23272,7821,-10051,-24503,-30866,-27163,-14726,2284,18275,28080,28639,19956,5043,-11136,-23323,-27687,-23036,-11131,3970,17304,24639,23827,15425,2417,-10841,-20088,-22530,-17682,-7423,4713,14758,19606,17974,10721,462,-9370,-15668,-16633,-12274,-4301,4529,11358,14150,12289,6679,-642,-7237,-11073,-11138,-7696,-2101,3715,7899,9265,7611,3712,-1017,-5017,-7093,-6765,-4352,-803,2664,4970,5503,4268,1826,-939,-3130,-4120,-3726,-2215,-179,1692,2831,2965,2165,785,-678,-1761,-2171,-1860,-1012,45,958,1461,1450,992,288,-413,-895,-1037,-841,-413,84,486,683,643,411,86,-219,-411,-450,-345,-150,62,222,290,258,153,17};

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

