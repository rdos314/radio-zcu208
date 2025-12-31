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
//   delay_NE   : Normalized delay between North-East pair (Q1.18)
//   delay_EW   : Normalized delay between East-West pair (Q1.18)
//   delay_WN   : Normalized delay between West-North pair (Q1.18)
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
    output reg [19:0] angle,
    output reg [19:0] delay_NE,
    output reg [19:0] delay_EW,
    output reg [19:0] delay_WN
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
  reg [4:0] run;

  reg shadow;
  reg shadow_err;
  reg [1:0] shadow_id;
  
  reg [1:0] delay_id;
  reg delay_front;
  reg [19:0] delay_base;
  reg [19:0] delay_diff;

  reg cordic_start;
  wire [23:0] cordic_phase = {delay_diff[19], delay_diff[19], delay_diff[19], delay_diff[19], delay_diff}; 
  wire cordic_done;
  wire [47:0] cordic_out;
  wire [19:0] cordic_sin = cordic_out[43:24];
  wire [19:0] cordic_cos = cordic_out[19:0];
  wire [19:0] sqrt3 = 454047;
  wire [39:0] delay_mul;

  reg [19:0] delay_sin_2;
  reg [19:0] delay_curr;
  reg [19:0] delay_prev;
  reg [19:0] delay_next;
  reg [5:0] d_run;
  reg [19:0] d_curr;
  reg [19:0] d_prev;
  reg [19:0] d_next;
  
doa_sincos sincos_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_phase_tvalid(cordic_start),               // input wire s_axis_divisor_tvalid
  .s_axis_phase_tdata(cordic_phase),                // input wire [23 : 0] s_axis_divisor_tdata
  .m_axis_dout_tvalid(cordic_done),                 // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(cordic_out)                    // output wire [47 : 0] m_axis_dout_tdata
);

mult_20x20 mul_c_i 
(
  .CLK(clk),          // input wire CLK
  .A(cordic_cos),     // input wire [19 : 0] A
  .B(sqrt3),          // input wire [19 : 0] B
  .P(delay_mul)       // output wire [39 : 0] P
);
  
ila_0 ila_0_i (
		.clk(clk),                  // input wire clk
		.probe0(start),             // input wire [0:0]  probe3
		.probe1(run),               // input wire [4:0]  probe3
		.probe2(delay_id),          // input wire [1:0]  probe3
		.probe3(delay_front),       // input wire [0:0]  probe3
		.probe4(delay_base),        // input wire [19:0]  probe3
		.probe5(delay_diff),        // input wire [19:0]  probe3
		.probe6(delay_prev),       // input wire [19:0]  probe3
		.probe7(delay_curr),       // input wire [19:0]  probe3
		.probe8(delay_next),       // input wire [19:0]  probe3
		.probe9(cordic_start),     // input wire [0:0]  probe3
		.probe10(cordic_done),      // input wire [0:0]  probe3
		.probe11(cordic_sin),       // input wire [19:0]  probe3
		.probe12(cordic_cos),       // input wire [19:0]  probe3
		.probe13(delay_mul),        // input wire [39:0]  probe3
		.probe14(d_run),            // input wire [5:0]  probe3
		.probe15(d_prev),           // input wire [19:0]  probe3
		.probe16(d_curr),           // input wire [19:0]  probe3
		.probe17(d_next),           // input wire [19:0]  probe3
		.probe18(delay_NE),         // input wire [19:0]  probe3
		.probe19(delay_EW),         // input wire [19:0]  probe3
		.probe20(delay_WN),         // input wire [19:0]  probe3
		.probe21(angle)             // input wire [19:0]  probe3
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
                    run <= {run[3:0], 1'b0};
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
        if (run[1])
        begin
            if (use_first)
            begin
                delay_id <= id;
                delay_front <= sign; 
            end
            else
            begin
                delay_id <= id + 1;
                delay_front <= ~sign;
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
        if (run[2])
        begin
            case ({delay_front, delay_id})
                3'b000: delay_base <= ANGLE_240;
                3'b001: delay_base <= ANGLE_0;
                3'b010: delay_base <= ANGLE_120;
                3'b011: delay_base <= ANGLE_240;
                3'b100: delay_base <= ANGLE_60;
                3'b101: delay_base <= ANGLE_180;
                3'b110: delay_base <= ANGLE_300;
                3'b111: delay_base <= ANGLE_60;
            endcase
        end
    end

    always @(posedge clk) 
    begin
        if (run[3])
        begin
            if (front)
                angle <= base_angle + use_angle;
            else
                angle <= base_angle - use_angle;
        end
    end

    always @(posedge clk) 
    begin
        if (run[4])
        begin
            delay_diff <= angle - delay_base;
            cordic_start <= 1;
        end
        else
            cordic_start <= 0;
    end

    always @(posedge clk) 
    begin
        if (cordic_done)
        begin
            delay_sin_2 <= {cordic_sin[19], cordic_sin[19:1]};
            d_run <= 1;
        end
        else
        begin
            if (reset)
                d_run <= 0;
            else
                d_run <= {d_run[4:0], 1'b0};
        end
    end

    always @(posedge clk) 
    begin
        if (d_run[3])
        begin
            delay_curr <= cordic_sin;
            delay_prev <= delay_sin_2 + delay_mul[38:19];
            delay_next <= delay_sin_2 - delay_mul[38:19];
        end
    end

    always @(posedge clk) 
    begin
        if (d_run[4])
        begin
            if (delay_front)
            begin
                d_curr <= delay_curr ;
                d_prev <= delay_prev;
                d_next <= delay_next;
            end
            else
            begin
                d_curr <= -delay_curr ;
                d_prev <= -delay_prev;
                d_next <= -delay_next;
            end
        end
    end
    
    always @(posedge clk) 
    begin
        if (d_run[5])
        begin
            case (delay_id)                
                2'b00:
                    begin
                        delay_WN <= d_prev;
                        delay_NE <= d_curr;
                        delay_EW <= d_next;
                        done <= 1;
                    end

                2'b01:
                    begin
                        delay_NE <= d_prev;
                        delay_EW <= d_curr;
                        delay_WN <= d_next;
                        done <= 1;
                    end
                
                2'b10:
                    begin
                        delay_EW <= d_prev;
                        delay_WN <= d_curr;
                        delay_NE <= d_next;
                        done <= 1;
                    end
                
                2'b11:
                    begin
                        delay_EW <= d_prev;
                        delay_WN <= d_curr;
                        delay_NE <= d_next;
                        done <= 1;
                    end
            endcase
        end
        else
            done <= 0;
    end

// curr: sin(a)
// prev: sin(a + 60) = (sin(a) + sqrt(3) * cos(a)) / 2
// next: sin(a - 60) = (sin(a) - sqrt(3) * cos(a)) / 2


  end

endgenerate
    
endmodule
