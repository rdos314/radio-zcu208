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


// IP VLNV: xilinx.com:module_ref:mts:1.0
// IP Revision: 1

(* X_CORE_INFO = "mts,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "ps_mts_0_0,mts,{}" *)
(* CORE_GENERATION_INFO = "ps_mts_0_0,mts,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mts,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_mts_0_0 (
  pl_clk,
  pl_sysref,
  sys_reset,
  axi_clk,
  axi_reset_out,
  axi_adc_start,
  axi_sim_start,
  axi_adc_stop,
  axi_adc_active,
  axi_sim_active,
  deci_clk,
  deci_resetn,
  user_sysref_adc,
  deci_adc_active,
  deci_sim_start,
  deci_sim_active_low,
  deci_sim_active_high,
  comp0_clk,
  comp0_reset,
  comp1_clk,
  comp1_reset,
  doa0_clk,
  doa0_reset,
  doa1_clk,
  doa1_reset
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *)
input wire pl_clk;
input wire pl_sysref;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire sys_reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire axi_clk;
output wire axi_reset_out;
input wire axi_adc_start;
input wire axi_sim_start;
input wire axi_adc_stop;
output wire axi_adc_active;
output wire axi_sim_active;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *)
output wire deci_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 deci_resetn RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire deci_resetn;
output wire user_sysref_adc;
output wire deci_adc_active;
output wire deci_sim_start;
input wire deci_sim_active_low;
input wire deci_sim_active_high;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp0_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *)
output wire comp0_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp0_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire comp0_reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *)
output wire comp1_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp1_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire comp1_reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa0_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *)
output wire doa0_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa0_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire doa0_reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *)
output wire doa1_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa1_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire doa1_reset;

  mts inst (
    .pl_clk(pl_clk),
    .pl_sysref(pl_sysref),
    .sys_reset(sys_reset),
    .axi_clk(axi_clk),
    .axi_reset_out(axi_reset_out),
    .axi_adc_start(axi_adc_start),
    .axi_sim_start(axi_sim_start),
    .axi_adc_stop(axi_adc_stop),
    .axi_adc_active(axi_adc_active),
    .axi_sim_active(axi_sim_active),
    .deci_clk(deci_clk),
    .deci_resetn(deci_resetn),
    .user_sysref_adc(user_sysref_adc),
    .deci_adc_active(deci_adc_active),
    .deci_sim_start(deci_sim_start),
    .deci_sim_active_low(deci_sim_active_low),
    .deci_sim_active_high(deci_sim_active_high),
    .comp0_clk(comp0_clk),
    .comp0_reset(comp0_reset),
    .comp1_clk(comp1_clk),
    .comp1_reset(comp1_reset),
    .doa0_clk(doa0_clk),
    .doa0_reset(doa0_reset),
    .doa1_clk(doa1_clk),
    .doa1_reset(doa1_reset)
  );
endmodule
