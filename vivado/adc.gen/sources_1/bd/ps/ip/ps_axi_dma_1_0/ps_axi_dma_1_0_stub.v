// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat May  2 15:27:56 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_dma_1_0/ps_axi_dma_1_0_stub.v
// Design      : ps_axi_dma_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_axi_dma_1_0,axi_dma,{}" *) (* CORE_GENERATION_INFO = "ps_axi_dma_1_0,axi_dma,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_dma,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "axi_dma,Vivado 2025.1" *) 
module ps_axi_dma_1_0(clk, resetn, mig_rd_ptr, mig_wr_ptr, 
  linux_rd_ptr, linux_wr_ptr, M_AXI_TDATA_in_cmd, M_AXI_TVALID_in_cmd, M_AXI_TREADY_in_cmd, 
  M_AXI_STS_in_tdata, M_AXI_STS_in_tvalid, M_AXI_STS_in_tready, M_AXI_TDATA_out_cmd, 
  M_AXI_TVALID_out_cmd, M_AXI_TREADY_out_cmd, M_AXI_STS_out_tdata, M_AXI_STS_out_tvalid, 
  M_AXI_STS_out_tready, M_AXI_TDATA_in, M_AXI_TVALID_in, M_AXI_TREADY_in, M_AXI_TDATA_out, 
  M_AXI_TVALID_out, M_AXI_TLAST_out, M_AXI_TREADY_out)
/* synthesis syn_black_box black_box_pad_pin="resetn,mig_rd_ptr[26:0],mig_wr_ptr[26:0],linux_rd_ptr[31:0],linux_wr_ptr[31:0],M_AXI_TDATA_in_cmd[71:0],M_AXI_TVALID_in_cmd,M_AXI_TREADY_in_cmd,M_AXI_STS_in_tdata[7:0],M_AXI_STS_in_tvalid,M_AXI_STS_in_tready,M_AXI_TDATA_out_cmd[71:0],M_AXI_TVALID_out_cmd,M_AXI_TREADY_out_cmd,M_AXI_STS_out_tdata[7:0],M_AXI_STS_out_tvalid,M_AXI_STS_out_tready,M_AXI_TDATA_in[255:0],M_AXI_TVALID_in,M_AXI_TREADY_in,M_AXI_TDATA_out[255:0],M_AXI_TVALID_out,M_AXI_TLAST_out,M_AXI_TREADY_out" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI_STS_in:M_AXI_STS_out:M_AXI_in:M_AXI_in_cmd:M_AXI_out:M_AXI_out_cmd, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output [26:0]mig_rd_ptr;
  input [26:0]mig_wr_ptr;
  output [31:0]linux_rd_ptr;
  input [31:0]linux_wr_ptr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [71:0]M_AXI_TDATA_in_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TVALID" *) output M_AXI_TVALID_in_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TREADY" *) input M_AXI_TREADY_in_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]M_AXI_STS_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TVALID" *) input M_AXI_STS_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TREADY" *) output M_AXI_STS_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [71:0]M_AXI_TDATA_out_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TVALID" *) output M_AXI_TVALID_out_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TREADY" *) input M_AXI_TREADY_out_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]M_AXI_STS_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TVALID" *) input M_AXI_STS_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TREADY" *) output M_AXI_STS_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]M_AXI_TDATA_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TVALID" *) input M_AXI_TVALID_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TREADY" *) output M_AXI_TREADY_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]M_AXI_TDATA_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TVALID" *) output M_AXI_TVALID_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TLAST" *) output M_AXI_TLAST_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TREADY" *) input M_AXI_TREADY_out;
endmodule
