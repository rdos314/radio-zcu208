`timescale 1ns / 1ps
//------------------------------------------------------------------------------
// Module: comp_burst
//
// Description:
// -----------
// Burst analysis and compression stage operating on envelope and phase data
// delivered in groups of four samples per cycle.
//
// The module buffers one complete burst in internal BRAM and performs two
// concurrent scans over the envelope data:
//
//   1) Upward scan   : from burst start towards the end
//   2) Downward scan : from burst end towards the start
//
// Both scans always run to the opposite end of the burst. During the scan the
// following quantities are detected:
//
//   - First sample >= min_env   (burst start index)
//   - Last  sample >= min_env   (burst end index)
//   - Maximum envelope value and its position (both directions)
//
// From these, the module computes:
//
//   - Absolute sample number of the detected burst
//   - Burst size (in samples)
//   - Burst-relative position of the envelope maximum
//   - Maximum envelope value
//
// Envelope and phase samples between the detected start and end are streamed
// out in aligned groups of four samples for further processing or storage.
//
// Continuous or full-length bursts may be detected upstream and suppressed
// from AXI transmission; this block still fully processes such bursts to
// provide metadata.
//
//
// Data format and assumptions:
// -----------------------------
// - Envelope samples are signed 16-bit values but assumed non-negative
//   (bit[15] must remain zero; overflow is not expected).
// - Phase samples are 16-bit signed values.
// - Input samples always arrive in groups of four.
// - Burst size is always a multiple of four samples.
// - Internal memory stores data in "four-sample words".
//
// curr_size represents the number of four-sample words in the burst, not the
// number of individual samples.
//
// Sample indexing:
// ----------------
// The input provides the absolute sample number of the first sample in the
// burst. The module internally increments this value during scanning and
// outputs the absolute sample number corresponding to the detected burst start.
// Sample numbering is handled as a 64-bit integer using chained 16-bit counters.
//
//
// Pipeline and control notes:
// ---------------------------
// - BRAM read and comparison introduce a fixed two-cycle latency.
// - Scan termination compares against index value '2' to compensate for this
//   pipeline delay.
// - Both upward and downward scans must complete before 'done' is asserted.
// - If no valid data above min_env is found, err_no_data is asserted.
//
//
// Outputs:
// --------
// - done        : Asserted for one cycle when burst analysis is complete.
// - err_no_data : Indicates no valid envelope above threshold was found.
// - sample      : Absolute sample number of burst start.
// - size        : Burst length in samples.
// - max_pos     : Burst-relative position of envelope maximum.
// - max_env     : Maximum envelope value.
// - save        : Indicates valid output envelope/phase group (4 samples).
//
//------------------------------------------------------------------------------
// Author:      Leif Ekblad
//------------------------------------------------------------------------------

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
    reg scan_start;

    (* ram_style = "block" *) reg [63:0] mem_env_up [0:511];
    (* ram_style = "block" *) reg [63:0] mem_env_down [0:511];
    (* ram_style = "block" *) reg [79:0] mem_phase [0:511];
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
    wire [19:0] phase_0 = phase_out[19:0];
    wire [19:0] phase_1 = phase_out[39:20];
    wire [19:0] phase_2 = phase_out[59:40];
    wire [19:0] phase_3 = phase_out[79:60];

    reg [15:0] sample_counter_0;
    reg [15:0] sample_counter_1;
    reg [15:0] sample_counter_2;
    reg [15:0] sample_counter_3;
    reg sample_ov_0;
    reg sample_ov_1;
    reg sample_ov_2;

    reg filling;
    reg complete_1;
    reg complete_2;
    
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

	reg df_active;
	reg [8:0] df_start;
	reg [8:0] df_ind;
	reg [3:0] df_count;
	reg [19:0] df_low;
	reg [19:0] df_diff;

	reg [63:0] p2_sample;
    reg [19:0] p2_freq;
    reg [15:0] p2_angle;
	reg [10:0] p2_size;
	reg [10:0] p2_max_pos;
	reg [15:0] p2_max_env;
    
    reg p2_wr;

    reg [15:0] p2_env;
    reg [15:0] p2_phase;
	reg [19:0] p2_phase_diff;

    reg p2_done;
    wire p2_active;

    wire [15:0] p2_env_0;
    wire [15:0] p2_env_1;
    wire [15:0] p2_env_2;
    wire [15:0] p2_env_3;

    wire [15:0] p2_phase_0;
    wire [15:0] p2_phase_1;
    wire [15:0] p2_phase_2;
    wire [15:0] p2_phase_3;

    wire [19:0] p2_phase_diff_0;
    wire [19:0] p2_phase_diff_1;
    wire [19:0] p2_phase_diff_2;
    wire [19:0] p2_phase_diff_3;

    reg p3_load;
	reg [63:0] p3_sample;
    reg [19:0] p3_freq;
    reg [15:0] p3_angle;
	reg [10:0] p3_size;
	reg [10:0] p3_max_pos;
	reg [15:0] p3_max_env;

    wire p3_active;
    wire [10:0] p3_pos;
    wire [15:0] p3_env;
    wire [15:0] p3_phase;
    
    wire p3_done;
    wire [31:0] p3_env_sum;
    wire [47:0] p3_env_sum2;
    wire [31:0] p3_phase_sum;
    wire [47:0] p3_phase_sum2;

	one_to_four p2_i (
		.clk(clk),
        .reset(reset),
        .wr(p2_wr),
        .env(p2_env),
        .phase(p2_phase),
		.phase_diff(p2_phase_diff),
        .size(p2_size),
        .read_back(p2_done),
        .active(p2_active),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .phase_diff_0(p2_phase_diff_0),
        .phase_diff_1(p2_phase_diff_1),
        .phase_diff_2(p2_phase_diff_2),
        .phase_diff_3(p2_phase_diff_3)
	);

	comp_stat p3_i (
		.clk(clk),
        .reset(reset),
        .wr(p2_active),
        .freq(p3_freq),
        .size(p3_size),
        .max_pos(p3_max_pos),
        .env_0(p2_env_0),
        .env_1(p2_env_1),
        .env_2(p2_env_2),
        .env_3(p2_env_3),
        .phase_0(p2_phase_0),
        .phase_1(p2_phase_1),
        .phase_2(p2_phase_2),
        .phase_3(p2_phase_3),
        .active(p3_active),
        .pos(p3_pos),
        .env(p3_env),
        .phase(p3_phase),
        .done(p3_done),
        .env_sum(p3_env_sum),
        .env_sum2(p3_env_sum2),
        .phase_sum(p3_phase_sum),
        .phase_sum2(p3_phase_sum2)
	);

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(df_active),           // input wire [0:0]  probe3
		.probe1(df_start),            // input wire [8:0]  probe3
		.probe2(df_ind),              // input wire [8:0]  probe3
		.probe3(df_count),            // input wire [3:0]  probe3
		.probe4(df_low),              // input wire [19:0]  probe3
		.probe5(df_diff),             // input wire [19:0]  probe3
		.probe6(complete_2),          // input wire [0:0]  probe3
		.probe7(p2_active),           // input wire [0:0]  probe3
		.probe8(p2_max_pos),          // input wire [10:0]  probe3
		.probe9(p2_size),             // input wire [10:0]  probe3
		.probe10(p2_phase_diff_0),    // input wire [19:0]  probe3
		.probe11(p2_phase_diff_1),    // input wire [19:0]  probe3
		.probe12(p2_phase_diff_2),    // input wire [19:0]  probe3
		.probe13(p2_phase_diff_3)     // input wire [19:0]  probe3
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
            mem_phase[wr_ptr] <= phase_in;
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
        if (burst)
            filling <= 1;
        else
        begin
            if (!wr_data)
                filling <= 0;
        end
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
                sample_counter_0[15:2] <= in_sample[13:0];
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
        if (run_env_start & inc_env_sample)
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
        load_env <= run_env;
        comp_env <= load_env;
    end

    always @(posedge clk) 
    begin
        if (scan_start)
		begin
            run_env <= 1;
			complete_1 <= 0;
			err_no_data <= 0;
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
						err_no_data <= 1;
						complete_1 <= 0;
					end
					else
					begin
						err_no_data <= 0;
						complete_1 <= 1;
					end
				end
				else
				begin
					err_no_data <= 0;
					complete_1 <= 0;
				end
            end
            else
			begin
				err_no_data <= 0;
				complete_1 <= 0;
				
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
            p2_wr <= 0;
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
                        p2_wr <= 1;
                        run_env_start <= 0;
                        env_start_ind <= env_up_ind;
                    end
                end            
            end
            else
            begin
                env_up_max_val <= 0;
                p2_wr <= 0;
            end
        end
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
            0: phase_val <= phase_0;
            1: phase_val <= phase_1;
            2: phase_val <= phase_2;
            3: phase_val <= phase_3;
        endcase
    end

    always @(posedge clk) 
    begin
		if (scan_start)
			pred_phase <= {phase_val, 2'b00};
		else
			pred_phase <= pred_phase + {2'b00, in_freq};
	end

    always @(posedge clk) 
    begin
        p2_env <= env_up_val;
        p2_phase <= phase_val;
		p2_phase_diff <= phase_val - pred_phase[21:2];
    end

    always @(posedge clk) 
    begin
        complete_2 <= complete_1;
        p2_done <= complete_2;
    end

    always @(posedge clk) 
    begin
		if (complete_1)
		begin
			p2_sample[15:0] <= sample_counter_0;
			p2_sample[31:16] <= sample_counter_1;
			p2_sample[47:32] <= sample_counter_2;
			p2_sample[63:48] <= sample_counter_3;
            p2_freq <= in_freq;
            p2_angle <= in_angle;
			p2_size <= env_end_ind - env_start_ind + 1;
			p2_max_pos <= ((env_down_max_ind + env_up_max_ind) >> 1) - env_start_ind;
			p2_max_env <= env_up_max_val;
		end
	end

    always @(posedge clk) 
    begin
		if (complete_2)
		begin
			if (p2_max_pos[10:4])
			begin
				if (p2_size[10:2] - p2_max_pos[10:2] <= 4)
					df_start <= p2_size[10:2] - 9;
				else
					df_start <= p2_max_pos[10:2] - 4;
			end
			else
				df_start <= 0;
		end
	end

    always @(posedge clk) 
    begin
        if (p2_active)
		begin
			if (df_active)
			begin
				if (df_count == 8)
				begin
					df_active <= 0;
					df_diff <= p2_phase_diff_0 - df_low;
				end
				else
					df_count <= df_count + 1;
			end
			else
			begin
				df_count <= 0;
				
				if (df_ind == df_start)
				begin
					df_active <= 1;
					df_low <= p2_phase_diff_0;
				end
			end
			df_ind <= df_ind + 1;
		end
		else
		begin
			df_ind <= 0;
			df_active <= 0;
		end
	end

    always @(posedge clk) 
    begin
        if (p2_active)
        begin
            if (!p3_load)
            begin
                p3_load <= 1;
                p3_sample <= p2_sample;
                p3_freq <= p2_freq - df_diff[19:3];
                p3_angle <= p2_angle;
                p3_size <= p2_size;
                p3_max_pos <= p2_max_pos;
                p3_max_env <= p2_max_env;
            end
        end
        else
            p3_load <= 0;
    end
    
  end
    
endgenerate

endmodule
