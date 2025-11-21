`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 22:14:39
// Design Name: 
// Module Name: adc_test
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

module adc_control(
    input wire clk,
    input wire resetn,
    output reg reset_out,
	input wire stop_in,
	
    output reg [10:0] address,
    input wire [31:0] data_in,
    output reg [3:0] wr_en,
    output reg [31:0] data_out,

	output reg adc_active,
	output reg sim_active,
	
	output reg sim_low_wr,
	output reg sim_high_wr,
	output reg [1:0] sim_channel,
	output reg [31:0] sim_data
    );
    
   	reg	[31:0] data0;
   	reg [31:0] cdata;
   	
	reg cmd_start;
   	reg sim_pend;   	
	reg sim_done;
	reg [10:0] sim_count;
	reg [1:0] delay;
		
   	wire [7:0] adc_cmd = data0[7:0];
   	wire [2:0] adc_chan = data0[10:8];
   	wire [10:0] adc_count = data0[26:16];

ila_4 ila_4_i (
		.clk(clk),                  // input wire clk
		.probe0(resetn),            // input wire [0:0]  probe3
		.probe1(stop_in),           // input wire [0:0]  probe3
		.probe2(reset_out),         // input wire [0:0]  probe3
		.probe3(delay),             // input wire [1:0]  probe3
		.probe4(data_in),           // input wire [31:0]  probe3
		.probe5(address),           // input wire [10:0]  probe3
		.probe6(wr_en),             // input wire [3:0]  probe3
		.probe7(data_out),          // input wire [31:0]  probe3
		.probe8(cdata),             // input wire [31:0]  probe3
		.probe9(data0),             // input wire [31:0]  probe3
		.probe10(sim_low_wr),       // input wire [0:0]  probe3
		.probe11(sim_high_wr),      // input wire [0:0]  probe3
		.probe12(sim_channel),      // input wire [1:0]  probe3
		.probe13(sim_data),         // input wire [31:0]  probe3
		.probe14(adc_active),       // input wire [0:0]  probe3
		.probe15(sim_active),       // input wire [0:0]  probe3
		.probe16(cmd_start),        // input wire [0:0]  probe3
		.probe17(sim_pend),         // input wire [0:0]  probe3
		.probe18(sim_done),         // input wire [0:0]  probe3
		.probe19(sim_count)         // input wire [10:0]  probe3
	);

generate
  begin : adc_control

	always @(posedge clk) 
	begin
	  if (!sim_pend & !sim_done)
  	    cdata <= data_in;
	end

	always @(posedge clk) 
	begin
	  if (resetn && cdata)
	  begin
	    if (sim_pend || cmd_start)
		  cmd_start <= 0;
		else
		begin
	      if (cdata == data0)
			cmd_start <= 0;
   	      else
  	      begin
  	        data0 <= cdata;
			cmd_start <= 1;
		  end
  	    end
  	  end
	  else
	  begin
		cmd_start <= 0;
	    data0 <= 0;
	  end
  	end

	always @(posedge clk) 
	begin
	  if (cmd_start)
	  begin
        case (adc_cmd)
          8'h01 :
			begin 
			  sim_pend <= 1;
			  sim_active <= 0;
			end

          8'h02 :  
		    begin
			  adc_active <= 1;
			  sim_active <= 0;
			  reset_out <= 1;
			end

          8'h03 :  
		    begin
			  adc_active <= 0;
			  sim_active <= 1;
			  reset_out <= 1;
			end

          8'h04 :  
		    begin
			  adc_active <= 0;
			  sim_active <= 0;
			  reset_out <= 1;
			end
        endcase
	  end
	  else
	  begin
	    if (!resetn | stop_in)
		begin
		  adc_active <= 0;
		  sim_active <= 0;		
		  sim_pend <= 0;
		end
		else
		begin
  		  if (sim_done)
		    sim_pend <= 0;
	    end
		
		if (stop_in)
  	      reset_out <= 1;
		else
  	      reset_out <= 0;		
	  end
    end

	always @(posedge clk) 
	begin
	  if (cmd_start)
	    address <= 2;
	  else
	  begin
	    if (!resetn | sim_done | reset_out)
		  address <= 1;
		else
		begin
  	      if (sim_pend)
  	      begin
  	        if (delay == 0)
		      address <= address + 1;
		  end
  		  else
		    address <= 0;
	    end
      end
	end

	always @(posedge clk) 
	begin
	  if (cmd_start)	  
	  begin
	    delay <= 2'b11;
		sim_done <= 0;
	    sim_low_wr <= 0;
	    sim_high_wr <= 0;
	    sim_count <= adc_count;
	    sim_channel <= adc_chan[1:0];
      end
	  else
	  begin	  
	    if (sim_pend)
	    begin
	      if (sim_count)
		  begin
		    if (delay)
		    begin
		      delay <= delay - 1;
   	          sim_low_wr <= 0;
	          sim_high_wr <= 0;
	        end
		    else
		    begin
  		      sim_done <= 0;
		      sim_count <= sim_count - 1;
			  sim_data <= data_in;
  	          delay <= 2'b11;
		  
  	          if (adc_chan[2])
	            sim_high_wr <= 1;
  		      else
		        sim_low_wr <= 1;
		    end
  		  end
		  else
		  begin
		    sim_done <= 1;
   	        sim_low_wr <= 0;
	        sim_high_wr <= 0;
  	        delay <= 2'b11;
  	      end
 	    end
	    else
	    begin
		  sim_done <= 0;
		  sim_count <= 0;
	      sim_low_wr <= 0;
	      sim_high_wr <= 0;
	      delay <= 2'b11;
		end
	  end
	end

	always @(posedge clk) 
	begin
	  if (stop_in)
	  begin
	    data_out <= 0;
		wr_en <= 4'b0000;
	  end
	  else
	  begin
   	    if (resetn)
	    begin
  	      if (sim_done | reset_out)
	      begin
		    wr_en <= 4'b1111;
		    data_out[7:0] <= data_out[7:0] + 1;
		    data_out[8] <= adc_active;
		    data_out[9] <= sim_active;
  	      end
	      else
  		    wr_en <= 4'b0000;
        end
        else
	    begin
	      data_out <= 1;
		  if (data_out == 1)
  		    wr_en <= 4'b0000;
          else		  
		    wr_en <= 4'b1111;
		end
	  end
    end
	    
  end
  
endgenerate
    
endmodule
