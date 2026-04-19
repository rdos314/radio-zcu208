`timescale 1ns / 1ps

module axi_dma(
    input wire clk,
    input wire resetn,

    output reg [71:0] M_AXI_TDATA_cmd,
    output reg M_AXI_TVALID_cmd,
    input wire M_AXI_TREADY_cmd,
    
    input wire [255:0] M_AXI_TDATA_in,
    input wire M_AXI_TVALID_in,
    output reg M_AXI_TREADY_in,

    output reg [255:0] M_AXI_TDATA_out,
    output reg M_AXI_TVALID_out,
    input wire M_AXI_TREADY_out      
    );
    
    
generate
  begin : axi_dma


  end

     
endgenerate

endmodule
