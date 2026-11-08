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

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_comp_ana_0_0 (
  config_clk,
  config_wr,
  config_adr,
  config_data,
  fifo_clk,
  fifo_active,
  fifo_re,
  fifo_im,
  fifo_burst,
  fifo_sample,
  fifo_size,
  fifo_freq,
  fifo_angle,
  fifo_doa_error,
  pl_clk,
  clk,
  reset,
  axi_clk,
  axi_rd,
  axi_wr,
  axi_empty,
  axi_full,
  axi_pending,
  axi_timestamp,
  axi_data
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire config_clk;
input wire config_wr;
input wire [7 : 0] config_adr;
input wire [31 : 0] config_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *)
input wire fifo_clk;
input wire fifo_active;
input wire [63 : 0] fifo_re;
input wire [63 : 0] fifo_im;
input wire fifo_burst;
input wire [15 : 0] fifo_sample;
input wire [8 : 0] fifo_size;
input wire [19 : 0] fifo_freq;
input wire [15 : 0] fifo_angle;
input wire [9 : 0] fifo_doa_error;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire pl_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *)
input wire axi_clk;
input wire axi_rd;
output wire axi_wr;
input wire axi_empty;
input wire axi_full;
output wire axi_pending;
output wire [21 : 0] axi_timestamp;
output wire [255 : 0] axi_data;

  comp_ana inst (
    .config_clk(config_clk),
    .config_wr(config_wr),
    .config_adr(config_adr),
    .config_data(config_data),
    .fifo_clk(fifo_clk),
    .fifo_active(fifo_active),
    .fifo_re(fifo_re),
    .fifo_im(fifo_im),
    .fifo_burst(fifo_burst),
    .fifo_sample(fifo_sample),
    .fifo_size(fifo_size),
    .fifo_freq(fifo_freq),
    .fifo_angle(fifo_angle),
    .fifo_doa_error(fifo_doa_error),
    .pl_clk(pl_clk),
    .clk(clk),
    .reset(reset),
    .axi_clk(axi_clk),
    .axi_rd(axi_rd),
    .axi_wr(axi_wr),
    .axi_empty(axi_empty),
    .axi_full(axi_full),
    .axi_pending(axi_pending),
    .axi_timestamp(axi_timestamp),
    .axi_data(axi_data)
  );
endmodule
