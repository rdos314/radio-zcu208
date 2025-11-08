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

module deci_low(
    input wire	clk,
    input wire  resetn,
    input wire	[159:0] data_N,
    input wire	ready_N,
    
    input wire	[159:0] data_E,
    input wire	ready_E,

    input wire	[159:0] data_W,
    input wire	ready_W,

    input wire  raw_clk,
    output reg raw_ready,
    output reg	[237:0] raw_data
    );

  reg [27:0]  counter;
  reg active;

  reg raw_fifo_wr;
  reg  [237:0] raw_in_data;

  wire raw_fifo_empty;
  reg  [11:0] raw_delay;
  wire [237:0] raw_out_data;
  reg raw_active;

  (* ASYNC_REG="TRUE" *)	reg  active_1;
  (* ASYNC_REG="TRUE" *)	reg  active_2;

  wire	[31:0] fir_N;
  wire	[31:0] fir_E;
  wire	[31:0] fir_W;

  wire	valid_N;
  wire	valid_E;
  wire	valid_W;

  wire [13:0] dN = fir_N[30:17];
  wire [13:0] dE = fir_E[30:17];
  wire [13:0] dW = fir_W[30:17];

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

  wire	[159:0] fir_raw_N;
  wire	[159:0] fir_raw_E;
  wire	[159:0] fir_raw_W;

  wire	valid_raw_N;
  wire	valid_raw_E;
  wire	valid_raw_W;

  wire [13:0] drN0 = fir_raw_N[30:17];
  wire [13:0] drN1 = fir_raw_N[62:49];
  wire [13:0] drN2 = fir_raw_N[94:81];
  wire [13:0] drN3 = fir_raw_N[126:113];
  wire [13:0] drN4 = fir_raw_N[158:145];

  wire [13:0] drE0 = fir_raw_E[30:17];
  wire [13:0] drE1 = fir_raw_E[62:49];
  wire [13:0] drE2 = fir_raw_E[94:81];
  wire [13:0] drE3 = fir_raw_E[126:113];
  wire [13:0] drE4 = fir_raw_E[158:145];

  wire [13:0] drW0 = fir_raw_W[30:17];
  wire [13:0] drW1 = fir_raw_W[62:49];
  wire [13:0] drW2 = fir_raw_W[94:81];
  wire [13:0] drW3 = fir_raw_W[126:113];
  wire [13:0] drW4 = fir_raw_W[158:145];

fir_raw_deci fir_deci_N_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_N),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_N),    // input wire [159 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_N),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_N)      // output wire [159 : 0] m_axis_data_tdata
);

fir_raw_deci fir_deci_E_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_E),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_E),    // input wire [159 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_E),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_E)      // output wire [159 : 0] m_axis_data_tdata
);

fir_raw_deci fir_deci_W_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_W),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_W),    // input wire [159 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_W),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_W)      // output wire [159 : 0] m_axis_data_tdata
);

fir_deci_low fir_N_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_N),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_N),    // input wire [159 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_N),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_N)      // output wire [31 : 0] m_axis_data_tdata
);

fir_deci_low fir_E_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_E),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_E),    // input wire [159 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_E),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_E)      // output wire [31 : 0] m_axis_data_tdata
);

fir_deci_low fir_W_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_W),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_W),    // input wire [159 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_W),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_W)      // output wire [31 : 0] m_axis_data_tdata
);

fifo_raw fifo_raw_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(raw_clk),          // input wire rd_clk
  .din(raw_in_data),        // input wire [237 : 0] din
  .wr_en(raw_fifo_wr),        // input wire wr_en
  .rd_en(raw_ready),          // input wire rd_en
  .dout(raw_out_data),       // output wire [237 : 0] dout
  .empty(raw_fifo_empty)      // output wire empty
);

ila_0 ila_N (
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
		.probe10(ready_N),     // input wire [0:0]  probe3
		.probe11(dN),             // input wire [13:0]  probe3
		.probe12(valid_N)             // input wire [0:0]  probe3
	);

	ila_0 ila_E (
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
		.probe10(ready_E),     // input wire [0:0]  probe3
		.probe11(dE),             // input wire [13:0]  probe3
		.probe12(valid_E)             // input wire [0:0]  probe3
	);

	ila_0 ila_W (
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
		.probe10(ready_W),     // input wire [0:0]  probe3
		.probe11(dW),             // input wire [13:0]  probe3
		.probe12(valid_W)             // input wire [0:0]  probe3
	);


generate
  begin : deci_low

	always @(posedge clk) 
	begin
	  active <= resetn & valid_raw_N & valid_raw_E & valid_raw_W;
	end

    always @(posedge clk) 
	begin
	  if (active)
	  begin
         raw_fifo_wr <= 1;
         counter <= counter + 1;
         raw_in_data[27:0] <= counter;
         raw_in_data[41:28] <= drN0;
         raw_in_data[55:42] <= drN1;
         raw_in_data[69:56] <= drN2;
         raw_in_data[83:70] <= drN3;
         raw_in_data[97:84] <= drN4;
         raw_in_data[111:98] <= drE0;
         raw_in_data[125:112] <= drE1;
         raw_in_data[139:126] <= drE2;
         raw_in_data[153:140] <= drE3;
         raw_in_data[167:154] <= drE4;
         raw_in_data[181:168] <= drW0;
         raw_in_data[195:182] <= drW1;
         raw_in_data[209:196] <= drW2;
         raw_in_data[223:210] <= drW3;
         raw_in_data[237:224] <= drW4;
	  end
	  else
	  begin
	      raw_fifo_wr <= 0;
	      counter <= 0;
	  end
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
    
endgenerate
    
endmodule
