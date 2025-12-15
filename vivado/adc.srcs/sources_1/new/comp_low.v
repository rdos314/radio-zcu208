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
    input wire [191:0] fifo_sample_data,
    input wire [143:0] fifo_doa_data,

    input wire clk,
    input wire reset
    );

  reg sample_rd;
  wire [191:0] sample_data;
  wire fifo_sample_empty;
  reg [8:0] fifo_sample_delay;

  reg doa_rd;
  wire [143:0] doa_data;
  wire fifo_doa_empty;
  reg [4:0] fifo_doa_delay;
  reg doa_valid;

  reg [15:0] env_N;
  reg [19:0] phase_N;

  reg [15:0] env_E;
  reg [19:0] phase_E;

  reg [15:0] env_W;
  reg [19:0] phase_W;

  reg [11:0] err_NE;
  reg [11:0] err_NW;
  reg [11:0] err_EW;

  reg [15:0] raw_N0;
  reg [15:0] raw_N1;
  reg [15:0] raw_N2;
  reg [15:0] raw_N3;
  
  reg [15:0] raw_E0;
  reg [15:0] raw_E1;
  reg [15:0] raw_E2;
  reg [15:0] raw_E3;  
  
  reg [15:0] raw_W0;
  reg [15:0] raw_W1;
  reg [15:0] raw_W2;
  reg [15:0] raw_W3;

fifo_raw_low fifo_raw_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(fifo_sample_data),        // input wire [191 : 0] din
  .wr_en(fifo_wr),               // input wire wr_en
  .rd_en(sample_rd),             // input wire rd_en
  .dout(sample_data),            // output wire [191 : 0] dout
  .empty(fifo_sample_empty)      // output wire empty
);


fifo_doa fifo_doa_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(fifo_doa_data),           // input wire [143 : 0] din
  .wr_en(fifo_wr),               // input wire wr_en
  .rd_en(doa_rd),                // input wire rd_en
  .dout(doa_data),               // output wire [143 : 0] dout
  .empty(fifo_doa_empty)         // output wire empty
);

	ila_3 ila_i (
		.clk(clk),               // input wire clk
		.probe0(fifo_sample_empty), // input wire [0:0]  probe3
		.probe1(fifo_doa_empty),    // input wire [0:0]  probe3
		.probe2(sample_rd),         // input wire [0:0]  probe3
		.probe3(doa_rd),            // input wire [0:0]  probe3
		.probe4(fifo_doa_delay),     // input wire [4:0]  probe3
		.probe5(fifo_sample_delay),  // input wire [8:0]  probe3
		.probe6(env_N),             // input wire [15:0]  probe3
		.probe7(phase_N),           // input wire [19:0]  probe3
		.probe8(env_E),             // input wire [15:0]  probe3
		.probe9(phase_E),           // input wire [19:0]  probe3
		.probe10(env_W),             // input wire [15:0]  probe3
		.probe11(phase_W),          // input wire [19:0]  probe3
		.probe12(err_NE),           // input wire [11:0]  probe3
		.probe13(err_NW),           // input wire [11:0]  probe3
		.probe14(err_EW),           // input wire [11:0]  probe3
		.probe15(raw_N0),           // input wire [15:0]  probe3
		.probe16(raw_E0),           // input wire [15:0]  probe3
		.probe17(raw_W0)            // input wire [15:0]  probe3
	);


generate
  begin : comp_low

    always @(posedge clk) 
    begin
	   if (fifo_sample_empty)
	   begin
	       fifo_sample_delay <= 9'b000011111;
           sample_rd <= 0;
       end
	   else
	   begin
	       if (fifo_doa_delay)
	       begin
	           sample_rd <= 0;
	           fifo_sample_delay <= fifo_sample_delay - 1;
	       end
	       else
	           sample_rd <= 1;
       end
    end

    always @(posedge clk) 
    begin
	   if (fifo_doa_empty)
	   begin
	       fifo_doa_delay <= 5'b11111;
           doa_rd <= 0;
       end
	   else
	   begin
	       if (fifo_doa_delay)
	       begin
	           doa_rd <= 0;
	           fifo_doa_delay <= fifo_doa_delay - 1;
	       end
	       else
	           doa_rd <= 1;
       end
    end

    always @(posedge clk) 
	begin
        if (doa_rd & (!fifo_doa_empty))
        begin
            doa_valid <= 1;

            env_N <= doa_data[15:0];
            phase_N <= doa_data[35:16];
            env_E <= doa_data[51:36];
            phase_E <= doa_data[71:52];
            env_W <= doa_data[87:72];
            phase_W <= doa_data[107:88];
            
            err_NE <= doa_data[119:108];
            err_NW <= doa_data[131:120];
            err_EW <= doa_data[143:132];            

        end
        else
            doa_valid <= 0;
	end

    always @(posedge clk) 
	begin
        if (sample_rd & (!fifo_sample_empty))
        begin
            raw_N0 <= sample_data[15:0];
            raw_N1 <= sample_data[31:16];
            raw_N2 <= sample_data[47:32];
            raw_N3 <= sample_data[63:48];

            raw_E0 <= sample_data[79:64];
            raw_E1 <= sample_data[95:80];
            raw_E2 <= sample_data[111:96];
            raw_E3 <= sample_data[127:112];
      
            raw_W0 <= sample_data[143:128];
            raw_W1 <= sample_data[159:144];
            raw_W2 <= sample_data[175:160];
            raw_W3 <= sample_data[191:176];
        end
	end

  end
    
endgenerate

endmodule
