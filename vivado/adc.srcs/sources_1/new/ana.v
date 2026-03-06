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


module ana(
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
    input wire reset,
    
    output reg comp_wr,
    output reg [15:0] sample,
    output reg [8:0] size,
    output reg [19:0] freq,
    output reg [15:0] angle,
    output reg [9:0] doa_error,
    output reg [5:0] sample_N,
    output reg [5:0] sample_E,
    output reg [5:0] sample_W    
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
  
  wire [15:0] curr_sample;
  wire [8:0] curr_size;
  wire [19:0] curr_freq;
  wire [19:0] curr_phase_NE;
  wire [19:0] curr_phase_EW;
  wire [19:0] curr_phase_WN;
  wire curr_burst;
  
  reg curr_doa;
  reg [1:0] burst;
  wire [1:0] save;

  wire [1:0] save_pair_error;
  wire [1:0] save_phase_error;
  
  reg [15:0] sample_0;
  reg [8:0] size_0;
  reg [19:0] freq_0;
  reg [9:0] doa_error_0;
  reg [19:0] phase_NE_0;
  reg [19:0] phase_EW_0;
  reg [19:0] phase_WN_0;

  wire [15:0] save_sample_0;
  wire [8:0] save_size_0;
  wire [19:0] save_freq_0;
  wire [15:0] save_angle_0;
  wire [9:0] save_doa_error_0;
 
  wire [5:0] save_sample_N_0;
  wire [5:0] save_sample_E_0;
  wire [5:0] save_sample_W_0;

  reg [15:0] sample_1;
  reg [8:0] size_1;
  reg [19:0] freq_1;
  reg [9:0] doa_error_1;
  reg [19:0] phase_NE_1;
  reg [19:0] phase_EW_1;
  reg [19:0] phase_WN_1;

  wire [15:0] save_sample_1;
  wire [8:0] save_size_1;
  wire [19:0] save_freq_1;
  wire [15:0] save_angle_1;
  wire [9:0] save_doa_error_1;
 
  wire [5:0] save_sample_N_1;
  wire [5:0] save_sample_E_1;
  wire [5:0] save_sample_W_1;

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
    .signal_sample(curr_sample),
    .signal_size(curr_size),
    .signal_freq(curr_freq),
    .signal_phase_NE(curr_phase_NE),
    .signal_phase_EW(curr_phase_EW),
    .signal_phase_WN(curr_phase_WN),
    .signal_done(curr_burst)
);

doa_calc doa_calc_0 (
    .clk(clk),
    .reset(reset),
    .config_wr(!cfg_empty),
    .config_adr(cfg_adr),
    .config_data(cfg_data),
    .start(burst[0]),
    .sample_in(sample_0),
    .size_in(size_0),
    .freq_in(freq_0),
    .phase_NE_in(phase_NE_0),
    .phase_EW_in(phase_EW_0),
    .phase_WN_in(phase_WN_0),
    .done(save[0]),
    .pair_error(save_pair_error[0]),
    .phase_error(save_phase_error[0]),
    .sample(save_sample_0),
    .size(save_size_0),
    .freq(save_freq_0),
    .angle(save_angle_0),
    .doa_error(save_doa_error_0),
    .sample_N(save_sample_N_0),
    .sample_E(save_sample_E_0),
    .sample_W(save_sample_W_0)    
);

doa_calc doa_calc_1 (
    .clk(clk),
    .reset(reset),
    .config_wr(!cfg_empty),
    .config_adr(cfg_adr),
    .config_data(cfg_data),
    .start(burst[1]),
    .sample_in(sample_1),
    .size_in(size_1),
    .freq_in(freq_1),
    .phase_NE_in(phase_NE_1),
    .phase_EW_in(phase_EW_1),
    .phase_WN_in(phase_WN_1),
    .done(save[1]),
    .pair_error(save_pair_error[1]),
    .phase_error(save_phase_error[1]),
    .sample(save_sample_1),
    .size(save_size_1),
    .freq(save_freq_1),
    .angle(save_angle_1),
    .doa_error(save_doa_error_1),
    .sample_N(save_sample_N_1),
    .sample_E(save_sample_E_1),
    .sample_W(save_sample_W_1)    
);


/*
	ila_6 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(curr_burst),          // input wire [0:0]  probe3
		.probe1(curr_sample),         // input wire [15:0]  probe3
		.probe2(curr_size),           // input wire [8:0]  probe3
		.probe3(curr_freq),           // input wire [19:0]  probe3
		.probe4(curr_phase_NE),       // input wire [19:0]  probe3
		.probe5(curr_phase_EW),       // input wire [19:0]  probe3
		.probe6(curr_phase_WN),       // input wire [19:0]  probe3
		.probe7(curr_doa),           // input wire [0:0]  probe3
		.probe8(burst),              // input wire [1:0]  probe3
		.probe9(save),               // input wire [1:0]  probe3
		.probe10(comp_wr),           // input wire [0:0]  probe3
		.probe11(sample),            // input wire [15:0]  probe3
		.probe12(size),              // input wire [8:0]  probe3
		.probe13(freq),              // input wire [19:0]  probe3
		.probe14(angle),             // input wire [15:0]  probe3
		.probe15(sample_N),          // input wire [5:0]  probe3
		.probe16(sample_E),          // input wire [5:0]  probe3
		.probe17(sample_W)           // input wire [5:0]  probe3
);
*/

generate
  begin : ana

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

    always @(posedge clk) 
	begin
        if (curr_burst)
        begin
            curr_doa <= curr_doa + 1;
            
            case (curr_doa)
                0 :
                begin
                    sample_0 <= curr_sample;
                    size_0 <= curr_size;
                    freq_0 <= curr_freq;
                    phase_NE_0 <= curr_phase_NE;
                    phase_EW_0 <= curr_phase_EW;
                    phase_WN_0 <= curr_phase_WN;
                    burst[0] <= 1;
                    burst[1] <= 0;
                end
                
                1 :
                begin
                    sample_1 <= curr_sample;
                    size_1 <= curr_size;
                    freq_1 <= curr_freq;
                    phase_NE_1 <= curr_phase_NE;
                    phase_EW_1 <= curr_phase_EW;
                    phase_WN_1 <= curr_phase_WN;
                    burst[1] <= 1;
                    burst[0] <= 0;
                end
            endcase
        end
        else
        begin
            burst <= 0;
            
            if (reset)
                curr_doa <= 0;
        end
    end

    always @(posedge clk) 
	begin
        case (save)
            2'b01:
                begin
                    comp_wr <= 1;
                    sample <= save_sample_0;
                    size <= save_size_0;
                    freq <= save_freq_0;
                    angle <= save_angle_0;
                    doa_error <= save_doa_error_0;
                    sample_N <= save_sample_N_0;
                    sample_E <= save_sample_E_0;
                    sample_W <= save_sample_W_0;
                end

            2'b10:
                begin
                    comp_wr <= 1;
                    sample <= save_sample_1;
                    size <= save_size_1;
                    freq <= save_freq_1;
                    angle <= save_angle_1;
                    doa_error <= save_doa_error_1;
                    sample_N <= save_sample_N_1;
                    sample_E <= save_sample_E_1;
                    sample_W <= save_sample_W_1;
                end
                
            default: comp_wr <= 0;
        endcase
    end

  end
    
endgenerate

endmodule
