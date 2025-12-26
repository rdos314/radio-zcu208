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
    output reg [19:0] angle
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

  reg [5:0] counter; 
  reg [3:0] ind;
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

	ila_7 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(start),               // input wire [0:0]  probe3
		.probe1(counter),             // input wire [5:0]  probe3
		.probe2(run),                 // input wire [0:0]  probe3
		.probe3(init),                // input wire [0:0]  probe3
		.probe4(has_ov),              // input wire [0:0]  probe3
		.probe5(ov),                  // input wire [5:0]  probe3
		.probe6(check_raw),           // input wire [0:0]  probe3
		.probe7(x_raw),               // input wire [20:0]  probe3
		.probe8(x_abs),               // input wire [19:0]  probe3
		.probe9(calc_diff),          // input wire [0:0]  probe3
		.probe10(has_diff),           // input wire [0:0]  probe3
		.probe11(x_diff),             // input wire [18:0]  probe3
		.probe12(has_shadow_diff),    // input wire [0:0]  probe3
		.probe13(shadow_diff),        // input wire [19:0]  probe3
		.probe14(shadow),             // input wire [0:0]  probe3
		.probe15(x),                  // input wire [19:0]  probe3
		.probe16(sum),                // input wire [20:0]  probe3
		.probe17(done),               // input wire [0:0]  probe3
		.probe18(fail),               // input wire [0:0]  probe3
		.probe19(angle)               // input wire [19:0]  probe3
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
                        
                    if (counter == 56)
                    begin
                        run <= 0;
                        done <= 1;
                        angle <= sum[19:0];
                    end
                    else
                    begin
                        done <= 0;
                        counter <= counter + 1;
                    end
                end
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
            26 : ind <= 7;
            29 : ind <= 8;
            32 : ind <= 9;
            35 : ind <= 10;
            38 : ind <= 11;
            41 : ind <= 12;
            44 : ind <= 13;
            47 : ind <= 14;
            50 : ind <= 15;
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
                x_diff[18:0] <= x_abs[18:0];
            else
                x_diff[18:0] <= ~x_abs[18:0];
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
            8 : coeff <= 3856;
            9 : coeff <= 3258;
            10 : coeff <= 2800;
            11 : coeff <= 2441;
            12 : coeff <= 2152;
            13 : coeff <= 1916;
            14 : coeff <= 1720;
            15 : coeff <= 1555;
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
            30 : add <= 1;
            31 : add <= 0;
            33 : add <= 1;
            34 : add <= 0;
            36 : add <= 1;
            37 : add <= 0;
            39 : add <= 1;
            40 : add <= 0;
            42 : add <= 1;
            43 : add <= 0;
            45 : add <= 1;
            46 : add <= 0;
            48 : add <= 1;
            49 : add <= 0;
            51 : add <= 1;
            52 : add <= 0;
            54 : add <= 1;
            55 : add <= 0;
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
