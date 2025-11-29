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
    input wire	[191:0] fifo
    );

  reg [15:0] counter;    
  reg [15:0] N0;
  reg [15:0] N1;
  reg [15:0] N2;
  reg [15:0] N3;
  reg [15:0] E0;
  reg [15:0] E1;
  reg [15:0] E2;
  reg [15:0] E3;
  reg [15:0] W0;
  reg [15:0] W1;
  reg [15:0] W2;
  reg [15:0] W3;

	ila_3 ila_N (
		.clk(clk),          // input wire clk
		.probe0(active),    // input wire [0:0]  probe3
		.probe1(counter),   // input wire [15:0]  probe3
		.probe2(N0),        // input wire [15:0]  probe3
		.probe3(N1),        // input wire [15:0]  probe3
		.probe4(N2),        // input wire [15:0]  probe3
		.probe5(N3)         // input wire [15:0]  probe3
	);

	ila_3 ila_E (
		.clk(clk),          // input wire clk
		.probe0(active),    // input wire [0:0]  probe3
		.probe1(counter),   // input wire [15:0]  probe3
		.probe2(E0),        // input wire [15:0]  probe3
		.probe3(E1),        // input wire [15:0]  probe3
		.probe4(E2),        // input wire [15:0]  probe3
		.probe5(E3)         // input wire [15:0]  probe3
	);

	ila_3 ila_W (
		.clk(clk),          // input wire clk
		.probe0(active),    // input wire [0:0]  probe3
		.probe1(counter),   // input wire [15:0]  probe3
		.probe2(W0),        // input wire [15:0]  probe3
		.probe3(W1),        // input wire [15:0]  probe3
		.probe4(W2),        // input wire [15:0]  probe3
		.probe5(W3)         // input wire [15:0]  probe3
	);

generate
  begin : composite

    always @(posedge clk) 
	begin
	   if (active)
	   begin
			counter <= counter + 1;
            N0 <= fifo[15:0];
            N1 <= fifo[31:16];
            N2 <= fifo[47:32];
            N3 <= fifo[63:48];
            E0 <= fifo[79:64];
            E1 <= fifo[95:80];
            E2 <= fifo[111:96];
            E3 <= fifo[127:112];
            W0 <= fifo[143:128];
            W1 <= fifo[159:144];
            W2 <= fifo[175:160];
            W3 <= fifo[191:176];
        end
		else
			counter <= 0;
	end

  end
    
endgenerate

endmodule
