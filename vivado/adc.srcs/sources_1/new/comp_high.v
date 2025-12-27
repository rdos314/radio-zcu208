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


module comp_high(
    input wire	fifo_clk,
    input wire fifo_wr,
    input wire [383:0] fifo_sample_data,
    input wire [143:0] fifo_doa_data,

    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire clk,
    input wire reset
    );

  reg sample_rd;
  wire [383:0] sample_data;
  wire fifo_sample_empty;
  reg [8:0] fifo_sample_delay;

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

  reg [15:0] raw_N0;
  reg [15:0] raw_N1;
  reg [15:0] raw_N2;
  reg [15:0] raw_N3;
  reg [15:0] raw_N4;
  reg [15:0] raw_N5;
  reg [15:0] raw_N6;
  reg [15:0] raw_N7;
  
  reg [15:0] raw_E0;
  reg [15:0] raw_E1;
  reg [15:0] raw_E2;
  reg [15:0] raw_E3;  
  reg [15:0] raw_E4;  
  reg [15:0] raw_E5;  
  reg [15:0] raw_E6;  
  reg [15:0] raw_E7;  
  
  reg [15:0] raw_W0;
  reg [15:0] raw_W1;
  reg [15:0] raw_W2;
  reg [15:0] raw_W3;
  reg [15:0] raw_W4;
  reg [15:0] raw_W5;
  reg [15:0] raw_W6;
  reg [15:0] raw_W7;

fifo_raw_high fifo_raw_i (
  .rst(reset),                   // input wire rst
  .wr_clk(fifo_clk),             // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(fifo_sample_data),        // input wire [191 : 0] din
  .wr_en(fifo_wr),               // input wire wr_en
  .rd_en(sample_rd),             // input wire rd_en
  .dout(sample_data),            // output wire [191 : 0] dout
  .empty(fifo_sample_empty)      // output wire empty
);

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
    .freq(freq),
    .env_N(env_N),
    .env_E(env_E),
    .env_W(env_W),
    .phase_NE(phase_NE),
    .phase_EW(phase_EW),
    .phase_WN(phase_WN)
);

generate
  begin : comp_high

    always @(posedge clk) 
	begin
        if (cfg_empty)
            cfg_rd <= 0;
        else
            cfg_rd <= 1;
    end

    always @(posedge clk) 
    begin
	   if (fifo_sample_empty)
	   begin
	       fifo_sample_delay <= 9'b000011111;
           sample_rd <= 0;
       end
	   else
	   begin
	       if (fifo_sample_delay)
	       begin
	           sample_rd <= 0;
	           fifo_sample_delay <= fifo_sample_delay - 1;
	       end
	       else
	           sample_rd <= 1;
       end
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

    always @(posedge clk) 
	begin
        if (sample_rd & (!fifo_sample_empty))
        begin
            raw_N0 <= sample_data[15:0];
            raw_N1 <= sample_data[31:16];
            raw_N2 <= sample_data[47:32];
            raw_N3 <= sample_data[63:48];
            raw_N4 <= sample_data[79:64];
            raw_N5 <= sample_data[95:80];
            raw_N6 <= sample_data[111:96];
            raw_N7 <= sample_data[127:112];

            raw_E0 <= sample_data[143:128];
            raw_E1 <= sample_data[159:144];
            raw_E2 <= sample_data[175:160];
            raw_E3 <= sample_data[191:176];
            raw_E4 <= sample_data[207:192];
            raw_E5 <= sample_data[223:208];
            raw_E6 <= sample_data[239:224];
            raw_E7 <= sample_data[255:240];
      
            raw_W0 <= sample_data[271:256];
            raw_W1 <= sample_data[287:272];
            raw_W2 <= sample_data[303:288];
            raw_W3 <= sample_data[319:304];
            raw_W4 <= sample_data[335:320];
            raw_W5 <= sample_data[351:336];
            raw_W6 <= sample_data[367:352];
            raw_W7 <= sample_data[383:368];
        end
    end

  end
    
endgenerate

endmodule
