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
    output reg [9:0] signal_counter,
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
  reg [15:0] lo_env_sum_N;
  wire [16:0] env_sum_N = lo_env_sum_N + env_N;
  reg carry_env_sum_N;
  reg [15:0] hi_env_sum_N;

  reg [16:0] env_E;
  reg [19:0] phase_E;
  reg [19:0] prev_phase_E;
  reg [16:0] diff_env_E;
  reg [19:0] diff_phase_E;
  reg [15:0] lo_env_sum_E;
  wire [16:0] env_sum_E = lo_env_sum_E + env_E;
  reg carry_env_sum_E;
  reg [15:0] hi_env_sum_E;

  reg [16:0] env_W;
  reg [19:0] phase_W;
  reg [19:0] prev_phase_W;
  reg [16:0] diff_env_W;
  reg [19:0] diff_phase_W;
  reg [15:0] lo_env_sum_W;
  wire [16:0] env_sum_W = lo_env_sum_W + env_W;
  reg carry_env_sum_W;
  reg [15:0] hi_env_sum_W;

  reg [12:0] err_NE;
  reg [12:0] diff_err_NE;
  
  reg [12:0] err_NW;
  reg [12:0] diff_err_NW;

  reg [12:0] err_EW;
  reg [12:0] diff_err_EW;

  reg [31:0] sample_counter;
  reg [31:0] curr_signal_sample;
  reg [9:0] curr_signal_counter;
  
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
  
	ila_3 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(config_wr),           // input wire [0:0]  probe3
		.probe1(config_adr),          // input wire [7:0]  probe3
		.probe2(config_data),         // input wire [31:0]  probe3
		.probe3(active),              // input wire [0:0]  probe3
		.probe4(sample_counter),      // input wire [31:0]  probe3
		.probe5(env_N),               // input wire [16:0]  probe3
		.probe6(phase_N),             // input wire [19:0]  probe3
		.probe7(diff_env_N),          // input wire [16:0]  probe3
		.probe8(diff_phase_N),        // input wire [19:0]  probe3
		.probe9(env_E),              // input wire [16:0]  probe3
		.probe10(phase_E),            // input wire [19:0]  probe3
		.probe11(diff_env_E),         // input wire [16:0]  probe3
		.probe12(diff_phase_E),       // input wire [19:0]  probe3
		.probe13(env_W),              // input wire [16:0]  probe3
		.probe14(phase_W),            // input wire [19:0]  probe3
		.probe15(diff_env_W),         // input wire [16:0]  probe3
		.probe16(diff_phase_W),       // input wire [19:0]  probe3
		.probe17(err_NE),             // input wire [12:0]  probe3
		.probe18(err_NW),             // input wire [12:0]  probe3
		.probe19(err_EW),             // input wire [12:0]  probe3
		.probe20(diff_err_NE),        // input wire [12:0]  probe3
		.probe21(diff_err_NW),        // input wire [12:0]  probe3
		.probe22(diff_err_EW),        // input wire [12:0]  probe3
		.probe23(valid_env),          // input wire [0:0]  probe3
		.probe24(valid_err),          // input wire [0:0]  probe3
		.probe25(valid_count),        // input wire [0:0]  probe3
		.probe26(err_ov),             // input wire [0:0]  probe3
		.probe27(has_signal),         // input wire [0:0]  probe3
		.probe28(curr_signal_sample), // input wire [31:0]  probe3
		.probe29(curr_signal_counter),// input wire [9:0]  probe3
		.probe30(err_count),          // input wire [1:0]  probe3
		.probe31(acc_reset),          // input wire [0:0]  probe3
		.probe32(start_proc),         // input wire [0:0]  probe3
		.probe33(proc_signal),        // input wire [0:0]  probe3
		.probe34(proc_done),          // input wire [0:0]  probe3
		.probe35(signal_done)         // input wire [0:0]  probe3
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

            if (signal_counter == 10'b1111111111)
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
                lo_env_sum_N <= env_N;
                lo_env_sum_E <= env_E;
                lo_env_sum_W <= env_W;
                
                carry_env_sum_N <= 0;
                carry_env_sum_E <= 0;
                carry_env_sum_W <= 0;
            end
            else
            begin
                lo_env_sum_N <= env_sum_N[15:0];
                carry_env_sum_N <= env_sum_N[16];

                lo_env_sum_E <= env_sum_E[15:0];
                carry_env_sum_E <= env_sum_E[16];
                
                lo_env_sum_W <= env_sum_W[15:0];
                carry_env_sum_W <= env_sum_W[16];
            end

            curr_signal_counter <= curr_signal_counter + 1;
        end
        else
        begin
            curr_signal_counter <= 0;
            carry_env_sum_N <= 0;
            carry_env_sum_E <= 0;
            carry_env_sum_W <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (curr_signal_counter)
        begin
            hi_env_sum_N <= hi_env_sum_N + carry_env_sum_N;
            hi_env_sum_E <= hi_env_sum_E + carry_env_sum_E;
            hi_env_sum_W <= hi_env_sum_W + carry_env_sum_W;
        end
        else
        begin
            hi_env_sum_N <= 0;
            hi_env_sum_E <= 0;
            hi_env_sum_W <= 0;
        end
    end

    always @(posedge clk) 
	begin
        if (proc_signal)
        begin
            signal_sample <= curr_signal_sample;
            signal_counter <= curr_signal_counter;
            proc_done <= 1;
            signal_done <= 1;
        end
        else
        begin
            proc_done <= 1;
            signal_done <= 0;
        end
    end

  end
    
endgenerate

endmodule
