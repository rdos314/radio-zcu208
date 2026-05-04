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


// IP VLNV: xilinx.com:module_ref:axi_dma:1.0
// IP Revision: 1

(* X_CORE_INFO = "axi_dma,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "ps_axi_dma_1_0,axi_dma,{}" *)
(* CORE_GENERATION_INFO = "ps_axi_dma_1_0,axi_dma,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_dma,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_axi_dma_1_0 (
  clk,
  resetn,
  irq,
  mig_rd_ptr,
  mig_wr_ptr,
  linux_wr_ptr,
  linux_rd_ptr,
  M_AXI_TDATA_in_cmd,
  M_AXI_TVALID_in_cmd,
  M_AXI_TREADY_in_cmd,
  M_AXI_STS_in_tdata,
  M_AXI_STS_in_tvalid,
  M_AXI_STS_in_tready,
  M_AXI_TDATA_out_cmd,
  M_AXI_TVALID_out_cmd,
  M_AXI_TREADY_out_cmd,
  M_AXI_STS_out_tdata,
  M_AXI_STS_out_tvalid,
  M_AXI_STS_out_tready,
  M_AXI_TDATA_in,
  M_AXI_TVALID_in,
  M_AXI_TREADY_in,
  M_AXI_TDATA_out,
  M_AXI_TVALID_out,
  M_AXI_TLAST_out,
  M_AXI_TREADY_out
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI_STS_in:M_AXI_STS_out:M_AXI_in:M_AXI_in_cmd:M_AXI_out:M_AXI_out_cmd, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire resetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire irq;
output wire [26 : 0] mig_rd_ptr;
input wire [26 : 0] mig_wr_ptr;
output wire [31 : 0] linux_wr_ptr;
input wire [31 : 0] linux_rd_ptr;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [71 : 0] M_AXI_TDATA_in_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TVALID" *)
output wire M_AXI_TVALID_in_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TREADY" *)
input wire M_AXI_TREADY_in_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [7 : 0] M_AXI_STS_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TVALID" *)
input wire M_AXI_STS_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TREADY" *)
output wire M_AXI_STS_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [71 : 0] M_AXI_TDATA_out_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TVALID" *)
output wire M_AXI_TVALID_out_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TREADY" *)
input wire M_AXI_TREADY_out_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [7 : 0] M_AXI_STS_out_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TVALID" *)
input wire M_AXI_STS_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TREADY" *)
output wire M_AXI_STS_out_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [255 : 0] M_AXI_TDATA_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TVALID" *)
input wire M_AXI_TVALID_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TREADY" *)
output wire M_AXI_TREADY_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [255 : 0] M_AXI_TDATA_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TVALID" *)
output wire M_AXI_TVALID_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TLAST" *)
output wire M_AXI_TLAST_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TREADY" *)
input wire M_AXI_TREADY_out;

  axi_dma inst (
    .clk(clk),
    .resetn(resetn),
    .irq(irq),
    .mig_rd_ptr(mig_rd_ptr),
    .mig_wr_ptr(mig_wr_ptr),
    .linux_wr_ptr(linux_wr_ptr),
    .linux_rd_ptr(linux_rd_ptr),
    .M_AXI_TDATA_in_cmd(M_AXI_TDATA_in_cmd),
    .M_AXI_TVALID_in_cmd(M_AXI_TVALID_in_cmd),
    .M_AXI_TREADY_in_cmd(M_AXI_TREADY_in_cmd),
    .M_AXI_STS_in_tdata(M_AXI_STS_in_tdata),
    .M_AXI_STS_in_tvalid(M_AXI_STS_in_tvalid),
    .M_AXI_STS_in_tready(M_AXI_STS_in_tready),
    .M_AXI_TDATA_out_cmd(M_AXI_TDATA_out_cmd),
    .M_AXI_TVALID_out_cmd(M_AXI_TVALID_out_cmd),
    .M_AXI_TREADY_out_cmd(M_AXI_TREADY_out_cmd),
    .M_AXI_STS_out_tdata(M_AXI_STS_out_tdata),
    .M_AXI_STS_out_tvalid(M_AXI_STS_out_tvalid),
    .M_AXI_STS_out_tready(M_AXI_STS_out_tready),
    .M_AXI_TDATA_in(M_AXI_TDATA_in),
    .M_AXI_TVALID_in(M_AXI_TVALID_in),
    .M_AXI_TREADY_in(M_AXI_TREADY_in),
    .M_AXI_TDATA_out(M_AXI_TDATA_out),
    .M_AXI_TVALID_out(M_AXI_TVALID_out),
    .M_AXI_TLAST_out(M_AXI_TLAST_out),
    .M_AXI_TREADY_out(M_AXI_TREADY_out)
  );
endmodule
