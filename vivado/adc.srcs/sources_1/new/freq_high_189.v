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
    input wire freq_wr,
    input wire [31:0] freq_in_N,
    input wire [31:0] freq_in_E,
    input wire [31:0] freq_in_W,

    input wire clk,
    input wire reset,
    output reg ana_wr,
    output reg [15:0] env_N,
    output reg [15:0] env_E,
    output reg [15:0] env_W,
    output reg [19:0] phase_N,
    output reg [19:0] phase_E,
    output reg [19:0] phase_W,
    output reg [11:0] err_NE,
    output reg [11:0] err_EW,
    output reg [11:0] err_WN
    );
  
  reg [4:0] freq_rd_delay;
  reg freq_fifo_rd;
  reg [95:0] freq_in_data;
  reg freq_fifo_wr;
  wire [95:0] freq_out_data;
  wire freq_fifo_empty;  
  reg freq_fifo_valid;

  wire [15:0] freq_N0 = freq_out_data[15:0];
  wire [15:0] freq_N1 = freq_out_data[31:16];
  wire [15:0] freq_E0 = freq_out_data[47:32];
  wire [15:0] freq_E1 = freq_out_data[63:48];
  wire [15:0] freq_W0 = freq_out_data[79:64];
  wire [15:0] freq_W1 = freq_out_data[95:80];

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
  wire [15:0] loc_env_N;
  wire [19:0] loc_phase_N;
  wire [15:0] envN;
  wire [19:0] phaseN;

  wire valid_E;
  wire [15:0] loc_env_E;
  wire [19:0] loc_phase_E;
  wire [15:0] envE;
  wire [19:0] phaseE;

  wire valid_W;
  wire [15:0] loc_env_W;
  wire [19:0] loc_phase_W;
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

fifo_doa_high fifo_freq_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(freq_in_data),            // input wire [95 : 0] din
  .wr_en(freq_fifo_wr),          // input wire wr_en
  .rd_en(freq_fifo_rd),          // input wire rd_en
  .dout(freq_out_data),         // output wire [95 : 0] dout
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
  .env(loc_env_N),
  .phase(loc_phase_N)
  );

morlet_to_phase_env freq_E_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_E[34:11]),
  .im(fir_im_E[34:11]),
  .valid(valid_E),
  .env(loc_env_E),
  .phase(loc_phase_E)
  );

morlet_to_phase_env freq_W_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_W[34:11]),
  .im(fir_im_W[34:11]),
  .valid(valid_W),
  .env(loc_env_W),
  .phase(loc_phase_W)
  );

phase_err phase_err_i (
  .clk(clk),                               // input wire aclk
  .active(valid_N & valid_E & valid_W),
  .env_in_N(loc_env_N),
  .phase_in_N(loc_phase_N),
  .env_in_E(loc_env_E),
  .phase_in_E(loc_phase_E),
  .env_in_W(loc_env_W),
  .phase_in_W(loc_phase_W),
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

generate
  begin : freq_high_189


    always @(posedge fifo_clk) 
    begin
	   if (freq_wr)
       begin
            freq_in_data[31:0] <= freq_in_N;
            freq_in_data[63:32] <= freq_in_E;
            freq_in_data[95:64] <= freq_in_W;
            freq_fifo_wr <= 1;
       end
       else
            freq_fifo_wr <= 0;
    end

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
       ana_wr <= valid;
	end

    always @(posedge clk) 
	begin
        if (valid)
        begin
            env_N <= envN;
            phase_N <= phaseN;
            env_E <= envE;
            phase_E <= phaseE;
            env_W <= envW;
            phase_W <= phaseW;
            
            err_NE <= errNE;
            err_EW <= errEW;
            err_WN <= errWN;            
        end
	end

  end

endgenerate

endmodule
