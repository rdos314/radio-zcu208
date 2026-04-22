`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2026 12:37:35 AM
// Design Name: 
// Module Name: axi_spy
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


module axi_spy #(
    parameter [11:0] TARGET_OFFSET = 12'h058) (
    input wire clk,
    input wire resetn,
    input wire s_axi_awvalid,
    input wire s_axi_awready,
    input wire [11:0] s_axi_awaddr,    
    input wire s_axi_awprot,
    input wire s_axi_wvalid,
    input wire s_axi_wready,
    input wire [31:0] s_axi_wdata,
    input wire [3:0] s_axi_wstrb,
    input wire s_axi_bvalid,
    input wire s_axi_bready,
    input wire [1:0] s_axi_bresp,
    
    output reg wr,
    output reg [31:0] data
);

    reg match;

    
generate
  begin : axi_spy

    always @(posedge clk) 
    begin
        if (resetn)
            match <= 0;
        else
        begin
            if (s_axi_awvalid && s_axi_awready)
            begin
                if (s_axi_awaddr == TARGET_OFFSET)
                    match <= 1;
                else
                    match <= 0;
            end
            else
            begin
                if (s_axi_bready || s_axi_bvalid)
                    match <= 0;
            end
        end
    end

    always @(posedge clk) 
    begin
        if (resetn)
            wr <= 0;
        else
        begin
            if (match)
            begin
                if (s_axi_wvalid && s_axi_wready)
                begin
                    data <= s_axi_wdata;
                    wr <= 1;
                end
                else
                    wr <= 0;
            end
            else
                wr <= 0;
        end
    end

  end

     
endgenerate
    

endmodule
