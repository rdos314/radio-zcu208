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
	output reg low_empty,
	output reg low_full,
	input wire low_pending,
	input wire [21:0] low_timestamp,
	input wire [255:0] low_data,
	
	output reg high_rd,
	input wire high_wr,
	output reg high_empty,
	output reg high_full,
	input wire high_pending,
	input wire [21:0] high_timestamp,
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

    reg u_low_wr;
    reg [255:0] u_low_in_data;

    reg u_high_wr;
    reg [255:0] u_high_in_data;

    reg [1:0] u_rd;
    wire [255:0] u_low_out_data;
    wire [255:0] u_high_out_data;
    
    wire u_low_full;
    wire u_low_empty;
    wire u_high_full;
    wire u_high_empty;

	localparam STAT_NONE = 2'b00;
	localparam STAT_A = 2'b01;
	localparam STAT_B = 2'b10;
	localparam STAT_COMP = 2'b11;

    reg [255:0] state_data [0:1];
	
    reg [1:0] has_preview;
    reg [21:0] preview_data [0:1];

    reg [7:0] state_blocks [0:1];
    reg [1:0] state;
    reg [21:0] state_diff;
    reg state_ok;
    reg state_ind;

    reg [13:0] pend_blocks [0:1];
    reg [8:0] diff_blocks;

    reg [1:0] mix_delay;
    reg mix_active_1;
    reg mix_active;
    reg mix_ind;
    reg [7:0] mix_blocks;
    reg [255:0] mix_data;
    
    reg low_wr_1;
    reg low_wr_2;

    reg high_wr_1;
    reg high_wr_2;
    
    reg mig_rd;
    wire [255:0] mig_out_data;
    wire mig_full;
    wire mig_empty;
    
    reg mig_wr;
    reg [255:0] mig_data;
    
	reg [63:0] hdr_sample;
	reg [7:0] hdr_blocks;
	reg [7:0] hdr_flags;
	reg [15:0] hdr_size;
	reg [31:0] hdr_freq;
	reg [15:0] hdr_angle;
	reg [15:0] hdr_doa_error;
	reg [15:0] hdr_max_env;
	reg [15:0] hdr_max_pos;
	reg [15:0] hdr_env_mean;
	reg [15:0] hdr_env_std;
	reg [15:0] hdr_phase_std;
	reg [15:0] hdr_freq_std;
	
	reg [15:0] env_0;
	reg [15:0] env_1;
	reg [15:0] env_2;
	reg [15:0] env_3;
	reg [15:0] env_4;
	reg [15:0] env_5;
	reg [15:0] env_6;
	reg [15:0] env_7;

	reg [15:0] phase_0;
	reg [15:0] phase_1;
	reg [15:0] phase_2;
	reg [15:0] phase_3;
	reg [15:0] phase_4;
	reg [15:0] phase_5;
	reg [15:0] phase_6;
	reg [15:0] phase_7;

	
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
	    .wr_en(u_low_wr),
	    .din(u_low_in_data),
	    .rd_en(u_rd[0]),
	    .dout(u_low_out_data),
	    .full(u_low_full),
	    .empty(u_low_empty)
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
	    .wr_en(u_high_wr),
	    .din(u_high_in_data),
	    .rd_en(u_rd[1]),
	    .dout(u_high_out_data),
	    .full(u_high_full),
	    .empty(u_high_empty)
	);
	
	xpm_fifo_sync #(
	    .FIFO_MEMORY_TYPE("ultra"),
	    .FIFO_WRITE_DEPTH(16384),
	    .WRITE_DATA_WIDTH(256),
	    .READ_DATA_WIDTH(256),
	    .READ_MODE("fwft"),
	    .FIFO_READ_LATENCY(1)
	)
	fifo_i(
	    .rst(reset),
	    .wr_clk(clk),
	    .wr_en(mix_active),
	    .din(mix_data),
	    .rd_en(mig_rd),
	    .dout(mig_out_data),
	    .full(mig_full),
	    .empty(mig_empty)
	);

	ila_6 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(mig_empty),           // input wire [0:0]  probe3
		.probe1(mig_wr),              // input wire [0:0]  probe3
		.probe2(hdr_sample),          // input wire [63:0]  probe3
		.probe3(hdr_blocks),          // input wire [7:0]  probe3
		.probe4(hdr_flags),           // input wire [7:0]  probe3
		.probe5(hdr_size),            // input wire [15:0]  probe3
		.probe6(hdr_freq),            // input wire [31:0]  probe3
		.probe7(hdr_angle),           // input wire [15:0]  probe3
		.probe8(hdr_doa_error),       // input wire [15:0]  probe3
		.probe9(hdr_max_env),         // input wire [15:0]  probe3
		.probe10(hdr_max_pos),        // input wire [15:0]  probe3
		.probe11(hdr_env_mean),       // input wire [15:0]  probe3
		.probe12(hdr_env_std),        // input wire [15:0]  probe3
		.probe13(hdr_phase_std),      // input wire [15:0]  probe3
		.probe14(hdr_freq_std),       // input wire [15:0]  probe3
		.probe15(env_0),              // input wire [15:0]  probe3
		.probe16(env_1),              // input wire [15:0]  probe3
		.probe17(env_2),              // input wire [15:0]  probe3
		.probe18(env_3),              // input wire [15:0]  probe3
		.probe19(env_4),              // input wire [15:0]  probe3
		.probe20(env_5),              // input wire [15:0]  probe3
		.probe21(env_6),              // input wire [15:0]  probe3
		.probe22(env_7),              // input wire [15:0]  probe3
		.probe23(phase_0),            // input wire [15:0]  probe3
		.probe24(phase_1),            // input wire [15:0]  probe3
		.probe25(phase_2),            // input wire [15:0]  probe3
		.probe26(phase_3),            // input wire [15:0]  probe3
		.probe27(phase_4),            // input wire [15:0]  probe3
		.probe28(phase_5),            // input wire [15:0]  probe3
		.probe29(phase_6),            // input wire [15:0]  probe3
		.probe30(phase_7)             // input wire [15:0]  probe3
    );
    
generate
  begin : axi_int

    always @(posedge clk) 
    begin
        reset <= !resetn;
    end

    always @(posedge clk) 
    begin
        u_low_wr <= low_wr;
        u_low_in_data <= low_data;
    end        

    always @(posedge clk) 
    begin
        u_high_wr <= high_wr;
        u_high_in_data <= high_data;
    end        

    always @(posedge clk) 
    begin
        low_rd <= u_rd[0];
        high_rd <= u_rd[1];
    end        

    always @(posedge clk) 
    begin
        low_empty <= u_low_empty;
        low_full <= u_low_full;
    end

    always @(posedge clk) 
    begin
        high_empty <= u_high_empty;
        high_full <= u_high_full;
    end

    always @(posedge clk) 
    begin
        state_data[0] <= u_low_out_data;
        state_data[1] <= u_high_out_data;
    end

    always @(posedge clk) 
    begin
		if (!low_empty & state_data[0][79])
		    state_blocks[0] <= state_data[0][71:64];
    end

    always @(posedge clk) 
    begin
		if (!high_empty & state_data[1][79])
		    state_blocks[1] <= state_data[1][71:64];
    end

    always @(posedge clk) 
    begin
        if (low_empty)
        begin
            has_preview[0] <= low_pending;
            if (low_pending)
                preview_data[0] <= low_timestamp;
            else
                preview_data[0] <= 0;
        end
        else
        begin
		    if (state_data[0][79])
            begin
                has_preview[0] <= 1;
                preview_data[0] <= state_data[0][21:0];
            end
        end        
    end

    always @(posedge clk) 
    begin
        if (high_empty)
        begin
            has_preview[1] <= high_pending;
            if (high_pending)
                preview_data[1] <= high_timestamp;
            else
                preview_data[1] <= 0;
        end
        else
        begin
		    if (state_data[1][79])
            begin
                has_preview[1] <= 1;
                preview_data[1] <= state_data[1][21:0];
            end
        end        
    end
            
    always @(posedge clk) 
    begin
        low_wr_1 <= u_low_wr;
        low_wr_2 <= low_wr_1;
    end

    always @(posedge clk) 
    begin
        case ({low_empty, low_rd, low_wr_2})
            3'b000 : ;
            3'b001 : pend_blocks[0] <= pend_blocks[0] + 1;
            3'b010 : pend_blocks[0] <= pend_blocks[0] - 1;
            3'b011 : ;
            3'b100 : pend_blocks[0] <= 0;
            3'b101 : pend_blocks[0] <= 0;
            3'b110 : pend_blocks[0] <= 0;            
            3'b111 : pend_blocks[0] <= 0;
        endcase
    end
    
    always @(posedge clk) 
    begin
        high_wr_1 <= u_high_wr;
        high_wr_2 <= high_wr_1;
    end

    always @(posedge clk) 
    begin
        case ({high_empty, high_rd, high_wr_2})
            3'b000 : ;
            3'b001 : pend_blocks[1] <= pend_blocks[1] + 1;
            3'b010 : pend_blocks[1] <= pend_blocks[1] - 1;
            3'b011 : ;
            3'b100 : pend_blocks[1] <= 0;
            3'b101 : pend_blocks[1] <= 0;
            3'b110 : pend_blocks[1] <= 0;            
            3'b111 : pend_blocks[1] <= 0;
        endcase
    end

    always @(posedge clk) 
	begin
		case (has_preview)
			2'b00: state <= STAT_NONE;
			2'b01: state <= STAT_A;
			2'b10: state <= STAT_B;
			2'b11:
			begin
				state <= STAT_COMP;
				state_diff <= preview_data[1] - preview_data[0];
			end
		endcase
	end

    always @(posedge clk) 
	begin
		state_ok <= 1;
		
		case (state)
			STAT_NONE: state_ok <= 0;
			STAT_A: state_ind <= 0;
			STAT_B: state_ind <= 1;
			STAT_COMP: state_ind <= state_diff[21];
		endcase
	end

    always @(posedge clk) 
	begin
		if (state_ok)
		begin
		    if (pend_blocks[state_ind][13:8] == 0)
		    begin
    		    if (pend_blocks[state_ind][7:0] == 0)
		            diff_blocks[8] <= 1;
		        else
    		        diff_blocks <= pend_blocks[state_ind][8:0] - {1'b0, state_blocks[state_ind]};
		    end
  		    else
  		        diff_blocks[8] <= 0;
		end
		else
  		    diff_blocks[8] <= 1;
    end

    always @(posedge clk) 
	begin
	    if (reset)
	    begin
	        u_rd <= 0;
	        mix_delay <= 0;
	    end
	    else
	    begin
	        if (u_rd)
	        begin
                mix_data <= state_data[mix_ind];

	            if (mix_blocks)
 	                mix_blocks <= mix_blocks - 1;
	            else
	            begin
 	                u_rd <= 0;
	                mix_delay <= 3;
	            end
	        end
	        else
	        begin
	            case (mix_delay)
  	                3: 
	                begin
	                    mix_data <= state_data[mix_ind];
                        mix_delay <= mix_delay - 1;
                    end

	                0:
        	        begin
                        if (diff_blocks[8] == 0)
                        begin
                            mix_blocks <= state_blocks[state_ind];
                            mix_ind <= state_ind;
                            u_rd[state_ind] <= 1;
                	    end
                    end        
                    
                    default: mix_delay <= mix_delay - 1;

	            endcase
            end      
        end
    end      

    always @(posedge clk) 
	begin
	    if (u_rd)
	        mix_active_1 <= 1;
	    else
	        mix_active_1 <= 0;
	end

    always @(posedge clk) 
	begin
	    mix_active <= mix_active_1;
	end

    always @(posedge clk) 
    begin
        mig_rd <= !mig_empty;
    end
    
    always @(posedge clk) 
    begin
        if (mig_rd)
        begin
            mig_wr <= 1;
            mig_data <= mig_out_data;
        end
        else
            mig_wr <= 0;
    end
                   	                       
    always @(posedge clk) 
    begin
        if (mig_wr)
		begin
		    if (mig_data[79])
		    begin
				hdr_sample <= mig_data[63:0];
				hdr_blocks <= mig_data[71:64];
				hdr_flags <= mig_data[79:72];
				hdr_size <= mig_data[95:80];
				hdr_angle <= mig_data[111:96];
				hdr_doa_error <= mig_data[127:112];
				hdr_freq <= mig_data[159:128];
				hdr_max_env <= mig_data[175:160];
				hdr_max_pos <= mig_data[191:176];
				hdr_env_mean <= mig_data[207:192];				
				hdr_env_std <= mig_data[223:208];				
				hdr_phase_std <= mig_data[239:224];				
				hdr_freq_std <= mig_data[255:240];
			end
    		else
	   		begin
			    env_0 <= mig_data[15:0];
    		    phase_0 <= mig_data[31:16];
	   			env_1 <= mig_data[47:32];
		  		phase_1 <= mig_data[63:48];
				env_2 <= mig_data[79:64];
				phase_2 <= mig_data[95:80];
				env_3 <= mig_data[111:96];
				phase_3 <= mig_data[127:112];
			    env_4 <= mig_data[143:128];
    		    phase_4 <= mig_data[159:144];
	   			env_5 <= mig_data[175:160];
		  		phase_5 <= mig_data[191:176];
				env_6 <= mig_data[207:192];
				phase_6 <= mig_data[223:208];
				env_7 <= mig_data[239:224];
				phase_7 <= mig_data[255:240];
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
