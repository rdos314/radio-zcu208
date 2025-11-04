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

    output reg fifo_wr,
    output reg	[447:0] fifo
    );

  reg [27:0]  counter;
  reg active;

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
	  active <= resetn & ready_N & ready_E & ready_W;
	end

    always @(posedge clk) 
	begin
	  if (active)
	  begin
         fifo_wr <= 1;
         counter <= counter + 1;
         fifo[27:0] <= counter;
         fifo[41:28] <= N0;
         fifo[55:42] <= N1;
         fifo[69:56] <= N2;
         fifo[83:70] <= N3;
         fifo[97:84] <= N4;
         fifo[111:98] <= N5;
         fifo[125:112] <= N6;
         fifo[139:126] <= N7;
         fifo[153:140] <= N8;
         fifo[167:154] <= N9;
         fifo[181:168] <= E0;
         fifo[195:182] <= E1;
         fifo[209:196] <= E2;
         fifo[223:210] <= E3;
         fifo[237:224] <= E4;
         fifo[251:238] <= E5;
         fifo[265:252] <= E6;
         fifo[279:266] <= E7;
         fifo[293:280] <= E8;
         fifo[307:294] <= E9;
         fifo[321:308] <= W0;
         fifo[335:322] <= W1;
         fifo[349:336] <= W2;
         fifo[363:350] <= W3;
         fifo[377:364] <= W4;
         fifo[391:378] <= W5;
         fifo[405:392] <= W6;
         fifo[419:406] <= W7;
         fifo[433:420] <= W8;
         fifo[447:434] <= W9;
	  end
	  else
	  begin
	      fifo_wr <= 0;
	      counter <= 0;
	  end
	end

  end
    
endgenerate
    
endmodule
