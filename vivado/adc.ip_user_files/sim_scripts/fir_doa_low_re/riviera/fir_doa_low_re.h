
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
// coefficients: -236,-205,-94,72,242,356,361,237,6,-268,-492,-579,-472,-178,228,619,852,819,489,-67,-685,-1154,-1285,-980,-284,615,1427,1851,1682,898,-310,-1573,-2453,-2590,-1837,-346,1457,2977,3647,3128,1458,-917,-3251,-4727,-4731,-3098,-213,3059,5624,6519,5261,2064,-2164,-6064,-8261,-7835,-4684,358,5734,9626,10573,7995,2479,-4333,-10219,-13098,-11754,-6324,1649,9639,14935,15551,10961,2374,-7564,-15576,-18840,-15967,-7570,3837,14579,21009,20742,13530,1454,-11669,-21492,-24584,-19625,-7942,6830,19882,26804,25080,14997,-357,-16041,-26862,-29102,-21801,-7151,10167,24486,31021,27479,14867,-2793,-19752,-30427,-31248,-21861,-5279,13102,27266,32568,27266,13102,-5279,-21861,-31248,-30427,-19752,-2793,14867,27479,31021,24486,10167,-7151,-21801,-29102,-26862,-16041,-357,14997,25080,26804,19882,6830,-7942,-19625,-24584,-21492,-11669,1454,13530,20742,21009,14579,3837,-7570,-15967,-18840,-15576,-7564,2374,10961,15551,14935,9639,1649,-6324,-11754,-13098,-10219,-4333,2479,7995,10573,9626,5734,358,-4684,-7835,-8261,-6064,-2164,2064,5261,6519,5624,3059,-213,-3098,-4731,-4727,-3251,-917,1458,3128,3647,2977,1457,-346,-1837,-2590,-2453,-1573,-310,898,1682,1851,1427,615,-284,-980,-1285,-1154,-685,-67,489,819,852,619,228,-178,-472,-579,-492,-268,6,237,361,356,242,72,-94,-205,-236
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

const double fir_doa_low_re_coefficients[229] = {-236,-205,-94,72,242,356,361,237,6,-268,-492,-579,-472,-178,228,619,852,819,489,-67,-685,-1154,-1285,-980,-284,615,1427,1851,1682,898,-310,-1573,-2453,-2590,-1837,-346,1457,2977,3647,3128,1458,-917,-3251,-4727,-4731,-3098,-213,3059,5624,6519,5261,2064,-2164,-6064,-8261,-7835,-4684,358,5734,9626,10573,7995,2479,-4333,-10219,-13098,-11754,-6324,1649,9639,14935,15551,10961,2374,-7564,-15576,-18840,-15967,-7570,3837,14579,21009,20742,13530,1454,-11669,-21492,-24584,-19625,-7942,6830,19882,26804,25080,14997,-357,-16041,-26862,-29102,-21801,-7151,10167,24486,31021,27479,14867,-2793,-19752,-30427,-31248,-21861,-5279,13102,27266,32568,27266,13102,-5279,-21861,-31248,-30427,-19752,-2793,14867,27479,31021,24486,10167,-7151,-21801,-29102,-26862,-16041,-357,14997,25080,26804,19882,6830,-7942,-19625,-24584,-21492,-11669,1454,13530,20742,21009,14579,3837,-7570,-15967,-18840,-15576,-7564,2374,10961,15551,14935,9639,1649,-6324,-11754,-13098,-10219,-4333,2479,7995,10573,9626,5734,358,-4684,-7835,-8261,-6064,-2164,2064,5261,6519,5624,3059,-213,-3098,-4731,-4727,-3251,-917,1458,3128,3647,2977,1457,-346,-1837,-2590,-2453,-1573,-310,898,1682,1851,1427,615,-284,-980,-1285,-1154,-685,-67,489,819,852,619,228,-178,-472,-579,-492,-268,6,237,361,356,242,72,-94,-205,-236};

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

