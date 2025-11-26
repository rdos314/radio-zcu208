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

    input wire sim_start,
    input wire adc_active,	
	output reg sim_active,

	input wire sim_clk,
	input wire sim_resetn,
	input wire sim_wr,
	input wire [1:0] sim_channel,
	input wire [31:0] sim_data,

    input wire raw_clk,
    output reg raw_ready,
    output reg [191:0] raw_data,

    input wire doa_clk,
    output reg doa_ready,
    output reg [47:0] doa_data
    );
	
  reg mux_active;
  reg [127:0] mux_N;
  reg [127:0] mux_E;
  reg [127:0] mux_W;

  reg active;

  reg [3:0] raw_wr_delay;
  reg raw_fifo_wr;
  reg  [191:0] raw_in_data;

  wire raw_fifo_empty;
  reg  [11:0] raw_delay;
  wire [191:0] raw_out_data;
  reg raw_active;

  reg doa_active;

  reg doa_fifo_wr;
  reg [3:0] doa_wr_delay;
  reg [47:0] doa_in_data;

  wire doa_fifo_empty;
  wire [47:0] doa_out_data;
  reg doa_out_active;

  reg sim_wr_N;
  reg sim_wr_E;
  reg sim_wr_W;
  reg [1:0] sim_count;
  reg sim_curr_wr;
  reg [127:0] sim_curr_data;
  reg [127:0] sim_in_data;

  reg sim_active_1;
  reg sim_active_2;
  reg sim_rd;
  
  wire [127:0] sim_out_N;
  wire [127:0] sim_out_E;
  wire [127:0] sim_out_W;
  
  wire sim_emtpy_N;
  wire sim_emtpy_E;
  wire sim_emtpy_W;

  (* ASYNC_REG="TRUE" *)	reg  active_1;
  (* ASYNC_REG="TRUE" *)	reg  active_2;

  wire	[31:0] fir_N;
  wire	[31:0] fir_E;
  wire	[31:0] fir_W;

  wire	valid_N;
  wire	valid_E;
  wire	valid_W;

  wire [15:0] dN = fir_N[30:15];
  wire [15:0] dE = fir_E[30:15];
  wire [15:0] dW = fir_W[30:15];

  wire [15:0] N0 = data_N[15:0];
  wire [15:0] N1 = data_N[31:16];
  wire [15:0] N2 = data_N[47:32];
  wire [15:0] N3 = data_N[63:48];
  wire [15:0] N4 = data_N[79:64];
  wire [15:0] N5 = data_N[95:80];
  wire [15:0] N6 = data_N[111:96];
  wire [15:0] N7 = data_N[127:112];

  wire [15:0] E0 = data_E[15:0];
  wire [15:0] E1 = data_E[31:16];
  wire [15:0] E2 = data_E[47:32];
  wire [15:0] E3 = data_E[63:48];
  wire [15:0] E4 = data_E[79:64];
  wire [15:0] E5 = data_E[95:80];
  wire [15:0] E6 = data_E[111:96];
  wire [15:0] E7 = data_E[127:112];

  wire [15:0] W0 = data_W[15:0];
  wire [15:0] W1 = data_W[31:16];
  wire [15:0] W2 = data_W[47:32];
  wire [15:0] W3 = data_W[63:48];
  wire [15:0] W4 = data_W[79:64];
  wire [15:0] W5 = data_W[95:80];
  wire [15:0] W6 = data_W[111:96];
  wire [15:0] W7 = data_W[127:112];

  wire	[127:0] fir_raw_N;
  wire	[127:0] fir_raw_E;
  wire	[127:0] fir_raw_W;

  wire	valid_raw_N;
  wire	valid_raw_E;
  wire	valid_raw_W;

  wire [15:0] drN0 = fir_raw_N[30:15];
  wire [15:0] drN1 = fir_raw_N[62:47];
  wire [15:0] drN2 = fir_raw_N[94:79];
  wire [15:0] drN3 = fir_raw_N[126:111];

  wire [15:0] drE0 = fir_raw_E[30:15];
  wire [15:0] drE1 = fir_raw_E[62:47];
  wire [15:0] drE2 = fir_raw_E[94:79];
  wire [15:0] drE3 = fir_raw_E[126:111];

  wire [15:0] drW0 = fir_raw_W[30:15];
  wire [15:0] drW1 = fir_raw_W[62:47];
  wire [15:0] drW2 = fir_raw_W[94:79];
  wire [15:0] drW3 = fir_raw_W[126:111];

  wire [15:0] mux_N0 = mux_N[15:0];
  wire [15:0] mux_N1 = mux_N[31:16];
  wire [15:0] mux_N2 = mux_N[47:32];
  wire [15:0] mux_N3 = mux_N[63:48];
  wire [15:0] mux_N4 = mux_N[79:64];
  wire [15:0] mux_N5 = mux_N[95:80];
  wire [15:0] mux_N6 = mux_N[111:96];
  wire [15:0] mux_N7 = mux_N[127:112];

  wire [15:0] mux_E0 = mux_E[15:0];
  wire [15:0] mux_E1 = mux_E[31:16];
  wire [15:0] mux_E2 = mux_E[47:32];
  wire [15:0] mux_E3 = mux_E[63:48];
  wire [15:0] mux_E4 = mux_E[79:64];
  wire [15:0] mux_E5 = mux_E[95:80];
  wire [15:0] mux_E6 = mux_E[111:96];
  wire [15:0] mux_E7 = mux_E[127:112];

  wire [15:0] mux_W0 = mux_W[15:0];
  wire [15:0] mux_W1 = mux_W[31:16];
  wire [15:0] mux_W2 = mux_W[47:32];
  wire [15:0] mux_W3 = mux_W[63:48];
  wire [15:0] mux_W4 = mux_W[79:64];
  wire [15:0] mux_W5 = mux_W[95:80];
  wire [15:0] mux_W6 = mux_W[111:96];
  wire [15:0] mux_W7 = mux_W[127:112];

fir_raw_deci fir_deci_N_i (
  .aresetn(resetn),                 // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_N),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_N), // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_N)     // output wire [127 : 0] m_axis_data_tdata
);

fir_raw_deci fir_deci_E_i (
  .aresetn(resetn),                 // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_E),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_E), // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_E)     // output wire [127 : 0] m_axis_data_tdata
);

fir_raw_deci fir_deci_W_i (
  .aresetn(resetn),                 // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_W),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_raw_W), // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_raw_W)     // output wire [127 : 0] m_axis_data_tdata
);

fir_deci_low fir_N_i (
  .aresetn(resetn),                 // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_N),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_N),     // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_N)         // output wire [31 : 0] m_axis_data_tdata
);

fir_deci_low fir_E_i (
  .aresetn(resetn),                 // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_E),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_E),     // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_E)         // output wire [31 : 0] m_axis_data_tdata
);

fir_deci_low fir_W_i (
  .aresetn(resetn),                 // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_W),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_W),     // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_W)         // output wire [31 : 0] m_axis_data_tdata
);

fifo_raw_low fifo_raw_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(raw_clk),          // input wire rd_clk
  .din(raw_in_data),        // input wire [191 : 0] din
  .wr_en(raw_fifo_wr),        // input wire wr_en
  .rd_en(raw_ready),          // input wire rd_en
  .dout(raw_out_data),       // output wire [191 : 0] dout
  .empty(raw_fifo_empty)      // output wire empty
);

fifo_doa_low fifo_doa_i (
  .rst(~resetn),              // input wire rst
  .wr_clk(clk),               // input wire wr_clk
  .rd_clk(doa_clk),           // input wire rd_clk
  .din(doa_in_data),          // input wire [47 : 0] din
  .wr_en(doa_fifo_wr),        // input wire wr_en
  .rd_en(doa_ready),          // input wire rd_en
  .dout(doa_out_data),        // output wire [47 : 0] dout
  .empty(doa_fifo_empty)      // output wire empty
);

fifo_sim fifo_sim_N_i (
  .rst(~sim_resetn),        // input wire rst
  .wr_clk(sim_clk),         // input wire wr_clk
  .rd_clk(clk),             // input wire rd_clk
  .din(sim_in_data),        // input wire [127 : 0] din
  .wr_en(sim_wr_N),         // input wire wr_en
  .rd_en(sim_rd),           // input wire rd_en
  .dout(sim_out_N),         // output wire [127 : 0] dout
  .empty(sim_empty_N)       // output wire empty
);

fifo_sim fifo_sim_E_i (
  .rst(~sim_resetn),        // input wire rst
  .wr_clk(sim_clk),         // input wire wr_clk
  .rd_clk(clk),             // input wire rd_clk
  .din(sim_in_data),        // input wire [127 : 0] din
  .wr_en(sim_wr_E),         // input wire wr_en
  .rd_en(sim_rd),           // input wire rd_en
  .dout(sim_out_E),         // output wire [127 : 0] dout
  .empty(sim_empty_E)       // output wire empty
);

fifo_sim fifo_sim_W_i (
  .rst(~sim_resetn),        // input wire rst
  .wr_clk(sim_clk),         // input wire wr_clk
  .rd_clk(clk),             // input wire rd_clk
  .din(sim_in_data),        // input wire [127 : 0] din
  .wr_en(sim_wr_W),         // input wire wr_en
  .rd_en(sim_rd),           // input wire rd_en
  .dout(sim_out_W),         // output wire [127 : 0] dout
  .empty(sim_empty_W)       // output wire empty
);

/*
ila_5 ila_5_i (
		.clk(sim_clk),             // input wire clk
		.probe0(sim_resetn),       // input wire [0:0]  probe3
		.probe1(sim_data),         // input wire [31:0]  probe3
		.probe2(sim_channel),      // input wire [1:0]  probe3
		.probe3(sim_wr_N),         // input wire [0:0]  probe3
		.probe4(sim_wr_E),         // input wire [0:0]  probe3
		.probe5(sim_wr_W),         // input wire [0:0]  probe3
		.probe6(sim_in_data),      // input wire [127:0]  probe3
		.probe7(sim_count),        // input wire [1:0]  probe3
		.probe8(sim_curr_wr),      // input wire [0:0]  probe3
		.probe9(sim_curr_data)     // input wire [127:0]  probe3
);
*/

ila_2 ila_2_i (
		.clk(clk),                   // input wire clk
		.probe0(adc_active),         // input wire [0:0]  probe3
		.probe1(mux_active),         // input wire [0:0]  probe3
		.probe2(raw_wr_delay),       // input wire [3:0]  probe3
		.probe3(raw_fifo_wr),        // input wire [0:0]  probe3
		.probe4(doa_wr_delay),       // input wire [3:0]  probe3
		.probe5(doa_fifo_wr),        // input wire [0:0]  probe3
		.probe6(mux_N0),             // input wire [15:0]  probe3
		.probe7(mux_N1),             // input wire [15:0]  probe3
		.probe8(mux_N2),             // input wire [15:0]  probe3
		.probe9(mux_N3),             // input wire [15:0]  probe3
		.probe10(mux_N4),            // input wire [15:0]  probe3
		.probe11(mux_N5),            // input wire [15:0]  probe3
		.probe12(mux_N6),            // input wire [15:0]  probe3
		.probe13(mux_N7),            // input wire [15:0]  probe3
		.probe14(drN0),              // input wire [15:0]  probe3
		.probe15(drN1),              // input wire [15:0]  probe3
		.probe16(drN2),              // input wire [15:0]  probe3
		.probe17(drN3),              // input wire [15:0]  probe3
		.probe18(dN),                // input wire [15:0]  probe3
		.probe19(dE),                // input wire [15:0]  probe3
		.probe20(dW)                 // input wire [15:0]  probe3
);

generate
  begin : deci_low

	always @(posedge sim_clk) 
	begin
	  if (sim_resetn)
	  begin	    
  	    if (sim_wr)
	    begin
	      sim_count <= sim_count + 1;
	      if (sim_count == 3)
	        sim_curr_wr <= 1;
	      else
	        sim_curr_wr <= 0;
	        
          case (sim_count)
            0: sim_curr_data[31:0] <= sim_data;
            1: sim_curr_data[63:32] <= sim_data;
            2: sim_curr_data[95:64] <= sim_data;
            3: sim_curr_data[127:96] <= sim_data;
          endcase     
        end
        else
        begin
          if (sim_count)
          begin
		    sim_count <= 0;
            sim_curr_wr <= 1;

            case (sim_count)
              1: sim_curr_data[127:32] <= 0;
              2: sim_curr_data[127:64] <= 0;
              3: sim_curr_data[127:96] <= 0;
            endcase     
          end
          else
            sim_curr_wr <= 0;
        end
	  end
	  else
	  begin
	    sim_count <= 0;
	    sim_curr_wr <= 0;
	  end
	end

	always @(posedge sim_clk) 
	begin
      if (sim_curr_wr)
      begin
        sim_in_data <= sim_curr_data;

 	    case (sim_channel)
          2'b00 : 
		    begin
			  sim_wr_N <= 1;
			  sim_wr_E <= 0;
			  sim_wr_W <= 0;
			end

          2'b01 : 
		    begin
			  sim_wr_N <= 0;
			  sim_wr_E <= 1;
			  sim_wr_W <= 0;
		    end

          2'b10 : 
		    begin
			  sim_wr_N <= 0;
			  sim_wr_E <= 0;
			  sim_wr_W <= 1;
		    end

          2'b11 : 
		    begin
			  sim_wr_N <= 0;
			  sim_wr_E <= 0;
			  sim_wr_W <= 0;
		    end

        endcase
      end
      else
      begin
		sim_wr_N <= 0;
		sim_wr_E <= 0;
		sim_wr_W <= 0;
      end
    end

	always @(posedge clk) 
	begin
	  if (sim_start)
	    sim_active_1 <= 1;
	  else
	    if (!(sim_rd & resetn))
	      sim_active_1 <= 0;
	end

	always @(posedge clk) 
	begin
	  if (resetn)
	  begin
  	    sim_active_2 <= sim_active_1;
  	    sim_active <= sim_active_2;
  	  end
  	  else
  	  begin
  	    sim_active_2 <= 0;
  	    sim_active <= 0;
  	  end
	end

	always @(posedge clk) 
	begin
	  if (sim_start)
	    sim_rd <= 1;
	  else
        if (sim_empty_N | sim_empty_E | sim_empty_W)
          sim_rd <= 0;
    end         

	always @(posedge clk) 
	begin
	  if (adc_active)
	  begin
		mux_active <= ready_N & ready_E & ready_W;
		mux_N <= data_N;
		mux_E <= data_E;
		mux_W <= data_W;
	  end
	  else
	  begin
		if (sim_active & sim_active_1)
		begin
		  mux_active <= 1;
		  mux_N <= sim_out_N;
		  mux_E <= sim_out_E;
		  mux_W <= sim_out_W;
		end
		else
		begin
		  mux_active <= 0;
		  mux_N <= 0;
		  mux_E <= 0;
		  mux_W <= 0;
		end
	  end
	end

	always @(posedge clk) 
	begin
	  active <= resetn & valid_raw_N & valid_raw_E & valid_raw_W;
	end

    always @(posedge clk) 
	begin
	  if (mux_active)
	  begin
	    if (raw_wr_delay == 13)
	    begin
          raw_fifo_wr <= 1;
          raw_in_data[15:0] <= drN0;
          raw_in_data[31:16] <= drN1;
          raw_in_data[47:32] <= drN2;
          raw_in_data[63:48] <= drN3;
          raw_in_data[79:64] <= drE0;
          raw_in_data[95:80] <= drE1;
          raw_in_data[111:96] <= drE2;
          raw_in_data[127:112] <= drE3;
          raw_in_data[143:128] <= drW0;
          raw_in_data[159:144] <= drW1;
          raw_in_data[175:160] <= drW2;
          raw_in_data[191:176] <= drW3;
        end
        else
          raw_wr_delay <= raw_wr_delay + 1;
      end
      else
      begin
        if (raw_wr_delay)
          raw_wr_delay <= raw_wr_delay - 1;
        else
          raw_fifo_wr <= 0;
      end
    end

    always @(posedge clk) 
	begin
	  if (mux_active)
	  begin
	    if (doa_wr_delay == 11)
	    begin
          doa_fifo_wr <= 1;
          doa_in_data[15:0] <= dN;
          doa_in_data[31:16] <= dE;
          doa_in_data[47:32] <= dW;
	    end
        else
          doa_wr_delay <= doa_wr_delay + 1;
      end
      else
      begin
        if (doa_wr_delay)
          doa_wr_delay <= doa_wr_delay - 1;
        else
          doa_fifo_wr <= 0;
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



