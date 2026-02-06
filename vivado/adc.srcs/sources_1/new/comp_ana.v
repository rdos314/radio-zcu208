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
    input wire fifo_clk,
    
    input wire fifo_active,
    input wire [63:0] fifo_re,
    input wire [63:0] fifo_im,

	input wire fifo_burst,
	input wire [15:0] fifo_sample,
	input wire [8:0] fifo_size,
	input wire [19:0] fifo_freq,
	input wire [15:0] fifo_angle,

    input wire clk,
    input wire reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire stat_0_clk,
    output reg  stat_0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME STAT_1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire stat_1_clk,
    output reg  stat_1_reset,
	
	output reg stat_sel_0,

	output reg stat_start,
	output reg [61:0] stat_sample,
    output reg [19:0] stat_freq,
    output reg [15:0] stat_angle,

	output reg stat_wr,    
    output reg [15:0] stat_env_0, 
    output reg [15:0] stat_env_1, 
    output reg [15:0] stat_env_2,  
    output reg [15:0] stat_env_3,  
  
    output reg [19:0] stat_phase_0,
    output reg [19:0] stat_phase_1,
    output reg [19:0] stat_phase_2,
    output reg [19:0] stat_phase_3
);

	(* ASYNC_REG="TRUE" *)	reg  stat_0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  stat_1_reset_2;
	
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

    reg [60:0] ana_in_data;
    reg ana_wr;
  
    wire [60:0] ana_out_data;
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

	BUFG stat_clk_i (
		.I			(clk),
		.O			(clk_buf));

	clk_wiz_stat clk_wiz_stat_01 (
		.clk_in1	(clk_buf),
		.clk_out1	(stat_0_clk),
		.clk_out2	(stat_1_clk),
		.locked		(stat_01_locked)
		);



fifo_comp_ana fifo_ana_i (
  .rst(reset),                  // input wire rst
  .wr_clk(fifo_clk),            // input wire wr_clk
  .rd_clk(clk),                 // input wire rd_clk
  .din(ana_in_data),            // input wire [60 : 0] din
  .wr_en(ana_wr),               // input wire wr_en
  .rd_en(ana_rd),               // input wire rd_en
  .dout(ana_out_data),          // output wire [60 : 0] dout
  .empty(ana_empty)             // output wire empty
);

fifo_comp_raw fifo_raw_i (
  .rst(reset),                   // input wire rst
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

	ila_1 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(raw_rd),              // input wire [0:0]  probe3
		.probe1(raw_empty),           // input wire [0:0]  probe3
		.probe2(raw_delay),           // input wire [4:0]  probe3
		.probe3(raw_sample),          // input wire [15:0]  probe3
		.probe4(raw_run),             // input wire [0:0]  probe3
		.probe5(ana_rd),              // input wire [0:0]  probe3
		.probe6(ana_empty),           // input wire [0:0]  probe3
		.probe7(curr_sample),         // input wire [15:0]  probe3
		.probe8(ana_trig),            // input wire [0:0]  probe3
		.probe9(run),                 // input wire [0:0]  probe3
		.probe10(sample),             // input wire [15:0]  probe3
		.probe11(size),               // input wire [8:0]  probe3
		.probe12(count),              // input wire [8:0]  probe3
		.probe13(valid),              // input wire [3:0]  probe3
		.probe14(sample_counter_0),   // input wire [15:0]  probe3
		.probe15(sample_counter_1),   // input wire [15:0]  probe3
		.probe16(sample_counter_2),   // input wire [15:0]  probe3
		.probe17(sample_counter_3),   // input wire [15:0]  probe3
		.probe18(stat_sel),           // input wire [0:0]  probe3
		.probe19(stat_start),         // input wire [0:0]  probe3
		.probe20(stat_sample),        // input wire [61:0]  probe3
		.probe21(stat_freq),          // input wire [19:0]  probe3
		.probe22(stat_angle),         // input wire [15:0]  probe3
		.probe23(stat_wr),            // input wire [0:0]  probe3
		.probe24(stat_env_0),         // input wire [15:0]  probe3
		.probe25(stat_env_1),         // input wire [15:0]  probe3
		.probe26(stat_env_2),         // input wire [15:0]  probe3
		.probe27(stat_env_3),         // input wire [15:0]  probe3
		.probe28(stat_phase_0),       // input wire [19:0]  probe3
		.probe29(stat_phase_1),       // input wire [19:0]  probe3
		.probe30(stat_phase_2),       // input wire [19:0]  probe3
		.probe31(stat_phase_3)        // input wire [19:0]  probe3
	);

generate
  begin : comp_ana

	always @(posedge stat_0_clk) 
	begin
		stat_0_reset_1 <= reset_int | (~stat_01_locked);
		stat_0_reset_2 <= stat_0_reset_1;
		stat_0_reset <= stat_0_reset_2;
	end

	always @(posedge stat_1_clk) 
	begin
		stat_1_reset_1 <= reset_int | (~stat_01_locked);
		stat_1_reset_2 <= stat_1_reset_1;
		stat_1_reset <= stat_1_reset_2;
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
        if (curr_sample == raw_sample)
            ana_trig <= 1;
        else
            ana_trig <= 0;
    end

    always @(posedge clk) 
	begin
		stat_sel_0 <= 1;
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
			stat_start <= 0;
			
            stat_sample <= {sample_counter_3, sample_counter_2, sample_counter_1, sample_counter_0};
            stat_freq <= ana_out_data[44:25];
            stat_angle <= ana_out_data[60:45];
        end
        else
        begin
            ana_rd <= 0;
            
            if (count)
            begin
                count <= count - 1;
                stat_wr <= 1;
				stat_start <= 0;

                stat_env_0 <= env_0;
                stat_env_1 <= env_1;
                stat_env_2 <= env_2;
                stat_env_3 <= env_3;

                stat_phase_0 <= phase_0;
                stat_phase_1 <= phase_1;
                stat_phase_2 <= phase_2;
                stat_phase_3 <= phase_3;                        
            end
            else
            begin
				stat_start <= stat_wr;
                run <= 0;
                stat_wr <= 0;
            end
        end
	end


  end
    
endgenerate

endmodule
