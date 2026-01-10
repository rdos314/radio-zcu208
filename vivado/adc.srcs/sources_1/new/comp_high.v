`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 14:06:36
// Design Name: 
// Module Name: comp_high
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


module comp_high(
	input wire fifo_clk,
	input wire fifo_wr,
	input wire [31:0] fifo_sample,
	input wire [8:0] fifo_size,
	input wire [19:0] fifo_freq,
	input wire [15:0] fifo_angle,
	input wire [5:0] fifo_sample_N,
	input wire [5:0] fifo_sample_E,
	input wire [5:0] fifo_sample_W,
	
    input wire clk,
	input wire raw_active,
	input wire [63:0] raw_sample,
	input wire [127:0] raw_N,
	input wire [127:0] raw_E,
	input wire [127:0] raw_W
    );
endmodule
