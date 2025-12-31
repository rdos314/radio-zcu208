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


module doa_calc(
    input wire clk,
    input wire reset,

    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire start,
    input wire [19:0] freq,

    input wire [15:0] env_N,
    input wire [15:0] env_E,
    input wire [15:0] env_W,

    input wire [19:0] phase_NE,
    input wire [19:0] phase_EW,
    input wire [19:0] phase_WN
);

  reg [19:0] shadow_limit;
  reg [31:0] inv_dij;
  wire [39:0] div_dij = {1'b0, inv_dij, 7'b0000000};
  wire [23:0] div_freq = {4'b0000, freq};

  wire valid_k;
  wire [63:0] k_out;
  wire [19:0] k = k_out[43:24];
  
  wire done_NE;
  wire done_EW;
  wire done_WN;
  
  wire fail_NE;
  wire fail_EW;
  wire fail_WN;
  
  wire shadow_NE;
  wire shadow_EW;
  wire shadow_WN;
  
  wire [19:0] angle_NE;
  wire [19:0] angle_EW;
  wire [19:0] angle_WN;
  
  wire [19:0] delay_NE;
  wire [19:0] delay_EW;
  wire [19:0] delay_WN;
  
  wire angle_done;
  wire [19:0] angle;

div_k div_k_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(start),                    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_freq),                  // input wire [23 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(start),                   // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_dij),                  // input wire [39 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_k),                     // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(k_out)                         // output wire [63 : 0] m_axis_dout_tdata
);

doa_pair doa_NE_i(
  .clk(clk),
  .reset(reset),
  .start(valid_k),
  .k(k),
  .shadow_limit(shadow_limit),
  .phase(phase_NE),
  .done(done_NE),
  .fail(fail_NE),
  .shadow(shadow_NE),
  .angle(angle_NE)
);

doa_pair doa_EW_i(
  .clk(clk),
  .reset(reset),
  .start(valid_k),
  .k(k),
  .shadow_limit(shadow_limit),
  .phase(phase_EW),
  .done(done_EW),
  .fail(fail_EW),
  .shadow(shadow_EW),
  .angle(angle_EW)
);

doa_pair doa_WN_i(
  .clk(clk),
  .reset(reset),
  .start(valid_k),
  .k(k),
  .shadow_limit(shadow_limit),
  .phase(phase_WN),
  .done(done_WN),
  .fail(fail_WN),
  .shadow(shadow_WN),
  .angle(angle_WN)
);

doa_angle doa_angle_i(
  .clk(clk),
  .reset(reset),
  .start(done_NE & done_EW & done_WN),
  .angle_NE(angle_NE),
  .angle_EW(angle_EW),
  .angle_WN(angle_WN),
  .shadow_NE(shadow_NE),
  .shadow_EW(shadow_EW),
  .shadow_WN(shadow_WN),
  .done(angle_done),
  .angle(angle),
  .delay_NE(delay_NE),
  .delay_EW(delay_EW),
  .delay_WN(delay_WN)
);

	ila_6 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(inv_dij),             // input wire [31:0]  probe3
		.probe1(shadow_limit),        // input wire [19:0]  probe3
		.probe2(start),               // input wire [0:0]  probe3
		.probe3(freq),                // input wire [19:0]  probe3
		.probe4(env_N),               // input wire [15:0]  probe3
		.probe5(env_E),               // input wire [15:0]  probe3
		.probe6(env_W),               // input wire [15:0]  probe3
		.probe7(phase_NE),            // input wire [19:0]  probe3
		.probe8(phase_EW),            // input wire [19:0]  probe3
		.probe9(phase_WN),            // input wire [19:0]  probe3
		.probe10(valid_k),            // input wire [0:0]  probe3
		.probe11(k),                  // input wire [19:0]  probe3
		.probe12(done_NE),            // input wire [0:0]  probe3
		.probe13(done_EW),            // input wire [0:0]  probe3
		.probe14(done_WN),            // input wire [0:0]  probe3
		.probe15(shadow_NE),          // input wire [0:0]  probe3
		.probe16(shadow_EW),          // input wire [0:0]  probe3
		.probe17(shadow_WN),          // input wire [0:0]  probe3
		.probe18(angle_NE),           // input wire [19:0]  probe3
		.probe19(angle_EW),           // input wire [19:0]  probe3
		.probe20(angle_WN),           // input wire [19:0]  probe3
		.probe21(delay_NE),           // input wire [19:0]  probe3
		.probe22(delay_EW),           // input wire [19:0]  probe3
		.probe23(delay_WN)            // input wire [19:0]  probe3
);

generate
  begin : doa_calc

    always @(posedge clk) 
	begin
        if (config_wr)
        begin
            case (config_adr)
                5 : inv_dij <= config_data;
                6 : shadow_limit <= config_data[19:0];
            endcase            
        end
    end

  end
    
endgenerate

endmodule
