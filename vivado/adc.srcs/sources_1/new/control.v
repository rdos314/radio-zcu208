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

    input wire [12:0] bram_adr_in,
    output wire [10:0] bram_adr_out,
	
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
    
    assign bram_adr_out[10:0] = bram_adr_in[12:2];

    reg [10:0] padr;    
   	reg	[31:0] pdata;
   	reg [31:0] cdata;
   	
	reg cmd_start;
	reg sim_start;
   	reg sim_pend;   	
	reg sim_done;
	reg [10:0] sim_count;
		
   	wire [7:0] adc_cmd = cdata[7:0];
   	wire [2:0] adc_chan = cdata[10:8];
   	wire [11:0] adc_count = (cdata[27:16] + 1);

ila_4 ila_4_i (
		.clk(clk),                  // input wire clk
		.probe0(resetn),            // input wire [0:0]  probe3
		.probe1(stop_in),           // input wire [0:0]  probe3
		.probe2(reset_out),         // input wire [0:0]  probe3
		.probe3(data_in),           // input wire [31:0]  probe3
		.probe4(address),           // input wire [10:0]  probe3
		.probe5(padr),              // input wire [10:0]  probe3
		.probe6(wr_en),             // input wire [3:0]  probe3
		.probe7(data_out),          // input wire [31:0]  probe3
		.probe8(cdata),             // input wire [31:0]  probe3
		.probe9(pdata),             // input wire [31:0]  probe3
		.probe10(sim_low_wr),       // input wire [0:0]  probe3
		.probe11(sim_high_wr),      // input wire [0:0]  probe3
		.probe12(sim_channel),      // input wire [1:0]  probe3
		.probe13(sim_data),         // input wire [31:0]  probe3
		.probe14(adc_active),       // input wire [0:0]  probe3
		.probe15(sim_active),       // input wire [0:0]  probe3
		.probe16(cmd_start),        // input wire [0:0]  probe3
		.probe17(sim_start),        // input wire [0:0]  probe3
		.probe18(sim_pend),         // input wire [0:0]  probe3
		.probe19(sim_done),         // input wire [0:0]  probe3
		.probe20(sim_count)         // input wire [10:0]  probe3
	);

generate
  begin : adc_control

	always @(posedge clk) 
	begin
	  padr <= address;
	end

	always @(posedge clk) 
	begin
	  if (padr == 0)
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
	      if (cdata == pdata)
			cmd_start <= 0;
   	      else
  	      begin
  	        pdata <= data_in;
			cmd_start <= 1;
		  end
  	    end
  	  end
	  else
	  begin
		cmd_start <= 0;
	    pdata <= 0;
	  end
  	end

	always @(posedge clk) 
	begin
	  if (cmd_start)
	  begin
        case (adc_cmd)
          8'h01 :
			begin 
			  sim_start <= 1;
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
	    sim_start <= 0;
	    
	    if (!resetn | stop_in)
		begin
		  adc_active <= 0;
		  sim_active <= 0;		
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
  	      if (sim_pend | sim_start)
		    address <= address + 1;
		  else
		    address <= 0;
	    end
      end
	end

	always @(posedge clk) 
	begin
	  if (!resetn  | reset_out)
	    sim_pend <= 0;
	  else
	  begin
  	    if (sim_start)
	      sim_pend <= 1;
	    else
	    begin
	      if (sim_done)
	        sim_pend <= 0;
	    end
	  end
	end

	always @(posedge clk) 
	begin
	  if (sim_start | sim_pend)
	  begin
	    if (sim_count)
  		  sim_done <= 0;
  		else
  		  sim_done <= ~sim_done;
      end
      else
  		sim_done <= 0;
    end

	always @(posedge clk) 
	begin
	  if (cmd_start)	  
	  begin
	    sim_low_wr <= 0;
	    sim_high_wr <= 0;
	    sim_count <= adc_count[11:1];
	    sim_channel <= adc_chan[1:0];
      end
	  else
	  begin	  
	    if (sim_start | sim_pend)
	    begin
	      if (sim_count)
		  begin
		    if (sim_pend)
		    begin
  		      sim_count <= sim_count - 1;
			  sim_data <= data_in;
		  
  	          if (adc_chan[2])
	            sim_high_wr <= 1;
  		      else
		        sim_low_wr <= 1;
		    end
		    else
		    begin
   	          sim_low_wr <= 0;
	          sim_high_wr <= 0;
	        end
  		  end
		  else
		  begin
   	        sim_low_wr <= 0;
	        sim_high_wr <= 0;
	      end
  	    end
  	    else
	    begin
		  sim_count <= 0;
	      sim_low_wr <= 0;
	      sim_high_wr <= 0;
		end
	  end
	end

	always @(posedge clk) 
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
	    data_out <= 0;
  		wr_en <= 4'b0000;
	  end
    end
	    
  end
  
endgenerate
    
endmodule
