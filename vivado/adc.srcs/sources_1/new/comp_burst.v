`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 14:06:36
// Design Name: 
// Module Name: comp_env_phase
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

module comp_burst(
    input wire clk,
    input wire reset,
    input wire [15:0] min_env,

	input wire burst,
	input wire [61:0] in_sample,
	input wire [19:0] in_freq,
	input wire [15:0] in_angle,

    input wire wr_data,    
    input wire [15:0] in_env_0, 
    input wire [15:0] in_env_1, 
    input wire [15:0] in_env_2,  
    input wire [15:0] in_env_3,  
  
    input wire [19:0] in_phase_0,
    input wire [19:0] in_phase_1,
    input wire [19:0] in_phase_2,
    input wire [19:0] in_phase_3,
    
    output reg err_no_data,
	output reg done,
	output reg [63:0] sample,
	output reg [19:0] freq,
	output reg [15:0] angle,
	output reg [10:0] size,
	output reg [10:0] max_pos,
	output reg [15:0] max_env
);
    
    reg [63:0] env_in;
    reg [79:0] phase_in;
    reg mem_wr;
    reg scan_start;

    reg [63:0] mem_env_up [0:511];
    reg [63:0] mem_env_down [0:511];
    reg [79:0] mem_phase_up [0:511];
    reg [79:0] mem_phase_down [0:511];
    reg [8:0] wr_ptr;

    reg [8:0] env_up_ptr;
    reg [63:0] env_up;
    reg [10:0] env_up_adr;
    reg [10:0] env_up_ind;
    reg [15:0] env_up_val;
    wire [15:0] env_up_0 = env_up[15:0];
    wire [15:0] env_up_1 = env_up[31:16];
    wire [15:0] env_up_2 = env_up[47:32];
    wire [15:0] env_up_3 = env_up[63:48];

    reg [8:0] env_down_ptr;
    reg [63:0] env_down;
    reg [10:0] env_down_adr;
    reg [10:0] env_down_ind;
    reg [15:0] env_down_val;
    wire [15:0] env_down_0 = env_down[15:0];
    wire [15:0] env_down_1 = env_down[31:16];
    wire [15:0] env_down_2 = env_down[47:32];
    wire [15:0] env_down_3 = env_down[63:48];

    reg [8:0] phase_up_ptr;
    reg [79:0] phase_up;
    reg [10:0] phase_up_ind;
    reg [15:0] phase_up_val;
    wire [19:0] phase_up_0 = phase_up[19:0];
    wire [19:0] phase_up_1 = phase_up[39:20];
    wire [19:0] phase_up_2 = phase_up[59:40];
    wire [19:0] phase_up_3 = phase_up[79:60];

    reg [8:0] phase_down_ptr;
    reg [79:0] phase_down;
    reg [10:0] phase_down_ind;
    reg [15:0] phase_down_val;
    wire [19:0] phase_down_0 = phase_down[19:0];
    wire [19:0] phase_down_1 = phase_down[39:20];
    wire [19:0] phase_down_2 = phase_down[59:40];
    wire [19:0] phase_down_3 = phase_down[79:60];

    reg [15:0] sample_counter_0;
    reg [15:0] sample_counter_1;
    reg [15:0] sample_counter_2;
    reg [15:0] sample_counter_3;
    reg sample_ov_0;
    reg sample_ov_1;
    reg sample_ov_2;

    reg filling;
    reg complete;
    
    reg run_env_start;
    reg run_env_end;
    reg run_env;
    reg load_env;
	reg comp_env;
	reg load_env_start;
	reg inc_env_sample;

    reg [8:0] curr_size;

    reg env_has_start;
    reg [10:0] env_start_ind;
    reg [10:0] env_up_max_ind;
    reg [15:0] env_up_max_val;

    reg env_has_end;
    reg [10:0] env_end_ind;
    reg [10:0] env_down_max_ind;
    reg [15:0] env_down_max_val;

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(burst),               // input wire [0:0]  probe3
		.probe1(sample_counter_0),    // input wire [15:0]  probe3
		.probe2(scan_start),          // input wire [0:0]  probe3
		.probe3(run_env),             // input wire [0:0]  probe3
		.probe4(load_env),            // input wire [0:0]  probe3
		.probe5(comp_env),            // input wire [0:0]  probe3
		.probe6(run_env_start),       // input wire [0:0]  probe3
		.probe7(run_env_end),         // input wire [0:0]  probe3
		.probe8(env_start_ind),       // input wire [10:0]  probe3
		.probe9(env_end_ind),         // input wire [10:0]  probe3
		.probe10(env_up_max_ind),     // input wire [10:0]  probe3
		.probe11(env_down_max_ind),   // input wire [10:0]  probe3
		.probe12(env_up_max_val),     // input wire [15:0]  probe3
		.probe13(env_down_max_val),   // input wire [15:0]  probe3
		.probe14(curr_size),          // input wire [8:0]  probe3
		.probe15(env_up_ind),         // input wire [10:0]  probe3
		.probe16(env_up_val),         // input wire [15:0]  probe3
		.probe17(env_down_ind),       // input wire [10:0]  probe3
		.probe18(env_down_val),       // input wire [15:0]  probe3
		.probe19(err_no_data),        // input wire [0:0]  probe3
		.probe20(done),               // input wire [0:0]  probe3
		.probe21(sample),             // input wire [63:0]  probe3
		.probe22(freq),               // input wire [19:0]  probe3
		.probe23(angle),              // input wire [15:0]  probe3
		.probe24(size),               // input wire [10:0]  probe3
		.probe25(max_pos),            // input wire [10:0]  probe3
		.probe26(max_env)             // input wire [15:0]  probe3
	);

generate
  begin : comp_burst

    always @(posedge clk) 
    begin
        mem_wr <= wr_data;

        env_in[15:0] <= in_env_0;
        env_in[31:16] <= in_env_1;
        env_in[47:32] <= in_env_2;
        env_in[63:48] <= in_env_3;

        phase_in[19:0] <= in_phase_0;
        phase_in[39:20] <= in_phase_1;
        phase_in[59:40] <= in_phase_2;
        phase_in[79:60] <= in_phase_3;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env_up[wr_ptr] <= env_in;
    end
    
    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env_down[wr_ptr] <= env_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)    
            mem_phase_up[wr_ptr] <= phase_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)        
            mem_phase_down[wr_ptr] <= phase_in;
    end
    
    always @(posedge clk) 
    begin
        env_up <= mem_env_up[env_up_ptr];
    end

    always @(posedge clk) 
    begin
        env_down <= mem_env_down[env_down_ptr];
    end

    always @(posedge clk) 
    begin
        phase_up <= mem_phase_up[phase_up_ptr];
    end

    always @(posedge clk) 
    begin
        phase_down <= mem_phase_down[phase_down_ptr];
    end
        
    always @(posedge clk) 
    begin
        if (mem_wr)
        begin
            wr_ptr <= wr_ptr + 1;
            scan_start <= 0;
        end
        else
        begin
            if (reset)
            begin
                curr_size <= 0;
                scan_start <= 0;
            end
            else
            begin
                if (wr_ptr)
                begin
                    curr_size <= wr_ptr;
                    scan_start <= 1;
                end
                else
                    scan_start <= 0;
            end

            wr_ptr <= 0;            
        end
    end

    always @(posedge clk) 
    begin
        if (burst)
        begin
            freq <= in_freq;
            angle <= in_angle;
            filling <= 1;
        end
        else
        begin
            if (!wr_data)
                filling <= 0;
        end
    end

    always @(posedge clk) 
    begin
        load_env_start <= run_env_start;
        inc_env_sample <= load_env_start;
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            sample_counter_0 <= sample_counter_0 + 1;
            if (sample_counter_0 == 16'hFFFE)
                sample_ov_0 <= 1;
            else
                sample_ov_0 <= 0;
        end
        else
        begin
            if (burst)
            begin
                sample_counter_0[1:0] <= 0;
                sample_counter_0[15:2] <= in_sample[13:0];
            end
            else
            begin
                if (sample_counter_0 == 16'hFFFE)
                    sample_ov_0 <= 1;
                else
                    sample_ov_0 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            if (sample_ov_0)
                sample_counter_1 <= sample_counter_1 + 1;
            else
            begin
                if (sample_counter_1 == 16'hFFFF)
                    sample_ov_1 <= 1;
                else
                    sample_ov_1 <= 0;
            end
        end
        else
        begin
            if (burst)
                sample_counter_1[15:0] <= in_sample[29:14];
            else
            begin
                if (sample_counter_1 == 16'hFFFF)
                    sample_ov_1 <= 1;
                else
                    sample_ov_1 <= 0;
            end
        end        
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            if (sample_ov_0 & sample_ov_1)
                sample_counter_2 <= sample_counter_2 + 1;
            else
            begin
                if (sample_counter_2 == 16'hFFFF)
                    sample_ov_2 <= 1;
                else
                    sample_ov_2 <= 0;
            end
        end
        else
        begin
            if (burst)
                sample_counter_2[15:0] <= in_sample[45:30];
            else
            begin
                if (sample_counter_2 == 16'hFFFF)
                    sample_ov_2 <= 1;
                else
                    sample_ov_2 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (run_env_start & inc_env_sample)
        begin
            if (sample_ov_0 & sample_ov_1 & sample_ov_2)
                sample_counter_3 <= sample_counter_3 + 1;
        end
        else
        begin
            if (burst)
                sample_counter_3[15:0] <= in_sample[61:46];
        end
    end

    always @(posedge clk) 
    begin
        load_env <= run_env;
        comp_env <= load_env;
    end

    always @(posedge clk) 
    begin
        if (scan_start)
		begin
            run_env <= 1;
			complete <= 0;
			err_no_data <= 0;
		end
        else
        begin
            if (run_env)
            begin
                if (env_down_ind == 2)
				begin
                    run_env <= 0;
					if (run_env_end | run_env_start)
					begin
						err_no_data <= 1;
						complete <= 0;
					end
					else
					begin
						err_no_data <= 0;
						complete <= 1;
					end
				end
				else
				begin
					err_no_data <= 0;
					complete <= 0;
				end
            end
            else
			begin
				err_no_data <= 0;
				complete <= 0;
				
                if (reset)
                    run_env <= 0;
			end
        end
    end

    always @(posedge clk) 
    begin
		if (complete)
		begin
			done <= 1;
			sample[15:0] <= sample_counter_0;
			sample[31:16] <= sample_counter_1;
			sample[47:32] <= sample_counter_2;
			sample[63:48] <= sample_counter_3;
			size <= env_end_ind - env_start_ind + 1;
			max_pos <= ((env_down_max_ind + env_up_max_ind) >> 1) - env_start_ind;
			max_env <= env_up_max_val;
		end
	end

    always @(posedge clk) 
    begin
        if (load_env)
        begin
            env_up_adr <= env_up_adr + 1;

            if (env_up_adr[1:0] == 2)
                env_up_ptr <= env_up_ptr + 1;
        end
        else
        begin
            env_up_ptr <= 0;
            env_up_adr <= 0;
        end
    end

    always @(posedge clk) 
    begin
        env_up_ind <= env_up_adr;
    end

    always @(posedge clk) 
    begin
        case (env_up_adr[1:0])
            0: env_up_val <= env_up_0;
            1: env_up_val <= env_up_1;
            2: env_up_val <= env_up_2;
            3: env_up_val <= env_up_3;
        endcase
    end

    always @(posedge clk) 
    begin
        if (scan_start)
            run_env_start <= 1;
        else
        begin
            if (comp_env)
            begin
                if (env_up_val > env_up_max_val)
                begin
                    env_up_max_ind <= env_up_ind;
                    env_up_max_val <= env_up_val;
                end

                if (run_env_start)
                begin
                    if (env_up_val >= min_env)
                    begin
                        run_env_start <= 0;
                        env_start_ind <= env_up_ind;
                    end
                end            
            end
            else
                env_up_max_val <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (load_env)
        begin
            env_down_adr <= env_down_adr - 1;

            if (env_down_adr[1:0] == 1)
                env_down_ptr <= env_down_ptr - 1;
        end
        else
        begin
            env_down_ptr <= curr_size - 2;
            env_down_adr[1:0] <= 3;
            env_down_adr[10:2] <= curr_size - 2;
        end
    end

    always @(posedge clk) 
    begin
        env_down_ind <= env_down_adr;
    end

    always @(posedge clk) 
    begin
        case (env_down_adr[1:0])
            0: env_down_val <= env_down_0;
            1: env_down_val <= env_down_1;
            2: env_down_val <= env_down_2;
            3: env_down_val <= env_down_3;
        endcase
    end

    always @(posedge clk) 
    begin
        if (scan_start)
            run_env_end <= 1;
        else
        begin
            if (comp_env)
            begin
                if (env_down_val > env_down_max_val)
                begin
                    env_down_max_ind <= env_down_ind;
                    env_down_max_val <= env_down_val;
                end

                if (run_env_end)
                begin
                    if (env_down_val >= min_env)
                    begin
                        run_env_end <= 0;
                        env_end_ind <= env_down_ind;
                    end
                end            
            end
            else
                env_down_max_val <= 0;
        end
    end
    
  end
    
endgenerate

endmodule
