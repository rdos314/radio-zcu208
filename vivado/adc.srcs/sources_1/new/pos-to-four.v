`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module: pos_to_four
// -----------------------------------------------------------------------------
// Description:
// -----------
// Reorders serialized statistical output into aligned groups of four samples.
//
// The upstream statistics module produces one sample per cycle with an explicit
// position index (`pos`). Due to bidirectional replay (center-aligned around the
// maximum envelope), samples arrive out-of-order in time.
//
// This module:
//   1) Stores incoming samples into position-indexed memory
//   2) Reconstructs ordered output streams
//   3) Outputs four samples per cycle (env + phase)
//
// -----------------------------------------------------------------------------
// Data Organization:
// -------------------
// - Input:
//     pos[10:0]  : absolute sample index within burst
//     env        : envelope (16-bit)
//     phase      : phase (16-bit)
//
// - Memory layout:
//     Four independent BRAM banks (mem_0 .. mem_3)
//     Bank selection:
//         pos[1:0] → selects which memory
//     Address:
//         pos[10:2] → word index
//
//     This creates an interleaved structure:
//
//         pos % 4 = 0 → mem_0
//         pos % 4 = 1 → mem_1
//         pos % 4 = 2 → mem_2
//         pos % 4 = 3 → mem_3
//
//     Each memory word stores:
//         [31:16] = phase
//         [15:0]  = env
//
// -----------------------------------------------------------------------------
// Operation:
// ----------
//
// 1. Write Phase:
//    - Incoming samples are written into the appropriate BRAM bank
//    - Address is derived directly from position
//
// 2. Readback Request:
//    - `read_back` requests output of a stored burst
//    - Handshake:
//         request → req_read_back → read_back_i (gated by `allowed`)
//
// 3. Read Phase:
//    - All four memories are read in parallel using rd_ptr
//    - Produces 4 samples per cycle
//
// 4. Output Formatting:
//    - For full groups (counter[10:2] != 0):
//         all 4 outputs valid
//
//    - For final partial group:
//         outputs are zero-padded according to remaining size
//
// 5. Control:
//    - `active` asserted during readback (2-cycle pipeline delay)
//    - `idle` indicates module is fully inactive
//
// -----------------------------------------------------------------------------
// Timing Characteristics:
// -----------------------
// - Fully synchronous design
// - BRAM read latency: 1 cycle
// - Output pipeline latency: 2 cycles (active_0 → active)
//
// - No wide combinational paths:
//     → Suitable for high-frequency operation (≈500 MHz)
//
// -----------------------------------------------------------------------------
// Design Notes:
// -------------
// - Write path uses one-hot bank selection (mem_wr)
// - Read path is fully parallel (no mux on critical path)
// - Output zero-padding ensures exact burst size handling
//
// - Memory depth:
//     512 entries × 4 banks → supports up to 2048 samples
//
// - `allowed` provides backpressure from downstream logic
//
// -----------------------------------------------------------------------------
// System Role:
// ------------
// This module converts position-tagged, out-of-order samples into a
// contiguous, high-throughput stream suitable for:
//
//   - AXI streaming to CPU (Linux)
//   - Further vector processing
//   - DMA transfers
//
// It decouples ordering from computation, allowing the upstream module
// to optimize purely for statistical processing.
//
// -----------------------------------------------------------------------------
// Status:
// -------
// - Deterministic reordering
// - Full throughput (4 samples/cycle)
// - Timing-safe for UltraScale+ class devices
// -----------------------------------------------------------------------------
module pos_to_four(
    input wire clk,
    input wire reset,

    input wire wr,
    input wire [10:0] pos,
    input wire [15:0] env,
    input wire [15:0] phase,
    input wire [10:0] size,
    input wire allowed,
    input wire read_back,

    output reg idle,    
    output reg done,
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

    (* ram_style = "block" *) reg [31:0] mem_0 [0:511];
    (* ram_style = "block" *) reg [31:0] mem_1 [0:511];
    (* ram_style = "block" *) reg [31:0] mem_2 [0:511];
    (* ram_style = "block" *) reg [31:0] mem_3 [0:511];

    reg [8:0] wr_ptr;
    reg [8:0] rd_ptr;

	reg [3:0] mem_wr;
	
	reg [31:0] data_in;
	reg [31:0] data_0_out;
	reg [31:0] data_1_out;
	reg [31:0] data_2_out;
	reg [31:0] data_3_out;

    reg active_0;
    reg active_1;
	reg req_read_back;
    reg read_back_i;
	reg [10:0] counter;
	reg filling;
	
	ila_3 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(wr),                  // input wire [0:0]  probe3
		.probe1(pos),                 // input wire [10:0]  probe3
		.probe2(env),                 // input wire [15:0]  probe3
		.probe3(phase),               // input wire [15:0]  probe3
		.probe4(mem_wr),              // input wire [3:0]  probe3
		.probe5(wr_ptr),              // input wire [8:0]  probe3
		.probe6(rd_ptr),              // input wire [8:0]  probe3
		.probe7(active_0),            // input wire [0:0]  probe3
		.probe8(active_1),            // input wire [0:0]  probe3
		.probe9(req_read_back),       // input wire [0:0]  probe3
		.probe10(read_back_i),        // input wire [0:0]  probe3
		.probe11(active),             // input wire [0:0]  probe3
		.probe12(counter),            // input wire [10:0]  probe3
		.probe13(env_0),              // input wire [15:0]  probe3
		.probe14(env_1),              // input wire [15:0]  probe3
		.probe15(env_2),              // input wire [15:0]  probe3
		.probe16(env_3),              // input wire [15:0]  probe3
		.probe17(phase_0),            // input wire [15:0]  probe3
		.probe18(phase_1),            // input wire [15:0]  probe3
		.probe19(phase_2),            // input wire [15:0]  probe3
		.probe20(phase_3)             // input wire [15:0]  probe3
	);
    
generate
  begin : pos_to_four

    always @(posedge clk) 
    begin
        if (mem_wr[0])
            mem_0[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr[1])
            mem_1[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr[2])
            mem_2[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr[3])
            mem_3[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        data_0_out <= mem_0[rd_ptr];
    end

    always @(posedge clk) 
    begin
        data_1_out <= mem_1[rd_ptr];
    end

    always @(posedge clk) 
    begin
        data_2_out <= mem_2[rd_ptr];
    end

    always @(posedge clk) 
    begin
        data_3_out <= mem_3[rd_ptr];
    end

    always @(posedge clk) 
    begin
		if (wr)
		begin
			case (pos[1:0])
				0: mem_wr <= 4'b0001;
				1: mem_wr <= 4'b0010;
				2: mem_wr <= 4'b0100;
				3: mem_wr <= 4'b1000;
			endcase
		end
		else
			mem_wr <= 0;
	end

    always @(posedge clk) 
    begin
		if (wr)
			filling <= 1;
		else
		begin
			if (reset | read_back)
				filling <= 0;
		end
	end

    always @(posedge clk) 
    begin
		wr_ptr <= pos[10:2];
		data_in[15:0] <= env;
		data_in[31:16] <= phase;
	end

    always @(posedge clk) 
    begin
		if (counter[10:2])
		begin
			env_0 <= data_0_out[15:0];
			env_1 <= data_1_out[15:0];
			env_2 <= data_2_out[15:0];
			env_3 <= data_3_out[15:0];
		end
		else
		begin
			case (counter[1:0])
				0: 
				begin
					env_0 <= 0;
					env_1 <= 0;
					env_2 <= 0;
					env_3 <= 0;
				end
				
				1:
				begin
					env_0 <= data_0_out[15:0];
					env_1 <= 0;
					env_2 <= 0;
					env_3 <= 0;
				end
				
				2:
				begin
					env_0 <= data_0_out[15:0];
					env_1 <= data_1_out[15:0];
					env_2 <= 0;
					env_3 <= 0;
				end
				
				3:
				begin
					env_0 <= data_0_out[15:0];
					env_1 <= data_1_out[15:0];
					env_2 <= data_2_out[15:0];
					env_3 <= 0;
				end
			endcase
		end
	end

    always @(posedge clk) 
    begin
		if (counter[10:2])
		begin
			phase_0 <= data_0_out[31:16];
			phase_1 <= data_1_out[31:16];
			phase_2 <= data_2_out[31:16];
			phase_3 <= data_3_out[31:16];
		end
		else
		begin
			case (counter[1:0])
				0: 
				begin
					phase_0 <= 0;
					phase_1 <= 0;
					phase_2 <= 0;
					phase_3 <= 0;
				end
		
				1: 
				begin
					phase_0 <= data_0_out[31:16];
					phase_1 <= 0;
					phase_2 <= 0;
					phase_3 <= 0;
				end
				
				2: 
				begin
					phase_0 <= data_0_out[31:16];
					phase_1 <= data_1_out[31:16];
					phase_2 <= 0;
					phase_3 <= 0;
				end
				
				3: 
				begin
					phase_0 <= data_0_out[31:16];
					phase_1 <= data_1_out[31:16];
					phase_2 <= data_2_out[31:16];
					phase_3 <= 0;
				end
			endcase
		end
	end

    always @(posedge clk) 
    begin
        active_1 <= active_0;
		
		if (active_1)
		begin
			if (counter)
				active <= 1;
			else
				active <= 0;
		end
		else
			active <= 0;
    end
    
    always @(posedge clk) 
    begin
        if (active & !active_1)
            done <= 1;
        else
            done <= 0;
    end
    
    always @(posedge clk) 
    begin
		if (read_back)
		begin
			read_back_i <= 0;
			req_read_back <= 1;
		end
		else
		begin
			if (req_read_back & allowed)
			begin
				read_back_i <= 1;
				req_read_back <= 0;
			end
			else
			begin	
				read_back_i <= 0;
				
				if (reset)
					req_read_back <= 0;
			end
		end
	end

    always @(posedge clk) 
    begin
        idle <= !wr & !filling & !read_back & !req_read_back & !read_back_i & !active_0 & !active_1 & !active;
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
            counter <= size + 4;
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
                    
  end
    
endgenerate

endmodule
