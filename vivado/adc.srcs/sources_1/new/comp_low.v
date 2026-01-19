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
	input wire [15:0] ana_fifo_sample,
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
	output reg [15:0] sample,
	output reg [8:0] size,
	output reg [19:0] freq,
	output reg [15:0] angle
);

  reg reset_int;
  
  reg [15:0] raw_sample;
  reg [127:0] raw_N;
  reg [127:0] raw_E;
  reg [127:0] raw_W;
  
  wire [15:0] raw_N0 = raw_N[15:0];
  wire [15:0] raw_N1 = raw_N[31:16];
  wire [15:0] raw_N2 = raw_N[47:32];
  wire [15:0] raw_N3 = raw_N[63:48];
  wire [15:0] raw_N4 = raw_N[79:64];
  wire [15:0] raw_N5 = raw_N[95:80];
  wire [15:0] raw_N6 = raw_N[111:96];
  wire [15:0] raw_N7 = raw_N[127:112];

  wire [15:0] raw_E0 = raw_E[15:0];
  wire [15:0] raw_E1 = raw_E[31:16];
  wire [15:0] raw_E2 = raw_E[47:32];
  wire [15:0] raw_E3 = raw_E[63:48];
  wire [15:0] raw_E4 = raw_E[79:64];
  wire [15:0] raw_E5 = raw_E[95:80];
  wire [15:0] raw_E6 = raw_E[111:96];
  wire [15:0] raw_E7 = raw_E[127:112];

  wire [15:0] raw_W0 = raw_W[15:0];
  wire [15:0] raw_W1 = raw_W[31:16];
  wire [15:0] raw_W2 = raw_W[47:32];
  wire [15:0] raw_W3 = raw_W[63:48];
  wire [15:0] raw_W4 = raw_W[79:64];
  wire [15:0] raw_W5 = raw_W[95:80];
  wire [15:0] raw_W6 = raw_W[111:96];
  wire [15:0] raw_W7 = raw_W[127:112];

  reg [383:0] raw_in_data;
  reg raw_wr;

  wire [383:0] raw_out_data;
  reg raw_rd;
  wire raw_empty;
  reg raw_run;

  reg [9:0] raw_delay;
    
  reg [78:0] ana_in_data;
  reg ana_wr;
  
  wire [78:0] ana_out_data;
  wire ana_empty;
  wire [15:0] curr_sample = ana_out_data[15:0];
  reg ana_trig;
  
  reg [5:0] sample_N;
  reg [5:0] sample_E;
  reg [5:0] sample_W;
  
  wire [127:0] data_N;
  wire [127:0] data_E;
  wire [127:0] data_W;
  
  wire [15:0] data_N0 = data_N[15:0];
  wire [15:0] data_N1 = data_N[31:16];
  wire [15:0] data_N2 = data_N[47:32];
  wire [15:0] data_N3 = data_N[63:48];
  wire [15:0] data_N4 = data_N[79:64];
  wire [15:0] data_N5 = data_N[95:80];
  wire [15:0] data_N6 = data_N[111:96];
  wire [15:0] data_N7 = data_N[127:112];
  
  wire [15:0] data_E0 = data_E[15:0];
  wire [15:0] data_E1 = data_E[31:16];
  wire [15:0] data_E2 = data_E[47:32];
  wire [15:0] data_E3 = data_E[63:48];
  wire [15:0] data_E4 = data_E[79:64];
  wire [15:0] data_E5 = data_E[95:80];
  wire [15:0] data_E6 = data_E[111:96];
  wire [15:0] data_E7 = data_E[127:112];
  
  wire [15:0] data_W0 = data_W[15:0];
  wire [15:0] data_W1 = data_W[31:16];
  wire [15:0] data_W2 = data_W[47:32];
  wire [15:0] data_W3 = data_W[63:48];
  wire [15:0] data_W4 = data_W[79:64];
  wire [15:0] data_W5 = data_W[95:80];
  wire [15:0] data_W6 = data_W[111:96];
  wire [15:0] data_W7 = data_W[127:112];
  
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
  
  reg [4:0] select_delay;
  reg deci_run;
  wire deci_active;
  reg fir_run;
  wire fir_re_active = 0;
  wire fir_im_active = 0;
  
  reg [191:0] deci_in;
  wire [159:0] deci_out;

  wire [39:0] deci_out_0 = deci_out[39:0];
  wire [39:0] deci_out_1 = deci_out[79:40];
  wire [39:0] deci_out_2 = deci_out[119:80];
  wire [39:0] deci_out_3 = deci_out[159:120];
  
  reg [19:0] deci_0;
  reg [19:0] deci_1;
  reg [19:0] deci_2;
  reg [19:0] deci_3;
  
  wire [63:0] fir_in = {deci_3[15:0], deci_2[15:0], deci_1[15:0], deci_0[15:0]};
  
  wire [159:0] re_data = 0;
  wire [159:0] im_data = 0;
  
  wire [39:0] re_out_0 = re_data[39:0];
  wire [39:0] re_out_1 = re_data[79:40];
  wire [39:0] re_out_2 = re_data[119:80];
  wire [39:0] re_out_3 = re_data[159:120];
    
  wire [39:0] im_out_0 = im_data[39:0];
  wire [39:0] im_out_1 = im_data[79:40];
  wire [39:0] im_out_2 = im_data[119:80];
  wire [39:0] im_out_3 = im_data[159:120];

  reg [19:0] re_0;  
  reg [19:0] re_1;  
  reg [19:0] re_2;  
  reg [19:0] re_3;  

  reg [19:0] im_0;  
  reg [19:0] im_1;  
  reg [19:0] im_2;  
  reg [19:0] im_3;  

fifo_ana fifo_ana_i (
  .rst(reset),                  // input wire rst
  .wr_clk(ana_fifo_clk),        // input wire wr_clk
  .rd_clk(clk),                 // input wire rd_clk
  .din(ana_in_data),            // input wire [78 : 0] din
  .wr_en(ana_wr),               // input wire wr_en
  .rd_en(burst),                // input wire rd_en
  .dout(ana_out_data),          // output wire [78 : 0] dout
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
    .reset(reset_int),
    .data_in(raw_N),
    .select(sample_N),
    .data_out(data_N)
    );

comp_sel6 sel_E_i (
    .clk(clk),
    .reset(reset_int),
    .data_in(raw_E),
    .select(sample_E),
    .data_out(data_E)
    );

comp_sel6 sel_W_i (
    .clk(clk),
    .reset(reset_int),
    .data_in(raw_W),
    .select(sample_W),
    .data_out(data_W)
    );

fir_comp_deci fir_deci_i (
  .aclk(clk),                               // input wire aclk
  .s_axis_data_tvalid(deci_run),           // input wire s_axis_data_tvalid
  .s_axis_data_tdata(deci_in),              // input wire [191 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(deci_active),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(deci_out)              // output wire [159 : 0] m_axis_data_tdata
);

/*
fir_comp_low_re fir_re_i (
  .aclk(clk),                               // input wire aclk
  .s_axis_data_tvalid(fir_run),             // input wire s_axis_data_tvalid
  .s_axis_data_tdata(fir_in),               // input wire [63 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(fir_re_active),       // output wire m_axis_data_tvalid
  .m_axis_data_tdata(re_data)               // output wire [159 : 0] m_axis_data_tdata
);

fir_comp_low_im fir_im_i (
  .aclk(clk),                               // input wire aclk
  .s_axis_data_tvalid(fir_run),             // input wire s_axis_data_tvalid
  .s_axis_data_tdata(fir_in),               // input wire [63 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(fir_im_active),       // output wire m_axis_data_tvalid
  .m_axis_data_tdata(im_data)               // output wire [159 : 0] m_axis_data_tdata
);
*/

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(ana_trig),            // input wire [0:0]  probe3
		.probe1(sample_N),            // input wire [5:0]  probe3
		.probe2(sample_E),            // input wire [5:0]  probe3
		.probe3(sample_W),            // input wire [5:0]  probe3
		.probe4(raw_N0),              // input wire [15:0]  probe3
		.probe5(raw_N1),              // input wire [15:0]  probe3
		.probe6(raw_N2),              // input wire [15:0]  probe3
		.probe7(raw_N3),              // input wire [15:0]  probe3
		.probe8(raw_N4),              // input wire [15:0]  probe3
		.probe9(raw_N5),              // input wire [15:0]  probe3
		.probe10(raw_N6),             // input wire [15:0]  probe3
		.probe11(raw_N7),             // input wire [15:0]  probe3
		.probe12(raw_E0),              // input wire [15:0]  probe3
		.probe13(raw_E1),              // input wire [15:0]  probe3
		.probe14(raw_E2),              // input wire [15:0]  probe3
		.probe15(raw_E3),              // input wire [15:0]  probe3
		.probe16(raw_E4),              // input wire [15:0]  probe3
		.probe17(raw_E5),              // input wire [15:0]  probe3
		.probe18(raw_E6),              // input wire [15:0]  probe3
		.probe19(raw_E7),              // input wire [15:0]  probe3
		.probe20(raw_W0),              // input wire [15:0]  probe3
		.probe21(raw_W1),              // input wire [15:0]  probe3
		.probe22(raw_W2),              // input wire [15:0]  probe3
		.probe23(raw_W3),              // input wire [15:0]  probe3
		.probe24(raw_W4),              // input wire [15:0]  probe3
		.probe25(raw_W5),              // input wire [15:0]  probe3
		.probe26(raw_W6),              // input wire [15:0]  probe3
		.probe27(raw_W7),              // input wire [15:0]  probe3
		.probe28(data_N0),             // input wire [15:0]  probe3
		.probe29(data_N1),             // input wire [15:0]  probe3
		.probe30(data_N2),             // input wire [15:0]  probe3
		.probe31(data_N3),             // input wire [15:0]  probe3
		.probe32(data_N4),             // input wire [15:0]  probe3
		.probe33(data_N5),             // input wire [15:0]  probe3
		.probe34(data_N6),             // input wire [15:0]  probe3
		.probe35(data_N7),             // input wire [15:0]  probe3
		.probe36(data_E0),             // input wire [15:0]  probe3
		.probe37(data_E1),             // input wire [15:0]  probe3
		.probe38(data_E2),             // input wire [15:0]  probe3
		.probe39(data_E3),             // input wire [15:0]  probe3
		.probe40(data_E4),             // input wire [15:0]  probe3
		.probe41(data_E5),             // input wire [15:0]  probe3
		.probe42(data_E6),             // input wire [15:0]  probe3
		.probe43(data_E7),             // input wire [15:0]  probe3
		.probe44(data_W0),             // input wire [15:0]  probe3
		.probe45(data_W1),             // input wire [15:0]  probe3
		.probe46(data_W2),             // input wire [15:0]  probe3
		.probe47(data_W3),             // input wire [15:0]  probe3
		.probe48(data_W4),             // input wire [15:0]  probe3
		.probe49(data_W5),             // input wire [15:0]  probe3
		.probe50(data_W6),             // input wire [15:0]  probe3
		.probe51(data_W7)              // input wire [15:0]  probe3
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

    always @(posedge ana_fifo_clk) 
    begin
	   if (ana_fifo_wr)
       begin
            ana_in_data[15:0] <= ana_fifo_sample;
            ana_in_data[24:16] <= ana_fifo_size;
            ana_in_data[44:25] <= ana_fifo_freq;
            ana_in_data[60:45] <= ana_fifo_angle;
            ana_in_data[66:61] <= ana_fifo_sample_N;
            ana_in_data[72:67] <= ana_fifo_sample_E;
            ana_in_data[78:73] <= ana_fifo_sample_W;
            ana_wr <= 1;
       end
       else
            ana_wr <= 0;
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
			
			if (select_delay == 14)
				raw_run <= 1;

			if (select_delay == 17)
			    deci_run <= 1;
			else
                select_delay <= select_delay + 1;
		end
		else
		begin
		    select_delay <= 0;
		    deci_run <= 0;
			raw_run <= 0;
		end
	end

    always @(posedge clk) 
    begin
		if (raw_run)
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
	   if (ana_empty)
	       ana_trig <= 0;
	   else
	   begin
	        if (raw_run)
	        begin
                if (curr_sample == raw_sample)
                    ana_trig <= 1;
                else
                    ana_trig <= 0;
            end
            else
                ana_trig <= 0;
        end
    end
    
    always @(posedge clk) 
	begin
        if (reset_int)
        begin
            burst <= 0;
            sample_N <= 0;
            sample_E <= 0;
            sample_W <= 0;
        end
        else
        begin
            if (ana_trig)
            begin
                burst <= 1;
                sample <= ana_out_data[15:0];
                size <= ana_out_data[24:16];
                freq <= ana_out_data[44:25];
                angle <= ana_out_data[60:45];
                sample_N <= ana_out_data[66:61];
                sample_E <= ana_out_data[72:67];
                sample_W <= ana_out_data[78:73];
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
    	   deci_0 <= deci_out_0[36:17] + 1;
        else
    	   deci_0 <= deci_out_0[36:17];

	   if (deci_out_1[16])
    	   deci_1 <= deci_out_1[36:17] + 1;
        else
    	   deci_1 <= deci_out_1[36:17];

	   if (deci_out_2[16])
    	   deci_2 <= deci_out_2[36:17] + 1;
        else
    	   deci_2 <= deci_out_2[36:17];

	   if (deci_out_3[16])
    	   deci_3 <= deci_out_3[36:17] + 1;
        else
    	   deci_3 <= deci_out_3[36:17];
	end

    always @(posedge clk) 
	begin
        fir_run <= deci_active;
    end

    always @(posedge clk) 
	begin
	    if (re_out_0[19])
            re_0 <= re_out_0[39:20] + 1;
        else
            re_0 <= re_out_0[39:20];

	    if (re_out_1[19])
            re_1 <= re_out_1[39:20] + 1;
        else
            re_1 <= re_out_1[39:20];

	    if (re_out_2[19])
            re_2 <= re_out_2[39:20] + 1;
        else
            re_2 <= re_out_2[39:20];

	    if (re_out_3[19])
            re_3 <= re_out_3[39:20] + 1;
        else
            re_3 <= re_out_3[39:20];
    end

    always @(posedge clk) 
	begin
	    if (im_out_0[19])
            im_0 <= im_out_0[39:20] + 1;
        else
            im_0 <= im_out_0[39:20];

	    if (im_out_1[19])
            im_1 <= im_out_1[39:20] + 1;
        else
            im_1 <= im_out_1[39:20];

	    if (im_out_2[19])
            im_2 <= im_out_2[39:20] + 1;
        else
            im_2 <= im_out_2[39:20];

	    if (im_out_3[19])
            im_3 <= im_out_3[39:20] + 1;
        else
            im_3 <= im_out_3[39:20];
    end

    always @(posedge clk) 
	begin
        active <= fir_re_active;
    end

    always @(posedge clk) 
	begin
	    if (fir_re_active)
	    begin
	       re[15:0] <= re_0[15:0];
	       re[31:16] <= re_1[15:0];
	       re[47:32] <= re_2[15:0];
	       re[63:48] <= re_3[15:0];
	    end
    end

    always @(posedge clk) 
	begin
	    if (fir_re_active)
	    begin
	       im[15:0] <= im_0[15:0];
	       im[31:16] <= im_1[15:0];
	       im[47:32] <= im_2[15:0];
	       im[63:48] <= im_3[15:0];
	    end
    end

  end
    
endgenerate

endmodule
