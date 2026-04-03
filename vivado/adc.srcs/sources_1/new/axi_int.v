`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 15:03:48
// Design Name: 
// Module Name: axi_int
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

module axi_int(
    input wire clk,
    input wire resetn,
	
	output reg low_rd,
	input wire low_wr,
	output wire low_empty,
	output wire low_full,
	input wire low_pending,
	input wire [19:0] low_timestamp,
	input wire [255:0] low_data,
	
	output reg high_rd,
	input wire high_wr,
	output wire high_empty,
	output wire high_full,
	input wire high_pending,
	input wire [19:0] high_timestamp,
	input wire [255:0] high_data,

    input wire up,
    output reg [31:0] M_AXI_AWADDR,
    output reg [7:0] M_AXI_AWLEN,
    output wire [2:0] M_AXI_AWSIZE,
    output wire [1:0] M_AXI_AWPROT,
    output wire [1:0] M_AXI_AWBURST,
    output wire [31:0] M_AXI_WSTRB,
    output reg M_AXI_AWVALID,
    input wire M_AXI_AWREADY,
    output reg [255:0] M_AXI_WDATA,
    output reg M_AXI_WLAST,
    output reg M_AXI_WVALID,
    input wire M_AXI_WREADY,
    input wire M_AXI_BVALID,
    input wire [1:0] M_AXI_BRESP, 
    output reg M_AXI_BREADY
    );
    
    assign M_AXI_AWSIZE = 3'b101;
    assign M_AXI_AWPROT = 3'b001;
    assign M_AXI_AWBURST = 2'b01;
    assign M_AXI_WSTRB = 32'hFFFFFFFF;

    wire start;
    wire next;
    wire last;
    wire done;
    wire [255:0] data;
    
    assign start = M_AXI_AWREADY & M_AXI_AWVALID;
    assign next = M_AXI_WREADY & M_AXI_WVALID;
    assign last = M_AXI_WREADY & M_AXI_WLAST;
    assign done = M_AXI_BREADY & M_AXI_BVALID;

    assign data[255:0] = 0;

    reg reset;
    reg busy;
    reg [7:0] req_timeout;
    reg req;
    reg [26:0] adr;
    reg [7:0] size;
    reg [7:0] counter;
    
    wire [255:0] low_out_data;
    wire [255:0] high_out_data;
    
    reg low_wr_1;
    reg low_wr_2;

    reg high_wr_1;
    reg high_wr_2;

    reg [2:0] low_delay;
    reg [2:0] high_delay;
    
    reg [13:0] low_blocks;
    reg [13:0] high_blocks;
    
	reg [63:0] low_hdr_sample;
	reg [7:0] low_hdr_blocks;
	reg [7:0] low_hdr_flags;
	reg [15:0] low_hdr_size;
	reg [31:0] low_hdr_freq;
	reg [15:0] low_hdr_angle;
	reg [15:0] low_hdr_doa_error;
	reg [15:0] low_hdr_max_env;
	reg [15:0] low_hdr_max_pos;
	reg [15:0] low_hdr_env_mean;
	reg [15:0] low_hdr_env_std;
	reg [15:0] low_hdr_phase_std;
	reg [15:0] low_hdr_freq_std;
	
	reg [15:0] low_env_0;
	reg [15:0] low_env_1;
	reg [15:0] low_env_2;
	reg [15:0] low_env_3;
	reg [15:0] low_env_4;
	reg [15:0] low_env_5;
	reg [15:0] low_env_6;
	reg [15:0] low_env_7;

	reg [15:0] low_phase_0;
	reg [15:0] low_phase_1;
	reg [15:0] low_phase_2;
	reg [15:0] low_phase_3;
	reg [15:0] low_phase_4;
	reg [15:0] low_phase_5;
	reg [15:0] low_phase_6;
	reg [15:0] low_phase_7;


	reg [63:0] high_hdr_sample;
	reg [7:0] high_hdr_blocks;
	reg [7:0] high_hdr_flags;
	reg [15:0] high_hdr_size;
	reg [31:0] high_hdr_freq;
	reg [15:0] high_hdr_angle;
	reg [15:0] high_hdr_doa_error;
	reg [15:0] high_hdr_max_env;
	reg [15:0] high_hdr_max_pos;
	reg [15:0] high_hdr_env_mean;
	reg [15:0] high_hdr_env_std;
	reg [15:0] high_hdr_phase_std;
	reg [15:0] high_hdr_freq_std;
	
	reg [15:0] high_env_0;
	reg [15:0] high_env_1;
	reg [15:0] high_env_2;
	reg [15:0] high_env_3;
	reg [15:0] high_env_4;
	reg [15:0] high_env_5;
	reg [15:0] high_env_6;
	reg [15:0] high_env_7;

	reg [15:0] high_phase_0;
	reg [15:0] high_phase_1;
	reg [15:0] high_phase_2;
	reg [15:0] high_phase_3;
	reg [15:0] high_phase_4;
	reg [15:0] high_phase_5;
	reg [15:0] high_phase_6;
	reg [15:0] high_phase_7;

	
	xpm_fifo_sync #(
	    .FIFO_MEMORY_TYPE("ultra"),
	    .FIFO_WRITE_DEPTH(16384),
	    .WRITE_DATA_WIDTH(256),
	    .READ_DATA_WIDTH(256),
	    .READ_MODE("fwft"),
	    .FIFO_READ_LATENCY(1)
	)
	fifo_low_i(
	    .rst(reset),
	    .wr_clk(clk),
	    .wr_en(low_wr),
	    .din(low_data),
	    .rd_en(low_rd),
	    .dout(low_out_data),
	    .full(low_full),
	    .empty(low_empty)
	);
	
	xpm_fifo_sync #(
	    .FIFO_MEMORY_TYPE("ultra"),
	    .FIFO_WRITE_DEPTH(16384),
	    .WRITE_DATA_WIDTH(256),
	    .READ_DATA_WIDTH(256),
	    .READ_MODE("fwft"),
	    .FIFO_READ_LATENCY(1)
	)
	fifo_high_i(
	    .rst(reset),
	    .wr_clk(clk),
	    .wr_en(high_wr),
	    .din(high_data),
	    .rd_en(high_rd),
	    .dout(high_out_data),
	    .full(high_full),
	    .empty(high_empty)
	);

	ila_6 ila_low_i (
		.clk(clk),                    // input wire clk
		.probe0(low_rd),              // input wire [0:0]  probe3
		.probe1(low_wr),              // input wire [0:0]  probe3
		.probe2(low_empty),           // input wire [0:0]  probe3
		.probe3(low_pending),         // input wire [0:0]  probe3
		.probe4(low_blocks),          // input wire [13:0]  probe3
		.probe5(low_data[63:0]),      // input wire [63:0]  probe3
		.probe6(low_hdr_sample),      // input wire [63:0]  probe3
		.probe7(low_hdr_blocks),      // input wire [7:0]  probe3
		.probe8(low_hdr_flags),       // input wire [7:0]  probe3
		.probe9(low_hdr_size),        // input wire [15:0]  probe3
		.probe10(low_hdr_freq),       // input wire [31:0]  probe3
		.probe11(low_hdr_angle),      // input wire [15:0]  probe3
		.probe12(low_hdr_doa_error),  // input wire [15:0]  probe3
		.probe13(low_hdr_max_env),    // input wire [15:0]  probe3
		.probe14(low_hdr_max_pos),    // input wire [15:0]  probe3
		.probe15(low_hdr_env_mean),   // input wire [15:0]  probe3
		.probe16(low_hdr_env_std),    // input wire [15:0]  probe3
		.probe17(low_hdr_phase_std),  // input wire [15:0]  probe3
		.probe18(low_hdr_freq_std),   // input wire [15:0]  probe3
		.probe19(low_env_0),          // input wire [15:0]  probe3
		.probe20(low_env_1),          // input wire [15:0]  probe3
		.probe21(low_env_2),          // input wire [15:0]  probe3
		.probe22(low_env_3),          // input wire [15:0]  probe3
		.probe23(low_env_4),          // input wire [15:0]  probe3
		.probe24(low_env_5),          // input wire [15:0]  probe3
		.probe25(low_env_6),          // input wire [15:0]  probe3
		.probe26(low_env_7),          // input wire [15:0]  probe3
		.probe27(low_phase_0),        // input wire [15:0]  probe3
		.probe28(low_phase_1),        // input wire [15:0]  probe3
		.probe29(low_phase_2),        // input wire [15:0]  probe3
		.probe30(low_phase_3),        // input wire [15:0]  probe3
		.probe31(low_phase_4),        // input wire [15:0]  probe3
		.probe32(low_phase_5),        // input wire [15:0]  probe3
		.probe33(low_phase_6),        // input wire [15:0]  probe3
		.probe34(low_phase_7)         // input wire [15:0]  probe3
    );

	ila_6 ila_high_i (
		.clk(clk),                     // input wire clk
		.probe0(high_rd),              // input wire [0:0]  probe3
		.probe1(high_wr),              // input wire [0:0]  probe3
		.probe2(high_empty),           // input wire [0:0]  probe3
		.probe3(high_pending),         // input wire [0:0]  probe3
		.probe4(high_blocks),          // input wire [13:0]  probe3
		.probe5(high_data[63:0]),      // input wire [63:0]  probe3
		.probe6(high_hdr_sample),      // input wire [63:0]  probe3
		.probe7(high_hdr_blocks),      // input wire [7:0]  probe3
		.probe8(high_hdr_flags),       // input wire [7:0]  probe3
		.probe9(high_hdr_size),        // input wire [15:0]  probe3
		.probe10(high_hdr_freq),       // input wire [31:0]  probe3
		.probe11(high_hdr_angle),      // input wire [15:0]  probe3
		.probe12(high_hdr_doa_error),  // input wire [15:0]  probe3
		.probe13(high_hdr_max_env),    // input wire [15:0]  probe3
		.probe14(high_hdr_max_pos),    // input wire [15:0]  probe3
		.probe15(high_hdr_env_mean),   // input wire [15:0]  probe3
		.probe16(high_hdr_env_std),    // input wire [15:0]  probe3
		.probe17(high_hdr_phase_std),  // input wire [15:0]  probe3
		.probe18(high_hdr_freq_std),   // input wire [15:0]  probe3
		.probe19(high_env_0),          // input wire [15:0]  probe3
		.probe20(high_env_1),          // input wire [15:0]  probe3
		.probe21(high_env_2),          // input wire [15:0]  probe3
		.probe22(high_env_3),          // input wire [15:0]  probe3
		.probe23(high_env_4),          // input wire [15:0]  probe3
		.probe24(high_env_5),          // input wire [15:0]  probe3
		.probe25(high_env_6),          // input wire [15:0]  probe3
		.probe26(high_env_7),          // input wire [15:0]  probe3
		.probe27(high_phase_0),        // input wire [15:0]  probe3
		.probe28(high_phase_1),        // input wire [15:0]  probe3
		.probe29(high_phase_2),        // input wire [15:0]  probe3
		.probe30(high_phase_3),        // input wire [15:0]  probe3
		.probe31(high_phase_4),        // input wire [15:0]  probe3
		.probe32(high_phase_5),        // input wire [15:0]  probe3
		.probe33(high_phase_6),        // input wire [15:0]  probe3
		.probe34(high_phase_7)         // input wire [15:0]  probe3
    );
    
generate
  begin : axi_int

    always @(posedge clk) 
    begin
        reset <= !resetn;
    end

    always @(posedge clk) 
    begin
        if (reset)
        begin
            low_delay <= 0;
            low_rd <= 0;
        end
        else
        begin
            if (low_empty)
            begin
                low_delay <= 7;
                low_rd <= 0;
            end
            else
            begin
                if (low_delay)
                begin
                    low_delay <= low_delay - 1;                
                    low_rd <= 0;
                end
                else
                    low_rd <= 1;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (reset)
        begin
            high_delay <= 0;
            high_rd <= 0;
        end
        else
        begin
            if (high_empty)
            begin
                high_delay <= 7;
                high_rd <= 0;
            end
            else
            begin
                if (high_delay)
                begin
                    high_delay <= high_delay - 1;                
                    high_rd <= 0;
                end
                else
                    high_rd <= 1;
            end
        end
    end
            
    always @(posedge clk) 
    begin
        low_wr_1 <= low_wr;
        low_wr_2 <= low_wr_1;
    end

    always @(posedge clk) 
    begin
        case ({low_empty, low_rd, low_wr_2})
            3'b000 : ;
            3'b001 : low_blocks <= low_blocks + 1;
            3'b010 : low_blocks <= low_blocks - 1;
            3'b011 : ;
            3'b100 : low_blocks <= 0;
            3'b101 : low_blocks <= 0;
            3'b110 : low_blocks <= 0;            
            3'b111 : low_blocks <= 0;
        endcase
    end
    
    always @(posedge clk) 
    begin
        high_wr_1 <= high_wr;
        high_wr_2 <= high_wr_1;
    end


    always @(posedge clk) 
    begin
        case ({high_empty, high_rd, high_wr_2})
            3'b000 : ;
            3'b001 : high_blocks <= high_blocks + 1;
            3'b010 : high_blocks <= high_blocks - 1;
            3'b011 : ;
            3'b100 : high_blocks <= 0;
            3'b101 : high_blocks <= 0;
            3'b110 : high_blocks <= 0;            
            3'b111 : high_blocks <= 0;
        endcase
    end
            
    always @(posedge clk) 
    begin
        if (low_rd)
		begin
		    if (low_out_data[79])
		    begin
				low_hdr_sample <= low_out_data[63:0];
				low_hdr_blocks <= low_out_data[71:64];
				low_hdr_flags <= low_out_data[79:72];
				low_hdr_size <= low_out_data[95:80];
				low_hdr_angle <= low_out_data[111:96];
				low_hdr_doa_error <= low_out_data[127:112];
				low_hdr_freq <= low_out_data[159:128];
				low_hdr_max_env <= low_out_data[175:160];
				low_hdr_max_pos <= low_out_data[191:176];
				low_hdr_env_mean <= low_out_data[207:192];				
				low_hdr_env_std <= low_out_data[223:208];				
				low_hdr_phase_std <= low_out_data[239:224];				
				low_hdr_freq_std <= low_out_data[255:240];
			end
    		else
	   		begin
			    low_env_0 <= low_out_data[15:0];
    		    low_phase_0 <= low_out_data[31:16];
	   			low_env_1 <= low_out_data[47:32];
		  		low_phase_1 <= low_out_data[63:48];
				low_env_2 <= low_out_data[79:64];
				low_phase_2 <= low_out_data[95:80];
				low_env_3 <= low_out_data[111:96];
				low_phase_3 <= low_out_data[127:112];
			    low_env_4 <= low_out_data[143:128];
    		    low_phase_4 <= low_out_data[159:144];
	   			low_env_5 <= low_out_data[175:160];
		  		low_phase_5 <= low_out_data[191:176];
				low_env_6 <= low_out_data[207:192];
				low_phase_6 <= low_out_data[223:208];
				low_env_7 <= low_out_data[239:224];
				low_phase_7 <= low_out_data[255:240];
			end
		end
	end

    always @(posedge clk) 
    begin
        if (high_rd)
		begin
		    if (high_out_data[79])
		    begin
				high_hdr_sample <= high_out_data[63:0];
				high_hdr_blocks <= high_out_data[71:64];
				high_hdr_flags <= high_out_data[79:72];
				high_hdr_size <= high_out_data[95:80];
				high_hdr_angle <= high_out_data[111:96];
				high_hdr_doa_error <= high_out_data[127:112];
				high_hdr_freq <= high_out_data[159:128];
				high_hdr_max_env <= high_out_data[175:160];
				high_hdr_max_pos <= high_out_data[191:176];
				high_hdr_env_mean <= high_out_data[207:192];				
				high_hdr_env_std <= high_out_data[223:208];				
				high_hdr_phase_std <= high_out_data[239:224];				
				high_hdr_freq_std <= high_out_data[255:240];
			end
    		else
	   		begin
			    high_env_0 <= high_out_data[15:0];
    		    high_phase_0 <= high_out_data[31:16];
	   			high_env_1 <= high_out_data[47:32];
		  		high_phase_1 <= high_out_data[63:48];
				high_env_2 <= high_out_data[79:64];
				high_phase_2 <= high_out_data[95:80];
				high_env_3 <= high_out_data[111:96];
				high_phase_3 <= high_out_data[127:112];
			    high_env_4 <= high_out_data[143:128];
    		    high_phase_4 <= high_out_data[159:144];
	   			high_env_5 <= high_out_data[175:160];
		  		high_phase_5 <= high_out_data[191:176];
				high_env_6 <= high_out_data[207:192];
				high_phase_6 <= high_out_data[223:208];
				high_env_7 <= high_out_data[239:224];
				high_phase_7 <= high_out_data[255:240];
			end
		end
	end


    always @(posedge clk) 
    begin
        size <= 0;
        req <= 0;
    end

    always @(posedge clk) 
    begin
        if (reset | start)
            M_AXI_AWVALID <= 0;
        else
        begin
            if (req & !busy)
            begin
                M_AXI_AWVALID <= 1;
                M_AXI_AWADDR <= {adr, 5'b00000};
                M_AXI_AWLEN <= size - 1;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (reset | done)
            busy <= 0;
        else
            if (start)
                busy <= 1;
    end

    always @(posedge clk) 
    begin
        if (reset)
            counter <= 0;
        else
        begin
			if (done)
				counter <= 0;
			else
			begin
				if (counter)
				begin
					if (start | next)
					begin
						M_AXI_WDATA <= data;
						counter <= counter - 1;
					end
				end
				else
				begin
					if (req & !busy)
						counter <= size;
				end
            end
        end
    end

    always @(posedge clk) 
    begin
        if (reset)
            adr <= 0;
        else
        begin
			if (next)
				adr <= adr + 1;
		end
    end

    always @(posedge clk) 
    begin
        if (reset | last | done)
            M_AXI_WVALID <= 0;
        else
            if (start)
                M_AXI_WVALID <= 1;
    end

    always @(posedge clk) 
    begin
        if (reset | last | done)
            M_AXI_WLAST <= 0;
        else
        begin
            if (next | start)
            begin
                if (counter == 1)
                    M_AXI_WLAST <= 1;
                else
                    M_AXI_WLAST <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (done | reset)
            M_AXI_BREADY <= 0;
        else
            M_AXI_BREADY <= M_AXI_BVALID;
    end
    
  end

     
endgenerate

endmodule
