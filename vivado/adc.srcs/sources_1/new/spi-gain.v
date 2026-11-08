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
    input wire [31:0] axi_in,
    output reg [31:0] axi_out,
	output reg spi_clk,
    input wire spi_in,
	output reg spi_out,
	output reg [2:0] spi_sel
    );

    reg toggle_clk;
	reg [7:0] delay;
	reg [3:0] counter;

	ila_2 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(axi_in),              // input wire [31:0]  probe3
		.probe1(axi_out),             // input wire [31:0]  probe3
		.probe2(spi_clk),             // input wire [0:0]  probe3
		.probe3(toggle_clk),          // input wire [0:0]  probe3
		.probe4(delay),               // input wire [7:0]  probe3
		.probe5(counter),             // input wire [3:0]  probe3
		.probe6(spi_in),              // input wire [0:0]  probe3
		.probe7(spi_out),             // input wire [0:0]  probe3
		.probe8(spi_sel)              // input wire [2:0]  probe3
	);


generate
  begin : spi_gain

	always @(posedge clk) 
	begin
		if (resetn)
		begin
			if (delay)
			begin
				if (delay == 1)
				begin
					toggle_clk <= 1;
					delay <= 200;
				end
				else
				begin
					delay <= delay - 1;
					toggle_clk <= 0;
				end
			end
			else
				toggle_clk <= 0;
		end
		else
		begin
			toggle_clk <= 0;
			delay <= 200;
		end
	end

	always @(posedge clk) 
	begin
		if (resetn)
		begin
			if (toggle_clk)
			begin
				spi_clk <= ~spi_clk;
	  
				if (spi_clk == 0)
					counter <= counter + 1;
			end
		end
		else
		counter <= 0;
	end

	always @(posedge clk) 
	begin
		spi_out <= counter[0];
		spi_sel <= counter[3:1];
	end
		
  end
     
endgenerate

endmodule
