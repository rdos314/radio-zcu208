`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 14:06:36
// Design Name: 
// Module Name: comp_low
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


module comp_low(
	input wire ana_fifo_clk,
	input wire ana_fifo_wr,
	input wire [31:0] ana_fifo_sample,
	input wire [8:0] ana_fifo_size,
	input wire [19:0] ana_fifo_freq,
	input wire [15:0] ana_fifo_angle,
	input wire [5:0] ana_fifo_sample_N,
	input wire [5:0] ana_fifo_sample_E,
	input wire [5:0] ana_fifo_sample_W,
	
    input wire raw_fifo_clk,
    input wire raw_fifo_wr,
    input wire [127:0] raw_fifo_N,
    input wire [127:0] raw_fifo_E,
    input wire [127:0] raw_fifo_W,

    input wire clk,
    input wire reset,
    
    output reg active,
    output reg [63:0] re,
    output reg [63:0] im,

	output reg burst,
	output reg [31:0] sample,
	output reg [8:0] size,
	output reg [19:0] freq,
	output reg [15:0] angle
);

  reg [31:0] raw_sample;
  reg [127:0] raw_N;
  reg [127:0] raw_E;
  reg [127:0] raw_W;

  reg [383:0] raw_in_data;
  reg raw_wr;

  wire [383:0] raw_out_data;
  reg raw_rd;
  wire raw_empty;

  reg [9:0] raw_delay;
    
  reg [94:0] ana_in_data;
  reg ana_wr;
  
  wire [94:0] ana_out_data;
  wire ana_empty;
  reg ana_run;
  wire [31:0] curr_sample = ana_out_data[31:0];
  
  reg [5:0] sample_N;
  reg [5:0] sample_E;
  reg [5:0] sample_W;
  
  wire [127:0] data_N;
  wire [127:0] data_E;
  wire [127:0] data_W;
  
  reg [17:0] N0;
  reg [17:0] N1;
  reg [17:0] N2;
  reg [17:0] N3;
  reg [17:0] N4;
  reg [17:0] N5;
  reg [17:0] N6;
  reg [17:0] N7;
  
  reg [17:0] E0;
  reg [17:0] E1;
  reg [17:0] E2;
  reg [17:0] E3;
  reg [17:0] E4;
  reg [17:0] E5;
  reg [17:0] E6;
  reg [17:0] E7;
  
  reg [17:0] W0;
  reg [17:0] W1;
  reg [17:0] W2;
  reg [17:0] W3;
  reg [17:0] W4;
  reg [17:0] W5;
  reg [17:0] W6;
  reg [17:0] W7;
  
  reg [17:0] C0;
  reg [17:0] C1;
  reg [17:0] C2;
  reg [17:0] C3;
  reg [17:0] C4;
  reg [17:0] C5;
  reg [17:0] C6;
  reg [17:0] C7;
  
  reg [4:0] fir_delay;
  reg fir_active;
  wire deci_active;
  reg morlet_active;
  wire fir_re_run;
  wire fir_im_run;
  reg fir_saved;
  
  reg [191:0] deci_in;
  wire [159:0] deci_out;

  wire [39:0] deci_out_0 = deci_out[39:0];
  wire [39:0] deci_out_1 = deci_out[79:40];
  wire [39:0] deci_out_2 = deci_out[119:80];
  wire [39:0] deci_out_3 = deci_out[159:120];
  
  reg [15:0] deci_0;
  reg [15:0] deci_1;
  reg [15:0] deci_2;
  reg [15:0] deci_3;
  
  wire [63:0] fir_in = {deci_3, deci_2, deci_1, deci_0};
  
  wire [159:0] re_data;
  wire [159:0] im_data;
  
  wire [39:0] re_out_0 = re_data[39:0];
  wire [39:0] re_out_1 = re_data[79:40];
  wire [39:0] re_out_2 = re_data[119:80];
  wire [39:0] re_out_3 = re_data[159:120];
    
  wire [39:0] im_out_0 = im_data[39:0];
  wire [39:0] im_out_1 = im_data[79:40];
  wire [39:0] im_out_2 = im_data[119:80];
  wire [39:0] im_out_3 = im_data[159:120];

  reg [15:0] re_0;  
  reg [15:0] re_1;  
  reg [15:0] re_2;  
  reg [15:0] re_3;  

  reg [15:0] im_0;  
  reg [15:0] im_1;  
  reg [15:0] im_2;  
  reg [15:0] im_3;  

fifo_ana fifo_ana_i (
  .rst(reset),                  // input wire rst
  .wr_clk(ana_fifo_clk),        // input wire wr_clk
  .rd_clk(clk),                 // input wire rd_clk
  .din(ana_in_data),            // input wire [94 : 0] din
  .wr_en(ana_wr),               // input wire wr_en
  .rd_en(burst),                // input wire rd_en
  .dout(ana_out_data),          // output wire [94 : 0] dout
  .empty(ana_empty)             // output wire empty
);

fifo_raw_high fifo_raw_i (
  .rst(reset),                   // input wire rst
  .wr_clk(raw_fifo_clk),         // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(raw_in_data),             // input wire [383 : 0] din
  .wr_en(raw_wr),                // input wire wr_en
  .rd_en(raw_rd),                // input wire rd_en
  .dout(raw_out_data),           // output wire [383 : 0] dout
  .empty(raw_empty)              // output wire empty
);

comp_sel6 sel_N_i (
    .clk(clk),
    .reset(reset),
    .data_in(raw_N),
    .select(sample_N),
    .data_out(data_N)
    );

comp_sel6 sel_E_i (
    .clk(clk),
    .reset(reset),
    .data_in(raw_E),
    .select(sample_E),
    .data_out(data_E)
    );

comp_sel6 sel_W_i (
    .clk(clk),
    .reset(reset),
    .data_in(raw_W),
    .select(sample_W),
    .data_out(data_W)
    );

fir_comp_deci fir_deci_i (
  .aclk(clk),                               // input wire aclk
  .s_axis_data_tvalid(fir_active),          // input wire s_axis_data_tvalid
  .s_axis_data_tdata(deci_in),              // input wire [191 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(deci_active),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(deci_out)              // output wire [159 : 0] m_axis_data_tdata
);

fir_comp_low_re fir_re_i (
  .aclk(clk),                               // input wire aclk
  .s_axis_data_tvalid(morlet_active),       // input wire s_axis_data_tvalid
  .s_axis_data_tdata(fir_in),               // input wire [63 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(fir_re_run),          // output wire m_axis_data_tvalid
  .m_axis_data_tdata(re_data)               // output wire [159 : 0] m_axis_data_tdata
);

fir_comp_low_im fir_im_i (
  .aclk(clk),                               // input wire aclk
  .s_axis_data_tvalid(morlet_active),       // input wire s_axis_data_tvalid
  .s_axis_data_tdata(fir_in),               // input wire [63 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(fir_im_run),          // output wire m_axis_data_tvalid
  .m_axis_data_tdata(im_data)               // output wire [159 : 0] m_axis_data_tdata
);


	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(raw_rd),              // input wire [0:0]  probe3
		.probe1(raw_empty),           // input wire [0:0]  probe3
		.probe2(raw_delay),           // input wire [9:0]  probe3
		.probe3(raw_sample),          // input wire [31:0]  probe3
		.probe4(fir_delay),           // input wire [4:0]  probe3
		.probe5(fir_active),          // input wire [0:0]  probe3
		.probe6(deci_active),         // input wire [0:0]  probe3
		.probe7(ana_run),             // input wire [0:0]  probe3
		.probe8(active),              // input wire [0:0]  probe3
		.probe9(burst),               // input wire [0:0]  probe3
		.probe10(sample),              // input wire [31:0]  probe3
		.probe11(size),               // input wire [8:0]  probe3
		.probe12(freq),               // input wire [19:0]  probe3
		.probe13(angle),              // input wire [15:0]  probe3
		.probe14(re),                 // input wire [63:0]  probe3
		.probe15(im)                  // input wire [63:0]  probe3
	);

generate
  begin : comp_low

	always @(posedge raw_fifo_clk) 
    begin
		if (raw_fifo_wr)
		begin
			raw_in_data[127:0] <= raw_fifo_N;
            raw_in_data[255:128] <= raw_fifo_E;
            raw_in_data[383:256] <= raw_fifo_W;
            raw_wr <= 1;
		end
		else
            raw_wr <= 0;
    end

    always @(posedge clk) 
    begin
	   if (raw_empty)
	   begin
	       raw_delay <= 10'b1110000000;
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
			raw_N <= raw_out_data[127:0];
			raw_E <= raw_out_data[255:128];
			raw_W <= raw_out_data[383:256];
			
			if (fir_delay == 16)
				ana_run <= 1;

			if (fir_delay == 19)
			    fir_active <= 1;
			else
                fir_delay <= fir_delay + 1;
		end
		else
		begin
		    fir_delay <= 0;
		    fir_active <= 0;
			ana_run <= 0;
		end
	end

    always @(posedge clk) 
    begin
		if (ana_run)
			raw_sample <= raw_sample + 1;
		else
			raw_sample <= 0;
	end

    always @(posedge ana_fifo_clk) 
    begin
	   if (ana_fifo_wr)
       begin
            ana_in_data[31:0] <= ana_fifo_sample;
            ana_in_data[40:32] <= ana_fifo_size;
            ana_in_data[60:41] <= ana_fifo_freq;
            ana_in_data[76:61] <= ana_fifo_angle;
            ana_in_data[82:77] <= ana_fifo_sample_N;
            ana_in_data[88:83] <= ana_fifo_sample_E;
            ana_in_data[94:89] <= ana_fifo_sample_W;
            ana_wr <= 1;
       end
       else
            ana_wr <= 0;
    end
    
    always @(posedge clk) 
	begin
        if (ana_empty)
        begin
            burst <= 0;
            sample_N <= 0;
            sample_E <= 0;
            sample_W <= 0;
        end
        else
        begin
            if (curr_sample == raw_sample)
            begin
                burst <= 1;
                sample <= ana_out_data[31:0];
                size <= ana_out_data[40:32];
                freq <= ana_out_data[60:41];
                angle <= ana_out_data[76:61];
                sample_N <= ana_out_data[82:77];
                sample_E <= ana_out_data[88:83];
                sample_W <= ana_out_data[94:89];
            end
            else
                burst <= 0;
        end
	end

    always @(posedge clk) 
	begin
	   N0 <= {data_N[15], data_N[15], data_N[15:0]};
	   N1 <= {data_N[31], data_N[31], data_N[31:16]};
	   N2 <= {data_N[47], data_N[47], data_N[47:32]};
	   N3 <= {data_N[63], data_N[63], data_N[63:48]};
	   N4 <= {data_N[79], data_N[79], data_N[79:64]};
	   N5 <= {data_N[95], data_N[95], data_N[95:80]};
	   N6 <= {data_N[111], data_N[111], data_N[111:96]};
	   N7 <= {data_N[127], data_N[127], data_N[127:112]};

	   E0 <= {data_E[15], data_E[15], data_E[15:0]};
	   E1 <= {data_E[31], data_E[31], data_E[31:16]};
	   E2 <= {data_E[47], data_E[47], data_E[47:32]};
	   E3 <= {data_E[63], data_E[63], data_E[63:48]};
	   E4 <= {data_E[79], data_E[79], data_E[79:64]};
	   E5 <= {data_E[95], data_E[95], data_E[95:80]};
	   E6 <= {data_E[111], data_E[111], data_E[111:96]};
	   E7 <= {data_E[127], data_E[127], data_E[127:112]};

	   W0 <= {data_W[15], data_W[15], data_W[15:0]};
	   W1 <= {data_W[31], data_W[31], data_W[31:16]};
	   W2 <= {data_W[47], data_W[47], data_W[47:32]};
	   W3 <= {data_W[63], data_W[63], data_W[63:48]};
	   W4 <= {data_W[79], data_W[79], data_W[79:64]};
	   W5 <= {data_W[95], data_W[95], data_W[95:80]};
	   W6 <= {data_W[111], data_W[111], data_W[111:96]};
	   W7 <= {data_W[127], data_W[127], data_W[127:112]};
	end

    always @(posedge clk) 
	begin
	   C0 <= N0 + E0 + W0;
	   C1 <= N1 + E1 + W1;
	   C2 <= N2 + E2 + W2;
	   C3 <= N3 + E3 + W3;
	   C4 <= N4 + E4 + W4;
	   C5 <= N5 + E5 + W5;
	   C6 <= N6 + E6 + W6;
	   C7 <= N7 + E7 + W7;
	end

    always @(posedge clk) 
	begin
	   deci_in[23:0] <= {C0[17], C0[17], C0[17], C0[17], C0[17], C0[17], C0};
	   deci_in[47:24] <= {C1[17], C1[17], C1[17], C1[17], C1[17], C1[17], C1};
	   deci_in[71:48] <= {C2[17], C2[17], C2[17], C2[17], C2[17], C2[17], C2};
	   deci_in[95:72] <= {C3[17], C3[17], C3[17], C3[17], C3[17], C3[17], C3};
	   deci_in[119:96] <= {C4[17], C4[17], C4[17], C4[17], C4[17], C4[17], C4};
	   deci_in[143:120] <= {C5[17], C5[17], C5[17], C5[17], C5[17], C5[17], C5};
	   deci_in[167:144] <= {C6[17], C6[17], C6[17], C6[17], C6[17], C6[17], C6};
	   deci_in[191:168] <= {C7[17], C7[17], C7[17], C7[17], C7[17], C7[17], C7};	      
	end

    always @(posedge clk) 
	begin
	   if (deci_out_0[16])
    	   deci_0 <= deci_out_0[32:17] + 1;
        else
    	   deci_0 <= deci_out_0[32:17];

	   if (deci_out_1[16])
    	   deci_1 <= deci_out_1[32:17] + 1;
        else
    	   deci_1 <= deci_out_1[32:17];

	   if (deci_out_2[16])
    	   deci_2 <= deci_out_2[32:17] + 1;
        else
    	   deci_2 <= deci_out_2[32:17];

	   if (deci_out_3[16])
    	   deci_3 <= deci_out_3[32:17] + 1;
        else
    	   deci_3 <= deci_out_3[32:17];
	end

    always @(posedge clk) 
	begin
        morlet_active <= deci_active;
    end

    always @(posedge clk) 
	begin
	    if (re_out_0[19])
            re_0 <= re_out_0[35:20] + 1;
        else
            re_0 <= re_out_0[35:20];

	    if (re_out_1[19])
            re_1 <= re_out_1[35:20] + 1;
        else
            re_1 <= re_out_1[35:20];

	    if (re_out_2[19])
            re_2 <= re_out_2[35:20] + 1;
        else
            re_2 <= re_out_2[35:20];

	    if (re_out_3[19])
            re_3 <= re_out_3[35:20] + 1;
        else
            re_3 <= re_out_3[35:20];
    end

    always @(posedge clk) 
	begin
	    if (im_out_0[19])
            im_0 <= im_out_0[35:20] + 1;
        else
            im_0 <= im_out_0[35:20];

	    if (im_out_1[19])
            im_1 <= im_out_1[35:20] + 1;
        else
            im_1 <= im_out_1[35:20];

	    if (im_out_2[19])
            im_2 <= im_out_2[35:20] + 1;
        else
            im_2 <= im_out_2[35:20];

	    if (im_out_3[19])
            im_3 <= im_out_3[35:20] + 1;
        else
            im_3 <= im_out_3[35:20];
    end

    always @(posedge clk) 
	begin
        fir_saved <= fir_re_run;
        active <= fir_saved;
    end

    always @(posedge clk) 
	begin
	    if (fir_saved)
	    begin
	       re[15:0] <= re_0;
	       re[31:16] <= re_1;
	       re[47:32] <= re_2;
	       re[63:48] <= re_3;
	    end
    end

    always @(posedge clk) 
	begin
	    if (fir_saved)
	    begin
	       im[15:0] <= im_0;
	       im[31:16] <= im_1;
	       im[47:32] <= im_2;
	       im[63:48] <= im_3;
	    end
    end

  end
    
endgenerate

endmodule
