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
	output reg axi_reset_out,
	input wire axi_adc_start,
	input wire axi_sim_start,
	input wire axi_adc_stop,
	output reg axi_adc_active,
	output reg axi_sim_active,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DECI_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
    output wire deci_clk,
    output reg deci_resetn,
    output wire	user_sysref_adc,
	
	output reg deci_adc_active,
	output reg deci_sim_start,
	input wire deci_sim_active_low,
	input wire deci_sim_active_high,

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
    output reg  doa1_reset
 ); 
 
    reg adc_axi_start;
	reg sim_axi_start;
	reg adc_axi_stop;
	reg axi_stop_prev;
	reg axi_stop_curr;

	reg adc_active;
	reg sim_active;

	reg deci_adc_start;	
	reg deci_adc_stop;
	reg deci_adc_start_curr;
	reg deci_adc_start_prev;
	reg deci_adc_stop_curr;
	reg deci_adc_stop_prev;
	reg deci_sim_start_curr;
	reg deci_sim_start_prev;
	
	reg [1:0] deci_adc_counter;
	reg sysref_active;

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

	(* ASYNC_REG="TRUE" *)	reg  deci_adc_start_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_adc_start_2;
	(* ASYNC_REG="TRUE" *)	reg  deci_adc_stop_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_adc_stop_2;
	(* ASYNC_REG="TRUE" *)	reg  deci_sim_start_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_sim_start_2;

	(* ASYNC_REG="TRUE" *)	reg  axi_adc_active_1;
	(* ASYNC_REG="TRUE" *)	reg  axi_adc_active_2;
	(* ASYNC_REG="TRUE" *)	reg  axi_sim_active_1;
	(* ASYNC_REG="TRUE" *)	reg  axi_sim_active_2;

	assign user_sysref_adc = sysref_active & sysref_sync[2];
		    		
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

	ila_6 ila_i (
		.clk(deci_clk),  	              // input wire clk
		.probe0(deci_resetn),             // input wire [0:0]  probe2
		.probe1(sysref_active),           // input wire [0:0]  probe2
		.probe2(user_sysref_adc),         // input wire [0:0]  probe2
		.probe3(deci_adc_start),          // input wire [0:0]  probe2
		.probe4(deci_adc_stop),           // input wire [0:0]  probe2
		.probe5(deci_adc_counter),        // input wire [1:0]  probe2
		.probe6(deci_adc_active),         // input wire [0:0]  probe2
		.probe7(deci_sim_start),          // input wire [0:0]  probe2
		.probe8(deci_sim_active_low),    // input wire [0:0]  probe2
		.probe9(deci_sim_active_high)    // input wire [0:0]  probe2
	);
	
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

	always @(posedge axi_clk) 
	begin
		axi_reset_1 <= deci_reset_async;
		axi_reset_2 <= axi_reset_1;
		axi_reset_out <= axi_reset_2;
	end

	always @(posedge deci_clk) 
	begin
		sysref_r <= pl_sysref;
	end

	always @(posedge deci_clk) 
	begin
		sysref_sync <= { sysref_sync[1:0], sysref_r };
	end

	always @(posedge deci_clk) 
	begin
	  if (deci_resetn)
	  begin
        case (deci_adc_counter)
          0 : if (deci_adc_start) deci_adc_counter <= 3;
          1 : deci_adc_counter <= 0;
          2 : deci_adc_counter <= 1;
          3 : if (user_sysref_adc) deci_adc_counter <= 2;
        endcase
      end
      else
        deci_adc_counter <= 0;
    end

	always @(posedge deci_clk) 
	begin
	  if (deci_resetn)
	  begin
	    if (deci_adc_active)
	      sysref_active <= 0;
	    else
	    begin
	      if (deci_adc_counter == 2)
		    sysref_active <= 0;		  
		  else
		    sysref_active <= 1;		  
		end
	  end
	  else
	    sysref_active <= 1;
	end

	always @(posedge deci_clk) 
	begin
	  if (deci_resetn)
	  begin
	    if (deci_adc_counter == 2'b01)
	      deci_adc_active <= 1;
		else if (deci_adc_stop)
		  deci_adc_active <= 0;
	  end
	  else
	    deci_adc_active <= 0;
    end

	always @(posedge axi_clk) 
	begin
		adc_axi_start <= axi_adc_start;
		adc_axi_stop <= axi_adc_stop;
		sim_axi_start <= axi_sim_start;
	end

	always @(posedge deci_clk) 
	begin
		deci_adc_start_1 <= adc_axi_start;
		deci_adc_start_2 <= deci_adc_start_1;
		deci_adc_start_curr <= deci_adc_start_2;
		deci_adc_start_prev <= deci_adc_start_curr;
		deci_adc_start <= deci_adc_start_curr & ~deci_adc_start_prev;
	end

	always @(posedge deci_clk) 
	begin
		deci_adc_stop_1 <= adc_axi_stop;
		deci_adc_stop_2 <= deci_adc_stop_1;
		deci_adc_stop_curr <= deci_adc_stop_2;
		deci_adc_stop_prev <= deci_adc_stop_curr;
		deci_adc_stop <= deci_adc_stop_curr & ~deci_adc_stop_prev;
	end

	always @(posedge deci_clk) 
	begin
		deci_sim_start_1 <= sim_axi_start;
		deci_sim_start_2 <= deci_sim_start_1;
		deci_sim_start_curr <= deci_sim_start_2;
		deci_sim_start_prev <= deci_sim_start_curr;
		deci_sim_start <= deci_sim_start_curr & ~deci_sim_start_prev;
	end

	always @(posedge deci_clk) 
	begin
		adc_active <= deci_adc_active;
		sim_active <= deci_sim_active_low | deci_sim_active_high;
	end

	always @(posedge axi_clk) 
	begin
		axi_adc_active_1 <= adc_active;
		axi_adc_active_2 <= axi_adc_active_1;
		axi_adc_active <= axi_adc_active_2;
	end

	always @(posedge axi_clk) 
	begin
		axi_sim_active_1 <= sim_active;
		axi_sim_active_2 <= axi_sim_active_1;
		axi_sim_active <= axi_sim_active_2;
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

  end
    
endgenerate
        
endmodule
