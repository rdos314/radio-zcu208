// Y2R_PRAGMA_TP_REQUIRED topLevel            "" 
// Y2R_PRAGMA_TP_REQUIRED axiLite4_interface  "_axi"
//-----------------------------------------------------------------------------
// Title      : adc_exdes_cfg
// Project    : NA
//-----------------------------------------------------------------------------
// File       : adc_exdes_cfg.v
//-----------------------------------------------------------------------------
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


`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module adc_exdes_cfg_rfa #(
   parameter integer                   C_MEMORY_ADDR_WIDTH   = 11
   )
(
   input                                  s_axi_aclk,
   input                                  s_axi_aresetn,
   
   //
   output reg                             start_data = 0,
   output reg  [15:0]                     enable = 16'd0,
   output reg  [511:0]                    ds_num_samples = 512'd0,
   input       [15:0]                     ds_working,
   output reg                             timeout_enable = 0,
   output reg  [11:0]                     timeout_value = 128,
   output reg   [3:0]                     tile_enable = 4'hf,
   
   input       [31:0]                     id_code, // TBD
 
   // basic register interface
   input                                  slv_rden,
   input                                  slv_wren,
   input       [31:0]                     slv_wdata,
   input       [C_MEMORY_ADDR_WIDTH-1:0]  slv_addr,
   
   output reg                             slv_rd_done,
   output reg                             slv_wr_done,
   output reg  [31:0]                     slv_rdata
 
);

  //----------------------------------------------------------------------------
  // Internal reg/wire declarations
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // constant wire asisgnments, ease readability instead of coding into the
  // register read statement
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // Register write logic
  //----------------------------------------------------------------------------
   always @( posedge s_axi_aclk )
   begin
      if (~s_axi_aresetn) begin
        // set RW register defaults
         start_data                               <= 1'b0;
         enable                                   <= 16'd0;
         tile_enable                              <= 4'hf;
         timeout_enable                           <= 1'd0;
         timeout_value                            <= 12'd128;
         ds_num_samples                           <= 512'd0;

      end
      else begin

         if (start_data == 1'b1) begin
           start_data <= 1'b0; // This register self-clears
         end
         // on a write we write to the appropiate register 
         else if (slv_wren) begin
            case (slv_addr)
            'h1     : begin
                      start_data                               <= slv_wdata[0];
                      end
            'h2     : begin
                      enable                                   <= slv_wdata[15:0];
                      end
            'h3     : begin
                      tile_enable                              <= slv_wdata[3:0];
                      end
            'h4     : begin
                      ds_num_samples[31:0]                     <= slv_wdata;
                      end
            'h5     : begin
                      ds_num_samples[63:32]                    <= slv_wdata;
                      end
            'h6     : begin
                      ds_num_samples[95:64]                    <= slv_wdata;
                      end
            'h7     : begin
                      ds_num_samples[127:96]                   <= slv_wdata;
                      end
            'h8     : begin
                      ds_num_samples[159:128]                  <= slv_wdata;
                      end
            'h9     : begin
                      ds_num_samples[191:160]                  <= slv_wdata;
                      end
            'ha     : begin
                      ds_num_samples[223:192]                  <= slv_wdata;
                      end
            'hb     : begin
                      ds_num_samples[255:224]                  <= slv_wdata;
                      end
            'hc     : begin
                      ds_num_samples[287:256]                  <= slv_wdata;
                      end
            'hd     : begin
                      ds_num_samples[319:288]                  <= slv_wdata;
                      end
            'he     : begin
                      ds_num_samples[351:320]                  <= slv_wdata;
                      end
            'hf     : begin
                      ds_num_samples[383:352]                  <= slv_wdata;
                      end
            'h10    : begin
                      ds_num_samples[415:384]                  <= slv_wdata;
                      end
            'h11    : begin
                      ds_num_samples[447:416]                  <= slv_wdata;
                      end
            'h12    : begin
                      ds_num_samples[479:448]                  <= slv_wdata;
                      end
            'h13    : begin
                      ds_num_samples[511:480]                  <= slv_wdata;
                      end  
            'h40    : begin
                      timeout_enable                           <= slv_wdata[0];
                      end
            'h41    : begin
                      timeout_value                            <= slv_wdata[11:0];
                      end

            endcase
         end
      end
   end
   
   //---------------------------------------------------------------------------
   // Register read logic, non registered, 
   //---------------------------------------------------------------------------
   always @(*)
     begin
     slv_rdata = 'd0; // Zero all data
     case (slv_addr)
     'h0     : begin
               slv_rdata            = id_code;
               end
     'h1     : begin
               slv_rdata[0]         = |ds_working;
               end
     'h2     : begin
               slv_rdata[15:0]      = enable;
               end
     'h3     : begin
               slv_rdata[3:0]       = tile_enable;
               end
     'h4     : begin
               slv_rdata            = ds_num_samples[31:0];
               end
     'h5     : begin
               slv_rdata            = ds_num_samples[63:32];
               end
     'h6     : begin
               slv_rdata            = ds_num_samples[95:64];
               end
     'h7     : begin
               slv_rdata            = ds_num_samples[127:96];
               end
     'h8     : begin
               slv_rdata            = ds_num_samples[159:128];
               end
     'h9     : begin
               slv_rdata            = ds_num_samples[191:160];
               end
     'ha     : begin
               slv_rdata            = ds_num_samples[223:192];
               end
     'hb     : begin
               slv_rdata            = ds_num_samples[255:224];
               end
     'hc     : begin
               slv_rdata            = ds_num_samples[287:256];
               end
     'hd     : begin
               slv_rdata            = ds_num_samples[319:288];
               end
     'he     : begin
               slv_rdata            = ds_num_samples[351:320];
               end
     'hf    : begin
               slv_rdata            = ds_num_samples[383:352];
               end
     'h10    : begin
               slv_rdata            = ds_num_samples[415:384];
               end
     'h11    : begin
               slv_rdata            = ds_num_samples[447:416];
               end
     'h12    : begin
               slv_rdata            = ds_num_samples[479:448];
               end
     'h13    : begin
               slv_rdata            = ds_num_samples[511:480];
               end
     'h14    : begin
               slv_rdata            = 32'd192;
               end
     'h15    : begin
               slv_rdata            = 32'd192;
               end
     'h16    : begin
               slv_rdata            = 32'd192;
               end
     'h17    : begin
               slv_rdata            = 32'd192;
               end
     'h18    : begin
               slv_rdata            = 32'd192;
               end
     'h19    : begin
               slv_rdata            = 32'd192;
               end
     'h1A    : begin
               slv_rdata            = 32'd192;
               end
     'h1B    : begin
               slv_rdata            = 32'd192;
               end
     'h1C    : begin
               slv_rdata            = 32'd192;
               end
     'h1D    : begin
               slv_rdata            = 32'd192;
               end
     'h1E    : begin
               slv_rdata            = 32'd192;
               end
     'h1F    : begin
               slv_rdata            = 32'd192;
               end
     'h20    : begin
               slv_rdata            = 32'd192;
               end
     'h21    : begin
               slv_rdata            = 32'd192;
               end
     'h22    : begin
               slv_rdata            = 32'd192;
               end
     'h23    : begin
               slv_rdata            = 32'd192;
               end
     'h40    : begin
               slv_rdata[0]         = timeout_enable;
               end
     'h41    : begin
               slv_rdata[11:0]      = timeout_value;
               end

     default   : slv_rdata = 'd0;
     endcase
     end
   
   //---------------------------------------------------------------------------
   // read/write done logic.
   // For the basic register bank these are fed directly back in as the reg
   // delay is known and fixed.
   //---------------------------------------------------------------------------
   always @(*)
     begin
     slv_rd_done = slv_rden;
     slv_wr_done = slv_wren;
     end

endmodule

//-----------------------------------------------------------------------------
// Title      : rfadc_exdes_ctrl
// Project    : NA
//-----------------------------------------------------------------------------
// File       : rfadc_exdes_ctrl.v
//-----------------------------------------------------------------------------
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


`timescale 1 ps / 1 ps

module rfadc_exdes_ctrl_rfa #(
 parameter integer C_S_AXI_DATA_WIDTH	= 32,
 parameter integer C_S_AXI_ADDR_WIDTH	= 32,
 parameter integer C_NUM_MEMORY_BLOCK   = 4,
 parameter integer SELECT_MEM_WIDTH = $clog2(C_NUM_MEMORY_BLOCK),
 parameter integer C_MEMORY_ADDR_WIDTH = C_S_AXI_ADDR_WIDTH - SELECT_MEM_WIDTH,
 parameter integer C_MEMORY_DATA_WITH   = 32,
 parameter integer C_S_TIMEOUT_WIDTH    = 12,
 parameter integer C_MEM_SIZE           = 131072
) (
//-----------------------------------------------------------------------------
// Signal declarations for memory banks
//-----------------------------------------------------------------------------

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc00_ds_addrb,
    output                                                    adc00_ds_web,
    output                                                    adc00_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc00_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc00_ds_doutb,
    output [31:0]                                             adc00_ds_num_samples,
    output                                                    adc00_ds_enable,
    input                                                     adc00_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc01_ds_addrb,
    output                                                    adc01_ds_web,
    output                                                    adc01_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc01_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc01_ds_doutb,
    output [31:0]                                             adc01_ds_num_samples,
    output                                                    adc01_ds_enable,
    input                                                     adc01_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc02_ds_addrb,
    output                                                    adc02_ds_web,
    output                                                    adc02_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc02_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc02_ds_doutb,
    output [31:0]                                             adc02_ds_num_samples,
    output                                                    adc02_ds_enable,
    input                                                     adc02_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc03_ds_addrb,
    output                                                    adc03_ds_web,
    output                                                    adc03_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc03_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc03_ds_doutb,
    output [31:0]                                             adc03_ds_num_samples,
    output                                                    adc03_ds_enable,
    input                                                     adc03_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc10_ds_addrb,
    output                                                    adc10_ds_web,
    output                                                    adc10_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc10_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc10_ds_doutb,
    output [31:0]                                             adc10_ds_num_samples,
    output                                                    adc10_ds_enable,
    input                                                     adc10_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc11_ds_addrb,
    output                                                    adc11_ds_web,
    output                                                    adc11_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc11_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc11_ds_doutb,
    output [31:0]                                             adc11_ds_num_samples,
    output                                                    adc11_ds_enable,
    input                                                     adc11_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc12_ds_addrb,
    output                                                    adc12_ds_web,
    output                                                    adc12_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc12_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc12_ds_doutb,
    output [31:0]                                             adc12_ds_num_samples,
    output                                                    adc12_ds_enable,
    input                                                     adc12_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc13_ds_addrb,
    output                                                    adc13_ds_web,
    output                                                    adc13_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc13_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc13_ds_doutb,
    output [31:0]                                             adc13_ds_num_samples,
    output                                                    adc13_ds_enable,
    input                                                     adc13_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc20_ds_addrb,
    output                                                    adc20_ds_web,
    output                                                    adc20_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc20_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc20_ds_doutb,
    output [31:0]                                             adc20_ds_num_samples,
    output                                                    adc20_ds_enable,
    input                                                     adc20_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc21_ds_addrb,
    output                                                    adc21_ds_web,
    output                                                    adc21_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc21_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc21_ds_doutb,
    output [31:0]                                             adc21_ds_num_samples,
    output                                                    adc21_ds_enable,
    input                                                     adc21_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc22_ds_addrb,
    output                                                    adc22_ds_web,
    output                                                    adc22_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc22_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc22_ds_doutb,
    output [31:0]                                             adc22_ds_num_samples,
    output                                                    adc22_ds_enable,
    input                                                     adc22_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc23_ds_addrb,
    output                                                    adc23_ds_web,
    output                                                    adc23_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc23_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc23_ds_doutb,
    output [31:0]                                             adc23_ds_num_samples,
    output                                                    adc23_ds_enable,
    input                                                     adc23_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc30_ds_addrb,
    output                                                    adc30_ds_web,
    output                                                    adc30_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc30_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc30_ds_doutb,
    output [31:0]                                             adc30_ds_num_samples,
    output                                                    adc30_ds_enable,
    input                                                     adc30_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc31_ds_addrb,
    output                                                    adc31_ds_web,
    output                                                    adc31_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc31_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc31_ds_doutb,
    output [31:0]                                             adc31_ds_num_samples,
    output                                                    adc31_ds_enable,
    input                                                     adc31_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc32_ds_addrb,
    output                                                    adc32_ds_web,
    output                                                    adc32_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc32_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc32_ds_doutb,
    output [31:0]                                             adc32_ds_num_samples,
    output                                                    adc32_ds_enable,
    input                                                     adc32_ds_working,

    output [C_MEMORY_ADDR_WIDTH-1:0]                          adc33_ds_addrb,
    output                                                    adc33_ds_web,
    output                                                    adc33_ds_enb,
    output [C_MEMORY_DATA_WITH-1:0]                           adc33_ds_dinb,
    input  [C_MEMORY_DATA_WITH-1:0]                           adc33_ds_doutb,
    output [31:0]                                             adc33_ds_num_samples,
    output                                                    adc33_ds_enable,
    input                                                     adc33_ds_working,

//-----------------------------------------------------------------------------
// Signal declarations for BANK adc_exdes_cfg
//-----------------------------------------------------------------------------
   output                                                     start_data,
   output                                                     timeout_enable,
   output      [11:0]                                         timeout_value,
   output       [3:0]                                         tile_enable,
    
//-----------------------------------------------------------------------------
// AXI Lite IO
//-----------------------------------------------------------------------------
    input                                                     s_axi_aclk,
    input                                                     s_axi_aresetn,
    input [C_S_AXI_ADDR_WIDTH-1:0]                            s_axi_awaddr,
    input [2:0]                                               s_axi_awprot,
    input                                                     s_axi_awvalid,
    output                                                    s_axi_awready,		
    input [C_S_AXI_DATA_WIDTH-1:0]                            s_axi_wdata,
    input [(C_S_AXI_DATA_WIDTH/8)-1:0]                        s_axi_wstrb,
    input                                                     s_axi_wvalid,
    output                                                    s_axi_wready,
    output [1:0]                                              s_axi_bresp,
    output                                                    s_axi_bvalid,
    input                                                     s_axi_bready,
    input  [C_S_AXI_ADDR_WIDTH-1:0]                           s_axi_araddr,
    input  [2:0]                                              s_axi_arprot,
    input                                                     s_axi_arvalid,
    output                                                    s_axi_arready,
    output [C_S_AXI_DATA_WIDTH-1:0]                           s_axi_rdata,
    output [1:0]                                              s_axi_rresp,
    output                                                    s_axi_rvalid,
    input                                                     s_axi_rready,

//-----------------------------------------------------------------------------
// Time out connections in
//-----------------------------------------------------------------------------
    input                                                     timeout_enable_in,
    input       [C_S_TIMEOUT_WIDTH-1:0]                       timeout_value_in
);

//-----------------------------------------------------------------------------
// internal register strobe declarations
//-----------------------------------------------------------------------------
   reg  [C_NUM_MEMORY_BLOCK-1:0]                        mem_en;
   wire                                                 mem_we;
   reg  [(C_NUM_MEMORY_BLOCK*C_MEMORY_ADDR_WIDTH)-1:0]  mem_addr;
   wire [(C_NUM_MEMORY_BLOCK*C_MEMORY_DATA_WITH)-1:0]   mem_rdata;
   wire [C_MEMORY_DATA_WITH-1:0]                        mem_wdata;
   wire [15:0]                                          enable;
   wire [511:0]                                         ds_num_samples;
   wire [15:0]                                          ds_working;
   wire [31:0]                                          id_code;
   wire [23:0]                                          total_mem_size;
   assign total_mem_size = 17 * C_MEM_SIZE;

   assign id_code = {1'b1, 7'd16, total_mem_size};

//-----------------------------------------------------------------------------
// adc_exdes_cfg register bank
//-----------------------------------------------------------------------------
adc_exdes_cfg_rfa #(
   .C_MEMORY_ADDR_WIDTH           (C_MEMORY_ADDR_WIDTH)
) adc_exdes_cfg_i (

  .start_data       (start_data                        ),
  .enable           (enable                            ),
  .tile_enable      (tile_enable                       ),
  .ds_num_samples   (ds_num_samples                    ),
  .ds_working       (ds_working                        ),
  .timeout_enable   (timeout_enable                    ),
  .timeout_value    (timeout_value                     ),
  .id_code          (id_code                           ),
                    
  .slv_rden         (mem_en[0] & ~mem_we               ),
  .slv_wren         (mem_en[0] & mem_we                ),
  .slv_wdata        (mem_wdata                         ),
  .slv_addr         (mem_addr[C_MEMORY_ADDR_WIDTH-1:0] ),
                    
  .slv_rd_done      (),
  .slv_wr_done      (),
  .slv_rdata        (mem_rdata[C_MEMORY_DATA_WITH-1:0] ),
                    
  .s_axi_aclk       (s_axi_aclk                        ),
  .s_axi_aresetn    (s_axi_aresetn                     )
);

//-----------------------------------------------------------------------------
// Main AXI interface
//-----------------------------------------------------------------------------
rfadc_exdes_ctrl_axi_rfa # (
  .C_S_AXI_DATA_WIDTH  (C_S_AXI_DATA_WIDTH),
  .C_S_AXI_ADDR_WIDTH  (C_S_AXI_ADDR_WIDTH),
  .C_NUM_MEMORY_BLOCK  (C_NUM_MEMORY_BLOCK),
  .SELECT_MEM_WIDTH    (SELECT_MEM_WIDTH),
  .C_MEMORY_ADDR_WIDTH (C_MEMORY_ADDR_WIDTH),
  .C_MEMORY_DATA_WITH  (C_MEMORY_DATA_WITH),
  .C_S_TIMEOUT_WIDTH   (C_S_TIMEOUT_WIDTH))
  axi_register_if_i (
  
  .mem_en           (mem_en          ),
  .mem_we           (mem_we          ),
  .mem_addr         (mem_addr        ),
  .mem_rdata        (mem_rdata       ),
  .mem_wdata        (mem_wdata       ),
  
  .timeout_enable_in (timeout_enable_in),
  .timeout_value_in  (timeout_value_in),
  
  .s_axi_aclk       (s_axi_aclk      ),
  .s_axi_aresetn    (s_axi_aresetn   ),
  
  .s_axi_awaddr     (s_axi_awaddr    ),
  .s_axi_awprot     (s_axi_awprot    ),
  .s_axi_awvalid    (s_axi_awvalid   ),
  .s_axi_awready    (s_axi_awready   ),
  .s_axi_wdata      (s_axi_wdata     ),
  .s_axi_wstrb      (s_axi_wstrb     ),
  .s_axi_wvalid     (s_axi_wvalid    ),
  .s_axi_wready     (s_axi_wready    ),
  .s_axi_bresp      (s_axi_bresp     ),
  .s_axi_bvalid     (s_axi_bvalid    ),
  .s_axi_bready     (s_axi_bready    ),
  .s_axi_araddr     (s_axi_araddr    ),
  .s_axi_arprot     (s_axi_arprot    ),
  .s_axi_arvalid    (s_axi_arvalid   ),
  .s_axi_arready    (s_axi_arready   ),
  .s_axi_rdata      (s_axi_rdata     ),
  .s_axi_rresp      (s_axi_rresp     ),
  .s_axi_rvalid     (s_axi_rvalid    ),
  .s_axi_rready     (s_axi_rready    )
);


  assign adc00_ds_addrb  = mem_addr[(1*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc00_ds_web    = mem_en[1] & mem_we;
  assign adc00_ds_enb    = mem_en[1];
  assign adc00_ds_dinb   = mem_wdata;
  assign mem_rdata[(1*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc00_ds_doutb;
  assign adc00_ds_enable = enable[0];
  assign adc00_ds_num_samples = ds_num_samples[0 +: 32];
  assign ds_working[0] = adc00_ds_working;

  assign adc01_ds_addrb  = mem_addr[(2*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc01_ds_web    = mem_en[2] & mem_we;
  assign adc01_ds_enb    = mem_en[2];
  assign adc01_ds_dinb   = mem_wdata;
  assign mem_rdata[(2*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc01_ds_doutb;
  assign adc01_ds_enable = enable[1];
  assign adc01_ds_num_samples = ds_num_samples[32 +: 32];
  assign ds_working[1] = adc01_ds_working;

  assign adc02_ds_addrb  = mem_addr[(3*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc02_ds_web    = mem_en[3] & mem_we;
  assign adc02_ds_enb    = mem_en[3];
  assign adc02_ds_dinb   = mem_wdata;
  assign mem_rdata[(3*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc02_ds_doutb;
  assign adc02_ds_enable = enable[2];
  assign adc02_ds_num_samples = ds_num_samples[64 +: 32];
  assign ds_working[2] = adc02_ds_working;

  assign adc03_ds_addrb  = mem_addr[(4*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc03_ds_web    = mem_en[4] & mem_we;
  assign adc03_ds_enb    = mem_en[4];
  assign adc03_ds_dinb   = mem_wdata;
  assign mem_rdata[(4*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc03_ds_doutb;
  assign adc03_ds_enable = enable[3];
  assign adc03_ds_num_samples = ds_num_samples[96 +: 32];
  assign ds_working[3] = adc03_ds_working;

  assign adc10_ds_addrb  = mem_addr[(5*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc10_ds_web    = mem_en[5] & mem_we;
  assign adc10_ds_enb    = mem_en[5];
  assign adc10_ds_dinb   = mem_wdata;
  assign mem_rdata[(5*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc10_ds_doutb;
  assign adc10_ds_enable = enable[4];
  assign adc10_ds_num_samples = ds_num_samples[128 +: 32];
  assign ds_working[4] = adc10_ds_working;

  assign adc11_ds_addrb  = mem_addr[(6*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc11_ds_web    = mem_en[6] & mem_we;
  assign adc11_ds_enb    = mem_en[6];
  assign adc11_ds_dinb   = mem_wdata;
  assign mem_rdata[(6*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc11_ds_doutb;
  assign adc11_ds_enable = enable[5];
  assign adc11_ds_num_samples = ds_num_samples[160 +: 32];
  assign ds_working[5] = adc11_ds_working;

  assign adc12_ds_addrb  = mem_addr[(7*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc12_ds_web    = mem_en[7] & mem_we;
  assign adc12_ds_enb    = mem_en[7];
  assign adc12_ds_dinb   = mem_wdata;
  assign mem_rdata[(7*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc12_ds_doutb;
  assign adc12_ds_enable = enable[6];
  assign adc12_ds_num_samples = ds_num_samples[192 +: 32];
  assign ds_working[6] = adc12_ds_working;

  assign adc13_ds_addrb  = mem_addr[(8*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc13_ds_web    = mem_en[8] & mem_we;
  assign adc13_ds_enb    = mem_en[8];
  assign adc13_ds_dinb   = mem_wdata;
  assign mem_rdata[(8*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc13_ds_doutb;
  assign adc13_ds_enable = enable[7];
  assign adc13_ds_num_samples = ds_num_samples[224 +: 32];
  assign ds_working[7] = adc13_ds_working;

  assign adc20_ds_addrb  = mem_addr[(9*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc20_ds_web    = mem_en[9] & mem_we;
  assign adc20_ds_enb    = mem_en[9];
  assign adc20_ds_dinb   = mem_wdata;
  assign mem_rdata[(9*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc20_ds_doutb;
  assign adc20_ds_enable = enable[8];
  assign adc20_ds_num_samples = ds_num_samples[256 +: 32];
  assign ds_working[8] = adc20_ds_working;

  assign adc21_ds_addrb  = mem_addr[(10*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc21_ds_web    = mem_en[10] & mem_we;
  assign adc21_ds_enb    = mem_en[10];
  assign adc21_ds_dinb   = mem_wdata;
  assign mem_rdata[(10*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc21_ds_doutb;
  assign adc21_ds_enable = enable[9];
  assign adc21_ds_num_samples = ds_num_samples[288 +: 32];
  assign ds_working[9] = adc21_ds_working;

  assign adc22_ds_addrb  = mem_addr[(11*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc22_ds_web    = mem_en[11] & mem_we;
  assign adc22_ds_enb    = mem_en[11];
  assign adc22_ds_dinb   = mem_wdata;
  assign mem_rdata[(11*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc22_ds_doutb;
  assign adc22_ds_enable = enable[10];
  assign adc22_ds_num_samples = ds_num_samples[320 +: 32];
  assign ds_working[10] = adc22_ds_working;

  assign adc23_ds_addrb  = mem_addr[(12*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc23_ds_web    = mem_en[12] & mem_we;
  assign adc23_ds_enb    = mem_en[12];
  assign adc23_ds_dinb   = mem_wdata;
  assign mem_rdata[(12*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc23_ds_doutb;
  assign adc23_ds_enable = enable[11];
  assign adc23_ds_num_samples = ds_num_samples[352 +: 32];
  assign ds_working[11] = adc23_ds_working;

  assign adc30_ds_addrb  = mem_addr[(13*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc30_ds_web    = mem_en[13] & mem_we;
  assign adc30_ds_enb    = mem_en[13];
  assign adc30_ds_dinb   = mem_wdata;
  assign mem_rdata[(13*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc30_ds_doutb;
  assign adc30_ds_enable = enable[12];
  assign adc30_ds_num_samples = ds_num_samples[384 +: 32];
  assign ds_working[12] = adc30_ds_working;

  assign adc31_ds_addrb  = mem_addr[(14*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc31_ds_web    = mem_en[14] & mem_we;
  assign adc31_ds_enb    = mem_en[14];
  assign adc31_ds_dinb   = mem_wdata;
  assign mem_rdata[(14*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc31_ds_doutb;
  assign adc31_ds_enable = enable[13];
  assign adc31_ds_num_samples = ds_num_samples[416 +: 32];
  assign ds_working[13] = adc31_ds_working;

  assign adc32_ds_addrb  = mem_addr[(15*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc32_ds_web    = mem_en[15] & mem_we;
  assign adc32_ds_enb    = mem_en[15];
  assign adc32_ds_dinb   = mem_wdata;
  assign mem_rdata[(15*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc32_ds_doutb;
  assign adc32_ds_enable = enable[14];
  assign adc32_ds_num_samples = ds_num_samples[448 +: 32];
  assign ds_working[14] = adc32_ds_working;

  assign adc33_ds_addrb  = mem_addr[(16*C_MEMORY_ADDR_WIDTH) +: C_MEMORY_ADDR_WIDTH];
  assign adc33_ds_web    = mem_en[16] & mem_we;
  assign adc33_ds_enb    = mem_en[16];
  assign adc33_ds_dinb   = mem_wdata;
  assign mem_rdata[(16*C_MEMORY_DATA_WITH) +: C_MEMORY_DATA_WITH] = adc33_ds_doutb;
  assign adc33_ds_enable = enable[15];
  assign adc33_ds_num_samples = ds_num_samples[480 +: 32];
  assign ds_working[15] = adc33_ds_working;

endmodule

module rfadc_exdes_ctrl_axi_rfa # (
    parameter integer C_S_AXI_DATA_WIDTH  = 32,
    parameter integer C_S_AXI_ADDR_WIDTH  = 32,
    parameter integer C_NUM_MEMORY_BLOCK  = 4,
    parameter integer SELECT_MEM_WIDTH = $clog2(C_NUM_MEMORY_BLOCK),
    parameter integer C_MEMORY_ADDR_WIDTH = C_S_AXI_ADDR_WIDTH - SELECT_MEM_WIDTH,
    parameter integer C_MEMORY_DATA_WITH  = 32, // max is C_S_AXI_DATA_WIDTH
    parameter integer C_S_TIMEOUT_WIDTH   = 12
  ) (
  	
    output reg [C_NUM_MEMORY_BLOCK-1:0]                       mem_en,
    output reg                                                mem_we,
    output reg [(C_NUM_MEMORY_BLOCK*C_MEMORY_ADDR_WIDTH)-1:0] mem_addr,
    input      [(C_NUM_MEMORY_BLOCK*C_MEMORY_DATA_WITH)-1:0]  mem_rdata,
    output reg [C_MEMORY_DATA_WITH-1:0]                       mem_wdata,
    
    input                                                     timeout_enable_in,
    input       [C_S_TIMEOUT_WIDTH-1:0]                       timeout_value_in,
    
    input                                                     s_axi_aclk,
    input                                                     s_axi_aresetn,

    input [C_S_AXI_ADDR_WIDTH-1:0]                            s_axi_awaddr,
    input [2:0]                                               s_axi_awprot,
    input                                                     s_axi_awvalid,
    output                                                    s_axi_awready,    
    	
    input [C_S_AXI_DATA_WIDTH-1:0]                            s_axi_wdata,
    input [(C_S_AXI_DATA_WIDTH/8)-1:0]                        s_axi_wstrb,
  
    input                                                     s_axi_wvalid,
    output                                                    s_axi_wready,    
    
    output [1:0]                                              s_axi_bresp,
    output                                                    s_axi_bvalid,
    input                                                     s_axi_bready,
    input  [C_S_AXI_ADDR_WIDTH-1:0]                           s_axi_araddr,
    input  [2:0]                                              s_axi_arprot,
    input                                                     s_axi_arvalid,
    output                                                    s_axi_arready,
    output [C_S_AXI_DATA_WIDTH-1:0]                           s_axi_rdata,
    output [1:0]                                              s_axi_rresp,
    output                                                    s_axi_rvalid,
    input                                                     s_axi_rready
    
  );
  
  // -----------------------------------------------------------------------------
  // Local constant
  // -----------------------------------------------------------------------------
  
  localparam integer AXI_UNUSED_LSB = 2;  
  localparam integer START_MEM_SEL  = C_MEMORY_ADDR_WIDTH + SELECT_MEM_WIDTH + AXI_UNUSED_LSB - 1; 
  localparam integer END_MEM_SEL    = C_MEMORY_ADDR_WIDTH + AXI_UNUSED_LSB;

  // -----------------------------------------------------------------------------
  // Reg and wire declaration
  // -----------------------------------------------------------------------------
  
  // Memory interface
  wire [SELECT_MEM_WIDTH-1:0]     select_mem;  // select a memory 0 to C_NUM_MEMORY_BLOCK  
  wire                            mem_rden;    // memory read enable to any of the C_NUM_MEMORY_BLOCK
  wire [C_S_AXI_ADDR_WIDTH-1:0]   mem_addr_i;  // same width as axi r/w address width
  wire                            mem_we_i;    // Combinatorial write enable
  
  // Axi interface
  reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_awaddr_ff;
  reg                             axi_awready_ff;
  reg  	                          axi_wready_ff;
  reg [1:0]                       axi_bresp_ff;
  reg  	                          axi_bvalid_ff;
  reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_araddr_ff;
  reg  	                          axi_arready_ff;
  reg [C_S_AXI_DATA_WIDTH-1 : 0]  axi_rdata_ff;
  reg [1 : 0] 	                  axi_rresp_ff;
  reg  	                          axi_rvalid_ff;
  
  reg  [C_MEMORY_ADDR_WIDTH-1:0]    mem_addr_array [(C_NUM_MEMORY_BLOCK)-1:0];
  reg  [C_MEMORY_DATA_WITH-1:0]     mem_rdata_array[(C_NUM_MEMORY_BLOCK)-1:0];
  
  // Timeout signals
  wire                            load_timeout_timer_w;
  wire                            load_timeout_timer_r;
  wire                            clear_timeout_timer;
  wire                            timeout;
  reg  [C_S_TIMEOUT_WIDTH:0]      timeout_timer_count;
  reg                             write_in_progress;
  reg                             read_in_progress;
   
  assign select_mem = mem_addr_i [START_MEM_SEL:END_MEM_SEL];
  
  genvar i;
  generate
    for (i = 0; i < C_NUM_MEMORY_BLOCK; i = i + 1) 
    begin
      assign mem_addr[((i+1)*C_MEMORY_ADDR_WIDTH)-1 : (i*C_MEMORY_ADDR_WIDTH)] = mem_addr_array[i];
      always @( posedge s_axi_aclk ) begin
        if (~s_axi_aresetn) begin
          mem_rdata_array[i] <= {(C_MEMORY_DATA_WITH){1'b0}};
        end
        else begin
          mem_rdata_array[i] <= mem_rdata[((i+1)*C_MEMORY_DATA_WITH)-1 : (i*C_MEMORY_DATA_WITH)];
        end
      end
    end
  endgenerate

  // -----------------------------------------------------------------------------
  // AXI slave operation
  // -----------------------------------------------------------------------------

  // Implement axi_awready generation
  // axi_awready is asserted for one s_axi_aclk clock cycle when both
  // s_axi_awvalid and s_axi_wvalid are asserted. axi_awready is
  // de-asserted when reset is low.
  
  always @( posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
    axi_awready_ff <= 1'b0;
    end 
    else if (~axi_awready_ff && s_axi_awvalid && s_axi_wvalid) begin
      // slave is ready to accept write address when 
      // there is a valid write address and write data
      // on the write address and data bus. This design 
      // expects no outstanding transactions. 
      axi_awready_ff <= 1'b1;
    end 
  else begin
      axi_awready_ff <= 1'b0;
    end
  end       

  // Implement axi_awaddr latching
  // This process is used to latch the address when both 
  // s_axi_awvalid and s_axi_wvalid are valid. 
  
  always @( posedge s_axi_aclk ) begin
    if (~s_axi_aresetn)  begin
      axi_awaddr_ff <= 0;
    end 
    else if (~axi_awready_ff && s_axi_awvalid && s_axi_wvalid) begin
      // Write Address latching 
      axi_awaddr_ff <= s_axi_awaddr;
    end 
  end       

  // Implement axi_wready generation
  // axi_wready is asserted for one s_axi_aclk clock cycle when both
  // s_axi_awvalid and s_axi_wvalid are asserted. axi_wready is 
  // de-asserted when reset is low. 
  
  always @( posedge s_axi_aclk ) begin
    if ( s_axi_aresetn == 1'b0 ) begin
      axi_wready_ff <= 1'b0;
    end 
    else if (~axi_wready_ff && s_axi_wvalid && s_axi_awvalid) begin
      // slave is ready to accept write data when 
      // there is a valid write address and write data
      // on the write address and data bus. This design 
      // expects no outstanding transactions. 
      axi_wready_ff <= 1'b1;
    end
    else begin
      axi_wready_ff <= 1'b0;
    end 
  end       
       
  // Implement write response logic generation
  // The write response and response valid signals are asserted by the slave 
  // when axi_wready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted.  
  // This marks the acceptance of address and indicates the status of 
  // write transaction.
  
  always @( posedge s_axi_aclk) begin	
  if (~s_axi_aresetn) begin
    axi_bvalid_ff  <= 1'b0;
    axi_bresp_ff   <= 2'b0;
    end 
  else if ((axi_awready_ff & s_axi_awvalid && ~axi_bvalid_ff && axi_wready_ff && s_axi_wvalid) || (timeout && write_in_progress)) begin
      // indicates a valid write response is available
      axi_bvalid_ff <= 1'b1;
      if (timeout) begin
        axi_bresp_ff  <= 2'b10; // 'SLVERR' response
      end
      else begin
        axi_bresp_ff  <= 2'b00; // 'OKAY' response
      end
    end 
  else if (s_axi_bready && axi_bvalid_ff) begin
      //check if bready is asserted while bvalid is high) 
      //(there is a possibility that bready is always asserted high)   
      axi_bvalid_ff <= 1'b0; 
    end  
  end   

  // Implement axi_arready generation
  // axi_arready is asserted for one s_axi_aclk clock cycle when
  // s_axi_arvalid is asserted. axi_awready is 
  // de-asserted when reset (active low) is asserted. 
  // The read address is also latched when s_axi_arvalid is 
  // asserted. axi_araddr is reset to zero on reset assertion.
  reg[2:0] cnt_ff;
  always @( posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      cnt_ff <= 3'b000;
    end 
    else begin
      if (s_axi_arvalid) begin
        cnt_ff <= cnt_ff + 1;           
      end
      else begin
        cnt_ff <= '0;
      end 
    end 
  end 
	
  wire mem_capture;
  wire mem_rd_delay;

  assign mem_rden     = s_axi_arvalid & (cnt_ff == 0); // enable the memory read access
  assign mem_capture  = s_axi_arvalid & (cnt_ff == 4); // capture the memory read data (pipelined)
  assign mem_rd_delay = s_axi_arvalid & (cnt_ff == 4); // Enable axi_arready_ff to be asserted 

  always @( posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      axi_arready_ff <= 1'b0;
      //axi_araddr_ff  <= 32'b0;
    end 
    else if (~axi_arready_ff & s_axi_arvalid & mem_rd_delay) begin
      // indicates that the slave has acceped the valid read address
      axi_arready_ff <= 1'b1;	    
      // Read address latching
      //axi_araddr_ff  <= s_axi_araddr;
    end
    else begin
      axi_arready_ff <= 1'b0;
    end 
  end       

  // Implement axi_arvalid generation
  // axi_rvalid is asserted for one s_axi_aclk clock cycle when both 
  // s_axi_arvalid and axi_arready are asserted. The slave registers 
  // data are available on the axi_rdata bus at this instance. The 
  // assertion of axi_rvalid marks the validity of read data on the 
  // bus and axi_rresp indicates the status of read transaction.axi_rvalid 
  // is deasserted on reset (active low). axi_rresp and axi_rdata are 
  // cleared to zero on reset (active low).  
  
  always @( posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      axi_rvalid_ff <= 0;
      axi_rresp_ff  <= 0;
      //axi_rdata_ff  <= '0;
    end 
    else if ((axi_arready_ff && s_axi_arvalid && ~axi_rvalid_ff) || (timeout && read_in_progress)) begin
      // Valid read data is available at the read data bus
      axi_rvalid_ff <= 1'b1;
      if (timeout) begin
        axi_rresp_ff  <= 2'b10; // 'SLVERR' response
      end
      else begin
        axi_rresp_ff  <= 2'b00; // 'OKAY' response
      end
      // Capture the readata
      //axi_rdata_ff  <= mem_rdata[select_mem];      
    end   
    else if (axi_rvalid_ff && s_axi_rready) begin
      // Read data is accepted by the master
      axi_rvalid_ff <= 1'b0;
    end                
  end   
  
  // -----------------------------------------------------------------------------
  // Memory access operation
  // -----------------------------------------------------------------------------
   
  // The read write access to the memory cannot be simultmeous
  // Implement memory mapped select and write logic generation
  // The write data is accepted and written to a memory mapped when
  // axi_awready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted. Write strobes are used to
  // select byte enables of slave registers while writing.
  // These registers are cleared when reset (active low) is applied.
  // Slave register write enable is asserted when valid address and data are available
  // and the slave is ready to accept the write address and write data.
  assign mem_we_i = axi_wready_ff & s_axi_wvalid & axi_awready_ff & s_axi_awvalid;
  
  // Register for timing closure
  always @(posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      mem_we  <= 0;
    end
    else begin
      mem_we  <= mem_we_i;
    end
  end
  
  // memory write data bus
  always @(posedge s_axi_aclk ) begin
    mem_wdata <= s_axi_wdata;
  end

  // Implement memory mapped select and read logic generation
  // Slave register read enable is asserted when a valid address is available
  // and the slave is ready to accept the read address.
  //assign mem_rden = axi_arready_ff;
  
  // Mux beetween read and write address to the memories. Assumption is that read and write cannot happen simultaneously
  // JTAG axi master honor this condition
  assign mem_addr_i = s_axi_arvalid ?  s_axi_araddr : s_axi_awaddr;      
    
  //always@(*) begin
  //   mem_addr_array = '{default:'d0};
  //   mem_en   = '0;
  //   // selected memory access enable 
  //   mem_en[select_mem]  = mem_we | mem_rden; 
  //   
  //   // Individual memory address (one per memory)
  //   mem_addr_array[select_mem] = mem_addr_i[C_MEMORY_ADDR_WIDTH+AXI_UNUSED_LSB-1:AXI_UNUSED_LSB]; // 2'lsb are 0 fore axi -> map addrees 0 - 0 and 4 to 1 etc ..    
  //end
  
  always @(posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      mem_addr_array <= '{default:'d0};
      mem_en         <= '0;
    end
    else begin
      // selected memory access enable 
      mem_en[select_mem]         <= mem_we_i | mem_rden; 
      // Individual memory address (one per memory)
      mem_addr_array[select_mem] <= mem_addr_i[C_MEMORY_ADDR_WIDTH+AXI_UNUSED_LSB-1:AXI_UNUSED_LSB]; // 2'lsb are 0 fore axi -> map addrees 0 - 0 and 4 to 1 etc ..    
    end
  end
  
  // Output register of the memory read data
  always @(posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      axi_rdata_ff  <= 0;
    end 
    else if (mem_capture) begin    
      // When there is a valid read address (s_axi_arvalid) with 
      // acceptance of read address by the slave (axi_arready), 
      // output the read dada 
      axi_rdata_ff <= mem_rdata_array[select_mem];  // register read data	     
    end
  end 
  assign s_axi_rdata	  = axi_rdata_ff;
  
  // -----------------------------------------------------------------------------
  // Output assignement
  // -----------------------------------------------------------------------------

  assign s_axi_awready	= axi_awready_ff;
  assign s_axi_wready   = axi_wready_ff;
  assign s_axi_bresp    = axi_bresp_ff;
  assign s_axi_bvalid   = axi_bvalid_ff;
  assign s_axi_arready	= axi_arready_ff;
  assign s_axi_rresp  	= axi_rresp_ff;
  assign s_axi_rvalid   = axi_rvalid_ff;
  
//---------------------------------------------------------------------------         
//---------------------------------------------------------------------------         
// TIMEOUT LOGIC
//---------------------------------------------------------------------------         
//---------------------------------------------------------------------------         

  assign load_timeout_timer_w   = (s_axi_awvalid & s_axi_awready)   |
                                  (s_axi_wvalid  & s_axi_wready);
                                
  assign load_timeout_timer_r   = (s_axi_arvalid & s_axi_arready);
                      
  assign clear_timeout_timer    = (s_axi_bvalid & s_axi_bready)     |
                                  (s_axi_rvalid & s_axi_rready);
                                
  assign timeout                = timeout_timer_count[C_S_TIMEOUT_WIDTH];
  
  always @( posedge s_axi_aclk ) begin
    if (~s_axi_aresetn) begin
      timeout_timer_count <= 'd0;
      write_in_progress   <= 1'b0;
      read_in_progress    <= 1'b0;
    end
    else begin
      // clear the timeout at the end of AXI transactions or a timeout event 
      if (clear_timeout_timer | timeout) begin
        timeout_timer_count <= 'd0;
        write_in_progress   <= 1'b0;
        read_in_progress    <= 1'b0;
      end
      else begin
        // load the timer at the start of a RW access and only if the timeout is enabled
        if(load_timeout_timer_w & timeout_enable_in) begin
          timeout_timer_count <= {1'b0,(~timeout_value_in)};
          read_in_progress  <= 1'b0;
          write_in_progress <= 1'b1;
        end
        else if(load_timeout_timer_r & timeout_enable_in) begin
          timeout_timer_count <= {1'b0,(~timeout_value_in)};
          read_in_progress  <= 1'b1;
          write_in_progress <= 1'b0;
        end
        else begin
          // if the timeout counter is greater than 0 and enabled we count
          if ((timeout_timer_count != 'd0 ) & timeout_enable_in) begin
            timeout_timer_count <= timeout_timer_count + 'd1;
          end
        end
      end
    end 
  end

  // -----------------------------------------------------------------------------
  // Function definition
  // -----------------------------------------------------------------------------
  
  // function called clogb2 that returns an integer which has the
  // value of the ceiling of the log base 2

	 function integer clogb2 (input integer bit_depth);
		 begin
		 for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			 bit_depth = bit_depth >> 1;
		 end
	 endfunction

endmodule
