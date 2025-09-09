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

(* DowngradeIPIdentifiedWarnings="yes" *)
//------------------------------------------------------------------------------
// RAM Data capture module.
//------------------------------------------------------------------------------
module exdes_xpm_mem_ds #(
   parameter wordWidth     = 32,
   parameter memWordWidth  = 2,
   parameter addraWidth    = 8,
   parameter addrWidth     = 8,
   parameter use_div2_clk  = 0,
   parameter mem_size      = 131072
) (

  input  wire                    clka           ,
  input  wire                    clka_div2      ,
  input  wire                    clkb           ,
  input  wire                    enable         ,
  
  input  wire                    hw_trigger     ,
  input  wire                    hw_trigger_en  ,
  
 
  input  wire                    web            ,
  input  wire                    enb            ,
  input  wire [addrWidth-1:0]    addrb          ,
  input  wire [31:0]             dinb           ,
  output wire [31:0]             doutb          ,
  
  input  wire [31:0]             endaddra       ,
  input  wire                    start_data     ,
  output wire                    working        ,
  
  input  wire [wordWidth-1:0]    axis_data      ,
  input  wire                    axis_valid
);

//------------------------------------------------------------------------------
// Function clog2 - returns the integer ceiling of the base 2 logarithm of x,
//------------------------------------------------------------------------------
function integer clog2;
input [31:0] Depth;
integer i;
begin
 i = Depth;     
 for(clog2 = 0; i > 0; clog2 = clog2 + 1)
   i = i >> 1;
end
endfunction

  reg  [wordWidth-1:0]           axis_data_r;
  reg                            axis_valid_r;
  reg  [wordWidth-1:0]           axis_data_r2;
  reg                            axis_valid_r2;
  reg  [wordWidth-1:0]           axis_data_r3;
  reg                            axis_valid_r3;

generate
  if (use_div2_clk == 0) begin
    exdes_xpm_mem_ds_int #(.wordWidth(wordWidth), .memWordWidth(memWordWidth), .addraWidth(addraWidth), .addrWidth(addrWidth))
      exdes_xpm_mem_ds_i (
        .clka          (clka),
        .clkb          (clkb),
        .enable        (enable),

        .hw_trigger    (hw_trigger),
        .hw_trigger_en (hw_trigger_en),
  
     
        .web           (web),
        .enb           (enb),
        .addrb         (addrb),
        .dinb          (dinb),
        .doutb         (doutb),
    
        .endaddra      (endaddra),
        .start_data    (start_data),
        .working       (working),
    
        .axis_data     (axis_data),
        .axis_valid    (axis_valid));
  end
endgenerate

generate
  if (use_div2_clk == 1) begin
  
    always @(posedge clka) begin
      axis_data_r    <= axis_data;
      axis_valid_r   <= axis_valid;
      axis_data_r2   <= axis_data_r;
      axis_valid_r2  <= axis_valid_r;
      axis_data_r3   <= axis_data_r2;
      axis_valid_r3  <= axis_valid_r2;
    end
    
    exdes_xpm_mem_ds_int #(.wordWidth(wordWidth*2), .memWordWidth(memWordWidth*2), .addraWidth(clog2((mem_size/(32 * memWordWidth))-1)), .addrWidth(addrWidth), .use_div2_clk(use_div2_clk))
      exdes_xpm_mem_ds_i (
        .clka          (clka_div2),
        .clkb          (clkb),
        .enable        (enable),

        .hw_trigger    (hw_trigger),
        .hw_trigger_en (hw_trigger_en),
  
     
        .web           (web),
        .enb           (enb),
        .addrb         (addrb),
        .dinb          (dinb),
        .doutb         (doutb),
    
        .endaddra      (endaddra),
        .start_data    (start_data),
        .working       (working),
    
        .axis_data     ({axis_data_r2, axis_data_r3}),
        .axis_valid    (axis_valid_r3));
  end
endgenerate
  
endmodule

module exdes_xpm_mem_ds_int #(
   parameter wordWidth     = 32,
   parameter memWordWidth  = 2,
   parameter addraWidth    = 8,
   parameter addrWidth     = 8,
   parameter use_div2_clk  = 0
) (

  input  wire                    clka           ,
  input  wire                    clkb           ,
  input  wire                    enable         ,
  
  input  wire                    hw_trigger     ,
  input  wire                    hw_trigger_en  ,
  
 
  input  wire                    web            ,
  input  wire                    enb            ,
  input  wire [addrWidth-1:0]    addrb          ,
  input  wire [31:0]             dinb           ,
  output wire [31:0]             doutb          ,
  
  input  wire [31:0]             endaddra       ,
  input  wire                    start_data     ,
  output wire                    working        ,
  
  input  wire [wordWidth-1:0]    axis_data      ,
  input  wire                    axis_valid
);

//------------------------------------------------------------------------------
// Function clog2 - returns the integer ceiling of the base 2 logarithm of x,
//------------------------------------------------------------------------------
function integer clog2;
input [31:0] Depth;
integer i;
begin
 i = Depth;     
 for(clog2 = 0; i > 0; clog2 = clog2 + 1)
   i = i >> 1;
end
endfunction

// 
localparam wordsInMemory = 2 ** addrWidth;

// Internal variables
wire                                 wea_i;    //
reg                                  wea   =0; //
reg                                  wea_r =0; //
reg  [addraWidth-1:0]                addra =0; //
reg                                  enable_sync_r;
reg                                  working_i = 0;
reg                                  start_receive = 0;
reg                                  cap_complete = 0;
wire [(16*memWordWidth)-1:0]         dina_i;
wire [(16*memWordWidth)-1:0]         dina_r;
reg  [(clog2(memWordWidth-1))+4:0]   del_count;
reg  [(clog2(memWordWidth-1))+4:0]   del_count_r;
reg  [(clog2(memWordWidth-1))-1:0]   cycle_count = 0;
reg  [(clog2(memWordWidth-1))-1:0]   en_count;
wire [(clog2((wordWidth/16)-1))-1:0] pos[memWordWidth-1:0];
wire [4:0]                           srl_addr[memWordWidth-1:0];
reg  [wordWidth-1:0]                 axis_data_r;
reg                                  axis_valid_r;

genvar i;
genvar j;

// Register the input data from the converter for timing purposes
always @(posedge clka) begin
  axis_data_r  <= axis_data;
  axis_valid_r <= axis_valid;
end

// Register so that the enable_sync signal can be replicated during optimization
always @(posedge clka) begin
  if (~hw_trigger_en) begin 
    enable_sync_r <= start_data;
  end
  else begin
    enable_sync_r <= hw_trigger;
  end
end

// Always keep our mem 2^^n so this can just rollover
always @(posedge clka) begin
  if (~enable_sync_r) begin
    addra        <= 'd0;
    working_i    <= 'b0;
    cap_complete <= 'b0;
  end else begin 
    if (cap_complete || ~axis_valid_r) begin
      addra      <= 'd0;
      working_i  <= 'b0;
    end else begin
      if (wea_i) begin
        if (addra == endaddra[addraWidth-1:0]) begin
           addra        <= 'd0;
           working_i    <= 'b0;
           cap_complete <= 'b1;
        end
        else begin     
           addra        <= addra + 'd1;
           working_i    <= 'b1;
        end
      end
    end
  end
end

// Synchronize working back onto the AXI clock domain
xpm_cdc_single #(.SRC_INPUT_REG(0), .DEST_SYNC_FF(5)) data_cap_working_i (.src_clk(1'd0),.dest_clk (clkb), .src_in (working_i), .dest_out (working) );

generate
  if ((wordWidth/16 == 8 && memWordWidth == 8) || (wordWidth/16 == 16 && memWordWidth == 16)) begin : no_barrel_shift
    assign dina_i = axis_data_r;
    
    always @(posedge clka) begin
      if (~enable_sync_r || addra == endaddra[addraWidth-1:0] || cap_complete || ~axis_valid) begin
        wea_r       <= 1'b0;
      end
      else begin
        wea_r       <= 1'b1;
      end
    end
    
    assign wea_i  = wea_r;
  end
endgenerate

generate
  if ((wordWidth/16 != 8 || memWordWidth != 8) && (wordWidth/16 != 16 || memWordWidth != 16)) begin : barrel_shift
  
    // Count through the cycles as we write memWordWidth*(wordWidth/16) 
    // samples into the memory.
    always @(posedge clka) begin
      if (~enable_sync_r) begin
          cycle_count <= {(clog2(memWordWidth-1)){1'b1}};
      end
      else begin
        if (cycle_count == {(clog2(memWordWidth-1)){1'b1}}) begin
          cycle_count <= 'd0;
        end
        else begin
          cycle_count <= cycle_count + 1;
        end
      end
    end
    
    // Calculate the delay on a particular sample
    always @(posedge clka) begin
      if (~enable_sync_r) begin
        del_count <= 'd0;
      end
      else begin
        if (cycle_count == {(clog2(memWordWidth-1)){1'b1}}) begin
          del_count <= 'd0;
        end
        else begin
          del_count <= (del_count + (wordWidth/16)) % memWordWidth;
        end
      end
    end
    
    // Calculate the cycles to write data into the memory
    always @(posedge clka) begin
      if (cycle_count == {(clog2(memWordWidth-1)){1'b1}}) begin
        en_count <= (wordWidth/16);
        wea      <= 1'b0;
      end
      else begin
        if (en_count + (wordWidth/16) < memWordWidth) begin
          en_count <= en_count + (wordWidth/16);
          wea      <= 1'b0;
        end
        else begin
          en_count <= (en_count + (wordWidth/16)) - memWordWidth;
          wea      <= 1'b1;
        end
      end
    end
    
    always @(posedge clka) begin
      if (~enable_sync_r || (addra == endaddra[addraWidth-1:0] && wea_i) || cap_complete || ~axis_valid) begin
        wea_r       <= 1'b0;
      end
      else begin
        wea_r       <= wea;
      end
      del_count_r <= del_count;
    end
      
    
    assign wea_i = wea_r;
    
    for (i = 0; i < memWordWidth; i = i + 1) begin

      assign pos[i]  = ((i - del_count) % memWordWidth) % (wordWidth/16);
      
      for (j = 0; j < 16; j=j+1)
      begin
        // Delay the data in order to align it at the DAC input
        SRLC32E srl_delay_gen_1 (
          .Q   (dina_r[(i*16)+j]),
          .Q31 (),
          .A   (srl_addr[i]),
          .CE  (1'b1),
          .CLK (clka),
          .D   (axis_data_r[(pos[i]*16)+j]));
      end
      
      if (wordWidth/16 == 1) begin
        assign srl_addr[i] = (memWordWidth-1) - i;
      end
      
      if (wordWidth/16 == 2) begin
        assign srl_addr[i] = ((memWordWidth-1) - i) >> 1;
      end
      
      if (wordWidth/16 != 1 && wordWidth/16 != 2) begin
        assign srl_addr[i] = (del_count_r > 4*(wordWidth/16) + i) ? 5'd5 : ((del_count_r > 3*(wordWidth/16) + i) ? 5'd4 : ((del_count_r > 2*(wordWidth/16) + i) ? 5'd3 : ((del_count_r > (wordWidth/16) + i) ? 5'd2 : ((i < del_count_r) ? 5'd1 : 5'd0))));
        //assign srl_addr[i] = (del_count_r <= i) ? 5'd0 : (((del_count_r - 1) - i)/(wordWidth/16))+1;
      end
      
    end
    
    assign dina_i = dina_r;
    
  end
endgenerate

//-----------------------------------------------------------------------------
// Instance the wrapped xpm wrapper
//-----------------------------------------------------------------------------
xpm_mem_ds_wrap2 #(

   .wordWidth     (memWordWidth*16),
   .wordsInMemory (wordsInMemory),
   .addraWidth    (addraWidth),
   .addrWidth     (addrWidth)
   
) xpm_mem_ds_wrap2_i (
.clka           (clka         ) ,
.clkb           (clkb         ) ,

.web            (web          ) ,
.enb            (enb          ) ,
.addrb          (addrb        ) ,
.dinb           (dinb         ) ,
.doutb          (doutb        ) ,

.wea            (wea_i        ) ,
.ena            (enable_sync_r) ,
.addra          (addra        ) ,
.dina           (dina_i       )
);

// synthesis translate_off
// DEBUG: Check that what we write in appears at the output

reg [2063:0][15:0] data_in;
reg         [11:0] in_count;
reg         [10:0] out_count;
reg                enb_r;
reg                enb_r2;
reg                start_check;
integer            check_loop;

always @(posedge clka) begin
  if (enable_sync_r == 1'b0) begin
    data_in           <= {2064{16'd0}};
    in_count          <= 12'd0;
  end
  else begin
    if (axis_valid == 1'b1 && cap_complete == 1'b0 && in_count <= 2047) begin
      data_in[in_count+:(wordWidth/16)] <= axis_data;
      in_count                          <= in_count + (wordWidth/16);
    end
  end
end

always @(posedge clkb) begin
  if (enable == 1'b0) begin
    out_count           <= 11'd0;
    enb_r               <= 1'b0;
    enb_r2              <= 1'b0;
    start_check         <= 1'b0;
  end
  else begin
    enb_r  <= enb;
    enb_r2 <= enb_r;
    if (enb_r2 == 1'b1) begin
      //data_check: assert (doutb == {data_in[out_count+1], data_in[out_count]}) else begin
      //  $error("Data not correct at output of block RAM");
      //  $stop;
      //end
      out_count <= out_count + 2;
    end
  end
end

// synthesis translate_on

endmodule

//-----------------------------------------------------------------------------
// Wrap the XPM wrapper with fixed enables
//-----------------------------------------------------------------------------
module xpm_mem_ds_wrap2 #(
   parameter wordWidth     = 32,
   parameter wordsInMemory = 128,
   parameter addraWidth    = 8,
   parameter addrWidth     = 8
) (

  input  wire                    clka           ,
  input  wire                    clkb           ,

  input  wire                    web            ,
  input  wire                    enb            ,
  input  wire [addrWidth-1:0]    addrb          ,
  input  wire [31:0]             dinb           ,
  output wire [31:0]             doutb          ,

  input  wire                    wea            ,
  input  wire                    ena            ,
  input  wire [addraWidth-1:0]   addra          ,
  input  wire [wordWidth-1:0]    dina

);

  reg                    wea_r;
  reg                    ena_r;
  reg [addraWidth-1:0]   addra_r;
  reg [wordWidth-1:0]    dina_r;
  
  always @(posedge clka) begin
    wea_r   <= wea;
    ena_r   <= ena;
    addra_r <= addra;
    dina_r  <= dina;
  end

xpm_mem_ds_sdpram_wrap #(

   .wordWidth     (wordWidth    ),
   .wordsInMemory (wordsInMemory),
   .addraWidth    (addraWidth   ),
   .addrWidth     (addrWidth    )
   
) xpm_mem_dg_sdpram_wrap_i (
.clka           (clka   ) ,
.rsta           (1'd0   ) ,
.ena            (ena_r  ) ,
.wea            (wea_r  ) ,
.addra          (addra_r) ,
.dina           (dina_r ) ,
.clkb           (clkb   ) ,
.rstb           (1'd0   ) ,
.enb            (enb    ) ,
.web            (web    ) ,
.addrb          (addrb  ) ,
.dinb           (dinb   ) ,
.doutb          (doutb  )

);

endmodule

//-----------------------------------------------------------------------------
// XPM wrapper. Lowest level block in RAM CAP/GEN
//-----------------------------------------------------------------------------
module xpm_mem_ds_sdpram_wrap #(
   parameter wordWidth     = 256,
   parameter wordsInMemory = 128,
   parameter addraWidth    = 8,
   parameter addrWidth     = 8
) (

  input  wire                    clka           ,
  input  wire                    rsta           ,
  input  wire                    ena            ,
  input  wire                    wea            ,
  input  wire [addraWidth-1:0]   addra          ,
  input  wire [wordWidth-1:0]    dina           ,

  // Port B module ports
  input  wire                    clkb           ,
  input  wire                    rstb           ,
  input  wire                    enb            ,
  input  wire                    web            ,
  input  wire [addrWidth-1:0]    addrb          ,
  input  wire [31:0]             dinb           ,
  output wire [31:0]             doutb          

);

xpm_memory_sdpram # (
  // Common module parameters
  .MEMORY_SIZE        (32*wordsInMemory),        // positive integer  
  .MEMORY_PRIMITIVE   ("block"),                 // string; "auto", "distributed", "block" or "ultra";
  .CLOCKING_MODE      ("independent_clock"),     // string; "common_clock", "independent_clock" 
  .MEMORY_INIT_FILE   ("none"),                  // string; "none" or "<filename>.mem" 
  .MEMORY_INIT_PARAM  (""    ),                  // string;
  .USE_MEM_INIT       (1),                       // integer; 0,1
  .WAKEUP_TIME        ("disable_sleep"),         // string; "disable_sleep" or "use_sleep_pin" 
  .MESSAGE_CONTROL    (0),                       // integer; 0,1
  .ECC_MODE           ("no_ecc"),                // string; "no_ecc", "encode_only", "decode_only" or "both_encode_and_decode" 
  .AUTO_SLEEP_TIME    (0),                       // Do not Change

  // Port A module parameters
  .WRITE_DATA_WIDTH_A (wordWidth),               // positive integer
  .BYTE_WRITE_WIDTH_A (wordWidth),               // integer; 8, 9, or WRITE_DATA_WIDTH_A value: write full word MEM_DATA_A_WITH 
  .ADDR_WIDTH_A       (addraWidth),              // positive integer

  // Port B module parameters
  .READ_DATA_WIDTH_B  (32),                      // positive integer
  .ADDR_WIDTH_B       (addrWidth),               // positive integer
  .READ_RESET_VALUE_B ("0"),                     // vector of READ_DATA_WIDTH_B bits
  .READ_LATENCY_B     (2),                       // non-negative integer
  .WRITE_MODE_B       ("no_change")              // string; "write_first", "read_first", "no_change"
  

   ) Ixpm_memory_tdpram (

  // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (clka          ),
  .ena            (ena           ),
  .wea            (wea           ),
  .addra          (addra         ),
  .dina           (dina          ),
  .injectsbiterra (1'b0          ),
  .injectdbiterra (1'b0          ),

  // Port B module ports
  .clkb           (clkb          ),
  .rstb           (rstb          ),
  .enb            (enb           ),
  .regceb         (1'b1          ),
  .addrb          (addrb         ),
  .doutb          (doutb         ),
  .sbiterrb       (              ),
  .dbiterrb       (              )
 );

endmodule
