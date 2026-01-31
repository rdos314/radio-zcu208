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

    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire clk,
    input wire reset
);

    wire [39:0] config_data_adr_in;
    assign config_data_adr_in[7:0] = config_adr;
    assign config_data_adr_in[39:8] = config_data;

    wire [39:0] config_data_adr_out;
    wire [7:0] cfg_adr = config_data_adr_out[7:0];
    wire [31:0] cfg_data = config_data_adr_out[39:8];
    reg cfg_rd;
    wire cfg_empty;
    
    reg [15:0] min_env;

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
    
    reg [0:0] curr_ana;

    reg [1:0] burst;
    reg [1:0] wr_data;
    wire [1:0] err_no_data;

    reg [61:0] sample_0;
    reg [19:0] freq_0;
    reg [15:0] angle_0;
    
    reg [15:0] env_0_0;
    reg [15:0] env_1_0;
    reg [15:0] env_2_0;
    reg [15:0] env_3_0;

    reg [19:0] phase_0_0;
    reg [19:0] phase_1_0;
    reg [19:0] phase_2_0;
    reg [19:0] phase_3_0;

    reg [61:0] sample_1;
    reg [19:0] freq_1;
    reg [15:0] angle_1;
    
    reg [15:0] env_0_1;
    reg [15:0] env_1_1;
    reg [15:0] env_2_1;
    reg [15:0] env_3_1;

    reg [19:0] phase_0_1;
    reg [19:0] phase_1_1;
    reg [19:0] phase_2_1;
    reg [19:0] phase_3_1;

fifo_config fifo_config_i (
  .rst(reset),                   // input wire rst
  .wr_clk(config_clk),           // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(config_data_adr_in),      // input wire [39 : 0] din
  .wr_en(config_wr),             // input wire wr_en
  .rd_en(cfg_rd),                // input wire rd_en
  .dout(config_data_adr_out),    // output wire [39 : 0] dout
  .empty(cfg_empty)              // output wire empty
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

comp_burst burst_i_0 (
  .clk(clk),                          
  .reset(reset),
  .min_env(min_env),
  .burst(burst[0]),
  .in_sample(sample_0),
  .in_freq(freq_0),
  .in_angle(angle_0),
  .wr_data(wr_data[0]),
  .in_env_0(env_0_0),
  .in_env_1(env_1_0),
  .in_env_2(env_2_0),
  .in_env_3(env_3_0),
  .in_phase_0(phase_0_0),
  .in_phase_1(phase_1_0),
  .in_phase_2(phase_2_0),
  .in_phase_3(phase_3_0),
  .err_no_data(err_no_data[0])
  );

comp_burst burst_i_1 (
  .clk(clk),                          
  .reset(reset),
  .min_env(min_env),
  .burst(burst[1]),
  .in_sample(sample_1),
  .in_freq(freq_1),
  .in_angle(angle_1),
  .wr_data(wr_data[1]),
  .in_env_0(env_0_1),
  .in_env_1(env_1_1),
  .in_env_2(env_2_1),
  .in_env_3(env_3_1),
  .in_phase_0(phase_0_1),
  .in_phase_1(phase_1_1),
  .in_phase_2(phase_2_1),
  .in_phase_3(phase_3_1),
  .err_no_data(err_no_data[1])
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
		.probe18(sample_ov_0),        // input wire [0:0]  probe3
		.probe19(sample_ov_1),        // input wire [0:0]  probe3
		.probe20(sample_ov_2),        // input wire [0:0]  probe3
		.probe21(curr_ana),           // input wire [0:0]  probe3
		.probe22(burst),              // input wire [1:0]  probe3
		.probe23(wr_data),            // input wire [1:0]  probe3
		.probe24(env_0),              // input wire [15:0]  probe3
		.probe25(env_1),              // input wire [15:0]  probe3
		.probe26(env_2),              // input wire [15:0]  probe3
		.probe27(env_3),              // input wire [15:0]  probe3
		.probe28(phase_0),            // input wire [19:0]  probe3
		.probe29(phase_1),            // input wire [19:0]  probe3
		.probe30(phase_2),            // input wire [19:0]  probe3
		.probe31(phase_3)             // input wire [19:0]  probe3
	);

generate
  begin : comp_ana

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
        if (cfg_empty)
            cfg_rd <= 0;
        else
            cfg_rd <= 1;
    end

    always @(posedge clk) 
	begin
        if (cfg_rd)
        begin
            case (cfg_adr)
                0 : min_env <= cfg_data[15:0];
            endcase            
        end
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
        if (ana_trig & !ana_empty)
        begin
            ana_rd <= 1;
            run <= 1;
            size <= ana_out_data[24:16];
            count <= ana_out_data[24:16];
            wr_data <= 0;

            case (curr_ana)
                0 :
                begin
                    sample_0 <= {sample_counter_3, sample_counter_2, sample_counter_1, sample_counter_0};
                    freq_0 <= ana_out_data[44:25];
                    angle_0 <= ana_out_data[60:45];
                    burst[0] <= 1;
                end

                1 :
                begin
                    sample_1 <= {sample_counter_3, sample_counter_2, sample_counter_1, sample_counter_0};
                    freq_1 <= ana_out_data[44:25];
                    angle_1 <= ana_out_data[60:45];
                    burst[1] <= 1;
                end
            endcase
        end
        else
        begin
            ana_rd <= 0;
            burst <= 0;
            
            if (count)
            begin
                count <= count - 1;

                case (curr_ana)
                    0 :
                    begin
                        wr_data[0] <= 1;
                        env_0_0 <= env_0;
                        env_1_0 <= env_1;
                        env_2_0 <= env_2;
                        env_3_0 <= env_3;
                        phase_0_0 <= phase_0;
                        phase_1_0 <= phase_1;
                        phase_2_0 <= phase_2;
                        phase_3_0 <= phase_3;                        
                    end

                    1 :
                    begin
                        wr_data[1] <= 1;
                        env_0_1 <= env_0;
                        env_1_1 <= env_1;
                        env_2_1 <= env_2;
                        env_3_1 <= env_3;
                        phase_0_1 <= phase_0;
                        phase_1_1 <= phase_1;
                        phase_2_1 <= phase_2;
                        phase_3_1 <= phase_3;                        
                    end
                endcase
            end
            else
            begin
                if (run)
                    curr_ana <= curr_ana + 1;
                else
                begin
                    if (reset)
                        curr_ana <= 0;
                end
                
                run <= 0;
                wr_data <= 0;
            end
        end
	end


  end
    
endgenerate

endmodule
