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
	
	output reg [8:0] low_remain_count,
	input wire low_preview,
	input wire [19:0] low_preview_data,
	input wire low_wr,
	input wire [255:0] low_data,
	
	output reg [8:0] high_remain_count,
	input wire high_preview,
	input wire [19:0] high_preview_data,
	input wire high_wr,
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

	ila_6 ila_low_i (
		.clk(clk),                    // input wire clk
		.probe0(low_wr),              // input wire [0:0]  probe3
		.probe1(low_hdr_sample),      // input wire [63:0]  probe3
		.probe2(low_hdr_blocks),      // input wire [7:0]  probe3
		.probe3(low_hdr_flags),       // input wire [7:0]  probe3
		.probe4(low_hdr_size),        // input wire [15:0]  probe3
		.probe5(low_hdr_freq),        // input wire [31:0]  probe3
		.probe6(low_hdr_angle),       // input wire [15:0]  probe3
		.probe7(low_hdr_doa_error),   // input wire [15:0]  probe3
		.probe8(low_hdr_max_env),     // input wire [15:0]  probe3
		.probe9(low_hdr_max_pos),     // input wire [15:0]  probe3
		.probe10(low_hdr_env_mean),   // input wire [15:0]  probe3
		.probe11(low_hdr_env_std),    // input wire [15:0]  probe3
		.probe12(low_hdr_phase_std),  // input wire [15:0]  probe3
		.probe13(low_hdr_freq_std),   // input wire [15:0]  probe3
		.probe14(low_env_0),          // input wire [15:0]  probe3
		.probe15(low_env_1),          // input wire [15:0]  probe3
		.probe16(low_env_2),          // input wire [15:0]  probe3
		.probe17(low_env_3),          // input wire [15:0]  probe3
		.probe18(low_env_4),          // input wire [15:0]  probe3
		.probe19(low_env_5),          // input wire [15:0]  probe3
		.probe20(low_env_6),          // input wire [15:0]  probe3
		.probe21(low_env_7),          // input wire [15:0]  probe3
		.probe22(low_phase_0),        // input wire [15:0]  probe3
		.probe23(low_phase_1),        // input wire [15:0]  probe3
		.probe24(low_phase_2),        // input wire [15:0]  probe3
		.probe25(low_phase_3),        // input wire [15:0]  probe3
		.probe26(low_phase_4),        // input wire [15:0]  probe3
		.probe27(low_phase_5),        // input wire [15:0]  probe3
		.probe28(low_phase_6),        // input wire [15:0]  probe3
		.probe29(low_phase_7)         // input wire [15:0]  probe3
    );

	ila_6 ila_high_i (
		.clk(clk),                     // input wire clk
		.probe0(high_wr),              // input wire [0:0]  probe3
		.probe1(high_hdr_sample),      // input wire [63:0]  probe3
		.probe2(high_hdr_blocks),      // input wire [7:0]  probe3
		.probe3(high_hdr_flags),       // input wire [7:0]  probe3
		.probe4(high_hdr_size),        // input wire [15:0]  probe3
		.probe5(high_hdr_freq),        // input wire [31:0]  probe3
		.probe6(high_hdr_angle),       // input wire [15:0]  probe3
		.probe7(high_hdr_doa_error),   // input wire [15:0]  probe3
		.probe8(high_hdr_max_env),     // input wire [15:0]  probe3
		.probe9(high_hdr_max_pos),     // input wire [15:0]  probe3
		.probe10(high_hdr_env_mean),   // input wire [15:0]  probe3
		.probe11(high_hdr_env_std),    // input wire [15:0]  probe3
		.probe12(high_hdr_phase_std),  // input wire [15:0]  probe3
		.probe13(high_hdr_freq_std),   // input wire [15:0]  probe3
		.probe14(high_env_0),          // input wire [15:0]  probe3
		.probe15(high_env_1),          // input wire [15:0]  probe3
		.probe16(high_env_2),          // input wire [15:0]  probe3
		.probe17(high_env_3),          // input wire [15:0]  probe3
		.probe18(high_env_4),          // input wire [15:0]  probe3
		.probe19(high_env_5),          // input wire [15:0]  probe3
		.probe20(high_env_6),          // input wire [15:0]  probe3
		.probe21(high_env_7),          // input wire [15:0]  probe3
		.probe22(high_phase_0),        // input wire [15:0]  probe3
		.probe23(high_phase_1),        // input wire [15:0]  probe3
		.probe24(high_phase_2),        // input wire [15:0]  probe3
		.probe25(high_phase_3),        // input wire [15:0]  probe3
		.probe26(high_phase_4),        // input wire [15:0]  probe3
		.probe27(high_phase_5),        // input wire [15:0]  probe3
		.probe28(high_phase_6),        // input wire [15:0]  probe3
		.probe29(high_phase_7)         // input wire [15:0]  probe3
    );
    
generate
  begin : axi_int

    always @(posedge clk) 
    begin
        reset <= !resetn;
    end

    always @(posedge clk) 
    begin
        low_remain_count <= 9'h1FF;
        high_remain_count <= 9'h1FF;
    end

    always @(posedge clk) 
    begin
        if (low_wr)
		begin
		    if (low_data[79])
		    begin
				low_hdr_sample <= low_data[63:0];
				low_hdr_blocks <= low_data[71:64];
				low_hdr_flags <= low_data[79:72];
				low_hdr_size <= low_data[95:80];
				low_hdr_angle <= low_data[111:96];
				low_hdr_doa_error <= low_data[127:112];
				low_hdr_freq <= low_data[159:128];
				low_hdr_max_env <= low_data[175:160];
				low_hdr_max_pos <= low_data[191:176];
				low_hdr_env_mean <= low_data[207:192];				
				low_hdr_env_std <= low_data[223:208];				
				low_hdr_phase_std <= low_data[239:224];				
				low_hdr_freq_std <= low_data[255:240];
			end
    		else
	   		begin
			    low_env_0 <= low_data[15:0];
    		    low_phase_0 <= low_data[31:16];
	   			low_env_1 <= low_data[47:32];
		  		low_phase_1 <= low_data[63:48];
				low_env_2 <= low_data[79:64];
				low_phase_2 <= low_data[95:80];
				low_env_3 <= low_data[111:96];
				low_phase_3 <= low_data[127:112];
			    low_env_4 <= low_data[143:128];
    		    low_phase_4 <= low_data[159:144];
	   			low_env_5 <= low_data[175:160];
		  		low_phase_5 <= low_data[191:176];
				low_env_6 <= low_data[207:192];
				low_phase_6 <= low_data[223:208];
				low_env_7 <= low_data[239:224];
				low_phase_7 <= low_data[255:240];
			end
		end
	end

    always @(posedge clk) 
    begin
        if (high_wr)
		begin
		    if (high_data[79])
		    begin
				high_hdr_sample <= high_data[63:0];
				high_hdr_blocks <= high_data[71:64];
				high_hdr_flags <= high_data[79:72];
				high_hdr_size <= high_data[95:80];
				high_hdr_angle <= high_data[111:96];
				high_hdr_doa_error <= high_data[127:112];
				high_hdr_freq <= high_data[159:128];
				high_hdr_max_env <= high_data[175:160];
				high_hdr_max_pos <= high_data[191:176];
				high_hdr_env_mean <= high_data[207:192];				
				high_hdr_env_std <= high_data[223:208];				
				high_hdr_phase_std <= high_data[239:224];				
				high_hdr_freq_std <= high_data[255:240];
			end
    		else
	   		begin
			    high_env_0 <= high_data[15:0];
    		    high_phase_0 <= high_data[31:16];
	   			high_env_1 <= high_data[47:32];
		  		high_phase_1 <= high_data[63:48];
				high_env_2 <= high_data[79:64];
				high_phase_2 <= high_data[95:80];
				high_env_3 <= high_data[111:96];
				high_phase_3 <= high_data[127:112];
			    high_env_4 <= high_data[143:128];
    		    high_phase_4 <= high_data[159:144];
	   			high_env_5 <= high_data[175:160];
		  		high_phase_5 <= high_data[191:176];
				high_env_6 <= high_data[207:192];
				high_phase_6 <= high_data[223:208];
				high_env_7 <= high_data[239:224];
				high_phase_7 <= high_data[255:240];
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
