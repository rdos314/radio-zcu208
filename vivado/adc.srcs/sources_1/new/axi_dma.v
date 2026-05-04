`timescale 1ns / 1ps

module axi_dma(
    input wire clk,
    input wire resetn,
    output reg irq,

    output reg [26:0] mig_rd_ptr,
    input wire [26:0] mig_wr_ptr,

    output reg [31:0] linux_wr_ptr,
    input wire [31:0] linux_rd_ptr,
            
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

    localparam MIG_ST_IDLE          = 3'd0;
    localparam MIG_ST_WAIT_HDR      = 3'd1;
    localparam MIG_ST_WAIT_SPACE    = 3'd2;
    localparam MIG_ST_WAIT_DATA     = 3'd3;
    localparam MIG_ST_WAIT_NEXT     = 3'd4;

    reg reset;

    reg [13:0] fifo_count;
    reg [13:0] fifo_space;
    reg fifo_has_space;
    
    reg [2:0] mig_cmd_state;
    reg [26:0] mig_adr;
    reg [26:0] mig_avail;
    reg mig_preview;
    reg mig_start_cmd;
    reg mig_cmd_done;
    reg mig_cmd_error;
    reg [7:0] mig_blocks;
    reg [3:0] mig_tag;
    
    reg [7:0] mig_size;
    reg [7:0] mig_diff;

    wire fifo_full;
    wire fifo_empty;
    wire fifo_rd_en = M_AXI_TVALID_out && M_AXI_TREADY_out;
    reg fifo_wr_en;

    reg [255:0] fifo_in_data;

	reg [63:0] mig_hdr_sample;
	reg [7:0] mig_hdr_blocks;
	reg [7:0] mig_hdr_flags;
	reg [15:0] mig_hdr_size;
	reg [31:0] mig_hdr_freq;
	reg [15:0] mig_hdr_angle;
	reg [15:0] mig_hdr_doa_error;
	reg [15:0] mig_hdr_max_env;
	reg [15:0] mig_hdr_max_pos;
	reg [15:0] mig_hdr_env_mean;
	reg [15:0] mig_hdr_env_std;
	reg [15:0] mig_hdr_phase_std;
	reg [15:0] mig_hdr_freq_std;
	
	reg [15:0] mig_env_0;
	reg [15:0] mig_env_1;
	reg [15:0] mig_env_2;
	reg [15:0] mig_env_3;
	reg [15:0] mig_env_4;
	reg [15:0] mig_env_5;
	reg [15:0] mig_env_6;
	reg [15:0] mig_env_7;

    reg [20:0] app_adr;
    reg app_start_cmd;
    reg app_cmd_done;
    reg app_cmd_error;
    reg [7:0] app_blocks;
    reg [3:0] app_tag;

    reg [20:0] app_wr_ptr;
    reg [20:0] app_rd_ptr;
    reg [20:0] app_diff_ptr;
    reg [20:0] app_space;

    reg dma_active;

    assign M_AXI_TVALID_out = !fifo_empty && dma_active;
        	
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
	    .wr_en(fifo_wr_en),
	    .din(fifo_in_data),
	    .rd_en(fifo_rd_en),
	    .dout(M_AXI_TDATA_out),
	    .full(fifo_full),
	    .empty(fifo_empty)
	);

	ila_7 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(fifo_count),          // input wire [13:0]  probe3
		.probe1(fifo_space),          // input wire [13:0]  probe3
		.probe2(mig_cmd_state),       // input wire [2:0]  probe3
		.probe3(mig_adr),             // input wire [26:0]  probe3
		.probe4(mig_start_cmd),       // input wire [0:0]  probe3
		.probe5(mig_cmd_done),        // input wire [0:0]  probe3
		.probe6(mig_cmd_error),       // input wire [0:0]  probe3
		.probe7(mig_blocks),          // input wire [7:0]  probe3
		.probe8(mig_tag),             // input wire [3:0]  probe3
		.probe9(mig_size),            // input wire [7:0]  probe3
		.probe10(mig_diff),           // input wire [7:0]  probe3
		.probe11(mig_avail),          // input wire [26:0]  probe3
		.probe12(mig_preview),        // input wire [0:0]  probe3
		.probe13(fifo_has_space),     // input wire [0:0]  probe3
		.probe14(mig_hdr_sample),     // input wire [63:0]  probe3
		.probe15(mig_hdr_blocks),     // input wire [7:0]  probe3
		.probe16(mig_hdr_flags),      // input wire [7:0]  probe3
		.probe17(mig_hdr_size),       // input wire [15:0]  probe3
		.probe18(mig_hdr_freq),       // input wire [31:0]  probe3
		.probe19(mig_hdr_angle),      // input wire [15:0]  probe3
		.probe20(mig_hdr_doa_error),  // input wire [15:0]  probe3
		.probe21(mig_hdr_max_env),    // input wire [15:0]  probe3
		.probe22(mig_hdr_max_pos),    // input wire [15:0]  probe3
		.probe23(mig_hdr_env_mean),   // input wire [15:0]  probe3
		.probe24(mig_hdr_env_std),    // input wire [15:0]  probe3
		.probe25(mig_hdr_phase_std),  // input wire [15:0]  probe3
		.probe26(mig_hdr_freq_std),   // input wire [15:0]  probe3
		.probe27(mig_env_0),          // input wire [15:0]  probe3
		.probe28(mig_env_1),          // input wire [15:0]  probe3
		.probe29(mig_env_2),          // input wire [15:0]  probe3
		.probe30(mig_env_3),          // input wire [15:0]  probe3
		.probe31(mig_env_4),          // input wire [15:0]  probe3
		.probe32(mig_env_5),          // input wire [15:0]  probe3
		.probe33(mig_env_6),          // input wire [15:0]  probe3
		.probe34(mig_env_7)           // input wire [15:0]  probe3
	);
    
generate
  begin : axi_dma

    always @(posedge clk) 
    begin
        reset <= !resetn;
    end

    always @(posedge clk) 
    begin
        if (reset)
            fifo_count <= 0;
        else
        begin
            case ({fifo_rd_en, fifo_wr_en})
                2'b01: fifo_count <= fifo_count + 1;
                2'b10: fifo_count <= fifo_count - 1;
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
            if (mig_start_cmd)
            begin
                M_AXI_TDATA_in_cmd[4:0] <= 0; 
                M_AXI_TDATA_in_cmd[12:5] <= mig_blocks; 
                M_AXI_TDATA_in_cmd[22:13] <= 0; 
                M_AXI_TDATA_in_cmd[23] <= 1; 
                M_AXI_TDATA_in_cmd[31:24] <= 0; 
                M_AXI_TDATA_in_cmd[36:32] <= 0; 
                M_AXI_TDATA_in_cmd[63:37] <= mig_adr; 
                M_AXI_TDATA_in_cmd[67:64] <= mig_tag; 
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
            mig_cmd_done <= 0;
            mig_cmd_error <= 0;
        end 
        else 
        begin
            M_AXI_STS_in_tready <= 1;

            if (M_AXI_STS_in_tvalid && M_AXI_STS_in_tready) 
            begin
                if (M_AXI_STS_in_tdata[7])
                begin
                    if (mig_tag == M_AXI_STS_in_tdata[3:0])
                        mig_cmd_done <= 1;
                    else
                        mig_cmd_error <= 1;
                end
                else
                    mig_cmd_error <= 1;
            end
            else
                mig_cmd_done <= 0;
        end
    end

   always @(posedge clk) 
    begin
        if (reset) 
            mig_tag <= 0;
        else
            if (mig_cmd_done)
                mig_tag <= mig_tag + 1;
    end

    always @(posedge clk) 
    begin
        mig_avail <= mig_wr_ptr - mig_rd_ptr;
    end

    always @(posedge clk) 
    begin
        fifo_space <= ~fifo_count;
    end

    always @(posedge clk) 
    begin
        if (fifo_space[13:8])
            fifo_has_space <= 1;
        else
            {fifo_has_space, mig_diff} <= {1'b0, mig_size} - fifo_space[8:0];
    end

    always @(posedge clk) 
    begin
        if (mig_size == 8'hFF)
            mig_preview <= 0;
        else
            if ({19'h00000, mig_size} == mig_avail)
                mig_preview <= 0;
            else
                mig_preview <= 1;
    end

    always @(posedge clk) 
    begin
        if (reset) 
        begin
            mig_cmd_state <= MIG_ST_IDLE;
            mig_adr <= 0;
            mig_blocks <= 0;
            mig_start_cmd <= 0;
            mig_rd_ptr <= 0;
        end 
        else 
        begin
            case (mig_cmd_state)
                MIG_ST_IDLE: 
                    begin
                        mig_rd_ptr <= mig_adr;
                    
                        if (mig_avail != 0 && fifo_space != 0) 
                        begin
                            mig_blocks <= 1;
                            mig_cmd_state <= MIG_ST_WAIT_HDR;
                            mig_start_cmd <= 1;
                        end
                        else
                            mig_start_cmd <= 0;
                    end

                MIG_ST_WAIT_HDR: 
                    begin
                        mig_start_cmd <= 0;

                        if (mig_cmd_done)
                        begin
                            mig_cmd_state <= MIG_ST_WAIT_SPACE;
                            mig_adr <= mig_adr + 1;
                        end
                    end

                MIG_ST_WAIT_SPACE:
                    begin
                        mig_rd_ptr <= mig_adr - 1;

                        if (fifo_has_space)
                        begin
                            if (mig_preview)
                            begin
                                mig_blocks <= mig_size + 1;
                                mig_cmd_state <= MIG_ST_WAIT_NEXT;
                            end
                            else
                            begin
                                mig_blocks <= mig_size;
                                mig_cmd_state <= MIG_ST_WAIT_DATA;
                            end
                            mig_start_cmd <= 1;
                        end
                        else
                            mig_start_cmd <= 0;
                    end

                MIG_ST_WAIT_DATA: 
                    begin
                        mig_start_cmd <= 0;

                        if (mig_cmd_done)
                        begin
                            mig_cmd_state <= MIG_ST_IDLE;
                            mig_adr <= mig_adr + mig_blocks;
                        end
                    end

                MIG_ST_WAIT_NEXT: 
                    begin
                        mig_start_cmd <= 0;

                        if (mig_cmd_done)
                        begin
                            mig_cmd_state <= MIG_ST_WAIT_SPACE:
                            mig_adr <= mig_adr + mig_blocks;
                        end
                    end
            endcase
        end
    end
 
    always @(posedge clk) 
    begin
        if (reset)
            mig_size <= 0;
        else
        begin
            if (M_AXI_TVALID_in && M_AXI_TREADY_in && M_AXI_TDATA_in[79]) 
                mig_size <= M_AXI_TDATA_in[71:64];
        end
    end
 
    always @(posedge clk) 
    begin
        M_AXI_TREADY_in <= !full;
    end

    always @(posedge clk) 
    begin
        if (M_AXI_TVALID_in && M_AXI_TREADY_in)
        begin
            fifo_wr_en <= 1;
            fifo_in_data <= M_AXI_TDATA_in;
        end
        else
            fifo_wr_en <= 0;
    end

    always @(posedge axi_clk) 
	begin
        if (M_AXI_TVALID_in && M_AXI_TREADY_in)
        begin
            if (M_AXI_TDATA_in[79])
            begin
                mig_hdr_sample <= M_AXI_TDATA_in[63:0];
                mig_hdr_blocks <= M_AXI_TDATA_in[71:64]; 
                mig_hdr_flags <= M_AXI_TDATA_in[79:72];
                mig_hdr_size <= M_AXI_TDATA_in[95:80];
                mig_hdr_angle <= M_AXI_TDATA_in[111:96];
                mig_hdr_doa_error <= M_AXI_TDATA_in[127:112];
                mig_hdr_freq <= M_AXI_TDATA_in[159:128];
                mig_hdr_max_env <= M_AXI_TDATA_in[175:160];
                mig_hdr_max_pos <= M_AXI_TDATA_in[191:176];
                mig_hdr_env_mean <= M_AXI_TDATA_in[207:192];				
                mig_hdr_env_std <= M_AXI_TDATA_in[223:208];				
                mig_hdr_phase_std <= M_AXI_TDATA_in[239:224];				
                mig_hdr_freq_std <= M_AXI_TDATA_in[255:240];
            end
            else
            begin
                mig_env_0 <= M_AXI_TDATA_in[15:0];
                mig_env_1 <= M_AXI_TDATA_in[47:32];
                mig_env_2 <= M_AXI_TDATA_in[79:64];
                mig_env_3 <= M_AXI_TDATA_in[111:96];
                mig_env_4 <= M_AXI_TDATA_in[143:128];
                mig_env_5 <= M_AXI_TDATA_in[175:160];
                mig_env_6 <= M_AXI_TDATA_in[207:192];
                mig_env_7 <= M_AXI_TDATA_in[239:224];
            end
		end
    end

    always @(posedge clk) 
    begin
        app_wr_ptr <= 0;
    end

    always @(posedge clk) 
    begin
        linux_wr_ptr <= {11'b000000000000, app_wr_ptr};
        app_rd_ptr <= linux_rd_ptr[20:0];
    end

    always @(posedge clk) 
    begin
        app_diff_ptr <= app_wr_ptr - app_rd_ptr;
    end

    always @(posedge clk) 
    begin
        app_space <= ~app_diff_ptr;
    end

    always @(posedge clk) 
    begin
        irq <= 0;
    end

    always @(posedge clk) 
    begin
        if (M_AXI_TVALID_out_cmd)
        begin
            if (M_AXI_TREADY_out_cmd)
                M_AXI_TVALID_out_cmd <= 0;
        end
        else
        begin
            if (app_start_cmd)
            begin
                M_AXI_TDATA_out_cmd[4:0] <= 0; 
                M_AXI_TDATA_out_cmd[12:5] <= app_blocks; 
                M_AXI_TDATA_out_cmd[22:13] <= 0; 
                M_AXI_TDATA_out_cmd[23] <= 1; 
                M_AXI_TDATA_out_cmd[31:24] <= 0; 
                M_AXI_TDATA_out_cmd[36:32] <= 0; 
                M_AXI_TDATA_out_cmd[57:37] <= app_adr; 
                M_AXI_TDATA_out_cmd[63:58] <= 0; 
                M_AXI_TDATA_out_cmd[67:64] <= app_tag; 
                M_AXI_TVALID_out_cmd <= 1;
            end
            else
                M_AXI_TVALID_out_cmd <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (reset) 
        begin
            M_AXI_STS_out_tready <= 0;
            app_cmd_done <= 0;
            app_cmd_error <= 0;
        end 
        else 
        begin
            M_AXI_STS_out_tready <= 1;

            if (M_AXI_STS_out_tvalid && M_AXI_STS_out_tready) 
            begin
                if (M_AXI_STS_out_tdata[7])
                begin
                    if (app_tag == M_AXI_STS_out_tdata[3:0])
                        app_cmd_done <= 1;
                    else
                        app_cmd_error <= 1;
                end
                else
                    app_cmd_error <= 1;
            end
            else
                app_cmd_done <= 0;
        end
    end

   always @(posedge clk) 
    begin
        if (reset) 
            app_tag <= 0;
        else
            if (app_cmd_done)
                app_tag <= app_tag + 1;
    end

    always @(posedge clk) 
    begin
        if (reset) 
        begin
            app_adr <= 0;
            app_start_cmd <= 0;
        end 
    end

    always @(posedge clk) 
    begin
        dma_active <= 0;
        M_AXI_TLAST_out <= 0;
    end

/*    
    always @(posedge clk) 
    begin
        if (reset)
        begin
            app_active <= 0;
            curr_beat <= 1;
            M_AXI_TLAST_out <= 0;
        end
        else
        begin
            if (dma_active)
            begin
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
    end
*/
    
  end

     
endgenerate

endmodule
