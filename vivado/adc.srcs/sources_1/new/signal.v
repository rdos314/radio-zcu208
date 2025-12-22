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


module det_signal(
    input wire clk,
    input wire reset,

    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire active,
    input wire [143:0] data,
    
    output reg [31:0] signal_sample,
    output reg [8:0] signal_size,
    output reg [19:0] signal_freq,
    output reg [15:0] signal_env_N,
    output reg [15:0] signal_env_E,
    output reg [15:0] signal_env_W,
    output reg [19:0] signal_phase_NE,
    output reg [19:0] signal_phase_NW,
    output reg [19:0] signal_phase_EW,
    output reg signal_done
    );
  
  wire [39:0] config_data_adr_in;
  assign config_data_adr_in[7:0] = config_adr;
  assign config_data_adr_in[39:8] = config_data;

  wire [39:0] config_data_adr_out;
  wire [7:0] cfg_adr = config_data_adr_out[7:0];
  wire [31:0] cfg_data = config_data_adr_out[39:8];
  reg cfg_rd;
  wire cfg_empty;

  reg [16:0] min_env;
  reg [19:0] min_freq;
  reg [19:0] max_freq;
  reg [12:0] max_doa_diff;
  reg [8:0] min_samples;

  reg [16:0] env_N;
  reg [19:0] phase_N;
  reg [19:0] prev_phase_N;
  reg [16:0] diff_env_N;
  reg [19:0] diff_phase_N;
  reg [20:0] dsp_phase_N;
  wire [47:0] dsp_sum_N;
  reg [23:0] env_sum_N;
  reg [31:0] div_env_sum_N;
  wire valid_env_N;
  wire [39:0] div_env_N;
  wire [15:0] avg_env_N = div_env_N[31:16];

  reg [16:0] env_E;
  reg [19:0] phase_E;
  reg [19:0] prev_phase_E;
  reg [16:0] diff_env_E;
  reg [19:0] diff_phase_E;
  reg [20:0] dsp_phase_E;
  wire [47:0] dsp_sum_E;
  reg [23:0] env_sum_E;
  reg [31:0] div_env_sum_E;
  wire valid_env_E;
  wire [39:0] div_env_E;
  wire [15:0] avg_env_E = div_env_E[31:16];

  reg [16:0] env_W;
  reg [19:0] phase_W;
  reg [19:0] prev_phase_W;
  reg [16:0] diff_env_W;
  reg [19:0] diff_phase_W;
  reg [20:0] dsp_phase_W;
  wire [47:0] dsp_sum_W;
  reg [23:0] env_sum_W;
  reg [31:0] div_env_sum_W;
  wire valid_env_W;
  wire [39:0] div_env_W;
  wire [15:0] avg_env_W = div_env_W[31:16];

  reg [15:0] div_sample_count;

  reg [31:0] div_env_NE;
  reg [31:0] div_env_all;
     
  reg [25:0] div_lo_freq_sum;
  reg [23:0] div_hi_freq_sum;
  wire [47:0] div_freq_sum = {div_hi_freq_sum, div_lo_freq_sum[23:0]};

  wire div_valid_freq;
  wire [79:0] div_freq_out;
  wire [19:0] freq = div_freq_out[51:32];
  reg [20:0] min_freq_diff;
  reg [20:0] max_freq_diff;
  
  reg [12:0] err_NE;
  reg [12:0] diff_err_NE;
  
  reg [12:0] err_NW;
  reg [12:0] diff_err_NW;

  reg [12:0] err_EW;
  reg [12:0] diff_err_EW;

  reg [3:0] div_delay;
  reg [5:0] div_counter;
  reg div_start;
    
  reg [19:0] dsp_phase_NE;
  reg [17:0] env_NE;
  wire [47:0] dsp_sum_NE;
  reg [47:0] div_phase_sum_NE;
  reg [31:0] div_env_sum_NE;
  wire valid_phase_NE;
  wire [79:0] div_phase_NE;
  wire [19:0] phase_NE = div_phase_NE[51:32];

  reg [19:0] dsp_phase_NW;
  reg [17:0] env_NW;
  wire [47:0] dsp_sum_NW;
  reg [47:0] div_phase_sum_NW;
  reg [31:0] div_env_sum_NW;
  wire valid_phase_NW;
  wire [79:0] div_phase_NW;
  wire [19:0] phase_NW = div_phase_NW[51:32];

  reg [19:0] dsp_phase_EW;
  reg [17:0] env_EW;
  wire [47:0] dsp_sum_EW;
  reg [47:0] div_phase_sum_EW;
  reg [31:0] div_env_sum_EW;
  wire valid_phase_EW;
  wire [79:0] div_phase_EW;
  wire [19:0] phase_EW = div_phase_EW[51:32];

  reg [31:0] sample_counter;
  reg [31:0] start_sample;
  reg [8:0] sample_count;
  reg sample_count_ok;
  
  reg run[3:0];
  reg valid_env;
  reg valid_err;
  reg valid_count;
  reg err_ov;
  reg accept_new_burst;
  reg has_signal;
  reg acc_reset;
  reg [1:0] err_count;
  reg start_proc;
  reg proc_signal;
  reg proc_done;

dsp_incr_env dsp_incr_env_N (
  .CLK(clk),           // input wire CLK
  .A(dsp_phase_N),     // input wire [20 : 0] A
  .B(env_N),           // input wire [16 : 0] B
  .P(dsp_sum_N),       // output wire [47 : 0] P
  .SCLRP(acc_reset)    // input wire SCLRP
);

dsp_incr_env dsp_incr_env_E (
  .CLK(clk),           // input wire CLK
  .A(dsp_phase_E),     // input wire [20 : 0] A
  .B(env_E),           // input wire [16 : 0] B
  .P(dsp_sum_E),       // output wire [47 : 0] P
  .SCLRP(acc_reset)    // input wire SCLRP
);

dsp_incr_env dsp_incr_env_W (
  .CLK(clk),           // input wire CLK
  .A(dsp_phase_W),     // input wire [20 : 0] A
  .B(env_W),           // input wire [16 : 0] B
  .P(dsp_sum_W),       // output wire [47 : 0] P
  .SCLRP(acc_reset)    // input wire SCLRP
);

dsp_phase_env dsp_phase_env_NE (
  .CLK(clk),           // input wire CLK
  .A(dsp_phase_NE),    // input wire [19 : 0] A
  .B(env_NE),          // input wire [17 : 0] B
  .P(dsp_sum_NE),      // output wire [47 : 0] P
  .SCLRP(acc_reset)    // input wire SCLRP
);

dsp_phase_env dsp_phase_env_NW (
  .CLK(clk),           // input wire CLK
  .A(dsp_phase_NW),    // input wire [19 : 0] A
  .B(env_NW),          // input wire [17 : 0] B
  .P(dsp_sum_NW),      // output wire [47 : 0] P
  .SCLRP(acc_reset)    // input wire SCLRP
);

dsp_phase_env dsp_phase_env_EW (
  .CLK(clk),           // input wire CLK
  .A(dsp_phase_EW),    // input wire [19 : 0] A
  .B(env_EW),          // input wire [17 : 0] B
  .P(dsp_sum_EW),      // output wire [47 : 0] P
  .SCLRP(acc_reset)    // input wire SCLRP
);

div_weighted div_incr_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_env_all),               // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_freq_sum),             // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(div_valid_freq),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_freq_out)                  // output wire [79 : 0] m_axis_dout_tdata
);

div_weighted div_phase_NE_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_env_sum_NE),            // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_phase_sum_NE),         // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_phase_NE),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_phase_NE)                  // output wire [79 : 0] m_axis_dout_tdata
);

div_weighted div_phase_NW_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_env_sum_NW),            // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_phase_sum_NW),         // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_phase_NW),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_phase_NW)                  // output wire [79 : 0] m_axis_dout_tdata
);

div_weighted div_phase_EW_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_env_sum_EW),            // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_phase_sum_EW),         // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_phase_EW),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_phase_EW)                  // output wire [79 : 0] m_axis_dout_tdata
);

div_env div_env_N_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_sample_count),          // input wire [15 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_env_sum_N),            // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_env_N),                 // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_env_N)                     // output wire [39 : 0] m_axis_dout_tdata
);

div_env div_env_E_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_sample_count),          // input wire [15 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_env_sum_E),            // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_env_E),                 // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_env_E)                     // output wire [39 : 0] m_axis_dout_tdata
);

div_env div_env_W_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(div_sample_count),          // input wire [15 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(div_env_sum_W),            // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_env_W),                 // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_env_W)                     // output wire [39 : 0] m_axis_dout_tdata
);

	ila_3 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(active),              // input wire [0:0]  probe3
		.probe1(env_sum_N),           // input wire [23:0]  probe3
		.probe2(env_sum_E),           // input wire [23:0]  probe3
		.probe3(env_sum_W),           // input wire [23:0]  probe3
		.probe4(freq),                // input wire [19:0]  probe3
		.probe5(div_env_sum_N),      // input wire [31:0]  probe3
		.probe6(div_env_sum_E),      // input wire [31:0]  probe3
		.probe7(div_env_sum_W),      // input wire [31:0]  probe3
		.probe8(valid_env_N),        // input wire [0:0]  probe3
		.probe9(valid_env_E),        // input wire [0:0]  probe3
		.probe10(valid_env_W),        // input wire [0:0]  probe3
		.probe11(avg_env_N),          // input wire [15:0]  probe3
		.probe12(avg_env_E),          // input wire [15:0]  probe3
		.probe13(avg_env_W),          // input wire [15:0]  probe3
		.probe14(has_signal),         // input wire [0:0]  probe3
		.probe15(valid_env),          // input wire [0:0]  probe3
		.probe16(valid_err),          // input wire [0:0]  probe3
		.probe17(err_count),          // input wire [1:0]  probe3
		.probe18(sample_count),       // input wire [8:0]  probe3
		.probe19(sample_count_ok),    // input wire [0:0]  probe3
		.probe20(accept_new_burst),   // input wire [0:0]  probe3
		.probe21(acc_reset),          // input wire [0:0]  probe3
		.probe22(start_proc),         // input wire [0:0]  probe3
		.probe23(proc_signal),        // input wire [0:0]  probe3
		.probe24(div_start),          // input wire [0:0]  probe3
		.probe25(div_delay),          // input wire [3:0]  probe3
		.probe26(div_counter),        // input wire [5:0]  probe3
		.probe27(min_freq),           // input wire [19:0]  probe3
		.probe28(max_freq),           // input wire [19:0]  probe3
		.probe29(min_freq_diff),      // input wire [20:0]  probe3
		.probe30(max_freq_diff),      // input wire [20:0]  probe3
		.probe31(div_counter),        // input wire [5:0]  probe3
		.probe32(proc_done),          // input wire [0:0]  probe3
		.probe33(signal_done)         // input wire [0:0]  probe3
	);

generate
  begin : det_signal

    always @(posedge clk) 
	begin
        if (config_wr)
        begin
            case (config_adr)
                0 : min_env <= config_data[15:0];
                1 : min_freq <= config_data[19:0];
                2 : max_freq <= config_data[19:0];
                3 : max_doa_diff <= config_data[11:0];
                4 : min_samples <= config_data[8:0] - 1;
            endcase            
        end
    end

    always @(posedge clk) 
	begin
        if (active)
        begin
            run[0] <= 1;

            env_N[15:0] <= data[15:0];
            env_N[16] <= 0;
            phase_N <= data[35:16];

            env_E[15:0] <= data[51:36];
            env_E[16] <= 0;
            phase_E <= data[71:52];

            env_W[15:0] <= data[87:72];
            env_W[16] <= 0;
            phase_W <= data[107:88];
            
            err_NE[11:0] <= data[119:108];
            err_NE[12] <= 0;
            err_NW[11:0] <= data[131:120];
            err_NW[12] <= 0;
            err_EW[11:0] <= data[143:132];            
            err_EW[12] <= 0;
        end
        else
            run[0] <= 0;
	end

    always @(posedge clk) 
	begin
        if (run[0])
        begin
            run[1] <= 1;

            prev_phase_N <= phase_N;
            prev_phase_E <= phase_E;
            prev_phase_W <= phase_W;

            diff_env_N <= min_env - env_N;
            diff_env_E <= min_env - env_E;
            diff_env_W <= min_env - env_W;
            
            diff_err_NE <= err_NE - max_doa_diff;
            diff_err_NW <= err_NW - max_doa_diff;
            diff_err_EW <= err_EW - max_doa_diff;
        end
        else
            run[1] <= 0;
    end

    always @(posedge clk) 
	begin
        if (run[1])
        begin
            run[2] <= 1;

            valid_env <= diff_env_N[16] & diff_env_E[16] & diff_env_W[16];
            valid_err <= diff_err_NE[12] & diff_err_NW[12] & diff_err_EW[12];

            if (sample_count == 9'b111110000)
                valid_count <= 0;
            else   
                valid_count <= 1;

            if (err_count == 2'b11)
                err_ov <= 1;
            else
                err_ov <= 0;
                        
            diff_phase_N <= phase_N - prev_phase_N;
            diff_phase_E <= phase_E - prev_phase_E;
            diff_phase_W <= phase_W - prev_phase_W;
        end
        else
            run[2] <= 0;
	end


    always @(posedge clk) 
	begin
        if (run[2])
            sample_counter <= sample_counter + 1;
        else
            sample_counter <= 0;
    end

    always @(posedge clk) 
	begin
        if (run[2])
        begin
            if (valid_env & valid_err & valid_count & accept_new_burst)
            begin
                err_count <= 0;
                start_proc <= 0;

                if (has_signal)
                    acc_reset <= 0;
                else   
                begin
                    has_signal <= 1;
                    start_sample <= sample_counter;
                    acc_reset <= 1;
                end
            end
            else
            begin
                if (has_signal)
                begin
                    if (err_ov | !valid_count)
                    begin
                        has_signal <= 0;
                        if (sample_count_ok)
                            start_proc <= 1;
                    end
                    else
                    begin
                        start_proc <= 0;
                        err_count <= err_count + 1;
                        acc_reset <= 0;
                    end
                end
                else
                    start_proc <= 0;
            end
        end
        else
        begin
            acc_reset <= 0;
            err_count <= 0;
            has_signal <= 0;
            start_proc <= 0;
        end
	end

    always @(posedge clk) 
	begin
        if (proc_done)
            proc_signal <= 0;
        else
        begin
            if (start_proc)
                proc_signal <= 1;
        end
    end

    always @(posedge clk) 
	begin
        if (has_signal)
        begin
            if (acc_reset)
            begin
                env_sum_N <= {7'b0000000, env_N};
                env_sum_E <= {7'b0000000, env_E};
				env_sum_W <= {7'b0000000, env_W};
            end
            else
            begin
                env_sum_N <= env_sum_N + {7'b0000000, env_N};
                env_sum_E <= env_sum_E + {7'b0000000, env_E};
                env_sum_W <= env_sum_W + {7'b0000000, env_W};
            end

            sample_count <= sample_count + 1;

            if (sample_count == min_samples)
                sample_count_ok <= 1;
        end
        else
        begin
			if (sample_count)
                div_sample_count <= {7'b0000000, sample_count};
			
            sample_count <= 0;
            sample_count_ok <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (has_signal)
        begin
            dsp_phase_N <= {1'b0, diff_phase_N};
            dsp_phase_E <= {1'b0, diff_phase_E};
            dsp_phase_W <= {1'b0, diff_phase_W};
        end
        else
        begin
            dsp_phase_N <= 0;
            dsp_phase_E <= 0;
            dsp_phase_W <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (has_signal)
        begin
            dsp_phase_NE <= phase_N - phase_E;
            dsp_phase_NW <= phase_N - phase_W;
            dsp_phase_EW <= phase_E - phase_W;
        end
        else
        begin
            dsp_phase_NE <= 0;
            dsp_phase_NW <= 0;
            dsp_phase_EW <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (has_signal)
        begin
            env_NE <= {1'b0, env_N} + {1'b0, env_E};
            env_NW <= {1'b0, env_N} + {1'b0, env_W};
            env_EW <= {1'b0, env_E} + {1'b0, env_W};
        end
        else
        begin
            env_NE <= 0;
            env_NW <= 0;
            env_EW <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (proc_signal)
        begin
            case (div_delay)
				4'b0000:
                    begin
                        signal_sample <= start_sample;
                        signal_size <= sample_count;
                        
                        div_env_sum_N <= {8'b00000000, env_sum_N};
                        div_env_sum_E <= {8'b00000000, env_sum_E};
                        div_env_sum_W <= {8'b00000000, env_sum_W};

                        div_env_NE <= {8'b00000000, env_sum_N} + {8'b00000000, env_sum_E};
                        div_env_all <= {8'b00000000, env_sum_W};

                        div_env_sum_NE <= {8'b00000000, env_sum_N} + {8'b00000000, env_sum_E};
                        div_env_sum_NW <= {8'b00000000, env_sum_N} + {8'b00000000, env_sum_W};
                        div_env_sum_EW <= {8'b00000000, env_sum_E} + {8'b00000000, env_sum_W};

                        div_start <= 0;
                        div_delay <= div_delay + 1;
						accept_new_burst <= 0;
					end

                4'b0100:
                    begin
                        div_env_all <= div_env_all + div_env_NE;

						div_phase_sum_NE <= dsp_sum_NE;
						div_phase_sum_NW <= dsp_sum_NW;
						div_phase_sum_EW <= dsp_sum_EW;
                        
                        div_lo_freq_sum <= {2'b00, dsp_sum_N[23:0]} + {2'b00, dsp_sum_E[23:0]};
                        div_hi_freq_sum <= dsp_sum_N[47:24] + dsp_sum_E[47:24];
                        div_start <= 0;
                        div_delay <= div_delay + 1;
                    end
                    
                4'b0101:
                    begin
                        div_lo_freq_sum <= div_lo_freq_sum + {2'b00, dsp_sum_W[23:0]};
                        div_hi_freq_sum <= div_hi_freq_sum + dsp_sum_W[47:24];
						accept_new_burst <= 1;
                        div_start <= 0;
                        div_delay <= div_delay + 1;
                    end
                    
                4'b0110:
                    begin
                        div_hi_freq_sum <= div_hi_freq_sum + {22'b0000000000000000000000, div_lo_freq_sum[25:24]};
                        div_start <= 0;
                        div_delay <= div_delay + 1;
                    end
                    				
                4'b0111: 
                    begin
                        div_start <= 1;
                        div_delay <= div_delay + 1;
                    end
                
                4'b1000:
                    begin
                        div_start <= 0;

                        if (div_counter != 63)
                            div_counter <= div_counter + 1;
                    end
                
                default:
                    begin
                        div_start <= 0;
                        div_counter <= 0;
                        div_delay <= div_delay + 1;
                    end
            endcase            
        end
        else
        begin
            div_start <= 0;
            div_counter <= 0;
            div_delay <= 0;
			accept_new_burst <= 1;
        end
    end

    always @(posedge clk) 
	begin
        case (div_counter)
            0:  
                begin
                    proc_done <= 0;
                    signal_done <= 0;
                end
            
            62:
                begin
                    min_freq_diff <= {1'b0, freq} - {1'b0, min_freq};
                    max_freq_diff <= {1'b0, freq} - {1'b0, max_freq};
                end

            63: 
                begin
                    if (!min_freq_diff[20] & max_freq_diff[20])
                    begin
                        signal_freq <= freq;
                        signal_env_N <= avg_env_N;
                        signal_env_E <= avg_env_E;
                        signal_env_W <= avg_env_W;
                        signal_phase_NE <= phase_NE;
                        signal_phase_NW <= phase_NW;
                        signal_phase_EW <= phase_EW;
                        signal_done <= 1;
                    end
                    proc_done <= 1;
                end
        endcase
    end

  end
    
endgenerate

endmodule
