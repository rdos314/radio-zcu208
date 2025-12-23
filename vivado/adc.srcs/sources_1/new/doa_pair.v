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
    output reg [19:0] angle
);

  wire [39:0] prod;
  wire [19:0] x = prod[33:14];

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
		.probe8(igonre),              // input wire [0:0]  probe3
		.probe9(coeff),               // input wire [19:0]  probe3
		.probe10(x2),                  // input wire [39:0]  probe3
		.probe11(cp),                  // input wire [39:0]  probe3
		.probe12(xp),                 // input wire [39:0]  probe3
		.probe13(sum),                // input wire [20:0]  probe3
		.probe14(p)                   // input wire [19:0]  probe3
);

generate
  begin : doa_pair

    always @(posedge clk) 
    begin
        if (reset)
        begin
            run <= 0;
            ignore <= 0;
            counter <= 0;
        end
        else
        begin
            if (start)
            begin
                run <= 1;
                ignore <= 0;
                counter <= 0;
            end
            else
            begin
                if (run)
                begin
                    if (p == -1)
                        ignore <= 1;
                        
                    if (counter == 63)
                        run <= 0;
                    else
                        counter <= counter + 1;
                end
            end
        end
    end

    always @(posedge clk) 
    begin
        case (counter)
            2 : ind <= 0;
            4 : ind <= 1;
            7 : ind <= 2;
            10 : ind <= 3;
            13 : ind <= 4;
            16 : ind <= 5;
            19 : ind <= 6;
            22 : ind <= 7;
            25 : ind <= 8;
            28 : ind <= 9;
            31 : ind <= 10;
            34 : ind <= 11;
            37 : ind <= 12;
            40 : ind <= 13;
            43 : ind <= 14;
            46 : ind <= 15;
        endcase
    end

    always @(posedge clk) 
    begin
        case (counter)
            0 : init <= 1;
            5 : init <= 0;
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
            5 : add <= 1;
            6 : add <= 0;
            8 : add <= 1;
            9 : add <= 0;
            11 : add <= 1;
            12 : add <= 0;
            14 : add <= 1;
            15 : add <= 0;
            17 : add <= 1;
            18 : add <= 0;
            20 : add <= 1;
            21 : add <= 0;
            23 : add <= 1;
            24 : add <= 0;
            26 : add <= 1;
            27 : add <= 0;
            29 : add <= 1;
            30 : add <= 0;
            32 : add <= 1;
            33 : add <= 0;
            35 : add <= 1;
            36 : add <= 0;
            38 : add <= 1;
            39 : add <= 0;
            41 : add <= 1;
            42 : add <= 0;
            44 : add <= 1;
            45 : add <= 0;
            47 : add <= 1;
            48 : add <= 0;
            50 : add <= 1;
            51 : add <= 0;
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
