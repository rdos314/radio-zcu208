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


// IP VLNV: xilinx.com:module_ref:exdes_tddrtsctrl:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module rfdc_ex_tdd_module_i_0 (
  dac0_clk,
  dac1_clk,
  dac2_clk,
  dac3_clk,
  adc0_clk,
  adc1_clk,
  adc2_clk,
  adc3_clk,
  dac00_tdd_mode,
  dac01_tdd_mode,
  dac02_tdd_mode,
  dac03_tdd_mode,
  dac10_tdd_mode,
  dac11_tdd_mode,
  dac12_tdd_mode,
  dac13_tdd_mode,
  dac20_tdd_mode,
  dac21_tdd_mode,
  dac22_tdd_mode,
  dac23_tdd_mode,
  dac30_tdd_mode,
  dac31_tdd_mode,
  dac32_tdd_mode,
  dac33_tdd_mode,
  adc00_tdd_mode,
  adc01_tdd_mode,
  adc02_tdd_mode,
  adc03_tdd_mode,
  adc10_tdd_mode,
  adc11_tdd_mode,
  adc12_tdd_mode,
  adc13_tdd_mode,
  adc20_tdd_mode,
  adc21_tdd_mode,
  adc22_tdd_mode,
  adc23_tdd_mode,
  adc30_tdd_mode,
  adc31_tdd_mode,
  adc32_tdd_mode,
  adc33_tdd_mode,
  hw_trigger_en_0,
  trigger_0,
  hw_trigger_en_1,
  trigger_1,
  hw_trigger_en_2,
  trigger_2,
  hw_trigger_en_3,
  trigger_3,
  trigger_ext,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_wstrb,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  s_axi_aclk,
  s_axi_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac0_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac0_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0" *)
input wire dac0_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac1_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac1_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, INSERT_VIP 0" *)
input wire dac1_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac2_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac2_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0" *)
input wire dac2_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac3_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac3_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, INSERT_VIP 0" *)
input wire dac3_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc0_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc0_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0" *)
input wire adc0_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc1_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc1_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0" *)
input wire adc1_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc2_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc2_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, INSERT_VIP 0" *)
input wire adc2_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc3_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc3_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, INSERT_VIP 0" *)
input wire adc3_clk;
output wire [0 : 0] dac00_tdd_mode;
output wire [0 : 0] dac01_tdd_mode;
output wire [0 : 0] dac02_tdd_mode;
output wire [0 : 0] dac03_tdd_mode;
output wire [0 : 0] dac10_tdd_mode;
output wire [0 : 0] dac11_tdd_mode;
output wire [0 : 0] dac12_tdd_mode;
output wire [0 : 0] dac13_tdd_mode;
output wire [0 : 0] dac20_tdd_mode;
output wire [0 : 0] dac21_tdd_mode;
output wire [0 : 0] dac22_tdd_mode;
output wire [0 : 0] dac23_tdd_mode;
output wire [0 : 0] dac30_tdd_mode;
output wire [0 : 0] dac31_tdd_mode;
output wire [0 : 0] dac32_tdd_mode;
output wire [0 : 0] dac33_tdd_mode;
output wire [0 : 0] adc00_tdd_mode;
output wire [0 : 0] adc01_tdd_mode;
output wire [0 : 0] adc02_tdd_mode;
output wire [0 : 0] adc03_tdd_mode;
output wire [0 : 0] adc10_tdd_mode;
output wire [0 : 0] adc11_tdd_mode;
output wire [0 : 0] adc12_tdd_mode;
output wire [0 : 0] adc13_tdd_mode;
output wire [0 : 0] adc20_tdd_mode;
output wire [0 : 0] adc21_tdd_mode;
output wire [0 : 0] adc22_tdd_mode;
output wire [0 : 0] adc23_tdd_mode;
output wire [0 : 0] adc30_tdd_mode;
output wire [0 : 0] adc31_tdd_mode;
output wire [0 : 0] adc32_tdd_mode;
output wire [0 : 0] adc33_tdd_mode;
output wire hw_trigger_en_0;
output wire trigger_0;
output wire hw_trigger_en_1;
output wire trigger_1;
output wire hw_trigger_en_2;
output wire trigger_2;
output wire hw_trigger_en_3;
output wire trigger_3;
output wire trigger_ext;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 57500000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, R\
USER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [6 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [6 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 57500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, INSERT_VIP 0" *)
input wire s_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s_axi_aresetn;

  exdes_tddrtsctrl #(
    .C_COUNT_WIDTH(19),
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_ADDR_WIDTH(7)
  ) inst (
    .dac0_clk(dac0_clk),
    .dac1_clk(dac1_clk),
    .dac2_clk(dac2_clk),
    .dac3_clk(dac3_clk),
    .adc0_clk(adc0_clk),
    .adc1_clk(adc1_clk),
    .adc2_clk(adc2_clk),
    .adc3_clk(adc3_clk),
    .dac00_tdd_mode(dac00_tdd_mode),
    .dac01_tdd_mode(dac01_tdd_mode),
    .dac02_tdd_mode(dac02_tdd_mode),
    .dac03_tdd_mode(dac03_tdd_mode),
    .dac10_tdd_mode(dac10_tdd_mode),
    .dac11_tdd_mode(dac11_tdd_mode),
    .dac12_tdd_mode(dac12_tdd_mode),
    .dac13_tdd_mode(dac13_tdd_mode),
    .dac20_tdd_mode(dac20_tdd_mode),
    .dac21_tdd_mode(dac21_tdd_mode),
    .dac22_tdd_mode(dac22_tdd_mode),
    .dac23_tdd_mode(dac23_tdd_mode),
    .dac30_tdd_mode(dac30_tdd_mode),
    .dac31_tdd_mode(dac31_tdd_mode),
    .dac32_tdd_mode(dac32_tdd_mode),
    .dac33_tdd_mode(dac33_tdd_mode),
    .adc00_tdd_mode(adc00_tdd_mode),
    .adc01_tdd_mode(adc01_tdd_mode),
    .adc02_tdd_mode(adc02_tdd_mode),
    .adc03_tdd_mode(adc03_tdd_mode),
    .adc10_tdd_mode(adc10_tdd_mode),
    .adc11_tdd_mode(adc11_tdd_mode),
    .adc12_tdd_mode(adc12_tdd_mode),
    .adc13_tdd_mode(adc13_tdd_mode),
    .adc20_tdd_mode(adc20_tdd_mode),
    .adc21_tdd_mode(adc21_tdd_mode),
    .adc22_tdd_mode(adc22_tdd_mode),
    .adc23_tdd_mode(adc23_tdd_mode),
    .adc30_tdd_mode(adc30_tdd_mode),
    .adc31_tdd_mode(adc31_tdd_mode),
    .adc32_tdd_mode(adc32_tdd_mode),
    .adc33_tdd_mode(adc33_tdd_mode),
    .hw_trigger_en_0(hw_trigger_en_0),
    .trigger_0(trigger_0),
    .hw_trigger_en_1(hw_trigger_en_1),
    .trigger_1(trigger_1),
    .hw_trigger_en_2(hw_trigger_en_2),
    .trigger_2(trigger_2),
    .hw_trigger_en_3(hw_trigger_en_3),
    .trigger_3(trigger_3),
    .trigger_ext(trigger_ext),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn)
  );
endmodule
