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
    input wire	fifo_clk,
    input wire fifo_wr,
    input wire	[491:0] fifo_data,

    input wire clk,
    input wire reset
    );
	
  reg doa_rd;
  wire [491:0] doa_data;
  wire fifo_empty;
  reg [3:0] fifo_rd_delay;
  reg doa_valid;
  
  reg [15:0] env_N;
  reg [19:0] phase_N;
  reg [15:0] raw_N0;
  reg [15:0] raw_N1;
  reg [15:0] raw_N2;
  reg [15:0] raw_N3;
  reg [15:0] raw_N4;
  reg [15:0] raw_N5;
  reg [15:0] raw_N6;
  reg [15:0] raw_N7;
  
  reg [15:0] env_E;
  reg [19:0] phase_E;
  reg [15:0] raw_E0;
  reg [15:0] raw_E1;
  reg [15:0] raw_E2;
  reg [15:0] raw_E3;  
  reg [15:0] raw_E4;  
  reg [15:0] raw_E5;  
  reg [15:0] raw_E6;  
  reg [15:0] raw_E7;  
  
  reg [15:0] env_W;
  reg [19:0] phase_W;
  reg [15:0] raw_W0;
  reg [15:0] raw_W1;
  reg [15:0] raw_W2;
  reg [15:0] raw_W3;
  reg [15:0] raw_W4;
  reg [15:0] raw_W5;
  reg [15:0] raw_W6;
  reg [15:0] raw_W7;

fifo_comp_high fifo_comp_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(fifo_data),               // input wire [491 : 0] din
  .wr_en(fifo_wr),               // input wire wr_en
  .rd_en(doa_rd),                // input wire rd_en
  .dout(doa_data),               // output wire [491 : 0] dout
  .empty(fifo_empty)             // output wire empty
);

	ila_2 ila_N (
		.clk(clk),              // input wire clk
		.probe0(fifo_empty),     // input wire [0:0]  probe3
		.probe1(doa_rd),         // input wire [0:0]  probe3
		.probe2(fifo_rd_delay),  // input wire [3:0]  probe3
		.probe3(env_N),          // input wire [15:0]  probe3
		.probe4(phase_N),        // input wire [19:0]  probe3
		.probe5(raw_N0),         // input wire [15:0]  probe3
		.probe6(raw_N1),         // input wire [15:0]  probe3
		.probe7(raw_N2),         // input wire [15:0]  probe3
		.probe8(raw_N3),         // input wire [15:0]  probe3
		.probe9(raw_N4),         // input wire [15:0]  probe3
		.probe10(raw_N5),         // input wire [15:0]  probe3
		.probe11(raw_N6),         // input wire [15:0]  probe3
		.probe12(raw_N7)          // input wire [15:0]  probe3
	);

	ila_2 ila_E (
		.clk(clk),              // input wire clk
		.probe0(fifo_empty),     // input wire [0:0]  probe3
		.probe1(doa_rd),         // input wire [0:0]  probe3
		.probe2(fifo_rd_delay),  // input wire [3:0]  probe3
		.probe3(env_E),          // input wire [15:0]  probe3
		.probe4(phase_E),        // input wire [19:0]  probe3
		.probe5(raw_E0),         // input wire [15:0]  probe3
		.probe6(raw_E1),         // input wire [15:0]  probe3
		.probe7(raw_E2),         // input wire [15:0]  probe3
		.probe8(raw_E3),         // input wire [15:0]  probe3
		.probe9(raw_E4),         // input wire [15:0]  probe3
		.probe10(raw_E5),         // input wire [15:0]  probe3
		.probe11(raw_E6),         // input wire [15:0]  probe3
		.probe12(raw_E7)          // input wire [15:0]  probe3
	);

	ila_2 ila_W (
		.clk(clk),              // input wire clk
		.probe0(fifo_empty),     // input wire [0:0]  probe3
		.probe1(doa_rd),         // input wire [0:0]  probe3
		.probe2(fifo_rd_delay),  // input wire [3:0]  probe3
		.probe3(env_W),          // input wire [15:0]  probe3
		.probe4(phase_W),        // input wire [19:0]  probe3
		.probe5(raw_W0),         // input wire [15:0]  probe3
		.probe6(raw_W1),         // input wire [15:0]  probe3
		.probe7(raw_W2),         // input wire [15:0]  probe3
		.probe8(raw_W3),         // input wire [15:0]  probe3
		.probe9(raw_W4),         // input wire [15:0]  probe3
		.probe10(raw_W5),         // input wire [15:0]  probe3
		.probe11(raw_W6),         // input wire [15:0]  probe3
		.probe12(raw_W7)          // input wire [15:0]  probe3
	);

generate
  begin : comp_high

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
            raw_N4 <= doa_data[115:100];
            raw_N5 <= doa_data[131:116];
            raw_N6 <= doa_data[147:132];
            raw_N7 <= doa_data[163:148];

            env_E <= doa_data[179:164];
            phase_E <= doa_data[199:180];
            raw_E0 <= doa_data[215:200];
            raw_E1 <= doa_data[231:216];
            raw_E2 <= doa_data[247:232];
            raw_E3 <= doa_data[263:248];
            raw_E4 <= doa_data[279:264];
            raw_E5 <= doa_data[295:280];
            raw_E6 <= doa_data[311:296];
            raw_E7 <= doa_data[327:312];
      
            env_W <= doa_data[343:328];
            phase_W <= doa_data[363:344];
            raw_W0 <= doa_data[379:364];
            raw_W1 <= doa_data[395:380];
            raw_W2 <= doa_data[411:396];
            raw_W3 <= doa_data[427:412];
            raw_W4 <= doa_data[443:428];
            raw_W5 <= doa_data[459:444];
            raw_W6 <= doa_data[475:460];
            raw_W7 <= doa_data[491:476];
        end
        else
            doa_valid <= 0;
    end

  end
    
endgenerate

endmodule
