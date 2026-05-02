`timescale 1ns / 1ps

module axi_dma(
    input wire clk,
    input wire resetn,

    output reg [26:0] mig_rd_ptr,
    input wire [26:0] mig_wr_ptr,

    output reg [31:0] linux_rd_ptr,
    input wire [31:0] linux_wr_ptr,
        
    output reg [71:0] M_AXI_TDATA_in_cmd,
    output reg M_AXI_TVALID_in_cmd,
    input wire M_AXI_TREADY_in_cmd,

    input  wire [7:0] M_AXI_STS_in_tdata,
    input  wire M_AXI_STS_in_tvalid,
    output reg  M_AXI_STS_in_tready,
    
    output reg [71:0] M_AXI_TDATA_out_cmd,
    output reg M_AXI_TVALID_out_cmd,
    input wire M_AXI_TREADY_out_cmd,

    input  wire [7:0] M_AXI_STS_out_tdata,
    input  wire M_AXI_STS_out_tvalid,
    output reg  M_AXI_STS_out_tready,
    
    input wire [255:0] M_AXI_TDATA_in,
    input wire M_AXI_TVALID_in,
    output reg M_AXI_TREADY_in,

    output wire [255:0] M_AXI_TDATA_out,
    output wire M_AXI_TVALID_out,
    output reg M_AXI_TLAST_out,
    input wire M_AXI_TREADY_out      
);

    localparam CMD_ST_IDLE          = 3'd0;
    localparam CMD_ST_WAIT_HDR      = 3'd1;
    localparam CMD_ST_WAIT_DONE     = 3'd2;
    localparam CMD_ST_WAIT_SPACE    = 3'd3;

    reg reset;
    
    reg [2:0] cmd_state;
    reg [26:0] adr;
    reg [26:0] mig_blocks;
    reg [7:0] mig_counter;
    
    reg start_cmd;
    reg cmd_done;
    reg cmd_error;
    reg [7:0] blocks;
    reg [3:0] tag;
    
    reg has_mig_size;
    reg [7:0] mig_size;
    reg [7:0] mig_diff;

    reg in_wr;
    reg [255:0] in_data;
    
    wire full;
    wire empty;
    
    reg r5_cmd_rd;
    wire [13:0] r5_cmd_data;
    wire r5_cmd_full;
    wire r5_cmd_empty;

    reg dma_active;
    reg [13:0] last_beat;
    reg [13:0] curr_beat;

    wire fifo_full;
    wire fifo_empty;
    wire fifo_rd_en = M_AXI_TVALID_out && M_AXI_TREADY_out;

    assign M_AXI_TVALID_out = !fifo_empty && dma_active;
    
    reg fifo_chg;
    reg [13:0] fifo_count;
    
    wire [31:0] fifo_size_in_data = {18'h0000, fifo_count};
    
    reg fifo_size_rd;
    wire [31:0] fifo_size_out_data;
    wire fifo_size_full;
    wire fifo_size_empty;

    	
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
	    .wr_en(in_wr),
	    .din(in_data),
	    .rd_en(fifo_rd_en),
	    .dout(M_AXI_TDATA_out),
	    .full(fifo_full),
	    .empty(fifo_empty)
	);

	ila_7 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(cmd_state),           // input wire [2:0]  probe3
		.probe1(adr),                 // input wire [26:0]  probe3
		.probe2(mig_blocks),          // input wire [26:0]  probe3
		.probe3(start_cmd),           // input wire [0:0]  probe3
		.probe4(cmd_done),            // input wire [0:0]  probe3
		.probe5(cmd_error),           // input wire [0:0]  probe3
		.probe6(blocks),              // input wire [7:0]  probe3
		.probe7(tag),                 // input wire [3:0]  probe3
		.probe8(has_mig_size),        // input wire [0:0]  probe3
		.probe9(mig_size),            // input wire [7:0]  probe3
		.probe10(mig_diff)             // input wire [7:0]  probe3
	);
    
generate
  begin : axi_dma

    always @(posedge clk) 
    begin
        reset <= !resetn;
    end

    always @(posedge clk) 
    begin
        mig_blocks <= mig_wr_ptr - adr;
    end

    always @(posedge clk) 
    begin
        mig_rd_ptr <= 0;
    end

    always @(posedge clk) 
    begin
        if (in_wr)
            fifo_chg <= 1;
        else
            fifo_chg <= 0;        
    end

    always @(posedge clk) 
    begin
        if (reset) 
        begin
            cmd_state <= CMD_ST_IDLE;
            adr <= 0;
            start_cmd <= 0;
            mig_counter <= 0;
        end 
        else 
        begin
            case (cmd_state)
                CMD_ST_IDLE: 
                    if (mig_blocks) 
                    begin
                        blocks <= 1;
                        cmd_state <= CMD_ST_WAIT_HDR;
                        start_cmd <= 1;
                    end
                    else
                        start_cmd <= 0;

                CMD_ST_WAIT_HDR: 
                    begin
                        start_cmd <= 0;
                        
                        if (has_mig_size)
                            cmd_state <= CMD_ST_WAIT_DONE;
                    end

                CMD_ST_WAIT_DONE:
                    if (cmd_done)
                    begin
                        mig_diff <= mig_blocks - mig_size - 1;
                        cmd_state <= CMD_ST_WAIT_SPACE;
                    end
                        
                CMD_ST_WAIT_SPACE:
                    begin                    
                    end
            endcase
        end
    end

    always @(posedge clk) 
    begin
        if (M_AXI_TVALID_in_cmd)
        begin
            if (M_AXI_TREADY_in_cmd)
                M_AXI_TVALID_in_cmd <= 0;
        end
        else
        begin
            if (start_cmd)
            begin
                M_AXI_TDATA_in_cmd[4:0] <= 0; 
                M_AXI_TDATA_in_cmd[12:5] <= blocks; 
                M_AXI_TDATA_in_cmd[22:13] <= 0; 
                M_AXI_TDATA_in_cmd[23] <= 1; 
                M_AXI_TDATA_in_cmd[31:24] <= 0; 
                M_AXI_TDATA_in_cmd[36:32] <= 0; 
                M_AXI_TDATA_in_cmd[63:37] <= adr; 
                M_AXI_TDATA_in_cmd[67:64] <= tag; 
                M_AXI_TVALID_in_cmd <= 1;
            end
            else
                M_AXI_TVALID_in_cmd <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (reset) 
        begin
            M_AXI_STS_in_tready <= 0;
            cmd_done <= 0;
            cmd_error <= 0;
        end 
        else 
        begin
            M_AXI_STS_in_tready <= 1;

            if (M_AXI_STS_in_tvalid && M_AXI_STS_in_tready) 
            begin
                if (M_AXI_STS_in_tdata[7])
                begin
                    if (tag == M_AXI_STS_in_tdata[3:0])
                        cmd_done <= 1;
                    else
                        cmd_error <= 1;
                end
                else
                    cmd_error <= 1;
            end
            else
                cmd_done <= 0;
        end
    end    

   always @(posedge clk) 
    begin
        if (reset) 
            tag <= 0;
        else
            if (cmd_done)
                tag <= tag + 1;
    end
 
    always @(posedge clk) 
    begin
        if (reset)
            has_mig_size <= 0;
        else
        begin
            if (cmd_done)
                has_mig_size <= 0;
            else
            begin
                if (M_AXI_TVALID_in && M_AXI_TREADY_in && M_AXI_TDATA_in[79]) 
                begin
                    mig_size <= M_AXI_TDATA_in[71:64];
                    has_mig_size <= 1;
                end
            end
        end
    end
 
    always @(posedge clk) 
    begin
        M_AXI_TREADY_in <= !full;
    end

    always @(posedge clk) 
    begin
        if (M_AXI_TVALID_in)
        begin
            in_wr <= 1;
            in_data <= M_AXI_TDATA_in;
        end
        else
            in_wr <= 0;
    end

    always @(posedge clk) 
    begin
        if (resetn)
        begin
            if (dma_active)
            begin
                r5_cmd_rd <= 0;

                if (M_AXI_TVALID_out && M_AXI_TREADY_out)
                begin
                    if (M_AXI_TLAST_out)
                    begin
                        dma_active <= 0;
                        M_AXI_TLAST_out <= 0;
                    end
                    else
                    begin
                        curr_beat <= curr_beat + 1;
                        if (curr_beat == last_beat)
                            M_AXI_TLAST_out <= 1;
                        else
                            M_AXI_TLAST_out <= 0;
                    end
                end
            end
            else
            begin
                if (r5_cmd_empty)
                    r5_cmd_rd <= 0;
                else
                begin
                    dma_active <= 1;
                    r5_cmd_rd <= 1;
                    curr_beat <= 1;
                    last_beat <= r5_cmd_data - 1;

                    if (r5_cmd_data == 1)
                        M_AXI_TLAST_out <= 1;
                    else
                        M_AXI_TLAST_out <= 0;
                end
            end
        end
        else
        begin
            dma_active <= 0;
            r5_cmd_rd <= 0;
            curr_beat <= 1;
            M_AXI_TLAST_out <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (resetn)
        begin
            case ({fifo_rd_en, in_wr})
                2'b01: fifo_count <= fifo_count + 1;
                2'b10: fifo_count <= fifo_count - 1;
            endcase
        end
        else
            fifo_count <= 0;
    end
    
  end

     
endgenerate

endmodule
