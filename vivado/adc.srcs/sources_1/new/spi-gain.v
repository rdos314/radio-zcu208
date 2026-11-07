`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 15:03:48
// Design Name: 
// Module Name: spi gain
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


module spi_gain(
    input wire clk,
    input wire resetn,
    input wire axi_in[31:0],
    output reg axi_out[31:0],
	output reg spi_clk,
    input wire spi_in,
	output reg spi_out,
	output reg spi_sel[2:0]
    );

generate
  begin : spi_gain

		
  end
     
endgenerate

endmodule
