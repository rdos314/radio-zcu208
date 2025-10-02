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
    input wire 	pl_clk_p,
    input wire 	pl_clk_n,
    output wire m_clk,
	output wire m_clk_buf,
    output wire reset,    
    output wire resetn, 
    input wire	pl_sysref_p,
    input wire 	pl_sysref_n,
    output reg 	user_sysref_adc
    );

	reg       	pl_sysref_r;
	wire		pl_clk;
	wire		pl_clk_buf;

	assign 		reset = !reset_n;
	
generate
  begin : mts
        
	IBUFDS pl_clk_i (
        .I          (pl_clk_p),
        .IB         (pl_clk_n),
        .O          (pl_clk));
        
	IBUFDS pl_sysref_i (
        .I          (pl_sysref_p),
        .IB         (pl_sysref_n),
        .O          (pl_sysref));
		
	BUFG p_clk_i (
		.I			(pl_clk),
		.O			(pl_clk_buf));
    
	clk_wiz pl_clk_wiz_i (
		.clk_in1	(pl_clk_buf),
		.clk_out1	(m_clk),
		.locked		(reset_n));
		
	BUFG m_clk_i (
		.I			(m_clk),
		.O			(m_clk_buf));

	always @(posedge pl_clk_buf) 
	begin
		pl_sysref_r <= pl_sysref;
	end
        
	always @(posedge m_clk_buf) 
	begin
		user_sysref_adc <= pl_sysref_r;
	end

  end
    
endgenerate
    
    
endmodule
