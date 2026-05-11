// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun May 10 23:36:34 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_1_0/ps_axi_datamover_1_0_stub.v
// Design      : ps_axi_datamover_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ps_axi_datamover_1_0,axi_datamover,{}" *) (* core_generation_info = "ps_axi_datamover_1_0,axi_datamover,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_datamover,x_ipVersion=5.1,x_ipCoreRevision=37,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_INCLUDE_MM2S=0,C_M_AXI_MM2S_ARID=0,C_M_AXI_MM2S_ID_WIDTH=4,C_M_AXI_MM2S_ADDR_WIDTH=32,C_M_AXI_MM2S_DATA_WIDTH=32,C_M_AXIS_MM2S_TDATA_WIDTH=32,C_INCLUDE_MM2S_STSFIFO=0,C_MM2S_STSCMD_FIFO_DEPTH=4,C_MM2S_STSCMD_IS_ASYNC=0,C_INCLUDE_MM2S_DRE=0,C_MM2S_BURST_SIZE=16,C_MM2S_BTT_USED=16,C_MM2S_ADDR_PIPE_DEPTH=3,C_INCLUDE_S2MM=1,C_M_AXI_S2MM_AWID=0,C_M_AXI_S2MM_ID_WIDTH=1,C_M_AXI_S2MM_ADDR_WIDTH=32,C_M_AXI_S2MM_DATA_WIDTH=128,C_S_AXIS_S2MM_TDATA_WIDTH=128,C_INCLUDE_S2MM_STSFIFO=1,C_S2MM_STSCMD_FIFO_DEPTH=4,C_S2MM_STSCMD_IS_ASYNC=0,C_INCLUDE_S2MM_DRE=0,C_S2MM_BURST_SIZE=64,C_S2MM_BTT_USED=16,C_S2MM_SUPPORT_INDET_BTT=0,C_S2MM_ADDR_PIPE_DEPTH=4,C_FAMILY=zynquplus,C_MM2S_INCLUDE_SF=0,C_S2MM_INCLUDE_SF=0,C_ENABLE_CACHE_USER=0,C_ENABLE_MM2S_TKEEP=1,C_ENABLE_S2MM_TKEEP=1,C_ENABLE_SKID_BUF=11111,C_ENABLE_S2MM_ADV_SIG=0,C_ENABLE_MM2S_ADV_SIG=0,C_CMD_WIDTH=72}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_datamover,Vivado 2025.1" *) 
module ps_axi_datamover_1_0(m_axi_s2mm_aclk, m_axi_s2mm_aresetn, 
  s2mm_err, m_axis_s2mm_cmdsts_awclk, m_axis_s2mm_cmdsts_aresetn, s_axis_s2mm_cmd_tvalid, 
  s_axis_s2mm_cmd_tready, s_axis_s2mm_cmd_tdata, m_axis_s2mm_sts_tvalid, 
  m_axis_s2mm_sts_tready, m_axis_s2mm_sts_tdata, m_axis_s2mm_sts_tkeep, 
  m_axis_s2mm_sts_tlast, m_axi_s2mm_awaddr, m_axi_s2mm_awlen, m_axi_s2mm_awsize, 
  m_axi_s2mm_awburst, m_axi_s2mm_awprot, m_axi_s2mm_awcache, m_axi_s2mm_awuser, 
  m_axi_s2mm_awvalid, m_axi_s2mm_awready, m_axi_s2mm_wdata, m_axi_s2mm_wstrb, 
  m_axi_s2mm_wlast, m_axi_s2mm_wvalid, m_axi_s2mm_wready, m_axi_s2mm_bresp, 
  m_axi_s2mm_bvalid, m_axi_s2mm_bready, s_axis_s2mm_tdata, s_axis_s2mm_tkeep, 
  s_axis_s2mm_tlast, s_axis_s2mm_tvalid, s_axis_s2mm_tready)
/* synthesis syn_black_box black_box_pad_pin="m_axi_s2mm_aresetn,s2mm_err,m_axis_s2mm_cmdsts_awclk,m_axis_s2mm_cmdsts_aresetn,s_axis_s2mm_cmd_tvalid,s_axis_s2mm_cmd_tready,s_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_sts_tvalid,m_axis_s2mm_sts_tready,m_axis_s2mm_sts_tdata[7:0],m_axis_s2mm_sts_tkeep[0:0],m_axis_s2mm_sts_tlast,m_axi_s2mm_awaddr[31:0],m_axi_s2mm_awlen[7:0],m_axi_s2mm_awsize[2:0],m_axi_s2mm_awburst[1:0],m_axi_s2mm_awprot[2:0],m_axi_s2mm_awcache[3:0],m_axi_s2mm_awuser[3:0],m_axi_s2mm_awvalid,m_axi_s2mm_awready,m_axi_s2mm_wdata[127:0],m_axi_s2mm_wstrb[15:0],m_axi_s2mm_wlast,m_axi_s2mm_wvalid,m_axi_s2mm_wready,m_axi_s2mm_bresp[1:0],m_axi_s2mm_bvalid,m_axi_s2mm_bready,s_axis_s2mm_tdata[127:0],s_axis_s2mm_tkeep[15:0],s_axis_s2mm_tlast,s_axis_s2mm_tvalid,s_axis_s2mm_tready" */
/* synthesis syn_force_seq_prim="m_axi_s2mm_aclk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_S2MM_ACLK CLK" *) (* x_interface_mode = "slave M_AXI_S2MM_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_S2MM_ACLK, ASSOCIATED_BUSIF M_AXI_S2MM:S_AXIS_S2MM, ASSOCIATED_RESET m_axi_s2mm_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axi_s2mm_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXI_S2MM_ARESETN RST" *) (* x_interface_mode = "slave M_AXI_S2MM_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_S2MM_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_s2mm_aresetn;
  output s2mm_err;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXIS_S2MM_CMDSTS_AWCLK CLK" *) (* x_interface_mode = "slave M_AXIS_S2MM_CMDSTS_AWCLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_AWCLK, ASSOCIATED_BUSIF S_AXIS_S2MM_CMD:M_AXIS_S2MM_STS, ASSOCIATED_RESET m_axis_s2mm_cmdsts_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axis_s2mm_cmdsts_awclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXIS_S2MM_CMDSTS_ARESETN RST" *) (* x_interface_mode = "slave M_AXIS_S2MM_CMDSTS_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_s2mm_cmdsts_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TVALID" *) (* x_interface_mode = "slave S_AXIS_S2MM_CMD" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_s2mm_cmd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TREADY" *) output s_axis_s2mm_cmd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TDATA" *) input [71:0]s_axis_s2mm_cmd_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TVALID" *) (* x_interface_mode = "master M_AXIS_S2MM_STS" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_S2MM_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_s2mm_sts_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TREADY" *) input m_axis_s2mm_sts_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TDATA" *) output [7:0]m_axis_s2mm_sts_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TKEEP" *) output [0:0]m_axis_s2mm_sts_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TLAST" *) output m_axis_s2mm_sts_tlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWADDR" *) (* x_interface_mode = "master M_AXI_S2MM" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_S2MM, NUM_WRITE_OUTSTANDING 2, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_s2mm_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWLEN" *) output [7:0]m_axi_s2mm_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWSIZE" *) output [2:0]m_axi_s2mm_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWBURST" *) output [1:0]m_axi_s2mm_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWPROT" *) output [2:0]m_axi_s2mm_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWCACHE" *) output [3:0]m_axi_s2mm_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWUSER" *) output [3:0]m_axi_s2mm_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWVALID" *) output m_axi_s2mm_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWREADY" *) input m_axi_s2mm_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WDATA" *) output [127:0]m_axi_s2mm_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WSTRB" *) output [15:0]m_axi_s2mm_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WLAST" *) output m_axi_s2mm_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WVALID" *) output m_axi_s2mm_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WREADY" *) input m_axi_s2mm_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BRESP" *) input [1:0]m_axi_s2mm_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BVALID" *) input m_axi_s2mm_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BREADY" *) output m_axi_s2mm_bready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA" *) (* x_interface_mode = "slave S_AXIS_S2MM" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_S2MM, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_s2mm_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP" *) input [15:0]s_axis_s2mm_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST" *) input s_axis_s2mm_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID" *) input s_axis_s2mm_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY" *) output s_axis_s2mm_tready;
endmodule
