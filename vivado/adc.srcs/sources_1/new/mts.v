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

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DECI_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
    output wire deci_clk,
    output reg  deci_resetn,
    
    output wire	user_sysref_adc
 ); 

	wire		pl_clk_buf;
	wire 		rst_async = sys_reset | (~deci_locked);

	(* ASYNC_REG="TRUE" *)  reg  sysref_r;
	(* ASYNC_REG="TRUE" *)	reg [2:0] sysref_sync;

	(* ASYNC_REG="TRUE" *)	reg  [3:0] deci_release_cnt;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_async;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_2;

	assign user_sysref_adc = sysref_sync[2];
		    		
	BUFG p_clk_i (
		.I			(pl_clk),
		.O			(pl_clk_buf));
    
	clk_wiz_deci clk_wiz_deci_i (
		.clk_in1	(pl_clk_buf),
		.clk_out1	(deci_clk),
		.locked		(deci_locked));

/*
	ila_1 ila_i (
		.clk(m_clk_buf),  	              // input wire clk
		.probe0(user_sysref_adc),         // input wire [0:0]  probe2
		.probe1(master_reset)               // input wire [0:0]  probe2
	);
*/
	
generate
  begin : mts

	always @(posedge deci_clk or posedge rst_async) 
	begin
		if (rst_async) 
		begin
			deci_release_cnt <= 0;
			deci_reset_async <= 1;
	    end
		else 
		begin
			if (deci_reset_async) 
			begin
				if (deci_release_cnt == 4'b1111)
					deci_reset_async <= 0;
				else 
				begin
					deci_release_cnt <= deci_release_cnt + 1;
					deci_reset_async <= 1;
				end
			end 
			else 
				deci_reset_async <= 0;
		end
	end

	always @(posedge deci_clk) 
	begin
		deci_reset_1 <= deci_reset_async;
		deci_reset_2 <= deci_reset_1;
		deci_resetn <= ~deci_reset_2;
	end

	always @(posedge deci_clk) 
	begin
		sysref_r <= pl_sysref;
	end

	always @(posedge deci_clk) 
	begin
		sysref_sync <= { sysref_sync[1:0], sysref_r };
	end

  end
    
endgenerate
        
endmodule
