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
    input wire	pl_sysref_p,
    input wire 	pl_sysref_n,

    output wire m_clk,
    output wire doa0_clk,
    output wire doa1_clk,
    output wire reset,    
    output wire resetn, 
    output reg 	user_sysref_adc
    );

    wire 		pl_clk;
    wire 		pl_clk_raw;
	wire		m_clk_raw;
    wire 		pl_sysref;
    reg 		pl_sysref_r;
    wire 		reset_n_int;

    assign reset  = !reset_n_int;
    assign resetn = reset_n_int;
        
	IBUFDS pl_clk_i (
        .I          (pl_clk_p),
        .IB         (pl_clk_n),
        .O          (pl_clk_raw));
        
	IBUFDS pl_sysref_i (
        .I          (pl_sysref_p),
        .IB         (pl_sysref_n),
        .O          (pl_sysref));
		
	BUFG p_clk_i (
		.I			(pl_clk_raw),
		.O			(pl_clk));
    
	clk_wiz pl_clk_wiz_i (
		.clk_in1	(pl_clk),
		.clk_out1	(m_clk_raw),
		.locked		(reset_n_int);
		
	BUFG m_clk_i (
		.I			(m_clk_raw),
		.O			(m_clk);
		
	BUFG doa0_clk_i (
		.I			(m_clk_raw),
		.O			(doa0_clk);

	BUFG doa1_clk_i (
		.I			(m_clk_raw),
		.O			(doa1_clk);

	ila_1 ila_i (
		.clk(m_clk),  	                  // input wire clk
		.probe0(reset),                   // input wire [0:0]  probe0
		.probe1(resetn),                  // input wire [0:0]  probe1
		.probe2(user_sysref_adc)          // input wire [0:0]  probe2
	);
	
generate
  begin : mts

	always @(posedge pl_clk_buf) 
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
