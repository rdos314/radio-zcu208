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
    
    output reg [23:0] signal_sample,
    output reg [8:0] signal_counter,
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
  reg [19:0] min_incr;
  reg [19:0] max_incr;
  reg [12:0] max_doa_diff;
  reg [15:0] min_samples;

  reg [16:0] env_N;
  reg [19:0] phase_N;
  reg [19:0] prev_phase_N;
  reg [16:0] diff_env_N;
  reg [19:0] diff_phase_N;
  reg [20:0] dsp_phase_N;
  wire [47:0] dsp_sum_N;
  reg [23:0] env_sum_N;

  reg [16:0] env_E;
  reg [19:0] phase_E;
  reg [19:0] prev_phase_E;
  reg [16:0] diff_env_E;
  reg [19:0] diff_phase_E;
  reg [20:0] dsp_phase_E;
  wire [47:0] dsp_sum_E;
  reg [23:0] env_sum_E;

  reg [16:0] env_W;
  reg [19:0] phase_W;
  reg [19:0] prev_phase_W;
  reg [16:0] diff_env_W;
  reg [19:0] diff_phase_W;
  reg [20:0] dsp_phase_W;
  wire [47:0] dsp_sum_W;
  reg [23:0] env_sum_W;

  reg [12:0] err_NE;
  reg [12:0] diff_err_NE;
  
  reg [12:0] err_NW;
  reg [12:0] diff_err_NW;

  reg [12:0] err_EW;
  reg [12:0] diff_err_EW;

  reg [2:0] div_delay;
  reg [5:0] div_counter;
  reg div_start;
    
  reg [19:0] dsp_phase_NE;
  reg [17:0] env_NE;
  wire [47:0] dsp_sum_NE;
  reg [31:0] env_sum_NE;
  wire valid_phase_NE;
  wire [79:0] div_phase_NE;
  wire [19:0] phase_NE = div_phase_NE[51:32];

  reg [19:0] dsp_phase_NW;
  reg [17:0] env_NW;
  wire [47:0] dsp_sum_NW;
  reg [31:0] env_sum_NW;
  wire valid_phase_NW;
  wire [79:0] div_phase_NW;
  wire [19:0] phase_NW = div_phase_NW[51:32];

  reg [19:0] dsp_phase_EW;
  reg [17:0] env_EW;
  wire [47:0] dsp_sum_EW;
  reg [31:0] env_sum_EW;
  wire valid_phase_EW;
  wire [79:0] div_phase_EW;
  wire [19:0] phase_EW = div_phase_EW[51:32];

  reg [31:0] sample_counter;
  reg [31:0] curr_signal_sample;
  reg [8:0] curr_signal_counter;
  
  reg run[3:0];
  reg valid_env;
  reg valid_err;
  reg valid_count;
  reg err_ov;
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

div_weighted div_phase_NE_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(env_sum_NE),                // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(dsp_sum_NE),               // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_phase_NE),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_phase_NE)                  // output wire [79 : 0] m_axis_dout_tdata
);

div_weighted div_phase_NW_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(env_sum_NW),                // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(dsp_sum_NW),               // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_phase_NW),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_phase_NW)                  // output wire [79 : 0] m_axis_dout_tdata
);

div_weighted div_phase_EW_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_divisor_tvalid(div_start),                // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(env_sum_EW),                // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_start),               // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(dsp_sum_EW),               // input wire [47 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid_phase_EW),              // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(div_phase_EW)                  // output wire [79 : 0] m_axis_dout_tdata
);

	ila_3 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(active),              // input wire [0:0]  probe3
		.probe1(env_sum_N),           // input wire [23:0]  probe3
		.probe2(env_sum_E),           // input wire [23:0]  probe3
		.probe3(env_sum_W),           // input wire [23:0]  probe3
		.probe4(env_NE),              // input wire [17:0]  probe3
		.probe5(dsp_phase_NE),        // input wire [19:0]  probe3
		.probe6(dsp_sum_NE),          // input wire [47:0]  probe3
		.probe7(env_sum_NE),          // input wire [31:0]  probe3
		.probe8(phase_NE),            // input wire [19:0]  probe3
		.probe9(valid_phase_NE),      // input wire [0:0]  probe3
		.probe10(dsp_phase_NW),       // input wire [19:0]  probe3
		.probe11(dsp_sum_NW),         // input wire [47:0]  probe3
		.probe12(env_sum_NW),         // input wire [31:0]  probe3
		.probe13(phase_NW),           // input wire [19:0]  probe3
		.probe14(valid_phase_NW),     // input wire [0:0]  probe3
		.probe15(dsp_phase_EW),       // input wire [19:0]  probe3
		.probe16(dsp_sum_EW),         // input wire [47:0]  probe3
		.probe17(env_sum_EW),         // input wire [31:0]  probe3
		.probe18(phase_EW),           // input wire [19:0]  probe3
		.probe19(valid_phase_EW),     // input wire [0:0]  probe3
		.probe20(start_proc),         // input wire [0:0]  probe3
		.probe21(proc_signal),        // input wire [0:0]  probe3
		.probe22(div_start),          // input wire [0:0]  probe3
		.probe23(div_delay),          // input wire [2:0]  probe3
		.probe24(div_counter),        // input wire [5:0]  probe3
		.probe25(proc_done),          // input wire [0:0]  probe3
		.probe26(signal_done)         // input wire [0:0]  probe3
	);

generate
  begin : det_signal

    always @(posedge clk) 
	begin
        if (config_wr)
        begin
            case (config_adr)
                0 : min_env <= config_data[15:0];
                1 : min_incr <= config_data[19:0];
                2 : max_incr <= config_data[19:0];
                3 : max_doa_diff <= config_data[11:0];
                4 : min_samples <= config_data[15:0];
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

            if (signal_counter == 9'b111110000)
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
            if (valid_env & valid_err & valid_count)
            begin
                err_count <= 0;
                start_proc <= 0;

                if (has_signal)
                    acc_reset <= 0;
                else   
                begin
                    has_signal <= 1;
                    curr_signal_sample <= sample_counter;
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

            curr_signal_counter <= curr_signal_counter + 1;
        end
        else
            curr_signal_counter <= 0;
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
				3'b000:
                    begin
                        env_sum_NE <= {8'b00000000, env_sum_N} + {8'b00000000, env_sum_E};
                        env_sum_NW <= {8'b00000000, env_sum_N} + {8'b00000000, env_sum_W};
                        env_sum_EW <= {8'b00000000, env_sum_E} + {8'b00000000, env_sum_W};
                        div_start <= 0;
                        div_delay <= div_delay + 1;
					end
				
                3'b101: 
                    begin
                        div_start <= 1;
                        div_delay <= div_delay + 1;
                    end
                
                3'b110: div_start <= 0;
                
                default:
                    begin
                        div_start <= 0;
                        div_delay <= div_delay + 1;
                    end
            endcase            
        end
        else
        begin
            div_start <= 0;
            div_delay <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (proc_signal)
        begin
            case (div_delay)
                3'b101: 
                    begin
                        div_counter <= 0;
                        proc_done <= 0;
                    end
                
                3'b110: 
                    begin
                        if (div_counter == 63)
                            proc_done <= 1;
                        else
                        begin
                            proc_done <= 0;
                            div_counter <= div_counter + 1;
                        end
                    end
                
                default:
                    begin
                        div_counter <= 0;
                        proc_done <= 0;
                    end
            endcase            
        end
        else
        begin
            div_counter <= 0;
            proc_done <= 0;
        end
    end

  end
    
endgenerate

endmodule
