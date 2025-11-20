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
	
	input wire axi_clk,
	input wire axi_reset_in,
	output reg axi_reset_out,
	input wire axi_adc_active,
	input wire axi_sim_active,
	output reg axi_stop,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DECI_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
    output wire deci_clk,
    output reg deci_resetn,
	input wire deci_stop_low,
	input wire deci_stop_high,
	output reg deci_adc_active,
	output reg deci_sim_active,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire comp0_clk,
    output reg  comp0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire comp1_clk,
    output reg  comp1_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire doa0_clk,
    output reg  doa0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire doa1_clk,
    output reg  doa1_reset,
    
    output wire	user_sysref_adc
 ); 
 
    reg adc_active;
	reg sim_active;
	reg axi_reset;
	reg axi_stop_prev;
	reg axi_stop_curr;
	
	reg	[3:0] deci_stop_count;		
	reg deci_stop;

	wire pl_clk_buf;
	wire rst_async = sys_reset | (~deci_locked);
    wire comp_locked;
    wire doa_locked;

	(* ASYNC_REG="TRUE" *)  reg  sysref_r;
	(* ASYNC_REG="TRUE" *)	reg [2:0] sysref_sync;

	(* ASYNC_REG="TRUE" *)	reg  [3:0] deci_release_cnt;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_async;
	(* ASYNC_REG="TRUE" *)	reg  axi_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  axi_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  comp0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  comp0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  comp1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  comp1_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  doa0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  doa0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  doa1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  doa1_reset_2;

	(* ASYNC_REG="TRUE" *)	reg  deci_adc_active_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_adc_active_2;
	(* ASYNC_REG="TRUE" *)	reg  deci_sim_active_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_sim_active_2;

	(* ASYNC_REG="TRUE" *)	reg  axi_stop_1;
	(* ASYNC_REG="TRUE" *)	reg  axi_stop_2;

	assign user_sysref_adc = sysref_sync[2];
		    		
	BUFG p_clk_i (
		.I			(pl_clk),
		.O			(pl_clk_buf));
    
	clk_wiz_deci clk_wiz_deci_i (
		.clk_in1	(pl_clk_buf),
		.clk_out1	(deci_clk),
		.locked		(deci_locked));
		
	clk_wiz_adc clk_wiz_comp_i (
		.clk_in1	(pl_clk_buf),
		.clk_out1	(comp0_clk),
		.clk_out2	(comp1_clk),
		.locked		(comp_locked)
		);

	clk_wiz_adc clk_wiz_doa_i (
		.clk_in1	(pl_clk_buf),
		.clk_out1	(doa0_clk),
		.clk_out2	(doa1_clk),
		.locked		(doa_locked)
		);

/*
	ila_1 ila_i (
		.clk(m_clk_buf),  	              // input wire clk
		.probe0(user_sysref_adc),         // input wire [0:0]  probe2
		.probe1(master_reset)               // input wire [0:0]  probe2
	);
*/
	
generate
  begin : mts

	always @(posedge axi_clk) 
	begin
		axi_reset <= axi_reset_in;
		adc_active <= axi_adc_active;
		sim_active <= axi_sim_active;
	end

	always @(posedge axi_clk) 
	begin
		axi_reset_1 <= deci_reset_async;
		axi_reset_2 <= axi_reset_1;
		axi_reset_out <= axi_reset_2;
	end

	always @(posedge deci_clk or posedge rst_async) 
	begin
		if (rst_async | axi_reset) 
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
		deci_adc_active_1 <= adc_active;
		deci_adc_active_2 <= deci_adc_active_1;
		deci_adc_active <= deci_adc_active_2;
	end

	always @(posedge deci_clk) 
	begin
		deci_sim_active_1 <= sim_active;
		deci_sim_active_2 <= deci_sim_active_1;
		deci_sim_active <= deci_sim_active_2;
	end

	always @(posedge deci_clk) 
	begin
		if (!deci_resetn | deci_stop_low | deci_stop_high)
			deci_stop_count <= 0'b1111;
		else
		begin
			if (deci_stop_count)
				deci_stop_count <= deci_stop_count - 1;
		end
	end

	always @(posedge deci_clk) 
	begin
		if (deci_stop_count)
			deci_stop <= 1;
		else
			deci_stop <= 0;
	end

	always @(posedge axi_clk) 
	begin
		axi_stop_1 <= deci_stop;
		axi_stop_2 <= axi_stop_1;
		axi_stop_curr <= axi_stop_2;
		axi_stop_prev <= axi_stop_curr;
		axi_stop <= axi_stop_curr & ~axi_stop_prev;
	end

	always @(posedge doa0_clk) 
	begin
		doa0_reset_1 <= deci_reset_async | (~doa_locked);
		doa0_reset_2 <= doa0_reset_1;
		doa0_reset <= doa0_reset_2;
	end

	always @(posedge doa1_clk) 
	begin
		doa1_reset_1 <= deci_reset_async | (~doa_locked);
		doa1_reset_2 <= doa1_reset_1;
		doa1_reset <= doa1_reset_2;
	end

	always @(posedge comp0_clk) 
	begin
		comp0_reset_1 <= deci_reset_async | (~comp_locked);
		comp0_reset_2 <= comp0_reset_1;
		comp0_reset <= comp0_reset_2;
	end

	always @(posedge comp1_clk) 
	begin
		comp1_reset_1 <= deci_reset_async | (~comp_locked);
		comp1_reset_2 <= comp1_reset_1;
		comp1_reset <= comp1_reset_2;
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
