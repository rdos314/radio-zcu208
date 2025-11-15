`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 21:52:01
// Design Name: 
// Module Name: doa_high
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module doa_high(
    input clk,
    input wire fifo_valid,
    input wire [111:0] fifo_data
    );

  reg [27:0] counter;
  reg [13:0] N0;
  reg [13:0] N1;
  reg [13:0] E0;
  reg [13:0] E1;
  reg [13:0] W0;
  reg [13:0] W1;
  
generate
  begin : deci_high

    always @(posedge clk) 
	begin
	  if (fifo_valid)
	  begin
         counter <= fifo_data[27:0];
         N0 <= fifo_data[41:28];
         N1 <= fifo_data[55:42];
         E0 <= fifo_data[69:56];
         E1 <= fifo_data[83:70];
         W0 <= fifo_data[97:84];
         W1 <= fifo_data[111:98];
	  end
	  else
	      counter <= 0;
	end

  end

endgenerate

endmodule
