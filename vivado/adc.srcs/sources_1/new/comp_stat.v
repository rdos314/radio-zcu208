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
    reg [1:0] rd_pos_1;
    reg [1:0] rd_pos;
    reg [63:0] env_out;
    reg [79:0] phase_out;

    reg [15:0] curr_env_1;
    reg [15:0] curr_env_2;
    reg [19:0] curr_phase;
	reg [15:0] prev_phase;
	reg [21:0] pred_phase;

    reg filling;
    
    reg proc_up;
    reg start_up;
    reg stop_up;
	reg [10:0] up_pos;
    reg [10:0] up_count;
    reg [2:0] up_delay;
	reg [21:0] up_phase;
    
    reg start_down;
    reg stop_down;
	reg [10:0] down_pos;
    reg [10:0] down_count;
    reg [2:0] down_delay;
	reg [21:0] down_phase;
	
	reg [10:0] pos_1;

	ila_2 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(size),                // input wire [10:0]  probe3
		.probe1(max_pos),             // input wire [10:0]  probe3
		.probe2(proc_up),             // input wire [0:0]  probe3
		.probe3(start_up),            // input wire [0:0]  probe3
		.probe4(up_count),            // input wire [10:0]  probe3
		.probe5(start_down),          // input wire [0:0]  probe3
		.probe6(down_count),     	  // input wire [10:0]  probe3
		.probe7(up_delay),            // input wire [2:0]  probe3
		.probe8(up_pos),              // input wire [10:0]  probe3
		.probe9(down_delay),          // input wire [2:0]  probe3
		.probe10(down_pos),           // input wire [10:0]  probe3
		.probe11(curr_env_1),         // input wire [15:0]  probe3
		.probe12(curr_env_2),         // input wire [15:0]  probe3
		.probe13(curr_phase),         // input wire [19:0]  probe3
		.probe14(pred_phase),         // input wire [21:0]  probe3
		.probe15(prev_phase),         // input wire [15:0]  probe3
		.probe16(active),             // input wire [0:0]  probe3
		.probe17(pos),                // input wire [10:0]  probe3
		.probe18(env),                // input wire [15:0]  probe3
		.probe19(phase)               // input wire [15:0]  probe3
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
        if (mem_wr)
            wr_ptr <= wr_ptr + 1;
        else
            wr_ptr <= 0;            
    end

    always @(posedge clk) 
    begin
        if (filling)
        begin
            rd_ptr <= max_pos[10:2];
            rd_pos_1 <= max_pos[1:0];
			up_count <= size - max_pos + 2;
			start_down <= 0;
        end
        else
        begin
            if (proc_up)
            begin
				if (up_count == 0)
				begin
					start_down <= 1;
					rd_ptr <= max_pos[10:2];
					rd_pos_1 <= max_pos[1:0];
					down_count <= max_pos + 4;
				end
				else
				begin
					start_down <= 0;
					up_count <= up_count - 1;
					rd_pos_1 <= rd_pos_1 + 1;
					if (rd_pos_1 == 3)
						rd_ptr <= rd_ptr + 1;
				end
            end
            else
            begin
				start_down <= 0;
				if (down_count)
					down_count <= down_count - 1;

                rd_pos_1 <= rd_pos_1 - 1;
                if (rd_pos_1 == 0)
				begin
					if (rd_ptr)
						rd_ptr <= rd_ptr - 1;
				end
            end
        end        
    end

    always @(posedge clk) 
    begin
		if (reset)
			up_delay[0] <= 0;
		else
		begin
			if (start_up)
				up_delay[0] <= 1;
			else
			begin
				if (up_delay[0])
				begin
					up_delay[0] <= 0;
					up_pos <= max_pos;
				end
				else
				begin
					if (proc_up)
						up_pos <= up_pos + 1;
				end
			end
		end
	end

    always @(posedge clk) 
    begin
		up_delay[1] <= up_delay[0];
		up_delay[2] <= up_delay[1];
	end

    always @(posedge clk) 
    begin
		if (reset)
			down_delay[0] <= 0;
		else
		begin
			if (start_down)
				down_delay[0] <= 1;
			else
			begin
				if (down_delay[0])
				begin
					down_delay[0] <= 0;
					down_pos <= max_pos;
				end
				else
				begin
					if (down_count)
						down_pos <= down_pos - 1;
				end
			end
		end
	end

    always @(posedge clk) 
    begin
		down_delay[1] <= down_delay[0];
		down_delay[2] <= down_delay[1];
	end
								
    always @(posedge clk) 
    begin
		rd_pos <= rd_pos_1;
	end

    always @(posedge clk) 
    begin
        case (rd_pos)
            0 :
            begin
                curr_env_1 <= env_out[15:0];
                curr_phase <= phase_out[19:0];
            end
            
            1 :
            begin
                curr_env_1 <= env_out[31:16];
                curr_phase <= phase_out[39:20];
            end
            
            2 :
            begin
                curr_env_1 <= env_out[47:32];
                curr_phase <= phase_out[59:40];
            end
            
            3 :
            begin
                curr_env_1 <= env_out[63:48];
                curr_phase <= phase_out[79:60];
            end
        endcase
    end

    always @(posedge clk) 
    begin
		curr_env_2 <= curr_env_1;
	end

    always @(posedge clk) 
    begin
		if (proc_up)
		begin
			if (start_up | up_delay[0] | up_delay[1])
				active <= 0;
			else
				active <= 1;
		end
		else
		begin
			if (down_count)
			begin
				if (start_down | down_delay[0] | down_delay[1])
					active <= 0;
				else
					active <= 1;
			end
			else
				active <= 0;
		end
	end

    always @(posedge clk) 
    begin
		if (proc_up)
		begin
			if (start_up | up_delay[0] | up_delay[1] | up_delay[2])
				env <= 0;
			else
				env <= curr_env_2;
		end
		else
		begin
			if (down_count)
			begin
				if (start_down | down_delay[0] | down_delay[1])
					env <= 0;
				else
					env <= curr_env_2;
			end
			else
				env <= 0;
		end
	end

    always @(posedge clk) 
    begin
		if (proc_up)
		begin
			if (start_up | up_delay[0])
				pred_phase <= 0;
			else
			begin
				if (up_delay[1])
					pred_phase <= {curr_phase, 2'b00};
				else
					pred_phase <= pred_phase + {2'b00, freq};
			end
		end
		else
		begin
			if (down_count)
			begin
				if (start_down | down_delay[0])
					pred_phase <= 0;
				else
				begin
					if (down_delay[1])
						pred_phase <= {curr_phase, 2'b00};
					else
						pred_phase <= pred_phase - {2'b00, freq};
				end
			end
			else
				pred_phase <= 0;
		end
	end

    always @(posedge clk) 
    begin
		if (proc_up)
			pos_1 <= up_pos;
		else
		begin
			if (down_count)
				pos_1 <= down_pos;
		end
	end

    always @(posedge clk) 
    begin
		pos <= pos_1;
	end
		
    always @(posedge clk) 
    begin
		prev_phase <= curr_phase[19:4];
	end

    always @(posedge clk) 
    begin
		if (proc_up)
		begin
			if (start_up | up_delay[0] | up_delay[2])
				phase <= 0;
			else
				phase <= prev_phase - pred_phase[21:6];
		end
		else
		begin
			if (down_count)
			begin
				if (start_down | down_delay[0] | down_delay[1])
					phase <= 0;
				else
					phase <= prev_phase - pred_phase[21:6];
			end
			else
				phase <= 0;
		end
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
                    proc_up <= 1;
                    start_up <= 1;
                end
                else
                begin
                    start_up <= 0;

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
