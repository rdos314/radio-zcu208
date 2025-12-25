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
    input wire [19:0] phase,

    output reg done,
    output reg fail,
    output reg [19:0] angle
);

  wire [39:0] prod;
  reg [19:0] x;
  reg [4:0] ov;

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
		.probe1(k),                   // input wire [19:0]  probe3
		.probe2(phase),               // input wire [19:0]  probe3
		.probe3(counter),             // input wire [5:0]  probe3
		.probe4(ind),                 // input wire [3:0]  probe3
		.probe5(run),                 // input wire [0:0]  probe3
		.probe6(init),                // input wire [0:0]  probe3
		.probe7(add),                 // input wire [0:0]  probe3
		.probe8(ignore),              // input wire [0:0]  probe3
		.probe9(coeff),               // input wire [19:0]  probe3
		.probe10(prod),               // input wire [39:0]  probe3
		.probe11(x),                  // input wire [19:0]  probe3
		.probe12(x2),                 // input wire [39:0]  probe3
		.probe13(cp),                 // input wire [39:0]  probe3
		.probe14(xp),                 // input wire [39:0]  probe3
		.probe15(sum),                // input wire [20:0]  probe3
		.probe16(done),               // input wire [0:0]  probe3
		.probe17(fail),               // input wire [0:0]  probe3
		.probe18(angle),              // input wire [19:0]  probe3
		.probe19(ov),                 // input wire [4:0]  probe3
		.probe20(p)                   // input wire [19:0]  probe3
);

generate
  begin : doa_pair

    always @(posedge clk) 
    begin
        if (reset)
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
            0 : ov <= 5'b01111;
            2 : ov <= prod[39:35];
        endcase
    end

    always @(posedge clk) 
    begin
        case (ov)
            5'b00000 : 
                begin
                    x <= prod[35:16];
                    fail <= 0;
                end

            5'b00001 : 
                begin
                    x <= 20'h7FFFF;
                    fail <= 0;
                end

            5'b11110 : 
                begin
                    x <= 20'h80001;
                    fail <= 0;
                end

            5'b11111 : 
                begin
                    x <= prod[35:16];
                    fail <= 0;
                end
                
            default:
                if (counter)
                    fail <= 1;        
        endcase
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
