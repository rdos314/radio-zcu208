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

  reg [2:0] delay;
  reg mul_run;
  reg start_asin;
  reg asin_run;

  wire [39:0] prod;
  wire [19:0] x_in = prod[39:20];

  reg signed [21:0] x;
  reg signed [21:0] y;
  reg signed [21:0] z;
  reg signed [21:0] x_sh;
  reg signed [21:0] y_sh;
  reg signed [19:0] atan;
  reg [5:0] iter_full; 
  wire iter_op = iter_full[0];
  wire [4:0] iter = iter_full[5:1];  

  
mul_doa mul_doa_i (
  .CLK(clk),           // input wire CLK
  .A(k),               // input wire [19 : 0] A
  .B(phase),           // input wire [19 : 0] B
  .P(prod)             // output wire [39 : 0] P
);

	ila_7 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(start),               // input wire [0:0]  probe3
		.probe1(k),                   // input wire [19:0]  probe3
		.probe2(phase),               // input wire [19:0]  probe3
		.probe3(delay),               // input wire [2:0]  probe3
		.probe4(mul_run),             // input wire [0:0]  probe3
		.probe5(start_asin),          // input wire [0:0]  probe3
		.probe6(asin_run),            // input wire [0:0]  probe3
		.probe7(x_in),                // input wire [19:0]  probe3
		.probe8(iter_op),             // input wire [0:0]  probe3
		.probe9(iter),                // input wire [4:0]  probe3
		.probe10(x_sh),               // input wire [21:0]  probe3
		.probe11(y_sh),               // input wire [21:0]  probe3
		.probe12(x),                  // input wire [21:0]  probe3
		.probe13(y),                  // input wire [21:0]  probe3
		.probe14(z),                  // input wire [21:0]  probe3
		.probe15(done),               // input wire [0:0]  probe3
		.probe16(angle)               // input wire [19:0]  probe3
);

generate
  begin : doa_pair

    always @(posedge clk) 
    begin
        if (reset)
        begin
            start_asin <= 0;
            mul_run <= 0;
            delay <= 0;
        end
        else
        begin            
            if (start)
            begin
                delay <= 0;
                mul_run <= 1;
            end
            else
            begin
                if (mul_run)
                begin
                    if (delay == 3'b100)
                    begin
                        start_asin <= 1;
                        mul_run <= 0;
                    end
                    else
                        delay <= delay + 1;
                end
                else
                    start_asin <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (asin_run & !iter_op) 
        begin
            x_sh <= x >>> iter;
            y_sh <= y >>> iter;
        end
    end

    always @(posedge clk) 
    begin
        case (iter) 
            0 : atan <=  262144;
            1 : atan <= 154193;
            2 : atan <= 81589;
            3 : atan <= 41349;
            4 : atan <= 20753;
            5 : atan <= 10392;
            6 : atan <= 5196;
            7 : atan <= 2598;
            8 : atan <= 1299;
            9 : atan <= 650;
            10 : atan <= 325;
            11 : atan <= 163;
            12 : atan <= 81;
            13 : atan <= 41;
            14 : atan <= 20;
            15 : atan <= 10;
            16 : atan <= 5;
            17 : atan <= 3;
            default : atan <= 1;
        endcase
    end

    always @(posedge clk) 
    begin
        if (asin_run & iter_op) 
        begin
            if (y >= 0) 
            begin
                x <= x + y_sh;
                y <= y - x_sh;
                z <= z + atan;
            end 
            else 
            begin
                x <= x - y_sh;
                y <= y + x_sh;
                z <= z - atan;
            end
        end 
        else
        begin
            if (start_asin) 
            begin
                x <= 318391;
                y <= x_in;
                z <= 0;
            end
            else
            begin
                if (reset)
                begin
                    x <= 0;
                    y <= 0;
                    z <= 0;
                end
            end
        end
    end

    always @(posedge clk) 
    begin
        if (reset) 
        begin
            asin_run <= 0;
            done <= 0;
            angle <= 0;
            iter_full <= 0;
        end 
        else 
        begin
            if (asin_run) 
            begin
                if (iter_full == 39) 
                begin
                    asin_run <= 0;
                    done <= 1;
                    angle <= z[19:0];
                end
                else
                    iter_full <= iter_full + 1;
            end
            else
            begin
                done <= 0;

                if (start_asin) 
                begin
                    asin_run <= 1;
                    iter_full <= 0;
                end
            end
        end
    end

  end
    
endgenerate

endmodule
