`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2025 23:07:55
// Design Name: 
// Module Name: mts
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


module mts(
    input wire pl_clk_p,
    input wire pl_clk_n,
    
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *)
    output wire pl_clk,

    input wire pl_sysref_p,
    input wire pl_sysref_n,
    output wire pl_sysref,
    output reg user_sysref_adc,
    input wire m0_axis_aclk
    );

  reg           pl_sysref_r;


generate
  begin : mts
        
    // Multi-tile sync logic
      IBUFGDS pl_clk_i (
        .I          (pl_clk_p),
        .IB         (pl_clk_n),
        .O          (pl_clk));
        
      IBUFGDS pl_sysref_i (
        .I          (pl_sysref_p),
        .IB         (pl_sysref_n),
        .O          (pl_sysref));
        
      always @(posedge pl_clk) begin
        pl_sysref_r <= pl_sysref;
      end
        
      always @(posedge m0_axis_aclk) begin
        user_sysref_adc <= pl_sysref_r;
      end


  end
    
endgenerate
    
    
endmodule
