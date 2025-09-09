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


//------------------------------------------------------------------------------------
// Filename:    rfdc_ex_smartconnect_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module rfdc_ex_smartconnect_0_0 (
  input bit_as_bool aclk,
  input bit_as_bool aresetn,
  input bit [0 : 0] S00_AXI_awid,
  input bit [31 : 0] S00_AXI_awaddr,
  input bit [7 : 0] S00_AXI_awlen,
  input bit [2 : 0] S00_AXI_awsize,
  input bit [1 : 0] S00_AXI_awburst,
  input bit [0 : 0] S00_AXI_awlock,
  input bit [3 : 0] S00_AXI_awcache,
  input bit [2 : 0] S00_AXI_awprot,
  input bit [3 : 0] S00_AXI_awqos,
  input bit_as_bool S00_AXI_awvalid,
  output bit_as_bool S00_AXI_awready,
  input bit [31 : 0] S00_AXI_wdata,
  input bit [3 : 0] S00_AXI_wstrb,
  input bit_as_bool S00_AXI_wlast,
  input bit_as_bool S00_AXI_wvalid,
  output bit_as_bool S00_AXI_wready,
  output bit [0 : 0] S00_AXI_bid,
  output bit [1 : 0] S00_AXI_bresp,
  output bit_as_bool S00_AXI_bvalid,
  input bit_as_bool S00_AXI_bready,
  input bit [0 : 0] S00_AXI_arid,
  input bit [31 : 0] S00_AXI_araddr,
  input bit [7 : 0] S00_AXI_arlen,
  input bit [2 : 0] S00_AXI_arsize,
  input bit [1 : 0] S00_AXI_arburst,
  input bit [0 : 0] S00_AXI_arlock,
  input bit [3 : 0] S00_AXI_arcache,
  input bit [2 : 0] S00_AXI_arprot,
  input bit [3 : 0] S00_AXI_arqos,
  input bit_as_bool S00_AXI_arvalid,
  output bit_as_bool S00_AXI_arready,
  output bit [0 : 0] S00_AXI_rid,
  output bit [31 : 0] S00_AXI_rdata,
  output bit [1 : 0] S00_AXI_rresp,
  output bit_as_bool S00_AXI_rlast,
  output bit_as_bool S00_AXI_rvalid,
  input bit_as_bool S00_AXI_rready,
  input bit [39 : 0] S01_AXI_awaddr,
  input bit [2 : 0] S01_AXI_awprot,
  input bit_as_bool S01_AXI_awvalid,
  output bit_as_bool S01_AXI_awready,
  input bit [127 : 0] S01_AXI_wdata,
  input bit [15 : 0] S01_AXI_wstrb,
  input bit_as_bool S01_AXI_wvalid,
  output bit_as_bool S01_AXI_wready,
  output bit [1 : 0] S01_AXI_bresp,
  output bit_as_bool S01_AXI_bvalid,
  input bit_as_bool S01_AXI_bready,
  input bit [39 : 0] S01_AXI_araddr,
  input bit [2 : 0] S01_AXI_arprot,
  input bit_as_bool S01_AXI_arvalid,
  output bit_as_bool S01_AXI_arready,
  output bit [127 : 0] S01_AXI_rdata,
  output bit [1 : 0] S01_AXI_rresp,
  output bit_as_bool S01_AXI_rvalid,
  input bit_as_bool S01_AXI_rready,
  output bit [17 : 0] M00_AXI_awaddr,
  output bit [2 : 0] M00_AXI_awprot,
  output bit_as_bool M00_AXI_awvalid,
  input bit_as_bool M00_AXI_awready,
  output bit [31 : 0] M00_AXI_wdata,
  output bit [3 : 0] M00_AXI_wstrb,
  output bit_as_bool M00_AXI_wvalid,
  input bit_as_bool M00_AXI_wready,
  input bit [1 : 0] M00_AXI_bresp,
  input bit_as_bool M00_AXI_bvalid,
  output bit_as_bool M00_AXI_bready,
  output bit [17 : 0] M00_AXI_araddr,
  output bit [2 : 0] M00_AXI_arprot,
  output bit_as_bool M00_AXI_arvalid,
  input bit_as_bool M00_AXI_arready,
  input bit [31 : 0] M00_AXI_rdata,
  input bit [1 : 0] M00_AXI_rresp,
  input bit_as_bool M00_AXI_rvalid,
  output bit_as_bool M00_AXI_rready,
  output bit [19 : 0] M01_AXI_awaddr,
  output bit [2 : 0] M01_AXI_awprot,
  output bit_as_bool M01_AXI_awvalid,
  input bit_as_bool M01_AXI_awready,
  output bit [31 : 0] M01_AXI_wdata,
  output bit [3 : 0] M01_AXI_wstrb,
  output bit_as_bool M01_AXI_wvalid,
  input bit_as_bool M01_AXI_wready,
  input bit [1 : 0] M01_AXI_bresp,
  input bit_as_bool M01_AXI_bvalid,
  output bit_as_bool M01_AXI_bready,
  output bit [19 : 0] M01_AXI_araddr,
  output bit [2 : 0] M01_AXI_arprot,
  output bit_as_bool M01_AXI_arvalid,
  input bit_as_bool M01_AXI_arready,
  input bit [31 : 0] M01_AXI_rdata,
  input bit [1 : 0] M01_AXI_rresp,
  input bit_as_bool M01_AXI_rvalid,
  output bit_as_bool M01_AXI_rready,
  output bit [19 : 0] M02_AXI_awaddr,
  output bit [2 : 0] M02_AXI_awprot,
  output bit_as_bool M02_AXI_awvalid,
  input bit_as_bool M02_AXI_awready,
  output bit [31 : 0] M02_AXI_wdata,
  output bit [3 : 0] M02_AXI_wstrb,
  output bit_as_bool M02_AXI_wvalid,
  input bit_as_bool M02_AXI_wready,
  input bit [1 : 0] M02_AXI_bresp,
  input bit_as_bool M02_AXI_bvalid,
  output bit_as_bool M02_AXI_bready,
  output bit [19 : 0] M02_AXI_araddr,
  output bit [2 : 0] M02_AXI_arprot,
  output bit_as_bool M02_AXI_arvalid,
  input bit_as_bool M02_AXI_arready,
  input bit [31 : 0] M02_AXI_rdata,
  input bit [1 : 0] M02_AXI_rresp,
  input bit_as_bool M02_AXI_rvalid,
  output bit_as_bool M02_AXI_rready,
  output bit [6 : 0] M03_AXI_awaddr,
  output bit [2 : 0] M03_AXI_awprot,
  output bit_as_bool M03_AXI_awvalid,
  input bit_as_bool M03_AXI_awready,
  output bit [31 : 0] M03_AXI_wdata,
  output bit [3 : 0] M03_AXI_wstrb,
  output bit_as_bool M03_AXI_wvalid,
  input bit_as_bool M03_AXI_wready,
  input bit [1 : 0] M03_AXI_bresp,
  input bit_as_bool M03_AXI_bvalid,
  output bit_as_bool M03_AXI_bready,
  output bit [6 : 0] M03_AXI_araddr,
  output bit [2 : 0] M03_AXI_arprot,
  output bit_as_bool M03_AXI_arvalid,
  input bit_as_bool M03_AXI_arready,
  input bit [31 : 0] M03_AXI_rdata,
  input bit [1 : 0] M03_AXI_rresp,
  input bit_as_bool M03_AXI_rvalid,
  output bit_as_bool M03_AXI_rready,
  output bit [10 : 0] M04_AXI_awaddr,
  output bit [2 : 0] M04_AXI_awprot,
  output bit_as_bool M04_AXI_awvalid,
  input bit_as_bool M04_AXI_awready,
  output bit [31 : 0] M04_AXI_wdata,
  output bit [3 : 0] M04_AXI_wstrb,
  output bit_as_bool M04_AXI_wvalid,
  input bit_as_bool M04_AXI_wready,
  input bit [1 : 0] M04_AXI_bresp,
  input bit_as_bool M04_AXI_bvalid,
  output bit_as_bool M04_AXI_bready,
  output bit [10 : 0] M04_AXI_araddr,
  output bit [2 : 0] M04_AXI_arprot,
  output bit_as_bool M04_AXI_arvalid,
  input bit_as_bool M04_AXI_arready,
  input bit [31 : 0] M04_AXI_rdata,
  input bit [1 : 0] M04_AXI_rresp,
  input bit_as_bool M04_AXI_rvalid,
  output bit_as_bool M04_AXI_rready,
  output bit [10 : 0] M05_AXI_awaddr,
  output bit [2 : 0] M05_AXI_awprot,
  output bit_as_bool M05_AXI_awvalid,
  input bit_as_bool M05_AXI_awready,
  output bit [31 : 0] M05_AXI_wdata,
  output bit [3 : 0] M05_AXI_wstrb,
  output bit_as_bool M05_AXI_wvalid,
  input bit_as_bool M05_AXI_wready,
  input bit [1 : 0] M05_AXI_bresp,
  input bit_as_bool M05_AXI_bvalid,
  output bit_as_bool M05_AXI_bready,
  output bit [10 : 0] M05_AXI_araddr,
  output bit [2 : 0] M05_AXI_arprot,
  output bit_as_bool M05_AXI_arvalid,
  input bit_as_bool M05_AXI_arready,
  input bit [31 : 0] M05_AXI_rdata,
  input bit [1 : 0] M05_AXI_rresp,
  input bit_as_bool M05_AXI_rvalid,
  output bit_as_bool M05_AXI_rready,
  output bit [10 : 0] M06_AXI_awaddr,
  output bit [2 : 0] M06_AXI_awprot,
  output bit_as_bool M06_AXI_awvalid,
  input bit_as_bool M06_AXI_awready,
  output bit [31 : 0] M06_AXI_wdata,
  output bit [3 : 0] M06_AXI_wstrb,
  output bit_as_bool M06_AXI_wvalid,
  input bit_as_bool M06_AXI_wready,
  input bit [1 : 0] M06_AXI_bresp,
  input bit_as_bool M06_AXI_bvalid,
  output bit_as_bool M06_AXI_bready,
  output bit [10 : 0] M06_AXI_araddr,
  output bit [2 : 0] M06_AXI_arprot,
  output bit_as_bool M06_AXI_arvalid,
  input bit_as_bool M06_AXI_arready,
  input bit [31 : 0] M06_AXI_rdata,
  input bit [1 : 0] M06_AXI_rresp,
  input bit_as_bool M06_AXI_rvalid,
  output bit_as_bool M06_AXI_rready,
  output bit [10 : 0] M07_AXI_awaddr,
  output bit [2 : 0] M07_AXI_awprot,
  output bit_as_bool M07_AXI_awvalid,
  input bit_as_bool M07_AXI_awready,
  output bit [31 : 0] M07_AXI_wdata,
  output bit [3 : 0] M07_AXI_wstrb,
  output bit_as_bool M07_AXI_wvalid,
  input bit_as_bool M07_AXI_wready,
  input bit [1 : 0] M07_AXI_bresp,
  input bit_as_bool M07_AXI_bvalid,
  output bit_as_bool M07_AXI_bready,
  output bit [10 : 0] M07_AXI_araddr,
  output bit [2 : 0] M07_AXI_arprot,
  output bit_as_bool M07_AXI_arvalid,
  input bit_as_bool M07_AXI_arready,
  input bit [31 : 0] M07_AXI_rdata,
  input bit [1 : 0] M07_AXI_rresp,
  input bit_as_bool M07_AXI_rvalid,
  output bit_as_bool M07_AXI_rready,
  output bit [10 : 0] M08_AXI_awaddr,
  output bit [2 : 0] M08_AXI_awprot,
  output bit_as_bool M08_AXI_awvalid,
  input bit_as_bool M08_AXI_awready,
  output bit [31 : 0] M08_AXI_wdata,
  output bit [3 : 0] M08_AXI_wstrb,
  output bit_as_bool M08_AXI_wvalid,
  input bit_as_bool M08_AXI_wready,
  input bit [1 : 0] M08_AXI_bresp,
  input bit_as_bool M08_AXI_bvalid,
  output bit_as_bool M08_AXI_bready,
  output bit [10 : 0] M08_AXI_araddr,
  output bit [2 : 0] M08_AXI_arprot,
  output bit_as_bool M08_AXI_arvalid,
  input bit_as_bool M08_AXI_arready,
  input bit [31 : 0] M08_AXI_rdata,
  input bit [1 : 0] M08_AXI_rresp,
  input bit_as_bool M08_AXI_rvalid,
  output bit_as_bool M08_AXI_rready,
  output bit [10 : 0] M09_AXI_awaddr,
  output bit [2 : 0] M09_AXI_awprot,
  output bit_as_bool M09_AXI_awvalid,
  input bit_as_bool M09_AXI_awready,
  output bit [31 : 0] M09_AXI_wdata,
  output bit [3 : 0] M09_AXI_wstrb,
  output bit_as_bool M09_AXI_wvalid,
  input bit_as_bool M09_AXI_wready,
  input bit [1 : 0] M09_AXI_bresp,
  input bit_as_bool M09_AXI_bvalid,
  output bit_as_bool M09_AXI_bready,
  output bit [10 : 0] M09_AXI_araddr,
  output bit [2 : 0] M09_AXI_arprot,
  output bit_as_bool M09_AXI_arvalid,
  input bit_as_bool M09_AXI_arready,
  input bit [31 : 0] M09_AXI_rdata,
  input bit [1 : 0] M09_AXI_rresp,
  input bit_as_bool M09_AXI_rvalid,
  output bit_as_bool M09_AXI_rready,
  output bit [10 : 0] M10_AXI_awaddr,
  output bit [2 : 0] M10_AXI_awprot,
  output bit_as_bool M10_AXI_awvalid,
  input bit_as_bool M10_AXI_awready,
  output bit [31 : 0] M10_AXI_wdata,
  output bit [3 : 0] M10_AXI_wstrb,
  output bit_as_bool M10_AXI_wvalid,
  input bit_as_bool M10_AXI_wready,
  input bit [1 : 0] M10_AXI_bresp,
  input bit_as_bool M10_AXI_bvalid,
  output bit_as_bool M10_AXI_bready,
  output bit [10 : 0] M10_AXI_araddr,
  output bit [2 : 0] M10_AXI_arprot,
  output bit_as_bool M10_AXI_arvalid,
  input bit_as_bool M10_AXI_arready,
  input bit [31 : 0] M10_AXI_rdata,
  input bit [1 : 0] M10_AXI_rresp,
  input bit_as_bool M10_AXI_rvalid,
  output bit_as_bool M10_AXI_rready,
  output bit [10 : 0] M11_AXI_awaddr,
  output bit [2 : 0] M11_AXI_awprot,
  output bit_as_bool M11_AXI_awvalid,
  input bit_as_bool M11_AXI_awready,
  output bit [31 : 0] M11_AXI_wdata,
  output bit [3 : 0] M11_AXI_wstrb,
  output bit_as_bool M11_AXI_wvalid,
  input bit_as_bool M11_AXI_wready,
  input bit [1 : 0] M11_AXI_bresp,
  input bit_as_bool M11_AXI_bvalid,
  output bit_as_bool M11_AXI_bready,
  output bit [10 : 0] M11_AXI_araddr,
  output bit [2 : 0] M11_AXI_arprot,
  output bit_as_bool M11_AXI_arvalid,
  input bit_as_bool M11_AXI_arready,
  input bit [31 : 0] M11_AXI_rdata,
  input bit [1 : 0] M11_AXI_rresp,
  input bit_as_bool M11_AXI_rvalid,
  output bit_as_bool M11_AXI_rready,
  output bit [4 : 0] M12_AXI_awaddr,
  output bit [2 : 0] M12_AXI_awprot,
  output bit_as_bool M12_AXI_awvalid,
  input bit_as_bool M12_AXI_awready,
  output bit [31 : 0] M12_AXI_wdata,
  output bit [3 : 0] M12_AXI_wstrb,
  output bit_as_bool M12_AXI_wvalid,
  input bit_as_bool M12_AXI_wready,
  input bit [1 : 0] M12_AXI_bresp,
  input bit_as_bool M12_AXI_bvalid,
  output bit_as_bool M12_AXI_bready,
  output bit [4 : 0] M12_AXI_araddr,
  output bit [2 : 0] M12_AXI_arprot,
  output bit_as_bool M12_AXI_arvalid,
  input bit_as_bool M12_AXI_arready,
  input bit [31 : 0] M12_AXI_rdata,
  input bit [1 : 0] M12_AXI_rresp,
  input bit_as_bool M12_AXI_rvalid,
  output bit_as_bool M12_AXI_rready,
  input bit [15 : 0] S01_AXI_awid,
  input bit [7 : 0] S01_AXI_awlen,
  input bit [2 : 0] S01_AXI_awsize,
  input bit [1 : 0] S01_AXI_awburst,
  input bit [0 : 0] S01_AXI_awlock,
  input bit [3 : 0] S01_AXI_awcache,
  input bit [3 : 0] S01_AXI_awqos,
  input bit [15 : 0] S01_AXI_awuser,
  input bit_as_bool S01_AXI_wlast,
  output bit [15 : 0] S01_AXI_bid,
  input bit [15 : 0] S01_AXI_arid,
  input bit [7 : 0] S01_AXI_arlen,
  input bit [2 : 0] S01_AXI_arsize,
  input bit [1 : 0] S01_AXI_arburst,
  input bit [0 : 0] S01_AXI_arlock,
  input bit [3 : 0] S01_AXI_arcache,
  input bit [3 : 0] S01_AXI_arqos,
  input bit [15 : 0] S01_AXI_aruser,
  output bit [15 : 0] S01_AXI_rid,
  output bit_as_bool S01_AXI_rlast
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module rfdc_ex_smartconnect_0_0 (aclk,aresetn,S00_AXI_awid,S00_AXI_awaddr,S00_AXI_awlen,S00_AXI_awsize,S00_AXI_awburst,S00_AXI_awlock,S00_AXI_awcache,S00_AXI_awprot,S00_AXI_awqos,S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata,S00_AXI_wstrb,S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bid,S00_AXI_bresp,S00_AXI_bvalid,S00_AXI_bready,S00_AXI_arid,S00_AXI_araddr,S00_AXI_arlen,S00_AXI_arsize,S00_AXI_arburst,S00_AXI_arlock,S00_AXI_arcache,S00_AXI_arprot,S00_AXI_arqos,S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rid,S00_AXI_rdata,S00_AXI_rresp,S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,S01_AXI_awaddr,S01_AXI_awprot,S01_AXI_awvalid,S01_AXI_awready,S01_AXI_wdata,S01_AXI_wstrb,S01_AXI_wvalid,S01_AXI_wready,S01_AXI_bresp,S01_AXI_bvalid,S01_AXI_bready,S01_AXI_araddr,S01_AXI_arprot,S01_AXI_arvalid,S01_AXI_arready,S01_AXI_rdata,S01_AXI_rresp,S01_AXI_rvalid,S01_AXI_rready,M00_AXI_awaddr,M00_AXI_awprot,M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata,M00_AXI_wstrb,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp,M00_AXI_bvalid,M00_AXI_bready,M00_AXI_araddr,M00_AXI_arprot,M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rdata,M00_AXI_rresp,M00_AXI_rvalid,M00_AXI_rready,M01_AXI_awaddr,M01_AXI_awprot,M01_AXI_awvalid,M01_AXI_awready,M01_AXI_wdata,M01_AXI_wstrb,M01_AXI_wvalid,M01_AXI_wready,M01_AXI_bresp,M01_AXI_bvalid,M01_AXI_bready,M01_AXI_araddr,M01_AXI_arprot,M01_AXI_arvalid,M01_AXI_arready,M01_AXI_rdata,M01_AXI_rresp,M01_AXI_rvalid,M01_AXI_rready,M02_AXI_awaddr,M02_AXI_awprot,M02_AXI_awvalid,M02_AXI_awready,M02_AXI_wdata,M02_AXI_wstrb,M02_AXI_wvalid,M02_AXI_wready,M02_AXI_bresp,M02_AXI_bvalid,M02_AXI_bready,M02_AXI_araddr,M02_AXI_arprot,M02_AXI_arvalid,M02_AXI_arready,M02_AXI_rdata,M02_AXI_rresp,M02_AXI_rvalid,M02_AXI_rready,M03_AXI_awaddr,M03_AXI_awprot,M03_AXI_awvalid,M03_AXI_awready,M03_AXI_wdata,M03_AXI_wstrb,M03_AXI_wvalid,M03_AXI_wready,M03_AXI_bresp,M03_AXI_bvalid,M03_AXI_bready,M03_AXI_araddr,M03_AXI_arprot,M03_AXI_arvalid,M03_AXI_arready,M03_AXI_rdata,M03_AXI_rresp,M03_AXI_rvalid,M03_AXI_rready,M04_AXI_awaddr,M04_AXI_awprot,M04_AXI_awvalid,M04_AXI_awready,M04_AXI_wdata,M04_AXI_wstrb,M04_AXI_wvalid,M04_AXI_wready,M04_AXI_bresp,M04_AXI_bvalid,M04_AXI_bready,M04_AXI_araddr,M04_AXI_arprot,M04_AXI_arvalid,M04_AXI_arready,M04_AXI_rdata,M04_AXI_rresp,M04_AXI_rvalid,M04_AXI_rready,M05_AXI_awaddr,M05_AXI_awprot,M05_AXI_awvalid,M05_AXI_awready,M05_AXI_wdata,M05_AXI_wstrb,M05_AXI_wvalid,M05_AXI_wready,M05_AXI_bresp,M05_AXI_bvalid,M05_AXI_bready,M05_AXI_araddr,M05_AXI_arprot,M05_AXI_arvalid,M05_AXI_arready,M05_AXI_rdata,M05_AXI_rresp,M05_AXI_rvalid,M05_AXI_rready,M06_AXI_awaddr,M06_AXI_awprot,M06_AXI_awvalid,M06_AXI_awready,M06_AXI_wdata,M06_AXI_wstrb,M06_AXI_wvalid,M06_AXI_wready,M06_AXI_bresp,M06_AXI_bvalid,M06_AXI_bready,M06_AXI_araddr,M06_AXI_arprot,M06_AXI_arvalid,M06_AXI_arready,M06_AXI_rdata,M06_AXI_rresp,M06_AXI_rvalid,M06_AXI_rready,M07_AXI_awaddr,M07_AXI_awprot,M07_AXI_awvalid,M07_AXI_awready,M07_AXI_wdata,M07_AXI_wstrb,M07_AXI_wvalid,M07_AXI_wready,M07_AXI_bresp,M07_AXI_bvalid,M07_AXI_bready,M07_AXI_araddr,M07_AXI_arprot,M07_AXI_arvalid,M07_AXI_arready,M07_AXI_rdata,M07_AXI_rresp,M07_AXI_rvalid,M07_AXI_rready,M08_AXI_awaddr,M08_AXI_awprot,M08_AXI_awvalid,M08_AXI_awready,M08_AXI_wdata,M08_AXI_wstrb,M08_AXI_wvalid,M08_AXI_wready,M08_AXI_bresp,M08_AXI_bvalid,M08_AXI_bready,M08_AXI_araddr,M08_AXI_arprot,M08_AXI_arvalid,M08_AXI_arready,M08_AXI_rdata,M08_AXI_rresp,M08_AXI_rvalid,M08_AXI_rready,M09_AXI_awaddr,M09_AXI_awprot,M09_AXI_awvalid,M09_AXI_awready,M09_AXI_wdata,M09_AXI_wstrb,M09_AXI_wvalid,M09_AXI_wready,M09_AXI_bresp,M09_AXI_bvalid,M09_AXI_bready,M09_AXI_araddr,M09_AXI_arprot,M09_AXI_arvalid,M09_AXI_arready,M09_AXI_rdata,M09_AXI_rresp,M09_AXI_rvalid,M09_AXI_rready,M10_AXI_awaddr,M10_AXI_awprot,M10_AXI_awvalid,M10_AXI_awready,M10_AXI_wdata,M10_AXI_wstrb,M10_AXI_wvalid,M10_AXI_wready,M10_AXI_bresp,M10_AXI_bvalid,M10_AXI_bready,M10_AXI_araddr,M10_AXI_arprot,M10_AXI_arvalid,M10_AXI_arready,M10_AXI_rdata,M10_AXI_rresp,M10_AXI_rvalid,M10_AXI_rready,M11_AXI_awaddr,M11_AXI_awprot,M11_AXI_awvalid,M11_AXI_awready,M11_AXI_wdata,M11_AXI_wstrb,M11_AXI_wvalid,M11_AXI_wready,M11_AXI_bresp,M11_AXI_bvalid,M11_AXI_bready,M11_AXI_araddr,M11_AXI_arprot,M11_AXI_arvalid,M11_AXI_arready,M11_AXI_rdata,M11_AXI_rresp,M11_AXI_rvalid,M11_AXI_rready,M12_AXI_awaddr,M12_AXI_awprot,M12_AXI_awvalid,M12_AXI_awready,M12_AXI_wdata,M12_AXI_wstrb,M12_AXI_wvalid,M12_AXI_wready,M12_AXI_bresp,M12_AXI_bvalid,M12_AXI_bready,M12_AXI_araddr,M12_AXI_arprot,M12_AXI_arvalid,M12_AXI_arready,M12_AXI_rdata,M12_AXI_rresp,M12_AXI_rvalid,M12_AXI_rready,S01_AXI_awid,S01_AXI_awlen,S01_AXI_awsize,S01_AXI_awburst,S01_AXI_awlock,S01_AXI_awcache,S01_AXI_awqos,S01_AXI_awuser,S01_AXI_wlast,S01_AXI_bid,S01_AXI_arid,S01_AXI_arlen,S01_AXI_arsize,S01_AXI_arburst,S01_AXI_arlock,S01_AXI_arcache,S01_AXI_arqos,S01_AXI_aruser,S01_AXI_rid,S01_AXI_rlast)
(* integer foreign = "SystemC";
*);
  input bit aclk;
  input bit aresetn;
  input bit [0 : 0] S00_AXI_awid;
  input bit [31 : 0] S00_AXI_awaddr;
  input bit [7 : 0] S00_AXI_awlen;
  input bit [2 : 0] S00_AXI_awsize;
  input bit [1 : 0] S00_AXI_awburst;
  input bit [0 : 0] S00_AXI_awlock;
  input bit [3 : 0] S00_AXI_awcache;
  input bit [2 : 0] S00_AXI_awprot;
  input bit [3 : 0] S00_AXI_awqos;
  input bit S00_AXI_awvalid;
  output wire S00_AXI_awready;
  input bit [31 : 0] S00_AXI_wdata;
  input bit [3 : 0] S00_AXI_wstrb;
  input bit S00_AXI_wlast;
  input bit S00_AXI_wvalid;
  output wire S00_AXI_wready;
  output wire [0 : 0] S00_AXI_bid;
  output wire [1 : 0] S00_AXI_bresp;
  output wire S00_AXI_bvalid;
  input bit S00_AXI_bready;
  input bit [0 : 0] S00_AXI_arid;
  input bit [31 : 0] S00_AXI_araddr;
  input bit [7 : 0] S00_AXI_arlen;
  input bit [2 : 0] S00_AXI_arsize;
  input bit [1 : 0] S00_AXI_arburst;
  input bit [0 : 0] S00_AXI_arlock;
  input bit [3 : 0] S00_AXI_arcache;
  input bit [2 : 0] S00_AXI_arprot;
  input bit [3 : 0] S00_AXI_arqos;
  input bit S00_AXI_arvalid;
  output wire S00_AXI_arready;
  output wire [0 : 0] S00_AXI_rid;
  output wire [31 : 0] S00_AXI_rdata;
  output wire [1 : 0] S00_AXI_rresp;
  output wire S00_AXI_rlast;
  output wire S00_AXI_rvalid;
  input bit S00_AXI_rready;
  input bit [39 : 0] S01_AXI_awaddr;
  input bit [2 : 0] S01_AXI_awprot;
  input bit S01_AXI_awvalid;
  output wire S01_AXI_awready;
  input bit [127 : 0] S01_AXI_wdata;
  input bit [15 : 0] S01_AXI_wstrb;
  input bit S01_AXI_wvalid;
  output wire S01_AXI_wready;
  output wire [1 : 0] S01_AXI_bresp;
  output wire S01_AXI_bvalid;
  input bit S01_AXI_bready;
  input bit [39 : 0] S01_AXI_araddr;
  input bit [2 : 0] S01_AXI_arprot;
  input bit S01_AXI_arvalid;
  output wire S01_AXI_arready;
  output wire [127 : 0] S01_AXI_rdata;
  output wire [1 : 0] S01_AXI_rresp;
  output wire S01_AXI_rvalid;
  input bit S01_AXI_rready;
  output wire [17 : 0] M00_AXI_awaddr;
  output wire [2 : 0] M00_AXI_awprot;
  output wire M00_AXI_awvalid;
  input bit M00_AXI_awready;
  output wire [31 : 0] M00_AXI_wdata;
  output wire [3 : 0] M00_AXI_wstrb;
  output wire M00_AXI_wvalid;
  input bit M00_AXI_wready;
  input bit [1 : 0] M00_AXI_bresp;
  input bit M00_AXI_bvalid;
  output wire M00_AXI_bready;
  output wire [17 : 0] M00_AXI_araddr;
  output wire [2 : 0] M00_AXI_arprot;
  output wire M00_AXI_arvalid;
  input bit M00_AXI_arready;
  input bit [31 : 0] M00_AXI_rdata;
  input bit [1 : 0] M00_AXI_rresp;
  input bit M00_AXI_rvalid;
  output wire M00_AXI_rready;
  output wire [19 : 0] M01_AXI_awaddr;
  output wire [2 : 0] M01_AXI_awprot;
  output wire M01_AXI_awvalid;
  input bit M01_AXI_awready;
  output wire [31 : 0] M01_AXI_wdata;
  output wire [3 : 0] M01_AXI_wstrb;
  output wire M01_AXI_wvalid;
  input bit M01_AXI_wready;
  input bit [1 : 0] M01_AXI_bresp;
  input bit M01_AXI_bvalid;
  output wire M01_AXI_bready;
  output wire [19 : 0] M01_AXI_araddr;
  output wire [2 : 0] M01_AXI_arprot;
  output wire M01_AXI_arvalid;
  input bit M01_AXI_arready;
  input bit [31 : 0] M01_AXI_rdata;
  input bit [1 : 0] M01_AXI_rresp;
  input bit M01_AXI_rvalid;
  output wire M01_AXI_rready;
  output wire [19 : 0] M02_AXI_awaddr;
  output wire [2 : 0] M02_AXI_awprot;
  output wire M02_AXI_awvalid;
  input bit M02_AXI_awready;
  output wire [31 : 0] M02_AXI_wdata;
  output wire [3 : 0] M02_AXI_wstrb;
  output wire M02_AXI_wvalid;
  input bit M02_AXI_wready;
  input bit [1 : 0] M02_AXI_bresp;
  input bit M02_AXI_bvalid;
  output wire M02_AXI_bready;
  output wire [19 : 0] M02_AXI_araddr;
  output wire [2 : 0] M02_AXI_arprot;
  output wire M02_AXI_arvalid;
  input bit M02_AXI_arready;
  input bit [31 : 0] M02_AXI_rdata;
  input bit [1 : 0] M02_AXI_rresp;
  input bit M02_AXI_rvalid;
  output wire M02_AXI_rready;
  output wire [6 : 0] M03_AXI_awaddr;
  output wire [2 : 0] M03_AXI_awprot;
  output wire M03_AXI_awvalid;
  input bit M03_AXI_awready;
  output wire [31 : 0] M03_AXI_wdata;
  output wire [3 : 0] M03_AXI_wstrb;
  output wire M03_AXI_wvalid;
  input bit M03_AXI_wready;
  input bit [1 : 0] M03_AXI_bresp;
  input bit M03_AXI_bvalid;
  output wire M03_AXI_bready;
  output wire [6 : 0] M03_AXI_araddr;
  output wire [2 : 0] M03_AXI_arprot;
  output wire M03_AXI_arvalid;
  input bit M03_AXI_arready;
  input bit [31 : 0] M03_AXI_rdata;
  input bit [1 : 0] M03_AXI_rresp;
  input bit M03_AXI_rvalid;
  output wire M03_AXI_rready;
  output wire [10 : 0] M04_AXI_awaddr;
  output wire [2 : 0] M04_AXI_awprot;
  output wire M04_AXI_awvalid;
  input bit M04_AXI_awready;
  output wire [31 : 0] M04_AXI_wdata;
  output wire [3 : 0] M04_AXI_wstrb;
  output wire M04_AXI_wvalid;
  input bit M04_AXI_wready;
  input bit [1 : 0] M04_AXI_bresp;
  input bit M04_AXI_bvalid;
  output wire M04_AXI_bready;
  output wire [10 : 0] M04_AXI_araddr;
  output wire [2 : 0] M04_AXI_arprot;
  output wire M04_AXI_arvalid;
  input bit M04_AXI_arready;
  input bit [31 : 0] M04_AXI_rdata;
  input bit [1 : 0] M04_AXI_rresp;
  input bit M04_AXI_rvalid;
  output wire M04_AXI_rready;
  output wire [10 : 0] M05_AXI_awaddr;
  output wire [2 : 0] M05_AXI_awprot;
  output wire M05_AXI_awvalid;
  input bit M05_AXI_awready;
  output wire [31 : 0] M05_AXI_wdata;
  output wire [3 : 0] M05_AXI_wstrb;
  output wire M05_AXI_wvalid;
  input bit M05_AXI_wready;
  input bit [1 : 0] M05_AXI_bresp;
  input bit M05_AXI_bvalid;
  output wire M05_AXI_bready;
  output wire [10 : 0] M05_AXI_araddr;
  output wire [2 : 0] M05_AXI_arprot;
  output wire M05_AXI_arvalid;
  input bit M05_AXI_arready;
  input bit [31 : 0] M05_AXI_rdata;
  input bit [1 : 0] M05_AXI_rresp;
  input bit M05_AXI_rvalid;
  output wire M05_AXI_rready;
  output wire [10 : 0] M06_AXI_awaddr;
  output wire [2 : 0] M06_AXI_awprot;
  output wire M06_AXI_awvalid;
  input bit M06_AXI_awready;
  output wire [31 : 0] M06_AXI_wdata;
  output wire [3 : 0] M06_AXI_wstrb;
  output wire M06_AXI_wvalid;
  input bit M06_AXI_wready;
  input bit [1 : 0] M06_AXI_bresp;
  input bit M06_AXI_bvalid;
  output wire M06_AXI_bready;
  output wire [10 : 0] M06_AXI_araddr;
  output wire [2 : 0] M06_AXI_arprot;
  output wire M06_AXI_arvalid;
  input bit M06_AXI_arready;
  input bit [31 : 0] M06_AXI_rdata;
  input bit [1 : 0] M06_AXI_rresp;
  input bit M06_AXI_rvalid;
  output wire M06_AXI_rready;
  output wire [10 : 0] M07_AXI_awaddr;
  output wire [2 : 0] M07_AXI_awprot;
  output wire M07_AXI_awvalid;
  input bit M07_AXI_awready;
  output wire [31 : 0] M07_AXI_wdata;
  output wire [3 : 0] M07_AXI_wstrb;
  output wire M07_AXI_wvalid;
  input bit M07_AXI_wready;
  input bit [1 : 0] M07_AXI_bresp;
  input bit M07_AXI_bvalid;
  output wire M07_AXI_bready;
  output wire [10 : 0] M07_AXI_araddr;
  output wire [2 : 0] M07_AXI_arprot;
  output wire M07_AXI_arvalid;
  input bit M07_AXI_arready;
  input bit [31 : 0] M07_AXI_rdata;
  input bit [1 : 0] M07_AXI_rresp;
  input bit M07_AXI_rvalid;
  output wire M07_AXI_rready;
  output wire [10 : 0] M08_AXI_awaddr;
  output wire [2 : 0] M08_AXI_awprot;
  output wire M08_AXI_awvalid;
  input bit M08_AXI_awready;
  output wire [31 : 0] M08_AXI_wdata;
  output wire [3 : 0] M08_AXI_wstrb;
  output wire M08_AXI_wvalid;
  input bit M08_AXI_wready;
  input bit [1 : 0] M08_AXI_bresp;
  input bit M08_AXI_bvalid;
  output wire M08_AXI_bready;
  output wire [10 : 0] M08_AXI_araddr;
  output wire [2 : 0] M08_AXI_arprot;
  output wire M08_AXI_arvalid;
  input bit M08_AXI_arready;
  input bit [31 : 0] M08_AXI_rdata;
  input bit [1 : 0] M08_AXI_rresp;
  input bit M08_AXI_rvalid;
  output wire M08_AXI_rready;
  output wire [10 : 0] M09_AXI_awaddr;
  output wire [2 : 0] M09_AXI_awprot;
  output wire M09_AXI_awvalid;
  input bit M09_AXI_awready;
  output wire [31 : 0] M09_AXI_wdata;
  output wire [3 : 0] M09_AXI_wstrb;
  output wire M09_AXI_wvalid;
  input bit M09_AXI_wready;
  input bit [1 : 0] M09_AXI_bresp;
  input bit M09_AXI_bvalid;
  output wire M09_AXI_bready;
  output wire [10 : 0] M09_AXI_araddr;
  output wire [2 : 0] M09_AXI_arprot;
  output wire M09_AXI_arvalid;
  input bit M09_AXI_arready;
  input bit [31 : 0] M09_AXI_rdata;
  input bit [1 : 0] M09_AXI_rresp;
  input bit M09_AXI_rvalid;
  output wire M09_AXI_rready;
  output wire [10 : 0] M10_AXI_awaddr;
  output wire [2 : 0] M10_AXI_awprot;
  output wire M10_AXI_awvalid;
  input bit M10_AXI_awready;
  output wire [31 : 0] M10_AXI_wdata;
  output wire [3 : 0] M10_AXI_wstrb;
  output wire M10_AXI_wvalid;
  input bit M10_AXI_wready;
  input bit [1 : 0] M10_AXI_bresp;
  input bit M10_AXI_bvalid;
  output wire M10_AXI_bready;
  output wire [10 : 0] M10_AXI_araddr;
  output wire [2 : 0] M10_AXI_arprot;
  output wire M10_AXI_arvalid;
  input bit M10_AXI_arready;
  input bit [31 : 0] M10_AXI_rdata;
  input bit [1 : 0] M10_AXI_rresp;
  input bit M10_AXI_rvalid;
  output wire M10_AXI_rready;
  output wire [10 : 0] M11_AXI_awaddr;
  output wire [2 : 0] M11_AXI_awprot;
  output wire M11_AXI_awvalid;
  input bit M11_AXI_awready;
  output wire [31 : 0] M11_AXI_wdata;
  output wire [3 : 0] M11_AXI_wstrb;
  output wire M11_AXI_wvalid;
  input bit M11_AXI_wready;
  input bit [1 : 0] M11_AXI_bresp;
  input bit M11_AXI_bvalid;
  output wire M11_AXI_bready;
  output wire [10 : 0] M11_AXI_araddr;
  output wire [2 : 0] M11_AXI_arprot;
  output wire M11_AXI_arvalid;
  input bit M11_AXI_arready;
  input bit [31 : 0] M11_AXI_rdata;
  input bit [1 : 0] M11_AXI_rresp;
  input bit M11_AXI_rvalid;
  output wire M11_AXI_rready;
  output wire [4 : 0] M12_AXI_awaddr;
  output wire [2 : 0] M12_AXI_awprot;
  output wire M12_AXI_awvalid;
  input bit M12_AXI_awready;
  output wire [31 : 0] M12_AXI_wdata;
  output wire [3 : 0] M12_AXI_wstrb;
  output wire M12_AXI_wvalid;
  input bit M12_AXI_wready;
  input bit [1 : 0] M12_AXI_bresp;
  input bit M12_AXI_bvalid;
  output wire M12_AXI_bready;
  output wire [4 : 0] M12_AXI_araddr;
  output wire [2 : 0] M12_AXI_arprot;
  output wire M12_AXI_arvalid;
  input bit M12_AXI_arready;
  input bit [31 : 0] M12_AXI_rdata;
  input bit [1 : 0] M12_AXI_rresp;
  input bit M12_AXI_rvalid;
  output wire M12_AXI_rready;
  input bit [15 : 0] S01_AXI_awid;
  input bit [7 : 0] S01_AXI_awlen;
  input bit [2 : 0] S01_AXI_awsize;
  input bit [1 : 0] S01_AXI_awburst;
  input bit [0 : 0] S01_AXI_awlock;
  input bit [3 : 0] S01_AXI_awcache;
  input bit [3 : 0] S01_AXI_awqos;
  input bit [15 : 0] S01_AXI_awuser;
  input bit S01_AXI_wlast;
  output wire [15 : 0] S01_AXI_bid;
  input bit [15 : 0] S01_AXI_arid;
  input bit [7 : 0] S01_AXI_arlen;
  input bit [2 : 0] S01_AXI_arsize;
  input bit [1 : 0] S01_AXI_arburst;
  input bit [0 : 0] S01_AXI_arlock;
  input bit [3 : 0] S01_AXI_arcache;
  input bit [3 : 0] S01_AXI_arqos;
  input bit [15 : 0] S01_AXI_aruser;
  output wire [15 : 0] S01_AXI_rid;
  output wire S01_AXI_rlast;
endmodule
`endif
