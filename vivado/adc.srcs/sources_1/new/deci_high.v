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
    output reg [127:0] raw_N,
    output reg [127:0] raw_E,
    output reg [127:0] raw_W,

    output reg freq_wr,
    output reg [31:0] freq_N,
    output reg [31:0] freq_E,
    output reg [31:0] freq_W
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

  wire [15:0] ff_N0 = fir_N0[30:15];
  wire [15:0] ff_N1 = fir_N1[30:15];
  wire [15:0] ff_E0 = fir_E0[30:15];
  wire [15:0] ff_E1 = fir_E1[30:15];
  wire [15:0] ff_W0 = fir_W0[30:15];
  wire [15:0] ff_W1 = fir_W1[30:15];

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
        raw_N[15:0] <= mux_N0;
        raw_N[31:16] <= mux_N1;
        raw_N[47:32] <= mux_N2;
        raw_N[63:48] <= mux_N3;
        raw_N[79:64] <= mux_N4;
        raw_N[95:80] <= mux_N5;
        raw_N[111:96] <= mux_N6;
        raw_N[127:112] <= mux_N7;
        raw_E[15:0] <= mux_E0;
        raw_E[31:16] <= mux_E1;
        raw_E[47:32] <= mux_E2;
        raw_E[63:48] <= mux_E3;
        raw_E[79:64] <= mux_E4;
        raw_E[95:80] <= mux_E5;
        raw_E[111:96] <= mux_E6;
        raw_E[127:112] <= mux_E7;
        raw_W[15:0] <= mux_W0;
        raw_W[31:16] <= mux_W1;
        raw_W[47:32] <= mux_W2;
        raw_W[63:48] <= mux_W3;
        raw_W[79:64] <= mux_W4;
        raw_W[95:80] <= mux_W5;
        raw_W[111:96] <= mux_W6;
        raw_W[127:112] <= mux_W7;
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
          freq_N[15:0] <= ff_N0;
          freq_N[31:16] <= ff_N1;
          freq_E[15:0] <= ff_E0;
          freq_E[31:16] <= ff_E1;
          freq_W[15:0] <= ff_W0;
          freq_W[31:16] <= ff_W1;
	    end
        else
          freq_wr_delay <= freq_wr_delay + 1;
      end
      else
      begin
        if (freq_wr_delay)
		begin
          freq_wr <= 1;
          freq_N[15:0] <= ff_N0;
          freq_N[31:16] <= ff_N1;
          freq_E[15:0] <= ff_E0;
          freq_E[31:16] <= ff_E1;
          freq_W[15:0] <= ff_W0;
          freq_W[31:16] <= ff_W1;
          freq_wr_delay <= freq_wr_delay - 1;
		end
        else
          freq_wr <= 0;
      end
 	end
         
  end
     
endgenerate
    
endmodule



