`timescale 1ns / 1ps

// ============================================================================
// Module: doa_angle
// ============================================================================
// Description:
//   Direction-of-Arrival (DOA) resolver for a 3-axis antenna geometry
//   (NE, EW, WN). The module combines three signed pairwise angle estimates
//   into a single absolute compass bearing and corresponding per-antenna
//   relative delays.
//
//   All angles are represented as signed fractional turns. One full
//   revolution corresponds to 2^20. No modulo, wrap, or normalization is
//   performed inside this module.
//
//   The algorithm:
//     1. Determines the active 120-degree sector from input angle signs.
//     2. Selects the optimal antenna pair by magnitude comparison.
//     3. Applies shadowing logic to resolve occluded directions.
//     4. Selects a fixed sector base angle (0, 60, 120, 180, 240, 300 degrees).
//     5. Adds or subtracts the fine angle offset to form a global bearing.
//     6. Projects the bearing back into per-antenna delays using a CORDIC
//        sin/cos implementation and fixed geometric relationships.
//
//   The output compass angle spans the full 360° range. Delay outputs are
//   integer-aligned values suitable for coherent signal combination without
//   fractional sample delays.
//
// ---------------------------------------------------------------------------
// Numeric Formats
// ---------------------------------------------------------------------------
//
// Angle representation (fractional turn):
//   - Signed 20-bit fixed-point, Q0.19
//   - Range: [-0.5, +0.5) turns (±180°)
//   - One full revolution = 2^20
//   - 60° = 2^20 / 6
//
// CORDIC phase input format:
//   - Signed 22-bit value
//   - Consists of the 20-bit Q0.19 angle with two redundant sign bits
//   - Format: {sign, sign, angle[19:0]}
//   - Range matches the CORDIC sin/cos IP configuration
//
// CORDIC output format:
//   - Signed 20-bit sine and cosine outputs
//
// Delay representation:
//   - Signed 20-bit fixed-point, Q2.17
//   - Represents relative geometric delay (normalized units)
//   - Scaling supports √3 projection and antenna geometry without overflow
//
// ---------------------------------------------------------------------------
// Latency
// ---------------------------------------------------------------------------
//   - Fixed, deterministic pipeline latency
//   - Angle and delay paths have different internal depths
//   - 'done' pulses when all outputs are valid
//
// ---------------------------------------------------------------------------
// Inputs
// ---------------------------------------------------------------------------
//   clk        : System clock
//   reset      : Synchronous reset
//   start      : Starts a new DOA calculation
//
//   angle_NE   : Signed NE pair angle, Q0.19 (fractional turn)
//   angle_EW   : Signed EW pair angle, Q0.19 (fractional turn)
//   angle_WN   : Signed WN pair angle, Q0.19 (fractional turn)
//
//   shadow_NE  : Shadow indication for NE pair
//   shadow_EW  : Shadow indication for EW pair
//   shadow_WN  : Shadow indication for WN pair
//
// ---------------------------------------------------------------------------
// Outputs
// ---------------------------------------------------------------------------
//   done       : Pulses high for one cycle when outputs are valid
//
//   shadow_N   : North antenna is shadowed
//   shadow_E   : East antenna is shadowed
//   shadow_W   : West antenna is shadowed
//
//   angle      : Absolute compass angle, Q0.19 (fractional turn)
//
//   delay_NE   : Relative delay for NE antenna, Q2.17
//   delay_EW   : Relative delay for EW antenna, Q2.17
//   delay_WN   : Relative delay for WN antenna, Q2.17
//
// ---------------------------------------------------------------------------
// Notes
// ---------------------------------------------------------------------------
//   - Input angles must already be scaled to the fractional-turn domain.
//     Any normalization or arcsin processing must be handled upstream
//     (e.g., in doa_pair).
//
//   - Shadowing overrides magnitude-based angle selection.
//
//   - Delay outputs are derived from sin/cos projection of the final
//     compass angle and reflect the physical antenna geometry.
//
//   - The design is fully synchronous, fully pipelined, and free of
//     combinational feedback, making it suitable for high-frequency operation.
//
// Author:
//   Leif Ekblad
// ============================================================================
 
module doa_angle(
    input wire clk,
    input wire reset,
    input wire start,

    input wire [15:0] sample_in,
    input wire [8:0] size_in,
    input wire [19:0] freq_in,

    input wire [19:0] phase_NE_in,
    input wire [19:0] phase_EW_in,
    input wire [19:0] phase_WN_in,

    input wire [15:0] angle_NE,
    input wire [15:0] angle_EW,
    input wire [15:0] angle_WN,
    
    input wire shadow_NE,
    input wire shadow_EW,
    input wire shadow_WN,
    
    output reg done,

    output reg [15:0] sample,
    output reg [8:0] size,
    output reg [19:0] freq,

    output reg shadow_N,
    output reg shadow_E,
    output reg shadow_W,

    output reg [15:0] angle,

    output reg [19:0] phase_NE,
    output reg [19:0] phase_EW,
    output reg [19:0] phase_WN,

    output reg [15:0] delay_NE,
    output reg [15:0] delay_EW,
    output reg [15:0] delay_WN
);

  localparam ANGLE_0 = 16'h0000;
  localparam ANGLE_60 = 16'h2AAB;
  localparam ANGLE_120 = 16'h5555;
  localparam ANGLE_180 = 16'h8000;
  localparam ANGLE_240 = 16'hAAAB;
  localparam ANGLE_300 = 16'hD555;

  localparam ID_NE = 0;
  localparam ID_EW = 1;
  localparam ID_WN = 2;

  wire sign_NE = angle_NE[15];
  wire sign_EW = angle_EW[15];
  wire sign_WN = angle_WN[15];

  reg sign;
  reg [1:0] id;
  reg [15:0] first_angle;
  reg [15:0] second_angle;
  reg [15:0] diff_angle;
  reg [1:0] use_id;
  reg [15:0] use_angle;
  reg [15:0] base_angle;
  wire use_first = diff_angle[15];
  reg front;
  reg [4:0] run;

  reg shadow;
  reg shadow_N_loc;
  reg shadow_E_loc;
  reg shadow_W_loc;
  reg shadow_err;
  reg [1:0] shadow_id;
  
  reg [1:0] delay_id;
  reg delay_front;
  reg [15:0] delay_base;
  reg [15:0] delay_diff;

  reg cordic_start;
  reg [15:0] sample_run;
  reg [8:0] size_run;
  reg [19:0] freq_run;
  reg [15:0] angle_run;

  reg shadow_N_run;
  reg shadow_E_run;
  reg shadow_W_run;

  reg [19:0] phase_NE_run;
  reg [19:0] phase_EW_run;
  reg [19:0] phase_WN_run;
  
  wire [23:0] cordic_phase = {delay_diff[15], delay_diff[15], delay_diff[15], delay_diff[15], delay_diff, 4'b0000}; 
  wire cordic_done;
  wire [31:0] cordic_out;
  wire [15:0] cordic_sin = cordic_out[31:16];
  wire [19:0] cordic_cos = {cordic_out[15:0], 4'b0000};
  wire [19:0] sqrt3 = 454047;
  wire [39:0] delay_mul;

  reg [15:0] sample_cordic;
  reg [8:0] size_cordic;
  reg [19:0] freq_cordic;
  reg [15:0] angle_cordic;

  reg shadow_N_cordic;
  reg shadow_E_cordic;
  reg shadow_W_cordic;

  reg [19:0] phase_NE_cordic;
  reg [19:0] phase_EW_cordic;
  reg [19:0] phase_WN_cordic;

  reg [15:0] delay_sin_2;
  reg [15:0] delay_curr;
  reg [15:0] delay_prev;
  reg [15:0] delay_next;
  reg [5:0] d_run;
  reg [15:0] d_curr;
  reg [15:0] d_prev;
  reg [15:0] d_next;
  
doa_sincos sincos_i (
  .aclk(clk),                                       // input wire aclk
  .s_axis_phase_tvalid(cordic_start),               // input wire s_axis_divisor_tvalid
  .s_axis_phase_tdata(cordic_phase),                // input wire [23 : 0] s_axis_divisor_tdata
  .m_axis_dout_tvalid(cordic_done),                 // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(cordic_out)                    // output wire [31 : 0] m_axis_dout_tdata
);

mult_20x20 mul_c_i 
(
  .CLK(clk),          // input wire CLK
  .A(cordic_cos),     // input wire [19 : 0] A
  .B(sqrt3),          // input wire [19 : 0] B
  .P(delay_mul)       // output wire [39 : 0] P
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
                        shadow_N_loc <= 0;
                        shadow_E_loc <= 0;
                        shadow_W_loc <= 0;
                    end

                3'b001: 
                    begin
                        shadow_err <= 0;
                        shadow_E_loc <= 0;

                        if (sign_WN)
                        begin
                            shadow_N_loc <= 1;
                            shadow_W_loc <= 0;
                        end
                        else
                        begin
                            shadow_W_loc <= 1;
                            shadow_N_loc <= 0;
                        end
                    end

                3'b010: 
                    begin
                        shadow_err <= 0;
                        shadow_N_loc <= 0;

                        if (sign_EW)
                        begin
                            shadow_W_loc <= 1;
                            shadow_E_loc <= 0;
                        end
                        else
                        begin
                            shadow_E_loc <= 1;
                            shadow_W_loc <= 0;
                        end
                    end            

                3'b100:                 
                    begin
                        shadow_err <= 0;
                        shadow_W_loc <= 0;
                        
                        if (sign_NE)
                        begin
                            shadow_E_loc <= 1;
                            shadow_N_loc <= 0;
                        end
                        else
                        begin
                            shadow_N_loc <= 1;
                            shadow_E_loc <= 0;
                        end
                    end            
                    
                default: shadow_err <= 1;
            endcase
        end
        else
        begin
            if (reset)
            begin
                shadow_N_loc <= 0;
                shadow_E_loc <= 0;
                shadow_W_loc <= 0;
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
            case ({shadow_N_loc, shadow_E_loc, shadow_W_loc})
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
                angle_run <= base_angle + use_angle;
            else
                angle_run <= base_angle - use_angle;
        end
    end

    always @(posedge clk) 
    begin
        if (run[4])
        begin
            delay_diff <= angle_run - delay_base;
            cordic_start <= 1;

            sample_run <= sample_in;
            size_run <= size_in;
            freq_run <= freq_in;
            
            shadow_N_run <= shadow_N_loc;
            shadow_E_run <= shadow_E_loc;
            shadow_W_run <= shadow_W_loc;

            phase_NE_run <= phase_NE_in;
            phase_EW_run <= phase_EW_in;
            phase_WN_run <= phase_WN_in;
        end
        else
            cordic_start <= 0;
    end

    always @(posedge clk) 
    begin
        if (cordic_done)
        begin
            delay_sin_2 <= {cordic_sin[15], cordic_sin[15:1]};
            d_run <= 1;

            sample_cordic <= sample_run;
            size_cordic <= size_run;
            freq_cordic <= freq_run;
            angle_cordic <= angle_run;
            
            shadow_N_cordic <= shadow_N_run;
            shadow_E_cordic <= shadow_E_run;
            shadow_W_cordic <= shadow_W_run;

            phase_NE_cordic <= phase_NE_run;
            phase_EW_cordic <= phase_EW_run;
            phase_WN_cordic <= phase_WN_run;
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
            delay_prev <= delay_sin_2 - delay_mul[38:23];
            delay_next <= delay_sin_2 + delay_mul[38:23];
        end
    end

    always @(posedge clk) 
    begin
        if (d_run[4])
        begin
            if (delay_front)
            begin
                d_curr <= delay_curr ;
                d_prev <= -delay_prev;
                d_next <= -delay_next;
            end
            else
            begin
                d_curr <= -delay_curr ;
                d_prev <= delay_prev;
                d_next <= delay_next;
            end
        end
    end
    
    always @(posedge clk) 
    begin
        if (d_run[5])
        begin
            done <= 1;
            sample <= sample_cordic;
            size <= size_cordic;
            freq <= freq_cordic;
            angle <= angle_cordic;
            
            shadow_N <= shadow_N_cordic;
            shadow_E <= shadow_E_cordic;
            shadow_W <= shadow_W_cordic;

            phase_NE <= phase_NE_cordic;
            phase_EW <= phase_EW_cordic;
            phase_WN <= phase_WN_cordic;
            
            case (delay_id)                
                2'b00:
                    begin
                        delay_WN <= d_prev;
                        delay_NE <= d_curr;
                        delay_EW <= d_next;
                    end

                2'b01:
                    begin
                        delay_NE <= d_prev;
                        delay_EW <= d_curr;
                        delay_WN <= d_next;
                    end
                
                2'b10:
                    begin
                        delay_EW <= d_prev;
                        delay_WN <= d_curr;
                        delay_NE <= d_next;
                    end
                
                2'b11:
                    begin
                        delay_WN <= d_prev;
                        delay_NE <= d_curr;
                        delay_EW <= d_next;
                    end
            endcase
        end
        else
            done <= 0;
    end

  end

endgenerate
    
endmodule
