`timescale 1ns / 1ps

// ============================================================================
// Module: doa_angle
// ============================================================================
// Description:
//   Direction-of-Arrival (DOA) angle resolver for a 3-axis antenna geometry
//   (NE, EW, WN). The module combines three signed pairwise angles into a
//   single absolute bearing expressed as a fractional turn.
//
//   All input angles are assumed to be in the range (-π, +π), represented
//   as signed fractional values. One full revolution corresponds to 2^20.
//   No modulo, wrap, or normalization is performed inside this module.
//
//   The algorithm:
//     1. Determines the active 120-degree sector from input angle signs.
//     2. Selects the optimal angle pair by magnitude comparison.
//     3. Applies shadowing logic to resolve occluded directions.
//     4. Adds or subtracts a fixed sector base angle.
//
//   The output is the compass angle covering the full 360° range.
//
// Angle Representation: (Q0.19)
//   - Signed 20-bit fractional turn
//   - Range: (-π, +π)
//   - One full revolution = 2^20
//   - 60° = 2^20 / 6
//
// Latency:
//   - Fixed pipeline latency of 4 clock cycles from 'start' to 'done'
//
// Inputs:
//   clk        : System clock
//   reset      : Synchronous reset
//   start      : Starts a new DOA calculation
//
//   angle_NE   : Signed angle in the North-East plane (Q0.19)
//   angle_EW   : Signed angle in the East-West plane (Q0.19)
//   angle_WN   : Signed angle in the West-North plane (Q0.19)
//
//   shadow_NE  : Shadow indication for NE pair
//   shadow_EW  : Shadow indication for EW pair
//   shadow_WN  : Shadow indication for WN pair
//
// Outputs:
//   done       : Pulses high for one cycle when 'angle' is valid
//
//   shadow_N   : Indicates North direction is shadowed
//   shadow_E   : Indicates East direction is shadowed
//   shadow_W   : Indicates West direction is shadowed
//
//   angle      : DOA compass angle (Q0.19)
//
// Notes:
//   - This module assumes that all input angles are already scaled to
//     (-π, +π). Any required normalization or scaling must be handled
//     upstream (e.g., in doa_pair).
//
//   - Shadowing overrides magnitude-based angle selection.
//
//   - The design is fully synchronous and free of combinational feedback.
//
// Author:
//   Leif Ekblad
// ============================================================================
 
module doa_angle(
    input wire clk,
    input wire reset,
    input wire start,

    input wire [19:0] angle_NE,
    input wire [19:0] angle_EW,
    input wire [19:0] angle_WN,
    
    input wire shadow_NE,
    input wire shadow_EW,
    input wire shadow_WN,
    
    output reg done,
    output reg shadow_N,
    output reg shadow_E,
    output reg shadow_W,
    output reg [19:0] angle    
);

  localparam ANGLE_0 = 20'h00000;
  localparam ANGLE_60 = 20'h2AAAB;
  localparam ANGLE_120 = 20'h55555;
  localparam ANGLE_180 = 20'h80000;
  localparam ANGLE_240 = 20'hAAAAB;
  localparam ANGLE_300 = 20'hD5555;

  localparam ID_NE = 0;
  localparam ID_EW = 1;
  localparam ID_WN = 2;

  wire sign_NE = angle_NE[19];
  wire sign_EW = angle_EW[19];
  wire sign_WN = angle_WN[19];

  reg sign;
  reg [1:0] id;
  reg [19:0] first_angle;
  reg [19:0] second_angle;
  reg [19:0] diff_angle;
  reg [1:0] use_id;
  reg [19:0] use_angle;
  reg [19:0] base_angle;
  wire use_first = diff_angle[19];
  reg front;
  reg [3:0] run;

  reg shadow;
  reg shadow_err;
  reg [1:0] shadow_id;
  
ila_0 ila_0_i (
		.clk(clk),                  // input wire clk
		.probe0(start),             // input wire [0:0]  probe3
		.probe1(run),               // input wire [3:0]  probe3
		.probe2(front),             // input wire [0:0]  probe3
		.probe3(angle_NE),          // input wire [19:0]  probe3
		.probe4(angle_EW),          // input wire [19:0]  probe3
		.probe5(angle_WN),          // input wire [19:0]  probe3
		.probe6(sign),              // input wire [0:0]  probe3
		.probe7(shadow),            // input wire [0:0]  probe3
		.probe8(shadow_N),          // input wire [0:0]  probe3
		.probe9(shadow_E),          // input wire [0:0]  probe3
		.probe10(shadow_W),         // input wire [0:0]  probe3
		.probe11(shadow_err),       // input wire [0:0]  probe3
		.probe12(shadow_id),        // input wire [1:0]  probe3
		.probe13(id),               // input wire [1:0]  probe3
		.probe14(first_angle),      // input wire [19:0]  probe3
		.probe15(second_angle),     // input wire [19:0]  probe3
		.probe16(diff_angle),       // input wire [19:0]  probe3
		.probe17(use_angle),        // input wire [19:0]  probe3
		.probe18(use_id),           // input wire [1:0]  probe3
		.probe19(base_angle),       // input wire [19:0]  probe3
		.probe20(angle)             // input wire [19:0]  probe3
);

generate
  begin : doa_angle

    always @(posedge clk) 
    begin
        if (start)
        begin
            case ({sign_NE, sign_EW, sign_WN})
                3'b001:
                    begin
                        run <= 1;                        
                        sign <= 0;
                        id <= ID_NE;
                        first_angle <= angle_NE;
                        second_angle <= angle_EW;
                    end

                3'b010:
                    begin
                        run <= 1;                        
                        sign <= 0;
                        id <= ID_WN;
                        first_angle <= angle_WN;
                        second_angle <= angle_NE;
                    end

                3'b011:
                    begin
                        run <= 1;                        
                        sign <= 1;
                        id <= ID_EW;
                        first_angle <= ~angle_EW;
                        second_angle <= ~angle_WN;
                    end

                3'b100:
                    begin
                        run <= 1;                        
                        sign <= 0;
                        id <= ID_EW;
                        first_angle <= angle_EW;
                        second_angle <= angle_WN;
                    end

                3'b101:
                    begin
                        run <= 1;                        
                        sign <= 1;
                        id <= ID_WN;
                        first_angle <= ~angle_WN;
                        second_angle <= ~angle_NE;
                    end

                3'b110:
                    begin
                        run <= 1;                        
                        sign <= 1;
                        id <= ID_NE;
                        first_angle <= ~angle_NE;
                        second_angle <= ~angle_EW;
                    end
                   
                default : run <= 0;
            endcase
        end
        else
        begin
            if (reset)
                run <= 0;
            else
            begin
                if (shadow_err)
                    run <= 0;
                else
                    run <= {run[2:0], 1'b0};
            end
        end
    end

    always @(posedge clk) 
    begin
        if (start)
        begin
            case ({shadow_NE, shadow_EW, shadow_WN})
                3'b000: 
                    begin
                        shadow_err <= 0;
                        shadow_N <= 0;
                        shadow_E <= 0;
                        shadow_W <= 0;
                    end

                3'b001: 
                    begin
                        shadow_err <= 0;
                        shadow_E <= 0;

                        if (sign_WN)
                        begin
                            shadow_N <= 1;
                            shadow_W <= 0;
                        end
                        else
                        begin
                            shadow_W <= 1;
                            shadow_N <= 0;
                        end
                    end

                3'b010: 
                    begin
                        shadow_err <= 0;
                        shadow_N <= 0;

                        if (sign_EW)
                        begin
                            shadow_W <= 1;
                            shadow_E <= 0;
                        end
                        else
                        begin
                            shadow_E <= 1;
                            shadow_W <= 0;
                        end
                    end            

                3'b100:                 
                    begin
                        shadow_err <= 0;
                        shadow_W <= 0;
                        
                        if (sign_NE)
                        begin
                            shadow_E <= 1;
                            shadow_N <= 0;
                        end
                        else
                        begin
                            shadow_N <= 1;
                            shadow_E <= 0;
                        end
                    end            
                    
                default: shadow_err <= 1;
            endcase
        end
        else
        begin
            if (reset)
            begin
                shadow_N <= 0;
                shadow_E <= 0;
                shadow_W <= 0;
            end

            shadow_err <= 0;
        end
    end


    always @(posedge clk) 
    begin
        if (run[0])
            diff_angle <= first_angle - second_angle;
    end

    always @(posedge clk) 
    begin
        if (run[0])
        begin
            case ({shadow_N, shadow_E, shadow_W})
                3'b001:
                    begin
                        shadow <= 1;
                        shadow_id <= ID_NE;
                    end
 
               3'b010:
                    begin
                        shadow <= 1;
                        shadow_id <= ID_WN;
                    end
 
               3'b100:
                    begin
                        shadow <= 1;
                        shadow_id <= ID_EW;
                    end

                default: shadow <= 0;  
            endcase
        end
    end
    
    always @(posedge clk) 
    begin
        if (run[1])
        begin
            if (shadow)
            begin
                use_id <= shadow_id;
                front <= 1;
            end
            else
            begin
                if (use_first)
                begin
                    use_id <= id;
                    front <= sign; 
                end
                else
                begin
                    use_id <= id + 1;
                    front <= ~sign;
                end
            end
        end
    end

    always @(posedge clk) 
    begin
        if (run[2])
        begin
            case (use_id)
                2'b00: use_angle <= angle_NE;
                2'b01: use_angle <= angle_EW;
                2'b10: use_angle <= angle_WN;
                2'b11: use_angle <= angle_NE;
            endcase
        end
    end

    always @(posedge clk) 
    begin
        if (run[2])
        begin
            case ({front, use_id})
                3'b000: base_angle <= ANGLE_240;
                3'b001: base_angle <= ANGLE_0;
                3'b010: base_angle <= ANGLE_120;
                3'b011: base_angle <= ANGLE_240;
                3'b100: base_angle <= ANGLE_60;
                3'b101: base_angle <= ANGLE_180;
                3'b110: base_angle <= ANGLE_300;
                3'b111: base_angle <= ANGLE_60;
            endcase
        end
    end

    always @(posedge clk) 
    begin
        if (run[3])
        begin
            done <= 1;
            if (front)
                angle <= base_angle + use_angle;
            else
                angle <= base_angle - use_angle;
        end
        else
            done <= 0;
    end

  end

endgenerate
    
endmodule
