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

//----------------------------------------------------------------------------
// Title : RF Analyzer TDD control counter
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
`timescale 1ps / 1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module exdes_tddrtsctrl #(
    parameter C_COUNT_WIDTH      = 19,
    parameter C_S_AXI_DATA_WIDTH = 32,
    parameter C_S_AXI_ADDR_WIDTH = 7)
(
    input wire dac0_clk,
    input wire dac1_clk,
    input wire dac2_clk,
    input wire dac3_clk,
    input wire adc0_clk,
    input wire adc1_clk,
    input wire adc2_clk,
    input wire adc3_clk,
    output reg [0:0] dac00_tdd_mode,
    output reg [0:0] dac01_tdd_mode,
    output reg [0:0] dac02_tdd_mode,
    output reg [0:0] dac03_tdd_mode,
    output reg [0:0] dac10_tdd_mode,
    output reg [0:0] dac11_tdd_mode,
    output reg [0:0] dac12_tdd_mode,
    output reg [0:0] dac13_tdd_mode,
    output reg [0:0] dac20_tdd_mode,
    output reg [0:0] dac21_tdd_mode,
    output reg [0:0] dac22_tdd_mode,
    output reg [0:0] dac23_tdd_mode,
    output reg [0:0] dac30_tdd_mode,
    output reg [0:0] dac31_tdd_mode,
    output reg [0:0] dac32_tdd_mode,
    output reg [0:0] dac33_tdd_mode,
    output reg [0:0] adc00_tdd_mode,
    output reg [0:0] adc01_tdd_mode,
    output reg [0:0] adc02_tdd_mode,
    output reg [0:0] adc03_tdd_mode,
    output reg [0:0] adc10_tdd_mode,
    output reg [0:0] adc11_tdd_mode,
    output reg [0:0] adc12_tdd_mode,
    output reg [0:0] adc13_tdd_mode,
    output reg [0:0] adc20_tdd_mode,
    output reg [0:0] adc21_tdd_mode,
    output reg [0:0] adc22_tdd_mode,
    output reg [0:0] adc23_tdd_mode,
    output reg [0:0] adc30_tdd_mode,
    output reg [0:0] adc31_tdd_mode,
    output reg [0:0] adc32_tdd_mode,
    output reg [0:0] adc33_tdd_mode,

    output reg  hw_trigger_en_0,
    output wire trigger_0,
    output reg  hw_trigger_en_1,
    output wire trigger_1,
    output reg  hw_trigger_en_2,
    output wire trigger_2,
    output reg  hw_trigger_en_3,
    output wire trigger_3,

    output wire trigger_ext,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR"  *) input  wire       [C_S_AXI_ADDR_WIDTH-1:0]  s_axi_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT"  *) input  wire                          [2:0]  s_axi_awprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input  wire                                 s_axi_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output wire                                 s_axi_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA"   *) input  wire       [C_S_AXI_DATA_WIDTH-1:0]  s_axi_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID"  *) input  wire                                 s_axi_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY"  *) output wire                                 s_axi_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB"   *) input  wire   [(C_S_AXI_DATA_WIDTH/8)-1:0]  s_axi_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP"   *) output wire                          [1:0]  s_axi_bresp, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID"  *) output wire                                 s_axi_bvalid, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY"  *) input  wire                                 s_axi_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR"  *) input  wire       [C_S_AXI_ADDR_WIDTH-1:0]  s_axi_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT"  *) input  wire                          [2:0]  s_axi_arprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input  wire                                 s_axi_arvalid, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output wire                                 s_axi_arready, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA"   *) output wire       [C_S_AXI_DATA_WIDTH-1:0]  s_axi_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP"   *) output wire                          [1:0]  s_axi_rresp, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID"  *) output wire                                 s_axi_rvalid, 
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY"  *) input  wire                                 s_axi_rready,
    
    // AXI-Lite Clock/Reset. Be explicit with the IPI interface declarations
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axi" *)
    input  wire           s_axi_aclk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire           s_axi_aresetn
);
    
    localparam C_TRIG_WIDTH   = 20;
    localparam C_MAX_SYMBOLS  = 10;
    localparam C_SYMBOL_WIDTH = 17;

    wire [3:0] dac0_tdd_mode_sig;
    wire [3:0] dac1_tdd_mode_sig;
    wire [3:0] dac2_tdd_mode_sig;
    wire [3:0] dac3_tdd_mode_sig;
    wire [3:0] adc0_tdd_mode_sig;
    wire [3:0] adc1_tdd_mode_sig;
    wire [3:0] adc2_tdd_mode_sig;
    wire [3:0] adc3_tdd_mode_sig;
    
    wire [C_COUNT_WIDTH-1:0] dac0_tdd_delay;
    wire [C_COUNT_WIDTH-1:0] dac1_tdd_delay;
    wire [C_COUNT_WIDTH-1:0] dac2_tdd_delay;
    wire [C_COUNT_WIDTH-1:0] dac3_tdd_delay;

    wire [C_COUNT_WIDTH-1:0] adc0_tdd_delay;
    wire [C_COUNT_WIDTH-1:0] adc1_tdd_delay;
    wire [C_COUNT_WIDTH-1:0] adc2_tdd_delay;
    wire [C_COUNT_WIDTH-1:0] adc3_tdd_delay;
    
    wire [C_TRIG_WIDTH-1:0] tile0_trig_delay;
    wire [C_TRIG_WIDTH-1:0] tile1_trig_delay;
    wire [C_TRIG_WIDTH-1:0] tile2_trig_delay;
    wire [C_TRIG_WIDTH-1:0] tile3_trig_delay;

    wire [16:0] slot_length;
    wire [16:0] guard_length;
    wire [16:0] symbol_length;
    wire [9:0]  symbol_type;
    wire [1:0]  mode;    
    wire [C_SYMBOL_WIDTH-1:0] trig_symbol;
    wire [3:0] trig_ofdm;
    reg  auto_trig;
    wire trig;
    
    wire trigger;
    wire [3:0] enable;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile0_meta;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile0_sync;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile1_meta;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile1_sync;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile2_meta;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile2_sync;
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile3_meta;   
    (* ASYNC_REG = "true" *) reg enablehwtrig_tile3_sync;
   
    
    reg  [C_SYMBOL_WIDTH-1:0] symbol_count;
    reg  [3:0] ofdm_count;
    reg  symbol_inc;
    wire ul_dl;
    reg  guard_active;
    wire rst_cnt;

    // Instantiation of Axi Bus Interface S00_AXI
    exdes_tddrtsctrl_S_AXI
    #(  .C_COUNT_WIDTH      (C_COUNT_WIDTH),
        .C_SYMBOL_WIDTH     (C_SYMBOL_WIDTH),
        .C_TRIG_WIDTH       (C_TRIG_WIDTH),
        .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH)
    ) exdes_tddrtsctrl_S_AXI_inst (
        .S_AXI_ACLK       (s_axi_aclk),
        .S_AXI_ARESETN    (s_axi_aresetn),
        .S_AXI_AWADDR     (s_axi_awaddr),
        .S_AXI_AWPROT     (s_axi_awprot),
        .S_AXI_AWVALID    (s_axi_awvalid),
        .S_AXI_AWREADY    (s_axi_awready),
        .S_AXI_WDATA      (s_axi_wdata),
        .S_AXI_WSTRB      (s_axi_wstrb),
        .S_AXI_WVALID     (s_axi_wvalid),
        .S_AXI_WREADY     (s_axi_wready),
        .S_AXI_BRESP      (s_axi_bresp),
        .S_AXI_BVALID     (s_axi_bvalid),
        .S_AXI_BREADY     (s_axi_bready),
        .S_AXI_ARADDR     (s_axi_araddr),
        .S_AXI_ARPROT     (s_axi_arprot),
        .S_AXI_ARVALID    (s_axi_arvalid),
        .S_AXI_ARREADY    (s_axi_arready),
        .S_AXI_RDATA      (s_axi_rdata),
        .S_AXI_RRESP      (s_axi_rresp),
        .S_AXI_RVALID     (s_axi_rvalid),
        .S_AXI_RREADY     (s_axi_rready),
        
        .dac0_tdd_mode    (dac0_tdd_mode_sig),   
        .dac1_tdd_mode    (dac1_tdd_mode_sig),   
        .dac2_tdd_mode    (dac2_tdd_mode_sig),   
        .dac3_tdd_mode    (dac3_tdd_mode_sig),   
                                            
        .adc0_tdd_mode    (adc0_tdd_mode_sig),   
        .adc1_tdd_mode    (adc1_tdd_mode_sig),   
        .adc2_tdd_mode    (adc2_tdd_mode_sig),   
        .adc3_tdd_mode    (adc3_tdd_mode_sig),   
                                            
        .dac0_tdd_delay   (dac0_tdd_delay),  
        .dac1_tdd_delay   (dac1_tdd_delay),  
        .dac2_tdd_delay   (dac2_tdd_delay),  
        .dac3_tdd_delay   (dac3_tdd_delay),  
                                            
        .adc0_tdd_delay   (adc0_tdd_delay),  
        .adc1_tdd_delay   (adc1_tdd_delay),  
        .adc2_tdd_delay   (adc2_tdd_delay),  
        .adc3_tdd_delay   (adc3_tdd_delay),  
                                            
        .tile0_trig_delay (tile0_trig_delay),
        .tile1_trig_delay (tile1_trig_delay),
        .tile2_trig_delay (tile2_trig_delay),
        .tile3_trig_delay (tile3_trig_delay),

        .slot_length      (slot_length),  
        .guard_length     (guard_length), 
        .symbol_length    (symbol_length),
        .symbol_type      (symbol_type),  
        .mode             (mode),                           
        .enable           (enable),
        .rst_cnt          (rst_cnt),
        .trig_symbol      (trig_symbol),
        .trig_ofdm        (trig_ofdm),
        .trig             (trig),
        .ofdm_count       (ofdm_count)
    );

    // Slot counter
    always @(posedge s_axi_aclk) begin
      if (rst_cnt == 1'b1) begin
        symbol_count <= 'd0;
        symbol_inc   <= 1'b1;
      end
      else begin
        if (symbol_count == symbol_length) begin
          symbol_count  <= 'd0;
          symbol_inc    <= 1'b1;
        end
        else begin
          symbol_count <= symbol_count + 1;
          symbol_inc   <= 1'b0;
        end
      end
    end
    
    always @(posedge s_axi_aclk) begin
      if (symbol_count == trig_symbol && ofdm_count == trig_ofdm) begin
        auto_trig <= trig;
      end
    end
    
    // OFDM symbol count - 10 symbols per slot
    always @(posedge s_axi_aclk) begin
      if (rst_cnt == 1'b1) begin
         ofdm_count  <= 'd0;
      end
      else if (symbol_inc == 1'b1) begin
        if (ofdm_count == C_MAX_SYMBOLS - 1) begin
          ofdm_count  <= 'd0;
        end
        else begin
          ofdm_count <= ofdm_count + 1;
        end
      end
    end
    
    // Symbol control
    always @(posedge s_axi_aclk) begin
      if (symbol_count < guard_length) begin
        guard_active <= 1'b1;
      end
      else begin
        guard_active <= 1'b0;
      end
    end
    always @(posedge s_axi_aclk) begin
      if (symbol_type[ofdm_count] == 1'b0 || guard_active == 1'b1) begin
        dac00_tdd_mode <= 'd0;
        dac01_tdd_mode <= 'd0;
        dac02_tdd_mode <= 'd0;
        dac03_tdd_mode <= 'd0;
      end
      else begin
        dac00_tdd_mode <= dac0_tdd_mode_sig[0];
        dac01_tdd_mode <= dac0_tdd_mode_sig[1];
        dac02_tdd_mode <= dac0_tdd_mode_sig[2];
        dac03_tdd_mode <= dac0_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
      if (symbol_type[ofdm_count] == 1'b0 || guard_active == 1'b1) begin
        dac10_tdd_mode <= 'd0;
        dac11_tdd_mode <= 'd0;
        dac12_tdd_mode <= 'd0;
        dac13_tdd_mode <= 'd0;
      end
      else begin
        dac10_tdd_mode <= dac1_tdd_mode_sig[0];
        dac11_tdd_mode <= dac1_tdd_mode_sig[1];
        dac12_tdd_mode <= dac1_tdd_mode_sig[2];
        dac13_tdd_mode <= dac1_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
      if (symbol_type[ofdm_count] == 1'b0 || guard_active == 1'b1) begin
        dac20_tdd_mode <= 'd0;
        dac21_tdd_mode <= 'd0;
        dac22_tdd_mode <= 'd0;
        dac23_tdd_mode <= 'd0;
      end
      else begin
        dac20_tdd_mode <= dac2_tdd_mode_sig[0];
        dac21_tdd_mode <= dac2_tdd_mode_sig[1];
        dac22_tdd_mode <= dac2_tdd_mode_sig[2];
        dac23_tdd_mode <= dac2_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
      if (symbol_type[ofdm_count] == 1'b0 || guard_active == 1'b1) begin
        dac30_tdd_mode <= 'd0;
        dac31_tdd_mode <= 'd0;
        dac32_tdd_mode <= 'd0;
        dac33_tdd_mode <= 'd0;
      end
      else begin
        dac30_tdd_mode <= dac3_tdd_mode_sig[0];
        dac31_tdd_mode <= dac3_tdd_mode_sig[1];
        dac32_tdd_mode <= dac3_tdd_mode_sig[2];
        dac33_tdd_mode <= dac3_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
        if (symbol_type[ofdm_count] == 1'b1 || guard_active == 1'b1) begin
        adc00_tdd_mode <= 'd0;
        adc01_tdd_mode <= 'd0;
        adc02_tdd_mode <= 'd0;
        adc03_tdd_mode <= 'd0;
      end
      else begin
        adc00_tdd_mode <= adc0_tdd_mode_sig[0];
        adc01_tdd_mode <= adc0_tdd_mode_sig[1];
        adc02_tdd_mode <= adc0_tdd_mode_sig[2];
        adc03_tdd_mode <= adc0_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
        if (symbol_type[ofdm_count] == 1'b1 || guard_active == 1'b1) begin
        adc10_tdd_mode <= 'd0;
        adc11_tdd_mode <= 'd0;
        adc12_tdd_mode <= 'd0;
        adc13_tdd_mode <= 'd0;
      end
      else begin
        adc10_tdd_mode <= adc1_tdd_mode_sig[0];
        adc11_tdd_mode <= adc1_tdd_mode_sig[1];
        adc12_tdd_mode <= adc1_tdd_mode_sig[2];
        adc13_tdd_mode <= adc1_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
        if (symbol_type[ofdm_count] == 1'b1 || guard_active == 1'b1) begin
        adc20_tdd_mode <= 'd0;
        adc21_tdd_mode <= 'd0;
        adc22_tdd_mode <= 'd0;
        adc23_tdd_mode <= 'd0;
      end
      else begin
        adc20_tdd_mode <= adc2_tdd_mode_sig[0];
        adc21_tdd_mode <= adc2_tdd_mode_sig[1];
        adc22_tdd_mode <= adc2_tdd_mode_sig[2];
        adc23_tdd_mode <= adc2_tdd_mode_sig[3];
      end
    end
    always @(posedge s_axi_aclk) begin
        if (symbol_type[ofdm_count] == 1'b1 || guard_active == 1'b1) begin
        adc30_tdd_mode <= 'd0;
        adc31_tdd_mode <= 'd0;
        adc32_tdd_mode <= 'd0;
        adc33_tdd_mode <= 'd0;
      end
      else begin
        adc30_tdd_mode <= adc3_tdd_mode_sig[0];
        adc31_tdd_mode <= adc3_tdd_mode_sig[1];
        adc32_tdd_mode <= adc3_tdd_mode_sig[2];
        adc33_tdd_mode <= adc3_tdd_mode_sig[3];
      end
    end

    exdes_tddrtsctrl_count
    # (.C_COUNT_WIDTH(C_TRIG_WIDTH)) 
    trigger0_count (
        .s_axi_aclk  (s_axi_aclk),
        .sync_clk    (adc0_clk),
        .delay       (tile0_trig_delay),
        .trigger     (auto_trig),
        .enable      (trigger_0)
    );

    exdes_tddrtsctrl_count
    # (.C_COUNT_WIDTH(C_TRIG_WIDTH)) 
    trigger1_count (
        .s_axi_aclk  (s_axi_aclk),
        .sync_clk    (adc1_clk),
        .delay       (tile1_trig_delay),
        .trigger     (auto_trig),
        .enable      (trigger_1)
    );

    exdes_tddrtsctrl_count
    # (.C_COUNT_WIDTH(C_TRIG_WIDTH)) 
    trigger2_count (
        .s_axi_aclk  (s_axi_aclk),
        .sync_clk    (adc2_clk),
        .delay       (tile2_trig_delay),
        .trigger     (auto_trig),
        .enable      (trigger_2)
    );

    exdes_tddrtsctrl_count
    # (.C_COUNT_WIDTH(C_TRIG_WIDTH)) 
    trigger3_count (
        .s_axi_aclk  (s_axi_aclk),
        .sync_clk    (adc3_clk),
        .delay       (tile3_trig_delay),
        .trigger     (auto_trig),
        .enable      (trigger_3)
    );
    exdes_tddrtsctrl_count
    # (.C_COUNT_WIDTH(C_TRIG_WIDTH)) 
    trigger_ext_count (
        .s_axi_aclk  (s_axi_aclk),
        .sync_clk    (dac0_clk),
        .delay       (tile0_trig_delay),
        .trigger     (auto_trig),
        .enable      (trigger_ext)
    );
    
    // Synchronise memory enables to appropriate ADC clocks
    always @(posedge adc0_clk) begin
      enablehwtrig_tile0_meta <= enable[0];
      enablehwtrig_tile0_sync <= enablehwtrig_tile0_meta;
      hw_trigger_en_0         <= enablehwtrig_tile0_sync;
    end
    
    // Synchronise memory enables to appropriate ADC clocks
    always @(posedge adc1_clk) begin
      enablehwtrig_tile1_meta <= enable[1];
      enablehwtrig_tile1_sync <= enablehwtrig_tile1_meta;
      hw_trigger_en_1         <= enablehwtrig_tile1_sync;
    end
    
    // Synchronise memory enables to appropriate ADC clocks
    always @(posedge adc2_clk) begin
      enablehwtrig_tile2_meta <= enable[2];
      enablehwtrig_tile2_sync <= enablehwtrig_tile2_meta;
      hw_trigger_en_2         <= enablehwtrig_tile2_sync;
    end
    
    // Synchronise memory enables to appropriate ADC clocks
    always @(posedge adc3_clk) begin
      enablehwtrig_tile3_meta <= enable[3];
      enablehwtrig_tile3_sync <= enablehwtrig_tile3_meta;
      hw_trigger_en_3         <= enablehwtrig_tile3_sync;
    end

endmodule
