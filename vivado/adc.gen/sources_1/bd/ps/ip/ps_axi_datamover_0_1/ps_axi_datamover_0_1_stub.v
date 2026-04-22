// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Apr 21 22:55:13 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_0_1/ps_axi_datamover_0_1_stub.v
// Design      : ps_axi_datamover_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_axi_datamover_0_1,axi_datamover,{}" *) (* core_generation_info = "ps_axi_datamover_0_1,axi_datamover,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_datamover,x_ipVersion=5.1,x_ipCoreRevision=37,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_INCLUDE_MM2S=1,C_M_AXI_MM2S_ARID=0,C_M_AXI_MM2S_ID_WIDTH=4,C_M_AXI_MM2S_ADDR_WIDTH=32,C_M_AXI_MM2S_DATA_WIDTH=256,C_M_AXIS_MM2S_TDATA_WIDTH=256,C_INCLUDE_MM2S_STSFIFO=1,C_MM2S_STSCMD_FIFO_DEPTH=4,C_MM2S_STSCMD_IS_ASYNC=0,C_INCLUDE_MM2S_DRE=0,C_MM2S_BURST_SIZE=128,C_MM2S_BTT_USED=16,C_MM2S_ADDR_PIPE_DEPTH=3,C_INCLUDE_S2MM=0,C_M_AXI_S2MM_AWID=1,C_M_AXI_S2MM_ID_WIDTH=4,C_M_AXI_S2MM_ADDR_WIDTH=32,C_M_AXI_S2MM_DATA_WIDTH=32,C_S_AXIS_S2MM_TDATA_WIDTH=32,C_INCLUDE_S2MM_STSFIFO=0,C_S2MM_STSCMD_FIFO_DEPTH=4,C_S2MM_STSCMD_IS_ASYNC=0,C_INCLUDE_S2MM_DRE=0,C_S2MM_BURST_SIZE=16,C_S2MM_BTT_USED=16,C_S2MM_SUPPORT_INDET_BTT=0,C_S2MM_ADDR_PIPE_DEPTH=3,C_FAMILY=zynquplus,C_MM2S_INCLUDE_SF=1,C_S2MM_INCLUDE_SF=0,C_ENABLE_CACHE_USER=0,C_ENABLE_MM2S_TKEEP=1,C_ENABLE_S2MM_TKEEP=1,C_ENABLE_SKID_BUF=11111,C_ENABLE_S2MM_ADV_SIG=0,C_ENABLE_MM2S_ADV_SIG=0,C_CMD_WIDTH=72}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_datamover,Vivado 2025.1" *) 
module ps_axi_datamover_0_1(m_axi_mm2s_aclk, m_axi_mm2s_aresetn, 
  mm2s_err, m_axis_mm2s_cmdsts_aclk, m_axis_mm2s_cmdsts_aresetn, s_axis_mm2s_cmd_tvalid, 
  s_axis_mm2s_cmd_tready, s_axis_mm2s_cmd_tdata, m_axis_mm2s_sts_tvalid, 
  m_axis_mm2s_sts_tready, m_axis_mm2s_sts_tdata, m_axis_mm2s_sts_tkeep, 
  m_axis_mm2s_sts_tlast, m_axi_mm2s_arid, m_axi_mm2s_araddr, m_axi_mm2s_arlen, 
  m_axi_mm2s_arsize, m_axi_mm2s_arburst, m_axi_mm2s_arprot, m_axi_mm2s_arcache, 
  m_axi_mm2s_aruser, m_axi_mm2s_arvalid, m_axi_mm2s_arready, m_axi_mm2s_rdata, 
  m_axi_mm2s_rresp, m_axi_mm2s_rlast, m_axi_mm2s_rvalid, m_axi_mm2s_rready, 
  m_axis_mm2s_tdata, m_axis_mm2s_tkeep, m_axis_mm2s_tlast, m_axis_mm2s_tvalid, 
  m_axis_mm2s_tready)
/* synthesis syn_black_box black_box_pad_pin="m_axi_mm2s_aresetn,mm2s_err,m_axis_mm2s_cmdsts_aclk,m_axis_mm2s_cmdsts_aresetn,s_axis_mm2s_cmd_tvalid,s_axis_mm2s_cmd_tready,s_axis_mm2s_cmd_tdata[71:0],m_axis_mm2s_sts_tvalid,m_axis_mm2s_sts_tready,m_axis_mm2s_sts_tdata[7:0],m_axis_mm2s_sts_tkeep[0:0],m_axis_mm2s_sts_tlast,m_axi_mm2s_arid[3:0],m_axi_mm2s_araddr[31:0],m_axi_mm2s_arlen[7:0],m_axi_mm2s_arsize[2:0],m_axi_mm2s_arburst[1:0],m_axi_mm2s_arprot[2:0],m_axi_mm2s_arcache[3:0],m_axi_mm2s_aruser[3:0],m_axi_mm2s_arvalid,m_axi_mm2s_arready,m_axi_mm2s_rdata[255:0],m_axi_mm2s_rresp[1:0],m_axi_mm2s_rlast,m_axi_mm2s_rvalid,m_axi_mm2s_rready,m_axis_mm2s_tdata[255:0],m_axis_mm2s_tkeep[31:0],m_axis_mm2s_tlast,m_axis_mm2s_tvalid,m_axis_mm2s_tready" */
/* synthesis syn_force_seq_prim="m_axi_mm2s_aclk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_MM2S_ACLK CLK" *) (* x_interface_mode = "slave M_AXI_MM2S_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S_ACLK, ASSOCIATED_BUSIF M_AXI_MM2S:M_AXIS_MM2S:M_AXI, ASSOCIATED_RESET m_axi_mm2s_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axi_mm2s_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXI_MM2S_ARESETN RST" *) (* x_interface_mode = "slave M_AXI_MM2S_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_mm2s_aresetn;
  output mm2s_err;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXIS_MM2S_CMDSTS_ACLK CLK" *) (* x_interface_mode = "slave M_AXIS_MM2S_CMDSTS_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_MM2S_CMDSTS_ACLK, ASSOCIATED_BUSIF S_AXIS_MM2S_CMD:M_AXIS_MM2S_STS, ASSOCIATED_RESET m_axis_mm2s_cmdsts_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axis_mm2s_cmdsts_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXIS_MM2S_CMDSTS_ARESETN RST" *) (* x_interface_mode = "slave M_AXIS_MM2S_CMDSTS_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_MM2S_CMDSTS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_mm2s_cmdsts_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S_CMD TVALID" *) (* x_interface_mode = "slave S_AXIS_MM2S_CMD" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_MM2S_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_mm2s_cmd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S_CMD TREADY" *) output s_axis_mm2s_cmd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S_CMD TDATA" *) input [71:0]s_axis_mm2s_cmd_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TVALID" *) (* x_interface_mode = "master M_AXIS_MM2S_STS" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_MM2S_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_mm2s_sts_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TREADY" *) input m_axis_mm2s_sts_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TDATA" *) output [7:0]m_axis_mm2s_sts_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TKEEP" *) output [0:0]m_axis_mm2s_sts_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TLAST" *) output m_axis_mm2s_sts_tlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARID" *) (* x_interface_mode = "master M_AXI_MM2S" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S, NUM_READ_OUTSTANDING 2, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [3:0]m_axi_mm2s_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARADDR" *) output [31:0]m_axi_mm2s_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARLEN" *) output [7:0]m_axi_mm2s_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARSIZE" *) output [2:0]m_axi_mm2s_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARBURST" *) output [1:0]m_axi_mm2s_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARPROT" *) output [2:0]m_axi_mm2s_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARCACHE" *) output [3:0]m_axi_mm2s_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARUSER" *) output [3:0]m_axi_mm2s_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARVALID" *) output m_axi_mm2s_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARREADY" *) input m_axi_mm2s_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RDATA" *) input [255:0]m_axi_mm2s_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RRESP" *) input [1:0]m_axi_mm2s_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RLAST" *) input m_axi_mm2s_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RVALID" *) input m_axi_mm2s_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RREADY" *) output m_axi_mm2s_rready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TDATA" *) (* x_interface_mode = "master M_AXIS_MM2S" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_MM2S, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m_axis_mm2s_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TKEEP" *) output [31:0]m_axis_mm2s_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TLAST" *) output m_axis_mm2s_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TVALID" *) output m_axis_mm2s_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TREADY" *) input m_axis_mm2s_tready;
endmodule
