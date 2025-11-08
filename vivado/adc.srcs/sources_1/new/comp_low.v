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


module comp_low(
    input wire	clk,
    input wire  reset,
    input wire active,
    input wire	[237:0] fifo
    );
    
  reg [27:0] counter;
  reg [13:0] N0;
  reg [13:0] N1;
  reg [13:0] N2;
  reg [13:0] N3;
  reg [13:0] N4;
  reg [13:0] E0;
  reg [13:0] E1;
  reg [13:0] E2;
  reg [13:0] E3;
  reg [13:0] E4;
  reg [13:0] W0;
  reg [13:0] W1;
  reg [13:0] W2;
  reg [13:0] W3;
  reg [13:0] W4;

	ila_3 ila_N (
		.clk(clk),                 // input wire clk
		.probe0(N0),        // input wire [13:0]  probe3
		.probe1(N1),       // input wire [13:0]  probe3
		.probe2(N2),       // input wire [13:0]  probe3
		.probe3(N3),       // input wire [13:0]  probe3
		.probe4(N4),       // input wire [13:0]  probe3
		.probe5(active),             // input wire [0:0]  probe3
		.probe6(counter)             // input wire [27:0]  probe3
	);

	ila_3 ila_E (
		.clk(clk),                 // input wire clk
		.probe0(E0),        // input wire [13:0]  probe3
		.probe1(E1),       // input wire [13:0]  probe3
		.probe2(E2),       // input wire [13:0]  probe3
		.probe3(E3),       // input wire [13:0]  probe3
		.probe4(E4),       // input wire [13:0]  probe3
		.probe5(active),             // input wire [0:0]  probe3
		.probe6(counter)             // input wire [27:0]  probe3
	);

	ila_3 ila_W (
		.clk(clk),                 // input wire clk
		.probe0(W0),        // input wire [13:0]  probe3
		.probe1(W1),       // input wire [13:0]  probe3
		.probe2(W2),       // input wire [13:0]  probe3
		.probe3(W3),       // input wire [13:0]  probe3
		.probe4(W4),       // input wire [13:0]  probe3
		.probe5(active),             // input wire [11:0]  probe3
		.probe6(counter)             // input wire [27:0]  probe3
	);

generate
  begin : composite

    always @(posedge clk) 
	begin
	   if (active)
	   begin
            counter <= fifo[27:0];
            N0 <= fifo[41:28];
            N1 <= fifo[55:42];
            N2 <= fifo[69:56];
            N3 <= fifo[83:70];
            N4 <= fifo[97:84];
            E0 <= fifo[111:98];
            E1 <= fifo[125:112];
            E2 <= fifo[139:126];
            E3 <= fifo[153:140];
            E4 <= fifo[167:154];
            W0 <= fifo[181:168];
            W1 <= fifo[195:182];
            W2 <= fifo[209:196];
            W3 <= fifo[223:210];
            W4 <= fifo[237:224];
        end
	end

  end
    
endgenerate

endmodule
