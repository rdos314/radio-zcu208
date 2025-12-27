`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 22:39:14
// Design Name: 
// Module Name: doa_high_189
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

module freq_high_189(
    input wire fifo_clk,
    input wire raw_wr,
    input wire [383:0] raw_data,
    input wire freq_wr,
    input wire [95:0] freq_data,

    input wire clk,
    input wire reset,
    output reg doa_wr,
    output reg [383:0] sample_data,
    output reg [143:0] doa_data
    );

  wire [383:0] raw_fifo_data;
  wire raw_fifo_empty;

  wire [15:0] raw_N0 = raw_fifo_data[15:0];
  wire [15:0] raw_N1 = raw_fifo_data[31:16];
  wire [15:0] raw_N2 = raw_fifo_data[47:32];
  wire [15:0] raw_N3 = raw_fifo_data[63:48];
  wire [15:0] raw_N4 = raw_fifo_data[79:64];
  wire [15:0] raw_N5 = raw_fifo_data[95:80];
  wire [15:0] raw_N6 = raw_fifo_data[111:96];
  wire [15:0] raw_N7 = raw_fifo_data[127:112];

  wire [15:0] raw_E0 = raw_fifo_data[143:128];
  wire [15:0] raw_E1 = raw_fifo_data[159:144];
  wire [15:0] raw_E2 = raw_fifo_data[175:160];
  wire [15:0] raw_E3 = raw_fifo_data[191:176];
  wire [15:0] raw_E4 = raw_fifo_data[207:192];
  wire [15:0] raw_E5 = raw_fifo_data[223:208];
  wire [15:0] raw_E6 = raw_fifo_data[239:224];
  wire [15:0] raw_E7 = raw_fifo_data[255:240];
  
  wire [15:0] raw_W0 = raw_fifo_data[271:256];
  wire [15:0] raw_W1 = raw_fifo_data[287:272];
  wire [15:0] raw_W2 = raw_fifo_data[303:288];
  wire [15:0] raw_W3 = raw_fifo_data[319:304];
  wire [15:0] raw_W4 = raw_fifo_data[335:320];
  wire [15:0] raw_W5 = raw_fifo_data[351:336];
  wire [15:0] raw_W6 = raw_fifo_data[367:352];
  wire [15:0] raw_W7 = raw_fifo_data[383:368];
  
  reg [4:0] freq_rd_delay;
  reg freq_fifo_rd;
  wire [95:0] freq_fifo_data;
  wire freq_fifo_empty;  
  reg freq_fifo_valid;

  wire [15:0] freq_N0 = freq_fifo_data[15:0];
  wire [15:0] freq_N1 = freq_fifo_data[31:16];
  wire [15:0] freq_E0 = freq_fifo_data[47:32];
  wire [15:0] freq_E1 = freq_fifo_data[63:48];
  wire [15:0] freq_W0 = freq_fifo_data[79:64];
  wire [15:0] freq_W1 = freq_fifo_data[95:80];

  reg [15:0] N0;
  reg [15:0] N1;
  wire [31:0] N;
  assign N[31:16] = N1;
  assign N[15:0] = N0;
  
  reg [15:0] E0;
  reg [15:0] E1;
  wire [31:0] E;
  assign E[31:16] = E1;
  assign E[15:0] = E0;

  reg [15:0] W0;
  reg [15:0] W1;
  wire [31:0] W;
  assign W[31:16] = W1;
  assign W[15:0] = W0;

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
  wire [11:0] errNW;
  wire [11:0] errEW;
   
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

fifo_raw_high fifo_raw_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(raw_data),                // input wire [383 : 0] din
  .wr_en(raw_wr),                // input wire wr_en
  .rd_en(doa_wr),                // input wire rd_en
  .dout(raw_fifo_data),          // output wire [383 : 0] dout
  .empty(raw_fifo_empty)         // output wire empty
);

fifo_doa_high fifo_freq_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(freq_data),               // input wire [95 : 0] din
  .wr_en(freq_wr),               // input wire wr_en
  .rd_en(freq_fifo_rd),          // input wire rd_en
  .dout(freq_fifo_data),         // output wire [95 : 0] dout
  .empty(freq_fifo_empty)        // output wire empty
);

fir_doa_high_re_189 fir_doa_high_re_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_re_189 fir_doa_high_re_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_re_189 fir_doa_high_re_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_W)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_im_189 fir_doa_high_im_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_im_189 fir_doa_high_im_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_high_im_189 fir_doa_high_im_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(freq_fifo_valid),    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_W)             // output wire [39 : 0] m_axis_data_tdata
);

morlet_to_phase_env freq_N_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_N[34:11]),
  .im(fir_im_N[34:11]),
  .valid(valid_N),
  .env(env_N),
  .phase(phase_N)
  );

morlet_to_phase_env freq_E_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_E[34:11]),
  .im(fir_im_E[34:11]),
  .valid(valid_E),
  .env(env_E),
  .phase(phase_E)
  );

morlet_to_phase_env freq_W_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_W[34:11]),
  .im(fir_im_W[34:11]),
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
  .err_WN(errWN),
  .err_EW(errEW)
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
  begin : freq_high_189

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
            N0 <= freq_N0;
            N1 <= freq_N1;
            E0 <= freq_E0;
            E1 <= freq_E1;
            W0 <= freq_W0;
            W1 <= freq_W1;
        end
        else
            freq_fifo_valid <= 0;
	end

    always @(posedge clk) 
	begin
	  if (freq_fifo_valid)
	  begin
	    if (start_delay == 86)
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
  	      if (start_delay == 86)
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
            doa_data[131:120] <= errNW;
            doa_data[143:132] <= errEW;            
        end
	end

    always @(posedge clk) 
	begin
        if (valid)
        begin
            sample_data[15:0] <= raw_N0;
            sample_data[31:16] <= raw_N1;
            sample_data[47:32] <= raw_N2;
            sample_data[63:48] <= raw_N3;
            sample_data[79:64] <= raw_N4;
            sample_data[95:80] <= raw_N5;
            sample_data[111:96] <= raw_N6;
            sample_data[127:112] <= raw_N7;

            sample_data[143:128] <= raw_E0;
            sample_data[159:144] <= raw_E1;
            sample_data[175:160] <= raw_E2;
            sample_data[191:176] <= raw_E3;
            sample_data[207:192] <= raw_E4;
            sample_data[223:208] <= raw_E5;
            sample_data[239:224] <= raw_E6;
            sample_data[255:240] <= raw_E7;
      
            sample_data[271:256] <= raw_W0;
            sample_data[287:272] <= raw_W1;
            sample_data[303:288] <= raw_W2;
            sample_data[319:304] <= raw_W3;
            sample_data[335:320] <= raw_W4;
            sample_data[351:336] <= raw_W5;
            sample_data[367:352] <= raw_W6;
            sample_data[383:368] <= raw_W7;
        end
	end

  end

endgenerate

endmodule
