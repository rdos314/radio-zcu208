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
// Title : RF Analyzer TDD control counter AXI Interface
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module exdes_tddrtsctrl_S_AXI #(
    parameter C_COUNT_WIDTH      = 19,
    parameter C_TRIG_WIDTH       = 32,
    parameter C_SYMBOL_WIDTH     = 7,
    parameter C_S_AXI_DATA_WIDTH = 32,
    parameter C_S_AXI_ADDR_WIDTH = 7)
(
    output wire [3:0] dac0_tdd_mode,
    output wire [3:0] dac1_tdd_mode,
    output wire [3:0] dac2_tdd_mode,
    output wire [3:0] dac3_tdd_mode,
                        
    output wire [3:0] adc0_tdd_mode,
    output wire [3:0] adc1_tdd_mode,
    output wire [3:0] adc2_tdd_mode,
    output wire [3:0] adc3_tdd_mode,
                      
    output wire [C_COUNT_WIDTH-1:0] dac0_tdd_delay,
    output wire [C_COUNT_WIDTH-1:0] dac1_tdd_delay,
    output wire [C_COUNT_WIDTH-1:0] dac2_tdd_delay,
    output wire [C_COUNT_WIDTH-1:0] dac3_tdd_delay,
                      
    output wire [C_COUNT_WIDTH-1:0] adc0_tdd_delay,
    output wire [C_COUNT_WIDTH-1:0] adc1_tdd_delay,
    output wire [C_COUNT_WIDTH-1:0] adc2_tdd_delay,
    output wire [C_COUNT_WIDTH-1:0] adc3_tdd_delay,
                      
    output wire [C_TRIG_WIDTH-1:0] tile0_trig_delay,
    output wire [C_TRIG_WIDTH-1:0] tile1_trig_delay,
    output wire [C_TRIG_WIDTH-1:0] tile2_trig_delay,
    output wire [C_TRIG_WIDTH-1:0] tile3_trig_delay,
    
    output wire [C_SYMBOL_WIDTH-1:0] slot_length,
    output wire [C_SYMBOL_WIDTH-1:0] guard_length,
    output wire [C_SYMBOL_WIDTH-1:0] symbol_length,
    output wire [9:0] symbol_type,
    output wire [1:0] mode,
    output wire [3:0] enable,
    
    output wire rst_cnt,
    output wire [C_SYMBOL_WIDTH-1:0] trig_symbol,
    output wire [3:0] trig_ofdm,
    output wire trig,
    input  wire [3:0] ofdm_count, 
    
    input  wire       [C_S_AXI_ADDR_WIDTH-1:0]  S_AXI_AWADDR,
    input  wire                          [2:0]  S_AXI_AWPROT,
    input  wire                                 S_AXI_AWVALID,
    output wire                                 S_AXI_AWREADY,
    input  wire       [C_S_AXI_DATA_WIDTH-1:0]  S_AXI_WDATA,
    input  wire                                 S_AXI_WVALID,
    output wire                                 S_AXI_WREADY,
    input  wire   [(C_S_AXI_DATA_WIDTH/8)-1:0]  S_AXI_WSTRB,
    output wire                          [1:0]  S_AXI_BRESP, 
    output wire                                 S_AXI_BVALID, 
    input  wire                                 S_AXI_BREADY,
    input  wire       [C_S_AXI_ADDR_WIDTH-1:0]  S_AXI_ARADDR,
    input  wire                          [2:0]  S_AXI_ARPROT,
    input  wire                                 S_AXI_ARVALID, 
    output wire                                 S_AXI_ARREADY, 
    output wire       [C_S_AXI_DATA_WIDTH-1:0]  S_AXI_RDATA,
    output wire                          [1:0]  S_AXI_RRESP, 
    output wire                                 S_AXI_RVALID, 
    input  wire                                 S_AXI_RREADY,
    input  wire                                 S_AXI_ACLK,
    input  wire                                 S_AXI_ARESETN
);

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1:0] axi_awaddr;
    reg                          axi_awready;
    reg                          axi_wready;
    reg                    [1:0] axi_bresp;
    reg                          axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1:0] axi_araddr;
    reg                          axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
    reg                    [1:0] axi_rresp;
    reg                          axi_rvalid;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam ADDR_LSB  = (C_S_AXI_DATA_WIDTH/32)+ 1;
    localparam OPT_MEM_ADDR_BITS = 4;
    //------------------------------------------------
    //---- Signals for user logic register space example
    //--------------------------------------------------
    //---- Number of Slave Registers 16
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg4;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg5;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg6;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg7;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg8;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg9;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg10;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg11;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg12;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg13;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg14;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg15;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg16;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg17;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg18;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg19;
    reg  [C_S_AXI_DATA_WIDTH-1:0] slv_reg20;
    wire  slv_reg_rden;
    wire  slv_reg_wren;
    reg  [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
    integer byte_index;
    reg   aw_en;
    wire  [OPT_MEM_ADDR_BITS:0] loc_w_addr;
    wire  [OPT_MEM_ADDR_BITS:0] loc_r_addr;

    // I/O Connections assignments

    assign S_AXI_AWREADY   = axi_awready;
    assign S_AXI_WREADY    = axi_wready;
    assign S_AXI_BRESP     = axi_bresp;
    assign S_AXI_BVALID    = axi_bvalid;
    assign S_AXI_ARREADY   = axi_arready;
    assign S_AXI_RDATA     = axi_rdata;
    assign S_AXI_RRESP     = axi_rresp;
    assign S_AXI_RVALID    = axi_rvalid;
    
    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.
    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        axi_awready <= 1'b0;
        aw_en <= 1'b1;
      end
      else begin
        if (axi_awready == 1'b0 && S_AXI_AWVALID == 1'b1 && S_AXI_WVALID == 1'b1 && aw_en == 1'b1) begin
          // slave is ready to accept write address when
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_awready <= 1'b1;
          aw_en <= 1'b0;
        end
        else if (S_AXI_BREADY == 1'b1 && axi_bvalid == 1'b1) begin
          aw_en <= 1'b1;
          axi_awready <= 1'b0;
        end
        else begin
          axi_awready <= 1'b0;
        end
      end
    end

    // Implement axi_awaddr latching
    // This process is used to latch the address when both 
    // S_AXI_AWVALID and S_AXI_WVALID are valid. 

    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        axi_awaddr <= 'd0;
      end
      else begin
        if (axi_awready == 1'b0 && S_AXI_AWVALID == 1'b1 && S_AXI_WVALID == 1'b1 && aw_en == 1'b1) begin
          // Write Address latching
          axi_awaddr <= S_AXI_AWADDR;
        end
      end                
    end

    // Implement axi_wready generation
    // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
    // de-asserted when reset is low. 

    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        axi_wready <= 1'b0;
      end
      else begin
        if (axi_wready == 1'b0 && S_AXI_WVALID == 1'b1 && S_AXI_AWVALID == 1'b1 && aw_en == 1'b1) begin
            // slave is ready to accept write data when 
            // there is a valid write address and write data
            // on the write address and data bus. This design 
            // expects no outstanding transactions.           
            axi_wready <= 1'b1;
        end
        else begin
          axi_wready <= 1'b0;
        end
      end
    end

    // Implement memory mapped register select and write logic generation
    // The write data is accepted and written to memory mapped registers when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    // select byte enables of slave registers while writing.
    // These registers are cleared when reset (active low) is applied.
    // Slave register write enable is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data.
    assign slv_reg_wren = axi_wready & S_AXI_WVALID & axi_awready & S_AXI_AWVALID ;
    assign loc_w_addr = axi_awaddr[ADDR_LSB+:(OPT_MEM_ADDR_BITS+1)];

    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        slv_reg0 <= 'd0;
        slv_reg1 <= 'd0;
        slv_reg2 <= 'd2;
        slv_reg3 <= 'd0;
        slv_reg4 <= 'd0;
        slv_reg5 <= 'd0;
        slv_reg6 <= 'd0;
        slv_reg7 <= 'd0;
        slv_reg8 <= 'd0;
        slv_reg9 <= 'd0;
        slv_reg10 <= 'd0;
        slv_reg11 <= 'd0;
        slv_reg12 <= 'd0;
        slv_reg13 <= 'd0;
        slv_reg14 <= 'd0;
        slv_reg15 <= 'd0;
        slv_reg16 <= 'd0;
        slv_reg17 <= 'd0;
        slv_reg18 <= 'd0;
        slv_reg19 <= 'd0;
        slv_reg20 <= 'd0;
      end
      else begin
        if (slv_reg_wren == 1'b1) begin
          case (loc_w_addr)
            5'b00000 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg0[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00001 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg1[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00010 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg2[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00011 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg3[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00100 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg4[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00101 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg5[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00110 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg6[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b00111 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg7[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01000 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg8[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01001 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg9[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01010 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg10[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01011 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg11[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01100 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg12[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01101 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg13[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01110 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg14[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b01111 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg15[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b10000 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg16[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b10001 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg17[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b10010 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg18[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b10011 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg19[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            5'b10100 : begin
              for (byte_index = 0; byte_index < C_S_AXI_DATA_WIDTH/8; byte_index = byte_index + 1) begin
                if ( S_AXI_WSTRB[byte_index] == 1'b1 ) begin
                  // Respective byte enables are asserted as per write strobes                   
                  // slave registor 0
                  slv_reg20[(byte_index*8)+:8] <= S_AXI_WDATA[(byte_index*8)+:8];
                end
              end
            end
            default : begin
              slv_reg0 <= slv_reg0;
              slv_reg1 <= slv_reg1;
              slv_reg2 <= slv_reg2;
              slv_reg3 <= slv_reg3;
              slv_reg4 <= slv_reg4;
              slv_reg5 <= slv_reg5;
              slv_reg6 <= slv_reg6;
              slv_reg7 <= slv_reg7;
              slv_reg8 <= slv_reg8;
              slv_reg9 <= slv_reg9;
              slv_reg10 <= slv_reg10;
              slv_reg11 <= slv_reg11;
              slv_reg12 <= slv_reg12;
              slv_reg13 <= slv_reg13;
              slv_reg14 <= slv_reg14;
              slv_reg15 <= slv_reg15;
              slv_reg16 <= slv_reg16;
              slv_reg17 <= slv_reg17;
              slv_reg18 <= slv_reg18;
              slv_reg19 <= slv_reg19;
              slv_reg20 <= slv_reg20;
            end
          endcase
        end
      end          
    end

    // Implement write response logic generation
    // The write response and response valid signals are asserted by the slave 
    // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
    // This marks the acceptance of address and indicates the status of 
    // write transaction.

    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        axi_bvalid  <= 1'b0;
        axi_bresp   <= 2'b00; //need to work more on the responses
      end
      else begin
        if (axi_awready == 1'b1 && S_AXI_AWVALID == 1'b1 && axi_wready == 1'b1 && S_AXI_WVALID == 1'b1 && axi_bvalid == 1'b0  ) begin
          axi_bvalid <= 1'b1;
          axi_bresp  <= 2'b00;
        end
        else if (S_AXI_BREADY == 1'b1 && axi_bvalid == 1'b1) begin   // check if bready is asserted while bvalid is high)
          axi_bvalid <= 1'b0;                                        // (there is a possibility that bready is always asserted high)
        end
      end                  
    end

    // Implement axi_arready generation
    // axi_arready is asserted for one S_AXI_ACLK clock cycle when
    // S_AXI_ARVALID is asserted. axi_awready is 
    // de-asserted when reset (active low) is asserted. 
    // The read address is also latched when S_AXI_ARVALID is 
    // asserted. axi_araddr is reset to zero on reset assertion.

    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        axi_arready <= 1'b0;
        axi_araddr  <= {C_S_AXI_ADDR_WIDTH{1'b1}};
      end
      else begin
        if (axi_arready == 1'b0 && S_AXI_ARVALID == 1'b1) begin
          // indicates that the slave has acceped the valid read address
          axi_arready <= 1'b1;
          // Read Address latching 
          axi_araddr  <= S_AXI_ARADDR;
        end
        else begin
          axi_arready <= 1'b0;
        end
      end                  
    end 

    // Implement axi_arvalid generation
    // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
    // S_AXI_ARVALID and axi_arready are asserted. The slave registers 
    // data are available on the axi_rdata bus at this instance. The 
    // assertion of axi_rvalid marks the validity of read data on the 
    // bus and axi_rresp indicates the status of read transaction.axi_rvalid 
    // is deasserted on reset (active low). axi_rresp and axi_rdata are 
    // cleared to zero on reset (active low).  
    always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b00;
      end
      else begin
        if (axi_arready == 1'b1 && S_AXI_ARVALID == 1'b1 && axi_rvalid == 1'b0) begin
          // Valid read data is available at the read data bus
          axi_rvalid <= 1'b1;
          axi_rresp  <= 2'b00; // 'OKAY' response
        end
        else if (axi_rvalid == 1'b1 && S_AXI_RREADY == 1'b1) begin
          // Read data is accepted by the master
          axi_rvalid <= 1'b0;
        end
      end
    end

    // Implement memory mapped register select and read logic generation
    // Slave register read enable is asserted when valid address is available
    // and the slave is ready to accept the read address.
    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
    assign loc_r_addr = axi_araddr[ADDR_LSB+:(OPT_MEM_ADDR_BITS+1)];

    always @(*)
    begin
      // Address decoding for reading registers
      case (loc_r_addr)
        5'b00000 : reg_data_out <= slv_reg0;
        5'b00001 : reg_data_out <= slv_reg1;
        5'b00010 : reg_data_out <= slv_reg2;
        5'b00011 : reg_data_out <= slv_reg3;
        5'b00100 : reg_data_out <= slv_reg4;
        5'b00101 : reg_data_out <= slv_reg5;
        5'b00110 : reg_data_out <= slv_reg6;
        5'b00111 : reg_data_out <= slv_reg7;
        5'b01000 : reg_data_out <= slv_reg8;
        5'b01001 : reg_data_out <= slv_reg9;
        5'b01010 : reg_data_out <= slv_reg10;
        5'b01011 : reg_data_out <= slv_reg11;
        5'b01100 : reg_data_out <= slv_reg12;
        5'b01101 : reg_data_out <= slv_reg13;
        5'b01110 : reg_data_out <= slv_reg14;
        5'b01111 : reg_data_out <= slv_reg15;
        5'b10000 : reg_data_out <= slv_reg16;
        5'b10001 : reg_data_out <= slv_reg17;
        5'b10010 : reg_data_out <= slv_reg18;
        5'b10011 : reg_data_out <= slv_reg19;
        5'b10100 : reg_data_out <= slv_reg20;
        default  : reg_data_out <= 'd0;
      endcase
    end

    // Output register or memory read data
    always @(posedge S_AXI_ACLK) begin
      if ( S_AXI_ARESETN == 1'b0 ) begin
        axi_rdata  <= 'd0;
      end
      else begin
        if (slv_reg_rden== 1'b1) begin
          // When there is a valid read address (S_AXI_ARVALID) with 
          // acceptance of read address by the slave (axi_arready), 
          // output the read dada 
          // Read address mux
          axi_rdata <= reg_data_out;     // register read data
        end
      end
    end


    assign dac0_tdd_mode    = slv_reg0[3:0];
    assign dac1_tdd_mode    = slv_reg0[7:4];
    assign dac2_tdd_mode    = slv_reg0[11:8];
    assign dac3_tdd_mode    = slv_reg0[15:12];
    //0x4                
    assign adc0_tdd_mode    = slv_reg1[3:0];
    assign adc1_tdd_mode    = slv_reg1[7:4];
    assign adc2_tdd_mode    = slv_reg1[11:8];
    assign adc3_tdd_mode    = slv_reg1[15:12];
    //0x8
    assign rst_cnt          = slv_reg2[0];
    //0xc
    assign enable           = slv_reg3[3:0];
    //0x10
    assign trig_symbol      = slv_reg4[C_SYMBOL_WIDTH-1:0];
    //0x14
    assign trig_ofdm        = slv_reg5[3:0];
    //0x18
    assign trig             = slv_reg6[0];
    //0x30 0x34 0x38 0x3c 
    assign tile0_trig_delay = slv_reg12[C_TRIG_WIDTH-1:0];
    assign tile1_trig_delay = slv_reg13[C_TRIG_WIDTH-1:0];
    assign tile2_trig_delay = slv_reg14[C_TRIG_WIDTH-1:0];
    assign tile3_trig_delay = slv_reg15[C_TRIG_WIDTH-1:0];
    //0x40
    //0x44    
    assign slot_length      = slv_reg17[C_SYMBOL_WIDTH-1:0];
    //0x48
    assign guard_length     = slv_reg18[C_SYMBOL_WIDTH-1:0];
    //0x4c
    assign symbol_length    = slv_reg19[C_SYMBOL_WIDTH-1:0];
    //0x50
    assign symbol_type      = slv_reg20[9:0];


endmodule
