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


// IP VLNV: xilinx.com:module_ref:freq_high_189:1.0
// IP Revision: 1

(* X_CORE_INFO = "freq_high_189,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "ps_freq_high_189_0_0,freq_high_189,{}" *)
(* CORE_GENERATION_INFO = "ps_freq_high_189_0_0,freq_high_189,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=freq_high_189,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_freq_high_189_0_0 (
  fifo_clk,
  freq_wr,
  freq_in_N,
  freq_in_E,
  freq_in_W,
  clk,
  reset,
  ana_wr,
  env_N,
  env_E,
  env_W,
  phase_N,
  phase_E,
  phase_W,
  err_NE,
  err_EW,
  err_WN
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *)
input wire fifo_clk;
input wire freq_wr;
input wire [31 : 0] freq_in_N;
input wire [31 : 0] freq_in_E;
input wire [31 : 0] freq_in_W;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;
output wire ana_wr;
output wire [15 : 0] env_N;
output wire [15 : 0] env_E;
output wire [15 : 0] env_W;
output wire [19 : 0] phase_N;
output wire [19 : 0] phase_E;
output wire [19 : 0] phase_W;
output wire [11 : 0] err_NE;
output wire [11 : 0] err_EW;
output wire [11 : 0] err_WN;

  freq_high_189 inst (
    .fifo_clk(fifo_clk),
    .freq_wr(freq_wr),
    .freq_in_N(freq_in_N),
    .freq_in_E(freq_in_E),
    .freq_in_W(freq_in_W),
    .clk(clk),
    .reset(reset),
    .ana_wr(ana_wr),
    .env_N(env_N),
    .env_E(env_E),
    .env_W(env_W),
    .phase_N(phase_N),
    .phase_E(phase_E),
    .phase_W(phase_W),
    .err_NE(err_NE),
    .err_EW(err_EW),
    .err_WN(err_WN)
  );
endmodule
