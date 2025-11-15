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
    input wire [111:0] fifo_data,

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

ila_2 ila_2_i (
		.clk(clk),                  // input wire clk
		.probe0(N0),                // input wire [13:0]  probe3
		.probe1(N1),                // input wire [13:0]  probe3
		.probe2(fir_re_N[38:23]),   // input wire [15:0]  probe3
		.probe3(fir_im_N[38:23]),   // input wire [15:0]  probe3
		.probe4(env_N),             // input wire [15:0]  probe3
		.probe5(phase_N),           // input wire [15:0]  probe3
		.probe6(diff_N),           // input wire [15:0]  probe3
		.probe7(E0),                // input wire [13:0]  probe3
		.probe8(E1),                // input wire [13:0]  probe3
		.probe9(fir_re_E[38:23]),   // input wire [15:0]  probe3
		.probe10(fir_im_E[38:23]),   // input wire [15:0]  probe3
		.probe11(env_E),             // input wire [15:0]  probe3
		.probe12(phase_E),           // input wire [15:0]  probe3
		.probe13(diff_E),           // input wire [15:0]  probe3
		.probe14(W0),                // input wire [13:0]  probe3
		.probe15(W1),                // input wire [13:0]  probe3
		.probe16(fir_re_W[38:23]),   // input wire [15:0]  probe3
		.probe17(fir_im_W[38:23]),   // input wire [15:0]  probe3
		.probe18(env_W),             // input wire [15:0]  probe3
		.probe19(phase_W),           // input wire [15:0]  probe3
		.probe20(diff_W),           // input wire [15:0]  probe3
		.probe21(fifo_valid)        // input wire [0:0]  probe3
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
         diff_N <= phase_N - prevN;
         prevN <= phase_N;
         
         E0 <= fifo_data[69:56];
         E1 <= fifo_data[83:70];
         diff_E <= phase_E - prevE;
         prevE <= phase_E;

         W0 <= fifo_data[97:84];
         W1 <= fifo_data[111:98];
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
