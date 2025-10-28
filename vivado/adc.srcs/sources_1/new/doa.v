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

  wire [13:0] N0 = data_N[15:2];
  wire [13:0] N1 = data_N[31:18];
  wire [13:0] N2 = data_N[47:34];
  wire [13:0] N3 = data_N[63:50];
  wire [13:0] N4 = data_N[79:66];
  wire [13:0] N5 = data_N[95:82];
  wire [13:0] N6 = data_N[111:98];
  wire [13:0] N7 = data_N[127:114];
  wire [13:0] N8 = data_N[143:130];
  wire [13:0] N9 = data_N[159:146];

  wire [13:0] E0 = data_E[15:2];
  wire [13:0] E1 = data_E[31:18];
  wire [13:0] E2 = data_E[47:34];
  wire [13:0] E3 = data_E[63:50];
  wire [13:0] E4 = data_E[79:66];
  wire [13:0] E5 = data_E[95:82];
  wire [13:0] E6 = data_E[111:98];
  wire [13:0] E7 = data_E[127:114];
  wire [13:0] E8 = data_E[143:130];
  wire [13:0] E9 = data_E[159:146];

  wire [13:0] W0 = data_W[15:2];
  wire [13:0] W1 = data_W[31:18];
  wire [13:0] W2 = data_W[47:34];
  wire [13:0] W3 = data_W[63:50];
  wire [13:0] W4 = data_W[79:66];
  wire [13:0] W5 = data_W[95:82];
  wire [13:0] W6 = data_W[111:98];
  wire [13:0] W7 = data_W[127:114];
  wire [13:0] W8 = data_W[143:130];
  wire [13:0] W9 = data_W[159:146];

	ila_0 ila_N (
		.clk(clk),                 // input wire clk
		.probe0(N0),        // input wire [15:0]  probe3
		.probe1(N1),       // input wire [15:0]  probe3
		.probe2(N2),       // input wire [15:0]  probe3
		.probe3(N3),       // input wire [15:0]  probe3
		.probe4(N4),       // input wire [15:0]  probe3
		.probe5(N5),       // input wire [15:0]  probe3
		.probe6(N6),      // input wire [15:0]  probe3
		.probe7(N7),     // input wire [15:0]  probe3
		.probe8(N8),     // input wire [15:0]  probe3
		.probe9(N9),     // input wire [15:0]  probe3
		.probe10(ready_N),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);

	ila_0 ila_E (
		.clk(clk),                 // input wire clk
		.probe0(E0),        // input wire [15:0]  probe3
		.probe1(E1),       // input wire [15:0]  probe3
		.probe2(E2),       // input wire [15:0]  probe3
		.probe3(E3),       // input wire [15:0]  probe3
		.probe4(E4),       // input wire [15:0]  probe3
		.probe5(E5),       // input wire [15:0]  probe3
		.probe6(E6),      // input wire [15:0]  probe3
		.probe7(E7),     // input wire [15:0]  probe3
		.probe8(E8),     // input wire [15:0]  probe3
		.probe9(E9),     // input wire [15:0]  probe3
		.probe10(ready_E),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);

	ila_0 ila_W (
		.clk(clk),                 // input wire clk
		.probe0(W0),        // input wire [15:0]  probe3
		.probe1(W1),       // input wire [15:0]  probe3
		.probe2(W2),       // input wire [15:0]  probe3
		.probe3(W3),       // input wire [15:0]  probe3
		.probe4(W4),       // input wire [15:0]  probe3
		.probe5(W5),       // input wire [15:0]  probe3
		.probe6(W6),      // input wire [15:0]  probe3
		.probe7(W7),     // input wire [15:0]  probe3
		.probe8(W8),     // input wire [15:0]  probe3
		.probe9(W9),     // input wire [15:0]  probe3
		.probe10(ready_W),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);
    
generate
  begin : doa


  end
    
endgenerate
    
endmodule
