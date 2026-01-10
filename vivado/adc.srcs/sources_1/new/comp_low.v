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
    input wire reset
);

  reg raw_active;
  reg [63:0] raw_sample;
  reg [127:0] raw_N;
  reg [127:0] raw_E;
  reg [127:0] raw_W;

  reg [383:0] raw_in_data;
  reg raw_wr;

  wire [383:0] raw_out_data;
  reg raw_rd;
  wire raw_empty;

  reg [9:0] raw_delay;
  reg raw_sample_cy;
    
  reg [94:0] ana_in_data;
  reg ana_wr;
  
  wire [94:0] ana_out_data;
  reg ana_rd;
  wire ana_empty;
  reg [4:0] ana_delay;
  wire [31:0] curr_sample = ana_out_data[31:0];
  
  reg ana_burst;
  reg [31:0] ana_sample;
  reg [8:0] ana_size;
  reg [19:0] ana_freq;
  reg [15:0] ana_angle;
  reg [5:0] ana_sample_N;
  reg [5:0] ana_sample_E;
  reg [5:0] ana_sample_W;
  
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

fifo_ana fifo_ana_i (
  .rst(reset),                  // input wire rst
  .wr_clk(ana_fifo_clk),        // input wire wr_clk
  .rd_clk(clk),                 // input wire rd_clk
  .din(ana_in_data),            // input wire [94 : 0] din
  .wr_en(ana_wr),               // input wire wr_en
  .rd_en(ana_rd),               // input wire rd_en
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
    .select(ana_sample_N),
    .data_out(data_N)
    );

comp_sel6 sel_E_i (
    .clk(clk),
    .reset(reset),
    .data_in(raw_E),
    .select(ana_sample_E),
    .data_out(data_E)
    );

comp_sel6 sel_W_i (
    .clk(clk),
    .reset(reset),
    .data_in(raw_W),
    .select(ana_sample_W),
    .data_out(data_W)
    );

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(ana_empty),           // input wire [0:0]  probe3
		.probe1(ana_rd),              // input wire [0:0]  probe3
		.probe2(ana_delay),           // input wire [4:0]  probe3
		.probe3(curr_sample),         // input wire [31:0]  probe3
		.probe4(ana_burst),           // input wire [0:0]  probe3
		.probe5(ana_size),            // input wire [8:0]  probe3
		.probe6(ana_freq),            // input wire [19:0]  probe3
		.probe7(ana_angle),           // input wire [15:0]  probe3
		.probe8(ana_sample_N),        // input wire [5:0]  probe3
		.probe9(ana_sample_E),        // input wire [5:0]  probe3
		.probe10(ana_sample_W),       // input wire [5:0]  probe3
		.probe11(raw_rd),             // input wire [0:0]  probe3
		.probe12(raw_empty),          // input wire [0:0]  probe3
		.probe13(raw_delay),          // input wire [9:0]  probe3
		.probe14(raw_sample),         // input wire [63:0]  probe3
		.probe15(C0),                 // input wire [17:0]  probe3
		.probe16(C1),                 // input wire [17:0]  probe3
		.probe17(C2),                 // input wire [17:0]  probe3
		.probe18(C3),                 // input wire [17:0]  probe3
		.probe19(C4),                 // input wire [17:0]  probe3
		.probe20(C5),                 // input wire [17:0]  probe3
		.probe21(C6),                 // input wire [17:0]  probe3
		.probe22(C7)                  // input wire [17:0]  probe3
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
		if (raw_rd)
		begin
			if (raw_sample[31:0] == 32'hFFFFFFFE)
				raw_sample_cy <= 1;
			else
				raw_sample_cy <= 0;
				
			raw_sample[31:0] <= raw_sample[31:0] + 1;
	
			if (raw_sample_cy)
				raw_sample[63:32] <= raw_sample[63:32] + 1;
		end
		else
		begin
			raw_sample <= 0;
			raw_sample_cy <= 0;
		end
	end

    always @(posedge clk) 
	begin
        if (raw_rd & (!raw_empty))
        begin
			raw_N <= raw_out_data[127:0];
			raw_E <= raw_out_data[255:128];
			raw_W <= raw_out_data[383:256];
			raw_active <= 1;
		end
		else
			raw_active <= 0;
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
	       ana_delay <= 5'b11111;
           ana_rd <= 0;
       end
	   else
	   begin
	       if (ana_delay)
	       begin
	           ana_rd <= 0;
	           ana_delay <= ana_delay - 1;
	       end
	       else
	           ana_rd <= 1;
       end
    end

    always @(posedge clk) 
	begin
        if (ana_rd & (!ana_empty))
        begin
            ana_burst <= 1;
            ana_sample <= ana_out_data[31:0];
            ana_size <= ana_out_data[40:32];
            ana_freq <= ana_in_data[60:41];
            ana_angle <= ana_in_data[76:61];
            ana_sample_N <= ana_in_data[82:77];
            ana_sample_E <= ana_in_data[88:83];
            ana_sample_W <= ana_in_data[94:89];
        end
        else
            ana_burst <= 0;
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
  
  end
    
endgenerate

endmodule
