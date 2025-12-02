`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2025 13:51:36
// Design Name: 
// Module Name: morlet_to_phase_env
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


module morlet_to_phase_env(
    input wire clk,
    input wire active,
    input wire [23:0] re,
    input wire [23:0] im,
    output reg valid,
    output reg [15:0] env,
    output reg [19:0] phase
    );
    
  wire [31:0] re2;
  wire [31:0] im2;
  reg [31:0] p2;
  wire sqrt_valid;
  wire [47:0] atan2_in;
  wire [15:0] lenv;
  wire [23:0] lphase;
  
  assign atan2_in[23:0] = re;
  assign atan2_in[47:24] = im;

mult_16_16 mult_re_i (
  .CLK(clk),  // input wire CLK
  .A(re[23:8]),      // input wire [15 : 0] A
  .B(re[23:8]),      // input wire [15 : 0] B
  .P(re2)      // output wire [31 : 0] P
);

mult_16_16 mult_im_i (
  .CLK(clk),  // input wire CLK
  .A(im[23:8]),      // input wire [15 : 0] A
  .B(im[23:8]),      // input wire [15 : 0] B
  .P(im2)      // output wire [31 : 0] P
);

cordic_sqrt_16 sqrt_i (
  .aclk(clk),                                        // input wire aclk
  .s_axis_cartesian_tvalid(active),                  // input wire s_axis_cartesian_tvalid
  .s_axis_cartesian_tdata(p2),                       // input wire [31 : 0] s_axis_cartesian_tdata
  .m_axis_dout_tvalid(sqrt_valid),                   // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(lenv)                            // output wire [15 : 0] m_axis_dout_tdata
);

cordic_atan2_16 tan2_i (
  .aclk(clk),                                        // input wire aclk
  .s_axis_cartesian_tvalid(active),                  // input wire s_axis_cartesian_tvalid
  .s_axis_cartesian_tdata(atan2_in),                 // input wire [47 : 0] s_axis_cartesian_tdata
  .m_axis_dout_tvalid(atan2_valid),                  // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(lphase)                         // output wire [23 : 0] m_axis_dout_tdata
);

ila_1 ila_1_i (
		.clk(clk),              // input wire clk
		.probe0(active),        // input wire [0:0]  probe3
		.probe1(re),            // input wire [23:0]  probe3
		.probe2(im),            // input wire [23:0]  probe3
		.probe3(re2),           // input wire [31:0]  probe3
		.probe4(im2),           // input wire [31:0]  probe3
		.probe5(p2),            // input wire [31:0]  probe3
		.probe6(sqrt_valid),    // input wire [0:0]  probe3
		.probe7(lenv),          // input wire [15:0]  probe3
		.probe8(lphase),        // input wire [23:0]  probe3
		.probe9(atan2_valid),   // input wire [0:0]  probe3
		.probe10(env),          // input wire [15:0]  probe3
		.probe11(phase),        // input wire [19:0]  probe3
		.probe12(valid)         // input wire [0:0]  probe3
);

generate
  begin : morlet_to_phase_env

    always @(posedge clk) 
	begin
	  if (active)
	  begin
  	    p2 <= re2 + im2;
	    env <= lenv;
	    phase <= lphase[19:0];
	    valid <= sqrt_valid & atan2_valid;
	  end
	  else
	    valid <= 0;
	end

  end

endgenerate

endmodule
