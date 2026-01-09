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


module ana_high(
    input wire	fifo_clk,
    input wire ana_wr,
    input wire [15:0] env_N,
    input wire [15:0] env_E,
    input wire [15:0] env_W,
    input wire [19:0] phase_N,
    input wire [19:0] phase_E,
    input wire [19:0] phase_W,
    input wire [11:0] err_NE,
    input wire [11:0] err_EW,
    input wire [11:0] err_WN,

    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire clk,
    input wire reset
    );

  reg ana_fifo_wr;
  reg [143:0] ana_in_data;
  reg ana_fifo_rd;
  wire [143:0] ana_out_data;
  wire ana_empty;
  reg [4:0] ana_delay;

  reg ana_valid;
  reg [143:0] ana_data;
  
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
  wire [15:0] env_doa_N;
  wire [15:0] env_doa_E;
  wire [15:0] env_doa_W;
  wire [19:0] phase_NE;
  wire [19:0] phase_EW;
  wire [19:0] phase_WN;
  wire burst;

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
  .din(ana_in_data),             // input wire [143 : 0] din
  .wr_en(ana_fifo_wr),           // input wire wr_en
  .rd_en(ana_fifo_rd),           // input wire rd_en
  .dout(ana_out_data),           // output wire [143 : 0] dout
  .empty(ana_empty)              // output wire empty
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
    .active(ana_valid),
    .data(ana_data),
    .signal_sample(start_sample),
    .signal_size(size),
    .signal_freq(freq),
    .signal_env_N(env_doa_N),
    .signal_env_E(env_doa_E),
    .signal_env_W(env_doa_W),
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
    .env_N_in(env_doa_N),
    .env_E_in(env_doa_E),
    .env_W_in(env_doa_W),
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
  begin : ana_high

    always @(posedge fifo_clk) 
    begin
	   if (ana_wr)
       begin
            ana_in_data[15:0] <= env_N;
            ana_in_data[35:16] <= phase_N;
            ana_in_data[51:36] <= env_E;
            ana_in_data[71:52] <= phase_E;
            ana_in_data[87:72] <= env_W;
            ana_in_data[107:88] <= phase_W;
            
            ana_in_data[119:108] <= err_NE;
            ana_in_data[131:120] <= err_EW;
            ana_in_data[143:132] <= err_WN;            
            ana_fifo_wr <= 1;
       end
       else
            ana_fifo_wr <= 0;
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
	   if (ana_empty)
	   begin
	       ana_delay <= 5'b11111;
           ana_fifo_rd <= 0;
       end
	   else
	   begin
	       if (ana_delay)
	       begin
	           ana_fifo_rd <= 0;
	           ana_delay <= ana_delay - 1;
	       end
	       else
	           ana_fifo_rd <= 1;
       end
    end

    always @(posedge clk) 
	begin
        if (ana_fifo_rd & (!ana_empty))
        begin
            ana_valid <= 1;
            ana_data <= ana_out_data;
        end
        else
            ana_valid <= 0;
	end

  end
    
endgenerate

endmodule
