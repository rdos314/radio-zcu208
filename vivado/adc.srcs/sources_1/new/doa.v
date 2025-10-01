`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2025 22:20:40
// Design Name: 
// Module Name: doa
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


module doa(
    input clk,
    input [159:0] data_0,
    input [159:0] data_1,
    input [159:0] data_2,
    input ready_0,
    input ready_1,
    input ready_2,
    input started,
    output reg running
    );

ila_0 ila_0_inst (
  .clk(clk),               // input wire clk
  .probe0(data_0[15:0]),       // input wire [15:0]  probe3
  .probe1(data_0[31:16]),       // input wire [15:0]  probe3
  .probe2(data_0[47:32]),       // input wire [15:0]  probe3
  .probe3(data_0[63:48]),       // input wire [15:0]  probe3
  .probe4(data_0[79:64]),       // input wire [15:0]  probe3
  .probe5(data_0[95:80]),       // input wire [15:0]  probe3
  .probe6(data_0[111:96]),       // input wire [15:0]  probe3
  .probe7(data_0[127:112]),       // input wire [15:0]  probe3
  .probe8(data_0[143:128]),       // input wire [15:0]  probe3
  .probe9(data_0[159:144]),       // input wire [15:0]  probe3
  .probe10(data_1[15:0]),       // input wire [15:0]  probe3
  .probe11(data_1[31:16]),       // input wire [15:0]  probe3
  .probe12(data_1[47:32]),       // input wire [15:0]  probe3
  .probe13(data_1[63:48]),       // input wire [15:0]  probe3
  .probe14(data_1[79:64]),       // input wire [15:0]  probe3
  .probe15(data_1[95:80]),       // input wire [15:0]  probe3
  .probe16(data_1[111:96]),       // input wire [15:0]  probe3
  .probe17(data_1[127:112]),       // input wire [15:0]  probe3
  .probe18(data_1[143:128]),       // input wire [15:0]  probe3
  .probe19(data_1[159:144]),       // input wire [15:0]  probe3
  .probe20(data_2[15:0]),       // input wire [15:0]  probe3
  .probe21(data_2[31:16]),       // input wire [15:0]  probe3
  .probe22(data_2[47:32]),       // input wire [15:0]  probe3
  .probe23(data_2[63:48]),       // input wire [15:0]  probe3
  .probe24(data_2[79:64]),       // input wire [15:0]  probe3
  .probe25(data_2[95:80]),       // input wire [15:0]  probe3
  .probe26(data_2[111:96]),       // input wire [15:0]  probe3
  .probe27(data_2[127:112]),       // input wire [15:0]  probe3
  .probe28(data_2[143:128]),       // input wire [15:0]  probe3
  .probe29(data_2[159:144]),       // input wire [15:0]  probe3
  .probe30(ready_0),               // input wire [0:0]  probe3
  .probe31(ready_1),               // input wire [0:0]  probe3
  .probe32(ready_2),               // input wire [0:0]  probe3
  .probe33(started)               // input wire [0:0]  probe3
);
    
generate
  begin : doa

    always @ ( posedge clk ) 
    begin
      running <= 1;
    end
  end
    
endgenerate
    
endmodule
