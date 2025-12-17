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

    input wire [12:0] bram_adr_in,
    output wire [10:0] bram_adr_out,
	
    output reg [10:0] address,
    input wire [31:0] data_in,
    output reg [3:0] wr_en,
    output reg [31:0] data_out,

	output reg adc_start,
	output reg adc_stop,
	output reg sim_start,
	input wire adc_active,
	input wire sim_active,
    
    output reg config_low_wr,
    output reg config_high_wr,
    output reg [7:0] config_adr,
    output reg [31:0] config_data,
	
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
    
    reg config_wr_start;
    reg config_wr_pend;
    reg config_wr_done;
    reg [7:0] config_wr_count;
    
	reg sim_wr_start;
   	reg sim_wr_pend;   	
	reg sim_wr_done;
	reg [10:0] sim_wr_count;
		
   	wire [7:0] adc_cmd = cdata[7:0];
   	wire [2:0] adc_chan = cdata[10:8];
   	wire [11:0] adc_count = (cdata[27:16] + 1);
   	wire [7:0] config_count = cdata[23:16];

ila_4 ila_4_i (
		.clk(clk),                  // input wire clk
		.probe0(resetn),            // input wire [0:0]  probe3
		.probe1(data_in),           // input wire [31:0]  probe3
		.probe2(address),           // input wire [10:0]  probe3
		.probe3(padr),              // input wire [10:0]  probe3
		.probe4(wr_en),             // input wire [3:0]  probe3
		.probe5(data_out),          // input wire [31:0]  probe3
		.probe6(cdata),             // input wire [31:0]  probe3
		.probe7(pdata),             // input wire [31:0]  probe3
		.probe8(config_low_wr),     // input wire [0:0]  probe3
		.probe9(config_high_wr),    // input wire [0:0]  probe3
		.probe10(config_adr),       // input wire [7:0]  probe3
		.probe11(config_data),      // input wire [31:0]  probe3
		.probe12(sim_low_wr),       // input wire [0:0]  probe3
		.probe13(sim_high_wr),      // input wire [0:0]  probe3
		.probe14(sim_channel),      // input wire [1:0]  probe3
		.probe15(sim_data),         // input wire [31:0]  probe3
		.probe16(adc_start),        // input wire [0:0]  probe3
		.probe17(adc_stop),         // input wire [0:0]  probe3
		.probe18(config_start),     // input wire [0:0]  probe3
		.probe19(sim_start),        // input wire [0:0]  probe3
		.probe20(adc_active),       // input wire [0:0]  probe3
		.probe21(sim_active),       // input wire [0:0]  probe3
		.probe22(cmd_start),        // input wire [0:0]  probe3
		.probe23(config_wr_start),  // input wire [0:0]  probe3
		.probe24(config_wr_pend),   // input wire [0:0]  probe3
		.probe25(config_wr_done),   // input wire [0:0]  probe3
		.probe26(config_wr_count),  // input wire [7:0]  probe3
		.probe27(sim_wr_start),     // input wire [0:0]  probe3
		.probe28(sim_wr_pend),      // input wire [0:0]  probe3
		.probe29(sim_wr_done),      // input wire [0:0]  probe3
		.probe30(sim_wr_count)      // input wire [10:0]  probe3
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
	    if (sim_wr_pend || cmd_start)
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
          8'h01 : sim_wr_start <= 1;
          8'h02 : adc_start <= 1;
          8'h03 : sim_start <= 1;
          8'h04 : adc_stop <= 1;
          8'h05 : config_wr_start <= 1;
        endcase
	  end
	  else
	  begin
	    config_wr_start <= 0;
	    sim_wr_start <= 0;
		adc_start <= 0;
		sim_start <= 0;
		adc_stop <= 0;
	  end
    end


	always @(posedge clk) 
	begin
	  if (cmd_start)
	    address <= 2;
	  else
	  begin
	    if (!resetn | config_wr_done | sim_wr_done)
		  address <= 1;
		else
		begin
  	      if (config_wr_pend | config_wr_start | sim_wr_pend | sim_wr_start)
		    address <= address + 1;
		  else
		    address <= 0;
	    end
      end
	end

	always @(posedge clk) 
	begin
	  if (!resetn)
	    config_wr_pend <= 0;
	  else
	  begin
  	    if (config_wr_start)
	      config_wr_pend <= 1;
	    else
	    begin
	      if (config_wr_done)
	        config_wr_pend <= 0;
	    end
	  end
	end

	always @(posedge clk) 
	begin
	  if (config_wr_start | config_wr_pend)
	  begin
	    if (config_wr_count)
  		  config_wr_done <= 0;
  		else
  		  config_wr_done <= ~config_wr_done;
      end
      else
  		config_wr_done <= 0;
    end

	always @(posedge clk) 
	begin
	  if (cmd_start)	  
	  begin
	    config_low_wr <= 0;
	    config_high_wr <= 0;
        config_adr <= 8'hFF;
	    config_wr_count <= config_count;
      end
	  else
	  begin	  
	    if (config_wr_start | config_wr_pend)
	    begin
	      if (config_wr_count)
		  begin
		    if (config_wr_pend)
		    begin
  		      config_wr_count <= config_wr_count - 1;
			  config_data <= data_in;
              config_adr <= config_adr + 1;
		  
  	          if (adc_chan[0])
	            config_high_wr <= 1;
  		      else
		        config_low_wr <= 1;
		    end
		    else
		    begin
   	          config_low_wr <= 0;
	          config_high_wr <= 0;
              config_adr <= 8'hFF;
	        end
  		  end
		  else
		  begin
   	        config_low_wr <= 0;
	        config_high_wr <= 0;
            config_adr <= 8'hFF;
	      end
  	    end
  	    else
	    begin
		  config_wr_count <= 0;
	      config_low_wr <= 0;
	      config_high_wr <= 0;
          config_adr <= 8'hFF;
		end
	  end
	end

	always @(posedge clk) 
	begin
	  if (!resetn)
	    sim_wr_pend <= 0;
	  else
	  begin
  	    if (sim_wr_start)
	      sim_wr_pend <= 1;
	    else
	    begin
	      if (sim_wr_done)
	        sim_wr_pend <= 0;
	    end
	  end
	end

	always @(posedge clk) 
	begin
	  if (sim_wr_start | sim_wr_pend)
	  begin
	    if (sim_wr_count)
  		  sim_wr_done <= 0;
  		else
  		  sim_wr_done <= ~sim_wr_done;
      end
      else
  		sim_wr_done <= 0;
    end

	always @(posedge clk) 
	begin
	  if (cmd_start)	  
	  begin
	    sim_low_wr <= 0;
	    sim_high_wr <= 0;
	    sim_wr_count <= adc_count[11:1];
	    sim_channel <= adc_chan[1:0];
      end
	  else
	  begin	  
	    if (sim_wr_start | sim_wr_pend)
	    begin
	      if (sim_wr_count)
		  begin
		    if (sim_wr_pend)
		    begin
  		      sim_wr_count <= sim_wr_count - 1;
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
		  sim_wr_count <= 0;
	      sim_low_wr <= 0;
	      sim_high_wr <= 0;
		end
	  end
	end

	always @(posedge clk) 
	begin
   	  if (resetn)
	  begin
  	    if (sim_wr_done | config_wr_done)
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
