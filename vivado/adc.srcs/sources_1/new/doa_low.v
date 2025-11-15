`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 21:52:01
// Design Name: 
// Module Name: doa_low
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

module doa_low(
    input wire clk,
    input wire reset,
    input wire fifo_valid,
    input wire [69:0] fifo_data,

    output wire valid_N,
    output wire [15:0] env_N,
    output wire [15:0] phase_N,
    output reg [15:0] diff_N,

    output wire valid_E,
    output wire [15:0] env_E,
    output wire [15:0] phase_E,
    output reg [15:0] diff_E,

    output wire valid_W,
    output wire [15:0] env_W,
    output wire [15:0] phase_W,
    output reg [15:0] diff_W
    );

  reg [27:0] counter;
  reg [15:0] N;
  reg [15:0] E;
  reg [15:0] W;
  
  reg [15:0] prevN;
  reg [15:0] prevE;
  reg [15:0] prevW;
  
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

fir_doa_low_re fir_doa_low_re_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_re fir_doa_low_re_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_re fir_doa_low_re_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_W)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_doa_low_im_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_doa_low_im_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_doa_low_im_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_W)             // output wire [39 : 0] m_axis_data_tdata
);

morlet_to_phase_env doa_N_i (
  .clk(clk),                               // input wire aclk
  .active(fifo_valid),
  .re(fir_re_N[38:23]),
  .im(fir_im_N[38:23]),
  .valid(valid_N),
  .env(env_N),
  .phase(phase_N)
  );

morlet_to_phase_env doa_E_i (
  .clk(clk),                               // input wire aclk
  .active(fifo_valid),
  .re(fir_re_E[38:23]),
  .im(fir_im_E[38:23]),
  .valid(valid_E),
  .env(env_E),
  .phase(phase_E)
  );

morlet_to_phase_env doa_W_i (
  .clk(clk),                               // input wire aclk
  .active(fifo_valid),
  .re(fir_re_W[38:23]),
  .im(fir_im_W[38:23]),
  .valid(valid_W),
  .env(env_W),
  .phase(phase_W)
  );
      
ila_0 ila_0_i (
		.clk(clk),                  // input wire clk
		.probe0(N[15:2]),           // input wire [13:0]  probe3
		.probe1(fir_re_N[38:23]),   // input wire [15:0]  probe3
		.probe2(fir_im_N[38:23]),   // input wire [15:0]  probe3
		.probe3(env_N),             // input wire [15:0]  probe3
		.probe4(phase_N),             // input wire [15:0]  probe3
		.probe5(diff_N),             // input wire [15:0]  probe3
		.probe6(E[15:2]),           // input wire [13:0]  probe3
		.probe7(fir_re_E[38:23]),   // input wire [15:0]  probe3
		.probe8(fir_im_E[38:23]),   // input wire [15:0]  probe3
		.probe9(env_E),             // input wire [15:0]  probe3
		.probe10(phase_E),             // input wire [15:0]  probe3
		.probe11(diff_E),             // input wire [15:0]  probe3
		.probe12(W[15:2]),           // input wire [13:0]  probe3
		.probe13(fir_re_W[38:23]),   // input wire [15:0]  probe3
		.probe14(fir_im_W[38:23]),   // input wire [15:0]  probe3
		.probe15(env_W),             // input wire [15:0]  probe3
		.probe16(phase_W),             // input wire [15:0]  probe3
		.probe17(diff_W),             // input wire [15:0]  probe3
		.probe18(fifo_valid)        // input wire [0:0]  probe3
	);


generate
  begin : deci_low

    always @(posedge clk) 
	begin
	  if (fifo_valid)
	  begin
         counter <= fifo_data[27:0];

         N[15:2] <= fifo_data[41:28];
         N[1:0] <= 0;
         diff_N <= phase_N - prevN;
         prevN <= phase_N;

         E[15:2] <= fifo_data[55:42];
         E[1:0] <= 0;
         diff_E <= phase_E - prevE;
         prevE <= phase_E;
         
         W[15:2] <= fifo_data[69:56];
         W[1:0] <= 0;
         diff_W <= phase_W - prevW;
         prevW <= phase_W;
      end
      else
      begin
        counter <= 0;
        prevN <= 0;
        prevE <= 0;
        prevW <= 0;
      end
    end

  end

endgenerate

endmodule
