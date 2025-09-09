// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
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
// 
// DO NOT MODIFY THIS FILE.


#include "rfdc_ex_axis_inter_adc_imp_xbar_0_sc.h"

#include "rfdc_ex_axis_inter_adc_imp_xbar_0.h"

#include "rfdc_ex_axis_inter_adc_imp_xbar_0_core.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
rfdc_ex_axis_inter_adc_imp_xbar_0::rfdc_ex_axis_inter_adc_imp_xbar_0(const sc_core::sc_module_name& nm) : rfdc_ex_axis_inter_adc_imp_xbar_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), m_axis_tvalid("m_axis_tvalid"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tkeep("m_axis_tkeep"), s_axi_ctrl_aclk("s_axi_ctrl_aclk"), s_axi_ctrl_aresetn("s_axi_ctrl_aresetn"), s_axi_ctrl_awvalid("s_axi_ctrl_awvalid"), s_axi_ctrl_awready("s_axi_ctrl_awready"), s_axi_ctrl_awaddr("s_axi_ctrl_awaddr"), s_axi_ctrl_wvalid("s_axi_ctrl_wvalid"), s_axi_ctrl_wready("s_axi_ctrl_wready"), s_axi_ctrl_wdata("s_axi_ctrl_wdata"), s_axi_ctrl_bvalid("s_axi_ctrl_bvalid"), s_axi_ctrl_bready("s_axi_ctrl_bready"), s_axi_ctrl_bresp("s_axi_ctrl_bresp"), s_axi_ctrl_arvalid("s_axi_ctrl_arvalid"), s_axi_ctrl_arready("s_axi_ctrl_arready"), s_axi_ctrl_araddr("s_axi_ctrl_araddr"), s_axi_ctrl_rvalid("s_axi_ctrl_rvalid"), s_axi_ctrl_rready("s_axi_ctrl_rready"), s_axi_ctrl_rdata("s_axi_ctrl_rdata"), s_axi_ctrl_rresp("s_axi_ctrl_rresp")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);
  mp_impl->s_axi_ctrl_aclk(s_axi_ctrl_aclk);
  mp_impl->s_axi_ctrl_aresetn(s_axi_ctrl_aresetn);

  // initialize transactors
  mp_S00_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_0 = NULL;
  mp_s_axis_tready_converter_0 = NULL;
  mp_s_axis_tdata_converter_0 = NULL;
  mp_s_axis_tkeep_converter_0 = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_m_axis_tvalid_converter = NULL;
  mp_m_axis_tready_converter = NULL;
  mp_S01_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_1 = NULL;
  mp_s_axis_tready_converter_1 = NULL;
  mp_s_axis_tdata_converter_1 = NULL;
  mp_s_axis_tkeep_converter_1 = NULL;
  mp_S02_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_2 = NULL;
  mp_s_axis_tready_converter_2 = NULL;
  mp_s_axis_tdata_converter_2 = NULL;
  mp_s_axis_tkeep_converter_2 = NULL;
  mp_S03_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_3 = NULL;
  mp_s_axis_tready_converter_3 = NULL;
  mp_s_axis_tdata_converter_3 = NULL;
  mp_s_axis_tkeep_converter_3 = NULL;
  mp_S04_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_4 = NULL;
  mp_s_axis_tready_converter_4 = NULL;
  mp_s_axis_tdata_converter_4 = NULL;
  mp_s_axis_tkeep_converter_4 = NULL;
  mp_S05_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_5 = NULL;
  mp_s_axis_tready_converter_5 = NULL;
  mp_s_axis_tdata_converter_5 = NULL;
  mp_s_axis_tkeep_converter_5 = NULL;
  mp_S06_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_6 = NULL;
  mp_s_axis_tready_converter_6 = NULL;
  mp_s_axis_tdata_converter_6 = NULL;
  mp_s_axis_tkeep_converter_6 = NULL;
  mp_S07_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_7 = NULL;
  mp_s_axis_tready_converter_7 = NULL;
  mp_s_axis_tdata_converter_7 = NULL;
  mp_s_axis_tkeep_converter_7 = NULL;
  mp_S_AXI_CTRL_transactor = NULL;

  // initialize junctures
  mp_s_axis_concat_tready = NULL;
  mp_s_axis_split_tdata = NULL;
  mp_s_axis_split_tkeep = NULL;
  mp_s_axis_split_tvalid = NULL;
  mp_s_axis_split_tvalid = new xsc::xsc_split<8, 8>("s_axis_split_tvalid");
  mp_s_axis_split_tvalid->in_port(s_axis_tvalid);
  mp_s_axis_split_tvalid->out_port[0](s_axis_split_tvalid_out_0);
    mp_s_axis_split_tvalid->add_mask(0,1,0);
  mp_s_axis_concat_tready = new xsc::xsc_concatenator<8, 8>("s_axis_concat_tready");
  mp_s_axis_concat_tready->in_port[0](s_axis_concat_tready_out_0);
  mp_s_axis_concat_tready->out_port(s_axis_tready);
    mp_s_axis_concat_tready->offset_port(0, 0);
  mp_s_axis_split_tdata = new xsc::xsc_split<4096, 8>("s_axis_split_tdata");
  mp_s_axis_split_tdata->in_port(s_axis_tdata);
  mp_s_axis_split_tdata->out_port[0](s_axis_split_tdata_out_0);
    mp_s_axis_split_tdata->add_mask(0,512,0);
  mp_s_axis_split_tkeep = new xsc::xsc_split<512, 8>("s_axis_split_tkeep");
  mp_s_axis_split_tkeep->in_port(s_axis_tkeep);
  mp_s_axis_split_tkeep->out_port[0](s_axis_split_tkeep_out_0);
    mp_s_axis_split_tkeep->add_mask(0,64,0);
  
  mp_s_axis_split_tvalid->out_port[1](s_axis_split_tvalid_out_1);
    mp_s_axis_split_tvalid->add_mask(1,2,1);
  mp_s_axis_concat_tready->in_port[1](s_axis_concat_tready_out_1);
  mp_s_axis_concat_tready->offset_port(1, 1);
  
  mp_s_axis_split_tdata->out_port[1](s_axis_split_tdata_out_1);
    mp_s_axis_split_tdata->add_mask(1,1024,512);
  
  mp_s_axis_split_tkeep->out_port[1](s_axis_split_tkeep_out_1);
    mp_s_axis_split_tkeep->add_mask(1,128,64);
  
  mp_s_axis_split_tvalid->out_port[2](s_axis_split_tvalid_out_2);
    mp_s_axis_split_tvalid->add_mask(2,3,2);
  mp_s_axis_concat_tready->in_port[2](s_axis_concat_tready_out_2);
  mp_s_axis_concat_tready->offset_port(2, 2);
  
  mp_s_axis_split_tdata->out_port[2](s_axis_split_tdata_out_2);
    mp_s_axis_split_tdata->add_mask(2,1536,1024);
  
  mp_s_axis_split_tkeep->out_port[2](s_axis_split_tkeep_out_2);
    mp_s_axis_split_tkeep->add_mask(2,192,128);
  
  mp_s_axis_split_tvalid->out_port[3](s_axis_split_tvalid_out_3);
    mp_s_axis_split_tvalid->add_mask(3,4,3);
  mp_s_axis_concat_tready->in_port[3](s_axis_concat_tready_out_3);
  mp_s_axis_concat_tready->offset_port(3, 3);
  
  mp_s_axis_split_tdata->out_port[3](s_axis_split_tdata_out_3);
    mp_s_axis_split_tdata->add_mask(3,2048,1536);
  
  mp_s_axis_split_tkeep->out_port[3](s_axis_split_tkeep_out_3);
    mp_s_axis_split_tkeep->add_mask(3,256,192);
  
  mp_s_axis_split_tvalid->out_port[4](s_axis_split_tvalid_out_4);
    mp_s_axis_split_tvalid->add_mask(4,5,4);
  mp_s_axis_concat_tready->in_port[4](s_axis_concat_tready_out_4);
  mp_s_axis_concat_tready->offset_port(4, 4);
  
  mp_s_axis_split_tdata->out_port[4](s_axis_split_tdata_out_4);
    mp_s_axis_split_tdata->add_mask(4,2560,2048);
  
  mp_s_axis_split_tkeep->out_port[4](s_axis_split_tkeep_out_4);
    mp_s_axis_split_tkeep->add_mask(4,320,256);
  
  mp_s_axis_split_tvalid->out_port[5](s_axis_split_tvalid_out_5);
    mp_s_axis_split_tvalid->add_mask(5,6,5);
  mp_s_axis_concat_tready->in_port[5](s_axis_concat_tready_out_5);
  mp_s_axis_concat_tready->offset_port(5, 5);
  
  mp_s_axis_split_tdata->out_port[5](s_axis_split_tdata_out_5);
    mp_s_axis_split_tdata->add_mask(5,3072,2560);
  
  mp_s_axis_split_tkeep->out_port[5](s_axis_split_tkeep_out_5);
    mp_s_axis_split_tkeep->add_mask(5,384,320);
  
  mp_s_axis_split_tvalid->out_port[6](s_axis_split_tvalid_out_6);
    mp_s_axis_split_tvalid->add_mask(6,7,6);
  mp_s_axis_concat_tready->in_port[6](s_axis_concat_tready_out_6);
  mp_s_axis_concat_tready->offset_port(6, 6);
  
  mp_s_axis_split_tdata->out_port[6](s_axis_split_tdata_out_6);
    mp_s_axis_split_tdata->add_mask(6,3584,3072);
  
  mp_s_axis_split_tkeep->out_port[6](s_axis_split_tkeep_out_6);
    mp_s_axis_split_tkeep->add_mask(6,448,384);
  
  mp_s_axis_split_tvalid->out_port[7](s_axis_split_tvalid_out_7);
    mp_s_axis_split_tvalid->add_mask(7,8,7);
  mp_s_axis_concat_tready->in_port[7](s_axis_concat_tready_out_7);
  mp_s_axis_concat_tready->offset_port(7, 7);
  
  mp_s_axis_split_tdata->out_port[7](s_axis_split_tdata_out_7);
    mp_s_axis_split_tdata->add_mask(7,4096,3584);
  
  mp_s_axis_split_tkeep->out_port[7](s_axis_split_tkeep_out_7);
    mp_s_axis_split_tkeep->add_mask(7,512,448);

  // initialize socket stubs

}

void rfdc_ex_axis_inter_adc_imp_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXIS' transactor parameters
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);

    // S00_AXIS' transactor ports

    mp_s_axis_tvalid_converter_0 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_0");
    mp_s_axis_tvalid_converter_0->vector_in(s_axis_split_tvalid_out_0);
    mp_s_axis_tvalid_converter_0->scalar_out(m_s_axis_tvalid_converter_0_signal);
    mp_S00_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_0_signal);
    mp_s_axis_tready_converter_0 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_0");
    mp_s_axis_tready_converter_0->scalar_in(m_s_axis_tready_converter_0_signal);
    mp_s_axis_tready_converter_0->vector_out(s_axis_concat_tready_out_0);
    mp_S00_AXIS_transactor->TREADY(m_s_axis_tready_converter_0_signal);
    mp_s_axis_tdata_converter_0 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_0");
    mp_s_axis_tdata_converter_0->vector_in(s_axis_split_tdata_out_0);
    mp_s_axis_tdata_converter_0->vector_out(m_s_axis_tdata_converter_0_signal);
    mp_S00_AXIS_transactor->TDATA(m_s_axis_tdata_converter_0_signal);
    mp_s_axis_tkeep_converter_0 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_0");
    mp_s_axis_tkeep_converter_0->vector_in(s_axis_split_tkeep_out_0);
    mp_s_axis_tkeep_converter_0->vector_out(m_s_axis_tkeep_converter_0_signal);
    mp_S00_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_0_signal);
    mp_S00_AXIS_transactor->CLK(aclk);
    mp_S00_AXIS_transactor->RST(aresetn);

    // S00_AXIS' transactor sockets

    mp_impl->S00_AXIS_TARGET_SOCKET->bind(*(mp_S00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'M00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "M00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXIS' transactor parameters
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<64,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);

    // M00_AXIS' transactor ports

    mp_m_axis_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axis_tvalid_converter");
    mp_m_axis_tvalid_converter->scalar_in(m_m_axis_tvalid_converter_signal);
    mp_m_axis_tvalid_converter->vector_out(m_axis_tvalid);
    mp_M00_AXIS_transactor->TVALID(m_m_axis_tvalid_converter_signal);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_M00_AXIS_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_M00_AXIS_transactor->TDATA(m_axis_tdata);
    mp_M00_AXIS_transactor->TKEEP(m_axis_tkeep);
    mp_M00_AXIS_transactor->CLK(aclk);
    mp_M00_AXIS_transactor->RST(aresetn);

    // M00_AXIS' transactor sockets

    mp_impl->M00_AXIS_INITIATOR_SOCKET->bind(*(mp_M00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S01_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S01_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXIS' transactor parameters
    xsc::common_cpp::properties S01_AXIS_transactor_param_props;
    S01_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S01_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S01_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S01_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S01_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S01_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S01_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S01_AXIS_transactor", S01_AXIS_transactor_param_props);

    // S01_AXIS' transactor ports

    mp_s_axis_tvalid_converter_1 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_1");
    mp_s_axis_tvalid_converter_1->vector_in(s_axis_split_tvalid_out_1);
    mp_s_axis_tvalid_converter_1->scalar_out(m_s_axis_tvalid_converter_1_signal);
    mp_S01_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_1_signal);
    mp_s_axis_tready_converter_1 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_1");
    mp_s_axis_tready_converter_1->scalar_in(m_s_axis_tready_converter_1_signal);
    mp_s_axis_tready_converter_1->vector_out(s_axis_concat_tready_out_1);
    mp_S01_AXIS_transactor->TREADY(m_s_axis_tready_converter_1_signal);
    mp_s_axis_tdata_converter_1 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_1");
    mp_s_axis_tdata_converter_1->vector_in(s_axis_split_tdata_out_1);
    mp_s_axis_tdata_converter_1->vector_out(m_s_axis_tdata_converter_1_signal);
    mp_S01_AXIS_transactor->TDATA(m_s_axis_tdata_converter_1_signal);
    mp_s_axis_tkeep_converter_1 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_1");
    mp_s_axis_tkeep_converter_1->vector_in(s_axis_split_tkeep_out_1);
    mp_s_axis_tkeep_converter_1->vector_out(m_s_axis_tkeep_converter_1_signal);
    mp_S01_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_1_signal);
    mp_S01_AXIS_transactor->CLK(aclk);
    mp_S01_AXIS_transactor->RST(aresetn);

    // S01_AXIS' transactor sockets

    mp_impl->S01_AXIS_TARGET_SOCKET->bind(*(mp_S01_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S02_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S02_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXIS' transactor parameters
    xsc::common_cpp::properties S02_AXIS_transactor_param_props;
    S02_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S02_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S02_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S02_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S02_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S02_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S02_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S02_AXIS_transactor", S02_AXIS_transactor_param_props);

    // S02_AXIS' transactor ports

    mp_s_axis_tvalid_converter_2 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_2");
    mp_s_axis_tvalid_converter_2->vector_in(s_axis_split_tvalid_out_2);
    mp_s_axis_tvalid_converter_2->scalar_out(m_s_axis_tvalid_converter_2_signal);
    mp_S02_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_2_signal);
    mp_s_axis_tready_converter_2 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_2");
    mp_s_axis_tready_converter_2->scalar_in(m_s_axis_tready_converter_2_signal);
    mp_s_axis_tready_converter_2->vector_out(s_axis_concat_tready_out_2);
    mp_S02_AXIS_transactor->TREADY(m_s_axis_tready_converter_2_signal);
    mp_s_axis_tdata_converter_2 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_2");
    mp_s_axis_tdata_converter_2->vector_in(s_axis_split_tdata_out_2);
    mp_s_axis_tdata_converter_2->vector_out(m_s_axis_tdata_converter_2_signal);
    mp_S02_AXIS_transactor->TDATA(m_s_axis_tdata_converter_2_signal);
    mp_s_axis_tkeep_converter_2 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_2");
    mp_s_axis_tkeep_converter_2->vector_in(s_axis_split_tkeep_out_2);
    mp_s_axis_tkeep_converter_2->vector_out(m_s_axis_tkeep_converter_2_signal);
    mp_S02_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_2_signal);
    mp_S02_AXIS_transactor->CLK(aclk);
    mp_S02_AXIS_transactor->RST(aresetn);

    // S02_AXIS' transactor sockets

    mp_impl->S02_AXIS_TARGET_SOCKET->bind(*(mp_S02_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S03_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S03_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXIS' transactor parameters
    xsc::common_cpp::properties S03_AXIS_transactor_param_props;
    S03_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S03_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S03_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S03_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S03_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S03_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S03_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S03_AXIS_transactor", S03_AXIS_transactor_param_props);

    // S03_AXIS' transactor ports

    mp_s_axis_tvalid_converter_3 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_3");
    mp_s_axis_tvalid_converter_3->vector_in(s_axis_split_tvalid_out_3);
    mp_s_axis_tvalid_converter_3->scalar_out(m_s_axis_tvalid_converter_3_signal);
    mp_S03_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_3_signal);
    mp_s_axis_tready_converter_3 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_3");
    mp_s_axis_tready_converter_3->scalar_in(m_s_axis_tready_converter_3_signal);
    mp_s_axis_tready_converter_3->vector_out(s_axis_concat_tready_out_3);
    mp_S03_AXIS_transactor->TREADY(m_s_axis_tready_converter_3_signal);
    mp_s_axis_tdata_converter_3 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_3");
    mp_s_axis_tdata_converter_3->vector_in(s_axis_split_tdata_out_3);
    mp_s_axis_tdata_converter_3->vector_out(m_s_axis_tdata_converter_3_signal);
    mp_S03_AXIS_transactor->TDATA(m_s_axis_tdata_converter_3_signal);
    mp_s_axis_tkeep_converter_3 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_3");
    mp_s_axis_tkeep_converter_3->vector_in(s_axis_split_tkeep_out_3);
    mp_s_axis_tkeep_converter_3->vector_out(m_s_axis_tkeep_converter_3_signal);
    mp_S03_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_3_signal);
    mp_S03_AXIS_transactor->CLK(aclk);
    mp_S03_AXIS_transactor->RST(aresetn);

    // S03_AXIS' transactor sockets

    mp_impl->S03_AXIS_TARGET_SOCKET->bind(*(mp_S03_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S04_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S04_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXIS' transactor parameters
    xsc::common_cpp::properties S04_AXIS_transactor_param_props;
    S04_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S04_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S04_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S04_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S04_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S04_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S04_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S04_AXIS_transactor", S04_AXIS_transactor_param_props);

    // S04_AXIS' transactor ports

    mp_s_axis_tvalid_converter_4 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_4");
    mp_s_axis_tvalid_converter_4->vector_in(s_axis_split_tvalid_out_4);
    mp_s_axis_tvalid_converter_4->scalar_out(m_s_axis_tvalid_converter_4_signal);
    mp_S04_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_4_signal);
    mp_s_axis_tready_converter_4 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_4");
    mp_s_axis_tready_converter_4->scalar_in(m_s_axis_tready_converter_4_signal);
    mp_s_axis_tready_converter_4->vector_out(s_axis_concat_tready_out_4);
    mp_S04_AXIS_transactor->TREADY(m_s_axis_tready_converter_4_signal);
    mp_s_axis_tdata_converter_4 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_4");
    mp_s_axis_tdata_converter_4->vector_in(s_axis_split_tdata_out_4);
    mp_s_axis_tdata_converter_4->vector_out(m_s_axis_tdata_converter_4_signal);
    mp_S04_AXIS_transactor->TDATA(m_s_axis_tdata_converter_4_signal);
    mp_s_axis_tkeep_converter_4 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_4");
    mp_s_axis_tkeep_converter_4->vector_in(s_axis_split_tkeep_out_4);
    mp_s_axis_tkeep_converter_4->vector_out(m_s_axis_tkeep_converter_4_signal);
    mp_S04_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_4_signal);
    mp_S04_AXIS_transactor->CLK(aclk);
    mp_S04_AXIS_transactor->RST(aresetn);

    // S04_AXIS' transactor sockets

    mp_impl->S04_AXIS_TARGET_SOCKET->bind(*(mp_S04_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S05_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S05_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S05_AXIS' transactor parameters
    xsc::common_cpp::properties S05_AXIS_transactor_param_props;
    S05_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S05_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S05_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S05_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S05_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S05_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S05_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S05_AXIS_transactor", S05_AXIS_transactor_param_props);

    // S05_AXIS' transactor ports

    mp_s_axis_tvalid_converter_5 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_5");
    mp_s_axis_tvalid_converter_5->vector_in(s_axis_split_tvalid_out_5);
    mp_s_axis_tvalid_converter_5->scalar_out(m_s_axis_tvalid_converter_5_signal);
    mp_S05_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_5_signal);
    mp_s_axis_tready_converter_5 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_5");
    mp_s_axis_tready_converter_5->scalar_in(m_s_axis_tready_converter_5_signal);
    mp_s_axis_tready_converter_5->vector_out(s_axis_concat_tready_out_5);
    mp_S05_AXIS_transactor->TREADY(m_s_axis_tready_converter_5_signal);
    mp_s_axis_tdata_converter_5 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_5");
    mp_s_axis_tdata_converter_5->vector_in(s_axis_split_tdata_out_5);
    mp_s_axis_tdata_converter_5->vector_out(m_s_axis_tdata_converter_5_signal);
    mp_S05_AXIS_transactor->TDATA(m_s_axis_tdata_converter_5_signal);
    mp_s_axis_tkeep_converter_5 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_5");
    mp_s_axis_tkeep_converter_5->vector_in(s_axis_split_tkeep_out_5);
    mp_s_axis_tkeep_converter_5->vector_out(m_s_axis_tkeep_converter_5_signal);
    mp_S05_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_5_signal);
    mp_S05_AXIS_transactor->CLK(aclk);
    mp_S05_AXIS_transactor->RST(aresetn);

    // S05_AXIS' transactor sockets

    mp_impl->S05_AXIS_TARGET_SOCKET->bind(*(mp_S05_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S06_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S06_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S06_AXIS' transactor parameters
    xsc::common_cpp::properties S06_AXIS_transactor_param_props;
    S06_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S06_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S06_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S06_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S06_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S06_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S06_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S06_AXIS_transactor", S06_AXIS_transactor_param_props);

    // S06_AXIS' transactor ports

    mp_s_axis_tvalid_converter_6 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_6");
    mp_s_axis_tvalid_converter_6->vector_in(s_axis_split_tvalid_out_6);
    mp_s_axis_tvalid_converter_6->scalar_out(m_s_axis_tvalid_converter_6_signal);
    mp_S06_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_6_signal);
    mp_s_axis_tready_converter_6 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_6");
    mp_s_axis_tready_converter_6->scalar_in(m_s_axis_tready_converter_6_signal);
    mp_s_axis_tready_converter_6->vector_out(s_axis_concat_tready_out_6);
    mp_S06_AXIS_transactor->TREADY(m_s_axis_tready_converter_6_signal);
    mp_s_axis_tdata_converter_6 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_6");
    mp_s_axis_tdata_converter_6->vector_in(s_axis_split_tdata_out_6);
    mp_s_axis_tdata_converter_6->vector_out(m_s_axis_tdata_converter_6_signal);
    mp_S06_AXIS_transactor->TDATA(m_s_axis_tdata_converter_6_signal);
    mp_s_axis_tkeep_converter_6 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_6");
    mp_s_axis_tkeep_converter_6->vector_in(s_axis_split_tkeep_out_6);
    mp_s_axis_tkeep_converter_6->vector_out(m_s_axis_tkeep_converter_6_signal);
    mp_S06_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_6_signal);
    mp_S06_AXIS_transactor->CLK(aclk);
    mp_S06_AXIS_transactor->RST(aresetn);

    // S06_AXIS' transactor sockets

    mp_impl->S06_AXIS_TARGET_SOCKET->bind(*(mp_S06_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S07_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S07_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S07_AXIS' transactor parameters
    xsc::common_cpp::properties S07_AXIS_transactor_param_props;
    S07_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S07_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S07_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S07_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S07_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S07_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S07_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S07_AXIS_transactor", S07_AXIS_transactor_param_props);

    // S07_AXIS' transactor ports

    mp_s_axis_tvalid_converter_7 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_7");
    mp_s_axis_tvalid_converter_7->vector_in(s_axis_split_tvalid_out_7);
    mp_s_axis_tvalid_converter_7->scalar_out(m_s_axis_tvalid_converter_7_signal);
    mp_S07_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_7_signal);
    mp_s_axis_tready_converter_7 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_7");
    mp_s_axis_tready_converter_7->scalar_in(m_s_axis_tready_converter_7_signal);
    mp_s_axis_tready_converter_7->vector_out(s_axis_concat_tready_out_7);
    mp_S07_AXIS_transactor->TREADY(m_s_axis_tready_converter_7_signal);
    mp_s_axis_tdata_converter_7 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_7");
    mp_s_axis_tdata_converter_7->vector_in(s_axis_split_tdata_out_7);
    mp_s_axis_tdata_converter_7->vector_out(m_s_axis_tdata_converter_7_signal);
    mp_S07_AXIS_transactor->TDATA(m_s_axis_tdata_converter_7_signal);
    mp_s_axis_tkeep_converter_7 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_7");
    mp_s_axis_tkeep_converter_7->vector_in(s_axis_split_tkeep_out_7);
    mp_s_axis_tkeep_converter_7->vector_out(m_s_axis_tkeep_converter_7_signal);
    mp_S07_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_7_signal);
    mp_S07_AXIS_transactor->CLK(aclk);
    mp_S07_AXIS_transactor->RST(aresetn);

    // S07_AXIS' transactor sockets

    mp_impl->S07_AXIS_TARGET_SOCKET->bind(*(mp_S07_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S_AXI_CTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S_AXI_CTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_CTRL' transactor parameters
    xsc::common_cpp::properties S_AXI_CTRL_transactor_param_props;
    S_AXI_CTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_CTRL_transactor_param_props.addLong("FREQ_HZ", "99999001");
    S_AXI_CTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ADDR_WIDTH", "7");
    S_AXI_CTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_CTRL_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_CTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_CTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_CTRL_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_zynq_ps_0_pl_clk0");

    mp_S_AXI_CTRL_transactor = new xtlm::xaximm_pin2xtlm_t<32,7,1,1,1,1,1,1>("S_AXI_CTRL_transactor", S_AXI_CTRL_transactor_param_props);

    // S_AXI_CTRL' transactor ports

    mp_S_AXI_CTRL_transactor->AWVALID(s_axi_ctrl_awvalid);
    mp_S_AXI_CTRL_transactor->AWREADY(s_axi_ctrl_awready);
    mp_S_AXI_CTRL_transactor->AWADDR(s_axi_ctrl_awaddr);
    mp_S_AXI_CTRL_transactor->WVALID(s_axi_ctrl_wvalid);
    mp_S_AXI_CTRL_transactor->WREADY(s_axi_ctrl_wready);
    mp_S_AXI_CTRL_transactor->WDATA(s_axi_ctrl_wdata);
    mp_S_AXI_CTRL_transactor->BVALID(s_axi_ctrl_bvalid);
    mp_S_AXI_CTRL_transactor->BREADY(s_axi_ctrl_bready);
    mp_S_AXI_CTRL_transactor->BRESP(s_axi_ctrl_bresp);
    mp_S_AXI_CTRL_transactor->ARVALID(s_axi_ctrl_arvalid);
    mp_S_AXI_CTRL_transactor->ARREADY(s_axi_ctrl_arready);
    mp_S_AXI_CTRL_transactor->ARADDR(s_axi_ctrl_araddr);
    mp_S_AXI_CTRL_transactor->RVALID(s_axi_ctrl_rvalid);
    mp_S_AXI_CTRL_transactor->RREADY(s_axi_ctrl_rready);
    mp_S_AXI_CTRL_transactor->RDATA(s_axi_ctrl_rdata);
    mp_S_AXI_CTRL_transactor->RRESP(s_axi_ctrl_rresp);
    mp_S_AXI_CTRL_transactor->CLK(s_axi_ctrl_aclk);
    mp_S_AXI_CTRL_transactor->RST(s_axi_ctrl_aresetn);

    // S_AXI_CTRL' transactor sockets

  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
rfdc_ex_axis_inter_adc_imp_xbar_0::rfdc_ex_axis_inter_adc_imp_xbar_0(const sc_core::sc_module_name& nm) : rfdc_ex_axis_inter_adc_imp_xbar_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), m_axis_tvalid("m_axis_tvalid"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tkeep("m_axis_tkeep"), s_axi_ctrl_aclk("s_axi_ctrl_aclk"), s_axi_ctrl_aresetn("s_axi_ctrl_aresetn"), s_axi_ctrl_awvalid("s_axi_ctrl_awvalid"), s_axi_ctrl_awready("s_axi_ctrl_awready"), s_axi_ctrl_awaddr("s_axi_ctrl_awaddr"), s_axi_ctrl_wvalid("s_axi_ctrl_wvalid"), s_axi_ctrl_wready("s_axi_ctrl_wready"), s_axi_ctrl_wdata("s_axi_ctrl_wdata"), s_axi_ctrl_bvalid("s_axi_ctrl_bvalid"), s_axi_ctrl_bready("s_axi_ctrl_bready"), s_axi_ctrl_bresp("s_axi_ctrl_bresp"), s_axi_ctrl_arvalid("s_axi_ctrl_arvalid"), s_axi_ctrl_arready("s_axi_ctrl_arready"), s_axi_ctrl_araddr("s_axi_ctrl_araddr"), s_axi_ctrl_rvalid("s_axi_ctrl_rvalid"), s_axi_ctrl_rready("s_axi_ctrl_rready"), s_axi_ctrl_rdata("s_axi_ctrl_rdata"), s_axi_ctrl_rresp("s_axi_ctrl_rresp")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);
  mp_impl->s_axi_ctrl_aclk(s_axi_ctrl_aclk);
  mp_impl->s_axi_ctrl_aresetn(s_axi_ctrl_aresetn);

  // initialize transactors
  mp_S00_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_0 = NULL;
  mp_s_axis_tready_converter_0 = NULL;
  mp_s_axis_tdata_converter_0 = NULL;
  mp_s_axis_tkeep_converter_0 = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_m_axis_tvalid_converter = NULL;
  mp_m_axis_tready_converter = NULL;
  mp_S01_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_1 = NULL;
  mp_s_axis_tready_converter_1 = NULL;
  mp_s_axis_tdata_converter_1 = NULL;
  mp_s_axis_tkeep_converter_1 = NULL;
  mp_S02_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_2 = NULL;
  mp_s_axis_tready_converter_2 = NULL;
  mp_s_axis_tdata_converter_2 = NULL;
  mp_s_axis_tkeep_converter_2 = NULL;
  mp_S03_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_3 = NULL;
  mp_s_axis_tready_converter_3 = NULL;
  mp_s_axis_tdata_converter_3 = NULL;
  mp_s_axis_tkeep_converter_3 = NULL;
  mp_S04_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_4 = NULL;
  mp_s_axis_tready_converter_4 = NULL;
  mp_s_axis_tdata_converter_4 = NULL;
  mp_s_axis_tkeep_converter_4 = NULL;
  mp_S05_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_5 = NULL;
  mp_s_axis_tready_converter_5 = NULL;
  mp_s_axis_tdata_converter_5 = NULL;
  mp_s_axis_tkeep_converter_5 = NULL;
  mp_S06_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_6 = NULL;
  mp_s_axis_tready_converter_6 = NULL;
  mp_s_axis_tdata_converter_6 = NULL;
  mp_s_axis_tkeep_converter_6 = NULL;
  mp_S07_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_7 = NULL;
  mp_s_axis_tready_converter_7 = NULL;
  mp_s_axis_tdata_converter_7 = NULL;
  mp_s_axis_tkeep_converter_7 = NULL;
  mp_S_AXI_CTRL_transactor = NULL;

  // initialize junctures
  mp_s_axis_concat_tready = NULL;
  mp_s_axis_split_tdata = NULL;
  mp_s_axis_split_tkeep = NULL;
  mp_s_axis_split_tvalid = NULL;
  mp_s_axis_split_tvalid = new xsc::xsc_split<8, 8>("s_axis_split_tvalid");
  mp_s_axis_split_tvalid->in_port(s_axis_tvalid);
  mp_s_axis_split_tvalid->out_port[0](s_axis_split_tvalid_out_0);
    mp_s_axis_split_tvalid->add_mask(0,1,0);
  mp_s_axis_concat_tready = new xsc::xsc_concatenator<8, 8>("s_axis_concat_tready");
  mp_s_axis_concat_tready->in_port[0](s_axis_concat_tready_out_0);
  mp_s_axis_concat_tready->out_port(s_axis_tready);
    mp_s_axis_concat_tready->offset_port(0, 0);
  mp_s_axis_split_tdata = new xsc::xsc_split<4096, 8>("s_axis_split_tdata");
  mp_s_axis_split_tdata->in_port(s_axis_tdata);
  mp_s_axis_split_tdata->out_port[0](s_axis_split_tdata_out_0);
    mp_s_axis_split_tdata->add_mask(0,512,0);
  mp_s_axis_split_tkeep = new xsc::xsc_split<512, 8>("s_axis_split_tkeep");
  mp_s_axis_split_tkeep->in_port(s_axis_tkeep);
  mp_s_axis_split_tkeep->out_port[0](s_axis_split_tkeep_out_0);
    mp_s_axis_split_tkeep->add_mask(0,64,0);
  
  mp_s_axis_split_tvalid->out_port[1](s_axis_split_tvalid_out_1);
    mp_s_axis_split_tvalid->add_mask(1,2,1);
  mp_s_axis_concat_tready->in_port[1](s_axis_concat_tready_out_1);
  mp_s_axis_concat_tready->offset_port(1, 1);
  
  mp_s_axis_split_tdata->out_port[1](s_axis_split_tdata_out_1);
    mp_s_axis_split_tdata->add_mask(1,1024,512);
  
  mp_s_axis_split_tkeep->out_port[1](s_axis_split_tkeep_out_1);
    mp_s_axis_split_tkeep->add_mask(1,128,64);
  
  mp_s_axis_split_tvalid->out_port[2](s_axis_split_tvalid_out_2);
    mp_s_axis_split_tvalid->add_mask(2,3,2);
  mp_s_axis_concat_tready->in_port[2](s_axis_concat_tready_out_2);
  mp_s_axis_concat_tready->offset_port(2, 2);
  
  mp_s_axis_split_tdata->out_port[2](s_axis_split_tdata_out_2);
    mp_s_axis_split_tdata->add_mask(2,1536,1024);
  
  mp_s_axis_split_tkeep->out_port[2](s_axis_split_tkeep_out_2);
    mp_s_axis_split_tkeep->add_mask(2,192,128);
  
  mp_s_axis_split_tvalid->out_port[3](s_axis_split_tvalid_out_3);
    mp_s_axis_split_tvalid->add_mask(3,4,3);
  mp_s_axis_concat_tready->in_port[3](s_axis_concat_tready_out_3);
  mp_s_axis_concat_tready->offset_port(3, 3);
  
  mp_s_axis_split_tdata->out_port[3](s_axis_split_tdata_out_3);
    mp_s_axis_split_tdata->add_mask(3,2048,1536);
  
  mp_s_axis_split_tkeep->out_port[3](s_axis_split_tkeep_out_3);
    mp_s_axis_split_tkeep->add_mask(3,256,192);
  
  mp_s_axis_split_tvalid->out_port[4](s_axis_split_tvalid_out_4);
    mp_s_axis_split_tvalid->add_mask(4,5,4);
  mp_s_axis_concat_tready->in_port[4](s_axis_concat_tready_out_4);
  mp_s_axis_concat_tready->offset_port(4, 4);
  
  mp_s_axis_split_tdata->out_port[4](s_axis_split_tdata_out_4);
    mp_s_axis_split_tdata->add_mask(4,2560,2048);
  
  mp_s_axis_split_tkeep->out_port[4](s_axis_split_tkeep_out_4);
    mp_s_axis_split_tkeep->add_mask(4,320,256);
  
  mp_s_axis_split_tvalid->out_port[5](s_axis_split_tvalid_out_5);
    mp_s_axis_split_tvalid->add_mask(5,6,5);
  mp_s_axis_concat_tready->in_port[5](s_axis_concat_tready_out_5);
  mp_s_axis_concat_tready->offset_port(5, 5);
  
  mp_s_axis_split_tdata->out_port[5](s_axis_split_tdata_out_5);
    mp_s_axis_split_tdata->add_mask(5,3072,2560);
  
  mp_s_axis_split_tkeep->out_port[5](s_axis_split_tkeep_out_5);
    mp_s_axis_split_tkeep->add_mask(5,384,320);
  
  mp_s_axis_split_tvalid->out_port[6](s_axis_split_tvalid_out_6);
    mp_s_axis_split_tvalid->add_mask(6,7,6);
  mp_s_axis_concat_tready->in_port[6](s_axis_concat_tready_out_6);
  mp_s_axis_concat_tready->offset_port(6, 6);
  
  mp_s_axis_split_tdata->out_port[6](s_axis_split_tdata_out_6);
    mp_s_axis_split_tdata->add_mask(6,3584,3072);
  
  mp_s_axis_split_tkeep->out_port[6](s_axis_split_tkeep_out_6);
    mp_s_axis_split_tkeep->add_mask(6,448,384);
  
  mp_s_axis_split_tvalid->out_port[7](s_axis_split_tvalid_out_7);
    mp_s_axis_split_tvalid->add_mask(7,8,7);
  mp_s_axis_concat_tready->in_port[7](s_axis_concat_tready_out_7);
  mp_s_axis_concat_tready->offset_port(7, 7);
  
  mp_s_axis_split_tdata->out_port[7](s_axis_split_tdata_out_7);
    mp_s_axis_split_tdata->add_mask(7,4096,3584);
  
  mp_s_axis_split_tkeep->out_port[7](s_axis_split_tkeep_out_7);
    mp_s_axis_split_tkeep->add_mask(7,512,448);

  // initialize socket stubs

}

void rfdc_ex_axis_inter_adc_imp_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXIS' transactor parameters
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);

    // S00_AXIS' transactor ports

    mp_s_axis_tvalid_converter_0 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_0");
    mp_s_axis_tvalid_converter_0->vector_in(s_axis_split_tvalid_out_0);
    mp_s_axis_tvalid_converter_0->scalar_out(m_s_axis_tvalid_converter_0_signal);
    mp_S00_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_0_signal);
    mp_s_axis_tready_converter_0 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_0");
    mp_s_axis_tready_converter_0->scalar_in(m_s_axis_tready_converter_0_signal);
    mp_s_axis_tready_converter_0->vector_out(s_axis_concat_tready_out_0);
    mp_S00_AXIS_transactor->TREADY(m_s_axis_tready_converter_0_signal);
    mp_s_axis_tdata_converter_0 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_0");
    mp_s_axis_tdata_converter_0->vector_in(s_axis_split_tdata_out_0);
    mp_s_axis_tdata_converter_0->vector_out(m_s_axis_tdata_converter_0_signal);
    mp_S00_AXIS_transactor->TDATA(m_s_axis_tdata_converter_0_signal);
    mp_s_axis_tkeep_converter_0 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_0");
    mp_s_axis_tkeep_converter_0->vector_in(s_axis_split_tkeep_out_0);
    mp_s_axis_tkeep_converter_0->vector_out(m_s_axis_tkeep_converter_0_signal);
    mp_S00_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_0_signal);
    mp_S00_AXIS_transactor->CLK(aclk);
    mp_S00_AXIS_transactor->RST(aresetn);

    // S00_AXIS' transactor sockets

    mp_impl->S00_AXIS_TARGET_SOCKET->bind(*(mp_S00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'M00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "M00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXIS' transactor parameters
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<64,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);

    // M00_AXIS' transactor ports

    mp_m_axis_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axis_tvalid_converter");
    mp_m_axis_tvalid_converter->scalar_in(m_m_axis_tvalid_converter_signal);
    mp_m_axis_tvalid_converter->vector_out(m_axis_tvalid);
    mp_M00_AXIS_transactor->TVALID(m_m_axis_tvalid_converter_signal);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_M00_AXIS_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_M00_AXIS_transactor->TDATA(m_axis_tdata);
    mp_M00_AXIS_transactor->TKEEP(m_axis_tkeep);
    mp_M00_AXIS_transactor->CLK(aclk);
    mp_M00_AXIS_transactor->RST(aresetn);

    // M00_AXIS' transactor sockets

    mp_impl->M00_AXIS_INITIATOR_SOCKET->bind(*(mp_M00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S01_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S01_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXIS' transactor parameters
    xsc::common_cpp::properties S01_AXIS_transactor_param_props;
    S01_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S01_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S01_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S01_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S01_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S01_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S01_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S01_AXIS_transactor", S01_AXIS_transactor_param_props);

    // S01_AXIS' transactor ports

    mp_s_axis_tvalid_converter_1 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_1");
    mp_s_axis_tvalid_converter_1->vector_in(s_axis_split_tvalid_out_1);
    mp_s_axis_tvalid_converter_1->scalar_out(m_s_axis_tvalid_converter_1_signal);
    mp_S01_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_1_signal);
    mp_s_axis_tready_converter_1 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_1");
    mp_s_axis_tready_converter_1->scalar_in(m_s_axis_tready_converter_1_signal);
    mp_s_axis_tready_converter_1->vector_out(s_axis_concat_tready_out_1);
    mp_S01_AXIS_transactor->TREADY(m_s_axis_tready_converter_1_signal);
    mp_s_axis_tdata_converter_1 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_1");
    mp_s_axis_tdata_converter_1->vector_in(s_axis_split_tdata_out_1);
    mp_s_axis_tdata_converter_1->vector_out(m_s_axis_tdata_converter_1_signal);
    mp_S01_AXIS_transactor->TDATA(m_s_axis_tdata_converter_1_signal);
    mp_s_axis_tkeep_converter_1 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_1");
    mp_s_axis_tkeep_converter_1->vector_in(s_axis_split_tkeep_out_1);
    mp_s_axis_tkeep_converter_1->vector_out(m_s_axis_tkeep_converter_1_signal);
    mp_S01_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_1_signal);
    mp_S01_AXIS_transactor->CLK(aclk);
    mp_S01_AXIS_transactor->RST(aresetn);

    // S01_AXIS' transactor sockets

    mp_impl->S01_AXIS_TARGET_SOCKET->bind(*(mp_S01_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S02_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S02_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXIS' transactor parameters
    xsc::common_cpp::properties S02_AXIS_transactor_param_props;
    S02_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S02_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S02_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S02_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S02_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S02_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S02_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S02_AXIS_transactor", S02_AXIS_transactor_param_props);

    // S02_AXIS' transactor ports

    mp_s_axis_tvalid_converter_2 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_2");
    mp_s_axis_tvalid_converter_2->vector_in(s_axis_split_tvalid_out_2);
    mp_s_axis_tvalid_converter_2->scalar_out(m_s_axis_tvalid_converter_2_signal);
    mp_S02_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_2_signal);
    mp_s_axis_tready_converter_2 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_2");
    mp_s_axis_tready_converter_2->scalar_in(m_s_axis_tready_converter_2_signal);
    mp_s_axis_tready_converter_2->vector_out(s_axis_concat_tready_out_2);
    mp_S02_AXIS_transactor->TREADY(m_s_axis_tready_converter_2_signal);
    mp_s_axis_tdata_converter_2 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_2");
    mp_s_axis_tdata_converter_2->vector_in(s_axis_split_tdata_out_2);
    mp_s_axis_tdata_converter_2->vector_out(m_s_axis_tdata_converter_2_signal);
    mp_S02_AXIS_transactor->TDATA(m_s_axis_tdata_converter_2_signal);
    mp_s_axis_tkeep_converter_2 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_2");
    mp_s_axis_tkeep_converter_2->vector_in(s_axis_split_tkeep_out_2);
    mp_s_axis_tkeep_converter_2->vector_out(m_s_axis_tkeep_converter_2_signal);
    mp_S02_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_2_signal);
    mp_S02_AXIS_transactor->CLK(aclk);
    mp_S02_AXIS_transactor->RST(aresetn);

    // S02_AXIS' transactor sockets

    mp_impl->S02_AXIS_TARGET_SOCKET->bind(*(mp_S02_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S03_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S03_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXIS' transactor parameters
    xsc::common_cpp::properties S03_AXIS_transactor_param_props;
    S03_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S03_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S03_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S03_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S03_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S03_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S03_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S03_AXIS_transactor", S03_AXIS_transactor_param_props);

    // S03_AXIS' transactor ports

    mp_s_axis_tvalid_converter_3 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_3");
    mp_s_axis_tvalid_converter_3->vector_in(s_axis_split_tvalid_out_3);
    mp_s_axis_tvalid_converter_3->scalar_out(m_s_axis_tvalid_converter_3_signal);
    mp_S03_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_3_signal);
    mp_s_axis_tready_converter_3 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_3");
    mp_s_axis_tready_converter_3->scalar_in(m_s_axis_tready_converter_3_signal);
    mp_s_axis_tready_converter_3->vector_out(s_axis_concat_tready_out_3);
    mp_S03_AXIS_transactor->TREADY(m_s_axis_tready_converter_3_signal);
    mp_s_axis_tdata_converter_3 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_3");
    mp_s_axis_tdata_converter_3->vector_in(s_axis_split_tdata_out_3);
    mp_s_axis_tdata_converter_3->vector_out(m_s_axis_tdata_converter_3_signal);
    mp_S03_AXIS_transactor->TDATA(m_s_axis_tdata_converter_3_signal);
    mp_s_axis_tkeep_converter_3 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_3");
    mp_s_axis_tkeep_converter_3->vector_in(s_axis_split_tkeep_out_3);
    mp_s_axis_tkeep_converter_3->vector_out(m_s_axis_tkeep_converter_3_signal);
    mp_S03_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_3_signal);
    mp_S03_AXIS_transactor->CLK(aclk);
    mp_S03_AXIS_transactor->RST(aresetn);

    // S03_AXIS' transactor sockets

    mp_impl->S03_AXIS_TARGET_SOCKET->bind(*(mp_S03_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S04_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S04_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXIS' transactor parameters
    xsc::common_cpp::properties S04_AXIS_transactor_param_props;
    S04_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S04_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S04_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S04_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S04_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S04_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S04_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S04_AXIS_transactor", S04_AXIS_transactor_param_props);

    // S04_AXIS' transactor ports

    mp_s_axis_tvalid_converter_4 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_4");
    mp_s_axis_tvalid_converter_4->vector_in(s_axis_split_tvalid_out_4);
    mp_s_axis_tvalid_converter_4->scalar_out(m_s_axis_tvalid_converter_4_signal);
    mp_S04_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_4_signal);
    mp_s_axis_tready_converter_4 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_4");
    mp_s_axis_tready_converter_4->scalar_in(m_s_axis_tready_converter_4_signal);
    mp_s_axis_tready_converter_4->vector_out(s_axis_concat_tready_out_4);
    mp_S04_AXIS_transactor->TREADY(m_s_axis_tready_converter_4_signal);
    mp_s_axis_tdata_converter_4 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_4");
    mp_s_axis_tdata_converter_4->vector_in(s_axis_split_tdata_out_4);
    mp_s_axis_tdata_converter_4->vector_out(m_s_axis_tdata_converter_4_signal);
    mp_S04_AXIS_transactor->TDATA(m_s_axis_tdata_converter_4_signal);
    mp_s_axis_tkeep_converter_4 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_4");
    mp_s_axis_tkeep_converter_4->vector_in(s_axis_split_tkeep_out_4);
    mp_s_axis_tkeep_converter_4->vector_out(m_s_axis_tkeep_converter_4_signal);
    mp_S04_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_4_signal);
    mp_S04_AXIS_transactor->CLK(aclk);
    mp_S04_AXIS_transactor->RST(aresetn);

    // S04_AXIS' transactor sockets

    mp_impl->S04_AXIS_TARGET_SOCKET->bind(*(mp_S04_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S05_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S05_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S05_AXIS' transactor parameters
    xsc::common_cpp::properties S05_AXIS_transactor_param_props;
    S05_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S05_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S05_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S05_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S05_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S05_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S05_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S05_AXIS_transactor", S05_AXIS_transactor_param_props);

    // S05_AXIS' transactor ports

    mp_s_axis_tvalid_converter_5 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_5");
    mp_s_axis_tvalid_converter_5->vector_in(s_axis_split_tvalid_out_5);
    mp_s_axis_tvalid_converter_5->scalar_out(m_s_axis_tvalid_converter_5_signal);
    mp_S05_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_5_signal);
    mp_s_axis_tready_converter_5 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_5");
    mp_s_axis_tready_converter_5->scalar_in(m_s_axis_tready_converter_5_signal);
    mp_s_axis_tready_converter_5->vector_out(s_axis_concat_tready_out_5);
    mp_S05_AXIS_transactor->TREADY(m_s_axis_tready_converter_5_signal);
    mp_s_axis_tdata_converter_5 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_5");
    mp_s_axis_tdata_converter_5->vector_in(s_axis_split_tdata_out_5);
    mp_s_axis_tdata_converter_5->vector_out(m_s_axis_tdata_converter_5_signal);
    mp_S05_AXIS_transactor->TDATA(m_s_axis_tdata_converter_5_signal);
    mp_s_axis_tkeep_converter_5 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_5");
    mp_s_axis_tkeep_converter_5->vector_in(s_axis_split_tkeep_out_5);
    mp_s_axis_tkeep_converter_5->vector_out(m_s_axis_tkeep_converter_5_signal);
    mp_S05_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_5_signal);
    mp_S05_AXIS_transactor->CLK(aclk);
    mp_S05_AXIS_transactor->RST(aresetn);

    // S05_AXIS' transactor sockets

    mp_impl->S05_AXIS_TARGET_SOCKET->bind(*(mp_S05_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S06_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S06_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S06_AXIS' transactor parameters
    xsc::common_cpp::properties S06_AXIS_transactor_param_props;
    S06_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S06_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S06_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S06_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S06_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S06_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S06_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S06_AXIS_transactor", S06_AXIS_transactor_param_props);

    // S06_AXIS' transactor ports

    mp_s_axis_tvalid_converter_6 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_6");
    mp_s_axis_tvalid_converter_6->vector_in(s_axis_split_tvalid_out_6);
    mp_s_axis_tvalid_converter_6->scalar_out(m_s_axis_tvalid_converter_6_signal);
    mp_S06_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_6_signal);
    mp_s_axis_tready_converter_6 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_6");
    mp_s_axis_tready_converter_6->scalar_in(m_s_axis_tready_converter_6_signal);
    mp_s_axis_tready_converter_6->vector_out(s_axis_concat_tready_out_6);
    mp_S06_AXIS_transactor->TREADY(m_s_axis_tready_converter_6_signal);
    mp_s_axis_tdata_converter_6 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_6");
    mp_s_axis_tdata_converter_6->vector_in(s_axis_split_tdata_out_6);
    mp_s_axis_tdata_converter_6->vector_out(m_s_axis_tdata_converter_6_signal);
    mp_S06_AXIS_transactor->TDATA(m_s_axis_tdata_converter_6_signal);
    mp_s_axis_tkeep_converter_6 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_6");
    mp_s_axis_tkeep_converter_6->vector_in(s_axis_split_tkeep_out_6);
    mp_s_axis_tkeep_converter_6->vector_out(m_s_axis_tkeep_converter_6_signal);
    mp_S06_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_6_signal);
    mp_S06_AXIS_transactor->CLK(aclk);
    mp_S06_AXIS_transactor->RST(aresetn);

    // S06_AXIS' transactor sockets

    mp_impl->S06_AXIS_TARGET_SOCKET->bind(*(mp_S06_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S07_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S07_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S07_AXIS' transactor parameters
    xsc::common_cpp::properties S07_AXIS_transactor_param_props;
    S07_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S07_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S07_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S07_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S07_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S07_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S07_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S07_AXIS_transactor", S07_AXIS_transactor_param_props);

    // S07_AXIS' transactor ports

    mp_s_axis_tvalid_converter_7 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_7");
    mp_s_axis_tvalid_converter_7->vector_in(s_axis_split_tvalid_out_7);
    mp_s_axis_tvalid_converter_7->scalar_out(m_s_axis_tvalid_converter_7_signal);
    mp_S07_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_7_signal);
    mp_s_axis_tready_converter_7 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_7");
    mp_s_axis_tready_converter_7->scalar_in(m_s_axis_tready_converter_7_signal);
    mp_s_axis_tready_converter_7->vector_out(s_axis_concat_tready_out_7);
    mp_S07_AXIS_transactor->TREADY(m_s_axis_tready_converter_7_signal);
    mp_s_axis_tdata_converter_7 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_7");
    mp_s_axis_tdata_converter_7->vector_in(s_axis_split_tdata_out_7);
    mp_s_axis_tdata_converter_7->vector_out(m_s_axis_tdata_converter_7_signal);
    mp_S07_AXIS_transactor->TDATA(m_s_axis_tdata_converter_7_signal);
    mp_s_axis_tkeep_converter_7 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_7");
    mp_s_axis_tkeep_converter_7->vector_in(s_axis_split_tkeep_out_7);
    mp_s_axis_tkeep_converter_7->vector_out(m_s_axis_tkeep_converter_7_signal);
    mp_S07_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_7_signal);
    mp_S07_AXIS_transactor->CLK(aclk);
    mp_S07_AXIS_transactor->RST(aresetn);

    // S07_AXIS' transactor sockets

    mp_impl->S07_AXIS_TARGET_SOCKET->bind(*(mp_S07_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S_AXI_CTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S_AXI_CTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_CTRL' transactor parameters
    xsc::common_cpp::properties S_AXI_CTRL_transactor_param_props;
    S_AXI_CTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_CTRL_transactor_param_props.addLong("FREQ_HZ", "99999001");
    S_AXI_CTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ADDR_WIDTH", "7");
    S_AXI_CTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_CTRL_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_CTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_CTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_CTRL_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_zynq_ps_0_pl_clk0");

    mp_S_AXI_CTRL_transactor = new xtlm::xaximm_pin2xtlm_t<32,7,1,1,1,1,1,1>("S_AXI_CTRL_transactor", S_AXI_CTRL_transactor_param_props);

    // S_AXI_CTRL' transactor ports

    mp_S_AXI_CTRL_transactor->AWVALID(s_axi_ctrl_awvalid);
    mp_S_AXI_CTRL_transactor->AWREADY(s_axi_ctrl_awready);
    mp_S_AXI_CTRL_transactor->AWADDR(s_axi_ctrl_awaddr);
    mp_S_AXI_CTRL_transactor->WVALID(s_axi_ctrl_wvalid);
    mp_S_AXI_CTRL_transactor->WREADY(s_axi_ctrl_wready);
    mp_S_AXI_CTRL_transactor->WDATA(s_axi_ctrl_wdata);
    mp_S_AXI_CTRL_transactor->BVALID(s_axi_ctrl_bvalid);
    mp_S_AXI_CTRL_transactor->BREADY(s_axi_ctrl_bready);
    mp_S_AXI_CTRL_transactor->BRESP(s_axi_ctrl_bresp);
    mp_S_AXI_CTRL_transactor->ARVALID(s_axi_ctrl_arvalid);
    mp_S_AXI_CTRL_transactor->ARREADY(s_axi_ctrl_arready);
    mp_S_AXI_CTRL_transactor->ARADDR(s_axi_ctrl_araddr);
    mp_S_AXI_CTRL_transactor->RVALID(s_axi_ctrl_rvalid);
    mp_S_AXI_CTRL_transactor->RREADY(s_axi_ctrl_rready);
    mp_S_AXI_CTRL_transactor->RDATA(s_axi_ctrl_rdata);
    mp_S_AXI_CTRL_transactor->RRESP(s_axi_ctrl_rresp);
    mp_S_AXI_CTRL_transactor->CLK(s_axi_ctrl_aclk);
    mp_S_AXI_CTRL_transactor->RST(s_axi_ctrl_aresetn);

    // S_AXI_CTRL' transactor sockets

  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
rfdc_ex_axis_inter_adc_imp_xbar_0::rfdc_ex_axis_inter_adc_imp_xbar_0(const sc_core::sc_module_name& nm) : rfdc_ex_axis_inter_adc_imp_xbar_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), m_axis_tvalid("m_axis_tvalid"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tkeep("m_axis_tkeep"), s_axi_ctrl_aclk("s_axi_ctrl_aclk"), s_axi_ctrl_aresetn("s_axi_ctrl_aresetn"), s_axi_ctrl_awvalid("s_axi_ctrl_awvalid"), s_axi_ctrl_awready("s_axi_ctrl_awready"), s_axi_ctrl_awaddr("s_axi_ctrl_awaddr"), s_axi_ctrl_wvalid("s_axi_ctrl_wvalid"), s_axi_ctrl_wready("s_axi_ctrl_wready"), s_axi_ctrl_wdata("s_axi_ctrl_wdata"), s_axi_ctrl_bvalid("s_axi_ctrl_bvalid"), s_axi_ctrl_bready("s_axi_ctrl_bready"), s_axi_ctrl_bresp("s_axi_ctrl_bresp"), s_axi_ctrl_arvalid("s_axi_ctrl_arvalid"), s_axi_ctrl_arready("s_axi_ctrl_arready"), s_axi_ctrl_araddr("s_axi_ctrl_araddr"), s_axi_ctrl_rvalid("s_axi_ctrl_rvalid"), s_axi_ctrl_rready("s_axi_ctrl_rready"), s_axi_ctrl_rdata("s_axi_ctrl_rdata"), s_axi_ctrl_rresp("s_axi_ctrl_rresp")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);
  mp_impl->s_axi_ctrl_aclk(s_axi_ctrl_aclk);
  mp_impl->s_axi_ctrl_aresetn(s_axi_ctrl_aresetn);

  // initialize transactors
  mp_S00_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_0 = NULL;
  mp_s_axis_tready_converter_0 = NULL;
  mp_s_axis_tdata_converter_0 = NULL;
  mp_s_axis_tkeep_converter_0 = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_m_axis_tvalid_converter = NULL;
  mp_m_axis_tready_converter = NULL;
  mp_S01_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_1 = NULL;
  mp_s_axis_tready_converter_1 = NULL;
  mp_s_axis_tdata_converter_1 = NULL;
  mp_s_axis_tkeep_converter_1 = NULL;
  mp_S02_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_2 = NULL;
  mp_s_axis_tready_converter_2 = NULL;
  mp_s_axis_tdata_converter_2 = NULL;
  mp_s_axis_tkeep_converter_2 = NULL;
  mp_S03_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_3 = NULL;
  mp_s_axis_tready_converter_3 = NULL;
  mp_s_axis_tdata_converter_3 = NULL;
  mp_s_axis_tkeep_converter_3 = NULL;
  mp_S04_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_4 = NULL;
  mp_s_axis_tready_converter_4 = NULL;
  mp_s_axis_tdata_converter_4 = NULL;
  mp_s_axis_tkeep_converter_4 = NULL;
  mp_S05_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_5 = NULL;
  mp_s_axis_tready_converter_5 = NULL;
  mp_s_axis_tdata_converter_5 = NULL;
  mp_s_axis_tkeep_converter_5 = NULL;
  mp_S06_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_6 = NULL;
  mp_s_axis_tready_converter_6 = NULL;
  mp_s_axis_tdata_converter_6 = NULL;
  mp_s_axis_tkeep_converter_6 = NULL;
  mp_S07_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_7 = NULL;
  mp_s_axis_tready_converter_7 = NULL;
  mp_s_axis_tdata_converter_7 = NULL;
  mp_s_axis_tkeep_converter_7 = NULL;
  mp_S_AXI_CTRL_transactor = NULL;

  // initialize junctures
  mp_s_axis_concat_tready = NULL;
  mp_s_axis_split_tdata = NULL;
  mp_s_axis_split_tkeep = NULL;
  mp_s_axis_split_tvalid = NULL;
  mp_s_axis_split_tvalid = new xsc::xsc_split<8, 8>("s_axis_split_tvalid");
  mp_s_axis_split_tvalid->in_port(s_axis_tvalid);
  mp_s_axis_split_tvalid->out_port[0](s_axis_split_tvalid_out_0);
    mp_s_axis_split_tvalid->add_mask(0,1,0);
  mp_s_axis_concat_tready = new xsc::xsc_concatenator<8, 8>("s_axis_concat_tready");
  mp_s_axis_concat_tready->in_port[0](s_axis_concat_tready_out_0);
  mp_s_axis_concat_tready->out_port(s_axis_tready);
    mp_s_axis_concat_tready->offset_port(0, 0);
  mp_s_axis_split_tdata = new xsc::xsc_split<4096, 8>("s_axis_split_tdata");
  mp_s_axis_split_tdata->in_port(s_axis_tdata);
  mp_s_axis_split_tdata->out_port[0](s_axis_split_tdata_out_0);
    mp_s_axis_split_tdata->add_mask(0,512,0);
  mp_s_axis_split_tkeep = new xsc::xsc_split<512, 8>("s_axis_split_tkeep");
  mp_s_axis_split_tkeep->in_port(s_axis_tkeep);
  mp_s_axis_split_tkeep->out_port[0](s_axis_split_tkeep_out_0);
    mp_s_axis_split_tkeep->add_mask(0,64,0);
  
  mp_s_axis_split_tvalid->out_port[1](s_axis_split_tvalid_out_1);
    mp_s_axis_split_tvalid->add_mask(1,2,1);
  mp_s_axis_concat_tready->in_port[1](s_axis_concat_tready_out_1);
  mp_s_axis_concat_tready->offset_port(1, 1);
  
  mp_s_axis_split_tdata->out_port[1](s_axis_split_tdata_out_1);
    mp_s_axis_split_tdata->add_mask(1,1024,512);
  
  mp_s_axis_split_tkeep->out_port[1](s_axis_split_tkeep_out_1);
    mp_s_axis_split_tkeep->add_mask(1,128,64);
  
  mp_s_axis_split_tvalid->out_port[2](s_axis_split_tvalid_out_2);
    mp_s_axis_split_tvalid->add_mask(2,3,2);
  mp_s_axis_concat_tready->in_port[2](s_axis_concat_tready_out_2);
  mp_s_axis_concat_tready->offset_port(2, 2);
  
  mp_s_axis_split_tdata->out_port[2](s_axis_split_tdata_out_2);
    mp_s_axis_split_tdata->add_mask(2,1536,1024);
  
  mp_s_axis_split_tkeep->out_port[2](s_axis_split_tkeep_out_2);
    mp_s_axis_split_tkeep->add_mask(2,192,128);
  
  mp_s_axis_split_tvalid->out_port[3](s_axis_split_tvalid_out_3);
    mp_s_axis_split_tvalid->add_mask(3,4,3);
  mp_s_axis_concat_tready->in_port[3](s_axis_concat_tready_out_3);
  mp_s_axis_concat_tready->offset_port(3, 3);
  
  mp_s_axis_split_tdata->out_port[3](s_axis_split_tdata_out_3);
    mp_s_axis_split_tdata->add_mask(3,2048,1536);
  
  mp_s_axis_split_tkeep->out_port[3](s_axis_split_tkeep_out_3);
    mp_s_axis_split_tkeep->add_mask(3,256,192);
  
  mp_s_axis_split_tvalid->out_port[4](s_axis_split_tvalid_out_4);
    mp_s_axis_split_tvalid->add_mask(4,5,4);
  mp_s_axis_concat_tready->in_port[4](s_axis_concat_tready_out_4);
  mp_s_axis_concat_tready->offset_port(4, 4);
  
  mp_s_axis_split_tdata->out_port[4](s_axis_split_tdata_out_4);
    mp_s_axis_split_tdata->add_mask(4,2560,2048);
  
  mp_s_axis_split_tkeep->out_port[4](s_axis_split_tkeep_out_4);
    mp_s_axis_split_tkeep->add_mask(4,320,256);
  
  mp_s_axis_split_tvalid->out_port[5](s_axis_split_tvalid_out_5);
    mp_s_axis_split_tvalid->add_mask(5,6,5);
  mp_s_axis_concat_tready->in_port[5](s_axis_concat_tready_out_5);
  mp_s_axis_concat_tready->offset_port(5, 5);
  
  mp_s_axis_split_tdata->out_port[5](s_axis_split_tdata_out_5);
    mp_s_axis_split_tdata->add_mask(5,3072,2560);
  
  mp_s_axis_split_tkeep->out_port[5](s_axis_split_tkeep_out_5);
    mp_s_axis_split_tkeep->add_mask(5,384,320);
  
  mp_s_axis_split_tvalid->out_port[6](s_axis_split_tvalid_out_6);
    mp_s_axis_split_tvalid->add_mask(6,7,6);
  mp_s_axis_concat_tready->in_port[6](s_axis_concat_tready_out_6);
  mp_s_axis_concat_tready->offset_port(6, 6);
  
  mp_s_axis_split_tdata->out_port[6](s_axis_split_tdata_out_6);
    mp_s_axis_split_tdata->add_mask(6,3584,3072);
  
  mp_s_axis_split_tkeep->out_port[6](s_axis_split_tkeep_out_6);
    mp_s_axis_split_tkeep->add_mask(6,448,384);
  
  mp_s_axis_split_tvalid->out_port[7](s_axis_split_tvalid_out_7);
    mp_s_axis_split_tvalid->add_mask(7,8,7);
  mp_s_axis_concat_tready->in_port[7](s_axis_concat_tready_out_7);
  mp_s_axis_concat_tready->offset_port(7, 7);
  
  mp_s_axis_split_tdata->out_port[7](s_axis_split_tdata_out_7);
    mp_s_axis_split_tdata->add_mask(7,4096,3584);
  
  mp_s_axis_split_tkeep->out_port[7](s_axis_split_tkeep_out_7);
    mp_s_axis_split_tkeep->add_mask(7,512,448);

  // initialize socket stubs

}

void rfdc_ex_axis_inter_adc_imp_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXIS' transactor parameters
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);

    // S00_AXIS' transactor ports

    mp_s_axis_tvalid_converter_0 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_0");
    mp_s_axis_tvalid_converter_0->vector_in(s_axis_split_tvalid_out_0);
    mp_s_axis_tvalid_converter_0->scalar_out(m_s_axis_tvalid_converter_0_signal);
    mp_S00_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_0_signal);
    mp_s_axis_tready_converter_0 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_0");
    mp_s_axis_tready_converter_0->scalar_in(m_s_axis_tready_converter_0_signal);
    mp_s_axis_tready_converter_0->vector_out(s_axis_concat_tready_out_0);
    mp_S00_AXIS_transactor->TREADY(m_s_axis_tready_converter_0_signal);
    mp_s_axis_tdata_converter_0 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_0");
    mp_s_axis_tdata_converter_0->vector_in(s_axis_split_tdata_out_0);
    mp_s_axis_tdata_converter_0->vector_out(m_s_axis_tdata_converter_0_signal);
    mp_S00_AXIS_transactor->TDATA(m_s_axis_tdata_converter_0_signal);
    mp_s_axis_tkeep_converter_0 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_0");
    mp_s_axis_tkeep_converter_0->vector_in(s_axis_split_tkeep_out_0);
    mp_s_axis_tkeep_converter_0->vector_out(m_s_axis_tkeep_converter_0_signal);
    mp_S00_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_0_signal);
    mp_S00_AXIS_transactor->CLK(aclk);
    mp_S00_AXIS_transactor->RST(aresetn);

    // S00_AXIS' transactor sockets

    mp_impl->S00_AXIS_TARGET_SOCKET->bind(*(mp_S00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'M00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "M00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXIS' transactor parameters
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<64,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);

    // M00_AXIS' transactor ports

    mp_m_axis_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axis_tvalid_converter");
    mp_m_axis_tvalid_converter->scalar_in(m_m_axis_tvalid_converter_signal);
    mp_m_axis_tvalid_converter->vector_out(m_axis_tvalid);
    mp_M00_AXIS_transactor->TVALID(m_m_axis_tvalid_converter_signal);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_M00_AXIS_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_M00_AXIS_transactor->TDATA(m_axis_tdata);
    mp_M00_AXIS_transactor->TKEEP(m_axis_tkeep);
    mp_M00_AXIS_transactor->CLK(aclk);
    mp_M00_AXIS_transactor->RST(aresetn);

    // M00_AXIS' transactor sockets

    mp_impl->M00_AXIS_INITIATOR_SOCKET->bind(*(mp_M00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S01_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S01_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXIS' transactor parameters
    xsc::common_cpp::properties S01_AXIS_transactor_param_props;
    S01_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S01_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S01_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S01_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S01_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S01_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S01_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S01_AXIS_transactor", S01_AXIS_transactor_param_props);

    // S01_AXIS' transactor ports

    mp_s_axis_tvalid_converter_1 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_1");
    mp_s_axis_tvalid_converter_1->vector_in(s_axis_split_tvalid_out_1);
    mp_s_axis_tvalid_converter_1->scalar_out(m_s_axis_tvalid_converter_1_signal);
    mp_S01_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_1_signal);
    mp_s_axis_tready_converter_1 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_1");
    mp_s_axis_tready_converter_1->scalar_in(m_s_axis_tready_converter_1_signal);
    mp_s_axis_tready_converter_1->vector_out(s_axis_concat_tready_out_1);
    mp_S01_AXIS_transactor->TREADY(m_s_axis_tready_converter_1_signal);
    mp_s_axis_tdata_converter_1 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_1");
    mp_s_axis_tdata_converter_1->vector_in(s_axis_split_tdata_out_1);
    mp_s_axis_tdata_converter_1->vector_out(m_s_axis_tdata_converter_1_signal);
    mp_S01_AXIS_transactor->TDATA(m_s_axis_tdata_converter_1_signal);
    mp_s_axis_tkeep_converter_1 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_1");
    mp_s_axis_tkeep_converter_1->vector_in(s_axis_split_tkeep_out_1);
    mp_s_axis_tkeep_converter_1->vector_out(m_s_axis_tkeep_converter_1_signal);
    mp_S01_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_1_signal);
    mp_S01_AXIS_transactor->CLK(aclk);
    mp_S01_AXIS_transactor->RST(aresetn);

    // S01_AXIS' transactor sockets

    mp_impl->S01_AXIS_TARGET_SOCKET->bind(*(mp_S01_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S02_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S02_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXIS' transactor parameters
    xsc::common_cpp::properties S02_AXIS_transactor_param_props;
    S02_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S02_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S02_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S02_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S02_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S02_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S02_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S02_AXIS_transactor", S02_AXIS_transactor_param_props);

    // S02_AXIS' transactor ports

    mp_s_axis_tvalid_converter_2 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_2");
    mp_s_axis_tvalid_converter_2->vector_in(s_axis_split_tvalid_out_2);
    mp_s_axis_tvalid_converter_2->scalar_out(m_s_axis_tvalid_converter_2_signal);
    mp_S02_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_2_signal);
    mp_s_axis_tready_converter_2 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_2");
    mp_s_axis_tready_converter_2->scalar_in(m_s_axis_tready_converter_2_signal);
    mp_s_axis_tready_converter_2->vector_out(s_axis_concat_tready_out_2);
    mp_S02_AXIS_transactor->TREADY(m_s_axis_tready_converter_2_signal);
    mp_s_axis_tdata_converter_2 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_2");
    mp_s_axis_tdata_converter_2->vector_in(s_axis_split_tdata_out_2);
    mp_s_axis_tdata_converter_2->vector_out(m_s_axis_tdata_converter_2_signal);
    mp_S02_AXIS_transactor->TDATA(m_s_axis_tdata_converter_2_signal);
    mp_s_axis_tkeep_converter_2 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_2");
    mp_s_axis_tkeep_converter_2->vector_in(s_axis_split_tkeep_out_2);
    mp_s_axis_tkeep_converter_2->vector_out(m_s_axis_tkeep_converter_2_signal);
    mp_S02_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_2_signal);
    mp_S02_AXIS_transactor->CLK(aclk);
    mp_S02_AXIS_transactor->RST(aresetn);

    // S02_AXIS' transactor sockets

    mp_impl->S02_AXIS_TARGET_SOCKET->bind(*(mp_S02_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S03_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S03_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXIS' transactor parameters
    xsc::common_cpp::properties S03_AXIS_transactor_param_props;
    S03_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S03_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S03_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S03_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S03_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S03_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S03_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S03_AXIS_transactor", S03_AXIS_transactor_param_props);

    // S03_AXIS' transactor ports

    mp_s_axis_tvalid_converter_3 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_3");
    mp_s_axis_tvalid_converter_3->vector_in(s_axis_split_tvalid_out_3);
    mp_s_axis_tvalid_converter_3->scalar_out(m_s_axis_tvalid_converter_3_signal);
    mp_S03_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_3_signal);
    mp_s_axis_tready_converter_3 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_3");
    mp_s_axis_tready_converter_3->scalar_in(m_s_axis_tready_converter_3_signal);
    mp_s_axis_tready_converter_3->vector_out(s_axis_concat_tready_out_3);
    mp_S03_AXIS_transactor->TREADY(m_s_axis_tready_converter_3_signal);
    mp_s_axis_tdata_converter_3 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_3");
    mp_s_axis_tdata_converter_3->vector_in(s_axis_split_tdata_out_3);
    mp_s_axis_tdata_converter_3->vector_out(m_s_axis_tdata_converter_3_signal);
    mp_S03_AXIS_transactor->TDATA(m_s_axis_tdata_converter_3_signal);
    mp_s_axis_tkeep_converter_3 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_3");
    mp_s_axis_tkeep_converter_3->vector_in(s_axis_split_tkeep_out_3);
    mp_s_axis_tkeep_converter_3->vector_out(m_s_axis_tkeep_converter_3_signal);
    mp_S03_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_3_signal);
    mp_S03_AXIS_transactor->CLK(aclk);
    mp_S03_AXIS_transactor->RST(aresetn);

    // S03_AXIS' transactor sockets

    mp_impl->S03_AXIS_TARGET_SOCKET->bind(*(mp_S03_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S04_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S04_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXIS' transactor parameters
    xsc::common_cpp::properties S04_AXIS_transactor_param_props;
    S04_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S04_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S04_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S04_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S04_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S04_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S04_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S04_AXIS_transactor", S04_AXIS_transactor_param_props);

    // S04_AXIS' transactor ports

    mp_s_axis_tvalid_converter_4 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_4");
    mp_s_axis_tvalid_converter_4->vector_in(s_axis_split_tvalid_out_4);
    mp_s_axis_tvalid_converter_4->scalar_out(m_s_axis_tvalid_converter_4_signal);
    mp_S04_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_4_signal);
    mp_s_axis_tready_converter_4 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_4");
    mp_s_axis_tready_converter_4->scalar_in(m_s_axis_tready_converter_4_signal);
    mp_s_axis_tready_converter_4->vector_out(s_axis_concat_tready_out_4);
    mp_S04_AXIS_transactor->TREADY(m_s_axis_tready_converter_4_signal);
    mp_s_axis_tdata_converter_4 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_4");
    mp_s_axis_tdata_converter_4->vector_in(s_axis_split_tdata_out_4);
    mp_s_axis_tdata_converter_4->vector_out(m_s_axis_tdata_converter_4_signal);
    mp_S04_AXIS_transactor->TDATA(m_s_axis_tdata_converter_4_signal);
    mp_s_axis_tkeep_converter_4 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_4");
    mp_s_axis_tkeep_converter_4->vector_in(s_axis_split_tkeep_out_4);
    mp_s_axis_tkeep_converter_4->vector_out(m_s_axis_tkeep_converter_4_signal);
    mp_S04_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_4_signal);
    mp_S04_AXIS_transactor->CLK(aclk);
    mp_S04_AXIS_transactor->RST(aresetn);

    // S04_AXIS' transactor sockets

    mp_impl->S04_AXIS_TARGET_SOCKET->bind(*(mp_S04_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S05_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S05_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S05_AXIS' transactor parameters
    xsc::common_cpp::properties S05_AXIS_transactor_param_props;
    S05_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S05_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S05_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S05_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S05_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S05_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S05_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S05_AXIS_transactor", S05_AXIS_transactor_param_props);

    // S05_AXIS' transactor ports

    mp_s_axis_tvalid_converter_5 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_5");
    mp_s_axis_tvalid_converter_5->vector_in(s_axis_split_tvalid_out_5);
    mp_s_axis_tvalid_converter_5->scalar_out(m_s_axis_tvalid_converter_5_signal);
    mp_S05_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_5_signal);
    mp_s_axis_tready_converter_5 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_5");
    mp_s_axis_tready_converter_5->scalar_in(m_s_axis_tready_converter_5_signal);
    mp_s_axis_tready_converter_5->vector_out(s_axis_concat_tready_out_5);
    mp_S05_AXIS_transactor->TREADY(m_s_axis_tready_converter_5_signal);
    mp_s_axis_tdata_converter_5 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_5");
    mp_s_axis_tdata_converter_5->vector_in(s_axis_split_tdata_out_5);
    mp_s_axis_tdata_converter_5->vector_out(m_s_axis_tdata_converter_5_signal);
    mp_S05_AXIS_transactor->TDATA(m_s_axis_tdata_converter_5_signal);
    mp_s_axis_tkeep_converter_5 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_5");
    mp_s_axis_tkeep_converter_5->vector_in(s_axis_split_tkeep_out_5);
    mp_s_axis_tkeep_converter_5->vector_out(m_s_axis_tkeep_converter_5_signal);
    mp_S05_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_5_signal);
    mp_S05_AXIS_transactor->CLK(aclk);
    mp_S05_AXIS_transactor->RST(aresetn);

    // S05_AXIS' transactor sockets

    mp_impl->S05_AXIS_TARGET_SOCKET->bind(*(mp_S05_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S06_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S06_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S06_AXIS' transactor parameters
    xsc::common_cpp::properties S06_AXIS_transactor_param_props;
    S06_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S06_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S06_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S06_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S06_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S06_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S06_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S06_AXIS_transactor", S06_AXIS_transactor_param_props);

    // S06_AXIS' transactor ports

    mp_s_axis_tvalid_converter_6 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_6");
    mp_s_axis_tvalid_converter_6->vector_in(s_axis_split_tvalid_out_6);
    mp_s_axis_tvalid_converter_6->scalar_out(m_s_axis_tvalid_converter_6_signal);
    mp_S06_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_6_signal);
    mp_s_axis_tready_converter_6 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_6");
    mp_s_axis_tready_converter_6->scalar_in(m_s_axis_tready_converter_6_signal);
    mp_s_axis_tready_converter_6->vector_out(s_axis_concat_tready_out_6);
    mp_S06_AXIS_transactor->TREADY(m_s_axis_tready_converter_6_signal);
    mp_s_axis_tdata_converter_6 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_6");
    mp_s_axis_tdata_converter_6->vector_in(s_axis_split_tdata_out_6);
    mp_s_axis_tdata_converter_6->vector_out(m_s_axis_tdata_converter_6_signal);
    mp_S06_AXIS_transactor->TDATA(m_s_axis_tdata_converter_6_signal);
    mp_s_axis_tkeep_converter_6 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_6");
    mp_s_axis_tkeep_converter_6->vector_in(s_axis_split_tkeep_out_6);
    mp_s_axis_tkeep_converter_6->vector_out(m_s_axis_tkeep_converter_6_signal);
    mp_S06_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_6_signal);
    mp_S06_AXIS_transactor->CLK(aclk);
    mp_S06_AXIS_transactor->RST(aresetn);

    // S06_AXIS' transactor sockets

    mp_impl->S06_AXIS_TARGET_SOCKET->bind(*(mp_S06_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S07_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S07_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S07_AXIS' transactor parameters
    xsc::common_cpp::properties S07_AXIS_transactor_param_props;
    S07_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S07_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S07_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S07_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S07_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S07_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S07_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S07_AXIS_transactor", S07_AXIS_transactor_param_props);

    // S07_AXIS' transactor ports

    mp_s_axis_tvalid_converter_7 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_7");
    mp_s_axis_tvalid_converter_7->vector_in(s_axis_split_tvalid_out_7);
    mp_s_axis_tvalid_converter_7->scalar_out(m_s_axis_tvalid_converter_7_signal);
    mp_S07_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_7_signal);
    mp_s_axis_tready_converter_7 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_7");
    mp_s_axis_tready_converter_7->scalar_in(m_s_axis_tready_converter_7_signal);
    mp_s_axis_tready_converter_7->vector_out(s_axis_concat_tready_out_7);
    mp_S07_AXIS_transactor->TREADY(m_s_axis_tready_converter_7_signal);
    mp_s_axis_tdata_converter_7 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_7");
    mp_s_axis_tdata_converter_7->vector_in(s_axis_split_tdata_out_7);
    mp_s_axis_tdata_converter_7->vector_out(m_s_axis_tdata_converter_7_signal);
    mp_S07_AXIS_transactor->TDATA(m_s_axis_tdata_converter_7_signal);
    mp_s_axis_tkeep_converter_7 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_7");
    mp_s_axis_tkeep_converter_7->vector_in(s_axis_split_tkeep_out_7);
    mp_s_axis_tkeep_converter_7->vector_out(m_s_axis_tkeep_converter_7_signal);
    mp_S07_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_7_signal);
    mp_S07_AXIS_transactor->CLK(aclk);
    mp_S07_AXIS_transactor->RST(aresetn);

    // S07_AXIS' transactor sockets

    mp_impl->S07_AXIS_TARGET_SOCKET->bind(*(mp_S07_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S_AXI_CTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S_AXI_CTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_CTRL' transactor parameters
    xsc::common_cpp::properties S_AXI_CTRL_transactor_param_props;
    S_AXI_CTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_CTRL_transactor_param_props.addLong("FREQ_HZ", "99999001");
    S_AXI_CTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ADDR_WIDTH", "7");
    S_AXI_CTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_CTRL_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_CTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_CTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_CTRL_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_zynq_ps_0_pl_clk0");

    mp_S_AXI_CTRL_transactor = new xtlm::xaximm_pin2xtlm_t<32,7,1,1,1,1,1,1>("S_AXI_CTRL_transactor", S_AXI_CTRL_transactor_param_props);

    // S_AXI_CTRL' transactor ports

    mp_S_AXI_CTRL_transactor->AWVALID(s_axi_ctrl_awvalid);
    mp_S_AXI_CTRL_transactor->AWREADY(s_axi_ctrl_awready);
    mp_S_AXI_CTRL_transactor->AWADDR(s_axi_ctrl_awaddr);
    mp_S_AXI_CTRL_transactor->WVALID(s_axi_ctrl_wvalid);
    mp_S_AXI_CTRL_transactor->WREADY(s_axi_ctrl_wready);
    mp_S_AXI_CTRL_transactor->WDATA(s_axi_ctrl_wdata);
    mp_S_AXI_CTRL_transactor->BVALID(s_axi_ctrl_bvalid);
    mp_S_AXI_CTRL_transactor->BREADY(s_axi_ctrl_bready);
    mp_S_AXI_CTRL_transactor->BRESP(s_axi_ctrl_bresp);
    mp_S_AXI_CTRL_transactor->ARVALID(s_axi_ctrl_arvalid);
    mp_S_AXI_CTRL_transactor->ARREADY(s_axi_ctrl_arready);
    mp_S_AXI_CTRL_transactor->ARADDR(s_axi_ctrl_araddr);
    mp_S_AXI_CTRL_transactor->RVALID(s_axi_ctrl_rvalid);
    mp_S_AXI_CTRL_transactor->RREADY(s_axi_ctrl_rready);
    mp_S_AXI_CTRL_transactor->RDATA(s_axi_ctrl_rdata);
    mp_S_AXI_CTRL_transactor->RRESP(s_axi_ctrl_rresp);
    mp_S_AXI_CTRL_transactor->CLK(s_axi_ctrl_aclk);
    mp_S_AXI_CTRL_transactor->RST(s_axi_ctrl_aresetn);

    // S_AXI_CTRL' transactor sockets

  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
rfdc_ex_axis_inter_adc_imp_xbar_0::rfdc_ex_axis_inter_adc_imp_xbar_0(const sc_core::sc_module_name& nm) : rfdc_ex_axis_inter_adc_imp_xbar_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), m_axis_tvalid("m_axis_tvalid"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tkeep("m_axis_tkeep"), s_axi_ctrl_aclk("s_axi_ctrl_aclk"), s_axi_ctrl_aresetn("s_axi_ctrl_aresetn"), s_axi_ctrl_awvalid("s_axi_ctrl_awvalid"), s_axi_ctrl_awready("s_axi_ctrl_awready"), s_axi_ctrl_awaddr("s_axi_ctrl_awaddr"), s_axi_ctrl_wvalid("s_axi_ctrl_wvalid"), s_axi_ctrl_wready("s_axi_ctrl_wready"), s_axi_ctrl_wdata("s_axi_ctrl_wdata"), s_axi_ctrl_bvalid("s_axi_ctrl_bvalid"), s_axi_ctrl_bready("s_axi_ctrl_bready"), s_axi_ctrl_bresp("s_axi_ctrl_bresp"), s_axi_ctrl_arvalid("s_axi_ctrl_arvalid"), s_axi_ctrl_arready("s_axi_ctrl_arready"), s_axi_ctrl_araddr("s_axi_ctrl_araddr"), s_axi_ctrl_rvalid("s_axi_ctrl_rvalid"), s_axi_ctrl_rready("s_axi_ctrl_rready"), s_axi_ctrl_rdata("s_axi_ctrl_rdata"), s_axi_ctrl_rresp("s_axi_ctrl_rresp")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);
  mp_impl->s_axi_ctrl_aclk(s_axi_ctrl_aclk);
  mp_impl->s_axi_ctrl_aresetn(s_axi_ctrl_aresetn);

  // initialize transactors
  mp_S00_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_0 = NULL;
  mp_s_axis_tready_converter_0 = NULL;
  mp_s_axis_tdata_converter_0 = NULL;
  mp_s_axis_tkeep_converter_0 = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_m_axis_tvalid_converter = NULL;
  mp_m_axis_tready_converter = NULL;
  mp_S01_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_1 = NULL;
  mp_s_axis_tready_converter_1 = NULL;
  mp_s_axis_tdata_converter_1 = NULL;
  mp_s_axis_tkeep_converter_1 = NULL;
  mp_S02_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_2 = NULL;
  mp_s_axis_tready_converter_2 = NULL;
  mp_s_axis_tdata_converter_2 = NULL;
  mp_s_axis_tkeep_converter_2 = NULL;
  mp_S03_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_3 = NULL;
  mp_s_axis_tready_converter_3 = NULL;
  mp_s_axis_tdata_converter_3 = NULL;
  mp_s_axis_tkeep_converter_3 = NULL;
  mp_S04_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_4 = NULL;
  mp_s_axis_tready_converter_4 = NULL;
  mp_s_axis_tdata_converter_4 = NULL;
  mp_s_axis_tkeep_converter_4 = NULL;
  mp_S05_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_5 = NULL;
  mp_s_axis_tready_converter_5 = NULL;
  mp_s_axis_tdata_converter_5 = NULL;
  mp_s_axis_tkeep_converter_5 = NULL;
  mp_S06_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_6 = NULL;
  mp_s_axis_tready_converter_6 = NULL;
  mp_s_axis_tdata_converter_6 = NULL;
  mp_s_axis_tkeep_converter_6 = NULL;
  mp_S07_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_7 = NULL;
  mp_s_axis_tready_converter_7 = NULL;
  mp_s_axis_tdata_converter_7 = NULL;
  mp_s_axis_tkeep_converter_7 = NULL;
  mp_S_AXI_CTRL_transactor = NULL;

  // initialize port junctures
  mp_s_axis_concat_tready = NULL;
  mp_s_axis_split_tdata = NULL;
  mp_s_axis_split_tkeep = NULL;
  mp_s_axis_split_tvalid = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXIS_transactor
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_0 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_0");
  mp_s_axis_split_tvalid = new xsc::xsc_split<8, 8>("s_axis_split_tvalid");
  mp_s_axis_split_tvalid->in_port(s_axis_tvalid);
  mp_s_axis_split_tvalid->out_port[0](s_axis_split_tvalid_out_0);
    mp_s_axis_split_tvalid->add_mask(0,1,0);
  mp_s_axis_tvalid_converter_0->vector_in(s_axis_split_tvalid_out_0);
  mp_s_axis_tvalid_converter_0->scalar_out(m_s_axis_tvalid_converter_0_signal);
  mp_S00_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_0_signal);
  mp_s_axis_tready_converter_0 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_0");
  mp_s_axis_concat_tready = new xsc::xsc_concatenator<8, 8>("s_axis_concat_tready");
  mp_s_axis_concat_tready->in_port[0](s_axis_concat_tready_out_0);
  mp_s_axis_concat_tready->out_port(s_axis_tready);
    mp_s_axis_concat_tready->offset_port(0, 0);
  mp_s_axis_tready_converter_0->scalar_in(m_s_axis_tready_converter_0_signal);
  mp_s_axis_tready_converter_0->vector_out(s_axis_concat_tready_out_0);
  mp_S00_AXIS_transactor->TREADY(m_s_axis_tready_converter_0_signal);
  mp_s_axis_tdata_converter_0 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_0");
  mp_s_axis_split_tdata = new xsc::xsc_split<4096, 8>("s_axis_split_tdata");
  mp_s_axis_split_tdata->in_port(s_axis_tdata);
  mp_s_axis_split_tdata->out_port[0](s_axis_split_tdata_out_0);
    mp_s_axis_split_tdata->add_mask(0,512,0);
  mp_s_axis_tdata_converter_0->vector_in(s_axis_split_tdata_out_0);
  mp_s_axis_tdata_converter_0->vector_out(m_s_axis_tdata_converter_0_signal);
  mp_S00_AXIS_transactor->TDATA(m_s_axis_tdata_converter_0_signal);
  mp_s_axis_tkeep_converter_0 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_0");
  mp_s_axis_split_tkeep = new xsc::xsc_split<512, 8>("s_axis_split_tkeep");
  mp_s_axis_split_tkeep->in_port(s_axis_tkeep);
  mp_s_axis_split_tkeep->out_port[0](s_axis_split_tkeep_out_0);
    mp_s_axis_split_tkeep->add_mask(0,64,0);
  mp_s_axis_tkeep_converter_0->vector_in(s_axis_split_tkeep_out_0);
  mp_s_axis_tkeep_converter_0->vector_out(m_s_axis_tkeep_converter_0_signal);
  mp_S00_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_0_signal);
  mp_S00_AXIS_transactor->CLK(aclk);
  mp_S00_AXIS_transactor->RST(aresetn);
  // configure M00_AXIS_transactor
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<64,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);
  mp_m_axis_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axis_tvalid_converter");
  mp_m_axis_tvalid_converter->scalar_in(m_m_axis_tvalid_converter_signal);
  mp_m_axis_tvalid_converter->vector_out(m_axis_tvalid);
  mp_M00_AXIS_transactor->TVALID(m_m_axis_tvalid_converter_signal);
  mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
  mp_m_axis_tready_converter->vector_in(m_axis_tready);
  mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
  mp_M00_AXIS_transactor->TREADY(m_m_axis_tready_converter_signal);
  mp_M00_AXIS_transactor->TDATA(m_axis_tdata);
  mp_M00_AXIS_transactor->TKEEP(m_axis_tkeep);
  mp_M00_AXIS_transactor->CLK(aclk);
  mp_M00_AXIS_transactor->RST(aresetn);
  // configure S01_AXIS_transactor
    xsc::common_cpp::properties S01_AXIS_transactor_param_props;
    S01_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S01_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S01_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S01_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S01_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S01_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S01_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S01_AXIS_transactor", S01_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_1 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_1");
  
  mp_s_axis_split_tvalid->out_port[1](s_axis_split_tvalid_out_1);
    mp_s_axis_split_tvalid->add_mask(1,2,1);
  mp_s_axis_tvalid_converter_1->vector_in(s_axis_split_tvalid_out_1);
  mp_s_axis_tvalid_converter_1->scalar_out(m_s_axis_tvalid_converter_1_signal);
  mp_S01_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_1_signal);
  mp_s_axis_tready_converter_1 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_1");
  mp_s_axis_concat_tready->in_port[1](s_axis_concat_tready_out_1);
  mp_s_axis_concat_tready->offset_port(1, 1);
  mp_s_axis_tready_converter_1->scalar_in(m_s_axis_tready_converter_1_signal);
  mp_s_axis_tready_converter_1->vector_out(s_axis_concat_tready_out_1);
  mp_S01_AXIS_transactor->TREADY(m_s_axis_tready_converter_1_signal);
  mp_s_axis_tdata_converter_1 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_1");
  
  mp_s_axis_split_tdata->out_port[1](s_axis_split_tdata_out_1);
    mp_s_axis_split_tdata->add_mask(1,1024,512);
  mp_s_axis_tdata_converter_1->vector_in(s_axis_split_tdata_out_1);
  mp_s_axis_tdata_converter_1->vector_out(m_s_axis_tdata_converter_1_signal);
  mp_S01_AXIS_transactor->TDATA(m_s_axis_tdata_converter_1_signal);
  mp_s_axis_tkeep_converter_1 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_1");
  
  mp_s_axis_split_tkeep->out_port[1](s_axis_split_tkeep_out_1);
    mp_s_axis_split_tkeep->add_mask(1,128,64);
  mp_s_axis_tkeep_converter_1->vector_in(s_axis_split_tkeep_out_1);
  mp_s_axis_tkeep_converter_1->vector_out(m_s_axis_tkeep_converter_1_signal);
  mp_S01_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_1_signal);
  mp_S01_AXIS_transactor->CLK(aclk);
  mp_S01_AXIS_transactor->RST(aresetn);
  // configure S02_AXIS_transactor
    xsc::common_cpp::properties S02_AXIS_transactor_param_props;
    S02_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S02_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S02_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S02_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S02_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S02_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S02_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S02_AXIS_transactor", S02_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_2 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_2");
  
  mp_s_axis_split_tvalid->out_port[2](s_axis_split_tvalid_out_2);
    mp_s_axis_split_tvalid->add_mask(2,3,2);
  mp_s_axis_tvalid_converter_2->vector_in(s_axis_split_tvalid_out_2);
  mp_s_axis_tvalid_converter_2->scalar_out(m_s_axis_tvalid_converter_2_signal);
  mp_S02_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_2_signal);
  mp_s_axis_tready_converter_2 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_2");
  mp_s_axis_concat_tready->in_port[2](s_axis_concat_tready_out_2);
  mp_s_axis_concat_tready->offset_port(2, 2);
  mp_s_axis_tready_converter_2->scalar_in(m_s_axis_tready_converter_2_signal);
  mp_s_axis_tready_converter_2->vector_out(s_axis_concat_tready_out_2);
  mp_S02_AXIS_transactor->TREADY(m_s_axis_tready_converter_2_signal);
  mp_s_axis_tdata_converter_2 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_2");
  
  mp_s_axis_split_tdata->out_port[2](s_axis_split_tdata_out_2);
    mp_s_axis_split_tdata->add_mask(2,1536,1024);
  mp_s_axis_tdata_converter_2->vector_in(s_axis_split_tdata_out_2);
  mp_s_axis_tdata_converter_2->vector_out(m_s_axis_tdata_converter_2_signal);
  mp_S02_AXIS_transactor->TDATA(m_s_axis_tdata_converter_2_signal);
  mp_s_axis_tkeep_converter_2 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_2");
  
  mp_s_axis_split_tkeep->out_port[2](s_axis_split_tkeep_out_2);
    mp_s_axis_split_tkeep->add_mask(2,192,128);
  mp_s_axis_tkeep_converter_2->vector_in(s_axis_split_tkeep_out_2);
  mp_s_axis_tkeep_converter_2->vector_out(m_s_axis_tkeep_converter_2_signal);
  mp_S02_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_2_signal);
  mp_S02_AXIS_transactor->CLK(aclk);
  mp_S02_AXIS_transactor->RST(aresetn);
  // configure S03_AXIS_transactor
    xsc::common_cpp::properties S03_AXIS_transactor_param_props;
    S03_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S03_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S03_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S03_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S03_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S03_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S03_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S03_AXIS_transactor", S03_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_3 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_3");
  
  mp_s_axis_split_tvalid->out_port[3](s_axis_split_tvalid_out_3);
    mp_s_axis_split_tvalid->add_mask(3,4,3);
  mp_s_axis_tvalid_converter_3->vector_in(s_axis_split_tvalid_out_3);
  mp_s_axis_tvalid_converter_3->scalar_out(m_s_axis_tvalid_converter_3_signal);
  mp_S03_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_3_signal);
  mp_s_axis_tready_converter_3 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_3");
  mp_s_axis_concat_tready->in_port[3](s_axis_concat_tready_out_3);
  mp_s_axis_concat_tready->offset_port(3, 3);
  mp_s_axis_tready_converter_3->scalar_in(m_s_axis_tready_converter_3_signal);
  mp_s_axis_tready_converter_3->vector_out(s_axis_concat_tready_out_3);
  mp_S03_AXIS_transactor->TREADY(m_s_axis_tready_converter_3_signal);
  mp_s_axis_tdata_converter_3 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_3");
  
  mp_s_axis_split_tdata->out_port[3](s_axis_split_tdata_out_3);
    mp_s_axis_split_tdata->add_mask(3,2048,1536);
  mp_s_axis_tdata_converter_3->vector_in(s_axis_split_tdata_out_3);
  mp_s_axis_tdata_converter_3->vector_out(m_s_axis_tdata_converter_3_signal);
  mp_S03_AXIS_transactor->TDATA(m_s_axis_tdata_converter_3_signal);
  mp_s_axis_tkeep_converter_3 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_3");
  
  mp_s_axis_split_tkeep->out_port[3](s_axis_split_tkeep_out_3);
    mp_s_axis_split_tkeep->add_mask(3,256,192);
  mp_s_axis_tkeep_converter_3->vector_in(s_axis_split_tkeep_out_3);
  mp_s_axis_tkeep_converter_3->vector_out(m_s_axis_tkeep_converter_3_signal);
  mp_S03_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_3_signal);
  mp_S03_AXIS_transactor->CLK(aclk);
  mp_S03_AXIS_transactor->RST(aresetn);
  // configure S04_AXIS_transactor
    xsc::common_cpp::properties S04_AXIS_transactor_param_props;
    S04_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S04_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S04_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S04_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S04_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S04_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S04_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S04_AXIS_transactor", S04_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_4 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_4");
  
  mp_s_axis_split_tvalid->out_port[4](s_axis_split_tvalid_out_4);
    mp_s_axis_split_tvalid->add_mask(4,5,4);
  mp_s_axis_tvalid_converter_4->vector_in(s_axis_split_tvalid_out_4);
  mp_s_axis_tvalid_converter_4->scalar_out(m_s_axis_tvalid_converter_4_signal);
  mp_S04_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_4_signal);
  mp_s_axis_tready_converter_4 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_4");
  mp_s_axis_concat_tready->in_port[4](s_axis_concat_tready_out_4);
  mp_s_axis_concat_tready->offset_port(4, 4);
  mp_s_axis_tready_converter_4->scalar_in(m_s_axis_tready_converter_4_signal);
  mp_s_axis_tready_converter_4->vector_out(s_axis_concat_tready_out_4);
  mp_S04_AXIS_transactor->TREADY(m_s_axis_tready_converter_4_signal);
  mp_s_axis_tdata_converter_4 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_4");
  
  mp_s_axis_split_tdata->out_port[4](s_axis_split_tdata_out_4);
    mp_s_axis_split_tdata->add_mask(4,2560,2048);
  mp_s_axis_tdata_converter_4->vector_in(s_axis_split_tdata_out_4);
  mp_s_axis_tdata_converter_4->vector_out(m_s_axis_tdata_converter_4_signal);
  mp_S04_AXIS_transactor->TDATA(m_s_axis_tdata_converter_4_signal);
  mp_s_axis_tkeep_converter_4 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_4");
  
  mp_s_axis_split_tkeep->out_port[4](s_axis_split_tkeep_out_4);
    mp_s_axis_split_tkeep->add_mask(4,320,256);
  mp_s_axis_tkeep_converter_4->vector_in(s_axis_split_tkeep_out_4);
  mp_s_axis_tkeep_converter_4->vector_out(m_s_axis_tkeep_converter_4_signal);
  mp_S04_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_4_signal);
  mp_S04_AXIS_transactor->CLK(aclk);
  mp_S04_AXIS_transactor->RST(aresetn);
  // configure S05_AXIS_transactor
    xsc::common_cpp::properties S05_AXIS_transactor_param_props;
    S05_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S05_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S05_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S05_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S05_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S05_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S05_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S05_AXIS_transactor", S05_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_5 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_5");
  
  mp_s_axis_split_tvalid->out_port[5](s_axis_split_tvalid_out_5);
    mp_s_axis_split_tvalid->add_mask(5,6,5);
  mp_s_axis_tvalid_converter_5->vector_in(s_axis_split_tvalid_out_5);
  mp_s_axis_tvalid_converter_5->scalar_out(m_s_axis_tvalid_converter_5_signal);
  mp_S05_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_5_signal);
  mp_s_axis_tready_converter_5 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_5");
  mp_s_axis_concat_tready->in_port[5](s_axis_concat_tready_out_5);
  mp_s_axis_concat_tready->offset_port(5, 5);
  mp_s_axis_tready_converter_5->scalar_in(m_s_axis_tready_converter_5_signal);
  mp_s_axis_tready_converter_5->vector_out(s_axis_concat_tready_out_5);
  mp_S05_AXIS_transactor->TREADY(m_s_axis_tready_converter_5_signal);
  mp_s_axis_tdata_converter_5 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_5");
  
  mp_s_axis_split_tdata->out_port[5](s_axis_split_tdata_out_5);
    mp_s_axis_split_tdata->add_mask(5,3072,2560);
  mp_s_axis_tdata_converter_5->vector_in(s_axis_split_tdata_out_5);
  mp_s_axis_tdata_converter_5->vector_out(m_s_axis_tdata_converter_5_signal);
  mp_S05_AXIS_transactor->TDATA(m_s_axis_tdata_converter_5_signal);
  mp_s_axis_tkeep_converter_5 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_5");
  
  mp_s_axis_split_tkeep->out_port[5](s_axis_split_tkeep_out_5);
    mp_s_axis_split_tkeep->add_mask(5,384,320);
  mp_s_axis_tkeep_converter_5->vector_in(s_axis_split_tkeep_out_5);
  mp_s_axis_tkeep_converter_5->vector_out(m_s_axis_tkeep_converter_5_signal);
  mp_S05_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_5_signal);
  mp_S05_AXIS_transactor->CLK(aclk);
  mp_S05_AXIS_transactor->RST(aresetn);
  // configure S06_AXIS_transactor
    xsc::common_cpp::properties S06_AXIS_transactor_param_props;
    S06_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S06_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S06_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S06_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S06_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S06_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S06_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S06_AXIS_transactor", S06_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_6 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_6");
  
  mp_s_axis_split_tvalid->out_port[6](s_axis_split_tvalid_out_6);
    mp_s_axis_split_tvalid->add_mask(6,7,6);
  mp_s_axis_tvalid_converter_6->vector_in(s_axis_split_tvalid_out_6);
  mp_s_axis_tvalid_converter_6->scalar_out(m_s_axis_tvalid_converter_6_signal);
  mp_S06_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_6_signal);
  mp_s_axis_tready_converter_6 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_6");
  mp_s_axis_concat_tready->in_port[6](s_axis_concat_tready_out_6);
  mp_s_axis_concat_tready->offset_port(6, 6);
  mp_s_axis_tready_converter_6->scalar_in(m_s_axis_tready_converter_6_signal);
  mp_s_axis_tready_converter_6->vector_out(s_axis_concat_tready_out_6);
  mp_S06_AXIS_transactor->TREADY(m_s_axis_tready_converter_6_signal);
  mp_s_axis_tdata_converter_6 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_6");
  
  mp_s_axis_split_tdata->out_port[6](s_axis_split_tdata_out_6);
    mp_s_axis_split_tdata->add_mask(6,3584,3072);
  mp_s_axis_tdata_converter_6->vector_in(s_axis_split_tdata_out_6);
  mp_s_axis_tdata_converter_6->vector_out(m_s_axis_tdata_converter_6_signal);
  mp_S06_AXIS_transactor->TDATA(m_s_axis_tdata_converter_6_signal);
  mp_s_axis_tkeep_converter_6 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_6");
  
  mp_s_axis_split_tkeep->out_port[6](s_axis_split_tkeep_out_6);
    mp_s_axis_split_tkeep->add_mask(6,448,384);
  mp_s_axis_tkeep_converter_6->vector_in(s_axis_split_tkeep_out_6);
  mp_s_axis_tkeep_converter_6->vector_out(m_s_axis_tkeep_converter_6_signal);
  mp_S06_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_6_signal);
  mp_S06_AXIS_transactor->CLK(aclk);
  mp_S06_AXIS_transactor->RST(aresetn);
  // configure S07_AXIS_transactor
    xsc::common_cpp::properties S07_AXIS_transactor_param_props;
    S07_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S07_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S07_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S07_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S07_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S07_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S07_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S07_AXIS_transactor", S07_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_7 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_7");
  
  mp_s_axis_split_tvalid->out_port[7](s_axis_split_tvalid_out_7);
    mp_s_axis_split_tvalid->add_mask(7,8,7);
  mp_s_axis_tvalid_converter_7->vector_in(s_axis_split_tvalid_out_7);
  mp_s_axis_tvalid_converter_7->scalar_out(m_s_axis_tvalid_converter_7_signal);
  mp_S07_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_7_signal);
  mp_s_axis_tready_converter_7 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_7");
  mp_s_axis_concat_tready->in_port[7](s_axis_concat_tready_out_7);
  mp_s_axis_concat_tready->offset_port(7, 7);
  mp_s_axis_tready_converter_7->scalar_in(m_s_axis_tready_converter_7_signal);
  mp_s_axis_tready_converter_7->vector_out(s_axis_concat_tready_out_7);
  mp_S07_AXIS_transactor->TREADY(m_s_axis_tready_converter_7_signal);
  mp_s_axis_tdata_converter_7 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_7");
  
  mp_s_axis_split_tdata->out_port[7](s_axis_split_tdata_out_7);
    mp_s_axis_split_tdata->add_mask(7,4096,3584);
  mp_s_axis_tdata_converter_7->vector_in(s_axis_split_tdata_out_7);
  mp_s_axis_tdata_converter_7->vector_out(m_s_axis_tdata_converter_7_signal);
  mp_S07_AXIS_transactor->TDATA(m_s_axis_tdata_converter_7_signal);
  mp_s_axis_tkeep_converter_7 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_7");
  
  mp_s_axis_split_tkeep->out_port[7](s_axis_split_tkeep_out_7);
    mp_s_axis_split_tkeep->add_mask(7,512,448);
  mp_s_axis_tkeep_converter_7->vector_in(s_axis_split_tkeep_out_7);
  mp_s_axis_tkeep_converter_7->vector_out(m_s_axis_tkeep_converter_7_signal);
  mp_S07_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_7_signal);
  mp_S07_AXIS_transactor->CLK(aclk);
  mp_S07_AXIS_transactor->RST(aresetn);
  // configure S_AXI_CTRL_transactor
    xsc::common_cpp::properties S_AXI_CTRL_transactor_param_props;
    S_AXI_CTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_CTRL_transactor_param_props.addLong("FREQ_HZ", "99999001");
    S_AXI_CTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ADDR_WIDTH", "7");
    S_AXI_CTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_CTRL_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_CTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_CTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_CTRL_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_zynq_ps_0_pl_clk0");

    mp_S_AXI_CTRL_transactor = new xtlm::xaximm_pin2xtlm_t<32,7,1,1,1,1,1,1>("S_AXI_CTRL_transactor", S_AXI_CTRL_transactor_param_props);
  mp_S_AXI_CTRL_transactor->AWVALID(s_axi_ctrl_awvalid);
  mp_S_AXI_CTRL_transactor->AWREADY(s_axi_ctrl_awready);
  mp_S_AXI_CTRL_transactor->AWADDR(s_axi_ctrl_awaddr);
  mp_S_AXI_CTRL_transactor->WVALID(s_axi_ctrl_wvalid);
  mp_S_AXI_CTRL_transactor->WREADY(s_axi_ctrl_wready);
  mp_S_AXI_CTRL_transactor->WDATA(s_axi_ctrl_wdata);
  mp_S_AXI_CTRL_transactor->BVALID(s_axi_ctrl_bvalid);
  mp_S_AXI_CTRL_transactor->BREADY(s_axi_ctrl_bready);
  mp_S_AXI_CTRL_transactor->BRESP(s_axi_ctrl_bresp);
  mp_S_AXI_CTRL_transactor->ARVALID(s_axi_ctrl_arvalid);
  mp_S_AXI_CTRL_transactor->ARREADY(s_axi_ctrl_arready);
  mp_S_AXI_CTRL_transactor->ARADDR(s_axi_ctrl_araddr);
  mp_S_AXI_CTRL_transactor->RVALID(s_axi_ctrl_rvalid);
  mp_S_AXI_CTRL_transactor->RREADY(s_axi_ctrl_rready);
  mp_S_AXI_CTRL_transactor->RDATA(s_axi_ctrl_rdata);
  mp_S_AXI_CTRL_transactor->RRESP(s_axi_ctrl_rresp);
  mp_S_AXI_CTRL_transactor->CLK(s_axi_ctrl_aclk);
  mp_S_AXI_CTRL_transactor->RST(s_axi_ctrl_aresetn);

  // initialize transactors stubs
  S00_AXIS_transactor_target_socket_stub = nullptr;
  M00_AXIS_transactor_initiator_socket_stub = nullptr;
  S01_AXIS_transactor_target_socket_stub = nullptr;
  S02_AXIS_transactor_target_socket_stub = nullptr;
  S03_AXIS_transactor_target_socket_stub = nullptr;
  S04_AXIS_transactor_target_socket_stub = nullptr;
  S05_AXIS_transactor_target_socket_stub = nullptr;
  S06_AXIS_transactor_target_socket_stub = nullptr;
  S07_AXIS_transactor_target_socket_stub = nullptr;
  S_AXI_CTRL_transactor_target_wr_socket_stub = nullptr;
  S_AXI_CTRL_transactor_target_rd_socket_stub = nullptr;

}

void rfdc_ex_axis_inter_adc_imp_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S00_AXIS_TARGET_SOCKET->bind(*(mp_S00_AXIS_transactor->socket));
  
  }
  else
  {
    S00_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S00_AXIS_transactor_target_socket_stub->bind(*(mp_S00_AXIS_transactor->socket));
    mp_S00_AXIS_transactor->disable_transactor();
  }

  // configure 'M00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "M00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->M00_AXIS_INITIATOR_SOCKET->bind(*(mp_M00_AXIS_transactor->socket));
  
  }
  else
  {
    M00_AXIS_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    M00_AXIS_transactor_initiator_socket_stub->bind(*(mp_M00_AXIS_transactor->socket));
    mp_M00_AXIS_transactor->disable_transactor();
  }

  // configure 'S01_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S01_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S01_AXIS_TARGET_SOCKET->bind(*(mp_S01_AXIS_transactor->socket));
  
  }
  else
  {
    S01_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S01_AXIS_transactor_target_socket_stub->bind(*(mp_S01_AXIS_transactor->socket));
    mp_S01_AXIS_transactor->disable_transactor();
  }

  // configure 'S02_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S02_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S02_AXIS_TARGET_SOCKET->bind(*(mp_S02_AXIS_transactor->socket));
  
  }
  else
  {
    S02_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S02_AXIS_transactor_target_socket_stub->bind(*(mp_S02_AXIS_transactor->socket));
    mp_S02_AXIS_transactor->disable_transactor();
  }

  // configure 'S03_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S03_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S03_AXIS_TARGET_SOCKET->bind(*(mp_S03_AXIS_transactor->socket));
  
  }
  else
  {
    S03_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S03_AXIS_transactor_target_socket_stub->bind(*(mp_S03_AXIS_transactor->socket));
    mp_S03_AXIS_transactor->disable_transactor();
  }

  // configure 'S04_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S04_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S04_AXIS_TARGET_SOCKET->bind(*(mp_S04_AXIS_transactor->socket));
  
  }
  else
  {
    S04_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S04_AXIS_transactor_target_socket_stub->bind(*(mp_S04_AXIS_transactor->socket));
    mp_S04_AXIS_transactor->disable_transactor();
  }

  // configure 'S05_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S05_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S05_AXIS_TARGET_SOCKET->bind(*(mp_S05_AXIS_transactor->socket));
  
  }
  else
  {
    S05_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S05_AXIS_transactor_target_socket_stub->bind(*(mp_S05_AXIS_transactor->socket));
    mp_S05_AXIS_transactor->disable_transactor();
  }

  // configure 'S06_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S06_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S06_AXIS_TARGET_SOCKET->bind(*(mp_S06_AXIS_transactor->socket));
  
  }
  else
  {
    S06_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S06_AXIS_transactor_target_socket_stub->bind(*(mp_S06_AXIS_transactor->socket));
    mp_S06_AXIS_transactor->disable_transactor();
  }

  // configure 'S07_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S07_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S07_AXIS_TARGET_SOCKET->bind(*(mp_S07_AXIS_transactor->socket));
  
  }
  else
  {
    S07_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S07_AXIS_transactor_target_socket_stub->bind(*(mp_S07_AXIS_transactor->socket));
    mp_S07_AXIS_transactor->disable_transactor();
  }

  // configure 'S_AXI_CTRL' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S_AXI_CTRL_TLM_MODE") != 1)
  {
  
  }
  else
  {
    S_AXI_CTRL_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_CTRL_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_CTRL_transactor->wr_socket));
    S_AXI_CTRL_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_CTRL_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_CTRL_transactor->rd_socket));
    mp_S_AXI_CTRL_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
rfdc_ex_axis_inter_adc_imp_xbar_0::rfdc_ex_axis_inter_adc_imp_xbar_0(const sc_core::sc_module_name& nm) : rfdc_ex_axis_inter_adc_imp_xbar_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axis_tvalid("s_axis_tvalid"), s_axis_tready("s_axis_tready"), s_axis_tdata("s_axis_tdata"), s_axis_tkeep("s_axis_tkeep"), m_axis_tvalid("m_axis_tvalid"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tkeep("m_axis_tkeep"), s_axi_ctrl_aclk("s_axi_ctrl_aclk"), s_axi_ctrl_aresetn("s_axi_ctrl_aresetn"), s_axi_ctrl_awvalid("s_axi_ctrl_awvalid"), s_axi_ctrl_awready("s_axi_ctrl_awready"), s_axi_ctrl_awaddr("s_axi_ctrl_awaddr"), s_axi_ctrl_wvalid("s_axi_ctrl_wvalid"), s_axi_ctrl_wready("s_axi_ctrl_wready"), s_axi_ctrl_wdata("s_axi_ctrl_wdata"), s_axi_ctrl_bvalid("s_axi_ctrl_bvalid"), s_axi_ctrl_bready("s_axi_ctrl_bready"), s_axi_ctrl_bresp("s_axi_ctrl_bresp"), s_axi_ctrl_arvalid("s_axi_ctrl_arvalid"), s_axi_ctrl_arready("s_axi_ctrl_arready"), s_axi_ctrl_araddr("s_axi_ctrl_araddr"), s_axi_ctrl_rvalid("s_axi_ctrl_rvalid"), s_axi_ctrl_rready("s_axi_ctrl_rready"), s_axi_ctrl_rdata("s_axi_ctrl_rdata"), s_axi_ctrl_rresp("s_axi_ctrl_rresp")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);
  mp_impl->s_axi_ctrl_aclk(s_axi_ctrl_aclk);
  mp_impl->s_axi_ctrl_aresetn(s_axi_ctrl_aresetn);

  // initialize transactors
  mp_S00_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_0 = NULL;
  mp_s_axis_tready_converter_0 = NULL;
  mp_s_axis_tdata_converter_0 = NULL;
  mp_s_axis_tkeep_converter_0 = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_m_axis_tvalid_converter = NULL;
  mp_m_axis_tready_converter = NULL;
  mp_S01_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_1 = NULL;
  mp_s_axis_tready_converter_1 = NULL;
  mp_s_axis_tdata_converter_1 = NULL;
  mp_s_axis_tkeep_converter_1 = NULL;
  mp_S02_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_2 = NULL;
  mp_s_axis_tready_converter_2 = NULL;
  mp_s_axis_tdata_converter_2 = NULL;
  mp_s_axis_tkeep_converter_2 = NULL;
  mp_S03_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_3 = NULL;
  mp_s_axis_tready_converter_3 = NULL;
  mp_s_axis_tdata_converter_3 = NULL;
  mp_s_axis_tkeep_converter_3 = NULL;
  mp_S04_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_4 = NULL;
  mp_s_axis_tready_converter_4 = NULL;
  mp_s_axis_tdata_converter_4 = NULL;
  mp_s_axis_tkeep_converter_4 = NULL;
  mp_S05_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_5 = NULL;
  mp_s_axis_tready_converter_5 = NULL;
  mp_s_axis_tdata_converter_5 = NULL;
  mp_s_axis_tkeep_converter_5 = NULL;
  mp_S06_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_6 = NULL;
  mp_s_axis_tready_converter_6 = NULL;
  mp_s_axis_tdata_converter_6 = NULL;
  mp_s_axis_tkeep_converter_6 = NULL;
  mp_S07_AXIS_transactor = NULL;
  mp_s_axis_tvalid_converter_7 = NULL;
  mp_s_axis_tready_converter_7 = NULL;
  mp_s_axis_tdata_converter_7 = NULL;
  mp_s_axis_tkeep_converter_7 = NULL;
  mp_S_AXI_CTRL_transactor = NULL;

  // initialize port junctures
  mp_s_axis_concat_tready = NULL;
  mp_s_axis_split_tdata = NULL;
  mp_s_axis_split_tkeep = NULL;
  mp_s_axis_split_tvalid = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXIS_transactor
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_0 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_0");
  mp_s_axis_split_tvalid = new xsc::xsc_split<8, 8>("s_axis_split_tvalid");
  mp_s_axis_split_tvalid->in_port(s_axis_tvalid);
  mp_s_axis_split_tvalid->out_port[0](s_axis_split_tvalid_out_0);
    mp_s_axis_split_tvalid->add_mask(0,1,0);
  mp_s_axis_tvalid_converter_0->vector_in(s_axis_split_tvalid_out_0);
  mp_s_axis_tvalid_converter_0->scalar_out(m_s_axis_tvalid_converter_0_signal);
  mp_S00_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_0_signal);
  mp_s_axis_tready_converter_0 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_0");
  mp_s_axis_concat_tready = new xsc::xsc_concatenator<8, 8>("s_axis_concat_tready");
  mp_s_axis_concat_tready->in_port[0](s_axis_concat_tready_out_0);
  mp_s_axis_concat_tready->out_port(s_axis_tready);
    mp_s_axis_concat_tready->offset_port(0, 0);
  mp_s_axis_tready_converter_0->scalar_in(m_s_axis_tready_converter_0_signal);
  mp_s_axis_tready_converter_0->vector_out(s_axis_concat_tready_out_0);
  mp_S00_AXIS_transactor->TREADY(m_s_axis_tready_converter_0_signal);
  mp_s_axis_tdata_converter_0 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_0");
  mp_s_axis_split_tdata = new xsc::xsc_split<4096, 8>("s_axis_split_tdata");
  mp_s_axis_split_tdata->in_port(s_axis_tdata);
  mp_s_axis_split_tdata->out_port[0](s_axis_split_tdata_out_0);
    mp_s_axis_split_tdata->add_mask(0,512,0);
  mp_s_axis_tdata_converter_0->vector_in(s_axis_split_tdata_out_0);
  mp_s_axis_tdata_converter_0->vector_out(m_s_axis_tdata_converter_0_signal);
  mp_S00_AXIS_transactor->TDATA(m_s_axis_tdata_converter_0_signal);
  mp_s_axis_tkeep_converter_0 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_0");
  mp_s_axis_split_tkeep = new xsc::xsc_split<512, 8>("s_axis_split_tkeep");
  mp_s_axis_split_tkeep->in_port(s_axis_tkeep);
  mp_s_axis_split_tkeep->out_port[0](s_axis_split_tkeep_out_0);
    mp_s_axis_split_tkeep->add_mask(0,64,0);
  mp_s_axis_tkeep_converter_0->vector_in(s_axis_split_tkeep_out_0);
  mp_s_axis_tkeep_converter_0->vector_out(m_s_axis_tkeep_converter_0_signal);
  mp_S00_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_0_signal);
  mp_S00_AXIS_transactor->CLK(aclk);
  mp_S00_AXIS_transactor->RST(aresetn);
  // configure M00_AXIS_transactor
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<64,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);
  mp_m_axis_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axis_tvalid_converter");
  mp_m_axis_tvalid_converter->scalar_in(m_m_axis_tvalid_converter_signal);
  mp_m_axis_tvalid_converter->vector_out(m_axis_tvalid);
  mp_M00_AXIS_transactor->TVALID(m_m_axis_tvalid_converter_signal);
  mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
  mp_m_axis_tready_converter->vector_in(m_axis_tready);
  mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
  mp_M00_AXIS_transactor->TREADY(m_m_axis_tready_converter_signal);
  mp_M00_AXIS_transactor->TDATA(m_axis_tdata);
  mp_M00_AXIS_transactor->TKEEP(m_axis_tkeep);
  mp_M00_AXIS_transactor->CLK(aclk);
  mp_M00_AXIS_transactor->RST(aresetn);
  // configure S01_AXIS_transactor
    xsc::common_cpp::properties S01_AXIS_transactor_param_props;
    S01_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S01_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S01_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S01_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S01_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S01_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S01_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S01_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S01_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S01_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S01_AXIS_transactor", S01_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_1 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_1");
  
  mp_s_axis_split_tvalid->out_port[1](s_axis_split_tvalid_out_1);
    mp_s_axis_split_tvalid->add_mask(1,2,1);
  mp_s_axis_tvalid_converter_1->vector_in(s_axis_split_tvalid_out_1);
  mp_s_axis_tvalid_converter_1->scalar_out(m_s_axis_tvalid_converter_1_signal);
  mp_S01_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_1_signal);
  mp_s_axis_tready_converter_1 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_1");
  mp_s_axis_concat_tready->in_port[1](s_axis_concat_tready_out_1);
  mp_s_axis_concat_tready->offset_port(1, 1);
  mp_s_axis_tready_converter_1->scalar_in(m_s_axis_tready_converter_1_signal);
  mp_s_axis_tready_converter_1->vector_out(s_axis_concat_tready_out_1);
  mp_S01_AXIS_transactor->TREADY(m_s_axis_tready_converter_1_signal);
  mp_s_axis_tdata_converter_1 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_1");
  
  mp_s_axis_split_tdata->out_port[1](s_axis_split_tdata_out_1);
    mp_s_axis_split_tdata->add_mask(1,1024,512);
  mp_s_axis_tdata_converter_1->vector_in(s_axis_split_tdata_out_1);
  mp_s_axis_tdata_converter_1->vector_out(m_s_axis_tdata_converter_1_signal);
  mp_S01_AXIS_transactor->TDATA(m_s_axis_tdata_converter_1_signal);
  mp_s_axis_tkeep_converter_1 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_1");
  
  mp_s_axis_split_tkeep->out_port[1](s_axis_split_tkeep_out_1);
    mp_s_axis_split_tkeep->add_mask(1,128,64);
  mp_s_axis_tkeep_converter_1->vector_in(s_axis_split_tkeep_out_1);
  mp_s_axis_tkeep_converter_1->vector_out(m_s_axis_tkeep_converter_1_signal);
  mp_S01_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_1_signal);
  mp_S01_AXIS_transactor->CLK(aclk);
  mp_S01_AXIS_transactor->RST(aresetn);
  // configure S02_AXIS_transactor
    xsc::common_cpp::properties S02_AXIS_transactor_param_props;
    S02_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S02_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S02_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S02_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S02_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S02_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S02_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S02_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S02_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S02_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S02_AXIS_transactor", S02_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_2 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_2");
  
  mp_s_axis_split_tvalid->out_port[2](s_axis_split_tvalid_out_2);
    mp_s_axis_split_tvalid->add_mask(2,3,2);
  mp_s_axis_tvalid_converter_2->vector_in(s_axis_split_tvalid_out_2);
  mp_s_axis_tvalid_converter_2->scalar_out(m_s_axis_tvalid_converter_2_signal);
  mp_S02_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_2_signal);
  mp_s_axis_tready_converter_2 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_2");
  mp_s_axis_concat_tready->in_port[2](s_axis_concat_tready_out_2);
  mp_s_axis_concat_tready->offset_port(2, 2);
  mp_s_axis_tready_converter_2->scalar_in(m_s_axis_tready_converter_2_signal);
  mp_s_axis_tready_converter_2->vector_out(s_axis_concat_tready_out_2);
  mp_S02_AXIS_transactor->TREADY(m_s_axis_tready_converter_2_signal);
  mp_s_axis_tdata_converter_2 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_2");
  
  mp_s_axis_split_tdata->out_port[2](s_axis_split_tdata_out_2);
    mp_s_axis_split_tdata->add_mask(2,1536,1024);
  mp_s_axis_tdata_converter_2->vector_in(s_axis_split_tdata_out_2);
  mp_s_axis_tdata_converter_2->vector_out(m_s_axis_tdata_converter_2_signal);
  mp_S02_AXIS_transactor->TDATA(m_s_axis_tdata_converter_2_signal);
  mp_s_axis_tkeep_converter_2 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_2");
  
  mp_s_axis_split_tkeep->out_port[2](s_axis_split_tkeep_out_2);
    mp_s_axis_split_tkeep->add_mask(2,192,128);
  mp_s_axis_tkeep_converter_2->vector_in(s_axis_split_tkeep_out_2);
  mp_s_axis_tkeep_converter_2->vector_out(m_s_axis_tkeep_converter_2_signal);
  mp_S02_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_2_signal);
  mp_S02_AXIS_transactor->CLK(aclk);
  mp_S02_AXIS_transactor->RST(aresetn);
  // configure S03_AXIS_transactor
    xsc::common_cpp::properties S03_AXIS_transactor_param_props;
    S03_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S03_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S03_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S03_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S03_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S03_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S03_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S03_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S03_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S03_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S03_AXIS_transactor", S03_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_3 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_3");
  
  mp_s_axis_split_tvalid->out_port[3](s_axis_split_tvalid_out_3);
    mp_s_axis_split_tvalid->add_mask(3,4,3);
  mp_s_axis_tvalid_converter_3->vector_in(s_axis_split_tvalid_out_3);
  mp_s_axis_tvalid_converter_3->scalar_out(m_s_axis_tvalid_converter_3_signal);
  mp_S03_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_3_signal);
  mp_s_axis_tready_converter_3 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_3");
  mp_s_axis_concat_tready->in_port[3](s_axis_concat_tready_out_3);
  mp_s_axis_concat_tready->offset_port(3, 3);
  mp_s_axis_tready_converter_3->scalar_in(m_s_axis_tready_converter_3_signal);
  mp_s_axis_tready_converter_3->vector_out(s_axis_concat_tready_out_3);
  mp_S03_AXIS_transactor->TREADY(m_s_axis_tready_converter_3_signal);
  mp_s_axis_tdata_converter_3 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_3");
  
  mp_s_axis_split_tdata->out_port[3](s_axis_split_tdata_out_3);
    mp_s_axis_split_tdata->add_mask(3,2048,1536);
  mp_s_axis_tdata_converter_3->vector_in(s_axis_split_tdata_out_3);
  mp_s_axis_tdata_converter_3->vector_out(m_s_axis_tdata_converter_3_signal);
  mp_S03_AXIS_transactor->TDATA(m_s_axis_tdata_converter_3_signal);
  mp_s_axis_tkeep_converter_3 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_3");
  
  mp_s_axis_split_tkeep->out_port[3](s_axis_split_tkeep_out_3);
    mp_s_axis_split_tkeep->add_mask(3,256,192);
  mp_s_axis_tkeep_converter_3->vector_in(s_axis_split_tkeep_out_3);
  mp_s_axis_tkeep_converter_3->vector_out(m_s_axis_tkeep_converter_3_signal);
  mp_S03_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_3_signal);
  mp_S03_AXIS_transactor->CLK(aclk);
  mp_S03_AXIS_transactor->RST(aresetn);
  // configure S04_AXIS_transactor
    xsc::common_cpp::properties S04_AXIS_transactor_param_props;
    S04_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S04_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S04_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S04_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S04_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S04_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S04_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S04_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S04_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S04_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S04_AXIS_transactor", S04_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_4 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_4");
  
  mp_s_axis_split_tvalid->out_port[4](s_axis_split_tvalid_out_4);
    mp_s_axis_split_tvalid->add_mask(4,5,4);
  mp_s_axis_tvalid_converter_4->vector_in(s_axis_split_tvalid_out_4);
  mp_s_axis_tvalid_converter_4->scalar_out(m_s_axis_tvalid_converter_4_signal);
  mp_S04_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_4_signal);
  mp_s_axis_tready_converter_4 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_4");
  mp_s_axis_concat_tready->in_port[4](s_axis_concat_tready_out_4);
  mp_s_axis_concat_tready->offset_port(4, 4);
  mp_s_axis_tready_converter_4->scalar_in(m_s_axis_tready_converter_4_signal);
  mp_s_axis_tready_converter_4->vector_out(s_axis_concat_tready_out_4);
  mp_S04_AXIS_transactor->TREADY(m_s_axis_tready_converter_4_signal);
  mp_s_axis_tdata_converter_4 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_4");
  
  mp_s_axis_split_tdata->out_port[4](s_axis_split_tdata_out_4);
    mp_s_axis_split_tdata->add_mask(4,2560,2048);
  mp_s_axis_tdata_converter_4->vector_in(s_axis_split_tdata_out_4);
  mp_s_axis_tdata_converter_4->vector_out(m_s_axis_tdata_converter_4_signal);
  mp_S04_AXIS_transactor->TDATA(m_s_axis_tdata_converter_4_signal);
  mp_s_axis_tkeep_converter_4 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_4");
  
  mp_s_axis_split_tkeep->out_port[4](s_axis_split_tkeep_out_4);
    mp_s_axis_split_tkeep->add_mask(4,320,256);
  mp_s_axis_tkeep_converter_4->vector_in(s_axis_split_tkeep_out_4);
  mp_s_axis_tkeep_converter_4->vector_out(m_s_axis_tkeep_converter_4_signal);
  mp_S04_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_4_signal);
  mp_S04_AXIS_transactor->CLK(aclk);
  mp_S04_AXIS_transactor->RST(aresetn);
  // configure S05_AXIS_transactor
    xsc::common_cpp::properties S05_AXIS_transactor_param_props;
    S05_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S05_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S05_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S05_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S05_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S05_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S05_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S05_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S05_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S05_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S05_AXIS_transactor", S05_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_5 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_5");
  
  mp_s_axis_split_tvalid->out_port[5](s_axis_split_tvalid_out_5);
    mp_s_axis_split_tvalid->add_mask(5,6,5);
  mp_s_axis_tvalid_converter_5->vector_in(s_axis_split_tvalid_out_5);
  mp_s_axis_tvalid_converter_5->scalar_out(m_s_axis_tvalid_converter_5_signal);
  mp_S05_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_5_signal);
  mp_s_axis_tready_converter_5 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_5");
  mp_s_axis_concat_tready->in_port[5](s_axis_concat_tready_out_5);
  mp_s_axis_concat_tready->offset_port(5, 5);
  mp_s_axis_tready_converter_5->scalar_in(m_s_axis_tready_converter_5_signal);
  mp_s_axis_tready_converter_5->vector_out(s_axis_concat_tready_out_5);
  mp_S05_AXIS_transactor->TREADY(m_s_axis_tready_converter_5_signal);
  mp_s_axis_tdata_converter_5 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_5");
  
  mp_s_axis_split_tdata->out_port[5](s_axis_split_tdata_out_5);
    mp_s_axis_split_tdata->add_mask(5,3072,2560);
  mp_s_axis_tdata_converter_5->vector_in(s_axis_split_tdata_out_5);
  mp_s_axis_tdata_converter_5->vector_out(m_s_axis_tdata_converter_5_signal);
  mp_S05_AXIS_transactor->TDATA(m_s_axis_tdata_converter_5_signal);
  mp_s_axis_tkeep_converter_5 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_5");
  
  mp_s_axis_split_tkeep->out_port[5](s_axis_split_tkeep_out_5);
    mp_s_axis_split_tkeep->add_mask(5,384,320);
  mp_s_axis_tkeep_converter_5->vector_in(s_axis_split_tkeep_out_5);
  mp_s_axis_tkeep_converter_5->vector_out(m_s_axis_tkeep_converter_5_signal);
  mp_S05_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_5_signal);
  mp_S05_AXIS_transactor->CLK(aclk);
  mp_S05_AXIS_transactor->RST(aresetn);
  // configure S06_AXIS_transactor
    xsc::common_cpp::properties S06_AXIS_transactor_param_props;
    S06_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S06_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S06_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S06_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S06_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S06_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S06_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S06_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S06_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S06_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S06_AXIS_transactor", S06_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_6 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_6");
  
  mp_s_axis_split_tvalid->out_port[6](s_axis_split_tvalid_out_6);
    mp_s_axis_split_tvalid->add_mask(6,7,6);
  mp_s_axis_tvalid_converter_6->vector_in(s_axis_split_tvalid_out_6);
  mp_s_axis_tvalid_converter_6->scalar_out(m_s_axis_tvalid_converter_6_signal);
  mp_S06_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_6_signal);
  mp_s_axis_tready_converter_6 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_6");
  mp_s_axis_concat_tready->in_port[6](s_axis_concat_tready_out_6);
  mp_s_axis_concat_tready->offset_port(6, 6);
  mp_s_axis_tready_converter_6->scalar_in(m_s_axis_tready_converter_6_signal);
  mp_s_axis_tready_converter_6->vector_out(s_axis_concat_tready_out_6);
  mp_S06_AXIS_transactor->TREADY(m_s_axis_tready_converter_6_signal);
  mp_s_axis_tdata_converter_6 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_6");
  
  mp_s_axis_split_tdata->out_port[6](s_axis_split_tdata_out_6);
    mp_s_axis_split_tdata->add_mask(6,3584,3072);
  mp_s_axis_tdata_converter_6->vector_in(s_axis_split_tdata_out_6);
  mp_s_axis_tdata_converter_6->vector_out(m_s_axis_tdata_converter_6_signal);
  mp_S06_AXIS_transactor->TDATA(m_s_axis_tdata_converter_6_signal);
  mp_s_axis_tkeep_converter_6 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_6");
  
  mp_s_axis_split_tkeep->out_port[6](s_axis_split_tkeep_out_6);
    mp_s_axis_split_tkeep->add_mask(6,448,384);
  mp_s_axis_tkeep_converter_6->vector_in(s_axis_split_tkeep_out_6);
  mp_s_axis_tkeep_converter_6->vector_out(m_s_axis_tkeep_converter_6_signal);
  mp_S06_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_6_signal);
  mp_S06_AXIS_transactor->CLK(aclk);
  mp_S06_AXIS_transactor->RST(aresetn);
  // configure S07_AXIS_transactor
    xsc::common_cpp::properties S07_AXIS_transactor_param_props;
    S07_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "64");
    S07_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S07_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    S07_AXIS_transactor_param_props.addLong("HAS_TLAST", "0");
    S07_AXIS_transactor_param_props.addLong("FREQ_HZ", "333250000");
    S07_AXIS_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXIS_transactor_param_props.addFloat("PHASE", "0.00");
    S07_AXIS_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk");
    S07_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S07_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S07_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<512,8,8,8,1,1>("S07_AXIS_transactor", S07_AXIS_transactor_param_props);
  mp_s_axis_tvalid_converter_7 = new xsc::common::vectorN2scalar_converter<8>("s_axis_tvalid_converter_7");
  
  mp_s_axis_split_tvalid->out_port[7](s_axis_split_tvalid_out_7);
    mp_s_axis_split_tvalid->add_mask(7,8,7);
  mp_s_axis_tvalid_converter_7->vector_in(s_axis_split_tvalid_out_7);
  mp_s_axis_tvalid_converter_7->scalar_out(m_s_axis_tvalid_converter_7_signal);
  mp_S07_AXIS_transactor->TVALID(m_s_axis_tvalid_converter_7_signal);
  mp_s_axis_tready_converter_7 = new xsc::common::scalar2vectorN_converter<8>("s_axis_tready_converter_7");
  mp_s_axis_concat_tready->in_port[7](s_axis_concat_tready_out_7);
  mp_s_axis_concat_tready->offset_port(7, 7);
  mp_s_axis_tready_converter_7->scalar_in(m_s_axis_tready_converter_7_signal);
  mp_s_axis_tready_converter_7->vector_out(s_axis_concat_tready_out_7);
  mp_S07_AXIS_transactor->TREADY(m_s_axis_tready_converter_7_signal);
  mp_s_axis_tdata_converter_7 = new xsc::common::vector2vector_converter<4096,4096>("s_axis_tdata_converter_7");
  
  mp_s_axis_split_tdata->out_port[7](s_axis_split_tdata_out_7);
    mp_s_axis_split_tdata->add_mask(7,4096,3584);
  mp_s_axis_tdata_converter_7->vector_in(s_axis_split_tdata_out_7);
  mp_s_axis_tdata_converter_7->vector_out(m_s_axis_tdata_converter_7_signal);
  mp_S07_AXIS_transactor->TDATA(m_s_axis_tdata_converter_7_signal);
  mp_s_axis_tkeep_converter_7 = new xsc::common::vector2vector_converter<512,512>("s_axis_tkeep_converter_7");
  
  mp_s_axis_split_tkeep->out_port[7](s_axis_split_tkeep_out_7);
    mp_s_axis_split_tkeep->add_mask(7,512,448);
  mp_s_axis_tkeep_converter_7->vector_in(s_axis_split_tkeep_out_7);
  mp_s_axis_tkeep_converter_7->vector_out(m_s_axis_tkeep_converter_7_signal);
  mp_S07_AXIS_transactor->TKEEP(m_s_axis_tkeep_converter_7_signal);
  mp_S07_AXIS_transactor->CLK(aclk);
  mp_S07_AXIS_transactor->RST(aresetn);
  // configure S_AXI_CTRL_transactor
    xsc::common_cpp::properties S_AXI_CTRL_transactor_param_props;
    S_AXI_CTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_CTRL_transactor_param_props.addLong("FREQ_HZ", "99999001");
    S_AXI_CTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ADDR_WIDTH", "7");
    S_AXI_CTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_CTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_CTRL_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_CTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_CTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_CTRL_transactor_param_props.addString("CLK_DOMAIN", "rfdc_ex_zynq_ps_0_pl_clk0");

    mp_S_AXI_CTRL_transactor = new xtlm::xaximm_pin2xtlm_t<32,7,1,1,1,1,1,1>("S_AXI_CTRL_transactor", S_AXI_CTRL_transactor_param_props);
  mp_S_AXI_CTRL_transactor->AWVALID(s_axi_ctrl_awvalid);
  mp_S_AXI_CTRL_transactor->AWREADY(s_axi_ctrl_awready);
  mp_S_AXI_CTRL_transactor->AWADDR(s_axi_ctrl_awaddr);
  mp_S_AXI_CTRL_transactor->WVALID(s_axi_ctrl_wvalid);
  mp_S_AXI_CTRL_transactor->WREADY(s_axi_ctrl_wready);
  mp_S_AXI_CTRL_transactor->WDATA(s_axi_ctrl_wdata);
  mp_S_AXI_CTRL_transactor->BVALID(s_axi_ctrl_bvalid);
  mp_S_AXI_CTRL_transactor->BREADY(s_axi_ctrl_bready);
  mp_S_AXI_CTRL_transactor->BRESP(s_axi_ctrl_bresp);
  mp_S_AXI_CTRL_transactor->ARVALID(s_axi_ctrl_arvalid);
  mp_S_AXI_CTRL_transactor->ARREADY(s_axi_ctrl_arready);
  mp_S_AXI_CTRL_transactor->ARADDR(s_axi_ctrl_araddr);
  mp_S_AXI_CTRL_transactor->RVALID(s_axi_ctrl_rvalid);
  mp_S_AXI_CTRL_transactor->RREADY(s_axi_ctrl_rready);
  mp_S_AXI_CTRL_transactor->RDATA(s_axi_ctrl_rdata);
  mp_S_AXI_CTRL_transactor->RRESP(s_axi_ctrl_rresp);
  mp_S_AXI_CTRL_transactor->CLK(s_axi_ctrl_aclk);
  mp_S_AXI_CTRL_transactor->RST(s_axi_ctrl_aresetn);

  // initialize transactors stubs
  S00_AXIS_transactor_target_socket_stub = nullptr;
  M00_AXIS_transactor_initiator_socket_stub = nullptr;
  S01_AXIS_transactor_target_socket_stub = nullptr;
  S02_AXIS_transactor_target_socket_stub = nullptr;
  S03_AXIS_transactor_target_socket_stub = nullptr;
  S04_AXIS_transactor_target_socket_stub = nullptr;
  S05_AXIS_transactor_target_socket_stub = nullptr;
  S06_AXIS_transactor_target_socket_stub = nullptr;
  S07_AXIS_transactor_target_socket_stub = nullptr;
  S_AXI_CTRL_transactor_target_wr_socket_stub = nullptr;
  S_AXI_CTRL_transactor_target_rd_socket_stub = nullptr;

}

void rfdc_ex_axis_inter_adc_imp_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S00_AXIS_TARGET_SOCKET->bind(*(mp_S00_AXIS_transactor->socket));
  
  }
  else
  {
    S00_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S00_AXIS_transactor_target_socket_stub->bind(*(mp_S00_AXIS_transactor->socket));
    mp_S00_AXIS_transactor->disable_transactor();
  }

  // configure 'M00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "M00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->M00_AXIS_INITIATOR_SOCKET->bind(*(mp_M00_AXIS_transactor->socket));
  
  }
  else
  {
    M00_AXIS_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    M00_AXIS_transactor_initiator_socket_stub->bind(*(mp_M00_AXIS_transactor->socket));
    mp_M00_AXIS_transactor->disable_transactor();
  }

  // configure 'S01_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S01_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S01_AXIS_TARGET_SOCKET->bind(*(mp_S01_AXIS_transactor->socket));
  
  }
  else
  {
    S01_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S01_AXIS_transactor_target_socket_stub->bind(*(mp_S01_AXIS_transactor->socket));
    mp_S01_AXIS_transactor->disable_transactor();
  }

  // configure 'S02_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S02_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S02_AXIS_TARGET_SOCKET->bind(*(mp_S02_AXIS_transactor->socket));
  
  }
  else
  {
    S02_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S02_AXIS_transactor_target_socket_stub->bind(*(mp_S02_AXIS_transactor->socket));
    mp_S02_AXIS_transactor->disable_transactor();
  }

  // configure 'S03_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S03_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S03_AXIS_TARGET_SOCKET->bind(*(mp_S03_AXIS_transactor->socket));
  
  }
  else
  {
    S03_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S03_AXIS_transactor_target_socket_stub->bind(*(mp_S03_AXIS_transactor->socket));
    mp_S03_AXIS_transactor->disable_transactor();
  }

  // configure 'S04_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S04_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S04_AXIS_TARGET_SOCKET->bind(*(mp_S04_AXIS_transactor->socket));
  
  }
  else
  {
    S04_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S04_AXIS_transactor_target_socket_stub->bind(*(mp_S04_AXIS_transactor->socket));
    mp_S04_AXIS_transactor->disable_transactor();
  }

  // configure 'S05_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S05_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S05_AXIS_TARGET_SOCKET->bind(*(mp_S05_AXIS_transactor->socket));
  
  }
  else
  {
    S05_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S05_AXIS_transactor_target_socket_stub->bind(*(mp_S05_AXIS_transactor->socket));
    mp_S05_AXIS_transactor->disable_transactor();
  }

  // configure 'S06_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S06_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S06_AXIS_TARGET_SOCKET->bind(*(mp_S06_AXIS_transactor->socket));
  
  }
  else
  {
    S06_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S06_AXIS_transactor_target_socket_stub->bind(*(mp_S06_AXIS_transactor->socket));
    mp_S06_AXIS_transactor->disable_transactor();
  }

  // configure 'S07_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S07_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S07_AXIS_TARGET_SOCKET->bind(*(mp_S07_AXIS_transactor->socket));
  
  }
  else
  {
    S07_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S07_AXIS_transactor_target_socket_stub->bind(*(mp_S07_AXIS_transactor->socket));
    mp_S07_AXIS_transactor->disable_transactor();
  }

  // configure 'S_AXI_CTRL' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("rfdc_ex_axis_inter_adc_imp_xbar_0", "S_AXI_CTRL_TLM_MODE") != 1)
  {
  
  }
  else
  {
    S_AXI_CTRL_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_CTRL_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_CTRL_transactor->wr_socket));
    S_AXI_CTRL_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_CTRL_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_CTRL_transactor->rd_socket));
    mp_S_AXI_CTRL_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




rfdc_ex_axis_inter_adc_imp_xbar_0::~rfdc_ex_axis_inter_adc_imp_xbar_0()
{
  delete mp_S00_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_0;
  delete mp_s_axis_tready_converter_0;
  delete mp_s_axis_tdata_converter_0;
  delete mp_s_axis_tkeep_converter_0;

  delete mp_M00_AXIS_transactor;
  delete mp_m_axis_tvalid_converter;
  delete mp_m_axis_tready_converter;

  delete mp_S01_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_1;
  delete mp_s_axis_tready_converter_1;
  delete mp_s_axis_tdata_converter_1;
  delete mp_s_axis_tkeep_converter_1;

  delete mp_S02_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_2;
  delete mp_s_axis_tready_converter_2;
  delete mp_s_axis_tdata_converter_2;
  delete mp_s_axis_tkeep_converter_2;

  delete mp_S03_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_3;
  delete mp_s_axis_tready_converter_3;
  delete mp_s_axis_tdata_converter_3;
  delete mp_s_axis_tkeep_converter_3;

  delete mp_S04_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_4;
  delete mp_s_axis_tready_converter_4;
  delete mp_s_axis_tdata_converter_4;
  delete mp_s_axis_tkeep_converter_4;

  delete mp_S05_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_5;
  delete mp_s_axis_tready_converter_5;
  delete mp_s_axis_tdata_converter_5;
  delete mp_s_axis_tkeep_converter_5;

  delete mp_S06_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_6;
  delete mp_s_axis_tready_converter_6;
  delete mp_s_axis_tdata_converter_6;
  delete mp_s_axis_tkeep_converter_6;

  delete mp_S07_AXIS_transactor;
  delete mp_s_axis_tvalid_converter_7;
  delete mp_s_axis_tready_converter_7;
  delete mp_s_axis_tdata_converter_7;
  delete mp_s_axis_tkeep_converter_7;

  delete mp_S_AXI_CTRL_transactor;

  delete mp_s_axis_concat_tready;
  delete mp_s_axis_split_tdata;
  delete mp_s_axis_split_tkeep;
  delete mp_s_axis_split_tvalid;
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(rfdc_ex_axis_inter_adc_imp_xbar_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(rfdc_ex_axis_inter_adc_imp_xbar_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(rfdc_ex_axis_inter_adc_imp_xbar_0);
SC_REGISTER_BV(4096);
#endif

