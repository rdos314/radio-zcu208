`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module: comp_stat
// -----------------------------------------------------------------------------
// Description:
// -----------
// This module performs ordered read-out and statistical processing of envelope
// and phase samples around a detected maximum position within a burst.
//
// It is intended as a later-stage processing block in a multi-stage DSP pipeline.
// The module buffers incoming four-sample-wide data into block RAM, then reads
// the samples back in a specific order:
//
//   1) From the maximum position to the end of the burst (upwards scan)
//   2) From the maximum position down to the start of the burst (downwards scan)
//
// During read-out, the module:
// - Outputs one sample per cycle
// - Computes phase differences relative to the maximum position
// - Accumulates sums and squared sums for envelope and phase
//
// -----------------------------------------------------------------------------
// Functional Overview:
// --------------------
//
// Input buffering (fill phase):
// - Incoming data is provided as four samples per cycle.
// - Samples are written sequentially into internal BRAM.
// - The write phase continues while `wr` is asserted.
// - When `wr` deasserts, the module transitions into processing mode.
//
// Processing phase:
// - The burst is processed in two directional scans:
//
//   Upwards scan:
//   - Starts at `max_pos`
//   - Proceeds toward the end of the burst
//   - The phase at `max_pos` is treated as the zero-reference
//
//   Downwards scan:
//   - Starts again at `max_pos`
//   - Proceeds toward the beginning of the burst
//   - Phase prediction is inverted relative to the upwards scan
//
// - Only one sample is output per cycle during processing.
// - Internal delay pipelines align BRAM read latency, position tracking,
//   phase prediction, and output validity.
//
// -----------------------------------------------------------------------------
// Phase Processing:
// -----------------
// - Input phase is provided as an absolute phase.
// - A predicted phase is generated using the supplied frequency (`freq`).
// - Phase output is the difference between the measured phase and the predicted
//   phase, with the maximum-position sample yielding zero phase difference.
// - Phase math is performed with extended precision internally.
//
// -----------------------------------------------------------------------------
// Statistical Accumulation:
// -------------------------
// While output samples are generated, the module accumulates:
// - Envelope sum
// - Envelope squared sum
// - Phase sum
// - Phase squared sum
//
// These accumulators are intended for later computation of mean and variance.
// Division and square-root operations are not performed in this module.
//
// -----------------------------------------------------------------------------
// Outputs:
// --------
// - `active` indicates when output samples are valid.
// - `pos` provides the absolute sample position of the output sample.
// - `env` is the envelope of the current sample.
// - `phase` is the phase difference relative to the maximum position.
// - `done` indicates completion of the full up + down scan.
// - Accumulator outputs provide raw sums for downstream processing.
//
// -----------------------------------------------------------------------------
// Assumptions and Constraints:
// ----------------------------
// - `size` specifies the total number of samples in the burst.
// - `max_pos` identifies the position of the envelope maximum within the burst.
// - `size` and `max_pos` are sample indices, not four-sample word indices.
// - The burst size is expected to be bounded to the internal BRAM capacity.
// - This module assumes continuous write (`wr`) during the fill phase.
// - Zero padding is not performed.
//
// -----------------------------------------------------------------------------
// Timing Notes:
// -------------
// - BRAM reads are synchronous and require pipeline alignment.
// - Multiple internal delay lines are used to align:
//     * BRAM output
//     * Position tracking
//     * Phase prediction
//     * Output validity (`active`)
//
// -----------------------------------------------------------------------------
// Status:
// -------
// - Control flow and scan ordering implemented.
// - Phase-difference computation functional.
// - Statistical accumulation logic present but may be incomplete or subject
//   to refinement.
// - Intended as a work-in-progress processing stage.
//
// -----------------------------------------------------------------------------

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
    input wire [15:0] phase_0,
    input wire [15:0] phase_1,
    input wire [15:0] phase_2,
    input wire [15:0] phase_3,

    output reg active,
    output reg [10:0] pos,
    output reg [15:0] env,
    output reg [15:0] phase,
    
    output reg done,
    output reg [15:0] max_phase,
    output reg [31:0] env_sum,
    output reg [47:0] env_sum2,
    output reg [31:0] phase_sum,
    output reg [47:0] phase_sum2
);
    
    (* ram_style = "block" *) reg [63:0] mem_env [0:511];
    (* ram_style = "block" *) reg [63:0] mem_phase [0:511];
    reg mem_wr;
    reg [8:0] wr_ptr;
    reg [63:0] env_in;
    reg [63:0] phase_in;
    
    reg [8:0] rd_ptr;
    reg [1:0] rd_pos_1;
    reg [1:0] rd_pos;
    reg [63:0] env_out;
    reg [63:0] phase_out;

    reg [15:0] curr_env_1;
    reg [15:0] curr_env_2;
    reg [15:0] curr_phase;
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
    reg [1:0] stop_down;
	reg [10:0] down_pos;
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
		.probe6(up_delay),            // input wire [2:0]  probe3
		.probe7(up_pos),              // input wire [10:0]  probe3
		.probe8(stop_down),           // input wire [1:0]  probe3
		.probe9(down_delay),          // input wire [2:0]  probe3
		.probe10(down_pos),           // input wire [10:0]  probe3
		.probe11(curr_env_1),         // input wire [15:0]  probe3
		.probe12(curr_env_2),         // input wire [15:0]  probe3
		.probe13(curr_phase),         // input wire [15:0]  probe3
		.probe14(pred_phase),         // input wire [21:0]  probe3
		.probe15(prev_phase),         // input wire [15:0]  probe3
		.probe16(active),             // input wire [0:0]  probe3
		.probe17(pos),                // input wire [10:0]  probe3
		.probe18(env),                // input wire [15:0]  probe3
		.probe19(phase),              // input wire [15:0]  probe3
		.probe20(max_phase)           // input wire [15:0]  probe3
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

        phase_in[15:0] <= phase_0;
        phase_in[31:16] <= phase_1;
        phase_in[47:32] <= phase_2;
        phase_in[63:48] <= phase_3;
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
        begin
			down_delay[0] <= 0;
            down_pos <= 0;
        end
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
					if (down_pos)
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
                curr_phase <= phase_out[15:0];
            end
            
            1 :
            begin
                curr_env_1 <= env_out[31:16];
                curr_phase <= phase_out[31:16];
            end
            
            2 :
            begin
                curr_env_1 <= env_out[47:32];
                curr_phase <= phase_out[47:32];
            end
            
            3 :
            begin
                curr_env_1 <= env_out[63:48];
                curr_phase <= phase_out[63:48];
            end
        endcase
    end

    always @(posedge clk) 
    begin
		curr_env_2 <= curr_env_1;
	end

    always @(posedge clk) 
    begin
        if (reset)
            stop_down[0] <= 0;
        else
		begin
            if (proc_up)
            begin
				stop_down[0] <= 0;
				
                if (start_up | up_delay[0] | up_delay[1])
                    active <= 0;
                else
                    active <= 1;
            end
            else
            begin
                if (down_pos)
                begin
					stop_down[0] <= 0;
					
                    if (start_down | down_delay[0] | down_delay[1])
                        active <= 0;
                    else
                        active <= 1;
                end
                else
                begin
                    if (active)
                    begin
						if (start_down)
                            active <= 0;
                        
						if (stop_down[1])
                            active <= 0;
                        else
                            stop_down[0] <= 1;
                    end
					else
						stop_down[0] <= 0;
                end
			end
		end
	end

    always @(posedge clk) 
    begin
		stop_down[1] <= stop_down[0];
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
			if (down_pos | stop_down[0])
			begin
				if (start_down | down_delay[0] | down_delay[1])
					env <= 0;
				else
					env <= curr_env_2;
			end
			else
				env <= curr_env_2;
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
                begin
					pred_phase <= {curr_phase, 6'b00};
                    max_phase <= curr_phase;
                end
				else
					pred_phase <= pred_phase + {2'b00, freq};
			end
		end
		else
		begin
			if (down_pos | stop_down[0])
			begin
				if (start_down | down_delay[0])
					pred_phase <= 0;
				else
				begin
					if (down_delay[1])
						pred_phase <= {curr_phase, 6'b00};
					else
						pred_phase <= pred_phase - {2'b00, freq};
				end
			end
			else
				pred_phase <= pred_phase - {2'b00, freq};
		end
	end

    always @(posedge clk) 
    begin
		if (proc_up)
			pos_1 <= up_pos;
		else
            pos_1 <= down_pos;
	end

    always @(posedge clk) 
    begin
		pos <= pos_1;
	end
		
    always @(posedge clk) 
    begin
		prev_phase <= curr_phase;
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
			if (down_pos | stop_down[0])
			begin
				if (start_down | down_delay[0] | down_delay[1])
					phase <= 0;
				else
					phase <= prev_phase - pred_phase[21:6];
			end
			else
				phase <= prev_phase - pred_phase[21:6];
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
