`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2025 22:20:40
// Design Name: 
// Module Name: deci
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

module deci_high(
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

    output reg raw_wr,
    output reg [383:0] raw_data,
    output reg freq_wr,
    output reg [95:0] freq_data
    );

  reg mux_active;
  reg [127:0] mux_N;
  reg [127:0] mux_E;
  reg [127:0] mux_W;

  reg [4:0] freq_wr_delay;

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
  
  reg [2:0] reset_delay;
  reg [2:0] reset_active;
  reg fir_resetn;

  wire [63:0] fir_freq_N;
  wire [63:0] fir_freq_E;
  wire [63:0] fir_freq_W;
	
  wire	[31:0] fir_N0 = fir_freq_N[31:0];
  wire	[31:0] fir_N1 = fir_freq_N[63:32];
  wire	[31:0] fir_E0 = fir_freq_E[31:0];
  wire	[31:0] fir_E1 = fir_freq_E[63:32];
  wire	[31:0] fir_W0 = fir_freq_W[31:0];
  wire	[31:0] fir_W1 = fir_freq_W[63:32];

  wire [15:0] freq_N0 = fir_N0[30:15];
  wire [15:0] freq_N1 = fir_N1[30:15];
  wire [15:0] freq_E0 = fir_E0[30:15];
  wire [15:0] freq_E1 = fir_E1[30:15];
  wire [15:0] freq_W0 = fir_W0[30:15];
  wire [15:0] freq_W1 = fir_W1[30:15];

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

fir_deci_high fir_freq_N_i (
  .aresetn(fir_resetn),             // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_N),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tdata(fir_freq_N)     // output wire [63 : 0] m_axis_data_tdata
);

fir_deci_high fir_freq_E_i (
  .aresetn(fir_resetn),             // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_E),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tdata(fir_freq_E)     // output wire [63 : 0] m_axis_data_tdata
);

fir_deci_high fir_freq_W_i (
  .aresetn(fir_resetn),             // input wire aresetn
  .aclk(clk),                       // input wire aclk
  .s_axis_data_tvalid(mux_active),  // input wire s_axis_data_tvalid
  .s_axis_data_tdata(mux_W),        // input wire [127 : 0] s_axis_data_tdata
  .m_axis_data_tdata(fir_freq_W)     // output wire [63 : 0] m_axis_data_tdata
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
		.clk(clk),                    // input wire clk
		.probe0(reset_delay),         // input wire [2:0]  probe3
		.probe1(reset_active),        // input wire [2:0]  probe3
		.probe2(fir_resetn),          // input wire [0:0]  probe3
		.probe3(adc_active),          // input wire [0:0]  probe3
		.probe4(mux_active),          // input wire [0:0]  probe3
		.probe5(raw_wr),              // input wire [0:0]  probe3
		.probe6(raw_data[15:0]),      // input wire [15:0]  probe3
		.probe7(freq_wr_delay),       // input wire [4:0]  probe3
		.probe8(freq_wr),             // input wire [0:0]  probe3
		.probe9(freq_data[15:0]),     // input wire [15:0]  probe3
		.probe10(mux_N0),             // input wire [15:0]  probe3
		.probe11(mux_N1),             // input wire [15:0]  probe3
		.probe12(mux_N2),             // input wire [15:0]  probe3
		.probe13(mux_N3),             // input wire [15:0]  probe3
		.probe14(mux_N4),             // input wire [15:0]  probe3
		.probe15(mux_N5),             // input wire [15:0]  probe3
		.probe16(mux_N6),             // input wire [15:0]  probe3
		.probe17(mux_N7),             // input wire [15:0]  probe3
		.probe18(freq_N0),            // input wire [15:0]  probe3
		.probe19(freq_N1),            // input wire [15:0]  probe3
		.probe20(freq_E0),            // input wire [15:0]  probe3
		.probe21(freq_E1),            // input wire [15:0]  probe3
		.probe22(freq_W0),            // input wire [15:0]  probe3
		.probe23(freq_W1)             // input wire [15:0]  probe3
);

ila_7 ila_7_i (
		.clk(raw_clk),               // input wire clk
		.probe0(raw_fifo_empty),     // input wire [0:0]  probe3
		.probe1(raw_delay),          // input wire [11:0]  probe3
		.probe2(raw_out_rd),         // input wire [0:0]  probe3
		.probe3(raw_out_data[15:0]), // input wire [15:0]  probe3
		.probe4(raw_ready),          // input wire [0:0]  probe3
		.probe5(raw_data[15:0])      // input wire [15:0]  probe3
);

ila_8 ila_8_i (
		.clk(freq_clk),               // input wire clk
		.probe0(freq_fifo_empty),     // input wire [0:0]  probe3
		.probe1(freq_out_rd),          // input wire [0:0]  probe3
		.probe2(freq_out_data[15:0]), // input wire [15:0]  probe3
		.probe3(freq_ready),          // input wire [0:0]  probe3
		.probe4(freq_data[15:0])      // input wire [15:0]  probe3
);

*/

generate
  begin : deci_high

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
	  if (mux_active | freq_wr)
	    reset_delay <= 3'b111;
	  else
	  begin
	    if (reset_delay)
		  reset_delay <= reset_delay - 1;
	  end
	end

	always @(posedge clk) 
	begin
	  if (resetn)
	  begin
	    if (reset_delay)
	      reset_active <= 3'b111;
        else
  	      if (reset_active)
		    reset_active <= reset_active - 1;
	  end
	  else
	    reset_active <= 3'b110;
    end

	always @(posedge clk) 
	begin
      case (reset_active)
        3'b000 : fir_resetn <= 1;
        3'b111 : fir_resetn <= 1;
		default : fir_resetn <= 0;
      endcase
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
	  if (mux_active)
	  begin
        raw_wr <= 1;
        raw_data[15:0] <= mux_N0;
        raw_data[31:16] <= mux_N1;
        raw_data[47:32] <= mux_N2;
        raw_data[63:48] <= mux_N3;
        raw_data[79:64] <= mux_N4;
        raw_data[95:80] <= mux_N5;
        raw_data[111:96] <= mux_N6;
        raw_data[127:112] <= mux_N7;
        raw_data[143:128] <= mux_E0;
        raw_data[159:144] <= mux_E1;
        raw_data[175:160] <= mux_E2;
        raw_data[191:176] <= mux_E3;
        raw_data[207:192] <= mux_E4;
        raw_data[223:208] <= mux_E5;
        raw_data[239:224] <= mux_E6;
        raw_data[255:240] <= mux_E7;
        raw_data[271:256] <= mux_W0;
        raw_data[287:272] <= mux_W1;
        raw_data[303:288] <= mux_W2;
        raw_data[319:304] <= mux_W3;
        raw_data[335:320] <= mux_W4;
        raw_data[351:336] <= mux_W5;
        raw_data[367:352] <= mux_W6;
        raw_data[383:368] <= mux_W7;
      end
      else
        raw_wr <= 0;
    end

    always @(posedge clk) 
	begin
	  if (mux_active)
	  begin
	    if (freq_wr_delay == 17)
	    begin
          freq_wr <= 1;
          freq_data[15:0] <= freq_N0;
          freq_data[31:16] <= freq_N1;
          freq_data[47:32] <= freq_E0;
          freq_data[63:48] <= freq_E1;
          freq_data[79:64] <= freq_W0;
          freq_data[95:80] <= freq_W1;
	    end
        else
          freq_wr_delay <= freq_wr_delay + 1;
      end
      else
      begin
        if (freq_wr_delay)
		begin
          freq_wr <= 1;
          freq_data[15:0] <= freq_N0;
          freq_data[31:16] <= freq_N1;
          freq_data[47:32] <= freq_E0;
          freq_data[63:48] <= freq_E1;
          freq_data[79:64] <= freq_W0;
          freq_data[95:80] <= freq_W1;
          freq_wr_delay <= freq_wr_delay - 1;
		end
        else
          freq_wr <= 0;
      end
 	end
         
  end
     
endgenerate
    
endmodule



