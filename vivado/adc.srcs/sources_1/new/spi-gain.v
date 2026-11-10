`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 15:03:48
// Design Name: 
// Module Name: spi gain
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


module spi_gain(
    input wire clk,
    input wire resetn,
    input wire [15:0] axi_in,
    output reg [15:0] axi_out,
	output reg spi_clk,
    input wire spi_in,
	output reg spi_out,
	output reg [2:0] spi_sel
    );
	
	wire req_start = axi_in[15];
	wire req_read = axi_in[14];
	wire [2:0] req_sel = axi_in[13:11];
	wire [2:0] req_adr = axi_in[10:8];
	wire [7:0] req_data = axi_in[7:0];

    reg spi_in_1;
    reg spi_in_2;
    reg curr_in;

    reg toggle_clk;
	reg [7:0] delay;
	reg prev_start;
	reg start;
	reg busy;
	reg curr_clk;
	reg curr_out;
    reg curr_rd;
	reg [2:0] curr_sel;
	reg [3:0] counter;
	reg [14:0] shift_data;

	ila_2 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(req_start),           // input wire [0:0]  probe3
		.probe1(req_read),            // input wire [0:0]  probe3
		.probe2(req_sel),             // input wire [2:0]  probe3
		.probe3(req_adr),             // input wire [2:0]  probe3
		.probe4(req_data),            // input wire [7:0]  probe3
		.probe5(prev_start),          // input wire [0:0]  probe3
		.probe6(start),               // input wire [0:0]  probe3
		.probe7(busy),                // input wire [0:0]  probe3
		.probe8(curr_sel),            // input wire [2:0]  probe3
		.probe9(curr_clk),            // input wire [0:0]  probe3
		.probe10(curr_out),            // input wire [0:0]  probe3
		.probe11(curr_rd),             // input wire [0:0]  probe3        
		.probe12(counter),             // input wire [3:0]  probe3
		.probe13(shift_data),          // input wire [14:0]  probe3
		.probe14(delay),               // input wire [7:0]  probe3
		.probe15(toggle_clk),          // input wire [0:0]  probe3
		.probe16(axi_in),             // input wire [15:0]  probe3
		.probe17(axi_out),             // input wire [15:0]  probe3
		.probe18(spi_clk),             // input wire [0:0]  probe3
		.probe19(spi_out),             // input wire [0:0]  probe3
		.probe20(spi_sel)              // input wire [2:0]  probe3
	);


generate
  begin : spi_gain

    always @(posedge clk) 
    begin
        if (resetn & curr_rd)
        begin
            spi_in_1 <= spi_in;
            spi_in_2 <= spi_in_1;
            curr_in <= spi_in_2;
        end
        else
        begin
            spi_in_1 <= 0;
            spi_in_2 <= 0;
            curr_in <= 0;
        end
    end

	always @(posedge clk) 
	begin
	   if (resetn)
	   begin
	       if (req_start != prev_start)
	       begin
	           prev_start <= req_start;

	           if (req_start == 1)
	               start <= 1;
	           else
	               start <= 0;
	       end
	       else
	           start <= 0;
	   end
	   else
	   begin
	       prev_start <= 0;
	       start <= 0;
	   end
    end

	always @(posedge clk) 
	begin
	   if (resetn)
	   begin
    	   if (start)
	       begin
	           curr_sel <= req_sel;
	           curr_out <= req_read;
               curr_rd <= req_read;
	           shift_data[14:11] <= 0;
	           shift_data[10:8] <= req_adr;
	           shift_data[7:0] <= req_data;
	           counter <= 15;
	           busy <= 1;
               axi_out[7:0] <= 0;
    	   end
	       else
	       begin
	           if (toggle_clk)
    	       begin
    	           curr_clk <= ~curr_clk;
	   		       if (curr_clk)
				   begin
				        curr_out <= shift_data[14];
				        shift_data[14:1] <= shift_data[13:0];
				        shift_data[0] <= 0;
				    
				        if (counter)
				            counter <= counter - 1;
    				    else
	   			            busy <= 0;
    				end
                    else
                    begin
                        if (curr_rd)
                        begin
                            axi_out[0] <= curr_in;
                            axi_out[7:1] <= axi_out[6:0];
                        end
                    end
                end
            end
        end
        else
        begin
            busy <= 0;
            counter <= 0;
            curr_clk <= 0;
            curr_out <= 0;
            curr_rd <= 0;
            axi_out[7:0] <= 0;
        end
    end

	always @(posedge clk) 
	begin
		if (resetn)
		begin
			if (delay)
			begin
			    if (busy)
			    begin
    				if (delay == 1)
	   			    begin
					    toggle_clk <= 1;
					    delay <= 20;
    				end
	    			else
		    		begin
				    	toggle_clk <= 0;
			    		delay <= delay - 1;
    				end
    			end
    			else
                begin
                    toggle_clk <= 0;
    			    delay <= 0;
                end
			end
			else
			begin
				toggle_clk <= 0;
			    if (busy)
			        delay <= 20;
			    
			end
		end
		else
		begin
			toggle_clk <= 0;
			delay <= 0;
		end
	end

	always @(posedge clk) 
	begin
	    if (resetn)
	    begin
    	    spi_clk <= ~curr_clk;
	   	    spi_out <= ~curr_out;

    		if (busy)
	   	    begin
    		    spi_sel <= curr_sel;
    		    axi_out[15] <= 1; 
            end
            else
            begin
                spi_sel <= 3'b111;
                axi_out[15] <= 0;
            end
        end
        else
        begin
            spi_sel <= 3'b111;
            spi_clk <= 1;
            spi_out <= 1;
            axi_out[15:8] <= 0;
        end
	end
		
  end
     
endgenerate

endmodule
