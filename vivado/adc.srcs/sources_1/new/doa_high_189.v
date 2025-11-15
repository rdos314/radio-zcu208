`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 22:39:14
// Design Name: 
// Module Name: doa_high_189
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

module doa_high_189(
    input wire clk,
    input wire reset,
    input wire fifo_valid,
    input wire [111:0] fifo_data
    );

  reg [27:0] counter;
  reg [13:0] N0;
  reg [13:0] N1;
  wire [31:0] N;
  assign N[31:18] = N1;
  assign N[17:4] = N0;
  assign N[3:0] = 0;
  
  reg [13:0] E0;
  reg [13:0] E1;
  wire [31:0] E;
  assign E[31:18] = E1;
  assign E[17:4] = E0;
  assign E[3:0] = 0;

  reg [13:0] W0;
  reg [13:0] W1;
  wire [31:0] W;
  assign E[31:18] = E1;
  assign E[17:4] = E0;
  assign E[3:0] = 0;

  wire ready_re_N;
  wire valid_re_N;
  wire [39:0] fir_re_N;

  wire ready_re_E;
  wire valid_re_E;
  wire [39:0] fir_re_E;

  wire ready_re_W;
  wire valid_re_W;
  wire [39:0] fir_re_W;

  wire ready_im_N;
  wire valid_im_N;
  wire [39:0] fir_im_N;
  
  wire ready_im_E;
  wire valid_im_E;
  wire [39:0] fir_im_E;
  
  wire ready_im_W;
  wire valid_im_W;
  wire [39:0] fir_im_W;

fir_doa_high_re_189 fir_doa_low_re_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_re_189 fir_doa_low_re_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_re_189 fir_doa_low_re_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_W)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_im_189 fir_doa_low_im_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_im_189 fir_doa_low_im_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_im_189 fir_doa_low_im_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_W)             // output wire [39 : 0] m_axis_data_tdata
);


ila_2 ila_2_i (
		.clk(clk),                  // input wire clk
		.probe0(N0),                // input wire [13:0]  probe3
		.probe1(N1),                // input wire [13:0]  probe3
		.probe2(valid_re_N),        // input wire [0:0]  probe3
		.probe3(fir_re_N[39:24]),   // input wire [15:0]  probe3
		.probe4(valid_im_N),        // input wire [0:0]  probe3
		.probe5(fir_im_N[39:24]),   // input wire [15:0]  probe3
		.probe6(E0),                // input wire [13:0]  probe3
		.probe7(E1),                // input wire [13:0]  probe3
		.probe8(valid_re_E),        // input wire [0:0]  probe3
		.probe9(fir_re_E[39:24]),   // input wire [15:0]  probe3
		.probe10(valid_im_E),       // input wire [0:0]  probe3
		.probe11(fir_im_E[39:24]),  // input wire [15:0]  probe3
		.probe12(W0),               // input wire [13:0]  probe3
		.probe13(W1),               // input wire [13:0]  probe3
		.probe14(valid_re_W),       // input wire [0:0]  probe3
		.probe15(fir_re_W[39:24]),  // input wire [15:0]  probe3
		.probe16(valid_im_W),       // input wire [0:0]  probe3
		.probe17(fir_im_W[39:24]),  // input wire [15:0]  probe3
		.probe18(fifo_valid)        // input wire [0:0]  probe3
	);

  
generate
  begin : deci_high

    always @(posedge clk) 
	begin
	  if (fifo_valid)
	  begin
         counter <= fifo_data[27:0];
         N0 <= fifo_data[41:28];
         N1 <= fifo_data[55:42];
         E0 <= fifo_data[69:56];
         E1 <= fifo_data[83:70];
         W0 <= fifo_data[97:84];
         W1 <= fifo_data[111:98];
	  end
	  else
	      counter <= 0;
	end

  end

endgenerate

endmodule
