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
    input wire	fifo_clk,
    input wire fifo_wr,
    input wire	[299:0] fifo_data,

    input wire clk,
    input wire reset
    );

  reg doa_rd;
  wire [299:0] doa_data;
  wire fifo_empty;
  reg [3:0] fifo_rd_delay;
  reg doa_valid;

  reg [15:0] env_N;
  reg [19:0] phase_N;
  reg [15:0] raw_N0;
  reg [15:0] raw_N1;
  reg [15:0] raw_N2;
  reg [15:0] raw_N3;
  
  reg [15:0] env_E;
  reg [19:0] phase_E;
  reg [15:0] raw_E0;
  reg [15:0] raw_E1;
  reg [15:0] raw_E2;
  reg [15:0] raw_E3;  
  
  reg [15:0] env_W;
  reg [19:0] phase_W;
  reg [15:0] raw_W0;
  reg [15:0] raw_W1;
  reg [15:0] raw_W2;
  reg [15:0] raw_W3;

fifo_comp_low fifo_comp_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(fifo_data),               // input wire [299 : 0] din
  .wr_en(fifo_wr),               // input wire wr_en
  .rd_en(doa_rd),                // input wire rd_en
  .dout(doa_data),               // output wire [299 : 0] dout
  .empty(fifo_empty)             // output wire empty
);

	ila_3 ila_N (
		.clk(clk),               // input wire clk
		.probe0(fifo_empty),     // input wire [0:0]  probe3
		.probe1(doa_rd),         // input wire [0:0]  probe3
		.probe2(fifo_rd_delay),  // input wire [3:0]  probe3
		.probe3(env_N),          // input wire [15:0]  probe3
		.probe4(phase_N),        // input wire [19:0]  probe3
		.probe5(raw_N0),         // input wire [15:0]  probe3
		.probe6(raw_N1),         // input wire [15:0]  probe3
		.probe7(raw_N2),         // input wire [15:0]  probe3
		.probe8(raw_N3)          // input wire [15:0]  probe3
	);

	ila_3 ila_E (
		.clk(clk),            // input wire clk
		.probe0(fifo_empty),     // input wire [0:0]  probe3
		.probe1(doa_rd),         // input wire [0:0]  probe3
		.probe2(fifo_rd_delay),  // input wire [3:0]  probe3
		.probe3(env_E),          // input wire [15:0]  probe3
		.probe4(phase_E),        // input wire [19:0]  probe3
		.probe5(raw_E0),         // input wire [15:0]  probe3
		.probe6(raw_E1),         // input wire [15:0]  probe3
		.probe7(raw_E2),         // input wire [15:0]  probe3
		.probe8(raw_E3)          // input wire [15:0]  probe3
	);

	ila_3 ila_W (
		.clk(clk),              // input wire clk
		.probe0(fifo_empty),     // input wire [0:0]  probe3
		.probe1(doa_rd),         // input wire [0:0]  probe3
		.probe2(fifo_rd_delay),  // input wire [3:0]  probe3
		.probe3(env_W),          // input wire [15:0]  probe3
		.probe4(phase_W),        // input wire [19:0]  probe3
		.probe5(raw_W0),         // input wire [15:0]  probe3
		.probe6(raw_W1),         // input wire [15:0]  probe3
		.probe7(raw_W2),         // input wire [15:0]  probe3
		.probe8(raw_W3)          // input wire [15:0]  probe3
	);

generate
  begin : comp_low

    always @(posedge clk) 
    begin
	   if (fifo_empty)
	   begin
	       fifo_rd_delay <= 3'b111;
           doa_rd <= 0;
       end
	   else
	   begin
	       if (fifo_rd_delay)
	       begin
	           doa_rd <= 0;
	           fifo_rd_delay <= fifo_rd_delay - 1;
	       end
	       else
	           doa_rd <= 1;
       end
    end

    always @(posedge clk) 
	begin
        if (doa_rd & (!fifo_empty))
        begin
            doa_valid <= 1;

            env_N <= doa_data[15:0];
            phase_N <= doa_data[35:16];
            raw_N0 <= doa_data[51:36];
            raw_N1 <= doa_data[67:52];
            raw_N2 <= doa_data[83:68];
            raw_N3 <= doa_data[99:84];

            env_E <= doa_data[115:100];
            phase_E <= doa_data[135:116];
            raw_E0 <= doa_data[151:136];
            raw_E1 <= doa_data[167:152];
            raw_E2 <= doa_data[183:168];
            raw_E3 <= doa_data[199:184];
      
            env_W <= doa_data[215:200];
            phase_W <= doa_data[235:216];
            raw_W0 <= doa_data[251:236];
            raw_W1 <= doa_data[267:252];
            raw_W2 <= doa_data[283:268];
            raw_W3 <= doa_data[299:284];
        end
        else
            doa_valid <= 0;
	end

  end
    
endgenerate

endmodule
