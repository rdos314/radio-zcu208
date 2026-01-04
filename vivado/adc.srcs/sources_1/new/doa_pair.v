`timescale 1ns / 1ps

// ============================================================================
// Module: doa_pair
// ============================================================================
// Description:
// -----------
// Direction-of-Arrival (DoA) processing block for a single antenna pair.
//
// This module computes an angular contribution from a measured phase
// difference using a fixed-point polynomial approximation of asin(x).
// In parallel, it evaluates whether the antenna pair is affected by
// geometric shadowing based on proximity to endfire reception.
//
// The design is fully pipelined with fixed latency and intended to be
// instantiated multiple times (e.g. NE, EW, WN antenna pairs) operating
// in parallel.
//
// ----------------------------------------------------------------------------
// Mathematical Model:
// -------------------
//   x = k * phase
//   angle ≈ asin(x)
//
// where x is constrained to approximately ±1.0 by saturation logic.
//
// ----------------------------------------------------------------------------
// Fixed-Point Formats:
// --------------------
//
//   phase        : signed Q0.19
//                  - Represents phase difference
//                  - Nominal range: [-0.5, +0.5]
//                  - Encoded as signed with two’s-complement interpretation
//
//   k            : unsigned Q4.16
//                  - Geometry-dependent scaling factor
//                  - Nominal range: [0.0, +16.0]
//                  - Converts phase difference into sin(theta)
//
//   x            : signed Q1.18
//                  - Internal scaled phase value
//                  - Nominal range: [-1.0, +1.0]
//
//   shadow_limit : unsigned Q0.19
//                  - Nominal range: [0.0, +0.25]
//                  - Threshold applied to |1 − |x||
//                  - Typically derived as (1 − cos(shadow_angle))
//
//   angle        : signed Q0.15
//                  - Output angular contribution
//                  - Nominal range: [-0.5, +0.5]
//
// ----------------------------------------------------------------------------
// Output Angle Interpretation:
// -----------------------------
// The output 'angle' represents the angular direction of arrival projected
// onto the axis defined by the antenna pair.
//
// Sign convention:
//   - Positive angle: signal arrives closer to the second antenna
//   - Negative angle: signal arrives closer to the first antenna
//
// The exact physical meaning depends on antenna ordering:
//   - For a pair (A, B):
//       angle > 0  → source is closer to antenna B
//       angle < 0  → source is closer to antenna A
//
// Higher-level logic must combine multiple doa_pair outputs (e.g. NE, EW, WN)
// to resolve a full 2D compass direction.
//
// ----------------------------------------------------------------------------
// Shadow Detection:
// -----------------
// Shadowing is detected by evaluating proximity to endfire reception:
//
//   shadow_metric ≈ |1 − |x||
//
// If:
//   shadow_metric < shadow_limit
//
// then the antenna pair is considered shadowed.
//
// To improve timing closure, bitwise inversion is used instead of true
// subtraction. This introduces at most ±1 LSB error, which is acceptable
// given the configurable shadow margin.
//
// ----------------------------------------------------------------------------
// Interface:
// ----------
// Inputs:
//   clk           - System clock
//   reset         - Synchronous reset
//   start         - Start calculation
//   k             - Geometry scaling factor (Q4.16)
//   phase         - Phase difference input (Q0.19)
//   shadow_limit  - Shadow margin threshold (Q0.19)
//
// Outputs:
//   done          - Calculation complete
//   fail          - Invalid input or unrecoverable overflow
//   shadow        - Shadowing detected for this antenna pair
//   angle         - Signed angular contribution (Q0.19)
//
// ----------------------------------------------------------------------------
// Timing:
// -------
// - Fixed latency: 30 clock cycles from 'start' to 'done'
// - All instances complete simultaneously
// - No data-dependent stalls
//
// ----------------------------------------------------------------------------
// Notes:
// ------
// - Designed for high-frequency FPGA operation
// - Uses 20x20 DSP multipliers
// - Safe for synthesis in Vivado
// - Deterministic control FSM
//
// ----------------------------------------------------------------------------
// Author:
//   Leif Ekblad
// ============================================================================


module doa_pair(
    input wire clk,
    input wire reset,
    input wire start,
    input wire [19:0] k,
    input wire [19:0] shadow_limit,
    input wire [19:0] phase,

    output reg done,
    output reg fail,
    output reg shadow,
    output reg [15:0] angle
);

  wire [39:0] prod;
  reg [19:0] x;
  reg [5:0] ov;
  reg has_ov;
  
  reg check_raw;
  reg [20:0] x_raw;
  reg [19:0] x_abs;
  
  reg calc_diff;
  reg has_diff;
  reg [18:0] x_diff;

  reg has_shadow_diff;
  reg [19:0] shadow_diff;

  reg [4:0] counter; 
  reg [2:0] ind;
  reg run;
  reg ignore;
  reg add;
  reg init;
  reg [19:0] coeff;
  wire [39:0] x2;
  wire [39:0] cp;
  wire [39:0] xp;
  wire [19:0] p = init ? x : xp[38:19];
  reg [20:0] sum;
  
mult_20x20 mul_doa_i (
  .CLK(clk),           // input wire CLK
  .A(k),               // input wire [19 : 0] A
  .B(phase),           // input wire [19 : 0] B
  .P(prod)             // output wire [39 : 0] P
);
  
mult_20x20 mul_x2_i 
(
  .CLK(clk),         // input wire CLK
  .A(x),             // input wire [19 : 0] A
  .B(x),             // input wire [19 : 0] B
  .P(x2)             // output wire [39 : 0] P
);
  
mult_20x20 mul_x_i 
(
  .CLK(clk),         // input wire CLK
  .A(x2[38:19]),     // input wire [19 : 0] A
  .B(p),             // input wire [19 : 0] B
  .P(xp)             // output wire [39 : 0] P
);

mult_20x20 mul_c_i 
(
  .CLK(clk),          // input wire CLK
  .A(coeff),          // input wire [19 : 0] A
  .B(p),              // input wire [19 : 0] B
  .P(cp)              // output wire [39 : 0] P
);

	ila_0 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(start),               // input wire [0:0]  probe3
		.probe1(done),                // input wire [0:0]  probe3
		.probe2(fail),                // input wire [0:0]  probe3
		.probe3(ov),                  // input wire [5:0]  probe3
		.probe4(has_shadow_diff),     // input wire [0:0]  probe3
		.probe5(shadow_diff),         // input wire [19:0]  probe3
		.probe6(prod)                 // input wire [39:0]  probe3
    );

generate
  begin : doa_pair

    always @(posedge clk) 
    begin
        if (reset | fail)
        begin
            run <= 0;
            ignore <= 0;
            done <= 0;
            counter <= 0;
        end
        else
        begin
            if (start)
            begin
                run <= 1;
                ignore <= 0;
                done <= 0;
                counter <= 0;
            end
            else
            begin
                if (run)
                begin
                    if (add)
                        if (xp[38:19] == 20'hFFFFF)
                            ignore <= 1;
                        
                    if (counter == 29)
                    begin
                        run <= 0;
                        done <= 1;
                        angle <= sum[20:5];
                    end
                    else
                    begin
                        done <= 0;
                        counter <= counter + 1;
                    end
                end
				else
					done <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        case (counter)
            2 : ind <= 0;
            8 : ind <= 1;
            11 : ind <= 2;
            14 : ind <= 3;
            17 : ind <= 4;
            20 : ind <= 5;
            23 : ind <= 6;
        endcase
    end

    always @(posedge clk) 
    begin
        case (counter)
            0 : init <= 1;
            9 : init <= 0;
        endcase
    end

    always @(posedge clk) 
    begin
        case (counter)
            0 : ov <= 6'b100000;
            2 : ov <= prod[39:34];
        endcase
    end

    always @(posedge clk) 
    begin
        case (counter)
            0 : has_ov <= 0;
            2 : has_ov <= 1;
        endcase
    end

    always @(posedge clk) 
    begin
        case (ov)
            6'b000000 : 
                begin
                    x <= prod[35:16];
                    shadow <= 0;
                    check_raw <= 0;
                    fail <= 0;
                end

            6'b000001 : 
                begin
                    x <= prod[35:16];
                    x_raw <= prod[36:16];
                    check_raw <= 1;
                    
                    if (has_shadow_diff)
                        shadow <= shadow_diff[19];

                    fail <= 0;
                end

            6'b000010 : 
                begin
                    x <= 20'h7FFFF;
                    x_raw <= prod[36:16];
                    check_raw <= 1;

                    if (has_shadow_diff)
                    begin
                        if (shadow_diff[19])
                        begin
                            shadow <= 1;
                            fail <= 0;
                        end
                        else
                            fail <= 1;
                    end
                    else
                        fail <= 0;
                end

            6'b000011 : fail <= 1; 

            6'b111100 : fail <= 1;

            6'b111101 :  
                begin
                    x <= 20'h80001;
                    x_raw <= prod[36:16];
                    check_raw <= 1;

                    if (has_shadow_diff)
                    begin
                        if (shadow_diff[19])
                        begin
                            shadow <= 1;
                            fail <= 0;
                        end
                        else
                            fail <= 1;
                    end
                    else
                        fail <= 0;
                end

            6'b111110 : 
                begin
                    x <= prod[35:16];
                    x_raw <= prod[36:16];
                    check_raw <= 1;

                    if (has_shadow_diff)
                        shadow <= shadow_diff[19];

                    fail <= 0;
                end

            6'b111111 : 
                begin
                    x <= prod[35:16];
                    check_raw <= 0;
                    shadow <= 0;
                    fail <= 0;
                end
                
            default:
                begin
                    check_raw <= 0;
                    shadow <= 0;
                
                    if (has_ov)
                        fail <= 1;
					else
						fail <= 0;
                end
        endcase
    end

    always @(posedge clk) 
    begin
        if (check_raw)
        begin
            calc_diff <= 1;
            
            if (x_raw[20])
                x_abs <= ~x_raw[19:0];
            else
                x_abs <= x_raw[19:0];
        end
        else
            calc_diff <= 0;
    end           

    always @(posedge clk) 
    begin
        if (calc_diff)
        begin
            if (x_abs[19])
                x_diff <= x_abs[18:0];
            else
                x_diff <= ~x_abs[18:0];
            has_diff <= 1;
        end
        else
            has_diff <= 0;
    end

    always @(posedge clk) 
    begin
        if (has_diff)
        begin
            shadow_diff <= {1'b0, x_diff} - shadow_limit;
            has_shadow_diff <= 1;
        end
        else
            has_shadow_diff <= 0;
    end

    always @(posedge clk) 
    begin
        case (ind) 
            0 : coeff <= 333772;
            1 : coeff <= 55629;
            2 : coeff <= 25033;
            3 : coeff <= 14901;
            4 : coeff <= 10141;
            5 : coeff <= 7467;
            6 : coeff <= 5792;
            7 : coeff <= 4661;
        endcase
    end

    always @(posedge clk) 
    begin
        case (counter)
            0: add <= 0;
            9 : add <= 1;
            10 : add <= 0;
            12 : add <= 1;
            13 : add <= 0;
            15 : add <= 1;
            16 : add <= 0;
            18 : add <= 1;
            19 : add <= 0;
            21 : add <= 1;
            22 : add <= 0;
            24 : add <= 1;
            25 : add <= 0;
            27 : add <= 1;
            28 : add <= 0;
        endcase
    end

    always @(posedge clk) 
    begin
        if (run)
        begin
            if (add & !ignore)
                sum <= sum + cp[39:19];
        end
        else
            sum <= 0;                    
    end

  end
    
endgenerate

endmodule
