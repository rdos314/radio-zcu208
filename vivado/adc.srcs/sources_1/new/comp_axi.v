`timescale 1ns / 1ps

module comp_axi(
    input wire clk,
    input wire reset,

    input wire wr,
    input wire [63:0] sample,
    input wire [19:0] freq,
    input wire [15:0] angle,
    input wire [9:0] doa_error,
    input wire [10:0] size,
    input wire [15:0] max_env,
    input wire [10:0] max_pos,
    input wire [15:0] env_mean,
    input wire [47:0] env_sum2,
    input wire [47:0] phase_sum2,
    input wire [47:0] freq_sum2,
    input wire stat_ok,

    input wire [15:0] env_0,
    input wire [15:0] env_1,
    input wire [15:0] env_2,
    input wire [15:0] env_3,
    input wire [15:0] phase_0,
    input wire [15:0] phase_1,
    input wire [15:0] phase_2,
    input wire [15:0] phase_3,

    output reg idle,
    output reg active,
    output reg [255:0] data
);
    
    (* ram_style = "block" *) reg [255:0] mem_data [0:255];

    reg mem_wr;
    reg [7:0] wr_ptr;
    reg index;
    reg [7:0] wr_blocks;
    reg [255:0] data_in;
    reg [255:0] header;
    
    reg [7:0] rd_ptr;
    reg [7:0] rd_blocks;
    reg [255:0] data_out;
    
    wire [7:0] flags = 8'b10000000;

    wire [37:0] freq_p;
    wire [37:0] freq_std_p;
    reg [2:0] freq_delay;

    reg div_start;
    reg [15:0] sizem1;
    reg [15:0] sizem2;

    wire div_env_done;
    wire div_phase_done;
    wire div_freq_done;

    wire [47:0] div_env_data;
    wire [47:0] div_phase_data;
    wire [47:0] div_freq_data;
    
    wire env_std_done;
    wire phase_std_done;
    wire freq_std_done;
    
    wire [23:0] env_std_data;
    wire [23:0] phase_std_data;
    wire [23:0] freq_std_data;

    reg [31:0] calc_freq;
    
    reg [15:0] env_std;
    reg [15:0] phase_std;
    reg [19:0] raw_freq_std;
    reg [15:0] freq_std;

	reg filling;
	reg read_back;
	reg std_done;
	reg std_ok;

    mul_freq mul_freq_i (
        .CLK(clk),     // input wire CLK
        .A(freq),      // input wire [19 : 0] A
        .P(freq_p)     // output wire [37 : 0] P
    );

    mul_freq mul_freq_std_i (
        .CLK(clk),          // input wire CLK
        .A(raw_freq_std),   // input wire [19 : 0] A
        .P(freq_std_p)      // output wire [37 : 0] P
    );

    div_var div_var_env (
        .aclk(clk),                                 // input wire aclk
        .s_axis_divisor_tvalid(div_start),          // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(sizem1),              // input wire [15 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(div_start),         // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(env_sum2),           // input wire [47 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(div_env_done),          // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(div_env_data)            // output wire [47 : 0] m_axis_dout_tdata
    );

    div_var div_var_phase (
        .aclk(clk),                                 // input wire aclk
        .s_axis_divisor_tvalid(div_start),          // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(sizem2),              // input wire [15 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(div_start),         // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(phase_sum2),         // input wire [47 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(div_phase_done),        // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(div_phase_data)          // output wire [47 : 0] m_axis_dout_tdata
    );

    div_var div_var_freq (
        .aclk(clk),                                 // input wire aclk
        .s_axis_divisor_tvalid(div_start),          // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(sizem2),              // input wire [15 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(div_start),         // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(freq_sum2),         // input wire [47 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(div_freq_done),        // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(div_freq_data)          // output wire [47 : 0] m_axis_dout_tdata
    );

    sqrt_std env_std_i (
        .aclk(clk),                                        // input wire aclk
        .s_axis_cartesian_tvalid(div_env_done),            // input wire s_axis_cartesian_tvalid
        .s_axis_cartesian_tdata(div_env_data[39:0]),       // input wire [39 : 0] s_axis_cartesian_tdata
        .m_axis_dout_tvalid(env_std_done),                 // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(env_std_data)                   // output wire [23 : 0] m_axis_dout_tdata
    );

    sqrt_std phase_std_i (
        .aclk(clk),                                        // input wire aclk
        .s_axis_cartesian_tvalid(div_phase_done),          // input wire s_axis_cartesian_tvalid
        .s_axis_cartesian_tdata(div_phase_data[39:0]),     // input wire [39 : 0] s_axis_cartesian_tdata
        .m_axis_dout_tvalid(phase_std_done),               // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(phase_std_data)                 // output wire [23 : 0] m_axis_dout_tdata
    );

    sqrt_std freq_std_i (
        .aclk(clk),                                        // input wire aclk
        .s_axis_cartesian_tvalid(div_freq_done),           // input wire s_axis_cartesian_tvalid
        .s_axis_cartesian_tdata(div_freq_data[39:0]),      // input wire [39 : 0] s_axis_cartesian_tdata
        .m_axis_dout_tvalid(freq_std_done),                // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(freq_std_data)                  // output wire [23 : 0] m_axis_dout_tdata
    );

	ila_1 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(wr),                  // input wire [0:0]  probe3
		.probe1(mem_wr),              // input wire [0:0]  probe3
		.probe2(wr_ptr),              // input wire [7:0]  probe3
		.probe3(index),               // input wire [0:0]  probe3
		.probe4(wr_blocks),           // input wire [7:0]  probe3
		.probe5(rd_ptr),              // input wire [7:0]  probe3
		.probe6(rd_blocks),           // input wire [7:0]  probe3
		.probe7(stat_ok),         	  // input wire [0:0]  probe3
		.probe8(div_start),           // input wire [0:0]  probe3
		.probe9(freq_delay),          // input wire [2:0]  probe3
		.probe10(idle),               // input wire [0:0]  probe3
		.probe11(calc_freq),          // input wire [31:0]  probe3
		.probe12(env_std),            // input wire [15:0]  probe3
		.probe13(phase_std),          // input wire [15:0]  probe3
		.probe14(raw_freq_std),       // input wire [19:0]  probe3
		.probe15(freq_std),           // input wire [15:0]  probe3
		.probe16(std_done),           // input wire [0:0]  probe3
		.probe17(std_ok),             // input wire [0:0]  probe3
		.probe18(filling),            // input wire [0:0]  probe3
		.probe19(active),             // input wire [0:0]  probe3
		.probe20(read_back)           // input wire [0:0]  probe3
);
    	
generate
  begin : comp_axi

    always @(posedge clk) 
    begin
		idle <= !filling & !read_back & !active;
	end

    always @(posedge clk) 
    begin
		if (wr)
			filling <= 1;
		else
		begin
			if (reset | read_back)
				filling <= 0;
		end
	end

    always @(posedge clk) 
    begin
        if (mem_wr)
            mem_data[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        data_out <= mem_data[rd_ptr];
    end

    always @(posedge clk) 
    begin
        if (reset | stat_ok)
        begin
            index <= 0;
            wr_blocks <= 0;
            mem_wr <= 0;
        end
        else
        begin
            if (wr)
            begin
                case (index)
                    0:
                    begin
                        data_in[15:0] <= env_0;
                        data_in[31:16] <= phase_0;
                        data_in[47:32] <= env_1;
                        data_in[63:48] <= phase_1;
                        data_in[79:64] <= env_2;
                        data_in[95:80] <= phase_2;
                        data_in[111:96] <= env_3;
                        data_in[127:112] <= phase_3;
                        mem_wr <= 0;
                    end
                
                    1:
                    begin
                        data_in[143:128] <= env_0;
                        data_in[159:144] <= phase_0;
                        data_in[175:160] <= env_1;
                        data_in[191:176] <= phase_1;
                        data_in[207:192] <= env_2;
                        data_in[223:208] <= phase_2;
                        data_in[239:224] <= env_3;
                        data_in[255:240] <= phase_3;
                        mem_wr <= 1;
                        wr_blocks <= wr_blocks + 1;
                    end
                endcase
                index <= index + 1;
            end
            else
            begin
                if (index)
                begin
                    data_in[255:128] <= 0;
                    mem_wr <= 1;
                    index <= 0;
                    wr_blocks <= wr_blocks + 1;
                end
                else
                    mem_wr <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (mem_wr)
            wr_ptr <= wr_ptr + 1;
        else
            if (reset | stat_ok)
                wr_ptr <= 0;
    end

    always @(posedge clk) 
    begin
        if (reset)
            div_start <= 0;
        else
        begin
            if (stat_ok)
            begin
                sizem1 <= size - 1;
                sizem2 <= size - 2;
                div_start <= 1;
            end
            else
               div_start <= 0;
       end       
    end
    
    always @(posedge clk) 
    begin
        if (env_std_done)
        begin
            env_std <= env_std_data[15:0];
            if (freq_p[18])
                calc_freq <= {13'h0, freq_p[37:19] + 1};
            else
                calc_freq <= {13'h0, freq_p[37:19]};
        end
    end
    
    always @(posedge clk) 
    begin
        if (phase_std_done)
        begin
            if (phase_std_data[1])
                phase_std <= phase_std_data[17:2] + 1;
            else
                phase_std <= phase_std_data[17:2];
        end
    end
    
    always @(posedge clk) 
    begin
        if (reset | stat_ok)
            freq_delay <= 0;
        else
        begin
            if (freq_std_done)
            begin
                raw_freq_std <= freq_std_data[19:0];
                freq_delay <= 4;
            end
            else
                if (freq_delay)
                    freq_delay <= freq_delay - 1;
        end
    end
    
    always @(posedge clk) 
    begin
        if (freq_delay == 1)
        begin
            std_done <= 1;
            freq_std <= freq_std_p[34:19];
        end
        else
            std_done <= 0;
    end

    always @(posedge clk) 
    begin
        if (stat_ok)
        begin
            header[63:0] <= sample;
            header[79:72] <= flags;
            header[95:80] <= {5'b00000, size};
            header[111:96] <= angle;
            header[127:112] <= {6'b000000, doa_error};
            header[175:160] <= max_env;
            header[191:176] <= {5'b00000, max_pos};
            header[207:192] <= env_mean;
        end
    end

    always @(posedge clk) 
    begin
        if (reset | read_back)
            std_ok <= 0;
        else
        begin
            if (std_done)
            begin
                header[159:128] <= calc_freq;
                header[223:208] <= env_std;
                header[239:224] <= phase_std;
                header[255:240] <= freq_std;
                std_ok <= 1;
            end
        end
    end
    
    always @(posedge clk) 
    begin
        if (std_ok & !read_back & !wr & !mem_wr & !index)
        begin
            header[71:64] <= wr_blocks;
            read_back <= 1;
        end
        else
            read_back <= 0;
    end

    always @(posedge clk)
    begin
        if (read_back)
        begin
            active <= 1;
            rd_ptr <= 1;
            data <= header;
            rd_blocks <= wr_blocks;
        end
        else 
        begin
            if (reset)
                active <= 0;
            else
            begin
                if (active)
                begin
                    case (rd_blocks)
                        0: 
                        begin
                            active <= 0;
                            rd_ptr <= 0;
                        end
                        
                        1:
                        begin
                            active <= 0;
                            rd_ptr <= 0;
                            rd_blocks <= 0;
                        end
                        
                        default:
                        begin
                            data <= data_out;
                            rd_blocks <= rd_blocks - 1;
                            rd_ptr <= rd_ptr + 1;
                        end
                    endcase
                end
            end
        end
    end

  end
    
endgenerate

endmodule
