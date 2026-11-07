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

	ila_2 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(axi_in),              // input wire [31:0]  probe3
		.probe1(axi_out),             // input wire [31:0]  probe3
		.probe2(spi_clk),             // input wire [0:0]  probe3
		.probe3(spi_in),              // input wire [0:0]  probe3
		.probe4(spi_out),             // input wire [0:0]  probe3
		.probe5(spi_sel)              // input wire [2:0]  probe3
	);


generate
  begin : spi_gain

  always @(posedge clk) 
  begin
    if (resetn)
	begin
	end
	else
	begin
	  axi_out <= 0;
	  spi_clk <= 0;
	  spi_out <= 0;
	  spi_sel <= 0;
	end
  end

		
  end
     
endgenerate

endmodule
