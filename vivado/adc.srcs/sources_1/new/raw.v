`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 11:56:06
// Design Name: 
// Module Name: raw
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


module raw(
    input wire	fifo_clk,
    input wire fifo_wr,
    input wire [127:0] raw_in_N,
    input wire [127:0] raw_in_E,
    input wire [127:0] raw_in_W,
	
    input wire clk,
    input wire reset,

	output reg active,
	output reg [63:0] sample,
	output reg [127:0] raw_N,
	output reg [127:0] raw_E,
	output reg [127:0] raw_W
    );

   reg [383:0] raw_in_data;
   reg raw_wr;

   wire [383:0] raw_out_data;
   reg raw_rd;
   wire raw_empty;

   reg [8:0] raw_delay;
   reg sample_cy;

fifo_raw_high fifo_raw_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(raw_in_data),             // input wire [383 : 0] din
  .wr_en(raw_wr),                // input wire wr_en
  .rd_en(raw_rd),                // input wire rd_en
  .dout(raw_out_data),           // output wire [383 : 0] dout
  .empty(raw_empty)              // output wire empty
);

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(raw_empty),           // input wire [0:0]  probe3
		.probe1(raw_rd),              // input wire [0:0]  probe3
		.probe2(raw_delay),           // input wire [8:0]  probe3
		.probe3(active),              // input wire [0:0]  probe3
		.probe4(sample)               // input wire [63:0]  probe3
	);

generate
  begin : raw

	always @(posedge fifo_clk) 
    begin
		if (fifo_wr)
		begin
			raw_in_data[127:0] <= raw_in_N;
            raw_in_data[255:128] <= raw_in_E;
            raw_in_data[383:256] <= raw_in_W;
            raw_wr <= 1;
		end
		else
            raw_wr <= 0;
    end

    always @(posedge clk) 
    begin
	   if (raw_empty)
	   begin
	       raw_delay <= 9'b111000000;
           raw_rd <= 0;
       end
	   else
	   begin
	       if (raw_delay)
	       begin
	           raw_rd <= 0;
	           raw_delay <= raw_delay - 1;
	       end
	       else
	           raw_rd <= 1;
       end
    end

    always @(posedge clk) 
    begin
		if (raw_rd)
		begin
			if (sample[31:0] == 32'hFFFFFFFE)
				sample_cy <= 1;
			else
				sample_cy <= 0;
				
			sample[31:0] <= sample[31:0] + 1;
	
			if (sample_cy)
				sample[63:32] <= sample[63:32] + 1;
		end
		else
		begin
			sample <= 0;
			sample_cy <= 0;
		end
	end

    always @(posedge clk) 
	begin
        if (raw_rd & (!raw_empty))
        begin
			raw_N <= raw_out_data[127:0];
			raw_E <= raw_out_data[255:128];
			raw_W <= raw_out_data[383:256];
			active <= 1;
		end
		else
			active <= 0;
	end

	
  end
    
endgenerate

endmodule
