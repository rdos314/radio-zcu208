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

	input wire mig_clk,
	output reg mig_resetn,
	
	input wire axi_clk,
	output reg axi_resetn,
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

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ANA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire ana0_clk,
    output reg  ana0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ANA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire ana1_clk,
    output reg  ana1_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FREQ0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire freq0_clk,
    output reg  freq0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FREQ1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire freq1_clk,
    output reg  freq1_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire comp0_clk,
    output reg  comp0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire comp1_clk,
    output reg  comp1_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP_ANA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire comp_ana0_clk,
    output reg  comp_ana0_reset,

    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP_ANA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
	output wire comp_ana1_clk,
    output reg  comp_ana1_reset
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
	wire deci_clk_buf;
	wire ana_clk_buf;
	wire freq_clk_buf;
	wire comp_clk_buf;
	wire comp_ana_clk_buf;

    wire deci_raw_clk;
    wire ana0_raw_clk;
    wire ana1_raw_clk;
    wire freq0_raw_clk;
    wire freq1_raw_clk;
    wire comp0_raw_clk;
    wire comp1_raw_clk;
    wire comp_ana0_raw_clk;
    wire comp_ana1_raw_clk;

	wire rst_async = sys_reset | (~deci_locked);
    wire ana_locked;
    wire freq_locked;
    wire comp_locked;
    wire comp_ana_locked;
    wire stat_0_locked;

	(* ASYNC_REG="TRUE" *)  reg  sysref_r;
	(* ASYNC_REG="TRUE" *)	reg [2:0] sysref_sync;

	(* ASYNC_REG="TRUE" *)	reg  [3:0] deci_release_cnt;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_async;
	(* ASYNC_REG="TRUE" *)	reg  axi_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  axi_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  mig_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  mig_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  deci_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  ana0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  ana0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  ana1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  ana1_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  freq0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  freq0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  freq1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  freq1_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  comp0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  comp0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  comp1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  comp1_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  comp_ana0_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  comp_ana0_reset_2;
	(* ASYNC_REG="TRUE" *)	reg  comp_ana1_reset_1;
	(* ASYNC_REG="TRUE" *)	reg  comp_ana1_reset_2;

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

	BUFG buf_deci_clk_i (
		.I			(pl_clk_buf),
		.O			(deci_clk_buf));
    
	clk_wiz_deci clk_wiz_deci_i (
		.clk_in1	(deci_clk_buf),
		.clk_out1	(deci_raw_clk),
		.locked		(deci_locked));

	BUFG buf_deci_clk_0 (
		.I			(deci_raw_clk),
		.O			(deci_clk));

	BUFG buf_ana_clk_i (
		.I			(pl_clk_buf),
		.O			(ana_clk_buf));
		
	clk_wiz_adc clk_wiz_ana_i (
		.clk_in1	(ana_clk_buf),
		.clk_out1	(ana0_raw_clk),
		.clk_out2	(ana1_raw_clk),
		.locked		(ana_locked)
		);

	BUFG buf_ana_clk_0 (
		.I			(ana0_raw_clk),
		.O			(ana0_clk));

	BUFG buf_ana_clk_1 (
		.I			(ana1_raw_clk),
		.O			(ana1_clk));

	BUFG buf_freq_clk_i (
		.I			(pl_clk_buf),
		.O			(freq_clk_buf));

	clk_wiz_adc clk_wiz_freq_i (
		.clk_in1	(freq_clk_buf),
		.clk_out1	(freq0_raw_clk),
		.clk_out2	(freq1_raw_clk),
		.locked		(freq_locked)
		);

	BUFG buf_freq_clk_0 (
		.I			(freq0_raw_clk),
		.O			(freq0_clk));

	BUFG buf_freq_clk_1 (
		.I			(freq1_raw_clk),
		.O			(freq1_clk));

	BUFG buf_comp_clk_i (
		.I			(pl_clk_buf),
		.O			(comp_clk_buf));
		
	clk_wiz_adc clk_wiz_comp_i (
		.clk_in1	(comp_clk_buf),
		.clk_out1	(comp0_raw_clk),
		.clk_out2	(comp1_raw_clk),
		.locked		(comp_locked)
		);

	BUFG buf_comp_clk_0 (
		.I			(comp0_raw_clk),
		.O			(comp0_clk));

	BUFG buf_comp_clk_1 (
		.I			(comp1_raw_clk),
		.O			(comp1_clk));

	BUFG buf_comp_ana_clk_i (
		.I			(pl_clk_buf),
		.O			(comp_ana_clk_buf));
		
	clk_wiz_adc clk_wiz_comp_ana_i (
		.clk_in1	(comp_ana_clk_buf),
		.clk_out1	(comp_ana0_raw_clk),
		.clk_out2	(comp_ana1_raw_clk),
		.locked		(comp_ana_locked)
		);

	BUFG buf_comp_ana_clk_0 (
		.I			(comp_ana0_raw_clk),
		.O			(comp_ana0_clk));

	BUFG buf_comp_ana_clk_1 (
		.I			(comp_ana1_raw_clk),
		.O			(comp_ana1_clk));

/*
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

	always @(posedge axi_clk) 
	begin
		axi_reset_1 <= deci_reset_async;
		axi_reset_2 <= axi_reset_1;
		axi_resetn <= ~axi_reset_2;
	end

	always @(posedge mig_clk) 
	begin
		mig_reset_1 <= deci_reset_async;
		mig_reset_2 <= mig_reset_1;
		mig_resetn <= ~mig_reset_2;
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

	always @(posedge ana0_clk) 
	begin
		ana0_reset_1 <= deci_reset_async | (~ana_locked);
		ana0_reset_2 <= ana0_reset_1;
		ana0_reset <= ana0_reset_2;
	end

	always @(posedge ana1_clk) 
	begin
		ana1_reset_1 <= deci_reset_async | (~ana_locked);
		ana1_reset_2 <= ana1_reset_1;
		ana1_reset <= ana1_reset_2;
	end

	always @(posedge freq0_clk) 
	begin
		freq0_reset_1 <= deci_reset_async | (~freq_locked);
		freq0_reset_2 <= freq0_reset_1;
		freq0_reset <= freq0_reset_2;
	end

	always @(posedge freq1_clk) 
	begin
		freq1_reset_1 <= deci_reset_async | (~freq_locked);
		freq1_reset_2 <= freq1_reset_1;
		freq1_reset <= freq1_reset_2;
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

	always @(posedge comp_ana0_clk) 
	begin
		comp_ana0_reset_1 <= deci_reset_async | (~comp_ana_locked);
		comp_ana0_reset_2 <= comp_ana0_reset_1;
		comp_ana0_reset <= comp_ana0_reset_2;
	end

	always @(posedge comp_ana1_clk) 
	begin
		comp_ana1_reset_1 <= deci_reset_async | (~comp_ana_locked);
		comp_ana1_reset_2 <= comp_ana1_reset_1;
		comp_ana1_reset <= comp_ana1_reset_2;
	end

  end
    
endgenerate
        
endmodule
