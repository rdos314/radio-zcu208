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
    input wire clk,
    input wire reset,
    input wire fifo_valid,
    input wire [47:0] fifo_data,

    output reg valid,

    output reg [15:0] env_N,
    output reg [19:0] phase_N,
    output reg [19:0] diff_N,

    output reg [15:0] env_E,
    output reg [19:0] phase_E,
    output reg [19:0] diff_E,

    output reg [15:0] env_W,
    output reg [19:0] phase_W,
    output reg [19:0] diff_W
    );

  reg [15:0] N;
  reg [15:0] E;
  reg [15:0] W;

  reg morlet_active;
  reg [6:0] start_delay;
  reg [6:0] curr_delay;
  
  wire validN;
  wire [15:0] envN;
  wire [19:0] phaseN;
  reg [19:0] prevN;
  reg [19:0] diffN;

  wire validE;
  wire [15:0] envE;
  wire [19:0] phaseE;
  reg [19:0] prevE;
  reg [19:0] diffE;

  wire validW;
  wire [15:0] envW;
  wire [19:0] phaseW;
  reg [19:0] prevW;
  reg [19:0] diffW;
    
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

fir_doa_low_re fir_freq_low_re_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_re fir_freq_low_re_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_re fir_freq_low_re_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_re_W),         // output wire s_axis_data_tready
  .s_axis_data_tdata(W),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_re_W),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_re_W)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_freq_low_im_N_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_N),         // output wire s_axis_data_tready
  .s_axis_data_tdata(N),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_N),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_N)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_freq_low_im_E_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
  .s_axis_data_tready(ready_im_E),         // output wire s_axis_data_tready
  .s_axis_data_tdata(E),                   // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(valid_im_E),         // output wire m_axis_data_tvalid
  .m_axis_data_tdata(fir_im_E)             // output wire [39 : 0] m_axis_data_tdata
);

fir_doa_low_im fir_freq_low_im_W_i (
  .aresetn(~reset),                        // input wire aresetn
  .aclk(clk),                              // input wire aclk
  .s_axis_data_tvalid(fifo_valid),         // input wire s_axis_data_tvalid
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
  .valid(validN),
  .env(envN),
  .phase(phaseN)
  );

morlet_to_phase_env freq_E_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_E[36:13]),
  .im(fir_im_E[36:13]),
  .valid(validE),
  .env(envE),
  .phase(phaseE)
  );

morlet_to_phase_env freq_W_i (
  .clk(clk),                               // input wire aclk
  .active(morlet_active),
  .re(fir_re_W[36:13]),
  .im(fir_im_W[36:13]),
  .valid(validW),
  .env(envW),
  .phase(phaseW)
  );

      
ila_0 ila_0_i (
		.clk(clk),                  // input wire clk
		.probe0(fifo_valid),        // input wire [0:0]  probe3
		.probe1(fifo_data[15:0]),   // input wire [15:0]  probe3
		.probe2(start_delay),       // input wire [6:0]  probe3
		.probe3(curr_delay),        // input wire [6:0]  probe3
		.probe4(morlet_active),     // input wire [0:0]  probe3
		.probe5(valid),             // input wire [0:0]  probe3
		.probe6(N),                 // input wire [15:0]  probe3
		.probe7(fir_re_N[36:13]),   // input wire [23:0]  probe3
		.probe8(fir_im_N[36:13]),   // input wire [23:0]  probe3
		.probe9(validN),             // input wire [0:0]  probe3
		.probe10(envN),             // input wire [15:0]  probe3
		.probe11(phaseN),           // input wire [19:0]  probe3
		.probe12(E),                 // input wire [15:0]  probe3
		.probe13(fir_re_E[36:13]),  // input wire [23:0]  probe3
		.probe14(fir_im_E[36:13]),  // input wire [23:0]  probe3
		.probe15(validE),             // input wire [0:0]  probe3
		.probe16(envE),            // input wire [15:0]  probe3
		.probe17(phaseE),          // input wire [19:0]  probe3
		.probe18(W),                // input wire [15:0]  probe3
		.probe19(fir_re_W[36:13]),  // input wire [23:0]  probe3
		.probe20(fir_im_W[36:13]),  // input wire [23:0]  probe3
		.probe21(validW),             // input wire [0:0]  probe3
		.probe22(envW),            // input wire [15:0]  probe3
		.probe23(phaseW)          // input wire [19:0]  probe3
	);

generate
  begin : deci_low

    always @(posedge clk) 
	begin
	  if (fifo_valid)
	  begin
	    if (start_delay == 122)
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
  	      if (start_delay == 122)
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
	  if (fifo_valid)
	  begin
         N <= fifo_data[15:0];
         E <= fifo_data[31:16];
         W <= fifo_data[47:32];
      end
    end

    always @(posedge clk) 
	begin
	  if (validN & validE & validW)
	  begin
         diffN <= phase_N - prevN;
         prevN <= phase_N;

         diffE <= phase_E - prevE;
         prevE <= phase_E;
         
         diffW <= phase_W - prevW;
         prevW <= phase_W;

	     env_N <= envN;
	     phase_N <= phaseN;
	     diff_N <= diffN;

 	     env_E <= envE;
	     phase_E <= phaseE;
	     diff_E <= diffE;
	    
	     env_W <= envW;
	     phase_W <= phaseW;
	     diff_W <= diffW;
	    
	     valid <= 1;
	  end
	  else
	    valid <= 0;
	end
	
  end

endgenerate

endmodule
