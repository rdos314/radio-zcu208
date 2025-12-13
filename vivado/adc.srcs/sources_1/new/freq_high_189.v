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
    output reg [491:0] doa_data
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
  
  reg [2:0] freq_rd_delay;
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

  wire validN;
  wire [15:0] envN;
  wire [19:0] phaseN;

  wire validE;
  wire [15:0] envE;
  wire [19:0] phaseE;

  wire validW;
  wire [15:0] envW;
  wire [19:0] phaseW;
   
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
  .valid(validN),
  .env(envN),
  .phase(phaseN)
  );

morlet_to_phase_env freq_E_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_E[34:11]),
  .im(fir_im_E[34:11]),
  .valid(validE),
  .env(envE),
  .phase(phaseE)
  );

morlet_to_phase_env freq_W_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_W[34:11]),
  .im(fir_im_W[34:11]),
  .valid(validW),
  .env(envW),
  .phase(phaseW)
  );

ila_1 ila_1_i (
		.clk(clk),                     // input wire clk
		.probe0(doa_wr),               // input wire [0:0]  probe3
		.probe1(raw_fifo_empty),       // input wire [0:0]  probe3
		.probe2(freq_fifo_empty),      // input wire [0:0]  probe3
		.probe3(freq_fifo_rd),         // input wire [0:0]  probe3
		.probe4(start_delay),          // input wire [7:0]  probe3
		.probe5(curr_delay),           // input wire [7:0]  probe3
		.probe6(morlet_active),        // input wire [0:0]  probe3
		.probe7(N0),                   // input wire [15:0]  probe3
		.probe8(fir_re_N),             // input wire [39:0]  probe3
		.probe9(fir_im_N),             // input wire [39:0]  probe3
		.probe10(envN),                // input wire [15:0]  probe3
		.probe11(phaseN),              // input wire [19:0]  probe3
		.probe12(raw_N0),              // input wire [15:0]  probe3
		.probe13(E0),                  // input wire [15:0]  probe3
		.probe14(fir_re_E),            // input wire [39:0]  probe3
		.probe15(fir_im_E),            // input wire [39:0]  probe3
		.probe16(envE),                // input wire [15:0]  probe3
		.probe17(phaseE),              // input wire [19:0]  probe3
		.probe18(raw_E0),              // input wire [15:0]  probe3
		.probe19(W0),                  // input wire [15:0]  probe3
		.probe20(fir_re_W),            // input wire [39:0]  probe3
		.probe21(fir_im_W),            // input wire [39:0]  probe3
		.probe22(envW),                // input wire [15:0]  probe3
		.probe23(phaseW),              // input wire [19:0]  probe3
		.probe24(raw_W0)               // input wire [15:0]  probe3
	);

generate
  begin : freq_high_189

    always @(posedge clk) 
    begin
	   if (freq_fifo_empty)
	   begin
	       freq_rd_delay <= 3'b111;
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
        if (validN & validE & validW)
        begin
            doa_data[15:0] <= envN;
            doa_data[35:16] <= phaseN;
            doa_data[51:36] <= raw_N0;
            doa_data[67:52] <= raw_N1;
            doa_data[83:68] <= raw_N2;
            doa_data[99:84] <= raw_N3;
            doa_data[115:100] <= raw_N4;
            doa_data[131:116] <= raw_N5;
            doa_data[147:132] <= raw_N6;
            doa_data[163:148] <= raw_N7;

            doa_data[179:164] <= envE;
            doa_data[199:180] <= phaseE;
            doa_data[215:200] <= raw_E0;
            doa_data[231:216] <= raw_E1;
            doa_data[247:232] <= raw_E2;
            doa_data[263:248] <= raw_E3;
            doa_data[279:264] <= raw_E4;
            doa_data[295:280] <= raw_E5;
            doa_data[311:296] <= raw_E6;
            doa_data[327:312] <= raw_E7;
      
            doa_data[343:328] <= envW;
            doa_data[363:344] <= phaseW;
            doa_data[379:364] <= raw_W0;
            doa_data[395:380] <= raw_W1;
            doa_data[411:396] <= raw_W2;
            doa_data[427:412] <= raw_W3;
            doa_data[443:428] <= raw_W4;
            doa_data[459:444] <= raw_W5;
            doa_data[475:460] <= raw_W6;
            doa_data[491:476] <= raw_W7;

            doa_wr <= 1;
        end
        else
            doa_wr <= 0;
	end

  end

endgenerate

endmodule
