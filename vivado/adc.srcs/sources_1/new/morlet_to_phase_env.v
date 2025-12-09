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
  wire [47:0] atan2_in;
  wire [15:0] lenv;
  wire [23:0] lphase;
  
  reg [15:0] amp_1;
  reg [15:0] amp_2;
  reg [15:0] amp_3;
  reg [15:0] amp_4;
  
  reg [4:0] delay;
  
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
  .m_axis_dout_tdata(lenv)                            // output wire [15 : 0] m_axis_dout_tdata
);

cordic_atan2_16 tan2_i (
  .aclk(clk),                                        // input wire aclk
  .s_axis_cartesian_tvalid(active),                  // input wire s_axis_cartesian_tvalid
  .s_axis_cartesian_tdata(atan2_in),                 // input wire [47 : 0] s_axis_cartesian_tdata
  .m_axis_dout_tdata(lphase)                         // output wire [23 : 0] m_axis_dout_tdata
);

/*
ila_1 ila_1_i (
		.clk(clk),              // input wire clk
		.probe0(active),        // input wire [0:0]  probe3
		.probe1(delay),         // input wire [4:0]  probe3
		.probe2(re),            // input wire [23:0]  probe3
		.probe3(im),            // input wire [23:0]  probe3
		.probe4(re2),           // input wire [31:0]  probe3
		.probe5(im2),           // input wire [31:0]  probe3
		.probe6(p2),            // input wire [31:0]  probe3
		.probe7(lenv),          // input wire [15:0]  probe3
		.probe8(lphase),        // input wire [23:0]  probe3
		.probe9(env),           // input wire [15:0]  probe3
		.probe10(phase),        // input wire [19:0]  probe3
		.probe11(valid)         // input wire [0:0]  probe3
);
*/

generate
  begin : morlet_to_phase_env

    always @(posedge clk) 
	begin
  	    p2 <= re2 + im2;
		amp_1 <= lenv;
		amp_2 <= amp_1;
		amp_3 <= amp_2;
		amp_4 <= amp_3;
	end

    always @(posedge clk) 
	begin
	  if (active)
	  begin
	    if (delay == 27)
	    begin
    	    valid <= 1;
    	    env <= amp_4;
	       phase <= lphase[19:0];
        end
        else
          delay <= delay + 1;
      end
      else
      begin
        if (delay)
		begin
          valid <= 1;
    	  env <= amp_4;
	      phase <= lphase[19:0];
          delay <= delay - 1;
		end
        else
          valid <= 0;
      end
    end

  end

endgenerate

endmodule
