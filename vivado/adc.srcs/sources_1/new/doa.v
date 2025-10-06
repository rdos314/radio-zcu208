`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2025 22:20:40
// Design Name: 
// Module Name: doa
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


module doa(
    input wire	clk,
    input wire  resetn,
    input wire	[159:0] data_N,
    input wire	ready_N,
    input wire	[159:0] data_E,
    input wire	ready_E,
    input wire	[159:0] data_W,
    input wire	ready_W
    );

	wire data_N0[15:0];
	wire data_N1[15:0];
	wire data_N2[15:0];
	wire data_N3[15:0];
	wire data_N4[15:0];
	wire data_N5[15:0];
	wire data_N6[15:0];
	wire data_N7[15:0];
	wire data_N8[15:0];
	wire data_N9[15:0];

	wire data_E0[15:0];
	wire data_E1[15:0];
	wire data_E2[15:0];
	wire data_E3[15:0];
	wire data_E4[15:0];
	wire data_E5[15:0];
	wire data_E6[15:0];
	wire data_E7[15:0];
	wire data_E8[15:0];
	wire data_E9[15:0];
	
	wire data_W0[15:0];
	wire data_W1[15:0];
	wire data_W2[15:0];
	wire data_W3[15:0];
	wire data_W4[15:0];
	wire data_W5[15:0];
	wire data_W6[15:0];
	wire data_W7[15:0];
	wire data_W8[15:0];
	wire data_W9[15:0];

	assign data_N0 = data_N[15:0];
	assign data_N1 = data_N[31:16];
	assign data_N2 = data_N[47:32];
	assign data_N3 = data_N[63:48];
	assign data_N4 = data_N[79:64];
	assign data_N5 = data_N[95:80];
	assign data_N6 = data_N[111:96];
	assign data_N7 = data_N[127:112];
	assign data_N8 = data_N[143:128];
	assign data_N9 = data_N[159:144];

	assign data_E0 = data_E[15:0];
	assign data_E1 = data_E[31:16];
	assign data_E2 = data_E[47:32];
	assign data_E3 = data_E[63:48];
	assign data_E4 = data_E[79:64];
	assign data_E5 = data_E[95:80];
	assign data_E6 = data_E[111:96];
	assign data_E7 = data_E[127:112];
	assign data_E8 = data_E[143:128];
	assign data_E9 = data_E[159:144];

	assign data_W0 = data_W[15:0];
	assign data_W1 = data_W[31:16];
	assign data_W2 = data_W[47:32];
	assign data_W3 = data_W[63:48];
	assign data_W4 = data_W[79:64];
	assign data_W5 = data_W[95:80];
	assign data_W6 = data_W[111:96];
	assign data_W7 = data_W[127:112];
	assign data_W8 = data_W[143:128];
	assign data_W9 = data_W[159:144];	

	ila_0 ila_N (
		.clk(clk),                 // input wire clk
		.probe0(data_N0),        // input wire [15:0]  probe3
		.probe1(data_N1),       // input wire [15:0]  probe3
		.probe2(data_N2),       // input wire [15:0]  probe3
		.probe3(data_N3),       // input wire [15:0]  probe3
		.probe4(data_N4),       // input wire [15:0]  probe3
		.probe5(data_N5),       // input wire [15:0]  probe3
		.probe6(data_N6),      // input wire [15:0]  probe3
		.probe7(data_N7),     // input wire [15:0]  probe3
		.probe8(data_N8),     // input wire [15:0]  probe3
		.probe9(data_N9),     // input wire [15:0]  probe3
		.probe10(ready_N),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);

	ila_0 ila_E (
		.clk(clk),                 // input wire clk
		.probe0(data_E0),        // input wire [15:0]  probe3
		.probe1(data_E1),       // input wire [15:0]  probe3
		.probe2(data_E2),       // input wire [15:0]  probe3
		.probe3(data_E3),       // input wire [15:0]  probe3
		.probe4(data_E4),       // input wire [15:0]  probe3
		.probe5(data_E5),       // input wire [15:0]  probe3
		.probe6(data_E6),      // input wire [15:0]  probe3
		.probe7(data_E7),     // input wire [15:0]  probe3
		.probe8(data_E8),     // input wire [15:0]  probe3
		.probe9(data_E9),     // input wire [15:0]  probe3
		.probe10(ready_E),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);

	ila_0 ila_W (
		.clk(clk),                 // input wire clk
		.probe0(data_W0),        // input wire [15:0]  probe3
		.probe1(data_W1),       // input wire [15:0]  probe3
		.probe2(data_W2),       // input wire [15:0]  probe3
		.probe3(data_W3),       // input wire [15:0]  probe3
		.probe4(data_W4),       // input wire [15:0]  probe3
		.probe5(data_W5),       // input wire [15:0]  probe3
		.probe6(data_W6),      // input wire [15:0]  probe3
		.probe7(data_W7),     // input wire [15:0]  probe3
		.probe8(data_W8),     // input wire [15:0]  probe3
		.probe9(data_W9),     // input wire [15:0]  probe3
		.probe10(ready_W),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);
    
generate
  begin : doa


  end
    
endgenerate
    
endmodule
