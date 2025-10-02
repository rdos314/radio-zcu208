`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2025 23:07:55
// Design Name: 
// Module Name: mts
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

module mts(
    input wire 	pl_clk,
    input wire 	m_clk,
    input wire	pl_sysref,
    output reg 	user_sysref_adc
 );

    reg pl_sysref_r;
		    		
	ila_1 ila_i (
		.clk(m_clk),  	                  // input wire clk
		.probe0(user_sysref_adc)          // input wire [0:0]  probe2
	);
	
generate
  begin : mts

	always @(posedge pl_clk) 
	begin
		pl_sysref_r <= pl_sysref;
	end

	always @(posedge m_clk) 
	begin
		user_sysref_adc <= pl_sysref_r;
	end

  end
    
endgenerate
    
    
endmodule
