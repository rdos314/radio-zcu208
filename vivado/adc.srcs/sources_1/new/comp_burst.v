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
    
    output reg err_no_data
);
    
    reg [63:0] env_in;
    reg [79:0] phase_in;
    reg mem_wr;

    reg [63:0] mem_env_up [0:511];
    reg [63:0] mem_env_down [0:511];
    reg [79:0] mem_phase_up [0:511];
    reg [79:0] mem_phase_down [0:511];
    reg [8:0] wr_ptr;

    reg [63:0] env_up;
    reg [63:0] env_down;
    reg [79:0] phase_up;
    reg [79:0] phase_down;

    reg [8:0] env_up_ptr;
    wire [15:0] env_up_0 = env_up[15:0];
    wire [15:0] env_up_1 = env_up[31:16];
    wire [15:0] env_up_2 = env_up[47:32];
    wire [15:0] env_up_3 = env_up[63:48];

    reg [8:0] env_down_ptr;
    wire [15:0] env_down_0 = env_down[15:0];
    wire [15:0] env_down_1 = env_down[31:16];
    wire [15:0] env_down_2 = env_down[47:32];
    wire [15:0] env_down_3 = env_down[63:48];

    reg [8:0] phase_up_ptr;
    wire [19:0] phase_up_0 = phase_up[19:0];
    wire [19:0] phase_up_1 = phase_up[39:20];
    wire [19:0] phase_up_2 = phase_up[59:40];
    wire [19:0] phase_up_3 = phase_up[79:60];

    reg [8:0] phase_down_ptr;
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
    reg [19:0] freq;
    reg [15:0] angle;
    
    reg run_env_up;
    reg run_env_down;

    reg check_env_up;
    reg check_env_down;
    
    reg env_up_done;
    reg env_down_done;

    reg [8:0] curr_size;
    reg up_down_same;
    
    reg [15:0] env_up_diff_0;
    reg [15:0] env_up_diff_1;
    reg [15:0] env_up_diff_2;
    reg [15:0] env_up_diff_3;
    wire [3:0] env_up_bits = {env_up_diff_3[15], env_up_diff_2[15], env_up_diff_1[15], env_up_diff_0[15]};
    
    reg [15:0] env_down_diff_0;
    reg [15:0] env_down_diff_1;
    reg [15:0] env_down_diff_2;
    reg [15:0] env_down_diff_3;
    wire [3:0] env_down_bits = {env_down_diff_3[15], env_down_diff_2[15], env_down_diff_1[15], env_down_diff_0[15]};

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(burst),               // input wire [0:0]  probe3
		.probe1(sample_counter_0),    // input wire [15:0]  probe3
		.probe2(freq),                // input wire [19:0]  probe3
		.probe3(angle),               // input wire [15:0]  probe3
		.probe4(wr_ptr),              // input wire [8:0]  probe3
		.probe5(in_env_0),            // input wire [15:0]  probe3
		.probe6(in_env_1),            // input wire [15:0]  probe3
		.probe7(in_env_2),            // input wire [15:0]  probe3
		.probe8(in_env_3),            // input wire [15:0]  probe3
		.probe9(filling),             // input wire [0:0]  probe3
		.probe10(run_env_up),         // input wire [0:0]  probe3
		.probe11(run_env_down),       // input wire [0:0]  probe3
		.probe12(check_env_up),       // input wire [0:0]  probe3
		.probe13(check_env_down),     // input wire [0:0]  probe3
		.probe14(env_up_done),        // input wire [0:0]  probe3
		.probe15(env_down_done),      // input wire [0:0]  probe3
		.probe16(curr_size),          // input wire [8:0]  probe3
		.probe17(up_down_same),       // input wire [0:0]  probe3
		.probe18(env_up_ptr),         // input wire [8:0]  probe3
		.probe19(env_down_ptr),       // input wire [8:0]  probe3
		.probe20(phase_up_ptr),       // input wire [8:0]  probe3
		.probe21(phase_down_ptr),     // input wire [8:0]  probe3
		.probe22(min_env),            // input wire [15:0]  probe3
		.probe23(env_up_0),           // input wire [15:0]  probe3
		.probe24(env_up_1),           // input wire [15:0]  probe3
		.probe25(env_up_2),           // input wire [15:0]  probe3
		.probe26(env_up_3),           // input wire [15:0]  probe3
		.probe27(env_down_0),         // input wire [15:0]  probe3
		.probe28(env_down_1),         // input wire [15:0]  probe3
		.probe29(env_down_2),         // input wire [15:0]  probe3
		.probe30(env_down_3),         // input wire [15:0]  probe3
		.probe31(env_up_bits),        // input wire [3:0]  probe3
		.probe32(env_down_bits),      // input wire [3:0]  probe3
		.probe33(err_no_data)         // input wire [0:0]  probe3
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
        env_down <= mem_env_down[env_down_ptr];
    end
    
    always @(posedge clk) 
    begin
        env_up <= mem_env_up[env_up_ptr];
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
        if (wr_data)
            wr_ptr <= wr_ptr + 1;
        else
        begin
            if (reset)
                curr_size <= 0;
            else
                if (wr_ptr)
                    curr_size <= wr_ptr;

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
        if (env_up_done)
        begin
            casex (env_up_bits)
                4'bxxx1: sample_counter_0[1:0] <= 0;
                4'bxx10: sample_counter_0[1:0] <= 1;
                4'bx100: sample_counter_0[1:0] <= 2;
                default: sample_counter_0[1:0] <= 3;
            endcase            
        end
    end

    always @(posedge clk) 
    begin
        if (run_env_up)
        begin
            sample_counter_0[15:2] <= sample_counter_0[15:2] + 1;
            if (sample_counter_0[15:2] == 14'h3FFE)
                sample_ov_0 <= 1;
            else
                sample_ov_0 <= 0;
        end
        else
        begin
            if (burst)
                sample_counter_0[15:2] <= in_sample[13:0];
            else
            begin
                if (sample_counter_0[15:2] == 14'h3FFE)
                    sample_ov_0 <= 1;
                else
                    sample_ov_0 <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (run_env_up)
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
        if (run_env_up)
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
        if (run_env_up)
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
        if (filling)
            run_env_up <= 1;
        else
        begin
            if (env_up_done | reset | up_down_same)
                run_env_up <= 0;
                
            if (run_env_up)
                run_env_down <= 1;
            else
            begin
                if (env_down_done | reset | up_down_same)
                    run_env_down <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (check_env_up)
            env_up_ptr <= env_up_ptr + 1;
        else
            env_up_ptr <= 0;
    end

    always @(posedge clk) 
    begin
		if (check_env_down)
			env_down_ptr <= env_down_ptr - 1;
		else
			env_down_ptr <= curr_size;
    end

    always @(posedge clk) 
    begin
        if (check_env_down)
        begin
            if (env_up_ptr == env_down_ptr)
                up_down_same <= 1;            
            else
                up_down_same <= 0;
        end
        else
            up_down_same <= 0;
    end

    always @(posedge clk) 
    begin
        if (reset)
            err_no_data <= 0;
        else
        begin
            if (err_no_data)
                err_no_data <= 0;
            else
                err_no_data <= up_down_same;
        end
    end

    always @(posedge clk) 
    begin
        env_up_diff_0 <= min_env - env_up_0;
        env_up_diff_1 <= min_env - env_up_1;
        env_up_diff_2 <= min_env - env_up_2;
        env_up_diff_3 <= min_env - env_up_3;
    end

    always @(posedge clk) 
    begin
        env_down_diff_0 <= min_env - env_down_0;
        env_down_diff_1 <= min_env - env_down_1;
        env_down_diff_2 <= min_env - env_down_2;
        env_down_diff_3 <= min_env - env_down_3;
    end

    always @(posedge clk) 
    begin
        check_env_up <= run_env_up;
        check_env_down <= run_env_down;
    end

    always @(posedge clk) 
    begin
        if (check_env_up)
        begin
            if (env_up_bits)
                env_up_done <= 1;
            else
                env_up_done <= 0;
        end
        else 
            env_up_done <= 0;
    end

    always @(posedge clk) 
    begin
        if (check_env_down)
        begin
            if (env_down_bits)
                env_down_done <= 1;
            else
                env_down_done <= 0;
        end
        else 
            env_down_done <= 0;
    end

    
  end
    
endgenerate

endmodule
