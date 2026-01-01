`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 15:03:48
// Design Name: 
// Module Name: comp_sel6
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


module comp_sel4(
    input wire clk,
    input wire reset,
    input wire [127:0] data_in,
    input wire [3:0] select,
    output reg [127:0] data_out
    );

  reg [255:16] d;

generate
  begin : comp_select_4

	always @(posedge clk) 
	begin
	   d[255:128] <= data_in;
	   d[127:16] <= d[255:144];
	end

	always @(posedge clk) 
	begin
	   case (select)
	       4'b1000: data_out <= data_in;
	       4'b1001: data_out <= {data_in[111:0], d[255:240]};
	       4'b1010: data_out <= {data_in[95:0], d[255:224]};
	       4'b1011: data_out <= {data_in[79:0], d[255:208]};
	       4'b1100: data_out <= {data_in[63:0], d[255:192]};
	       4'b1101: data_out <= {data_in[47:0], d[255:176]};
	       4'b1110: data_out <= {data_in[31:0], d[255:160]};
	       4'b1111: data_out <= {data_in[15:0], d[255:144]};
	       4'b0000: data_out <= d[255:128];
	       4'b0001: data_out <= d[239:112];
	       4'b0010: data_out <= d[223:96];
	       4'b0011: data_out <= d[207:80];
	       4'b0100: data_out <= d[191:64];
	       4'b0101: data_out <= d[175:48];
	       4'b0110: data_out <= d[159:32];
	       4'b0111: data_out <= d[143:16];
	   endcase
	end
		
  end
     
endgenerate

endmodule
