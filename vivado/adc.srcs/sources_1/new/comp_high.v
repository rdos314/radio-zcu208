`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2025 23:09:03
// Design Name: 
// Module Name: composite
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
    input wire	clk,
    input wire  reset,
    input wire active,
    input wire	[383:0] fifo
    );
    
  reg [15:0] N0;
  reg [15:0] N1;
  reg [15:0] N2;
  reg [15:0] N3;
  reg [15:0] N4;
  reg [15:0] N5;
  reg [15:0] N6;
  reg [15:0] N7;
  reg [15:0] E0;
  reg [15:0] E1;
  reg [15:0] E2;
  reg [15:0] E3;
  reg [15:0] E4;
  reg [15:0] E5;
  reg [15:0] E6;
  reg [15:0] E7;
  reg [15:0] W0;
  reg [15:0] W1;
  reg [15:0] W2;
  reg [15:0] W3;
  reg [15:0] W4;
  reg [15:0] W5;
  reg [15:0] W6;
  reg [15:0] W7;
  
	ila_1 ila_N (
		.clk(clk),          // input wire clk
		.probe0(active),    // input wire [0:0]  probe3
		.probe1(N0),        // input wire [15:0]  probe3
		.probe2(N1),        // input wire [15:0]  probe3
		.probe3(N2),        // input wire [15:0]  probe3
		.probe4(N3),        // input wire [15:0]  probe3
		.probe5(N4),        // input wire [15:0]  probe3
		.probe6(N5),        // input wire [15:0]  probe3
		.probe7(N6),        // input wire [15:0]  probe3
		.probe8(N7)        // input wire [15:0]  probe3
	);

	ila_1 ila_E (
		.clk(clk),          // input wire clk
		.probe0(active),    // input wire [0:0]  probe3
		.probe1(E0),        // input wire [15:0]  probe3
		.probe2(E1),        // input wire [15:0]  probe3
		.probe3(E2),        // input wire [15:0]  probe3
		.probe4(E3),        // input wire [15:0]  probe3
		.probe5(E4),        // input wire [15:0]  probe3
		.probe6(E5),        // input wire [15:0]  probe3
		.probe7(E6),        // input wire [15:0]  probe3
		.probe8(E7)        // input wire [15:0]  probe3
	);

	ila_1 ila_W (
		.clk(clk),          // input wire clk
		.probe0(active),    // input wire [0:0]  probe3
		.probe1(W0),        // input wire [15:0]  probe3
		.probe2(W1),        // input wire [15:0]  probe3
		.probe3(W2),        // input wire [15:0]  probe3
		.probe4(W3),        // input wire [15:0]  probe3
		.probe5(W4),        // input wire [15:0]  probe3
		.probe6(W5),        // input wire [15:0]  probe3
		.probe7(W6),        // input wire [15:0]  probe3
		.probe8(W7)        // input wire [15:0]  probe3
	);

generate
  begin : composite

    always @(posedge clk) 
	begin
	   if (active)
	   begin
            N0 <= fifo[15:0];
            N1 <= fifo[31:16];
            N2 <= fifo[47:32];
            N3 <= fifo[63:48];
            N4 <= fifo[79:64];
            N5 <= fifo[95:80];
            N6 <= fifo[111:96];
            N7 <= fifo[127:112];
            E0 <= fifo[143:128];
            E1 <= fifo[159:144];
            E2 <= fifo[175:160];
            E3 <= fifo[191:176];
            E4 <= fifo[207:192];
            E5 <= fifo[223:208];
            E6 <= fifo[239:224];
            E7 <= fifo[255:240];
            W0 <= fifo[271:256];
            W1 <= fifo[287:272];
            W2 <= fifo[303:288];
            W3 <= fifo[319:304];
            W4 <= fifo[335:320];
            W5 <= fifo[351:336];
            W6 <= fifo[367:352];
            W7 <= fifo[383:368];
        end
	end

  end
    
endgenerate

endmodule
