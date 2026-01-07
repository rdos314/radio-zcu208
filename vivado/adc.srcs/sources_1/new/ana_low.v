`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2025 23:09:03
// Design Name: 
// Module Name: composite
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


module ana_low(
    input wire	fifo_clk,
    input wire fifo_wr,
    input wire [143:0] fifo_doa_data,

    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire clk,
    input wire reset
    );

  reg doa_rd;
  wire [143:0] doa_out_data;
  wire doa_empty;
  reg [4:0] doa_delay;

  reg doa_valid;
  reg [143:0] doa_data;
  
  wire [39:0] config_data_adr_in;
  assign config_data_adr_in[7:0] = config_adr;
  assign config_data_adr_in[39:8] = config_data;

  wire [39:0] config_data_adr_out;
  wire [7:0] cfg_adr = config_data_adr_out[7:0];
  wire [31:0] cfg_data = config_data_adr_out[39:8];
  reg cfg_rd;
  wire cfg_empty;
  
  wire [31:0] start_sample;
  wire [8:0] size;
  wire [19:0] freq;
  wire [15:0] env_N;
  wire [15:0] env_E;
  wire [15:0] env_W;
  wire [19:0] phase_NE;
  wire [19:0] phase_EW;
  wire [19:0] phase_WN;
  wire burst;

  wire [127:0] comp_N;
  wire [127:0] comp_E;
  wire [127:0] comp_W;

  reg sel_N;
  reg sel_E;
  reg sel_W;

  wire save;
  wire [31:0] save_sample;
  wire [8:0] save_size;
  wire [19:0] save_freq;
  wire [15:0] save_angle;

  wire [15:0] save_env_N;
  wire [15:0] save_env_E;
  wire [15:0] save_env_W;
 
  wire [5:0] save_sample_N;
  wire [5:0] save_sample_E;
  wire [5:0] save_sample_W;

fifo_doa fifo_doa_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(fifo_doa_data),           // input wire [143 : 0] din
  .wr_en(fifo_wr),               // input wire wr_en
  .rd_en(doa_rd),                // input wire rd_en
  .dout(doa_out_data),           // output wire [143 : 0] dout
  .empty(doa_empty)              // output wire empty
);

fifo_config fifo_config_i (
  .rst(reset),                   // input wire rst
  .wr_clk(config_clk),           // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(config_data_adr_in),      // input wire [39 : 0] din
  .wr_en(config_wr),             // input wire wr_en
  .rd_en(cfg_rd),                // input wire rd_en
  .dout(config_data_adr_out),    // output wire [39 : 0] dout
  .empty(cfg_empty)              // output wire empty
);

det_signal det_sig_i (
    .clk(clk),
    .reset(reset),
    .config_wr(!cfg_empty),
    .config_adr(cfg_adr),
    .config_data(cfg_data),
    .active(doa_valid),
    .data(doa_data),
    .signal_sample(start_sample),
    .signal_size(size),
    .signal_freq(freq),
    .signal_env_N(env_N),
    .signal_env_E(env_E),
    .signal_env_W(env_W),
    .signal_phase_NE(phase_NE),
    .signal_phase_EW(phase_EW),
    .signal_phase_WN(phase_WN),
    .signal_done(burst)
);

doa_calc doa_calc_i (
    .clk(clk),
    .reset(reset),
    .config_wr(!cfg_empty),
    .config_adr(cfg_adr),
    .config_data(cfg_data),
    .start(burst),
    .sample_in(start_sample),
    .size_in(size),
    .freq_in(freq),
    .env_N_in(env_N),
    .env_E_in(env_E),
    .env_W_in(env_W),
    .phase_NE_in(phase_NE),
    .phase_EW_in(phase_EW),
    .phase_WN_in(phase_WN),
    .done(save),
    .sample(save_sample),
    .size(save_size),
    .freq(save_freq),
    .angle(save_angle),
    .env_N(save_env_N),
    .env_E(save_env_E),
    .env_W(save_env_W),
    .sample_N(save_sample_N),
    .sample_E(save_sample_E),
    .sample_W(save_sample_W)    
);

generate
  begin : ana_low

    always @(posedge clk) 
	begin
	   if (reset)
	   begin
	       sel_N <= 0;
	       sel_E <= 0;
	       sel_W <= 0;
	    end
	    else
	    begin
	       sel_N <= sel_N + 1;
	       sel_E <= sel_E + 1;
	       sel_W <= sel_W + 1;
	    end
	end

    always @(posedge clk) 
	begin
        if (cfg_empty)
            cfg_rd <= 0;
        else
            cfg_rd <= 1;
    end

    always @(posedge clk) 
    begin
	   if (doa_empty)
	   begin
	       doa_delay <= 5'b11111;
           doa_rd <= 0;
       end
	   else
	   begin
	       if (doa_delay)
	       begin
	           doa_rd <= 0;
	           doa_delay <= doa_delay - 1;
	       end
	       else
	           doa_rd <= 1;
       end
    end

    always @(posedge clk) 
	begin
        if (doa_rd & (!doa_empty))
        begin
            doa_valid <= 1;
            doa_data <= doa_out_data;
        end
        else
            doa_valid <= 0;
	end

  end
    
endgenerate

endmodule
