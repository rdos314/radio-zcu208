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
    input wire	clk,
    input wire  resetn,
    input wire	[159:0] data_N,
    input wire	ready_N,
    input wire	[159:0] data_E,
    input wire	ready_E,
    input wire	[159:0] data_W,
    input wire	ready_W
    );


	ila_0 ila_N (
		.clk(clk),                 // input wire clk
		.probe0(data_N[15:0]),        // input wire [15:0]  probe3
		.probe1(data_N[31:16]),       // input wire [15:0]  probe3
		.probe2(data_N[47:32]),       // input wire [15:0]  probe3
		.probe3(data_N[63:48]),       // input wire [15:0]  probe3
		.probe4(data_N[79:64]),       // input wire [15:0]  probe3
		.probe5(data_N[95:80]),       // input wire [15:0]  probe3
		.probe6(data_N[111:96]),      // input wire [15:0]  probe3
		.probe7(data_N[127:112]),     // input wire [15:0]  probe3
		.probe8(data_N[143:128]),     // input wire [15:0]  probe3
		.probe9(data_N[159:144]),     // input wire [15:0]  probe3
		.probe10(ready_N),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);

	ila_0 ila_E (
		.clk(clk),                 // input wire clk
		.probe0(data_E[15:0]),        // input wire [15:0]  probe3
		.probe1(data_E[31:16]),       // input wire [15:0]  probe3
		.probe2(data_E[47:32]),       // input wire [15:0]  probe3
		.probe3(data_E[63:48]),       // input wire [15:0]  probe3
		.probe4(data_E[79:64]),       // input wire [15:0]  probe3
		.probe5(data_E[95:80]),       // input wire [15:0]  probe3
		.probe6(data_E[111:96]),      // input wire [15:0]  probe3
		.probe7(data_E[127:112]),     // input wire [15:0]  probe3
		.probe8(data_E[143:128]),     // input wire [15:0]  probe3
		.probe9(data_E[159:144]),     // input wire [15:0]  probe3
		.probe10(ready_E),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);

	ila_0 ila_W (
		.clk(clk),                 // input wire clk
		.probe0(data_W[15:0]),        // input wire [15:0]  probe3
		.probe1(data_W[31:16]),       // input wire [15:0]  probe3
		.probe2(data_W[47:32]),       // input wire [15:0]  probe3
		.probe3(data_W[63:48]),       // input wire [15:0]  probe3
		.probe4(data_W[79:64]),       // input wire [15:0]  probe3
		.probe5(data_W[95:80]),       // input wire [15:0]  probe3
		.probe6(data_W[111:96]),      // input wire [15:0]  probe3
		.probe7(data_W[127:112]),     // input wire [15:0]  probe3
		.probe8(data_W[143:128]),     // input wire [15:0]  probe3
		.probe9(data_W[159:144]),     // input wire [15:0]  probe3
		.probe10(ready_W),             // input wire [0:0]  probe3
		.probe11(resetn)             // input wire [0:0]  probe3
	);
    
generate
  begin : doa


  end
    
endgenerate
    
endmodule
