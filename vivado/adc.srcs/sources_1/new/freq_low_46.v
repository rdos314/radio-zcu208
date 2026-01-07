`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 21:52:01
// Design Name: 
// Module Name: freq_low
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

module freq_low_46(
    input wire fifo_clk,
    input wire freq_wr,
    input wire [47:0] freq_data,
    
    input wire clk,
    input wire reset,
    output reg doa_wr,
    output reg [143:0] doa_data
    );
  
  reg [4:0] freq_rd_delay;
  reg freq_fifo_rd;
  wire [47:0] freq_fifo_data;
  wire freq_fifo_empty;  
  reg freq_fifo_valid;

  wire [15:0] freq_N = freq_fifo_data[15:0];
  wire [15:0] freq_E = freq_fifo_data[31:16];
  wire [15:0] freq_W = freq_fifo_data[47:32];

  reg [15:0] N;
  reg [15:0] E;
  reg [15:0] W;

  reg morlet_active;
  reg [7:0] start_delay;
  reg [7:0] curr_delay;

  wire valid_N;
  wire [15:0] env_N;
  wire [19:0] phase_N;
  wire [15:0] envN;
  wire [19:0] phaseN;

  wire valid_E;
  wire [15:0] env_E;
  wire [19:0] phase_E;
  wire [15:0] envE;
  wire [19:0] phaseE;

  wire valid_W;
  wire [15:0] env_W;
  wire [19:0] phase_W;
  wire [15:0] envW;
  wire [19:0] phaseW;

  wire valid;
  wire [11:0] errNE;
  wire [11:0] errEW;
  wire [11:0] errWN;
   
  wire ready_re_N;
  wire valid_re_N;
  wire [39:0] fir_re_N;

  wire ready_re_E;
  wire valid_re_E;
  wire [39:0] fir_re_E;

  wire ready_re_W;
  wire valid_re_W;
  wire [39:0] fir_re_W;

  wire ready_im_N;
  wire valid_im_N;
  wire [39:0] fir_im_N;
  
  wire ready_im_E;
  wire valid_im_E;
  wire [39:0] fir_im_E;
  
  wire ready_im_W;
  wire valid_im_W;
  wire [39:0] fir_im_W;


fifo_doa_low fifo_freq_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(freq_data),               // input wire [47 : 0] din
  .wr_en(freq_wr),               // input wire wr_en
  .rd_en(freq_fifo_rd),          // input wire rd_en
  .dout(freq_fifo_data),         // output wire [47 : 0] dout
  .empty(freq_fifo_empty)        // output wire empty
);

fir_doa_low_re fir_freq_low_re_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_re fir_freq_low_re_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_re fir_freq_low_re_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_W)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_freq_low_im_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_freq_low_im_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_freq_low_im_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_W)             // output wire [39 : 0] m_axis_data_tdata
);

morlet_to_phase_env freq_N_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_N[36:13]),
  .im(fir_im_N[36:13]),
  .valid(valid_N),
  .env(env_N),
  .phase(phase_N)
  );

morlet_to_phase_env freq_E_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_E[36:13]),
  .im(fir_im_E[36:13]),
  .valid(valid_E),
  .env(env_E),
  .phase(phase_E)
  );

morlet_to_phase_env freq_W_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_W[36:13]),
  .im(fir_im_W[36:13]),
  .valid(valid_W),
  .env(env_W),
  .phase(phase_W)
  );

phase_err phase_err_i (
  .clk(clk),                               // input wire aclk
  .active(valid_N & valid_E & valid_W),
  .env_in_N(env_N),
  .phase_in_N(phase_N),
  .env_in_E(env_E),
  .phase_in_E(phase_E),
  .env_in_W(env_W),
  .phase_in_W(phase_W),
  .valid(valid),
  .env_out_N(envN),
  .phase_out_N(phaseN),
  .env_out_E(envE),
  .phase_out_E(phaseE),
  .env_out_W(envW),
  .phase_out_W(phaseW),
  .err_NE(errNE),
  .err_EW(errEW),
  .err_WN(errWN)
  );

/*
ila_0 ila_0_i (
		.clk(clk),                     // input wire clk
		.probe0(doa_wr),               // input wire [0:0]  probe3
		.probe1(freq_fifo_rd),         // input wire [0:0]  probe3
		.probe2(raw_fifo_empty),       // input wire [0:0]  probe3
		.probe3(envN),                 // input wire [15:0]  probe3
		.probe4(raw_N0),               // input wire [15:0]  probe3
		.probe5(envE),                 // input wire [15:0]  probe3
		.probe6(raw_E0),               // input wire [15:0]  probe3
		.probe7(envW),                 // input wire [15:0]  probe3
		.probe8(raw_W0)               // input wire [15:0]  probe3
	);
*/

generate
  begin : freq_low_46

    always @(posedge clk) 
    begin
	   if (freq_fifo_empty)
	   begin
	       freq_rd_delay <= 5'b11111;
           freq_fifo_rd <= 0;
       end
	   else
	   begin
	       if (freq_rd_delay)
	       begin
	           freq_fifo_rd <= 0;
	           freq_rd_delay <= freq_rd_delay - 1;
	       end
	       else
	           freq_fifo_rd <= 1;
       end
    end

    always @(posedge clk) 
	begin
        if (freq_fifo_rd & (!freq_fifo_empty))
        begin
            freq_fifo_valid <= 1;
            N <= freq_N;
            E <= freq_E;
            W <= freq_W;
        end
        else
            freq_fifo_valid <= 0;
	end

    always @(posedge clk) 
	begin
	  if (freq_fifo_valid)
	  begin
	    if (start_delay == 229)
	      morlet_active <= 1;
	    else
	    begin
	      start_delay <= start_delay + 1;
	      curr_delay <= curr_delay + 1;
	      morlet_active <= 0;
	    end
	  end
	  else
	  begin
	    if (start_delay)
	    begin
  	      if (start_delay == 229)
	      begin
  	        if (curr_delay)
	        begin
	          curr_delay <= curr_delay - 1;
	          morlet_active <= 1;
  	        end
	        else
	        begin
    	      start_delay <= 0;
              morlet_active <= 0;	    
            end
          end
          else
          begin
  	        start_delay <= start_delay + 1;
            morlet_active <= 0;	    
          end          
        end
        else
        begin
          morlet_active <= 0;	    
	      curr_delay <= 0;
        end
	  end
	end

    always @(posedge clk) 
	begin
	   doa_wr <= valid;
	end

    always @(posedge clk) 
	begin
        if (valid)
        begin
            doa_data[15:0] <= envN;
            doa_data[35:16] <= phaseN;
            doa_data[51:36] <= envE;
            doa_data[71:52] <= phaseE;
            doa_data[87:72] <= envW;
            doa_data[107:88] <= phaseW;
            
            doa_data[119:108] <= errNE;
            doa_data[131:120] <= errEW;
            doa_data[143:132] <= errWN;            
        end
	end

  end

endgenerate

endmodule
