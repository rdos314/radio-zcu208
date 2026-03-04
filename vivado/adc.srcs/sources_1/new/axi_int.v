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
    input wire config_clk,
    input wire config_wr,
    input wire [7:0] config_adr,
    input wire [31:0] config_data,

    input wire clk,
    input wire resetn,
    input wire up,
    output reg [39:0] M_AXI_AWADDR,
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

    reg reset;
    reg busy;
    reg req;
    reg [26:0] adr;
    reg [255:0] data;
    reg [7:0] size;
    reg [7:0] counter;

    wire [39:0] config_data_adr_in;
    assign config_data_adr_in[7:0] = config_adr;
    assign config_data_adr_in[39:8] = config_data;

    wire [39:0] config_data_adr_out;
    reg cfg_rd;
    wire cfg_empty;

fifo_config fifo_config_i (
  .rst(reset),                   // input wire rst
  .wr_clk(config_clk),           // input wire wr_clk
  .rd_clk(clk),                  // input wire rd_clk
  .din(config_data_adr_in),      // input wire [39 : 0] din
  .wr_en(config_wr),             // input wire wr_en
  .rd_en(cfg_rd),                // input wire rd_en
  .dout(config_data_adr_out),    // output wire [39 : 0] dout
  .empty(cfg_empty)              // output wire empty
);

	ila_6 ila_i (
		.clk(clk),                    // input wire clk
		.probe0(up),                  // input wire [0:0]  probe3
		.probe1(M_AXI_AWADDR),        // input wire [39:0]  probe3
		.probe2(M_AXI_AWLEN),         // input wire [7:0]  probe3
		.probe3(M_AXI_AWVALID),       // input wire [0:0]  probe3
		.probe4(M_AXI_AWREADY),       // input wire [0:0]  probe3
		.probe5(M_AXI_WDATA[39:0]),   // input wire [39:0]  probe3
		.probe6(M_AXI_WLAST),         // input wire [0:0]  probe3
		.probe7(M_AXI_WVALID),        // input wire [0:0]  probe3
		.probe8(M_AXI_WREADY),        // input wire [0:0]  probe3
		.probe9(M_AXI_BVALID),        // input wire [0:0]  probe3
		.probe10(M_AXI_BRESP),        // input wire [1:0]  probe3
		.probe11(M_AXI_BREADY),       // input wire [0:0]  probe3
		.probe12(req),                // input wire [0:0]  probe3
		.probe13(busy),               // input wire [0:0]  probe3
		.probe14(adr),                // input wire [26:0]  probe3
		.probe15(data[39:0]),         // input wire [39:0]  probe3
		.probe16(size),               // input wire [7:0]  probe3
		.probe17(counter)             // input wire [7:0]  probe3
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
            req <= 0;
        else
        begin
            if (cfg_empty)
                req <= 0;
            else
            begin
                data[39:0] <= config_data_adr_out;
                data[255:40] <= 0;
                req <= 1;
            end
        end            
    end

    always @(posedge clk) 
    begin
        if (cfg_empty)
            size <= 0;
        else
            size <= 1;
    end

    always @(posedge clk) 
    begin
        if (M_AXI_WVALID & M_AXI_WREADY)
            cfg_rd <= 1;
        else
            cfg_rd <= 0;
    end

    always @(posedge clk) 
    begin
        if (reset)
            M_AXI_AWVALID <= 0;
        else
        begin
            if (M_AXI_AWVALID & M_AXI_AWREADY)
                M_AXI_AWVALID <= 0;
            else
			begin
                if (req & !busy)
				begin
                    M_AXI_AWVALID <= 1;
                    M_AXI_AWADDR <= {8'h04, adr, 5'b00000};
                    M_AXI_AWLEN <= size - 1;
				end
			end
        end
    end

    always @(posedge clk) 
    begin
        if (reset)
            busy <= 0;
        else
        begin
            if (M_AXI_AWVALID & M_AXI_AWREADY)
                busy <= 1;
            else
                if (M_AXI_BVALID & M_AXI_BREADY)
                    busy <= 0;
        end
    end

    always @(posedge clk) 
    begin
        if (reset)
        begin
            counter <= 0;
            adr <= 0;
        end
        else
        begin
            if (counter)
            begin
                if (M_AXI_WREADY & M_AXI_WVALID)
                begin
                    M_AXI_WDATA <= data;
                    counter <= counter - 1;
                    adr <= adr + 1;
                end
            end
            else
            begin
				if (M_AXI_AWVALID & M_AXI_AWREADY)
                    counter <= size;
            end
        end
    end

    always @(posedge clk) 
    begin
        M_AXI_WVALID <= busy && (counter != 0);
    end

    always @(posedge clk) 
    begin
        if (counter == 1)
            M_AXI_WLAST <= 1;
        else
            M_AXI_WLAST <= 0;
    end

    always @(posedge clk) 
    begin
        M_AXI_BREADY <= M_AXI_BVALID;
    end
    
  end
     
endgenerate

endmodule
