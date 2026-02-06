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


// IP VLNV: xilinx.com:module_ref:comp_ana:1.0
// IP Revision: 1

(* X_CORE_INFO = "comp_ana,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "ps_comp_ana_0_1,comp_ana,{}" *)
(* CORE_GENERATION_INFO = "ps_comp_ana_0_1,comp_ana,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_ana,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_comp_ana_0_1 (
  fifo_clk,
  fifo_active,
  fifo_re,
  fifo_im,
  fifo_burst,
  fifo_sample,
  fifo_size,
  fifo_freq,
  fifo_angle,
  clk,
  reset,
  stat_0_clk,
  stat_0_reset,
  stat_1_clk,
  stat_1_reset,
  stat_sel_0,
  stat_start,
  stat_sample,
  stat_freq,
  stat_angle,
  stat_wr,
  stat_env_0,
  stat_env_1,
  stat_env_2,
  stat_env_3,
  stat_phase_0,
  stat_phase_1,
  stat_phase_2,
  stat_phase_3
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *)
input wire fifo_clk;
input wire fifo_active;
input wire [63 : 0] fifo_re;
input wire [63 : 0] fifo_im;
input wire fifo_burst;
input wire [15 : 0] fifo_sample;
input wire [8 : 0] fifo_size;
input wire [19 : 0] fifo_freq;
input wire [15 : 0] fifo_angle;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana1_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 stat_0_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stat_0_clk, ASSOCIATED_RESET stat_0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_comp_ana_0_1_stat_0_clk, INSERT_VIP 0" *)
output wire stat_0_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 stat_0_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stat_0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire stat_0_reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 stat_1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stat_1_clk, ASSOCIATED_RESET stat_1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_comp_ana_0_1_stat_1_clk, INSERT_VIP 0" *)
output wire stat_1_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 stat_1_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stat_1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire stat_1_reset;
output wire stat_sel_0;
output wire stat_start;
output wire [61 : 0] stat_sample;
output wire [19 : 0] stat_freq;
output wire [15 : 0] stat_angle;
output wire stat_wr;
output wire [15 : 0] stat_env_0;
output wire [15 : 0] stat_env_1;
output wire [15 : 0] stat_env_2;
output wire [15 : 0] stat_env_3;
output wire [19 : 0] stat_phase_0;
output wire [19 : 0] stat_phase_1;
output wire [19 : 0] stat_phase_2;
output wire [19 : 0] stat_phase_3;

  comp_ana inst (
    .fifo_clk(fifo_clk),
    .fifo_active(fifo_active),
    .fifo_re(fifo_re),
    .fifo_im(fifo_im),
    .fifo_burst(fifo_burst),
    .fifo_sample(fifo_sample),
    .fifo_size(fifo_size),
    .fifo_freq(fifo_freq),
    .fifo_angle(fifo_angle),
    .clk(clk),
    .reset(reset),
    .stat_0_clk(stat_0_clk),
    .stat_0_reset(stat_0_reset),
    .stat_1_clk(stat_1_clk),
    .stat_1_reset(stat_1_reset),
    .stat_sel_0(stat_sel_0),
    .stat_start(stat_start),
    .stat_sample(stat_sample),
    .stat_freq(stat_freq),
    .stat_angle(stat_angle),
    .stat_wr(stat_wr),
    .stat_env_0(stat_env_0),
    .stat_env_1(stat_env_1),
    .stat_env_2(stat_env_2),
    .stat_env_3(stat_env_3),
    .stat_phase_0(stat_phase_0),
    .stat_phase_1(stat_phase_1),
    .stat_phase_2(stat_phase_2),
    .stat_phase_3(stat_phase_3)
  );
endmodule
