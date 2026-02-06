// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:comp_burst:1.0
// IP Revision: 1

(* X_CORE_INFO = "comp_burst,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "ps_comp_burst_0_0,comp_burst,{}" *)
(* CORE_GENERATION_INFO = "ps_comp_burst_0_0,comp_burst,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_burst,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_comp_burst_0_0 (
  config_clk,
  config_wr,
  config_adr,
  config_data,
  rt_clk,
  rt_enable,
  rt_start,
  rt_sample,
  rt_freq,
  rt_angle,
  rt_wr,
  rt_env_0,
  rt_env_1,
  rt_env_2,
  rt_env_3,
  rt_phase_0,
  rt_phase_1,
  rt_phase_2,
  rt_phase_3,
  clk,
  reset
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire config_clk;
input wire config_wr;
input wire [7 : 0] config_adr;
input wire [31 : 0] config_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rt_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rt_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana1_clk, INSERT_VIP 0" *)
input wire rt_clk;
input wire rt_enable;
input wire rt_start;
input wire [61 : 0] rt_sample;
input wire [19 : 0] rt_freq;
input wire [15 : 0] rt_angle;
input wire rt_wr;
input wire [15 : 0] rt_env_0;
input wire [15 : 0] rt_env_1;
input wire [15 : 0] rt_env_2;
input wire [15 : 0] rt_env_3;
input wire [19 : 0] rt_phase_0;
input wire [19 : 0] rt_phase_1;
input wire [19 : 0] rt_phase_2;
input wire [19 : 0] rt_phase_3;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_comp_ana_0_1_stat_0_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;

  comp_burst inst (
    .config_clk(config_clk),
    .config_wr(config_wr),
    .config_adr(config_adr),
    .config_data(config_data),
    .rt_clk(rt_clk),
    .rt_enable(rt_enable),
    .rt_start(rt_start),
    .rt_sample(rt_sample),
    .rt_freq(rt_freq),
    .rt_angle(rt_angle),
    .rt_wr(rt_wr),
    .rt_env_0(rt_env_0),
    .rt_env_1(rt_env_1),
    .rt_env_2(rt_env_2),
    .rt_env_3(rt_env_3),
    .rt_phase_0(rt_phase_0),
    .rt_phase_1(rt_phase_1),
    .rt_phase_2(rt_phase_2),
    .rt_phase_3(rt_phase_3),
    .clk(clk),
    .reset(reset)
  );
endmodule
