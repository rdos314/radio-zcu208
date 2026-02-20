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
    output reg [15:0] env_mean
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
	reg [19:0] prev_phase;
	reg [21:0] pred_phase;

    reg filling;
    
    reg [10:0] local_size;
    reg [10:0] local_max_pos;
    
    reg proc_up;
    reg start_up;
    reg stop_up;
	reg was_active;
	reg pend_done;
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
    reg [19:0] phase_mean;

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
    
    reg [26:0] env_sum;
    reg [31:0] phase_sum;
    
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

	div_stat_32 div_env_mean_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(div_start),               // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata({5'b00000, local_size}),   // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(div_start),              // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata({5'b00000, env_sum}),     // input wire [31 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(env_div_done),               // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(env_div_data)                 // output wire [31 : 0] m_axis_dout_tdata
	);

	div_stat_32 div_phase_mean_i (
		.aclk(clk),                                      // input wire aclk
		.s_axis_divisor_tvalid(div_start),               // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata({5'b00000, local_size}),   // input wire [15 : 0] s_axis_divisor_tdata
		.s_axis_dividend_tvalid(div_start),              // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata(phase_sum),               // input wire [31 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid(phase_div_done),             // output wire m_axis_dout_tvalid		
		.m_axis_dout_tdata(phase_div_data)               // output wire [31 : 0] m_axis_dout_tdata
	);

	ila_2 ila_i (
		.clk(clk),                   // input wire clk
		.probe0(active),             // input wire [0:0]  probe3
		.probe1(wr),                 // input wire [0:0]  probe3
		.probe2(mem_wr),             // input wire [0:0]  probe3
		.probe3(remain_size),        // input wire [10:0]  probe3
		.probe4(calc_env_0),         // input wire [15:0]  probe3
		.probe5(calc_env_1),         // input wire [15:0]  probe3
		.probe6(calc_env_2),         // input wire [15:0]  probe3
		.probe7(calc_env_3),         // input wire [15:0]  probe3
		.probe8(calc_phase_0),       // input wire [19:0]  probe3
		.probe9(calc_phase_1),       // input wire [19:0]  probe3
		.probe10(calc_phase_2),      // input wire [19:0]  probe3
		.probe11(calc_phase_3),      // input wire [19:0]  probe3
		.probe12(use_bits),          // input wire [3:0]  probe3
		.probe13(calc_env_01),       // input wire [16:0]  probe3
		.probe14(calc_env_23),       // input wire [16:0]  probe3
		.probe15(calc_phase_01),     // input wire [20:0]  probe3
		.probe16(calc_phase_23),     // input wire [20:0]  probe3
		.probe17(calc_env_all),      // input wire [17:0]  probe3
		.probe18(calc_phase_all),    // input wire [21:0]  probe3
		.probe19(env_sum),           // input wire [26:0]  probe3
		.probe20(phase_sum),         // input wire [31:0]  probe3
		.probe21(env_lsb),           // input wire [17:0]  probe3
		.probe22(env_sign),          // input wire [0:0]  probe3
		.probe23(env_carry),         // input wire [0:0]  probe3
		.probe24(phase_lsb),         // input wire [21:0]  probe3
		.probe25(phase_sign),        // input wire [0:0]  probe3
		.probe26(phase_carry),       // input wire [0:0]  probe3
		.probe27(delay_div),         // input wire [1:0]  probe3
		.probe28(div_start),         // input wire [0:0]  probe3
		.probe29(env_div_done),      // input wire [0:0]  probe3
		.probe30(phase_div_done),    // input wire [0:0]  probe3
		.probe31(env_mean),          // input wire [15:0]  probe3
		.probe32(phase_mean),        // input wire [19:0]  probe3
		.probe33(adj_freq),          // input wire [19:0]  probe3
		.probe34(env_mean_ok),       // input wire [0:0]  probe3
		.probe35(phase_mean_ok),     // input wire [0:0]  probe3
		.probe36(size)               // input wire [10:0]  probe3
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
            env_sum[17:0] <= 0;
            
            phase_sign <= 0;
            phase_carry <= 0;
            phase_sum[21:0] <= 0;
        end
        else
        begin
            env_sign <= calc_env_all[17];
            {env_carry, env_sum[17:0]} <= env_sum[17:0] + calc_env_all;

            phase_sign <= calc_phase_all[21];
            {phase_carry, phase_sum[21:0]} <= phase_sum[21:0] + calc_phase_all;
        end
    end
    
    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
            env_sum[26:18] <= 0;
        else
        begin
            case ({env_sign, env_carry})
                2'b01 : env_sum[26:18] <= env_sum[26:18] + 1;
                2'b10 : env_sum[26:18] <= env_sum[26:18] - 1;
            endcase
        end
    end
    
    always @(posedge clk) 
    begin
        if (!mem_wr & wr)
            phase_sum[31:22] <= 0;
        else
        begin
            case ({phase_sign, phase_carry})
                2'b01 : phase_sum[31:22] <= phase_sum[31:22] + 1;
                2'b10 : phase_sum[31:22] <= phase_sum[31:22] - 1;
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
            phase_mean <= phase_div_data[19:0];
            adj_freq <= {freq[19:2], 2'b00} + {phase_div_data[19], phase_div_data[19], phase_div_data[19:2]};
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
        if (reset)
		begin
            was_active <= 0;
			pend_done <= 0;
		end
        else
		begin
            if (proc_up)
			begin
				was_active <= 1;
				pend_done <= 0;
			end
			else
			begin
				if (!start_down & !down_delay[0] & !down_delay[1])
				begin
					if (was_active)
					begin
						if (down_pos == 0)
						begin
							pend_done <= 1;
							was_active <= 0;
						end
						else
							pend_done <= 0;
					end
					else
						pend_done <= 0;
				end
				else
					pend_done <= 0;
			end
		end
	end

    always @(posedge clk) 
    begin
		done <= pend_done;
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
					pred_phase <= {curr_phase, 2'b00};
				else
					pred_phase <= pred_phase + {2'b00, adj_freq};
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
						pred_phase <= {curr_phase, 2'b00};
					else
						pred_phase <= pred_phase - {2'b00, adj_freq};
				end
			end
			else
				pred_phase <= pred_phase - {2'b00, adj_freq};
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

  end
    
endgenerate

endmodule
