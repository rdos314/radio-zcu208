`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2025 17:24:47
// Design Name: 
// Module Name: doa_angle
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
    output reg [19:0] angle    
);

  localparam ANGLE_0 = 20'h00000;
  localparam ANGLE_60 = 20'h2AAAB;
  localparam ANGLE_120 = 20'h55555;
  localparam ANGLE_180 = 20'h80000;
  localparam ANGLE_240 = 20'hAAAAB;
  localparam ANGLE_300 = 20'hD5555;

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
  
ila_0 ila_0_i (
		.clk(clk),                  // input wire clk
		.probe0(start),             // input wire [0:0]  probe3
		.probe1(run),               // input wire [4:0]  probe3
		.probe2(front),             // input wire [0:0]  probe3
		.probe3(angle_NE),          // input wire [19:0]  probe3
		.probe4(angle_EW),          // input wire [19:0]  probe3
		.probe5(angle_WN),          // input wire [19:0]  probe3
		.probe6(sign),              // input wire [0:0]  probe3
		.probe7(id),                // input wire [1:0]  probe3
		.probe8(first_angle),       // input wire [19:0]  probe3
		.probe9(second_angle),      // input wire [19:0]  probe3
		.probe10(diff_angle),       // input wire [19:0]  probe3
		.probe11(use_angle),        // input wire [19:0]  probe3
		.probe12(use_id),           // input wire [1:0]  probe3
		.probe13(base_angle),       // input wire [19:0]  probe3
		.probe14(angle)             // input wire [19:0]  probe3
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
                        id <= 0;
                        first_angle <= angle_NE;
                        second_angle <= angle_EW;
                    end

                3'b010:
                    begin
                        run <= 1;                        
                        sign <= 0;
                        id <= 2;
                        first_angle <= angle_WN;
                        second_angle <= angle_NE;
                    end

                3'b011:
                    begin
                        run <= 1;                        
                        sign <= 1;
                        id <= 1;
                        first_angle <= ~angle_EW;
                        second_angle <= ~angle_WN;
                    end

                3'b100:
                    begin
                        run <= 1;                        
                        sign <= 0;
                        id <= 1;
                        first_angle <= angle_EW;
                        second_angle <= angle_WN;
                    end

                3'b101:
                    begin
                        run <= 1;                        
                        sign <= 1;
                        id <= 2;
                        first_angle <= ~angle_WN;
                        second_angle <= ~angle_NE;
                    end

                3'b110:
                    begin
                        run <= 1;                        
                        sign <= 1;
                        id <= 0;
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
                run <= {run[3:0], 1'b0};
        end
    end

    always @(posedge clk) 
    begin
        if (run[0])
            diff_angle <= first_angle - second_angle;
    end
    
    always @(posedge clk) 
    begin
        if (run[1])
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

    always @(posedge clk) 
    begin
        if (run[2])
        begin
            case (use_id)
                2'b00: use_angle <= {angle_NE[19], angle_NE[19:1]};
                2'b01: use_angle <= {angle_EW[19], angle_EW[19:1]};
                2'b10: use_angle <= {angle_WN[19], angle_WN[19:1]};
                2'b11: use_angle <= {angle_NE[19], angle_NE[19:1]};
            endcase
        end
    end

    always @(posedge clk) 
    begin
        if (run[3])
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
        if (run[4])
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
