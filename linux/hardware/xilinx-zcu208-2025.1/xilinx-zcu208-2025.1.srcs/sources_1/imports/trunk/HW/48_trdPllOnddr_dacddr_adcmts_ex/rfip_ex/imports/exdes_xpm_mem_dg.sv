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
// RAM based data generator module
//------------------------------------------------------------------------------
module exdes_xpm_mem_dg #(
   parameter wordWidth     = 32,
   parameter memWordWidth  = 2,
   parameter addrbWidth    = 8,
   parameter addrWidth     = 8,
   parameter use_div2_clk  = 0,
   parameter mem_size      = 131072
) (

  input  wire                    clka           ,
  input  wire                    clkb           ,
  input  wire                    clkb_div2      ,
  input  wire                    enable         ,
  
  input  wire                    hw_trigger     ,
  input  wire                    hw_trigger_en  ,

  
  input  wire                    wea            ,
  input  wire                    ena            ,
  input  wire [addrWidth-1:0]    addra          ,
  input  wire [31:0]             dina           ,
  output wire [31:0]             douta          ,

  input  wire [31:0]             endaddrb       ,
  input  wire                    start_data     ,

  input  wire                    axis_ready     ,    
  output reg                     axis_valid=0   ,
  output reg  [wordWidth-1:0]    axis_data          

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

  wire [(wordWidth*2)-1:0]       axis_data_i;
  wire                           axis_valid_i;
  reg  [(wordWidth*2)-1:0]       axis_data_r;
  reg  [(wordWidth*2)-1:0]       axis_data_r2;
  reg                            axis_valid_r;
  reg                            axis_valid_r2;
  reg                            valid_toggle;
  

generate
  if (use_div2_clk == 0) begin
    exdes_xpm_mem_dg_int #(.wordWidth(wordWidth), .memWordWidth(memWordWidth), .addrbWidth(addrbWidth), .addrWidth(addrWidth))
      exdes_xpm_mem_ds_i (
        .clka          (clka),
        .clkb          (clkb),
        .enable        (enable),

        .hw_trigger    (hw_trigger),
        .hw_trigger_en (hw_trigger_en),
  
     
        .wea           (wea),
        .ena           (ena),
        .addra         (addra),
        .dina          (dina),
        .douta         (douta),
    
        .endaddrb      (endaddrb),
        .start_data    (start_data),

        .axis_ready    (axis_ready),
        .axis_valid    (axis_valid_i),
        .axis_data     (axis_data_i[wordWidth-1:0]));
  
    always @(axis_valid_i, axis_data_i) begin
      axis_valid = axis_valid_i;
      axis_data  = axis_data_i[wordWidth-1:0];
    end
  end
endgenerate

generate
  if (use_div2_clk == 1) begin
  
    always @(posedge clkb_div2) begin
      axis_data_r  <= axis_data_i;
      axis_valid_r <= axis_valid_i;
    end
    
    always @(posedge clkb) begin
      axis_data_r2  <= axis_data_r;
      axis_valid_r2 <= axis_valid_r;
    end
    
    always @(posedge clkb) begin
      axis_valid <= axis_valid_r2;
    end
    
    always @(posedge clkb) begin
      if (axis_valid_r2 == 1'b0) begin
        valid_toggle <= 1'b0;
      end
      else begin
        valid_toggle <= ~valid_toggle;
      end
    end
    
    always @(posedge clkb) begin
      if (valid_toggle == 1'b0) begin
        axis_data <= axis_data_r2[wordWidth-1:0];
      end
      else begin
        axis_data <= axis_data_r2[(wordWidth*2)-1:wordWidth];
      end
    end
    
    exdes_xpm_mem_dg_int #(.wordWidth(wordWidth*2), .memWordWidth(memWordWidth*2), .addrbWidth(clog2((mem_size/(32 * memWordWidth))-1)), .addrWidth(addrWidth))
      exdes_xpm_mem_ds_i (
        .clka          (clka),
        .clkb          (clkb_div2),
        .enable        (enable),

        .hw_trigger    (hw_trigger),
        .hw_trigger_en (hw_trigger_en),
  
     
        .wea           (wea),
        .ena           (ena),
        .addra         (addra),
        .dina          (dina),
        .douta         (douta),
    
        .endaddrb      (endaddrb/2),
        .start_data    (start_data),

        .axis_ready    (axis_ready),
        .axis_valid    (axis_valid_i),
        .axis_data     (axis_data_i));
  end
endgenerate

endmodule

module exdes_xpm_mem_dg_int #(
   parameter wordWidth     = 32,
   parameter memWordWidth  = 2,
   parameter addrbWidth    = 8,
   parameter addrWidth     = 8
) (

  input  wire                    clka           ,
  input  wire                    clkb           ,
  input  wire                    enable         ,
  
  input  wire                    hw_trigger     ,
  input  wire                    hw_trigger_en  ,

  
  input  wire                    wea            ,
  input  wire                    ena            ,
  input  wire [addrWidth-1:0]    addra          ,
  input  wire [31:0]             dina           ,
  output wire [31:0]             douta          ,

  input  wire [31:0]             endaddrb       ,
  input  wire                    start_data     ,

  input  wire                    axis_ready     ,    
  output reg                     axis_valid=0   ,
  output reg  [wordWidth-1:0]    axis_data          

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

localparam wordsInMemory = 2 ** addrWidth;

// Internal variables
reg [addrbWidth-1:0]                addrb=0;
(* direct_reset = "yes" *)
reg                                 enable_sync_r;
wire [(16*memWordWidth)-1:0]        doutb_i;
wire [(16*memWordWidth)-1:0]        doutb_r;
reg  [(16*memWordWidth)-1:0]        doutb_r2;
wire                                addrb_ce;
reg  [(clog2(memWordWidth-1))+4:0]  rem_count;
reg  [(clog2(memWordWidth-1))-1:0]  pos_count;
reg  [(clog2(memWordWidth-1))-1:0]  cycle_count;
reg  [(clog2(memWordWidth-1))-1:0]  pos[(wordWidth/16)-1:0];
reg  [(clog2(memWordWidth-1))-1:0]  pos_r[(wordWidth/16)-1:0];
reg  [4:0]                          srl_addr[memWordWidth-1:0];
reg                                 start_addr;
wire                                start_addr_i;
reg  [3:0]                          axis_valid_r;
reg                                 addrbend;
  
genvar i;
genvar j;

// Register so that the start_data signal can be replicated during optimization
always @(posedge clkb) begin
   if (~hw_trigger_en) begin 
     enable_sync_r <= start_data;
   end
   else begin
     enable_sync_r <= hw_trigger;
   end
end

// Always keep our mem 2^^n so this can just rollover
always @(posedge clkb) begin
   if (~enable_sync_r) begin
      addrb        <= 'd0;
      axis_valid_r <= 4'd0;
      axis_valid   <= 1'b0;
      addrbend     <= 1'b0;
   end 
   else begin
      // 2 cycles latency on the axis valid due to the delay getting
      // data out of the RAM
      axis_valid_r[3:1] <= axis_valid_r[2:0];
      if ((wordWidth/16 == 8 && memWordWidth == 8) || wordWidth/16 == 16) begin
        axis_valid        <= axis_valid_r[1];
      end
      else begin
        axis_valid        <= axis_valid_r[2];
      end
      if (~axis_ready) begin
         addrb           <= addrb;
         axis_valid_r[0] <= 1'd0;
      end else begin
         if (addrb_ce && start_addr_i) begin
           // Reset on max address value. Allows more control over frequency
           // of wave being generated
           if (addrb == endaddrb[addrbWidth-1:0] -1) begin
             addrbend <= 1'b1;
           end
           else begin
             addrbend <= 1'b0;
           end
           if (addrbend == 1'b1)
              addrb      <= 'd0;
           else
              addrb      <= addrb + 'd1;
           // Signal is always valid when enabled
           axis_valid_r[0] <= 1'd1;
         end
      end
   end
end

generate
  if ((wordWidth/16 == 8 && memWordWidth == 8) || (wordWidth/16 == 16 && memWordWidth == 16) || (wordWidth/16 == 32 && memWordWidth == 32)) begin : no_barrel_shift
    always @(posedge clkb) begin
      if (~enable_sync_r) begin
        axis_data <= {wordWidth{1'b0}};
      end
      else begin
        axis_data <= doutb_i;
      end
    end
    assign addrb_ce     = 1'b1;
    assign start_addr_i = 1'b1;
  end
endgenerate

generate
  if ((wordWidth/16 != 8 || memWordWidth != 8) && (wordWidth/16 != 16 || memWordWidth != 16) && (wordWidth/16 != 32 || memWordWidth != 32)) begin : barrel_shift
  
    // Keep count of the number of remainder bits between
    // the words at the output of the memory and the words into
    // the DAC
    always @(posedge clkb) begin
      if (~enable_sync_r) begin
        rem_count   <= 'd0;
        cycle_count <= 'd0;
        pos_count   <= 'd0;
      end
      else begin
        if (~axis_ready) begin
          rem_count   <= 'd0;
          cycle_count <= 'd0;
          pos_count   <= 'd0;
        end
        else begin
          if (cycle_count == {(clog2(memWordWidth-1)){1'b1}}) begin
            rem_count   <= 'd0;
            cycle_count <= 'd0;
            pos_count   <= 'd0;
          end
          else begin
            if (cycle_count == 'd0) begin
              rem_count   <= rem_count + (memWordWidth - (wordWidth/16)) - 1;
            end
            else begin
              rem_count   <= rem_count + (memWordWidth - (wordWidth/16));
            end
            cycle_count <= cycle_count + 1;
            pos_count   <= pos_count + (wordWidth/16);
          end
        end
      end
    end
    
    // Hold the memory output after we have enough samples
    // Need to do so 3 cycles before we want the data output held
    // due to latency
    if (wordWidth/16 == 1) begin
      assign addrb_ce = (memWordWidth == 8) ? ((cycle_count == 5) ? 1'b1 : 1'b0) : ((cycle_count == 13) ? 1'b1 : 1'b0);
    end
    
    if (wordWidth/16 == 2) begin
      assign addrb_ce = (memWordWidth == 8) ? ((cycle_count == 5 || cycle_count == 6) ? 1'b1 : 1'b0) : ((cycle_count == 13 || cycle_count == 14) ? 1'b1 : 1'b0);
    end
    
    if (wordWidth/16 > 2) begin
      assign addrb_ce = ((cycle_count >= (wordWidth/16)-3) && (cycle_count <= memWordWidth-4)) ? 1'b0 : 1'b1;
    end
    
    always @(posedge clkb) begin
      if (~enable_sync_r) begin
        start_addr <= 1'b0;
      end
      else begin
        if (~axis_ready) begin
          start_addr <= 1'b0;
        end
        else begin
          if (addrb_ce == 1'b0) begin
            start_addr <= 1'b1;
          end
        end
      end
    end
    assign start_addr_i = start_addr;
  
    for (i = 0; i < memWordWidth; i = i + 1) begin 
      for (j = 0; j < 16; j=j+1)
      begin
        // Delay the data in order to align it at the DAC input
        SRLC32E srl_delay_gen_1 (
          .Q   (doutb_r[(i*16)+j]),
          .Q31 (),
          .A   (srl_addr[i]),
          .CE  (1'b1),
          .CLK (clkb),
          .D   (doutb_i[(i*16)+j]));
      end

      always @(posedge clkb) begin
        srl_addr[i] <= (i < pos_count || cycle_count == 0) ? (rem_count >> (clog2(memWordWidth-1))) : (rem_count >> (clog2(memWordWidth-1))) + 1;
      end
      
      // Register for timing purposes
      always @(posedge clkb) begin
        doutb_r2 <= doutb_r;
      end
      
    end
    
    for (i = 0; i < (wordWidth/16); i = i + 1) begin
      
      // Register for timing purposes
      always @(posedge clkb) begin
        if (~enable_sync_r) begin
          pos[i]   <= 'd0;
          pos_r[i] <= 'd0;
        end
        else begin
          if (~axis_ready) begin
            pos[i]   <= 'd0;
            pos_r[i] <= 'd0;
          end
          else begin
            pos[i]   <= (pos_count+i);
            pos_r[i] <= pos[i];
          end
        end
      end
      
      always @(posedge clkb) begin
        if (~enable_sync_r) begin
          axis_data[(i*16) +: 16] <= 16'd0;
        end
        else begin
          axis_data[(i*16) +: 16] <= doutb_r2[(pos_r[i]*16) +: 16];
        end
      end
    end
    
  end
endgenerate

xpm_mem_dg_wrap2 #(

   .wordWidth     (memWordWidth*16),
   .wordsInMemory (wordsInMemory),
   .addrbWidth    (addrbWidth),
   .addrWidth     (addrWidth)
   
) xpm_mem_dg_wrap2_i (
.clka           (clka         ) ,
.clkb           (clkb         ) ,
.wea            (wea          ) ,
.ena            (ena          ) ,
.addra          (addra        ) ,
.dina           (dina         ) ,
.douta          (douta        ) ,
.enb            (enable_sync_r) ,
.addrb          (addrb        ) ,
.doutb          (doutb_i      ) 

);

// synthesis translate_off
// DEBUG: Check that what we write in appears at the output
parameter data_size = 128 * (wordWidth/16);

reg [data_size-1:0][15:0] data_in   = {data_size{16'd0}};
reg                [10:0] in_count  = 11'd0;
reg                [10:0] out_count;
reg                       start_check;
reg                       ready_low = 1'b0;
reg       [addrWidth-1:0] addra_reg = 0;
reg                       valid_r;
integer                   check_loop;

always @(posedge clka) begin
  addra_reg <= addra;
  if (addra != addra_reg) begin
    data_in[in_count+:2] <= dina;
    in_count             <= in_count + 2;
  end
end

always @(posedge clkb) begin
  valid_r <= axis_valid;
end

always @(posedge clkb) begin
  if (valid_r !== 1'b1) begin
    out_count           <= 11'd0;
    start_check         <= 1'b0;
  end
  else begin
    if (axis_ready == 1'b0) begin
      // Stop checking as ready has gone low
      ready_low <= 1'b1;
    end
    if (start_check == 1'b0) begin
      for (check_loop = 0; check_loop < data_size-1; check_loop = check_loop + 1) begin
        if (axis_data[15:0] == data_in[check_loop]) begin
          start_check <= 1'b1;
          out_count   <= check_loop + (wordWidth/16);
          break;
        end
      end
    end
    else begin
      if (out_count < data_size - (wordWidth/16) && ready_low == 1'b0) begin
        for (check_loop = 0; check_loop < (wordWidth/16); check_loop = check_loop + 1) begin
          //data_check: assert (axis_data[(check_loop*16)+:16] == data_in[out_count+check_loop]) else begin
          //  $error("Data not correct at output of block RAM");
          //  $stop;
          //end
        end
        out_count <= out_count + (wordWidth/16);
      end
    end
  end
end
// synthesis translate_on

endmodule

//-----------------------------------------------------------------------------
// Wrap the XPM wrapper with fixed enables, abstraction allows for IPI dev use.
//-----------------------------------------------------------------------------
module xpm_mem_dg_wrap2 #(
   parameter wordWidth     = 32,
   parameter wordsInMemory = 128,
   parameter addrbWidth    = 8,
   parameter addrWidth     = 8
) (

  input  wire                    clka           ,
  input  wire                    clkb           ,

  input  wire                    wea            ,
  input  wire                    ena            ,
  input  wire [addrWidth-1:0]    addra          ,
  input  wire [31:0]             dina           ,
  output wire [31:0]             douta          ,

  input  wire                    enb            ,
  input  wire [addrbWidth-1:0]   addrb          ,
  output wire [wordWidth-1:0]    doutb          

);

xpm_mem_dg_sdpram_wrap #(

   .wordWidth     (wordWidth    ),
   .wordsInMemory (wordsInMemory),
   .addrbWidth    (addrbWidth   ),
   .addrWidth     (addrWidth    )
   
) xpm_mem_dg_sdpram_wrap_i (
.clka           (clka   ) ,
.rsta           (1'd0   ) ,
.ena            (ena    ) ,
.wea            (wea    ) ,
.addra          (addra  ) ,
.dina           (dina   ) ,
.douta          (douta  ) ,
.clkb           (clkb   ) ,
.rstb           (1'd0   ) ,
.enb            (enb    ) ,
.regceb         (enb    ) ,
.addrb          (addrb  ) ,
.doutb          (doutb  ) 

);

endmodule

//-----------------------------------------------------------------------------
// XPM wrapper. Lowest level block in RAM CAP/GEN
//-----------------------------------------------------------------------------
module xpm_mem_dg_sdpram_wrap #(
   parameter wordWidth     = 256,
   parameter wordsInMemory = 128,
   parameter addrbWidth    = 8,
   parameter addrWidth     = 8
) (

  input  wire                    clka           ,
  input  wire                    rsta           ,
  input  wire                    ena            ,
  input  wire                    wea            ,
  input  wire [addrWidth-1:0]    addra          ,
  input  wire [31:0]             dina           ,
  output wire [31:0]             douta          ,

  // Port B module ports
  input  wire                    clkb           ,
  input  wire                    rstb           ,
  input  wire                    enb            ,
  input  wire                    regceb         ,
  input  wire [addrbWidth-1:0]   addrb          ,
  output wire [wordWidth-1:0]    doutb          

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
  .WRITE_DATA_WIDTH_A (32),                      // positive integer
  .BYTE_WRITE_WIDTH_A (32),                      // integer; 8, 9, or WRITE_DATA_WIDTH_A value: write full word MEM_DATA_A_WITH 
  .ADDR_WIDTH_A       (addrWidth),               // positive integer

  // Port B module parameters
  .READ_DATA_WIDTH_B  (wordWidth),               // positive integer
  .ADDR_WIDTH_B       (addrbWidth),              // positive integer
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
  .regceb         (regceb        ),
  .addrb          (addrb         ),
  .doutb          (doutb         ),
  .sbiterrb       (              ),
  .dbiterrb       (              )
 );
 
 assign douta = 32'd0;

endmodule
