`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2025 22:20:40
// Design Name: 
// Module Name: doa
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

module deci_low(
    input wire	clk,
    input wire  resetn,
    input wire	[127:0] data_N,
    input wire	ready_N,
    
    input wire	[127:0] data_E,
    input wire	ready_E,

    input wire	[127:0] data_W,
    input wire	ready_W,

    input wire  raw_clk,
    output reg raw_ready,
    output reg	[195:0] raw_data,

    input wire  doa_clk,
    output reg doa_ready,
    output reg [69:0] doa_data
    );

  reg [27:0]  counter;
  reg active;

  reg raw_fifo_wr;
  reg  [195:0] raw_in_data;

  wire raw_fifo_empty;
  reg  [11:0] raw_delay;
  wire [195:0] raw_out_data;
  reg raw_active;

  reg [27:0] doa_counter;
  reg doa_active;

  reg doa_fifo_wr;
  reg [69:0] doa_in_data;

  wire doa_fifo_empty;
  wire [69:0] doa_out_data;
  reg doa_out_active;

  (* ASYNC_REG="TRUE" *)	reg  active_1;
  (* ASYNC_REG="TRUE" *)	reg  active_2;

  wire	[31:0] fir_N;
  wire	[31:0] fir_E;
  wire	[31:0] fir_W;

  wire	valid_N;
  wire	valid_E;
  wire	valid_W;

  wire [13:0] dN = fir_N[30:17];
  wire [13:0] dE = fir_E[30:17];
  wire [13:0] dW = fir_W[30:17];

  wire [13:0] N0 = data_N[15:2];
  wire [13:0] N1 = data_N[31:18];
  wire [13:0] N2 = data_N[47:34];
  wire [13:0] N3 = data_N[63:50];
  wire [13:0] N4 = data_N[79:66];
  wire [13:0] N5 = data_N[95:82];
  wire [13:0] N6 = data_N[111:98];
  wire [13:0] N7 = data_N[127:114];

  wire [13:0] E0 = data_E[15:2];
  wire [13:0] E1 = data_E[31:18];
  wire [13:0] E2 = data_E[47:34];
  wire [13:0] E3 = data_E[63:50];
  wire [13:0] E4 = data_E[79:66];
  wire [13:0] E5 = data_E[95:82];
  wire [13:0] E6 = data_E[111:98];
  wire [13:0] E7 = data_E[127:114];

  wire [13:0] W0 = data_W[15:2];
  wire [13:0] W1 = data_W[31:18];
  wire [13:0] W2 = data_W[47:34];
  wire [13:0] W3 = data_W[63:50];
  wire [13:0] W4 = data_W[79:66];
  wire [13:0] W5 = data_W[95:82];
  wire [13:0] W6 = data_W[111:98];
  wire [13:0] W7 = data_W[127:114];

  wire	[127:0] fir_raw_N;
  wire	[127:0] fir_raw_E;
  wire	[127:0] fir_raw_W;

  wire	valid_raw_N;
  wire	valid_raw_E;
  wire	valid_raw_W;

  wire [13:0] drN0 = fir_raw_N[30:17];
  wire [13:0] drN1 = fir_raw_N[62:49];
  wire [13:0] drN2 = fir_raw_N[94:81];
  wire [13:0] drN3 = fir_raw_N[126:113];

  wire [13:0] drE0 = fir_raw_E[30:17];
  wire [13:0] drE1 = fir_raw_E[62:49];
  wire [13:0] drE2 = fir_raw_E[94:81];
  wire [13:0] drE3 = fir_raw_E[126:113];

  wire [13:0] drW0 = fir_raw_W[30:17];
  wire [13:0] drW1 = fir_raw_W[62:49];
  wire [13:0] drW2 = fir_raw_W[94:81];
  wire [13:0] drW3 = fir_raw_W[126:113];

fir_raw_deci fir_deci_N_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_N),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_N),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_N),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_N)      // output wire [127 : 0] m_axis_data_tdata
);

fir_raw_deci fir_deci_E_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_E),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_E),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_E),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_E)      // output wire [127 : 0] m_axis_data_tdata
);

fir_raw_deci fir_deci_W_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_W),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_W),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_W),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_W)      // output wire [127 : 0] m_axis_data_tdata
);

fir_deci_low fir_N_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_N),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_N),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_N),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_N)      // output wire [31 : 0] m_axis_data_tdata
);

fir_deci_low fir_E_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_E),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_E),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_E),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_E)      // output wire [31 : 0] m_axis_data_tdata
);

fir_deci_low fir_W_i (
  .aresetn(resetn),              // input wire aresetn
  .aclk(clk),                    // input wire aclk
  .s_axis_data_tvalid(ready_W),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(data_W),    // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_W),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_W)      // output wire [31 : 0] m_axis_data_tdata
);

fifo_raw_low fifo_raw_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(raw_clk),          // input wire rd_clk
  .din(raw_in_data),        // input wire [195 : 0] din
  .wr_en(raw_fifo_wr),        // input wire wr_en
  .rd_en(raw_ready),          // input wire rd_en
  .dout(raw_out_data),       // output wire [195 : 0] dout
  .empty(raw_fifo_empty)      // output wire empty
);

fifo_doa_low fifo_doa_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(doa_clk),          // input wire rd_clk
  .din(doa_in_data),        // input wire [69 : 0] din
  .wr_en(doa_fifo_wr),        // input wire wr_en
  .rd_en(doa_ready),          // input wire rd_en
  .dout(doa_out_data),       // output wire [69 : 0] dout
  .empty(doa_fifo_empty)      // output wire empty
);

generate
  begin : deci_low

	always @(posedge clk) 
	begin
	  active <= resetn & valid_raw_N & valid_raw_E & valid_raw_W;
	end

    always @(posedge clk) 
	begin
	  if (active)
	  begin
         raw_fifo_wr <= 1;
         counter <= counter + 1;
         raw_in_data[27:0] <= counter;
         raw_in_data[41:28] <= drN0;
         raw_in_data[55:42] <= drN1;
         raw_in_data[69:56] <= drN2;
         raw_in_data[83:70] <= drN3;
         raw_in_data[97:84] <= drE0;
         raw_in_data[111:98] <= drE1;
         raw_in_data[125:112] <= drE2;
         raw_in_data[139:126] <= drE3;
         raw_in_data[153:140] <= drW0;
         raw_in_data[167:154] <= drW1;
         raw_in_data[181:168] <= drW2;
         raw_in_data[195:182] <= drW3;
	  end
	  else
	  begin
	      raw_fifo_wr <= 0;
	      counter <= 0;
	  end
	end

	always @(posedge clk) 
	begin
	  doa_active <= resetn & valid_N & valid_E & valid_W;
	end

    always @(posedge clk) 
	begin
	  if (doa_active)
	  begin
         doa_fifo_wr <= 1;
         doa_counter <= doa_counter + 1;
         doa_in_data[27:0] <= doa_counter;
         doa_in_data[41:28] <= dN;
         doa_in_data[55:42] <= dE;
         doa_in_data[69:56] <= dW;
	  end
	  else
	  begin
	      doa_fifo_wr <= 0;
	      doa_counter <= 0;
	  end
	end
         
    always @(posedge raw_clk) 
     begin
      if (raw_fifo_empty)
  	  begin
	     raw_delay <= 12'h3F0;
	     raw_active <= 0;
      end
	  else
      begin
	     if (raw_delay)
	     begin
	       raw_delay <= raw_delay - 1;
	       raw_active <= 0;
	     end
	     else
	       raw_active <= 1;
  	  end
    end

    always @(posedge raw_clk) 
    begin
	   if (raw_active)
	   begin
         raw_data <= raw_out_data;
         raw_ready <= 1;
       end
       else
         raw_ready <= 0;
    end

    always @(posedge doa_clk) 
     begin
      if (doa_fifo_empty)
	     doa_out_active <= 0;
	  else
	     doa_out_active <= 1;
    end

    always @(posedge doa_clk) 
    begin
	   if (doa_out_active)
	   begin
         doa_data <= doa_out_data;
         doa_ready <= 1;
       end
       else
         doa_ready <= 0;
    end

  end
     
endgenerate
    
endmodule
