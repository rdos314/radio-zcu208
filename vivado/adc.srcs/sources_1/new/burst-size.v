`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module: burst_size
// -----------------------------------------------------------------------------
// Description:
// -----------
// Determines burst boundaries, peak position, and extracts aligned sample data
// from a stream of envelope/phase samples.
//
// The module operates in two phases:
//
//   1) Capture Phase:
//      - Incoming samples (4 per cycle) are written into BRAM
//      - Envelope stored twice (forward + reverse traversal)
//      - Phase stored once (aligned with forward traversal)
//
//   2) Scan Phase:
//      - Forward scan  (env_up)  : finds start threshold crossing + max
//      - Reverse scan  (env_down): finds end threshold crossing + max
//
// From these, the module computes:
//      - Burst size
//      - Start index
//      - End index
//      - Peak position (center-aligned)
//      - Maximum envelope
//
// -----------------------------------------------------------------------------
// Inputs:
// -------
// clk, reset
//
// burst           : Indicates new burst metadata is available
// sample_in[61:0] : Initial sample counter value (4 × 16-bit packed)
//
// wr              : Write enable (4 samples per cycle)
//
// env_[0..3]      : Envelope samples (16-bit each)
// phase_[0..3]    : Phase samples (20-bit each)
//
// min_env         : Threshold for burst detection
//
// -----------------------------------------------------------------------------
// Outputs:
// --------
// no_data   : No valid burst detected
// done      : Result valid (1-cycle pulse)
//
// sample    : 64-bit sample counter (4 × 16-bit, accumulated)
// size      : Burst length (samples)
// max_pos   : Peak position (relative to burst start)
// max_env   : Maximum envelope value
//
// active    : Indicates valid streaming output
// env       : Current envelope sample (during scan)
// phase     : Current phase sample (aligned with env)
//
// -----------------------------------------------------------------------------
// Memory Organization:
// --------------------
// mem_env_up   : Forward scan storage (64-bit = 4 × 16-bit env)
// mem_env_down : Reverse scan storage (identical data)
// mem_phase    : Phase storage (80-bit = 4 × 20-bit)
//
// Depth: 512 entries → supports 2048 samples
//
// -----------------------------------------------------------------------------
// Operation Details:
// ------------------
//
// 1. Write Phase:
//    - Samples packed into 64-bit (env) and 80-bit (phase)
//    - Sequential write using wr_ptr
//
// 2. Scan Initialization:
//    - Triggered when write completes (wr deasserted)
//    - curr_size captures total number of stored words
//
// 3. Forward Scan (env_up):
//    - Iterates from start → end
//    - Detects:
//        * First threshold crossing → env_start_ind
//        * Maximum value → env_up_max_ind
//
// 4. Reverse Scan (env_down):
//    - Iterates from end → start
//    - Detects:
//        * Last threshold crossing → env_end_ind
//        * Maximum value → env_down_max_ind
//
// 5. Result Computation:
//    - size     = env_end_ind - env_start_ind + 1
//    - max_pos  = midpoint of forward/reverse maxima, aligned to start
//    - sample   = accumulated sample counter
//
// -----------------------------------------------------------------------------
// Timing Characteristics:
// -----------------------
// - Fully pipelined design
// - BRAM read latency: 1 cycle
// - Scan pipeline: multi-stage (load → compare → update)
//
// - No wide combinational paths:
//     → Suitable for high-frequency operation (~500 MHz)
//
// -----------------------------------------------------------------------------
// Design Notes:
// -------------
// - Dual memory (env_up / env_down) avoids address reversal logic
// - Forward + reverse scan improves robustness for asymmetric pulses
// - Sample counter uses cascaded overflow counters (64-bit)
//
// - Phase is streamed aligned with forward scan only
//
// -----------------------------------------------------------------------------
// System Role:
// ------------
// This module defines burst boundaries and alignment before:
//
//   → Statistical analysis
//   → Phase processing
//   → DMA / CPU transfer
//
// It converts raw detected bursts into well-defined, normalized segments.
//
// -----------------------------------------------------------------------------
// Status:
// -------
// - Deterministic boundary detection
// - High-throughput scan engine
// - Optimized for FPGA BRAM + pipeline architecture
// -----------------------------------------------------------------------------
module burst_size(
    input wire clk,
    input wire reset,
    input wire [15:0] min_env,

    input wire burst,
	input wire [61:0] sample_in,

    input wire wr,
    input wire [15:0] env_0,
    input wire [15:0] env_1,
    input wire [15:0] env_2,
    input wire [15:0] env_3,
    input wire [19:0] phase_0,
    input wire [19:0] phase_1,
    input wire [19:0] phase_2,
    input wire [19:0] phase_3,
    
    output reg no_data,
    output reg done,
    output reg [63:0] sample,
    output reg [10:0] size,
    output reg [10:0] max_pos,
    output reg [15:0] max_env,
    
    output reg active,
    output reg [15:0] env,
    output reg [19:0] phase
);

    (* ram_style = "block" *) reg [63:0] mem_env_up [0:511];
    (* ram_style = "block" *) reg [63:0] mem_env_down [0:511];
    (* ram_style = "block" *) reg [79:0] mem_phase [0:511];
    
    reg [8:0] wr_ptr_in;
    reg mem_wr;
    reg [63:0] env_in_data;
    reg [79:0] phase_in_data;

	reg pend_start;
    reg scan_start;
    reg complete;
    reg complete_1;

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

    reg [79:0] phase_out;
    reg [10:0] phase_ind;
    reg [19:0] phase_val;
	reg [21:0] pred_phase;
    wire [19:0] phase_out_0 = phase_out[19:0];
    wire [19:0] phase_out_1 = phase_out[39:20];
    wire [19:0] phase_out_2 = phase_out[59:40];
    wire [19:0] phase_out_3 = phase_out[79:60];

    reg [15:0] sample_counter_0;
    reg [15:0] sample_counter_1;
    reg [15:0] sample_counter_2;
    reg [15:0] sample_counter_3;
    reg sample_ov_0;
    reg sample_ov_1;
    reg sample_ov_2;
   
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

	ila_5 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(scan_start),          // input wire [0:0]  probe3
		.probe1(burst),               // input wire [0:0]  probe3
		.probe2(wr),                  // input wire [0:0]  probe3
		.probe3(no_data),             // input wire [0:0]  probe3
		.probe4(done),                // input wire [0:0]  probe3
		.probe5(sample),              // input wire [63:0]  probe3
		.probe6(size),                // input wire [10:0]  probe3
		.probe7(max_pos),             // input wire [10:0]  probe3
		.probe8(max_env),             // input wire [15:0]  probe3
		.probe9(active),              // input wire [0:0]  probe3
		.probe10(env),                // input wire [15:0]  probe3
		.probe11(phase)               // input wire [19:0]  probe3
	);

generate
  begin : burst_size

    always @(posedge clk) 
    begin
        mem_wr <= wr;

        env_in_data[15:0] <= env_0;
        env_in_data[31:16] <= env_1;
        env_in_data[47:32] <= env_2;
        env_in_data[63:48] <= env_3;
        
        phase_in_data[19:0] <= phase_0;
        phase_in_data[39:20] <= phase_1;
        phase_in_data[59:40] <= phase_2;
        phase_in_data[79:60] <= phase_3;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env_up[wr_ptr_in] <= env_in_data;
    end
    
    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_env_down[wr_ptr_in] <= env_in_data;
    end

    always @(posedge clk) 
    begin
        if (mem_wr)    
            mem_phase[wr_ptr_in] <= phase_in_data;
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
        phase_out <= mem_phase[env_up_ptr];
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
        wr_ptr_in <= wr_ptr;
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
                sample_counter_0[15:2] <= sample_in[13:0];
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
                sample_counter_1[15:0] <= sample_in[29:14];
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
                sample_counter_2[15:0] <= sample_in[45:30];
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
                sample_counter_3[15:0] <= sample_in[61:46];
        end
    end
			
    always @(posedge clk) 
    begin
        complete_1 <= complete;
        done <= complete_1;
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
			no_data <= 0;
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
						no_data <= 1;
						complete <= 0;
					end
					else
					begin
						no_data <= 0;
						complete <= 1;
					end
				end
				else
				begin
					no_data <= 0;
					complete <= 0;
				end
            end
            else
			begin
				no_data <= 0;
				complete <= 0;
				
                if (reset)
                    run_env <= 0;
			end
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
        begin
            run_env_start <= 1;
            active <= 0;
        end
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
                        active <= 1;
                        run_env_start <= 0;
                        env_start_ind <= env_up_ind;
                    end
                end            
            end
            else
            begin
                env_up_max_val <= 0;
                active <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        env <= env_up_val;
        phase <= phase_val;
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

    always @(posedge clk) 
    begin
        case (env_up_adr[1:0])
            0: phase_val <= phase_out_0;
            1: phase_val <= phase_out_1;
            2: phase_val <= phase_out_2;
            3: phase_val <= phase_out_3;
        endcase
    end

    always @(posedge clk) 
    begin
		if (complete_1)
		begin
			sample[15:0] <= sample_counter_0;
			sample[31:16] <= sample_counter_1;
			sample[47:32] <= sample_counter_2;
			sample[63:48] <= sample_counter_3;
			size <= env_end_ind - env_start_ind + 1;
			max_pos <= ((env_down_max_ind + env_up_max_ind) >> 1) - env_start_ind;
			max_env <= env_up_max_val;
        end
    end
    
  end
    
endgenerate

endmodule
