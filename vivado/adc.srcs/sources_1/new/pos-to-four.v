`timescale 1ns / 1ps

module pos_to_four(
    input wire clk,
    input wire reset,

	input wire run,
    input wire wr,
    input wire [10:0] pos,
    input wire [15:0] env,
    input wire [15:0] phase,
    input wire allowed,

    output reg idle,    
    output reg active,
    output reg [15:0] env_0,
    output reg [15:0] env_1,
    output reg [15:0] env_2,
    output reg [15:0] env_3,
    output reg [15:0] phase_0,
    output reg [15:0] phase_1,
    output reg [15:0] phase_2,
    output reg [15:0] phase_3
);

    (* ram_style = "block" *) reg [31:0] mem_0 [0:511];
    (* ram_style = "block" *) reg [31:0] mem_1 [0:511];
    (* ram_style = "block" *) reg [31:0] mem_2 [0:511];
    (* ram_style = "block" *) reg [31:0] mem_3 [0:511];

    reg [8:0] wr_ptr;
    reg [8:0] rd_ptr;

	reg [3:0] mem_wr;
	
	reg [31:0] data_in;
	reg [31:0] data_0_out;
	reg [31:0] data_1_out;
	reg [31:0] data_2_out;
	reg [31:0] data_3_out;

	reg req_read;
	reg active_0;
	reg was_run;
	reg [8:0] counter;

	ila_3 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(wr),                  // input wire [0:0]  probe3
		.probe1(pos),                 // input wire [10:0]  probe3
		.probe2(env),                 // input wire [15:0]  probe3
		.probe3(phase),               // input wire [15:0]  probe3
		.probe4(mem_wr),              // input wire [3:0]  probe3
		.probe5(wr_ptr),              // input wire [8:0]  probe3
		.probe6(rd_ptr),              // input wire [8:0]  probe3
		.probe7(run),                 // input wire [0:0]  probe3
		.probe8(was_run),             // input wire [0:0]  probe3
		.probe9(req_read),            // input wire [0:0]  probe3
		.probe10(active_0),           // input wire [0:0]  probe3
		.probe11(active),             // input wire [0:0]  probe3
		.probe12(counter),            // input wire [8:0]  probe3
		.probe13(env_0),              // input wire [15:0]  probe3
		.probe14(env_1),              // input wire [15:0]  probe3
		.probe15(env_2),              // input wire [15:0]  probe3
		.probe16(env_3),              // input wire [15:0]  probe3
		.probe17(phase_0),            // input wire [15:0]  probe3
		.probe18(phase_1),            // input wire [15:0]  probe3
		.probe19(phase_2),            // input wire [15:0]  probe3
		.probe20(phase_3)             // input wire [15:0]  probe3
	);
    
generate
  begin : pos_to_four

    always @(posedge clk) 
    begin
        if (mem_wr[0])
            mem_0[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr[1])
            mem_1[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr[2])
            mem_2[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        if (mem_wr[3])
            mem_3[wr_ptr] <= data_in;
    end

    always @(posedge clk) 
    begin
        data_0_out <= mem_0[rd_ptr];
    end

    always @(posedge clk) 
    begin
        data_1_out <= mem_1[rd_ptr];
    end

    always @(posedge clk) 
    begin
        data_2_out <= mem_2[rd_ptr];
    end

    always @(posedge clk) 
    begin
        data_3_out <= mem_3[rd_ptr];
    end

    always @(posedge clk) 
    begin
		if (wr)
		begin
			case (pos[1:0])
				0: mem_wr <= 4'b0001;
				1: mem_wr <= 4'b0010;
				2: mem_wr <= 4'b0100;
				3: mem_wr <= 4'b1000;
			endcase
		end
		else
			mem_wr <= 0;
	end

    always @(posedge clk) 
    begin
		wr_ptr <= pos[10:2];
		data_in[15:0] <= env;
		data_in[31:16] <= phase;
	end

    always @(posedge clk) 
    begin
		env_0 <= data_0_out[15:0];
		env_1 <= data_1_out[15:0];
		env_2 <= data_2_out[15:0];
		env_3 <= data_3_out[15:0];
	end

    always @(posedge clk) 
    begin
		phase_0 <= data_0_out[31:16];
		phase_1 <= data_1_out[31:16];
		phase_2 <= data_2_out[31:16];
		phase_3 <= data_3_out[31:16];
	end

    always @(posedge clk) 
    begin
        was_run <= run;
    end

    always @(posedge clk) 
    begin
        idle <= !run & !was_run & !req_read & !active_0 & !active;
    end

    always @(posedge clk) 
    begin
        if (reset | run)
        begin
            req_read <= 0;
            active_0 <= 0;
        end
        else
        begin
            if (was_run)
                req_read <= 1;
            else
            begin
                if (counter == 0)
                    active_0 <= 0;
                else
                begin
                    if (req_read & allowed)
                    begin
                        active_0 <= 1;
                        req_read <= 0;
                    end
                end
            end
        end
    end

    always @(posedge clk) 
    begin
        if (req_read)
            rd_ptr <= 0;
        else
        begin
            if (active_0)
                rd_ptr <= rd_ptr + 1;
        end
    end

    always @(posedge clk) 
    begin
        if (run | was_run)
        begin
            if (wr_ptr >= counter)
                counter <= wr_ptr + 1;
        end
        else
        begin
            if (active_0)
            begin
                if (counter)
                    counter <= counter - 1;
                else
                    counter <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        active <= active_0;
    end
                    
  end
    
endgenerate

endmodule
