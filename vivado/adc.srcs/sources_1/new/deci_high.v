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

module deci_high(
    input wire	clk,
    input wire  resetn,
    input wire	[127:0] data_N,
    input wire	ready_N,
    
    input wire	[127:0] data_E,
    input wire	ready_E,

    input wire	[127:0] data_W,
    input wire	ready_W,

    input wire  raw_clk,
    output reg raw_ready,
    output reg	[363:0] raw_data,

    input wire  doa_clk,
    output reg doa_ready,
    output reg [111:0] doa_data
    );

  reg [27:0]  counter;
  reg active;

  reg raw_fifo_wr;
  reg  [363:0] raw_in_data;

  wire raw_fifo_empty;
  reg  [11:0] raw_delay;
  wire [363:0] raw_out_data;
  reg raw_active;

  reg [27:0] doa_counter;
  reg doa_active;

  reg doa_fifo_wr;
  reg [111:0] doa_in_data;

  wire doa_fifo_empty;
  wire [111:0] doa_out_data;
  reg doa_out_active;

  (* ASYNC_REG="TRUE" *)	reg  active_1;
  (* ASYNC_REG="TRUE" *)	reg  active_2;
  
  wire  [63:0] raw_N;
  wire  [63:0] raw_E;
  wire  [63:0] raw_W;

  wire	[31:0] fir_N0 = raw_N[31:0];
  wire	[31:0] fir_N1 = raw_N[63:32];
  wire	[31:0] fir_E0 = raw_E[31:0];
  wire	[31:0] fir_E1 = raw_E[63:32];
  wire	[31:0] fir_W0 = raw_W[31:0];
  wire	[31:0] fir_W1 = raw_W[63:32];

  wire	valid_N;
  wire	valid_E;
  wire	valid_W;
  
  wire [13:0] dN0 = fir_N0[30:17];
  wire [13:0] dN1 = fir_N1[30:17];
  wire [13:0] dE0 = fir_E0[30:17];
  wire [13:0] dE1 = fir_E1[30:17];
  wire [13:0] dW0 = fir_W0[30:17];
  wire [13:0] dW1 = fir_W1[30:17];

  wire [13:0] N0 = data_N[15:2];
  wire [13:0] N1 = data_N[31:18];
  wire [13:0] N2 = data_N[47:34];
  wire [13:0] N3 = data_N[63:50];
  wire [13:0] N4 = data_N[79:66];
  wire [13:0] N5 = data_N[95:82];
  wire [13:0] N6 = data_N[111:98];
  wire [13:0] N7 = data_N[127:114];

  wire [13:0] E0 = data_E[15:2];
  wire [13:0] E1 = data_E[31:18];
  wire [13:0] E2 = data_E[47:34];
  wire [13:0] E3 = data_E[63:50];
  wire [13:0] E4 = data_E[79:66];
  wire [13:0] E5 = data_E[95:82];
  wire [13:0] E6 = data_E[111:98];
  wire [13:0] E7 = data_E[127:114];

  wire [13:0] W0 = data_W[15:2];
  wire [13:0] W1 = data_W[31:18];
  wire [13:0] W2 = data_W[47:34];
  wire [13:0] W3 = data_W[63:50];
  wire [13:0] W4 = data_W[79:66];
  wire [13:0] W5 = data_W[95:82];
  wire [13:0] W6 = data_W[111:98];
  wire [13:0] W7 = data_W[127:114];

fir_deci_high fir_N_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_N),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_N),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_N),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(raw_N)      // output wire [63 : 0] m_axis_data_tdata
);

fir_deci_high fir_E_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_E),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_E),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_E),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(raw_E)      // output wire [63 : 0] m_axis_data_tdata
);

fir_deci_high fir_W_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_W),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_W),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_W),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(raw_W)      // output wire [63 : 0] m_axis_data_tdata
);

fifo_raw_high fifo_raw_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(raw_clk),          // input wire rd_clk
  .din(raw_in_data),        // input wire [363 : 0] din
  .wr_en(raw_fifo_wr),        // input wire wr_en
  .rd_en(raw_ready),          // input wire rd_en
  .dout(raw_out_data),       // output wire [363 : 0] dout
  .empty(raw_fifo_empty)      // output wire empty
);

fifo_doa_high fifo_doa_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(doa_clk),          // input wire rd_clk
  .din(doa_in_data),        // input wire [111 : 0] din
  .wr_en(doa_fifo_wr),        // input wire wr_en
  .rd_en(doa_ready),          // input wire rd_en
  .dout(doa_out_data),       // output wire [111 : 0] dout
  .empty(doa_fifo_empty)      // output wire empty
);

ila_2 ila_N (
		.clk(clk),                 // input wire clk
		.probe0(N0),        // input wire [13:0]  probe3
		.probe1(N1),       // input wire [13:0]  probe3
		.probe2(N2),       // input wire [13:0]  probe3
		.probe3(N3),       // input wire [13:0]  probe3
		.probe4(N4),       // input wire [13:0]  probe3
		.probe5(N5),       // input wire [13:0]  probe3
		.probe6(N6),      // input wire [13:0]  probe3
		.probe7(N7),     // input wire [13:0]  probe3
		.probe8(ready_N),     // input wire [0:0]  probe3
		.probe9(dN0),             // input wire [13:0]  probe3
		.probe10(dN1),             // input wire [13:0]  probe3
		.probe11(valid_N)             // input wire [0:0]  probe3
	);

ila_2 ila_E (
		.clk(clk),                 // input wire clk
		.probe0(E0),        // input wire [13:0]  probe3
		.probe1(E1),       // input wire [13:0]  probe3
		.probe2(E2),       // input wire [13:0]  probe3
		.probe3(E3),       // input wire [13:0]  probe3
		.probe4(E4),       // input wire [13:0]  probe3
		.probe5(E5),       // input wire [13:0]  probe3
		.probe6(E6),      // input wire [13:0]  probe3
		.probe7(E7),     // input wire [13:0]  probe3
		.probe8(ready_E),     // input wire [0:0]  probe3
		.probe9(dE0),             // input wire [13:0]  probe3
		.probe10(dE1),             // input wire [13:0]  probe3
		.probe11(valid_E)             // input wire [0:0]  probe3
	);

ila_2 ila_W (
		.clk(clk),                 // input wire clk
		.probe0(W0),        // input wire [13:0]  probe3
		.probe1(W1),       // input wire [13:0]  probe3
		.probe2(W2),       // input wire [13:0]  probe3
		.probe3(W3),       // input wire [13:0]  probe3
		.probe4(W4),       // input wire [13:0]  probe3
		.probe5(W5),       // input wire [13:0]  probe3
		.probe6(W6),      // input wire [13:0]  probe3
		.probe7(W7),     // input wire [13:0]  probe3
		.probe8(ready_W),     // input wire [0:0]  probe3
		.probe9(dW0),             // input wire [13:0]  probe3
		.probe10(dW1),             // input wire [13:0]  probe3
		.probe11(valid_W)             // input wire [0:0]  probe3
	);

generate
  begin : deci_high

	always @(posedge clk) 
	begin
	  active <= resetn & ready_N & ready_E & ready_W;
	end

    always @(posedge clk) 
	begin
	  if (active)
	  begin
         raw_fifo_wr <= 1;
         counter <= counter + 1;
         raw_in_data[27:0] <= counter;
         raw_in_data[41:28] <= N0;
         raw_in_data[55:42] <= N1;
         raw_in_data[69:56] <= N2;
         raw_in_data[83:70] <= N3;
         raw_in_data[97:84] <= N4;
         raw_in_data[111:98] <= N5;
         raw_in_data[125:112] <= N6;
         raw_in_data[139:126] <= N7;
         raw_in_data[153:140] <= E0;
         raw_in_data[167:154] <= E1;
         raw_in_data[181:168] <= E2;
         raw_in_data[195:182] <= E3;
         raw_in_data[209:196] <= E4;
         raw_in_data[223:210] <= E5;
         raw_in_data[237:224] <= E6;
         raw_in_data[251:238] <= E7;
         raw_in_data[265:252] <= W0;
         raw_in_data[279:266] <= W1;
         raw_in_data[293:280] <= W2;
         raw_in_data[307:294] <= W3;
         raw_in_data[321:308] <= W4;
         raw_in_data[335:322] <= W5;
         raw_in_data[349:336] <= W6;
         raw_in_data[363:350] <= W7;
	  end
	  else
	  begin
	      raw_fifo_wr <= 0;
	      counter <= 0;
	  end
	end

	always @(posedge clk) 
	begin
	  doa_active <= resetn & valid_N & valid_E & valid_W;
	end

    always @(posedge clk) 
	begin
	  if (doa_active)
	  begin
         doa_fifo_wr <= 1;
         doa_counter <= doa_counter + 1;
         doa_in_data[27:0] <= doa_counter;
         doa_in_data[41:28] <= dN0;
         doa_in_data[55:42] <= dN1;
         doa_in_data[69:56] <= dE0;
         doa_in_data[83:70] <= dE1;
         doa_in_data[97:84] <= dW0;
         doa_in_data[111:98] <= dW1;
	  end
	  else
	  begin
	      doa_fifo_wr <= 0;
	      doa_counter <= 0;
	  end
	end

    always @(posedge raw_clk) 
    begin
      if (raw_fifo_empty)
  	  begin
	     raw_delay <= 12'h3F0;
	     raw_active <= 0;
      end
	  else
      begin
	     if (raw_delay)
	     begin
	       raw_delay <= raw_delay - 1;
	       raw_active <= 0;
	     end
	     else
	        raw_active <= 1;
	  end
    end

    always @(posedge raw_clk) 
    begin
	   if (raw_active)
	   begin
         raw_data <= raw_out_data;
         raw_ready <= 1;
       end
       else
         raw_ready <= 0;
    end

    always @(posedge doa_clk) 
     begin
      if (doa_fifo_empty)
	     doa_out_active <= 0;
	  else
	     doa_out_active <= 1;
    end

    always @(posedge doa_clk) 
    begin
	   if (doa_out_active)
	   begin
         doa_data <= doa_out_data;
         doa_ready <= 1;
       end
       else
         doa_ready <= 0;
    end


  end
    
endgenerate
    
endmodule
