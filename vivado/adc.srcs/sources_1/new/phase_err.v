`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2025 14:00:50
// Design Name: 
// Module Name: phase_err
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

module phase_err(
    input wire clk,
    input wire active,
    input wire [15:0] env_in_N,
    input wire [19:0] phase_in_N,
    input wire [15:0] env_in_E,
    input wire [19:0] phase_in_E,
    input wire [15:0] env_in_W,
    input wire [19:0] phase_in_W,

    output reg valid,
    output reg [15:0] env_out_N,
    output reg [19:0] phase_out_N,
    output reg [15:0] env_out_E,
    output reg [19:0] phase_out_E,
    output reg [15:0] env_out_W,
    output reg [19:0] phase_out_W,

    output reg [11:0] err_NE,
    output reg [11:0] err_NW,
    output reg [11:0] err_EW
    );

    reg valid_1;    
    reg [15:0] env_N_1;
    reg [19:0] phase_N_1;
    reg [15:0] env_E_1;
    reg [19:0] phase_E_1;
    reg [15:0] env_W_1;
    reg [19:0] phase_W_1;

    reg valid_2;    
    reg [15:0] env_N_2;
    reg [19:0] phase_N_2;
    reg [15:0] env_E_2;
    reg [19:0] phase_E_2;
    reg [15:0] env_W_2;
    reg [19:0] phase_W_2;

    reg valid_3;    
    reg [15:0] env_N_3;
    reg [19:0] phase_N_3;
    reg [15:0] env_E_3;
    reg [19:0] phase_E_3;
    reg [15:0] env_W_3;
    reg [19:0] phase_W_3;
    
    reg [19:0] raw_diff_NE;
    reg [19:0] raw_diff_NW;
    reg [19:0] raw_diff_EW;

    reg [18:0] prev_NE;
    reg [18:0] prev_NW;
    reg [18:0] prev_EW;

    reg [18:0] diff_NE;
    reg [18:0] diff_NW;
    reg [18:0] diff_EW;

    reg [18:0] raw_err_NE;
    reg [18:0] raw_err_NW;
    reg [18:0] raw_err_EW;
    
ila_7 ila_i (
		.clk(clk),                     // input wire clk
		.probe0(valid),                // input wire [0:0]  probe3
		.probe1(active),               // input wire [0:0]  probe3
		.probe2(phase_in_N),           // input wire [19:0]  probe3
		.probe3(phase_in_E),           // input wire [19:0]  probe3
		.probe4(phase_in_W),           // input wire [19:0]  probe3
		.probe5(phase_out_N),          // input wire [19:0]  probe3
		.probe6(phase_out_E),          // input wire [19:0]  probe3
		.probe7(phase_out_W),          // input wire [19:0]  probe3
		.probe8(raw_diff_NE),          // input wire [19:0]  probe3
		.probe9(raw_diff_NW),          // input wire [19:0]  probe3
		.probe10(raw_diff_EW),         // input wire [19:0]  probe3
		.probe11(prev_NE),             // input wire [19:0]  probe3
		.probe12(prev_NW),             // input wire [19:0]  probe3
		.probe13(prev_EW),             // input wire [19:0]  probe3
		.probe14(diff_NE),             // input wire [18:0]  probe3
		.probe15(diff_NW),             // input wire [18:0]  probe3
		.probe16(diff_EW),             // input wire [18:0]  probe3
		.probe17(raw_err_NE),          // input wire [18:0]  probe3
		.probe18(raw_err_NW),          // input wire [18:0]  probe3
		.probe19(raw_err_EW),          // input wire [18:0]  probe3
		.probe20(err_NE),              // input wire [11:0]  probe3
		.probe21(err_NW),              // input wire [11:0]  probe3
		.probe22(err_EW)               // input wire [11:0]  probe3
    );
    
generate
  begin : phase_err

    always @(posedge clk) 
    begin
        valid_1 <= active;
        env_N_1 <= env_in_N;
        env_E_1 <= env_in_E;
        env_W_1 <= env_in_W;
        phase_N_1 <= phase_in_N;
        phase_E_1 <= phase_in_E;
        phase_W_1 <= phase_in_W;
    end

    always @(posedge clk) 
    begin
        raw_diff_NE <= phase_in_N - phase_in_E;
        raw_diff_NW <= phase_in_N - phase_in_W;
        raw_diff_EW <= phase_in_E - phase_in_W;
    end

    always @(posedge clk) 
    begin
        valid_2 <= valid_1;
        env_N_2 <= env_N_1;
        env_E_2 <= env_E_1;
        env_W_2 <= env_W_1;
        phase_N_2 <= phase_N_1;
        phase_E_2 <= phase_E_1;
        phase_W_2 <= phase_W_1;
    end

    always @(posedge clk) 
    begin
        if (raw_diff_NE[19])
            diff_NE <= ~raw_diff_NE[18:0];
        else
            diff_NE <= raw_diff_NE[18:0];
    end

    always @(posedge clk) 
    begin
        if (raw_diff_NW[19])
            diff_NW <= ~raw_diff_NW[18:0];
        else
            diff_NW <= raw_diff_NW[18:0];
    end

    always @(posedge clk) 
    begin
        if (raw_diff_EW[19])
            diff_EW <= ~raw_diff_EW[18:0];
        else
            diff_EW <= raw_diff_EW[18:0];
    end

    always @(posedge clk) 
    begin
        valid_3 <= valid_2;
        env_N_3 <= env_N_2;
        env_E_3 <= env_E_2;
        env_W_3 <= env_W_2;
        phase_N_3 <= phase_N_2;
        phase_E_3 <= phase_E_2;
        phase_W_3 <= phase_W_2;
    end

    always @(posedge clk) 
    begin
        if (valid)
        begin
            prev_NE <= diff_NE;
            prev_NW <= diff_NW;
            prev_EW <= diff_EW;
        end
        else
        begin
            prev_NE <= 0;
            prev_NW <= 0;
            prev_EW <= 0;
        end
    end

    always @(posedge clk) 
    begin
        raw_err_NE <= diff_NE - prev_NE;
        raw_err_NW <= diff_NW - prev_NW;
        raw_err_EW <= diff_EW - prev_EW;
    end

    always @(posedge clk) 
    begin
        valid <= valid_3;
        env_out_N <= env_N_3;
        env_out_E <= env_E_3;
        env_out_W <= env_W_3;
        phase_out_N <= phase_N_3;
        phase_out_E <= phase_E_3;
        phase_out_W <= phase_W_3;
    end

    always @(posedge clk) 
    begin
        case (raw_err_NE[18:12])
            7'b0000000: err_NE <= raw_err_NE[11:0];
            7'b1111111: err_NE <= ~raw_err_NE[11:0];
            default: err_NE <= 12'hFFF;
        endcase
    end

    always @(posedge clk) 
    begin
        case (raw_err_NW[18:12])
            7'b0000000: err_NW <= raw_err_NW[11:0];
            7'b1111111: err_NW <= ~raw_err_NW[11:0];
            default: err_NW <= 12'hFFF;
        endcase
    end

    always @(posedge clk) 
    begin
        case (raw_err_EW[18:12])
            7'b0000000: err_EW <= raw_err_EW[11:0];
            7'b1111111: err_EW <= ~raw_err_EW[11:0];
            default: err_EW <= 12'hFFF;
        endcase
    end
	
  end

endgenerate
    
endmodule
