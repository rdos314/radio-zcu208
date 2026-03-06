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


// IP VLNV: xilinx.com:module_ref:comp_high:1.0
// IP Revision: 1

(* X_CORE_INFO = "comp_high,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "ps_comp_high_0_0,comp_high,{}" *)
(* CORE_GENERATION_INFO = "ps_comp_high_0_0,comp_high,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_high,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_comp_high_0_0 (
  ana_fifo_clk,
  ana_fifo_wr,
  ana_fifo_sample,
  ana_fifo_size,
  ana_fifo_freq,
  ana_fifo_angle,
  ana_fifo_doa_error,
  ana_fifo_sample_N,
  ana_fifo_sample_E,
  ana_fifo_sample_W,
  raw_fifo_clk,
  raw_fifo_wr,
  raw_fifo_N,
  raw_fifo_E,
  raw_fifo_W,
  clk,
  reset,
  active,
  re,
  im,
  burst,
  sample,
  size,
  freq,
  angle,
  doa_error
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ana_fifo_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ana_fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana1_clk, INSERT_VIP 0" *)
input wire ana_fifo_clk;
input wire ana_fifo_wr;
input wire [15 : 0] ana_fifo_sample;
input wire [8 : 0] ana_fifo_size;
input wire [19 : 0] ana_fifo_freq;
input wire [15 : 0] ana_fifo_angle;
input wire [9 : 0] ana_fifo_doa_error;
input wire [5 : 0] ana_fifo_sample_N;
input wire [5 : 0] ana_fifo_sample_E;
input wire [5 : 0] ana_fifo_sample_W;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_fifo_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *)
input wire raw_fifo_clk;
input wire raw_fifo_wr;
input wire [127 : 0] raw_fifo_N;
input wire [127 : 0] raw_fifo_E;
input wire [127 : 0] raw_fifo_W;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;
output wire active;
output wire [63 : 0] re;
output wire [63 : 0] im;
output wire burst;
output wire [15 : 0] sample;
output wire [8 : 0] size;
output wire [19 : 0] freq;
output wire [15 : 0] angle;
output wire [9 : 0] doa_error;

  comp_high inst (
    .ana_fifo_clk(ana_fifo_clk),
    .ana_fifo_wr(ana_fifo_wr),
    .ana_fifo_sample(ana_fifo_sample),
    .ana_fifo_size(ana_fifo_size),
    .ana_fifo_freq(ana_fifo_freq),
    .ana_fifo_angle(ana_fifo_angle),
    .ana_fifo_doa_error(ana_fifo_doa_error),
    .ana_fifo_sample_N(ana_fifo_sample_N),
    .ana_fifo_sample_E(ana_fifo_sample_E),
    .ana_fifo_sample_W(ana_fifo_sample_W),
    .raw_fifo_clk(raw_fifo_clk),
    .raw_fifo_wr(raw_fifo_wr),
    .raw_fifo_N(raw_fifo_N),
    .raw_fifo_E(raw_fifo_E),
    .raw_fifo_W(raw_fifo_W),
    .clk(clk),
    .reset(reset),
    .active(active),
    .re(re),
    .im(im),
    .burst(burst),
    .sample(sample),
    .size(size),
    .freq(freq),
    .angle(angle),
    .doa_error(doa_error)
  );
endmodule
