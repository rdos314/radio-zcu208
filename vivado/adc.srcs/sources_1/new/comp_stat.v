`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module: comp_stat
// -----------------------------------------------------------------------------
// Description:
// -----------
// Burst statistics processor operating on envelope and phase data.
// The module buffers incoming samples, replays them in a defined order around
// a detected maximum, and computes statistical measures including mean and
// variance-related sums.
//
// The design is optimized for very high clock frequencies by:
// - Splitting wide additions into multi-cycle LSB/MSB stages
// - Avoiding long carry chains
// - Using DSP blocks for accumulation of squared values
//
// -----------------------------------------------------------------------------
// Data Rate and Scaling:
// ----------------------
// - Input data arrives as 4 samples per clock cycle.
// - Effective sample rate: 4 × clk (e.g. 2 GHz at 500 MHz clock).
// - Frequency (`freq`) is defined per clock cycle (500 MHz domain).
//
// Phase scaling:
// - Internal phase accumulation operates at sample rate resolution.
// - Therefore:
//     freq_step = freq / 4
//     → implemented as: {2'b00, freq[19:2]}
//
// - Phase accumulator uses extended precision:
//     pred_phase is 22 bits (20-bit phase << 2)
//
// This avoids fractional arithmetic while maintaining phase continuity.
//
// -----------------------------------------------------------------------------
// Processing Flow:
// ----------------
//
// 1. Fill Phase:
//    - Incoming samples are written into BRAM (4 samples per word).
//    - Phase is converted from absolute to relative form using frequency
//      compensation and previous phase tracking.
//
// 2. Mean Calculation:
//    - Envelope and phase sums are accumulated during fill.
//    - A hardware divider computes:
//          mean = sum / N
//    - Phase mean is also used to refine frequency:
//          adj_freq = freq + phase_mean
//
// 3. Replay Phase:
//    - Data is read out starting at `max_pos`:
//        a) Upward scan (max → end)
//        b) Downward scan (max → start)
//    - One sample is output per cycle.
//
// 4. Phase Reconstruction:
//    - A predicted phase is generated using `adj_freq`.
//    - Output phase is:
//          phase_diff = measured_phase - predicted_phase
//
// 5. Variance Accumulation:
//    - Envelope:
//          env_diff = env - env_mean
//    - Phase:
//          phase_diff = phase (already zero-mean after correction)
//
//    - DSP blocks compute:
//          sum(env_diff^2)
//          sum(phase_diff^2)
//
// -----------------------------------------------------------------------------
// High-Speed Accumulation Technique:
// ----------------------------------
//
// To meet timing at high frequency, wide accumulators are split:
//
//   Lower bits (LSB):
//     - Perform standard addition
//     - Capture carry-out
//
//   Upper bits (MSB):
//     - Updated in a separate stage using:
//           sign of operand
//           carry from LSB addition
//
//     - Correction rules:
//           sign=0, carry=1 → MSB += 1
//           sign=1, carry=0 → MSB -= 1
//           otherwise       → no change
//
// This avoids long carry propagation chains while preserving exact arithmetic,
// given that intermediate values are width-bounded and do not overflow.
//
// -----------------------------------------------------------------------------
// DSP Utilization:
// ----------------
// - DSP blocks are configured as:
//       P <= P + A * A
//
// - Used for:
//       env_sum2   (sum of squared envelope differences)
//       phase_sum2 (sum of squared phase differences)
//
// - This minimizes logic usage and ensures high-throughput accumulation.
//
// -----------------------------------------------------------------------------
// Outputs:
// --------
// - active        : Output sample valid
// - pos           : Sample index
// - env           : Envelope sample
// - phase         : Phase difference (relative, zero-mean)
//
// - env_mean      : Mean envelope
// - phase_mean    : Mean phase (used internally for frequency correction)
// - adj_freq      : Frequency corrected using phase mean
//
// - phase_sum     : Recomputed phase sum (post mean alignment)
// - env_sum2      : Sum of squared envelope differences
// - phase_sum2    : Sum of squared phase differences
//
// - done          : Processing complete (after both scans)
//
// -----------------------------------------------------------------------------
// Design Notes and Assumptions:
// -----------------------------
// - Input samples are bounded such that intermediate sums do not overflow.
// - Accumulator widening (16→17→18 bits, etc.) guarantees correctness prior
//   to final accumulation.
// - Multi-cycle accumulation relies on strict pipeline alignment between:
//       operand sign
//       LSB carry
//       MSB correction stage
//
// - Phase is internally processed at 20-bit precision and truncated to 16 bits
//   for output/storage.
//
// - Division latency is hidden between fill and replay phases.
//
// -----------------------------------------------------------------------------
// Status:
// -------
// - Fully pipelined high-speed architecture
// - Mean and variance computation implemented
// - Frequency self-correction via phase mean included
// - Suitable for high-throughput FPGA DSP pipelines (e.g. Ultrascale+)
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
    input wire [19:0] phase_0,
    input wire [19:0] phase_1,
    input wire [19:0] phase_2,
    input wire [19:0] phase_3,

    input wire allowed,

    output reg idle,
    output reg active,
    output reg [10:0] pos,
    output reg [15:0] env,
    output reg [15:0] phase,
    
    output reg done,
    output reg [19:0] adj_freq,
    output reg [15:0] env_mean,
    output reg [31:0] phase_sum,
    output reg [47:0] env_sum2,
    output reg [47:0] phase_sum2
);
    
    (* ram_style = "block" *) reg [63:0] mem_env [0:511];
    (* ram_style = "block" *) reg [79:0] mem_phase [0:511];
    (* ram_style = "block" *) reg [71:0] mem_phase_diff [0:511];
    reg mem_wr;
    reg [8:0] wr_ptr;
    reg [63:0] env_in;
    reg [79:0] phase_in;
    reg [71:0] phase_diff_in;
    
    reg [8:0] rd_ptr;
    reg [1:0] rd_pos_1;
    reg [1:0] rd_pos;
    reg [63:0] env_out;
    reg [79:0] phase_out;
    reg [71:0] phase_diff_out;

    reg [15:0] curr_env_1;
    reg [15:0] curr_env_2;
    reg [19:0] curr_phase;
	reg [19:0] prev_phase;
	reg [21:0] pred_phase;

    reg [17:0] phase_mean;
    reg [17:0] curr_phase_diff_1;
    reg [17:0] curr_phase_diff_2;
    reg [17:0] curr_phase_diff;

    reg filling;
    
    reg [10:0] local_size;
    reg [10:0] local_max_pos;
    
    reg proc_up;
    reg start_up;
    reg stop_up;
	reg was_active;
reg [4:0] pend_done;
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
    
    reg [10:0] remain_size;
    reg [19:0] base_phase;

    reg [15:0] calc_env_0;
    reg [15:0] calc_env_1;
    reg [15:0] calc_env_2;
    reg [15:0] calc_env_3;
    
    reg [19:0] calc_phase_0;
    reg [19:0] calc_phase_1;
    reg [19:0] calc_phase_2;
    reg [19:0] calc_phase_3;

    reg [3:0] use_bits;
    reg [16:0] calc_env_01;
    reg [16:0] calc_env_23;
    reg [20:0] calc_phase_01;
    reg [20:0] calc_phase_23;

    reg [17:0] calc_env_all;
    reg [21:0] calc_phase_all;
    
    reg [26:0] local_env_sum;
    reg [31:0] local_phase_sum;
    
    reg [17:0] env_lsb;
    reg env_sign;
    reg env_carry;

    reg [21:0] phase_lsb;
    reg phase_sign;
    reg phase_carry;    
    
    reg [1:0] delay_div;
    reg div_start;

    wire env_div_done;
    wire [31:0] env_div_data;
    
    wire phase_div_done;
    wire [31:0] phase_div_data;

    reg env_mean_ok;
    reg phase_mean_ok;

    reg use_sqr;
    reg [15:0] env_diff;
    reg [17:0] phase_diff;
    
    wire [47:0] env_sum_p;
    wire [47:0] phase_sum_p;

    reg recalc_phase_sign;
    reg recalc_phase_carry;
    reg [31:0] recalc_phase_sum;

	div_stat_32 div_env_mean_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(div_start),               // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata({5'b00000, local_size}),   // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(div_start),              // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata({5'b00000, local_env_sum}), // input wire [31 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(env_div_done),               // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(env_div_data)                 // output wire [31 : 0] m_axis_dout_tdata
	);

	div_stat_32 div_phase_mean_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(div_start),               // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata({5'b00000, local_size}),   // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(div_start),              // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata(local_phase_sum),         // input wire [31 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(phase_div_done),             // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(phase_div_data)               // output wire [31 : 0] m_axis_dout_tdata
	);
	
    dsp_sqr16 sqr_env_i (
        .CLK(clk),           // input wire CLK
        .SCLR(div_start),    // input wire SCLR
        .A(env_diff),        // input wire [15 : 0] A
        .P(env_sum_p)        // output wire [47 : 0] P
    );
	
    dsp_sqr18 sqr_phase_i (
        .CLK(clk),             // input wire CLK
        .SCLR(div_start),      // input wire SCLR
        .A(phase_diff),        // input wire [17 : 0] A
        .P(phase_sum_p)        // output wire [47 : 0] P
    );

	ila_2 ila_i (
		.clk(clk),                   // input wire clk
		.probe0(active),             // input wire [0:0]  probe3
		.probe1(wr),                 // input wire [0:0]  probe3
		.probe2(mem_wr),             // input wire [0:0]  probe3
		.probe3(remain_size),        // input wire [10:0]  probe3
		.probe4(start_up),           // input wire [0:0]  probe3
		.probe5(start_down),         // input wire [0:0]  probe3
		.probe6(stop_down),          // input wire [1:0]  probe3
		.probe7(proc_up),            // input wire [0:0]  probe3
		.probe8(up_delay),           // input wire [2:0]  probe3
		.probe9(down_delay),         // input wire [2:0]  probe3
		.probe10(down_pos),          // input wire [10:0]  probe3
		.probe11(env),               // input wire [15:0]  probe3
		.probe12(env_mean),          // input wire [15:0]  probe3
		.probe13(phase_mean),        // input wire [17:0]  probe3
		.probe14(adj_freq),          // input wire [19:0]  probe3
		.probe15(use_sqr),           // input wire [0:0]  probe3
		.probe16(env_diff),          // input wire [15:0]  probe3
		.probe17(phase_diff),        // input wire [17:0]  probe3
		.probe18(pend_done)          // input wire [4:0]  probe3
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
        if (mem_wr)
            mem_phase_diff[wr_ptr] <= phase_diff_in;
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
        phase_diff_out <= mem_phase_diff[rd_ptr];
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
        if (wr)
        begin
            local_size <= size;
            local_max_pos <= max_pos;
            
            if (mem_wr)
            begin
                if (remain_size[10:2])
                    remain_size[10:2] <= remain_size[10:2] - 1;
                else
                    remain_size <= 0;
            end
            else
                remain_size <= size - 4;
        end
        else
            remain_size <= 0;
    end

    always @(posedge clk) 
    begin
        if (remain_size[10:2] == 0)
        begin
            case (remain_size[1:0])
                0 : use_bits <= 4'b0000;
                1 : use_bits <= 4'b0001;
                2 : use_bits <= 4'b0011;
                3 : use_bits <= 4'b0111;
            endcase
        end
        else
            use_bits <= 4'b1111;
    end

    always @(posedge clk) 
    begin
        calc_env_0 <= env_0;
        calc_env_1 <= env_1;
        calc_env_2 <= env_2;
        calc_env_3 <= env_3;
    end

    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
            calc_phase_0 <= 0;
        else
            calc_phase_0 <= phase_0 - {2'b00, freq[19:2]} - base_phase;
            
        calc_phase_1 <= phase_1 - {2'b00, freq[19:2]} - phase_0;
        calc_phase_2 <= phase_2 - {2'b00, freq[19:2]} - phase_1;
        calc_phase_3 <= phase_3 - {2'b00, freq[19:2]} - phase_2;
        base_phase <= phase_3;
    end

    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
            phase_diff_in[17:0] <= 0;
        else
            phase_diff_in[17:0] <= phase_0[19:2] - {2'b00, freq[19:4]} - base_phase[19:2];
            
        phase_diff_in[35:18] <= phase_1[19:2] - {2'b00, freq[19:4]} - phase_0[19:2];
        phase_diff_in[53:36] <= phase_2[19:2] - {2'b00, freq[19:4]} - phase_1[19:2];
        phase_diff_in[71:54] <= phase_3[19:2] - {2'b00, freq[19:4]} - phase_2[19:2];
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
        begin
            case (use_bits[1:0])
                2'b00:    calc_env_01 <= 0;
                2'b01:    calc_env_01 <= {calc_env_0[15], calc_env_0};
                default : calc_env_01 <= {calc_env_0[15], calc_env_0} + {calc_env_1[15], calc_env_1};
            endcase

            case (use_bits[3:2])
                2'b00:    calc_env_23 <= 0;
                2'b01:    calc_env_23 <= {calc_env_2[15], calc_env_2};
                default:  calc_env_23 <= {calc_env_2[15], calc_env_2} + {calc_env_3[15], calc_env_3};
            endcase
        end
        else
        begin
            calc_env_01 <= 0;
            calc_env_23 <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
        begin
            case (use_bits[1:0])
                2'b00:    calc_phase_01 <= 0;
                2'b01:    calc_phase_01 <= {calc_phase_0[19], calc_phase_0};
                default:  calc_phase_01 <= {calc_phase_0[19], calc_phase_0} + {calc_phase_1[19], calc_phase_1};
            endcase

            case (use_bits[3:2])
                2'b00:    calc_phase_23 <= 0;
                2'b01:    calc_phase_23 <= {calc_phase_2[19], calc_phase_2};
                default:  calc_phase_23 <= {calc_phase_2[19], calc_phase_2} + {calc_phase_3[19], calc_phase_3};
            endcase
        end
        else
        begin
            calc_phase_01 <= 0;
            calc_phase_23 <= 0;
        end
    end

    always @(posedge clk) 
    begin
        calc_env_all <= {calc_env_01[16], calc_env_01} + {calc_env_23[16], calc_env_23}; 
        calc_phase_all <= {calc_phase_01[20], calc_phase_01} + {calc_phase_23[20], calc_phase_23}; 
    end

    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
        begin
            env_sign <= 0;
            env_carry <= 0;
            local_env_sum[17:0] <= 0;
            
            phase_sign <= 0;
            phase_carry <= 0;
            local_phase_sum[21:0] <= 0;
        end
        else
        begin
            env_sign <= calc_env_all[17];
            {env_carry, local_env_sum[17:0]} <= local_env_sum[17:0] + calc_env_all;

            phase_sign <= calc_phase_all[21];
            {phase_carry, local_phase_sum[21:0]} <= local_phase_sum[21:0] + calc_phase_all;
        end
    end
    
    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
            local_env_sum[26:18] <= 0;
        else
        begin
            case ({env_sign, env_carry})
                2'b01 : local_env_sum[26:18] <= local_env_sum[26:18] + 1;
                2'b10 : local_env_sum[26:18] <= local_env_sum[26:18] - 1;
            endcase
        end
    end
    
    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
            local_phase_sum[31:22] <= 0;
        else
        begin
            case ({phase_sign, phase_carry})
                2'b01 : local_phase_sum[31:22] <= local_phase_sum[31:22] + 1;
                2'b10 : local_phase_sum[31:22] <= local_phase_sum[31:22] - 1;
            endcase
        end
    end
    
    always @(posedge clk) 
    begin
        if (mem_wr & !wr)
            delay_div <= 3;
        else
        begin
            if (reset)
                delay_div <= 0;
            else
            begin
                if (delay_div)
                    delay_div <= delay_div - 1;
            end
        end
    end
    
    always @(posedge clk) 
    begin
        if (delay_div == 1)
            div_start <= 1;
        else
            div_start <= 0;
    end

    always @(posedge clk) 
    begin
        if (env_div_done)
        begin
            env_mean <= env_div_data[15:0];
            env_mean_ok <= 1;
        end
        else
        begin
            if (mem_wr | reset | proc_up)
                env_mean_ok <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (phase_div_done)
        begin
            phase_mean <= phase_div_data[19:2];
            adj_freq <= {freq[19:2], 2'b00} - {phase_div_data[19], phase_div_data[19], phase_div_data[19:2]};
            phase_mean_ok <= 1;
        end
        else
        begin
            if (mem_wr | reset | proc_up)
                phase_mean_ok <= 0;
        end
    end
        
    always @(posedge clk) 
    begin
        idle <= !wr & !mem_wr & !filling & !proc_up & !active & !start_down & !down_delay[0] & (down_pos == 0); 
    end

    always @(posedge clk) 
    begin
        if (filling)
        begin
            rd_ptr <= local_max_pos[10:2];
            rd_pos_1 <= local_max_pos[1:0];
			up_count <= local_size - local_max_pos + 2;
			start_down <= 0;
        end
        else
        begin
            if (proc_up)
            begin
				if (up_count == 0)
				begin
					start_down <= 1;
					rd_ptr <= local_max_pos[10:2];
					rd_pos_1 <= local_max_pos[1:0];
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
					up_pos <= local_max_pos;
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
					down_pos <= local_max_pos;
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
                curr_phase <= phase_out[19:0];
                curr_phase_diff_1 <= phase_diff_out[17:0];
            end
            
            1 :
            begin
                curr_env_1 <= env_out[31:16];
                curr_phase <= phase_out[39:20];
                curr_phase_diff_1 <= phase_diff_out[35:18];
            end
            
            2 :
            begin
                curr_env_1 <= env_out[47:32];
                curr_phase <= phase_out[59:40];
                curr_phase_diff_1 <= phase_diff_out[53:36];
            end
            
            3 :
            begin
                curr_env_1 <= env_out[63:48];
                curr_phase <= phase_out[79:60];
                curr_phase_diff_1 <= phase_diff_out[71:54];
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
				stop_down[0] <= 0;
			else
			begin
                if (!down_pos)
                begin
					stop_down[0] <= 0;

                    if (active)
                    begin
   						if (!stop_down[1])
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
			if (start_up | up_delay[0])
			begin
				pred_phase <= 0;
                active <= 0;
				env <= 0;
				phase <= 0;
				use_sqr <= 0;
			end
			else
			begin
				if (up_delay[1])
				begin
					pred_phase <= {curr_phase, 2'b00};
					active <= 0;
					env <= 0;
					phase <= 0;
					use_sqr <= 0;
				end
				else
				begin
					pred_phase <= pred_phase + {2'b00, adj_freq};
					active <= 1;
					env <= curr_env_2;
					phase <= prev_phase[19:4] - pred_phase[21:6];
					
					if (up_delay[2])
						use_sqr <= 0;
					else
						use_sqr <= 1;					
				end
			end
        end
        else
        begin
            if (down_pos)
            begin
                if (down_delay[1])
				begin
					pred_phase <= {curr_phase, 2'b00};
                    active <= 0;
					env <= 0;
					phase <= 0;
					use_sqr <= 0;
				end
                else
				begin
					pred_phase <= pred_phase - {2'b00, adj_freq};
                    active <= 1;
					env <= curr_env_2;
					phase <= prev_phase[19:4] - pred_phase[21:6];
					use_sqr <= 1;
				end
            end
            else
            begin
				if (start_down | stop_down[1])
				begin
					pred_phase <= 0;
                    active <= 0;
					env <= 0;
					phase <= 0;
					use_sqr <= 0;
				end
				else
				begin
					if (active)
					begin
						pred_phase <= pred_phase - {2'b00, adj_freq};
						env <= curr_env_2;
						use_sqr <= 1;
						phase <= prev_phase[19:4] - pred_phase[21:6];
					end
					else
					begin
						pred_phase <= 0;
						env <= 0;
						use_sqr <= 0;
						phase <= 0;
					end
				end
			end
		end
	end

    always @(posedge clk) 
    begin
        if (reset)
		begin
            was_active <= 0;
			pend_done[0] <= 0;
		end
        else
		begin
            if (proc_up)
			begin
				was_active <= 1;
				pend_done[0] <= 0;
			end
			else
			begin
				if (!start_down & !down_delay[0] & !down_delay[1])
				begin
					if (was_active)
					begin
						if (down_pos == 0)
						begin
							pend_done[0] <= 1;
							was_active <= 0;
						end
						else
							pend_done[0] <= 0;
					end
					else
						pend_done[0] <= 0;
				end
				else
					pend_done[0] <= 0;
			end
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
		curr_phase_diff_2 <= curr_phase_diff_1;
        curr_phase_diff <= curr_phase_diff_2;
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
                if (filling & allowed & env_mean_ok & phase_mean_ok)
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

    always @(posedge clk) 
    begin
		if (use_sqr)
		begin
            env_diff <= env - env_mean;
            phase_diff <= curr_phase_diff - phase_mean;
        end
        else
        begin
            env_diff <= 0;
            phase_diff <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (div_start)
        begin
            recalc_phase_sign <= 0;
            recalc_phase_carry <= 0;
            recalc_phase_sum[19:0] <= 0;
        end
        else
        begin
            recalc_phase_sign <= phase_diff[19];
            {recalc_phase_carry, recalc_phase_sum[19:0]} <= recalc_phase_sum[19:0] + phase_diff;
        end
    end
    
    always @(posedge clk) 
    begin
        if (div_start)
            recalc_phase_sum[31:20] <= 0;
        else
        begin
            case ({recalc_phase_sign, recalc_phase_carry})
                2'b01 : recalc_phase_sum[31:20] <= recalc_phase_sum[31:20] + 1;
                2'b10 : recalc_phase_sum[31:20] <= recalc_phase_sum[31:20] - 1;
            endcase
        end
    end

    always @(posedge clk) 
    begin
        pend_done[4:1] <= pend_done[3:0];
		done <= pend_done[4];
	end

    always @(posedge clk) 
    begin
        if (pend_done[4])
        begin
            phase_sum <= recalc_phase_sum;
            env_sum2 <= env_sum_p;
            phase_sum2 <= phase_sum_p;
        end
	end

  end
    
endgenerate

endmodule
