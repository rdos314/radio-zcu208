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


module composite(
    input wire	clk,
    input wire  reset,
    output reg  fifo_rd,
    input wire	[447:0] fifo
    );
    
  reg [11:0]  delay;
  reg empty;
  reg active;

  reg [27:0] counter;
  reg [13:0] N0;
  reg [13:0] N1;
  reg [13:0] N2;
  reg [13:0] N3;
  reg [13:0] N4;
  reg [13:0] N5;
  reg [13:0] N6;
  reg [13:0] N7;
  reg [13:0] N8;
  reg [13:0] N9;
  reg [13:0] E0;
  reg [13:0] E1;
  reg [13:0] E2;
  reg [13:0] E3;
  reg [13:0] E4;
  reg [13:0] E5;
  reg [13:0] E6;
  reg [13:0] E7;
  reg [13:0] E8;
  reg [13:0] E9;
  reg [13:0] W0;
  reg [13:0] W1;
  reg [13:0] W2;
  reg [13:0] W3;
  reg [13:0] W4;
  reg [13:0] W5;
  reg [13:0] W6;
  reg [13:0] W7;
  reg [13:0] W8;
  reg [13:0] W9;

	ila_1 ila_N (
		.clk(clk),                 // input wire clk
		.probe0(N0),        // input wire [13:0]  probe3
		.probe1(N1),       // input wire [13:0]  probe3
		.probe2(N2),       // input wire [13:0]  probe3
		.probe3(N3),       // input wire [13:0]  probe3
		.probe4(N4),       // input wire [13:0]  probe3
		.probe5(N5),       // input wire [13:0]  probe3
		.probe6(N6),      // input wire [13:0]  probe3
		.probe7(N7),     // input wire [13:0]  probe3
		.probe8(N8),     // input wire [13:0]  probe3
		.probe9(N9),     // input wire [13:0]  probe3
		.probe10(delay),             // input wire [11:0]  probe3
		.probe11(fifo_rd),             // input wire [0:0]  probe3
		.probe12(counter)             // input wire [27:0]  probe3
	);

	ila_1 ila_E (
		.clk(clk),                 // input wire clk
		.probe0(E0),        // input wire [13:0]  probe3
		.probe1(E1),       // input wire [13:0]  probe3
		.probe2(E2),       // input wire [13:0]  probe3
		.probe3(E3),       // input wire [13:0]  probe3
		.probe4(E4),       // input wire [13:0]  probe3
		.probe5(E5),       // input wire [13:0]  probe3
		.probe6(E6),      // input wire [13:0]  probe3
		.probe7(E7),     // input wire [13:0]  probe3
		.probe8(E8),     // input wire [13:0]  probe3
		.probe9(E9),     // input wire [13:0]  probe3
		.probe10(delay),             // input wire [11:0]  probe3
		.probe11(fifo_rd),             // input wire [0:0]  probe3
		.probe12(counter)             // input wire [27:0]  probe3
	);

	ila_1 ila_W (
		.clk(clk),                 // input wire clk
		.probe0(W0),        // input wire [13:0]  probe3
		.probe1(W1),       // input wire [13:0]  probe3
		.probe2(W2),       // input wire [13:0]  probe3
		.probe3(W3),       // input wire [13:0]  probe3
		.probe4(W4),       // input wire [13:0]  probe3
		.probe5(W5),       // input wire [13:0]  probe3
		.probe6(W6),      // input wire [13:0]  probe3
		.probe7(W7),     // input wire [13:0]  probe3
		.probe8(W8),     // input wire [13:0]  probe3
		.probe9(W9),     // input wire [13:0]  probe3
		.probe10(delay),             // input wire [11:0]  probe3
		.probe11(fifo_rd),             // input wire [0:0]  probe3
		.probe12(counter)             // input wire [27:0]  probe3
	);

generate
  begin : composite

    always @(posedge clk) 
    begin
      empty <= reset;
    end

    always @(posedge clk) 
	begin
	   if (empty)
	   begin
	       delay <= 12'h3F0;
	       active <= 0;
	   end
	   else
	   begin
	       if (delay)
	       begin
	           delay <= delay - 1;
	           active <= 0;
	       end
	       else
	           active <= 1;
	   end
	end

    always @(posedge clk) 
	begin
	   if (active)
	   begin
	       fifo_rd <= 1;
            counter <= fifo[27:0];
            N0 <= fifo[41:28];
            N1 <= fifo[55:42];
            N2 <= fifo[69:56];
            N3 <= fifo[83:70];
            N4 <= fifo[97:84];
            N5 <= fifo[111:98];
            N6 <= fifo[125:112];
            N7 <= fifo[139:126];
            N8 <= fifo[153:140];
            N9 <= fifo[167:154];
            E0 <= fifo[181:168];
            E1 <= fifo[195:182];
            E2 <= fifo[209:196];
            E3 <= fifo[223:210];
            E4 <= fifo[237:224];
            E5 <= fifo[251:238];
            E6 <= fifo[265:252];
            E7 <= fifo[279:266];
            E8 <= fifo[293:280];
            E9 <= fifo[307:294];
            W0 <= fifo[321:308];
            W1 <= fifo[335:322];
            W2 <= fifo[349:336];
            W3 <= fifo[363:350];
            W4 <= fifo[377:364];
            W5 <= fifo[391:378];
            W6 <= fifo[405:392];
            W7 <= fifo[419:406];
            W8 <= fifo[433:420];
            W9 <= fifo[447:434];
        end
        else
            fifo_rd <= 0;
	end

  end
    
endgenerate

endmodule
