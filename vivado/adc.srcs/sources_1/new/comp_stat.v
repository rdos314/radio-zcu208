`timescale 1ns / 1ps
//------------------------------------------------------------------------------
// Module: one_to_four
//
// Description:
// -----------
//
//------------------------------------------------------------------------------
// Author:      Leif Ekblad
//------------------------------------------------------------------------------

module comp_stat(
    input wire clk,
    input wire reset,
    
    input wire wr,
    input wire [19:0] freq,
    input wire [10:0] size,
    input wire [10:0] max_pos,
    input wire [15:0] env_0,
    input wire [15:0] env_1,
    input wire [15:0] env_2,
    input wire [15:0] env_3,
    input wire [19:0] phase_0,
    input wire [19:0] phase_1,
    input wire [19:0] phase_2,
    input wire [19:0] phase_3,

    output reg active,
    output reg [10:0] pos,
    output reg [15:0] env,
    output reg [15:0] phase,
    
    output reg done,
    output reg [31:0] env_sum,
    output reg [47:0] env_sum2,
    output reg [31:0] phase_sum,
    output reg [47:0] phase_sum2
);
    
    (* ram_style = "block" *) reg [63:0] mem_env [0:511];
    (* ram_style = "block" *) reg [79:0] mem_phase [0:511];
    reg mem_wr;
    reg [8:0] wr_ptr;
    reg [63:0] env_in;
    reg [79:0] phase_in;
    
    reg [8:0] rd_ptr;
    reg [63:0] env_out;
    reg [79:0] phase_out;

    reg filling;
    reg active_1;
    
    reg proc_up;
    reg start_up;
    reg stop_up;
    reg [10:0] up_count;
    reg [2:0] up_delay;
    
    reg proc_down;
    reg start_down;
    reg stop_down;
    reg [10:0] down_count;
    reg [2:0] down_delay;

	ila_2 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(wr),                  // input wire [0:0]  probe3
		.probe1(freq),                // input wire [19:0]  probe3
		.probe2(size),                // input wire [10:0]  probe3
		.probe3(max_pos),             // input wire [10:0]  probe3
		.probe4(mem_wr),              // input wire [0:0]  probe3
		.probe5(wr_ptr),              // input wire [8:0]  probe3
		.probe6(rd_ptr),              // input wire [8:0]  probe3
		.probe7(proc_up),             // input wire [0:0]  probe3
		.probe8(start_up),            // input wire [0:0]  probe3
		.probe9(up_count),            // input wire [10:0]  probe3
		.probe10(up_delay),           // input wire [2:0]  probe3
		.probe11(env_0),              // input wire [15:0]  probe3
		.probe12(env_1),              // input wire [15:0]  probe3
		.probe13(env_2),              // input wire [15:0]  probe3
		.probe14(env_3),              // input wire [15:0]  probe3
		.probe15(phase_0),            // input wire [19:0]  probe3
		.probe16(phase_1),            // input wire [19:0]  probe3
		.probe17(phase_2),            // input wire [19:0]  probe3
		.probe18(phase_3)             // input wire [19:0]  probe3
	);
    
generate
  begin : comp_stat

    always @(posedge clk) 
    begin
        mem_wr <= wr;

        env_in[15:0] <= env_0;
        env_in[31:16] <= env_1;
        env_in[47:32] <= env_2;
        env_in[63:48] <= env_3;

        phase_in[19:0] <= phase_0;
        phase_in[39:20] <= phase_1;
        phase_in[59:40] <= phase_2;
        phase_in[79:60] <= phase_3;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env[wr_ptr] <= env_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_phase[wr_ptr] <= phase_in;
    end

    always @(posedge clk) 
    begin
        env_out <= mem_env[rd_ptr];
    end

    always @(posedge clk) 
    begin
        phase_out <= mem_phase[rd_ptr];
    end

    always @(posedge clk) 
    begin
        if (reset)
        begin
            filling <= 0;
            proc_up <= 0;
            start_up <= 0;
            stop_up <= 0;
        end
        else
        begin
            if (wr)
                filling <= 1;
            else
            begin
                if (filling)
                begin
                    filling <= 0;
                    rd_ptr <= max_pos[10:2];
                    proc_up <= 1;
                    start_up <= 1;
                    up_delay <= 3;
                end
                else
                begin
                    start_up <= 0;
                    
                    if (up_delay)
                        up_delay <= up_delay - 1;

                    if (proc_up)
                    begin
                        if (up_count == 0)
                        begin
                            proc_up <= 0;
                            stop_up <= 1;
                        end
                    end
                    else
                        stop_up <= 0;
                end
            end
        end
    end

  end
    
endgenerate

endmodule
