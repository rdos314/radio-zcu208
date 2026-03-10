`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 14:06:36
// Design Name: 
// Module Name: comp_env_phase
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module comp_ana(
    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire fifo_clk,
    
    input wire fifo_active,
    input wire [63:0] fifo_re,
    input wire [63:0] fifo_im,

	input wire fifo_burst,
	input wire [15:0] fifo_sample,
	input wire [8:0] fifo_size,
	input wire [19:0] fifo_freq,
	input wire [15:0] fifo_angle,
	input wire [9:0] fifo_doa_error,

    input wire pl_clk,
    input wire clk,
    input wire reset
);

    reg local_config_wr;
    reg [7:0] local_config_adr;
    reg [31:0] local_config_data;

	(* ASYNC_REG="TRUE" *)	reg  stat_0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_reset_2;

    wire stat_idle_in_0;
    reg stat_idle_sync_0;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_idle_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_idle_2;
	
    reg reset_int;
  
    reg [127:0] raw_in_data;
    reg raw_wr;

    wire [127:0] raw_out_1;
    reg raw_rd;
    wire raw_empty;
    reg [4:0] raw_delay;
    reg raw_run;

    reg [127:0] raw_out_2;
    reg [127:0] raw_out_data;
  
    reg [15:0] raw_sample;
    
    reg [15:0] sample_counter_0;
    reg [15:0] sample_counter_1;
    reg [15:0] sample_counter_2;
    reg [13:0] sample_counter_3;
    reg sample_ov_0;
    reg sample_ov_1;
    reg sample_ov_2;

    wire [63:0] raw_re = raw_out_data[63:0];
    wire [63:0] raw_im = raw_out_data[127:64];

    reg [15:0] re_0;
    reg [15:0] re_1;
    reg [15:0] re_2;
    reg [15:0] re_3;

    reg [15:0] im_0;
    reg [15:0] im_1;
    reg [15:0] im_2;
    reg [15:0] im_3;

    reg [70:0] ana_in_data;
    reg ana_wr;
  
    wire [70:0] ana_out_data;
    reg ana_rd;
    wire ana_empty;
    reg ana_trig;
    wire [15:0] curr_sample = ana_out_data[15:0];

    reg run;
    reg [15:0] sample;
    reg [8:0] count;
    reg [8:0] size;

    wire [3:0] valid;

    wire [15:0] env_0;  
    wire [15:0] env_1;  
    wire [15:0] env_2;  
    wire [15:0] env_3;  
  
    wire [19:0] phase_0;
    wire [19:0] phase_1;
    wire [19:0] phase_2;
    wire [19:0] phase_3;

	reg [61:0] pend_sample;
    reg [19:0] pend_freq;
    reg [15:0] pend_angle;
    reg [9:0] pend_doa_error;
    
    wire stat_01_clk_buf;
    wire stat_clk_0_raw;
    wire stat_clk_1_raw;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_0, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_0;

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_CLK_1, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	wire stat_clk_1;
	
	reg stat_reset_0;
	reg stat_reset_1;

    reg [2:0] curr_stat;
	reg [7:0] stat_start;
	reg [7:0] stat_wr;    
	reg [7:0] stat_idle;

	reg [61:0] stat_sample [0:7];
    reg [19:0] stat_freq [0:7];
    reg [15:0] stat_angle [0:7];
    reg [9:0] stat_doa_error [0:7];

    reg [15:0] stat_env_0 [0:7]; 
    reg [15:0] stat_env_1 [0:7];
    reg [15:0] stat_env_2 [0:7];  
    reg [15:0] stat_env_3 [0:7];
  
    reg [19:0] stat_phase_0 [0:7];
    reg [19:0] stat_phase_1 [0:7];
    reg [19:0] stat_phase_2 [0:7];
    reg [19:0] stat_phase_3 [0:7];

    wire [7:0] stat_pend;
    wire [7:0] stat_avail;
    wire [19:0] stat_pos [0:7];
    reg [7:0] stat_get;
    wire [7:0] stat_active;
    wire [255:0] stat_data [0:7];

	clk_wiz_stat clk_wiz_stat_i (
		.clk_in1	(pl_clk),
		.clk_out1	(stat_clk_0_raw)
    );

	BUFG stat_clk_0_i (
		.I			(stat_clk_0_raw),
		.O			(stat_clk_0));

    fifo_comp_ana fifo_ana_i (
        .rst(reset_int),              // input wire rst
        .wr_clk(fifo_clk),            // input wire wr_clk
        .rd_clk(clk),                 // input wire rd_clk
        .din(ana_in_data),            // input wire [70 : 0] din
        .wr_en(ana_wr),               // input wire wr_en
        .rd_en(ana_rd),               // input wire rd_en
        .dout(ana_out_data),          // output wire [70 : 0] dout
        .empty(ana_empty)             // output wire empty
    );

    fifo_comp_raw fifo_raw_i (
        .rst(reset_int),               // input wire rst
        .wr_clk(fifo_clk),             // input wire wr_clk
        .rd_clk(clk),                  // input wire rd_clk
        .din(raw_in_data),             // input wire [127 : 0] din
        .wr_en(raw_wr),                // input wire wr_en
        .rd_en(raw_rd),                // input wire rd_en
        .dout(raw_out_1),              // output wire [127 : 0] dout
        .empty(raw_empty)              // output wire empty
    );

    morlet_to_phase_env phase_env_i_0 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_0, 8'h00}),
        .im({im_0, 8'h00}),
        .valid(valid[0]),
        .env(env_0),
        .phase(phase_0)
    );

    morlet_to_phase_env phase_env_i_1 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_1, 8'h00}),
        .im({im_1, 8'h00}),
        .valid(valid[1]),
        .env(env_1),
        .phase(phase_1)
    );

    morlet_to_phase_env phase_env_i_2 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_2, 8'h00}),
        .im({im_2, 8'h00}),
        .valid(valid[2]),
        .env(env_2),
        .phase(phase_2)
    );

    morlet_to_phase_env phase_env_i_3 (
        .clk(clk),                               // input wire aclk
        .active(raw_run),
        .re({re_3, 8'h00}),
        .im({im_3, 8'h00}),
        .valid(valid[3]),
        .env(env_3),
        .phase(phase_3)
    );

    comp_burst burst_0(
        .config_clk(config_clk),
        .config_wr(local_config_wr),
        .config_adr(local_config_adr),
        .config_data(local_config_data),
        .rt_clk(clk),
        .rt_reset(reset_int),
        .rt_start(stat_start[0]),
        .rt_sample(stat_sample[0]),
        .rt_freq(stat_freq[0]),
        .rt_angle(stat_angle[0]),
        .rt_doa_error(stat_doa_error[0]),
        .rt_wr(stat_wr[0]),    
        .rt_env_0(stat_env_0[0]), 
        .rt_env_1(stat_env_1[0]), 
        .rt_env_2(stat_env_2[0]), 
        .rt_env_3(stat_env_3[0]), 
        .rt_phase_0(stat_phase_0[0]),
        .rt_phase_1(stat_phase_1[0]),
        .rt_phase_2(stat_phase_2[0]),
        .rt_phase_3(stat_phase_3[0]),
        .pend(stat_pend[0]),
        .avail(stat_avail[0]),
        .sample(stat_pos[0]),
        .get(stat_get[0]),
        .wr(stat_active[0]),
        .data(stat_data[0]),
        .clk(stat_clk_0),
        .reset(stat_reset_0),
        .idle(stat_idle_in_0)
    );

/*
	ila_1 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(ana_trig),            // input wire [0:0]  probe3
		.probe1(run),                 // input wire [0:0]  probe3
		.probe2(size),                // input wire [8:0]  probe3
		.probe3(count),               // input wire [8:0]  probe3
		.probe4(valid),               // input wire [3:0]  probe3
		.probe5(stat_start),          // input wire [7:0]  probe3
		.probe6(stat_wr),             // input wire [7:0]  probe3
		.probe7(stat_idle)            // input wire [7:0]  probe3
	);
*/

generate
  begin : comp_ana

	always @(posedge config_clk) 
	begin
        local_config_wr <= config_wr;
        local_config_adr <= config_adr;
        local_config_data <= config_data;
    end

	always @(posedge stat_clk_0) 
	begin
		stat_0_reset_1 <= reset_int;
		stat_0_reset_2 <= stat_0_reset_1;
		stat_reset_0 <= stat_0_reset_2;
	end

	always @(posedge stat_clk_1) 
	begin
		stat_1_reset_1 <= reset_int;
		stat_1_reset_2 <= stat_1_reset_1;
		stat_reset_1 <= stat_1_reset_2;
	end

	always @(posedge stat_clk_0) 
	begin
	    stat_idle_sync_0 <= stat_idle_in_0;
	end
	
	always @(posedge clk) 
	begin
		stat_0_idle_1 <= stat_idle_sync_0;
		stat_0_idle_2 <= stat_0_idle_1;
		stat_idle[0] <= stat_0_idle_2 & !stat_wr[0] & !stat_start[0];
	end

	always @(posedge fifo_clk) 
    begin
		if (fifo_active)
		begin
			raw_in_data[63:0] <= fifo_re;
            raw_in_data[127:64] <= fifo_im;
            raw_wr <= 1;
		end
		else
            raw_wr <= 0;
    end

    always @(posedge fifo_clk) 
    begin
	   if (fifo_burst)
       begin
            ana_in_data[15:0] <= fifo_sample;
            ana_in_data[24:16] <= fifo_size;
            ana_in_data[44:25] <= fifo_freq;
            ana_in_data[60:45] <= fifo_angle;
            ana_in_data[70:61] <= fifo_doa_error;
            ana_wr <= 1;
       end
       else
            ana_wr <= 0;
    end

    always @(posedge clk) 
    begin
	   if (raw_empty)
	   begin
	       raw_delay <= 5'b11111;
           raw_rd <= 0;
       end
	   else
	   begin
	       if (raw_delay)
	       begin
	           raw_rd <= 0;
	           raw_delay <= raw_delay - 1;
	       end
	       else
	           raw_rd <= 1;
       end
    end

    always @(posedge clk) 
    begin
        raw_out_2 <= raw_out_1;
        raw_out_data <= raw_out_2;
    end

    always @(posedge clk) 
	begin
        if (raw_rd & (!raw_empty))
        begin
            raw_run <= 1;

            re_0 <= raw_re[15:0];
            re_1 <= raw_re[31:16];
            re_2 <= raw_re[47:32];
            re_3 <= raw_re[63:48];

            im_0 <= raw_im[15:0];
            im_1 <= raw_im[31:16];
            im_2 <= raw_im[47:32];
            im_3 <= raw_im[63:48];
        end
        else
            raw_run <= 0;
	end

    always @(posedge clk) 
    begin
		if (valid)
			raw_sample <= raw_sample + 1;
		else
			raw_sample <= 0;
	end

    always @(posedge clk) 
    begin
		if (valid)
        begin
            sample_counter_0 <= sample_counter_0 + 1;
            if (sample_counter_0 == 16'hFFFE)
                sample_ov_0 <= 1;
            else
                sample_ov_0 <= 0;
        end
        else
        begin
            sample_counter_0 <= 0;
            sample_ov_0 <= 0;
        end
    end

    always @(posedge clk) 
    begin
		if (valid)
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
            sample_counter_1 <= 0;
            sample_ov_1 <= 0;
        end
    end

    always @(posedge clk) 
    begin
		if (valid)
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
            sample_counter_2 <= 0;
            sample_ov_2 <= 0;
        end
    end

    always @(posedge clk) 
    begin
		if (valid)
        begin
            if (sample_ov_0 & sample_ov_1 & sample_ov_2)
                sample_counter_3 <= sample_counter_3 + 1;
        end
        else
            sample_counter_3 <= 0;
    end
                    
    always @(posedge clk) 
	begin
        reset_int <= reset;
    end

    always @(posedge clk) 
	begin
        if (valid)
        begin
            if (curr_sample == raw_sample)
                ana_trig <= 1;
            else
                ana_trig <= 0;
        end
        else
            ana_trig <= 0;
    end

    always @(posedge clk) 
	begin
		curr_stat <= 0;
	end
    
    always @(posedge clk) 
	begin
        if (count == 1)
        begin
            stat_sample[curr_stat] <= pend_sample;
            stat_freq[curr_stat] <= pend_freq;
            stat_angle[curr_stat] <= pend_angle;
            stat_doa_error[curr_stat] <= pend_doa_error;
            stat_start[curr_stat] <= 1;
        end
        else
            stat_start <= 0;
	end

    always @(posedge clk) 
	begin
        if (ana_trig & !ana_empty)
        begin
            ana_rd <= 1;
            run <= 1;
            size <= ana_out_data[24:16];
            count <= ana_out_data[24:16];
            stat_wr <= 0;
			
            pend_sample <= {sample_counter_3, sample_counter_2, sample_counter_1, sample_counter_0};
            pend_freq <= ana_out_data[44:25];
            pend_angle <= ana_out_data[60:45];
            pend_doa_error <= ana_out_data[70:61];
        end
        else
        begin
            ana_rd <= 0;
            
            if (count)
            begin
                count <= count - 1;
                stat_wr[curr_stat] <= 1;

                stat_env_0[curr_stat] <= env_0;
                stat_env_1[curr_stat] <= env_1;
                stat_env_2[curr_stat] <= env_2;
                stat_env_3[curr_stat] <= env_3;

                stat_phase_0[curr_stat] <= phase_0;
                stat_phase_1[curr_stat] <= phase_1;
                stat_phase_2[curr_stat] <= phase_2;
                stat_phase_3[curr_stat] <= phase_3;                        
            end
            else
            begin
                run <= 0;
                stat_wr <= 0;
            end
        end
	end

    always @(posedge clk) 
	begin
        if (stat_get[0])
            stat_get[0] <= 0;
        else
            stat_get[0] <= stat_avail[0];
    end

  end
    
endgenerate

endmodule
