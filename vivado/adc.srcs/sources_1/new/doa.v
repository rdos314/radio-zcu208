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
    input wire [31:0] sample_in,
    input wire [8:0] size_in,
    input wire [19:0] freq_in,

    input wire [15:0] env_N_in,
    input wire [15:0] env_E_in,
    input wire [15:0] env_W_in,

    input wire [19:0] phase_NE_in,
    input wire [19:0] phase_EW_in,
    input wire [19:0] phase_WN_in,
    
    output reg done,

    output reg [31:0] sample,
    output reg [8:0] size,
    output reg [19:0] freq,
    output reg [15:0] angle,

    output reg [15:0] env_N,
    output reg [15:0] env_E,
    output reg [15:0] env_W,
 
    output reg [5:0] sample_N,
    output reg [5:0] sample_E,
    output reg [5:0] sample_W
);

  reg [19:0] shadow_limit;
  reg [19:0] sample_fact;
  reg [19:0] sample_dist;
  reg [31:0] inv_sample_dist;
  wire [39:0] div_dij = {1'b0, inv_sample_dist, 7'b0000000};
  wire [23:0] div_freq = {4'b0000, freq_in};

  wire valid_k;
  wire [63:0] k_out;
  wire [19:0] k = k_out[43:24];

  reg start_div;
  reg [31:0] sample_div;
  reg [8:0] size_div;
  reg [19:0] freq_div;

  reg [15:0] env_N_div;
  reg [15:0] env_E_div;
  reg [15:0] env_W_div;

  reg [19:0] phase_NE_div;
  reg [19:0] phase_EW_div;
  reg [19:0] phase_WN_div;

  reg start_pair;
  reg [31:0] sample_pair;
  reg [8:0] size_pair;
  reg [19:0] freq_pair;

  reg [15:0] env_N_pair;
  reg [15:0] env_E_pair;
  reg [15:0] env_W_pair;

  reg [19:0] phase_NE_pair;
  reg [19:0] phase_EW_pair;
  reg [19:0] phase_WN_pair;
  
  wire done_NE;
  wire done_EW;
  wire done_WN;
  
  wire fail_NE;
  wire fail_EW;
  wire fail_WN;
  
  wire shadow_NE;
  wire shadow_EW;
  wire shadow_WN;

  wire [31:0] sample_doa;
  wire [8:0] size_doa;
  wire [19:0] freq_doa;

  wire [15:0] env_N_doa;
  wire [15:0] env_E_doa;
  wire [15:0] env_W_doa;

  wire [19:0] phase_NE_doa;
  wire [19:0] phase_EW_doa;
  wire [19:0] phase_WN_doa;
  
  wire [15:0] angle_NE;
  wire [15:0] angle_EW;
  wire [15:0] angle_WN;

  wire [15:0] angle_doa;
  
  wire angle_done;
  
  wire shadow_N;
  wire shadow_E;
  wire shadow_W;
  
  wire [15:0] delay_NE;
  wire [15:0] delay_EW;
  wire [15:0] delay_WN;
  
  wire [39:0] mul_freq;
  wire [19:0] sample_freq = mul_freq[38:19];
  
  wire [39:0] mul_NE;
  wire [39:0] mul_EW;
  wire [39:0] mul_WN;

  wire [19:0] calc_NE = mul_NE[34:15];
  wire [19:0] calc_EW = mul_EW[34:15];
  wire [19:0] calc_WN = mul_WN[34:15];
  
  wire [39:0] mul_N;
  wire [39:0] mul_E;
  wire [39:0] mul_W;
  
  reg [15:0] delay_N;
  reg [15:0] delay_E;
  reg [15:0] delay_W;
  
  wire [15:0] dist_N = mul_N[35:20];
  wire [15:0] dist_E = mul_E[35:20];
  wire [15:0] dist_W = mul_W[35:20];

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
  .start(start_div),
  .k(k),
  .shadow_limit(shadow_limit),
  .phase(phase_NE_div),
  .done(done_NE),
  .fail(fail_NE),
  .shadow(shadow_NE),
  .angle(angle_NE)
);

doa_pair doa_EW_i(
  .clk(clk),
  .reset(reset),
  .start(start_div),
  .k(k),
  .shadow_limit(shadow_limit),
  .phase(phase_EW_div),
  .done(done_EW),
  .fail(fail_EW),
  .shadow(shadow_EW),
  .angle(angle_EW)
);

doa_pair doa_WN_i(
  .clk(clk),
  .reset(reset),
  .start(start_div),
  .k(k),
  .shadow_limit(shadow_limit),
  .phase(phase_WN_div),
  .done(done_WN),
  .fail(fail_WN),
  .shadow(shadow_WN),
  .angle(angle_WN)
);

doa_angle doa_angle_i(
  .clk(clk),
  .reset(reset),
  .start(start_pair),
  .sample_in(sample_pair),
  .size_in(size_pair),
  .freq_in(freq_pair),
  .env_N_in(env_N_pair),
  .env_E_in(env_E_pair),
  .env_W_in(env_W_pair),
  .phase_NE_in(phase_NE_pair),
  .phase_EW_in(phase_EW_pair),
  .phase_WN_in(phase_WN_pair),
  .angle_NE(angle_NE),
  .angle_EW(angle_EW),
  .angle_WN(angle_WN),
  .shadow_NE(shadow_NE),
  .shadow_EW(shadow_EW),
  .shadow_WN(shadow_WN),
  .done(angle_done),
  .sample(sample_doa),
  .size(size_doa),
  .freq(freq_doa),
  .env_N(env_N_doa),
  .env_E(env_E_doa),
  .env_W(env_W_doa), 
  .shadow_N(shadow_N),
  .shadow_E(shadow_E),
  .shadow_W(shadow_W), 
  .angle(angle_doa),
  .phase_NE(phase_NE_doa),
  .phase_EW(phase_EW_doa),
  .phase_WN(phase_WN_doa),
  .delay_NE(delay_NE),
  .delay_EW(delay_EW),
  .delay_WN(delay_WN)
);

mult_20x20 mul_delay_freq_i 
(
  .CLK(clk),                // input wire CLK
  .A(sample_dist),          // input wire [19 : 0] A
  .B(freq_doa),              // input wire [19 : 0] B
  .P(mul_freq)              // output wire [39 : 0] P
);
  
mult_20x20 mul_delay_NE_i 
(
  .CLK(clk),                    // input wire CLK
  .A(sample_freq),              // input wire [19 : 0] A
  .B({delay_NE, 4'b0000}),      // input wire [19 : 0] B
  .P(mul_NE)                    // output wire [39 : 0] P
);
  
mult_20x20 mul_delay_EW_i 
(
  .CLK(clk),                    // input wire CLK
  .A(sample_freq),              // input wire [19 : 0] A
  .B({delay_EW, 4'b0000}),      // input wire [19 : 0] B
  .P(mul_EW)                    // output wire [39 : 0] P
);
  
mult_20x20 mul_delay_WN_i 
(
  .CLK(clk),                    // input wire CLK
  .A(sample_freq),              // input wire [19 : 0] A
  .B({delay_WN, 4'b0000}),      // input wire [19 : 0] B
  .P(mul_WN)                    // output wire [39 : 0] P
);
  
mult_20x20 mul_delay_N_i 
(
  .CLK(clk),                // input wire CLK
  .A(sample_fact),          // input wire [19 : 0] A
  .B({delay_N, 4'b0000}),   // input wire [19 : 0] B
  .P(mul_N)                 // output wire [39 : 0] P
);
  
mult_20x20 mul_delay_E_i 
(
  .CLK(clk),                // input wire CLK
  .A(sample_fact),          // input wire [19 : 0] A
  .B({delay_E, 4'b0000}),   // input wire [19 : 0] B
  .P(mul_E)                 // output wire [39 : 0] P
);
  
mult_20x20 mul_delay_W_i 
(
  .CLK(clk),               // input wire CLK
  .A(sample_fact),         // input wire [19 : 0] A
  .B({delay_W, 4'b0000}),  // input wire [19 : 0] B
  .P(mul_W)                // output wire [39 : 0] P
);

	ila_6 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(start),               // input wire [0:0]  probe3
		.probe1(freq_doa),            // input wire [19:0]  probe3
		.probe2(env_N_doa),           // input wire [15:0]  probe3
		.probe3(env_E_doa),           // input wire [15:0]  probe3
		.probe4(env_W_doa),           // input wire [15:0]  probe3
		.probe5(phase_NE_doa),        // input wire [19:0]  probe3
		.probe6(phase_EW_doa),        // input wire [19:0]  probe3
		.probe7(phase_WN_doa),        // input wire [19:0]  probe3
		.probe8(sample_freq),         // input wire [19:0]  probe3
		.probe9(calc_NE),             // input wire [19:0]  probe3
		.probe10(calc_EW),            // input wire [19:0]  probe3
		.probe11(calc_WN),            // input wire [19:0]  probe3
		.probe12(angle_NE),           // input wire [15:0]  probe3
		.probe13(angle_EW),           // input wire [15:0]  probe3
		.probe14(angle_WN),           // input wire [15:0]  probe3
		.probe15(delay_NE),           // input wire [15:0]  probe3
		.probe16(delay_EW),           // input wire [15:0]  probe3
		.probe17(delay_WN),           // input wire [15:0]  probe3
		.probe18(delay_N),            // input wire [15:0]  probe3
		.probe19(delay_E),            // input wire [15:0]  probe3
		.probe20(delay_W),            // input wire [15:0]  probe3
		.probe21(sample_fact),        // input wire [19:0]  probe3
		.probe22(dist_N),             // input wire [15:0]  probe3
		.probe23(dist_E),             // input wire [15:0]  probe3
		.probe24(dist_W),             // input wire [15:0]  probe3
		.probe25(valid_k),            // input wire [0:0]  probe3
		.probe26(start_div),          // input wire [0:0]  probe3
		.probe27(done_NE),            // input wire [0:0]  probe3
		.probe28(start_pair),         // input wire [0:0]  probe3
		.probe29(angle_done),         // input wire [0:0]  probe3
		.probe30(angle_doa)           // input wire [15:0]  probe3
);

generate
  begin : doa_calc

    always @(posedge clk) 
	begin
        if (config_wr)
        begin
            case (config_adr)
                5 : inv_sample_dist <= config_data;
                6 : shadow_limit <= config_data[19:0];
                7 : sample_fact <= config_data[19:0];
                8 : sample_dist <= config_data[19:0];
            endcase            
        end
    end

    always @(posedge clk) 
	begin
        if (valid_k)
        begin
            start_div <= 1;

            sample_div <= sample_in;
            size_div <= size_in;
            freq_div <= freq_in;
            
            env_N_div <= env_N_in;
            env_E_div <= env_E_in;
            env_W_div <= env_W_in;

            phase_NE_div <= phase_NE_in;
            phase_EW_div <= phase_EW_in;
            phase_WN_div <= phase_WN_in;
        end
        else
            start_div <= 0;
    end

    always @(posedge clk) 
	begin
        if (done_NE & done_EW & done_WN)
        begin
            start_pair <= 1;

            sample_pair <= sample_div;
            size_pair <= size_div;
            freq_pair <= freq_div;
            
            env_N_pair <= env_N_div;
            env_E_pair <= env_E_div;
            env_W_pair <= env_W_div;

            phase_NE_pair <= phase_NE_div;
            phase_EW_pair <= phase_EW_div;
            phase_WN_pair <= phase_WN_div;
        end
        else
            start_pair <= 0;
    end

    always @(posedge clk) 
	begin
        delay_N <= delay_NE - delay_WN;
        delay_E <= delay_EW - delay_NE;
        delay_W <= delay_WN - delay_EW;
    end

    always @(posedge clk) 
	begin
        sample_N <= delay_N[15:10];
        sample_E <= delay_E[15:10];
        sample_W <= delay_W[15:10];
    end

  end
    
endgenerate

endmodule
