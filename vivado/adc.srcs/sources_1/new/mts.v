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
    input  wire pl_clk,
    input  wire	pl_sysref,
	input  wire sys_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
    output wire doa0_clk,
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
    output wire doa1_clk,
    
    output wire	user_sysref_adc,
    output reg  doa0_resetn, 
    output reg  doa1_resetn
 );
 
    wire 		pl_clk_buf;	
	wire		m_clk;
	wire		m_clk_buf;
	wire 		mmcm_locked;
	wire 		rst_async = sys_reset | (~mmcm_locked);

	(* ASYNC_REG="TRUE" *)  reg  pl_sysref_r;
	(* ASYNC_REG="TRUE" *)	reg [2:0] sysref_sync;
	(* ASYNC_REG="TRUE" *)  reg  [1:0] rst_async_msync;
	(* ASYNC_REG="TRUE" *)	reg  master_reset_async;
	(* ASYNC_REG="TRUE" *)	reg  [3:0] release_cnt;
	(* ASYNC_REG="TRUE" *)	reg  master_reset;
	(* ASYNC_REG="TRUE" *)	reg  doa0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  doa0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  doa1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  doa1_reset_2;

	assign adc_clk = m_clk_buf;
	assign user_sysref_adc = sysref_sync[2];
		    		
	BUFG p_clk_i (
		.I			(pl_clk),
		.O			(pl_clk_buf));
    
	clk_wiz_0 pl_clk_wiz_i (
		.clk_in1	(pl_clk_buf),
		.clk_out1	(m_clk),
		.locked		(mmcm_locked));
		
	BUFG m_clk_i (
		.I			(m_clk),
		.O			(m_clk_buf));
		
	BUFG doa0_clk_i (
		.I			(m_clk),
		.O			(doa0_clk));

	BUFG doa1_clk_i (
		.I			(m_clk),
		.O			(doa1_clk));

	ila_1 ila_i (
		.clk(m_clk_buf),  	              // input wire clk
		.probe0(user_sysref_adc),         // input wire [0:0]  probe2
		.probe1(master_reset)               // input wire [0:0]  probe2
	);
	
generate
  begin : mts

	always @(posedge pl_clk_buf) 
	begin
		pl_sysref_r <= pl_sysref;
	end

	always @(posedge m_clk_buf) 
	begin
		sysref_sync <= { sysref_sync[1:0], pl_sysref_r };
	end

	always @(posedge m_clk_buf or posedge rst_async) 
	begin
		if (rst_async)
			rst_async_msync <= 2'b11;
		else
			rst_async_msync <= {rst_async_msync[0], 1'b0};
	end

	always @(posedge m_clk_buf or posedge rst_async) 
	begin
		if (rst_async) 
		begin
			release_cnt <= 0;
			master_reset_async <= 1;
		end 
		else 
		begin
			if (master_reset_async) 
			begin
				if (release_cnt == 4'b1111)
					master_reset_async <= 0;
				else 
				begin
					release_cnt <= release_cnt + 1;
					master_reset_async <= 1;
				end
			end 
			else 
			begin
				master_reset_async <= 0;
			end
		end
	end

	always @(posedge m_clk_buf) 
	begin
		master_reset <= master_reset_async;
	end

	always @(posedge doa0_clk) 
	begin
		doa0_reset_1 <= master_reset;
		doa0_reset_2 <= doa0_reset_1;
		doa0_resetn <= ~doa0_reset_2;
	end

	always @(posedge doa1_clk) 
	begin
		doa1_reset_1 <= master_reset;
		doa1_reset_2 <= doa1_reset_1;
		doa1_resetn <= ~doa1_reset_2;
	end

  end
    
endgenerate
        
endmodule
