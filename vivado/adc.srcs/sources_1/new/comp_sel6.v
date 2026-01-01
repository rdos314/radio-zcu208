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


module comp_sel6(
    input wire clk,
    input wire reset,
    input wire [127:0] data_in,
    input wire [5:0] select,
    output reg [127:0] data_out
    );
    
  reg [1023:16] d;

generate
  begin : comp_select_6

	always @(posedge clk) 
	begin
	   d[1023:896] <= data_in;
	   d[895:16] <= d[1023:144];
	end

	always @(posedge clk) 
	begin
	   case (select)
	       6'b100000: data_out <= data_in;
	       6'b100001: data_out <= {data_in[111:0], d[1023:1008]};
	       6'b100010: data_out <= {data_in[95:0], d[1023:992]};
	       6'b100011: data_out <= {data_in[79:0], d[1023:976]};
	       6'b100100: data_out <= {data_in[63:0], d[1023:960]};
	       6'b100101: data_out <= {data_in[47:0], d[1023:944]};
	       6'b100110: data_out <= {data_in[31:0], d[1023:928]};
	       6'b100111: data_out <= {data_in[15:0], d[1023:912]};
	       6'b101000: data_out <= d[1023:896];
	       6'b101001: data_out <= d[1007:880];
	       6'b101010: data_out <= d[991:864];
	       6'b101011: data_out <= d[975:848];
	       6'b101100: data_out <= d[959:832];
	       6'b101101: data_out <= d[943:816];
	       6'b101110: data_out <= d[927:800];
	       6'b101111: data_out <= d[911:784];
	       6'b110000: data_out <= d[895:768];
	       6'b110001: data_out <= d[879:752];
	       6'b110010: data_out <= d[863:736];
	       6'b110011: data_out <= d[847:720];
	       6'b110100: data_out <= d[831:704];
	       6'b110101: data_out <= d[815:688];
	       6'b110110: data_out <= d[799:672];
	       6'b110111: data_out <= d[783:656];
	       6'b111000: data_out <= d[767:640];
	       6'b111001: data_out <= d[751:624];
	       6'b111010: data_out <= d[735:608];
	       6'b111011: data_out <= d[719:592];
	       6'b111100: data_out <= d[703:576];
	       6'b111101: data_out <= d[687:560];
	       6'b111110: data_out <= d[671:544];
	       6'b111111: data_out <= d[655:528];
	       6'b000000: data_out <= d[639:512];
	       6'b000001: data_out <= d[623:496];
	       6'b000010: data_out <= d[607:480];
	       6'b000011: data_out <= d[591:464];
	       6'b000100: data_out <= d[575:448];
	       6'b000101: data_out <= d[559:432];
	       6'b000110: data_out <= d[543:416];
	       6'b000111: data_out <= d[527:400];
	       6'b001000: data_out <= d[511:384];
	       6'b001001: data_out <= d[495:368];
	       6'b001010: data_out <= d[479:352];
	       6'b001011: data_out <= d[463:336];
	       6'b001100: data_out <= d[447:320];
	       6'b001101: data_out <= d[431:304];
	       6'b001110: data_out <= d[415:288];
	       6'b001111: data_out <= d[399:272];
	       6'b010000: data_out <= d[383:256];
	       6'b010001: data_out <= d[367:240];
	       6'b010010: data_out <= d[351:224];
	       6'b010011: data_out <= d[335:208];
	       6'b010100: data_out <= d[319:192];
	       6'b010101: data_out <= d[303:176];
	       6'b010110: data_out <= d[287:160];
	       6'b010111: data_out <= d[271:144];
	       6'b011000: data_out <= d[255:128];
	       6'b011001: data_out <= d[239:112];
	       6'b011010: data_out <= d[223:96];
	       6'b011011: data_out <= d[207:80];
	       6'b011100: data_out <= d[191:64];
	       6'b011101: data_out <= d[175:48];
	       6'b011110: data_out <= d[159:32];
	       6'b011111: data_out <= d[143:16];
	   endcase
	end
		
  end
     
endgenerate

endmodule
