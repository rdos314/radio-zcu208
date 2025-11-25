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


// IP VLNV: xilinx.com:module_ref:deci_low:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_deci_low_0_0 (
  clk,
  resetn,
  data_N,
  ready_N,
  data_E,
  ready_E,
  data_W,
  ready_W,
  sim_start,
  adc_active,
  sim_active,
  sim_clk,
  sim_resetn,
  sim_wr,
  sim_channel,
  sim_data,
  raw_clk,
  raw_ready,
  raw_data,
  doa_clk,
  doa_ready,
  doa_data
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire resetn;
input wire [127 : 0] data_N;
input wire ready_N;
input wire [127 : 0] data_E;
input wire ready_E;
input wire [127 : 0] data_W;
input wire ready_W;
input wire sim_start;
input wire adc_active;
output wire sim_active;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sim_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_clk, ASSOCIATED_RESET sim_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire sim_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sim_resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire sim_resetn;
input wire sim_wr;
input wire [1 : 0] sim_channel;
input wire [31 : 0] sim_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *)
input wire raw_clk;
output wire raw_ready;
output wire [195 : 0] raw_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *)
input wire doa_clk;
output wire doa_ready;
output wire [69 : 0] doa_data;

  deci_low inst (
    .clk(clk),
    .resetn(resetn),
    .data_N(data_N),
    .ready_N(ready_N),
    .data_E(data_E),
    .ready_E(ready_E),
    .data_W(data_W),
    .ready_W(ready_W),
    .sim_start(sim_start),
    .adc_active(adc_active),
    .sim_active(sim_active),
    .sim_clk(sim_clk),
    .sim_resetn(sim_resetn),
    .sim_wr(sim_wr),
    .sim_channel(sim_channel),
    .sim_data(sim_data),
    .raw_clk(raw_clk),
    .raw_ready(raw_ready),
    .raw_data(raw_data),
    .doa_clk(doa_clk),
    .doa_ready(doa_ready),
    .doa_data(doa_data)
  );
endmodule
