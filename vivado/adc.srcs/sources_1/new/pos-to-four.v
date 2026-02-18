`timescale 1ns / 1ps

module pos_to_four(
    input wire clk,
    input wire reset,

	input wire run,
    input wire wr,
    input wire [10:0] pos,
    input wire [15:0] env,
    input wire [15:0] phase,
    input wire allowed,

    output reg idle,    
    output reg active,
    output reg [15:0] env_0,
    output reg [15:0] env_1,
    output reg [15:0] env_2,
    output reg [15:0] env_3,
    output reg [15:0] phase_0,
    output reg [15:0] phase_1,
    output reg [15:0] phase_2,
    output reg [15:0] phase_3
);
    
    (* ram_style = "block" *) reg [63:0] mem_env [0:511];
    (* ram_style = "block" *) reg [63:0] mem_phase [0:511];
    reg [8:0] wr_ptr;
    reg [8:0] rd_ptr;

    reg mem_wr;
    reg was_run;
    
    reg [8:0] max_ptr;
    reg [8:0] prev_ptr;
    
    reg [10:0] curr_pos;
    reg [15:0] curr_env;
    reg [15:0] curr_phase;

    reg [63:0] env_curr_val;
    reg [63:0] phase_curr_val;

    reg [63:0] env_max_val;
    reg [63:0] phase_max_val;

    reg [63:0] env_in_val;
    reg [63:0] phase_in_val;

    reg [63:0] env_out_val;
    reg [63:0] phase_out_val;

    reg req_read;
    reg active_0;
    reg [8:0] counter;

	ila_3 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(wr),                  // input wire [0:0]  probe3
		.probe1(env),                 // input wire [15:0]  probe3
		.probe2(phase),               // input wire [15:0]  probe3
		.probe3(mem_wr),              // input wire [0:0]  probe3
		.probe4(wr_ptr),              // input wire [8:0]  probe3
		.probe5(rd_ptr),              // input wire [8:0]  probe3
		.probe6(run),                 // input wire [0:0]  probe3
		.probe7(was_run),             // input wire [0:0]  probe3
		.probe8(prev_ptr),            // input wire [10:0]  probe3
		.probe9(curr_pos),            // input wire [10:0]  probe3
		.probe10(curr_env),           // input wire [15:0]  probe3
		.probe11(curr_phase),         // input wire [15:0]  probe3
		.probe12(env_curr_val),       // input wire [63:0]  probe3
		.probe13(env_max_val),        // input wire [63:0]  probe3
		.probe14(env_in_val),         // input wire [63:0]  probe3
		.probe15(req_read),           // input wire [0:0]  probe3
		.probe16(allowed),            // input wire [0:0]  probe3
		.probe17(active_0),           // input wire [0:0]  probe3
		.probe18(active),             // input wire [0:0]  probe3
		.probe19(counter),            // input wire [8:0]  probe3
		.probe20(env_0),              // input wire [15:0]  probe3
		.probe21(env_1),              // input wire [15:0]  probe3
		.probe22(env_2),              // input wire [15:0]  probe3
		.probe23(env_3),              // input wire [15:0]  probe3
		.probe24(phase_0),            // input wire [15:0]  probe3
		.probe25(phase_1),            // input wire [15:0]  probe3
		.probe26(phase_2),            // input wire [15:0]  probe3
		.probe27(phase_3)             // input wire [15:0]  probe3
	);
    
generate
  begin : pos_to_four

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env[wr_ptr] <= env_in_val;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_phase[wr_ptr] <= phase_in_val;
    end

    always @(posedge clk) 
    begin
        env_out_val <= mem_env[rd_ptr];
    end

    always @(posedge clk) 
    begin
        phase_out_val <= mem_phase[rd_ptr];
    end

    always @(posedge clk) 
    begin
        idle <= !run & !was_run & !req_read & !active_0 & !active;
    end

    always @(posedge clk) 
    begin
        if (wr)
        begin
            curr_pos <= pos;
            curr_env <= env;
			curr_phase <= phase;

            if (was_run)
                prev_ptr <= curr_pos[10:2];
            else
            begin
                max_ptr <= pos[10:2];
                prev_ptr <= pos[10:2];
            end
        end
    end

    always @(posedge clk) 
    begin
        was_run <= run;
    end

    always @(posedge clk) 
    begin
        if (run)
        begin
            if (prev_ptr == curr_pos[10:2])
                mem_wr <= 0;
            else
            begin
                wr_ptr <= prev_ptr;
                mem_wr <= 1;

                if (max_ptr == curr_pos[10:2])
                begin
                    env_in_val <= env_max_val;
                    phase_in_val <= phase_max_val;
                end
                else
                begin
                    env_in_val <= env_curr_val;
                    phase_in_val <= phase_curr_val;
                end
            end
        
            if (max_ptr == curr_pos[10:2])
            begin
                case (curr_pos[1:0])
                    0: 
                    begin
                        env_max_val[15:0] <= curr_env;
                        phase_max_val[15:0] <= curr_phase;
                    end

                    1: 
                    begin
                        env_max_val[31:16] <= curr_env;
                        phase_max_val[31:16] <= curr_phase;
                    end

                    2: 
                    begin
                        env_max_val[47:32] <= curr_env;
                        phase_max_val[47:32] <= curr_phase;
                    end

                    3: 
                    begin
                        env_max_val[63:48] <= curr_env;
                        phase_max_val[63:48] <= curr_phase;
                    end
                endcase
            end
            else
            begin
                case (curr_pos[1:0])
                    0: 
                    begin
                        env_curr_val[15:0] <= curr_env;
                        phase_curr_val[15:0] <= curr_phase;
                    end

                    1: 
                    begin
                        env_curr_val[31:16] <= curr_env;
                        phase_curr_val[31:16] <= curr_phase;
                    end

                    2: 
                    begin
                        env_curr_val[47:32] <= curr_env;
                        phase_curr_val[47:32] <= curr_phase;
                    end

                    3: 
                    begin
                        env_curr_val[63:48] <= curr_env;
                        phase_curr_val[63:48] <= curr_phase;
                    end
                endcase
            end            
        end
        else
        begin
            env_max_val <= 0;
            phase_max_val <= 0;
            env_curr_val <= 0;
            phase_curr_val <= 0;
            
            if (was_run)
            begin
                mem_wr <= 1;

                if (max_ptr == curr_pos[10:2])
                begin
                    env_in_val <= env_max_val;
                    phase_in_val <= phase_max_val;
                end
                else
                begin
                    env_in_val <= env_curr_val;
                    phase_in_val <= phase_curr_val;
                end
            end
            else
                mem_wr <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (reset | run)
        begin
            req_read <= 0;
            active_0 <= 0;
        end
        else
        begin
            if (was_run)
                req_read <= 1;
            else
            begin
                if (counter == 0)
                    active_0 <= 0;
                else
                begin
                    if (req_read & allowed)
                    begin
                        active_0 <= 1;
                        req_read <= 0;
                    end
                end
            end
        end
    end

    always @(posedge clk) 
    begin
        if (req_read)
            rd_ptr <= 0;
        else
        begin
            if (active_0)
                rd_ptr <= rd_ptr + 1;
        end
    end

    always @(posedge clk) 
    begin
        if (run | was_run)
        begin
            if (wr_ptr >= counter)
                counter <= wr_ptr + 1;
        end
        else
        begin
            if (active_0)
            begin
                if (counter)
                    counter <= counter - 1;
                else
                    counter <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        active <= active_0;
    end

    always @(posedge clk) 
    begin
        env_0 <= env_out_val[15:0];
        env_1 <= env_out_val[31:16];
        env_2 <= env_out_val[47:32];
        env_3 <= env_out_val[63:48];
    end

    always @(posedge clk) 
    begin
        phase_0 <= phase_out_val[15:0];
        phase_1 <= phase_out_val[31:16];
        phase_2 <= phase_out_val[47:32];
        phase_3 <= phase_out_val[63:48];
    end
                    
  end
    
endgenerate

endmodule
