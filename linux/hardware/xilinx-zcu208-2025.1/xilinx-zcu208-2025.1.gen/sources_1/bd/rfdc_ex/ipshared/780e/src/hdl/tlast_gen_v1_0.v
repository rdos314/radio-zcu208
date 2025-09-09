//----------------------------------------------------------------------------
// Title : Example Design Top Level
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
// File : tlast_gen_v1_0.v
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
//
//----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

	module tlast_gen_v1_0 #
	(
		// Users to add parameters here
        parameter integer C_S_AXIS_TDATA_WIDTH = 256,
		parameter integer C_S_AXIS_TKEEP_WIDTH = 32,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		output wire s_axis_tready,
		input  wire s_axis_tvalid,
		input  wire [C_S_AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input  wire [C_S_AXIS_TKEEP_WIDTH-1 : 0] s_axis_tkeep,
		
		input wire aclk,
		input wire arstn,
		
		output reg  m_axis_tlast = 1'b0,
		input  wire m_axis_tready,
		output wire m_axis_tvalid,
		output wire [C_S_AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output wire [C_S_AXIS_TKEEP_WIDTH-1 : 0] m_axis_tkeep,
		

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	tlast_gen_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) tlast_gen_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.tdata_byte_count(tdata_byte_count),
		.tdata_byte_count_update(tdata_byte_count_update)
	);

localparam integer C_S_AXIS_TDATA_BYTES = C_S_AXIS_TDATA_WIDTH/8;
	// Add user logic here
wire [C_S00_AXI_DATA_WIDTH-1:0] tdata_byte_count;
(* ASYNC_REG = "TRUE" *) reg [C_S00_AXI_DATA_WIDTH-1:0] tdata_byte_count_meta;
(* ASYNC_REG = "TRUE" *) reg [C_S00_AXI_DATA_WIDTH-1:0] tdata_byte_count_sync;
reg [C_S00_AXI_DATA_WIDTH-1:0] tdata_byte_count_sync_d1;
wire  tdata_byte_count_update;
(* ASYNC_REG = "TRUE" *) reg  tdata_byte_count_update_meta = 1'b0;
(* ASYNC_REG = "TRUE" *) reg  tdata_byte_count_update_sync = 1'b0;
reg  tdata_byte_count_update_sync_d1 = 1'b0;
reg  tdata_byte_count_update_sync_re = 1'b0;
reg  [C_S00_AXI_DATA_WIDTH-1:0] tdata_byte_count_int = 32'h0000_0000;

always@(posedge aclk)
begin
   tdata_byte_count_update_meta <= tdata_byte_count_update;
   tdata_byte_count_update_sync <= tdata_byte_count_update_meta;
   tdata_byte_count_update_sync_d1 <= tdata_byte_count_update_sync;
   tdata_byte_count_update_sync_re <= tdata_byte_count_update_sync && !tdata_byte_count_update_sync_d1;
   tdata_byte_count_meta <= tdata_byte_count;
   tdata_byte_count_sync <= tdata_byte_count_meta;
   if (tdata_byte_count_update_sync_re == 1'b1)
   begin
      tdata_byte_count_sync_d1 <= tdata_byte_count_sync;
      
   end	  
end

always @( posedge aclk or negedge arstn )
 begin
  // reset the counter with every tlast 
  if(!arstn)
   tdata_byte_count_int <= 32'h0000_0000;
  else begin 
    if ( ((s_axis_tvalid ==1'b1) && (s_axis_tready == 1'b1) && (m_axis_tlast == 1'b1)) || tdata_byte_count_update_sync_re == 1'b1 )
    begin
     tdata_byte_count_int <= 32'h0000_0000;
    end 
  // Increment the count with every Beat
    else if ((s_axis_tvalid ==1'b1) && (s_axis_tready == 1'b1))begin
     tdata_byte_count_int <= tdata_byte_count_int + C_S_AXIS_TDATA_BYTES;
    end
    else begin 
     tdata_byte_count_int <= tdata_byte_count_int;
    end
  end
end 
  
always @( posedge aclk )
  begin
  // reset the counter with every tlast 
  if ((s_axis_tvalid ==1'b1) && (s_axis_tready == 1'b1) && (m_axis_tlast == 1'b1)) begin
   m_axis_tlast <= 1'b0;  
  end
  else if ((s_axis_tvalid ==1'b1) && (s_axis_tready == 1'b1)  && ((tdata_byte_count_sync_d1-2*C_S_AXIS_TDATA_BYTES) <= tdata_byte_count_int))
  begin
    m_axis_tlast <= 1'b1;
  end 
  else begin 
    m_axis_tlast <= m_axis_tlast;
  end
end 
  
assign s_axis_tready = m_axis_tready;
assign m_axis_tvalid = s_axis_tvalid;
assign m_axis_tdata = s_axis_tdata;
assign m_axis_tkeep = s_axis_tkeep;

	// User logic ends

	endmodule
