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
	input wire [31:0] fifo_sample,
	input wire [8:0] fifo_size,
	input wire [19:0] fifo_freq,
	input wire [15:0] fifo_angle,

    input wire clk,
    input wire reset
);

  reg reset_int;
  
  reg [127:0] raw_in_data;
  reg raw_wr;

  wire [127:0] raw_out_data;
  reg raw_rd;
  wire raw_empty;
  reg [4:0] raw_delay;
  reg raw_valid;
  
  reg [31:0] raw_sample;

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

  reg [76:0] ana_in_data;
  reg ana_wr;
  
  wire [76:0] ana_out_data;
  reg ana_rd;
  wire ana_empty;
  reg ana_trig;
  wire [31:0] curr_sample = ana_out_data[31:0];

  reg run;
  reg [31:0] sample;
  reg [8:0] size;
  reg [19:0] freq;
  reg [15:0] angle;

  wire [3:0] valid;

  wire [15:0] env_0;  
  wire [15:0] env_1;  
  wire [15:0] env_2;  
  wire [15:0] env_3;  
  
  wire [19:0] phase_0;
  wire [19:0] phase_1;
  wire [19:0] phase_2;
  wire [19:0] phase_3;

fifo_comp_ana fifo_ana_i (
  .rst(reset),                  // input wire rst
  .wr_clk(fifo_clk),            // input wire wr_clk
  .rd_clk(clk),                 // input wire rd_clk
  .din(ana_in_data),            // input wire [76 : 0] din
  .wr_en(ana_wr),               // input wire wr_en
  .rd_en(ana_rd),               // input wire rd_en
  .dout(ana_out_data),          // output wire [76 : 0] dout
  .empty(ana_empty)             // output wire empty
);

fifo_comp_raw fifo_raw_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(raw_in_data),             // input wire [127 : 0] din
  .wr_en(raw_wr),                // input wire wr_en
  .rd_en(raw_rd),                // input wire rd_en
  .dout(raw_out_data),           // output wire [127 : 0] dout
  .empty(raw_empty)              // output wire empty
);

morlet_to_phase_env phase_env_i_0 (
  .clk(clk),                               // input wire aclk
  .active(raw_valid),
  .re({re_0, 8'h00}),
  .im({im_0, 8'h00}),
  .valid(valid[0]),
  .env(env_0),
  .phase(phase_0)
  );

morlet_to_phase_env phase_env_i_1 (
  .clk(clk),                               // input wire aclk
  .active(raw_valid),
  .re({re_1, 8'h00}),
  .im({im_1, 8'h00}),
  .valid(valid[1]),
  .env(env_1),
  .phase(phase_1)
  );

morlet_to_phase_env phase_env_i_2 (
  .clk(clk),                               // input wire aclk
  .active(raw_valid),
  .re({re_2, 8'h00}),
  .im({im_2, 8'h00}),
  .valid(valid[2]),
  .env(env_2),
  .phase(phase_2)
  );

morlet_to_phase_env phase_env_i_3 (
  .clk(clk),                               // input wire aclk
  .active(raw_valid),
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
		.probe3(raw_sample),          // input wire [31:0]  probe3
		.probe4(raw_valid),           // input wire [0:0]  probe3
		.probe5(ana_rd),              // input wire [0:0]  probe3
		.probe6(ana_empty),           // input wire [0:0]  probe3
		.probe7(curr_sample),         // input wire [31:0]  probe3
		.probe8(ana_trig),            // input wire [0:0]  probe3
		.probe9(run),                 // input wire [0:0]  probe3
		.probe10(sample),             // input wire [31:0]  probe3
		.probe11(size),               // input wire [8:0]  probe3
		.probe12(freq),               // input wire [19:0]  probe3
		.probe13(angle),              // input wire [15:0]  probe3
		.probe14(re_0),               // input wire [15:0]  probe3
		.probe15(re_1),               // input wire [15:0]  probe3
		.probe16(re_2),               // input wire [15:0]  probe3
		.probe17(re_3),               // input wire [15:0]  probe3
		.probe18(im_0),               // input wire [15:0]  probe3
		.probe19(im_1),               // input wire [15:0]  probe3
		.probe20(im_2),               // input wire [15:0]  probe3
		.probe21(im_3),               // input wire [15:0]  probe3
		.probe22(valid),              // input wire [3:0]  probe3
		.probe23(env_0),              // input wire [15:0]  probe3
		.probe24(env_1),              // input wire [15:0]  probe3
		.probe25(env_2),              // input wire [15:0]  probe3
		.probe26(env_3),              // input wire [15:0]  probe3
		.probe27(phase_0),            // input wire [19:0]  probe3
		.probe28(phase_1),            // input wire [19:0]  probe3
		.probe29(phase_2),            // input wire [19:0]  probe3
		.probe30(phase_3)             // input wire [19:0]  probe3
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
            ana_in_data[31:0] <= fifo_sample;
            ana_in_data[40:32] <= fifo_size;
            ana_in_data[60:41] <= fifo_freq;
            ana_in_data[76:61] <= fifo_angle;
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
        if (raw_rd & (!raw_empty))
        begin
            raw_valid <= 1;

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
            raw_valid <= 0;
	end

    always @(posedge clk) 
    begin
		if (raw_valid)
			raw_sample <= raw_sample + 1;
		else
			raw_sample <= 0;
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
            sample <= ana_out_data[31:0];
            size <= ana_out_data[40:32];
            freq <= ana_out_data[60:41];
            angle <= ana_out_data[76:61];
        end
        else
        begin
            ana_rd <= 0;
            
            if (size)
                size <= size - 1;
            else
                run <= 0;
        end
	end

  end
    
endgenerate

endmodule
