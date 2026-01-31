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

module one_to_four(
    input wire clk,
    input wire reset,
    
    input wire wr,
    input wire [15:0] env,
    input wire [19:0] phase,
    input wire [10:0] size,
    input wire read_back,
    
    output reg active,
    output reg [15:0] env_0,
    output reg [15:0] env_1,
    output reg [15:0] env_2,
    output reg [15:0] env_3,
    output reg [19:0] phase_0,
    output reg [19:0] phase_1,
    output reg [19:0] phase_2,
    output reg [19:0] phase_3
);
    
    (* ram_style = "block" *) reg [63:0] mem_env [0:511];
    (* ram_style = "block" *) reg [79:0] mem_phase [0:511];
    reg [8:0] wr_ptr;
    reg [1:0] wr_offset;
    reg [8:0] rd_ptr;
    reg [10:0] counter;
    reg mem_wr;
    reg active_0;
    reg active_1;
    reg read_back_i;

    reg [63:0] env_in_val;
    reg [79:0] phase_in_val;

    reg [63:0] env_out_val;
    reg [79:0] phase_out_val;

/*
	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(wr),                  // input wire [0:0]  probe3
		.probe1(env),                 // input wire [15:0]  probe3
		.probe2(phase),               // input wire [19:0]  probe3
		.probe3(size),                // input wire [10:0]  probe3
		.probe4(read_back),           // input wire [0:0]  probe3
		.probe5(active),              // input wire [0:0]  probe3
		.probe6(env_0),               // input wire [15:0]  probe3
		.probe7(env_1),               // input wire [15:0]  probe3
		.probe8(env_2),               // input wire [15:0]  probe3
		.probe9(env_3),               // input wire [15:0]  probe3
		.probe10(phase_0),            // input wire [19:0]  probe3
		.probe11(phase_1),            // input wire [19:0]  probe3
		.probe12(phase_2),            // input wire [19:0]  probe3
		.probe13(phase_3),            // input wire [19:0]  probe3
		.probe14(wr_ptr),             // input wire [8:0]  probe3
		.probe15(wr_offset),          // input wire [1:0]  probe3
		.probe16(rd_ptr),             // input wire [8:0]  probe3
		.probe17(counter),            // input wire [10:0]  probe3
		.probe18(mem_wr),             // input wire [0:0]  probe3
		.probe19(active_i),           // input wire [0:0]  probe3
		.probe20(read_back_i),        // input wire [0:0]  probe3
		.probe21(env_in_val),         // input wire [63:0]  probe3
		.probe22(env_out_val)         // input wire [63:0]  probe3
	);
*/
    
generate
  begin : one_to_four

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
        read_back_i <= read_back;
        active_1 <= active_0;
        active <= active_1;
    end

    always @(posedge clk) 
    begin
        if (reset | read_back_i)
        begin  
            wr_offset <= 0;
            wr_ptr <= 0;
            mem_wr <= 0;
        end
        else 
        begin
            if (wr)
            begin
                if (mem_wr)
                    wr_ptr <= wr_ptr + 1;
                    
                wr_offset <= wr_offset + 1;
 
                case (wr_offset)
                    0: 
                    begin
                        env_in_val[15:0] <= env;
                        phase_in_val[19:0] <= phase;
                        mem_wr <= 0;
                    end

                    1: 
                    begin
                        env_in_val[31:16] <= env;
                        phase_in_val[39:20] <= phase;
                        mem_wr <= 0;
                    end

                    2: 
                    begin
                        env_in_val[47:32] <= env;
                        phase_in_val[59:40] <= phase;
                        mem_wr <= 0;
                    end

                    3: 
                    begin
                        env_in_val[63:48] <= env;
                        phase_in_val[79:60] <= phase;
                        mem_wr <= 1;                        
                    end
                endcase
            end
            else
            begin
                wr_offset <= 0;
                
                if (wr_offset)
                    mem_wr <= 1;
                else
                    mem_wr <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (reset)
            active_0 <= 0;
        else
        begin
            if (active_0)
            begin
                if (counter == 0)
                    active_0 <= 0;
            end
            else
            begin
                if (read_back_i)
                    active_0 <= 1;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (read_back_i)
            rd_ptr <= 0;
        else
        begin
            if (active_0)
                rd_ptr <= rd_ptr + 1;
        end
    end

    always @(posedge clk) 
    begin
        if (read_back_i)
            counter <= size;
        else
        begin
            if (active_0)
            begin
                if (counter[10:2])
                    counter <= counter - 4;
                else
                    counter <= 0;
            end
        end
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
        phase_0 <= phase_out_val[19:0];
        phase_1 <= phase_out_val[39:20];
        phase_2 <= phase_out_val[59:40];
        phase_3 <= phase_out_val[79:60];
    end
                    
  end
    
endgenerate

endmodule
