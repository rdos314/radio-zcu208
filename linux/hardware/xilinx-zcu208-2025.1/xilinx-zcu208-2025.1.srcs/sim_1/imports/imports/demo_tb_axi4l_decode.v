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

`timescale 1ps / 1ps
module demo_tb_axi4l_decode #(

   parameter loweraddrwidth = 20,
   parameter loweraddrwidth_i = 20,
   parameter decodewidth    = 3,
   parameter strobewidth    = 5,
   parameter axiaddrwidth   = loweraddrwidth_i + decodewidth

   ) (
   (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
   (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_dec_axi, ASSOCIATED_RESET reset" *)
   input  wire clk                ,
   (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
   (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
   input  wire s_axi_aresetn      ,

   // AXI M 0
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi AWADDR"  *) output wire [loweraddrwidth_i-1:0] m0_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi AWVALID" *) output wire                      m0_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi AWREADY" *) input  wire                      m0_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi WDATA"   *) output wire [31:0]               m0_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi WSTRB"   *) output wire  [3:0]               m0_axi_wstrb    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi WVALID"  *) output wire                      m0_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi WREADY"  *) input  wire                      m0_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi BRESP"   *) input  wire  [1:0]               m0_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi BVALID"  *) input  wire                      m0_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi BREADY"  *) output wire                      m0_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi ARADDR"  *) output wire [loweraddrwidth_i-1:0] m0_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi ARVALID" *) output wire                      m0_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi ARREADY" *) input  wire                      m0_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi RDATA"   *) input  wire [31:0]               m0_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi RRESP"   *) input  wire  [1:0]               m0_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi RVALID"  *) input  wire                      m0_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_dec_axi RREADY"  *) output wire                      m0_axi_rready   , // 

   // AXI M 1
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi AWADDR"  *) output wire [loweraddrwidth-1:0] m1_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi AWVALID" *) output wire                      m1_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi AWREADY" *) input  wire                      m1_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi WDATA"   *) output wire [31:0]               m1_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi WSTRB"   *) output wire  [3:0]               m1_axi_wstrb    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi WVALID"  *) output wire                      m1_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi WREADY"  *) input  wire                      m1_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi BRESP"   *) input  wire  [1:0]               m1_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi BVALID"  *) input  wire                      m1_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi BREADY"  *) output wire                      m1_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi ARADDR"  *) output wire [loweraddrwidth-1:0] m1_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi ARVALID" *) output wire                      m1_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi ARREADY" *) input  wire                      m1_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi RDATA"   *) input  wire [31:0]               m1_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi RRESP"   *) input  wire  [1:0]               m1_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi RVALID"  *) input  wire                      m1_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m1_dec_axi RREADY"  *) output wire                      m1_axi_rready   , // 

   // AXI M 2
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi AWADDR"  *) output wire [loweraddrwidth-1:0] m2_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi AWVALID" *) output wire                      m2_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi AWREADY" *) input  wire                      m2_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi WDATA"   *) output wire [31:0]               m2_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi WSTRB"   *) output wire  [3:0]               m2_axi_wstrb    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi WVALID"  *) output wire                      m2_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi WREADY"  *) input  wire                      m2_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi BRESP"   *) input  wire  [1:0]               m2_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi BVALID"  *) input  wire                      m2_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi BREADY"  *) output wire                      m2_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi ARADDR"  *) output wire [loweraddrwidth-1:0] m2_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi ARVALID" *) output wire                      m2_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi ARREADY" *) input  wire                      m2_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi RDATA"   *) input  wire [31:0]               m2_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi RRESP"   *) input  wire  [1:0]               m2_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi RVALID"  *) input  wire                      m2_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m2_dec_axi RREADY"  *) output wire                      m2_axi_rready   , // 

   // AXI M 3
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi AWADDR"  *) output wire [loweraddrwidth-1:0] m3_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi AWVALID" *) output wire                      m3_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi AWREADY" *) input  wire                      m3_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi WDATA"   *) output wire [31:0]               m3_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi WSTRB"   *) output wire  [3:0]               m3_axi_wstrb    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi WVALID"  *) output wire                      m3_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi WREADY"  *) input  wire                      m3_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi BRESP"   *) input  wire  [1:0]               m3_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi BVALID"  *) input  wire                      m3_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi BREADY"  *) output wire                      m3_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi ARADDR"  *) output wire [loweraddrwidth-1:0] m3_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi ARVALID" *) output wire                      m3_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi ARREADY" *) input  wire                      m3_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi RDATA"   *) input  wire [31:0]               m3_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi RRESP"   *) input  wire  [1:0]               m3_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi RVALID"  *) input  wire                      m3_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m3_dec_axi RREADY"  *) output wire                      m3_axi_rready   , // 

   // AXI M 4
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi AWADDR"  *) output wire [loweraddrwidth-1:0] m4_axi_awaddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi AWVALID" *) output wire                      m4_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi AWREADY" *) input  wire                      m4_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi WDATA"   *) output wire [31:0]               m4_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi WSTRB"   *) output wire  [3:0]               m4_axi_wstrb    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi WVALID"  *) output wire                      m4_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi WREADY"  *) input  wire                      m4_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi BRESP"   *) input  wire  [1:0]               m4_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi BVALID"  *) input  wire                      m4_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi BREADY"  *) output wire                      m4_axi_bready   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi ARADDR"  *) output wire [loweraddrwidth-1:0] m4_axi_araddr   , //
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi ARVALID" *) output wire                      m4_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi ARREADY" *) input  wire                      m4_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi RDATA"   *) input  wire [31:0]               m4_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi RRESP"   *) input  wire  [1:0]               m4_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi RVALID"  *) input  wire                      m4_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m4_dec_axi RREADY"  *) output wire                      m4_axi_rready   , // 

   
   // AXI-Lite Interface
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi AWADDR"  *) input  wire [axiaddrwidth-1:0] s_axi_awaddr   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi AWVALID" *) input  wire                    s_axi_awvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi AWREADY" *) output reg                     s_axi_awready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WDATA"   *) input  wire [31:0]             s_axi_wdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WSTRB"   *) input  wire  [3:0]             s_axi_wstrb    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WVALID"  *) input  wire                    s_axi_wvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi WREADY"  *) output reg                     s_axi_wready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi BRESP"   *) output reg   [1:0]             s_axi_bresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi BVALID"  *) output reg                     s_axi_bvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi BREADY"  *) input  wire                    s_axi_bready   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi ARADDR"  *) input  wire [axiaddrwidth-1:0] s_axi_araddr   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi ARVALID" *) input  wire                    s_axi_arvalid  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi ARREADY" *) output reg                     s_axi_arready  , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RDATA"   *) output reg  [31:0]             s_axi_rdata    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RRESP"   *) output reg   [1:0]             s_axi_rresp    , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RVALID"  *) output reg                     s_axi_rvalid   , // 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_dec_axi RREADY"  *) input  wire                    s_axi_rready     // 

);

// new signals
wire [strobewidth-1:0]               strobe_w;
wire [strobewidth-1:0]               strobe_r;
reg  [strobewidth-1:0]               strobe_rr = 0;
reg  [strobewidth-1:0]               strobe_ww = 0;
wire [strobewidth-1:0]               strobe_w_m;
wire [strobewidth-1:0]               strobe_r_m;

wire [axiaddrwidth-1:loweraddrwidth_i] address_decode_w;
wire [axiaddrwidth-1:loweraddrwidth_i] address_decode_r;
reg  [axiaddrwidth-1:loweraddrwidth_i] address_decode_rr=0;
reg  [axiaddrwidth-1:loweraddrwidth_i] address_decode_ww=0;
wire [axiaddrwidth-1:loweraddrwidth_i] address_decode_w_m;
wire [axiaddrwidth-1:loweraddrwidth_i] address_decode_r_m;

reg                                    w_inFlight=0;
reg                                    r_inFlight=0;

assign address_decode_w = s_axi_awaddr[axiaddrwidth-1:loweraddrwidth_i];
assign address_decode_r = s_axi_araddr[axiaddrwidth-1:loweraddrwidth_i];

assign strobe_w[0] = address_decode_w == 0 ? 1 : 0;
assign strobe_r[0] = address_decode_r == 0 ? 1 : 0;
assign strobe_w[1] = address_decode_w == 1 ? 1 : 0;
assign strobe_r[1] = address_decode_r == 1 ? 1 : 0;
assign strobe_w[2] = address_decode_w == 2 ? 1 : 0;
assign strobe_r[2] = address_decode_r == 2 ? 1 : 0;
assign strobe_w[3] = address_decode_w == 3 ? 1 : 0;
assign strobe_r[3] = address_decode_r == 3 ? 1 : 0;
assign strobe_w[4] = address_decode_w == 4 ? 1 : 0;
assign strobe_r[4] = address_decode_r == 4 ? 1 : 0;

// Does not need a reset. Only stores when valid   
always @(posedge clk) begin
   if(s_axi_arvalid) begin
      strobe_rr         <= strobe_r;
   end
   if(s_axi_arvalid & s_axi_arready) begin
      address_decode_rr <= address_decode_r;
   end
   if(s_axi_awvalid) begin
      strobe_ww         <= strobe_w;
   end
   if(s_axi_awvalid & s_axi_awready) begin
      address_decode_ww <= address_decode_w;
   end
end

// In flight strobes. Our AXI4 enpoints can only handle one transaction at a time, and 
// we need to keep a track of the address used to decode the strobes back to the master.
// We can register the decoded strobe's (see above), but we also need to know when an 
// access in flight or not so the correct address is used for mux/demuxuing the strobes.
// We can only decode the strobes using the address, therefore an access is started when
// we decode an address.

always @(posedge clk) begin
   if(~w_inFlight)
      if(s_axi_awvalid & s_axi_awready)
         w_inFlight <= 1'd1;
      else
         w_inFlight <= w_inFlight;
   else
      if((s_axi_bready & s_axi_bvalid) & (~(s_axi_awvalid & s_axi_awready)) )
         w_inFlight <= 1'd0;
      else
         w_inFlight <= w_inFlight;
end

always @(posedge clk) begin
   if(~r_inFlight)
      if(s_axi_arvalid & s_axi_arready)
         r_inFlight <= 1'd1;
      else
         r_inFlight <= r_inFlight;
   else
      if((s_axi_rready & s_axi_rvalid) & (~(s_axi_arvalid & s_axi_arready)) )
         r_inFlight <= 1'd0;
      else
         r_inFlight <= r_inFlight;
end


// If the incoming address is valid&ready or we valid&notInFlight, we must use the incoming
// address, otherwise use the locally registerd address.
// The logic is the same for both the read and write channels

assign strobe_r_m         = (s_axi_arvalid & s_axi_arready) | (~r_inFlight & s_axi_arvalid) ? strobe_r         : strobe_rr;
assign address_decode_r_m = (s_axi_arvalid & s_axi_arready) | (~r_inFlight & s_axi_arvalid) ? address_decode_r : address_decode_rr;

assign strobe_w_m         = (s_axi_awvalid & s_axi_awready) | (~w_inFlight & s_axi_awvalid) ? strobe_w         : strobe_ww;
assign address_decode_w_m = (s_axi_awvalid & s_axi_awready) | (~w_inFlight & s_axi_awvalid) ? address_decode_w : address_decode_ww;

// Signal pass throughs

 assign m0_axi_awaddr   = s_axi_awaddr  ; // 
 assign m0_axi_wdata    = s_axi_wdata   ; // 
 assign m0_axi_araddr   = s_axi_araddr  ; //
 assign m1_axi_awaddr   = s_axi_awaddr[loweraddrwidth-1:0]  ; // 
 assign m1_axi_wdata    = s_axi_wdata   ; // 
 assign m1_axi_araddr   = s_axi_araddr[loweraddrwidth-1:0]  ; //
 assign m2_axi_awaddr   = s_axi_awaddr[loweraddrwidth-1:0]  ; // 
 assign m2_axi_wdata    = s_axi_wdata   ; // 
 assign m2_axi_araddr   = s_axi_araddr[loweraddrwidth-1:0]  ; //
 assign m3_axi_awaddr   = s_axi_awaddr[loweraddrwidth-1:0]  ; // 
 assign m3_axi_wdata    = s_axi_wdata   ; // 
 assign m3_axi_araddr   = s_axi_araddr[loweraddrwidth-1:0]  ; //
 assign m4_axi_awaddr   = s_axi_awaddr[loweraddrwidth-1:0]  ; // 
 assign m4_axi_wdata    = s_axi_wdata   ; // 
 assign m4_axi_araddr   = s_axi_araddr[loweraddrwidth-1:0]  ; //

always @(*) begin
case(address_decode_r_m)

'd0    : begin
          s_axi_rdata   = m0_axi_rdata  ; //
          s_axi_rresp   = m0_axi_rresp  ; //
          s_axi_rvalid  = m0_axi_rvalid ; //
          end

'd1    : begin
          s_axi_rdata   = m1_axi_rdata  ; //
          s_axi_rresp   = m1_axi_rresp  ; //
          s_axi_rvalid  = m1_axi_rvalid ; //
          end

'd2    : begin
          s_axi_rdata   = m2_axi_rdata  ; //
          s_axi_rresp   = m2_axi_rresp  ; //
          s_axi_rvalid  = m2_axi_rvalid ; //
          end

'd3    : begin
          s_axi_rdata   = m3_axi_rdata  ; //
          s_axi_rresp   = m3_axi_rresp  ; //
          s_axi_rvalid  = m3_axi_rvalid ; //
          end

'd4    : begin
          s_axi_rdata   = m4_axi_rdata  ; //
          s_axi_rresp   = m4_axi_rresp  ; //
          s_axi_rvalid  = m4_axi_rvalid ; //
          end

   
default:  begin
          s_axi_rdata   = 'd0 ; //
          s_axi_rresp   = 'd0 ; //
          s_axi_rvalid  = 'd0 ; //
          end
endcase
end

always @(*) begin
case(address_decode_r)

'd0    : begin
          s_axi_arready = m0_axi_arready ; //
          end

'd1    : begin
          s_axi_arready = m1_axi_arready ; //
          end

'd2    : begin
          s_axi_arready = m2_axi_arready ; //
          end

'd3    : begin
          s_axi_arready = m3_axi_arready ; //
          end

'd4    : begin
          s_axi_arready = m4_axi_arready ; //
          end

   
default:  begin
          s_axi_arready = 'd0 ; //
          end
endcase
end

always @(*) begin
case(address_decode_w_m)

'd0    : begin
          s_axi_wready   = m0_axi_wready ; //
          s_axi_bresp    = m0_axi_bresp  ; //
          s_axi_bvalid   = m0_axi_bvalid ; //
          end

'd1    : begin
          s_axi_wready   = m1_axi_wready ; //
          s_axi_bresp    = m1_axi_bresp  ; //
          s_axi_bvalid   = m1_axi_bvalid ; //
          end

'd2    : begin
          s_axi_wready   = m2_axi_wready ; //
          s_axi_bresp    = m2_axi_bresp  ; //
          s_axi_bvalid   = m2_axi_bvalid ; //
          end

'd3    : begin
          s_axi_wready   = m3_axi_wready ; //
          s_axi_bresp    = m3_axi_bresp  ; //
          s_axi_bvalid   = m3_axi_bvalid ; //
          end

'd4    : begin
          s_axi_wready   = m4_axi_wready ; //
          s_axi_bresp    = m4_axi_bresp  ; //
          s_axi_bvalid   = m4_axi_bvalid ; //
          end

   
default:  begin
          s_axi_wready   = 'd0 ; //
          s_axi_bresp    = 'd0 ; //
          s_axi_bvalid   = 'd0 ; //
          end
endcase
end

always @(*) begin
case(address_decode_w)

'd0    : begin
          s_axi_awready  = m0_axi_awready; //
          end

'd1    : begin
          s_axi_awready  = m1_axi_awready; //
          end

'd2    : begin
          s_axi_awready  = m2_axi_awready; //
          end

'd3    : begin
          s_axi_awready  = m3_axi_awready; //
          end

'd4    : begin
          s_axi_awready  = m4_axi_awready; //
          end

   
default:  begin
          s_axi_awready  = 'd0 ; //
          end
endcase
end

assign m0_axi_awvalid  = strobe_w_m[0] ? s_axi_awvalid : 'd0 ; // 
assign m0_axi_wvalid   = strobe_w_m[0] ? s_axi_wvalid  : 'd0 ; // 
assign m0_axi_wstrb    = strobe_w_m[0] ? s_axi_wstrb   : 'd0 ; // 
assign m0_axi_bready   = strobe_w_m[0] ? s_axi_bready  : 'd0 ; // 
assign m0_axi_arvalid  = strobe_r_m[0] ? s_axi_arvalid : 'd0 ; // 
assign m0_axi_rready   = strobe_r_m[0] ? s_axi_rready  : 'd0 ; // 

assign m1_axi_awvalid  = strobe_w_m[1] ? s_axi_awvalid : 'd0 ; // 
assign m1_axi_wvalid   = strobe_w_m[1] ? s_axi_wvalid  : 'd0 ; // 
assign m1_axi_wstrb    = strobe_w_m[1] ? s_axi_wstrb   : 'd0 ; // 
assign m1_axi_bready   = strobe_w_m[1] ? s_axi_bready  : 'd0 ; // 
assign m1_axi_arvalid  = strobe_r_m[1] ? s_axi_arvalid : 'd0 ; // 
assign m1_axi_rready   = strobe_r_m[1] ? s_axi_rready  : 'd0 ; // 

assign m2_axi_awvalid  = strobe_w_m[2] ? s_axi_awvalid : 'd0 ; // 
assign m2_axi_wvalid   = strobe_w_m[2] ? s_axi_wvalid  : 'd0 ; // 
assign m2_axi_wstrb    = strobe_w_m[2] ? s_axi_wstrb   : 'd0 ; // 
assign m2_axi_bready   = strobe_w_m[2] ? s_axi_bready  : 'd0 ; // 
assign m2_axi_arvalid  = strobe_r_m[2] ? s_axi_arvalid : 'd0 ; // 
assign m2_axi_rready   = strobe_r_m[2] ? s_axi_rready  : 'd0 ; // 

assign m3_axi_awvalid  = strobe_w_m[3] ? s_axi_awvalid : 'd0 ; // 
assign m3_axi_wvalid   = strobe_w_m[3] ? s_axi_wvalid  : 'd0 ; // 
assign m3_axi_wstrb    = strobe_w_m[3] ? s_axi_wstrb   : 'd0 ; // 
assign m3_axi_bready   = strobe_w_m[3] ? s_axi_bready  : 'd0 ; // 
assign m3_axi_arvalid  = strobe_r_m[3] ? s_axi_arvalid : 'd0 ; // 
assign m3_axi_rready   = strobe_r_m[3] ? s_axi_rready  : 'd0 ; // 

assign m4_axi_awvalid  = strobe_w_m[4] ? s_axi_awvalid : 'd0 ; // 
assign m4_axi_wvalid   = strobe_w_m[4] ? s_axi_wvalid  : 'd0 ; // 
assign m4_axi_wstrb    = strobe_w_m[4] ? s_axi_wstrb   : 'd0 ; // 
assign m4_axi_bready   = strobe_w_m[4] ? s_axi_bready  : 'd0 ; // 
assign m4_axi_arvalid  = strobe_r_m[4] ? s_axi_arvalid : 'd0 ; // 
assign m4_axi_rready   = strobe_r_m[4] ? s_axi_rready  : 'd0 ; // 


endmodule
