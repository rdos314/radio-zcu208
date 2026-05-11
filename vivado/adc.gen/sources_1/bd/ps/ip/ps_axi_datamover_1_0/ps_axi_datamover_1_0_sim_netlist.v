// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun May 10 23:36:34 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_1_0/ps_axi_datamover_1_0_sim_netlist.v
// Design      : ps_axi_datamover_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_axi_datamover_1_0,axi_datamover,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_datamover,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_axi_datamover_1_0
   (m_axi_s2mm_aclk,
    m_axi_s2mm_aresetn,
    s2mm_err,
    m_axis_s2mm_cmdsts_awclk,
    m_axis_s2mm_cmdsts_aresetn,
    s_axis_s2mm_cmd_tvalid,
    s_axis_s2mm_cmd_tready,
    s_axis_s2mm_cmd_tdata,
    m_axis_s2mm_sts_tvalid,
    m_axis_s2mm_sts_tready,
    m_axis_s2mm_sts_tdata,
    m_axis_s2mm_sts_tkeep,
    m_axis_s2mm_sts_tlast,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awprot,
    m_axi_s2mm_awcache,
    m_axi_s2mm_awuser,
    m_axi_s2mm_awvalid,
    m_axi_s2mm_awready,
    m_axi_s2mm_wdata,
    m_axi_s2mm_wstrb,
    m_axi_s2mm_wlast,
    m_axi_s2mm_wvalid,
    m_axi_s2mm_wready,
    m_axi_s2mm_bresp,
    m_axi_s2mm_bvalid,
    m_axi_s2mm_bready,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tlast,
    s_axis_s2mm_tvalid,
    s_axis_s2mm_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_S2MM_ACLK CLK" *) (* x_interface_mode = "slave M_AXI_S2MM_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_S2MM_ACLK, ASSOCIATED_BUSIF M_AXI_S2MM:S_AXIS_S2MM, ASSOCIATED_RESET m_axi_s2mm_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axi_s2mm_aclk;
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

  wire \<const0> ;
  wire \<const1> ;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_aresetn;
  wire [31:0]m_axi_s2mm_awaddr;
  wire [0:0]\^m_axi_s2mm_awburst ;
  wire [5:0]\^m_axi_s2mm_awlen ;
  wire m_axi_s2mm_awready;
  wire [2:2]\^m_axi_s2mm_awsize ;
  wire m_axi_s2mm_awvalid;
  wire m_axi_s2mm_bready;
  wire [1:0]m_axi_s2mm_bresp;
  wire m_axi_s2mm_bvalid;
  wire [127:0]m_axi_s2mm_wdata;
  wire m_axi_s2mm_wlast;
  wire m_axi_s2mm_wready;
  wire [15:0]m_axi_s2mm_wstrb;
  wire m_axi_s2mm_wvalid;
  wire m_axis_s2mm_cmdsts_awclk;
  wire [7:0]m_axis_s2mm_sts_tdata;
  wire m_axis_s2mm_sts_tready;
  wire m_axis_s2mm_sts_tvalid;
  wire s2mm_err;
  wire [71:0]s_axis_s2mm_cmd_tdata;
  wire s_axis_s2mm_cmd_tready;
  wire s_axis_s2mm_cmd_tvalid;
  wire [127:0]s_axis_s2mm_tdata;
  wire [15:0]s_axis_s2mm_tkeep;
  wire s_axis_s2mm_tlast;
  wire s_axis_s2mm_tready;
  wire s_axis_s2mm_tvalid;
  wire NLW_U0_m_axi_mm2s_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_mm2s_rready_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_sts_tvalid_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_tvalid_UNCONNECTED;
  wire NLW_U0_m_axis_s2mm_sts_tlast_UNCONNECTED;
  wire NLW_U0_mm2s_addr_req_posted_UNCONNECTED;
  wire NLW_U0_mm2s_err_UNCONNECTED;
  wire NLW_U0_mm2s_halt_cmplt_UNCONNECTED;
  wire NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED;
  wire NLW_U0_s2mm_addr_req_posted_UNCONNECTED;
  wire NLW_U0_s2mm_halt_cmplt_UNCONNECTED;
  wire NLW_U0_s2mm_ld_nxt_len_UNCONNECTED;
  wire NLW_U0_s2mm_wr_xfer_cmplt_UNCONNECTED;
  wire NLW_U0_s_axis_mm2s_cmd_tready_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_mm2s_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_mm2s_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_arcache_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_mm2s_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_mm2s_arprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_mm2s_arsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_aruser_UNCONNECTED;
  wire [1:1]NLW_U0_m_axi_s2mm_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_s2mm_awid_UNCONNECTED;
  wire [7:6]NLW_U0_m_axi_s2mm_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awprot_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_s2mm_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_mm2s_sts_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED;
  wire [31:0]NLW_U0_m_axis_mm2s_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_mm2s_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_s2mm_sts_tkeep_UNCONNECTED;
  wire [31:0]NLW_U0_mm2s_dbg_data_UNCONNECTED;
  wire [31:0]NLW_U0_s2mm_dbg_data_UNCONNECTED;
  wire [7:0]NLW_U0_s2mm_wr_len_UNCONNECTED;

  assign m_axi_s2mm_awburst[1] = \<const0> ;
  assign m_axi_s2mm_awburst[0] = \^m_axi_s2mm_awburst [0];
  assign m_axi_s2mm_awcache[3] = \<const0> ;
  assign m_axi_s2mm_awcache[2] = \<const0> ;
  assign m_axi_s2mm_awcache[1] = \<const1> ;
  assign m_axi_s2mm_awcache[0] = \<const1> ;
  assign m_axi_s2mm_awlen[7] = \<const0> ;
  assign m_axi_s2mm_awlen[6] = \<const0> ;
  assign m_axi_s2mm_awlen[5:0] = \^m_axi_s2mm_awlen [5:0];
  assign m_axi_s2mm_awprot[2] = \<const0> ;
  assign m_axi_s2mm_awprot[1] = \<const0> ;
  assign m_axi_s2mm_awprot[0] = \<const0> ;
  assign m_axi_s2mm_awsize[2] = \^m_axi_s2mm_awsize [2];
  assign m_axi_s2mm_awsize[1] = \<const0> ;
  assign m_axi_s2mm_awsize[0] = \<const0> ;
  assign m_axi_s2mm_awuser[3] = \<const0> ;
  assign m_axi_s2mm_awuser[2] = \<const0> ;
  assign m_axi_s2mm_awuser[1] = \<const0> ;
  assign m_axi_s2mm_awuser[0] = \<const0> ;
  assign m_axis_s2mm_sts_tkeep[0] = \<const1> ;
  assign m_axis_s2mm_sts_tlast = \<const1> ;
  GND GND
       (.G(\<const0> ));
  (* C_CMD_WIDTH = "72" *) 
  (* C_ENABLE_CACHE_USER = "0" *) 
  (* C_ENABLE_MM2S_ADV_SIG = "0" *) 
  (* C_ENABLE_MM2S_TKEEP = "1" *) 
  (* C_ENABLE_S2MM_ADV_SIG = "0" *) 
  (* C_ENABLE_S2MM_TKEEP = "1" *) 
  (* C_ENABLE_SKID_BUF = "11111" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_INCLUDE_MM2S = "0" *) 
  (* C_INCLUDE_MM2S_DRE = "0" *) 
  (* C_INCLUDE_MM2S_STSFIFO = "0" *) 
  (* C_INCLUDE_S2MM = "1" *) 
  (* C_INCLUDE_S2MM_DRE = "0" *) 
  (* C_INCLUDE_S2MM_STSFIFO = "1" *) 
  (* C_MCDMA = "0" *) 
  (* C_MICRO_DMA = "0" *) 
  (* C_MM2S_ADDR_PIPE_DEPTH = "3" *) 
  (* C_MM2S_BTT_USED = "16" *) 
  (* C_MM2S_BURST_SIZE = "16" *) 
  (* C_MM2S_INCLUDE_SF = "0" *) 
  (* C_MM2S_STSCMD_FIFO_DEPTH = "4" *) 
  (* C_MM2S_STSCMD_IS_ASYNC = "0" *) 
  (* C_M_AXIS_MM2S_TDATA_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_ARID = "0" *) 
  (* C_M_AXI_MM2S_DATA_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_ID_WIDTH = "4" *) 
  (* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_S2MM_AWID = "0" *) 
  (* C_M_AXI_S2MM_DATA_WIDTH = "128" *) 
  (* C_M_AXI_S2MM_ID_WIDTH = "1" *) 
  (* C_S2MM_ADDR_PIPE_DEPTH = "4" *) 
  (* C_S2MM_BTT_USED = "16" *) 
  (* C_S2MM_BURST_SIZE = "64" *) 
  (* C_S2MM_INCLUDE_SF = "0" *) 
  (* C_S2MM_STSCMD_FIFO_DEPTH = "4" *) 
  (* C_S2MM_STSCMD_IS_ASYNC = "0" *) 
  (* C_S2MM_SUPPORT_INDET_BTT = "0" *) 
  (* C_S_AXIS_S2MM_TDATA_WIDTH = "128" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ps_axi_datamover_1_0_axi_datamover U0
       (.m_axi_mm2s_aclk(1'b0),
        .m_axi_mm2s_araddr(NLW_U0_m_axi_mm2s_araddr_UNCONNECTED[31:0]),
        .m_axi_mm2s_arburst(NLW_U0_m_axi_mm2s_arburst_UNCONNECTED[1:0]),
        .m_axi_mm2s_arcache(NLW_U0_m_axi_mm2s_arcache_UNCONNECTED[3:0]),
        .m_axi_mm2s_aresetn(1'b1),
        .m_axi_mm2s_arid(NLW_U0_m_axi_mm2s_arid_UNCONNECTED[3:0]),
        .m_axi_mm2s_arlen(NLW_U0_m_axi_mm2s_arlen_UNCONNECTED[7:0]),
        .m_axi_mm2s_arprot(NLW_U0_m_axi_mm2s_arprot_UNCONNECTED[2:0]),
        .m_axi_mm2s_arready(1'b0),
        .m_axi_mm2s_arsize(NLW_U0_m_axi_mm2s_arsize_UNCONNECTED[2:0]),
        .m_axi_mm2s_aruser(NLW_U0_m_axi_mm2s_aruser_UNCONNECTED[3:0]),
        .m_axi_mm2s_arvalid(NLW_U0_m_axi_mm2s_arvalid_UNCONNECTED),
        .m_axi_mm2s_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_mm2s_rlast(1'b0),
        .m_axi_mm2s_rready(NLW_U0_m_axi_mm2s_rready_UNCONNECTED),
        .m_axi_mm2s_rresp({1'b0,1'b0}),
        .m_axi_mm2s_rvalid(1'b0),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_aresetn(m_axi_s2mm_aresetn),
        .m_axi_s2mm_awaddr(m_axi_s2mm_awaddr),
        .m_axi_s2mm_awburst({NLW_U0_m_axi_s2mm_awburst_UNCONNECTED[1],\^m_axi_s2mm_awburst }),
        .m_axi_s2mm_awcache(NLW_U0_m_axi_s2mm_awcache_UNCONNECTED[3:0]),
        .m_axi_s2mm_awid(NLW_U0_m_axi_s2mm_awid_UNCONNECTED[0]),
        .m_axi_s2mm_awlen({NLW_U0_m_axi_s2mm_awlen_UNCONNECTED[7:6],\^m_axi_s2mm_awlen }),
        .m_axi_s2mm_awprot(NLW_U0_m_axi_s2mm_awprot_UNCONNECTED[2:0]),
        .m_axi_s2mm_awready(m_axi_s2mm_awready),
        .m_axi_s2mm_awsize({\^m_axi_s2mm_awsize ,NLW_U0_m_axi_s2mm_awsize_UNCONNECTED[1:0]}),
        .m_axi_s2mm_awuser(NLW_U0_m_axi_s2mm_awuser_UNCONNECTED[3:0]),
        .m_axi_s2mm_awvalid(m_axi_s2mm_awvalid),
        .m_axi_s2mm_bready(m_axi_s2mm_bready),
        .m_axi_s2mm_bresp(m_axi_s2mm_bresp),
        .m_axi_s2mm_bvalid(m_axi_s2mm_bvalid),
        .m_axi_s2mm_wdata(m_axi_s2mm_wdata),
        .m_axi_s2mm_wlast(m_axi_s2mm_wlast),
        .m_axi_s2mm_wready(m_axi_s2mm_wready),
        .m_axi_s2mm_wstrb(m_axi_s2mm_wstrb),
        .m_axi_s2mm_wvalid(m_axi_s2mm_wvalid),
        .m_axis_mm2s_cmdsts_aclk(1'b0),
        .m_axis_mm2s_cmdsts_aresetn(1'b1),
        .m_axis_mm2s_sts_tdata(NLW_U0_m_axis_mm2s_sts_tdata_UNCONNECTED[7:0]),
        .m_axis_mm2s_sts_tkeep(NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED[0]),
        .m_axis_mm2s_sts_tlast(NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED),
        .m_axis_mm2s_sts_tready(1'b0),
        .m_axis_mm2s_sts_tvalid(NLW_U0_m_axis_mm2s_sts_tvalid_UNCONNECTED),
        .m_axis_mm2s_tdata(NLW_U0_m_axis_mm2s_tdata_UNCONNECTED[31:0]),
        .m_axis_mm2s_tkeep(NLW_U0_m_axis_mm2s_tkeep_UNCONNECTED[3:0]),
        .m_axis_mm2s_tlast(NLW_U0_m_axis_mm2s_tlast_UNCONNECTED),
        .m_axis_mm2s_tready(1'b0),
        .m_axis_mm2s_tvalid(NLW_U0_m_axis_mm2s_tvalid_UNCONNECTED),
        .m_axis_s2mm_cmdsts_aresetn(1'b0),
        .m_axis_s2mm_cmdsts_awclk(m_axis_s2mm_cmdsts_awclk),
        .m_axis_s2mm_sts_tdata(m_axis_s2mm_sts_tdata),
        .m_axis_s2mm_sts_tkeep(NLW_U0_m_axis_s2mm_sts_tkeep_UNCONNECTED[0]),
        .m_axis_s2mm_sts_tlast(NLW_U0_m_axis_s2mm_sts_tlast_UNCONNECTED),
        .m_axis_s2mm_sts_tready(m_axis_s2mm_sts_tready),
        .m_axis_s2mm_sts_tvalid(m_axis_s2mm_sts_tvalid),
        .mm2s_addr_req_posted(NLW_U0_mm2s_addr_req_posted_UNCONNECTED),
        .mm2s_allow_addr_req(1'b1),
        .mm2s_dbg_data(NLW_U0_mm2s_dbg_data_UNCONNECTED[31:0]),
        .mm2s_dbg_sel({1'b0,1'b0,1'b0,1'b0}),
        .mm2s_err(NLW_U0_mm2s_err_UNCONNECTED),
        .mm2s_halt(1'b0),
        .mm2s_halt_cmplt(NLW_U0_mm2s_halt_cmplt_UNCONNECTED),
        .mm2s_rd_xfer_cmplt(NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED),
        .s2mm_addr_req_posted(NLW_U0_s2mm_addr_req_posted_UNCONNECTED),
        .s2mm_allow_addr_req(1'b1),
        .s2mm_dbg_data(NLW_U0_s2mm_dbg_data_UNCONNECTED[31:0]),
        .s2mm_dbg_sel({1'b0,1'b0,1'b0,1'b0}),
        .s2mm_err(s2mm_err),
        .s2mm_halt(1'b0),
        .s2mm_halt_cmplt(NLW_U0_s2mm_halt_cmplt_UNCONNECTED),
        .s2mm_ld_nxt_len(NLW_U0_s2mm_ld_nxt_len_UNCONNECTED),
        .s2mm_wr_len(NLW_U0_s2mm_wr_len_UNCONNECTED[7:0]),
        .s2mm_wr_xfer_cmplt(NLW_U0_s2mm_wr_xfer_cmplt_UNCONNECTED),
        .s_axis_mm2s_cmd_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_mm2s_cmd_tready(NLW_U0_s_axis_mm2s_cmd_tready_UNCONNECTED),
        .s_axis_mm2s_cmd_tvalid(1'b0),
        .s_axis_s2mm_cmd_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_s2mm_cmd_tdata[67:32],1'b0,s_axis_s2mm_cmd_tdata[30],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_s2mm_cmd_tdata[23],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_s2mm_cmd_tdata[15:0]}),
        .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready),
        .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid),
        .s_axis_s2mm_tdata(s_axis_s2mm_tdata),
        .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep),
        .s_axis_s2mm_tlast(s_axis_s2mm_tlast),
        .s_axis_s2mm_tready(s_axis_s2mm_tready),
        .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* C_CMD_WIDTH = "72" *) (* C_ENABLE_CACHE_USER = "0" *) (* C_ENABLE_MM2S_ADV_SIG = "0" *) 
(* C_ENABLE_MM2S_TKEEP = "1" *) (* C_ENABLE_S2MM_ADV_SIG = "0" *) (* C_ENABLE_S2MM_TKEEP = "1" *) 
(* C_ENABLE_SKID_BUF = "11111" *) (* C_FAMILY = "zynquplus" *) (* C_INCLUDE_MM2S = "0" *) 
(* C_INCLUDE_MM2S_DRE = "0" *) (* C_INCLUDE_MM2S_STSFIFO = "0" *) (* C_INCLUDE_S2MM = "1" *) 
(* C_INCLUDE_S2MM_DRE = "0" *) (* C_INCLUDE_S2MM_STSFIFO = "1" *) (* C_MCDMA = "0" *) 
(* C_MICRO_DMA = "0" *) (* C_MM2S_ADDR_PIPE_DEPTH = "3" *) (* C_MM2S_BTT_USED = "16" *) 
(* C_MM2S_BURST_SIZE = "16" *) (* C_MM2S_INCLUDE_SF = "0" *) (* C_MM2S_STSCMD_FIFO_DEPTH = "4" *) 
(* C_MM2S_STSCMD_IS_ASYNC = "0" *) (* C_M_AXIS_MM2S_TDATA_WIDTH = "32" *) (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) 
(* C_M_AXI_MM2S_ARID = "0" *) (* C_M_AXI_MM2S_DATA_WIDTH = "32" *) (* C_M_AXI_MM2S_ID_WIDTH = "4" *) 
(* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) (* C_M_AXI_S2MM_AWID = "0" *) (* C_M_AXI_S2MM_DATA_WIDTH = "128" *) 
(* C_M_AXI_S2MM_ID_WIDTH = "1" *) (* C_S2MM_ADDR_PIPE_DEPTH = "4" *) (* C_S2MM_BTT_USED = "16" *) 
(* C_S2MM_BURST_SIZE = "64" *) (* C_S2MM_INCLUDE_SF = "0" *) (* C_S2MM_STSCMD_FIFO_DEPTH = "4" *) 
(* C_S2MM_STSCMD_IS_ASYNC = "0" *) (* C_S2MM_SUPPORT_INDET_BTT = "0" *) (* C_S_AXIS_S2MM_TDATA_WIDTH = "128" *) 
(* ORIG_REF_NAME = "axi_datamover" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ps_axi_datamover_1_0_axi_datamover
   (m_axi_mm2s_aclk,
    m_axi_mm2s_aresetn,
    mm2s_halt,
    mm2s_halt_cmplt,
    mm2s_err,
    m_axis_mm2s_cmdsts_aclk,
    m_axis_mm2s_cmdsts_aresetn,
    s_axis_mm2s_cmd_tvalid,
    s_axis_mm2s_cmd_tready,
    s_axis_mm2s_cmd_tdata,
    m_axis_mm2s_sts_tvalid,
    m_axis_mm2s_sts_tready,
    m_axis_mm2s_sts_tdata,
    m_axis_mm2s_sts_tkeep,
    m_axis_mm2s_sts_tlast,
    mm2s_allow_addr_req,
    mm2s_addr_req_posted,
    mm2s_rd_xfer_cmplt,
    m_axi_mm2s_arid,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arprot,
    m_axi_mm2s_arcache,
    m_axi_mm2s_aruser,
    m_axi_mm2s_arvalid,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    m_axi_mm2s_rresp,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rready,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tlast,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    mm2s_dbg_sel,
    mm2s_dbg_data,
    m_axi_s2mm_aclk,
    m_axi_s2mm_aresetn,
    s2mm_halt,
    s2mm_halt_cmplt,
    s2mm_err,
    m_axis_s2mm_cmdsts_awclk,
    m_axis_s2mm_cmdsts_aresetn,
    s_axis_s2mm_cmd_tvalid,
    s_axis_s2mm_cmd_tready,
    s_axis_s2mm_cmd_tdata,
    m_axis_s2mm_sts_tvalid,
    m_axis_s2mm_sts_tready,
    m_axis_s2mm_sts_tdata,
    m_axis_s2mm_sts_tkeep,
    m_axis_s2mm_sts_tlast,
    s2mm_allow_addr_req,
    s2mm_addr_req_posted,
    s2mm_wr_xfer_cmplt,
    s2mm_ld_nxt_len,
    s2mm_wr_len,
    m_axi_s2mm_awid,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awprot,
    m_axi_s2mm_awcache,
    m_axi_s2mm_awuser,
    m_axi_s2mm_awvalid,
    m_axi_s2mm_awready,
    m_axi_s2mm_wdata,
    m_axi_s2mm_wstrb,
    m_axi_s2mm_wlast,
    m_axi_s2mm_wvalid,
    m_axi_s2mm_wready,
    m_axi_s2mm_bresp,
    m_axi_s2mm_bvalid,
    m_axi_s2mm_bready,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tlast,
    s_axis_s2mm_tvalid,
    s_axis_s2mm_tready,
    s2mm_dbg_sel,
    s2mm_dbg_data);
  input m_axi_mm2s_aclk;
  input m_axi_mm2s_aresetn;
  input mm2s_halt;
  output mm2s_halt_cmplt;
  output mm2s_err;
  (* dont_touch = "true" *) input m_axis_mm2s_cmdsts_aclk;
  input m_axis_mm2s_cmdsts_aresetn;
  input s_axis_mm2s_cmd_tvalid;
  output s_axis_mm2s_cmd_tready;
  input [71:0]s_axis_mm2s_cmd_tdata;
  output m_axis_mm2s_sts_tvalid;
  input m_axis_mm2s_sts_tready;
  output [7:0]m_axis_mm2s_sts_tdata;
  output [0:0]m_axis_mm2s_sts_tkeep;
  output m_axis_mm2s_sts_tlast;
  input mm2s_allow_addr_req;
  output mm2s_addr_req_posted;
  output mm2s_rd_xfer_cmplt;
  output [3:0]m_axi_mm2s_arid;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output [3:0]m_axi_mm2s_aruser;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [31:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output [31:0]m_axis_mm2s_tdata;
  output [3:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tlast;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  input [3:0]mm2s_dbg_sel;
  output [31:0]mm2s_dbg_data;
  input m_axi_s2mm_aclk;
  input m_axi_s2mm_aresetn;
  input s2mm_halt;
  output s2mm_halt_cmplt;
  output s2mm_err;
  (* dont_touch = "true" *) input m_axis_s2mm_cmdsts_awclk;
  input m_axis_s2mm_cmdsts_aresetn;
  input s_axis_s2mm_cmd_tvalid;
  output s_axis_s2mm_cmd_tready;
  input [71:0]s_axis_s2mm_cmd_tdata;
  output m_axis_s2mm_sts_tvalid;
  input m_axis_s2mm_sts_tready;
  output [7:0]m_axis_s2mm_sts_tdata;
  output [0:0]m_axis_s2mm_sts_tkeep;
  output m_axis_s2mm_sts_tlast;
  input s2mm_allow_addr_req;
  output s2mm_addr_req_posted;
  output s2mm_wr_xfer_cmplt;
  output s2mm_ld_nxt_len;
  output [7:0]s2mm_wr_len;
  output [0:0]m_axi_s2mm_awid;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output [3:0]m_axi_s2mm_awuser;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [127:0]m_axi_s2mm_wdata;
  output [15:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  input [127:0]s_axis_s2mm_tdata;
  input [15:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tlast;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input [3:0]s2mm_dbg_sel;
  output [31:0]s2mm_dbg_data;

  wire \<const0> ;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_aresetn;
  wire [31:0]m_axi_s2mm_awaddr;
  wire [0:0]\^m_axi_s2mm_awburst ;
  wire [5:0]\^m_axi_s2mm_awlen ;
  wire m_axi_s2mm_awready;
  wire [2:2]\^m_axi_s2mm_awsize ;
  wire m_axi_s2mm_awvalid;
  wire m_axi_s2mm_bready;
  wire [1:0]m_axi_s2mm_bresp;
  wire m_axi_s2mm_bvalid;
  wire [127:0]m_axi_s2mm_wdata;
  wire m_axi_s2mm_wlast;
  wire m_axi_s2mm_wready;
  wire [15:0]m_axi_s2mm_wstrb;
  wire m_axi_s2mm_wvalid;
  (* DONT_TOUCH *) wire m_axis_mm2s_cmdsts_aclk;
  (* DONT_TOUCH *) wire m_axis_s2mm_cmdsts_awclk;
  wire [7:0]m_axis_s2mm_sts_tdata;
  wire m_axis_s2mm_sts_tready;
  wire m_axis_s2mm_sts_tvalid;
  wire s2mm_addr_req_posted;
  wire s2mm_err;
  wire [71:0]s_axis_s2mm_cmd_tdata;
  wire s_axis_s2mm_cmd_tready;
  wire s_axis_s2mm_cmd_tvalid;
  wire [127:0]s_axis_s2mm_tdata;
  wire [15:0]s_axis_s2mm_tkeep;
  wire s_axis_s2mm_tlast;
  wire s_axis_s2mm_tready;
  wire s_axis_s2mm_tvalid;

  assign m_axi_mm2s_araddr[31] = \<const0> ;
  assign m_axi_mm2s_araddr[30] = \<const0> ;
  assign m_axi_mm2s_araddr[29] = \<const0> ;
  assign m_axi_mm2s_araddr[28] = \<const0> ;
  assign m_axi_mm2s_araddr[27] = \<const0> ;
  assign m_axi_mm2s_araddr[26] = \<const0> ;
  assign m_axi_mm2s_araddr[25] = \<const0> ;
  assign m_axi_mm2s_araddr[24] = \<const0> ;
  assign m_axi_mm2s_araddr[23] = \<const0> ;
  assign m_axi_mm2s_araddr[22] = \<const0> ;
  assign m_axi_mm2s_araddr[21] = \<const0> ;
  assign m_axi_mm2s_araddr[20] = \<const0> ;
  assign m_axi_mm2s_araddr[19] = \<const0> ;
  assign m_axi_mm2s_araddr[18] = \<const0> ;
  assign m_axi_mm2s_araddr[17] = \<const0> ;
  assign m_axi_mm2s_araddr[16] = \<const0> ;
  assign m_axi_mm2s_araddr[15] = \<const0> ;
  assign m_axi_mm2s_araddr[14] = \<const0> ;
  assign m_axi_mm2s_araddr[13] = \<const0> ;
  assign m_axi_mm2s_araddr[12] = \<const0> ;
  assign m_axi_mm2s_araddr[11] = \<const0> ;
  assign m_axi_mm2s_araddr[10] = \<const0> ;
  assign m_axi_mm2s_araddr[9] = \<const0> ;
  assign m_axi_mm2s_araddr[8] = \<const0> ;
  assign m_axi_mm2s_araddr[7] = \<const0> ;
  assign m_axi_mm2s_araddr[6] = \<const0> ;
  assign m_axi_mm2s_araddr[5] = \<const0> ;
  assign m_axi_mm2s_araddr[4] = \<const0> ;
  assign m_axi_mm2s_araddr[3] = \<const0> ;
  assign m_axi_mm2s_araddr[2] = \<const0> ;
  assign m_axi_mm2s_araddr[1] = \<const0> ;
  assign m_axi_mm2s_araddr[0] = \<const0> ;
  assign m_axi_mm2s_arburst[1] = \<const0> ;
  assign m_axi_mm2s_arburst[0] = \<const0> ;
  assign m_axi_mm2s_arcache[3] = \<const0> ;
  assign m_axi_mm2s_arcache[2] = \<const0> ;
  assign m_axi_mm2s_arcache[1] = \<const0> ;
  assign m_axi_mm2s_arcache[0] = \<const0> ;
  assign m_axi_mm2s_arid[3] = \<const0> ;
  assign m_axi_mm2s_arid[2] = \<const0> ;
  assign m_axi_mm2s_arid[1] = \<const0> ;
  assign m_axi_mm2s_arid[0] = \<const0> ;
  assign m_axi_mm2s_arlen[7] = \<const0> ;
  assign m_axi_mm2s_arlen[6] = \<const0> ;
  assign m_axi_mm2s_arlen[5] = \<const0> ;
  assign m_axi_mm2s_arlen[4] = \<const0> ;
  assign m_axi_mm2s_arlen[3] = \<const0> ;
  assign m_axi_mm2s_arlen[2] = \<const0> ;
  assign m_axi_mm2s_arlen[1] = \<const0> ;
  assign m_axi_mm2s_arlen[0] = \<const0> ;
  assign m_axi_mm2s_arprot[2] = \<const0> ;
  assign m_axi_mm2s_arprot[1] = \<const0> ;
  assign m_axi_mm2s_arprot[0] = \<const0> ;
  assign m_axi_mm2s_arsize[2] = \<const0> ;
  assign m_axi_mm2s_arsize[1] = \<const0> ;
  assign m_axi_mm2s_arsize[0] = \<const0> ;
  assign m_axi_mm2s_aruser[3] = \<const0> ;
  assign m_axi_mm2s_aruser[2] = \<const0> ;
  assign m_axi_mm2s_aruser[1] = \<const0> ;
  assign m_axi_mm2s_aruser[0] = \<const0> ;
  assign m_axi_mm2s_arvalid = \<const0> ;
  assign m_axi_mm2s_rready = \<const0> ;
  assign m_axi_s2mm_awburst[1] = \<const0> ;
  assign m_axi_s2mm_awburst[0] = \^m_axi_s2mm_awburst [0];
  assign m_axi_s2mm_awcache[3] = \<const0> ;
  assign m_axi_s2mm_awcache[2] = \<const0> ;
  assign m_axi_s2mm_awcache[1] = \<const0> ;
  assign m_axi_s2mm_awcache[0] = \<const0> ;
  assign m_axi_s2mm_awid[0] = \<const0> ;
  assign m_axi_s2mm_awlen[7] = \<const0> ;
  assign m_axi_s2mm_awlen[6] = \<const0> ;
  assign m_axi_s2mm_awlen[5:0] = \^m_axi_s2mm_awlen [5:0];
  assign m_axi_s2mm_awprot[2] = \<const0> ;
  assign m_axi_s2mm_awprot[1] = \<const0> ;
  assign m_axi_s2mm_awprot[0] = \<const0> ;
  assign m_axi_s2mm_awsize[2] = \^m_axi_s2mm_awsize [2];
  assign m_axi_s2mm_awsize[1] = \<const0> ;
  assign m_axi_s2mm_awsize[0] = \<const0> ;
  assign m_axi_s2mm_awuser[3] = \<const0> ;
  assign m_axi_s2mm_awuser[2] = \<const0> ;
  assign m_axi_s2mm_awuser[1] = \<const0> ;
  assign m_axi_s2mm_awuser[0] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[7] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[6] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[5] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[4] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[3] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[2] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[1] = \<const0> ;
  assign m_axis_mm2s_sts_tdata[0] = \<const0> ;
  assign m_axis_mm2s_sts_tkeep[0] = \<const0> ;
  assign m_axis_mm2s_sts_tlast = \<const0> ;
  assign m_axis_mm2s_sts_tvalid = \<const0> ;
  assign m_axis_mm2s_tdata[31] = \<const0> ;
  assign m_axis_mm2s_tdata[30] = \<const0> ;
  assign m_axis_mm2s_tdata[29] = \<const0> ;
  assign m_axis_mm2s_tdata[28] = \<const0> ;
  assign m_axis_mm2s_tdata[27] = \<const0> ;
  assign m_axis_mm2s_tdata[26] = \<const0> ;
  assign m_axis_mm2s_tdata[25] = \<const0> ;
  assign m_axis_mm2s_tdata[24] = \<const0> ;
  assign m_axis_mm2s_tdata[23] = \<const0> ;
  assign m_axis_mm2s_tdata[22] = \<const0> ;
  assign m_axis_mm2s_tdata[21] = \<const0> ;
  assign m_axis_mm2s_tdata[20] = \<const0> ;
  assign m_axis_mm2s_tdata[19] = \<const0> ;
  assign m_axis_mm2s_tdata[18] = \<const0> ;
  assign m_axis_mm2s_tdata[17] = \<const0> ;
  assign m_axis_mm2s_tdata[16] = \<const0> ;
  assign m_axis_mm2s_tdata[15] = \<const0> ;
  assign m_axis_mm2s_tdata[14] = \<const0> ;
  assign m_axis_mm2s_tdata[13] = \<const0> ;
  assign m_axis_mm2s_tdata[12] = \<const0> ;
  assign m_axis_mm2s_tdata[11] = \<const0> ;
  assign m_axis_mm2s_tdata[10] = \<const0> ;
  assign m_axis_mm2s_tdata[9] = \<const0> ;
  assign m_axis_mm2s_tdata[8] = \<const0> ;
  assign m_axis_mm2s_tdata[7] = \<const0> ;
  assign m_axis_mm2s_tdata[6] = \<const0> ;
  assign m_axis_mm2s_tdata[5] = \<const0> ;
  assign m_axis_mm2s_tdata[4] = \<const0> ;
  assign m_axis_mm2s_tdata[3] = \<const0> ;
  assign m_axis_mm2s_tdata[2] = \<const0> ;
  assign m_axis_mm2s_tdata[1] = \<const0> ;
  assign m_axis_mm2s_tdata[0] = \<const0> ;
  assign m_axis_mm2s_tkeep[3] = \<const0> ;
  assign m_axis_mm2s_tkeep[2] = \<const0> ;
  assign m_axis_mm2s_tkeep[1] = \<const0> ;
  assign m_axis_mm2s_tkeep[0] = \<const0> ;
  assign m_axis_mm2s_tlast = \<const0> ;
  assign m_axis_mm2s_tvalid = \<const0> ;
  assign m_axis_s2mm_sts_tkeep[0] = \<const0> ;
  assign m_axis_s2mm_sts_tlast = \<const0> ;
  assign mm2s_addr_req_posted = \<const0> ;
  assign mm2s_dbg_data[31] = \<const0> ;
  assign mm2s_dbg_data[30] = \<const0> ;
  assign mm2s_dbg_data[29] = \<const0> ;
  assign mm2s_dbg_data[28] = \<const0> ;
  assign mm2s_dbg_data[27] = \<const0> ;
  assign mm2s_dbg_data[26] = \<const0> ;
  assign mm2s_dbg_data[25] = \<const0> ;
  assign mm2s_dbg_data[24] = \<const0> ;
  assign mm2s_dbg_data[23] = \<const0> ;
  assign mm2s_dbg_data[22] = \<const0> ;
  assign mm2s_dbg_data[21] = \<const0> ;
  assign mm2s_dbg_data[20] = \<const0> ;
  assign mm2s_dbg_data[19] = \<const0> ;
  assign mm2s_dbg_data[18] = \<const0> ;
  assign mm2s_dbg_data[17] = \<const0> ;
  assign mm2s_dbg_data[16] = \<const0> ;
  assign mm2s_dbg_data[15] = \<const0> ;
  assign mm2s_dbg_data[14] = \<const0> ;
  assign mm2s_dbg_data[13] = \<const0> ;
  assign mm2s_dbg_data[12] = \<const0> ;
  assign mm2s_dbg_data[11] = \<const0> ;
  assign mm2s_dbg_data[10] = \<const0> ;
  assign mm2s_dbg_data[9] = \<const0> ;
  assign mm2s_dbg_data[8] = \<const0> ;
  assign mm2s_dbg_data[7] = \<const0> ;
  assign mm2s_dbg_data[6] = \<const0> ;
  assign mm2s_dbg_data[5] = \<const0> ;
  assign mm2s_dbg_data[4] = \<const0> ;
  assign mm2s_dbg_data[3] = \<const0> ;
  assign mm2s_dbg_data[2] = \<const0> ;
  assign mm2s_dbg_data[1] = \<const0> ;
  assign mm2s_dbg_data[0] = \<const0> ;
  assign mm2s_err = \<const0> ;
  assign mm2s_halt_cmplt = \<const0> ;
  assign mm2s_rd_xfer_cmplt = \<const0> ;
  assign s2mm_dbg_data[31] = \<const0> ;
  assign s2mm_dbg_data[30] = \<const0> ;
  assign s2mm_dbg_data[29] = \<const0> ;
  assign s2mm_dbg_data[28] = \<const0> ;
  assign s2mm_dbg_data[27] = \<const0> ;
  assign s2mm_dbg_data[26] = \<const0> ;
  assign s2mm_dbg_data[25] = \<const0> ;
  assign s2mm_dbg_data[24] = \<const0> ;
  assign s2mm_dbg_data[23] = \<const0> ;
  assign s2mm_dbg_data[22] = \<const0> ;
  assign s2mm_dbg_data[21] = \<const0> ;
  assign s2mm_dbg_data[20] = \<const0> ;
  assign s2mm_dbg_data[19] = \<const0> ;
  assign s2mm_dbg_data[18] = \<const0> ;
  assign s2mm_dbg_data[17] = \<const0> ;
  assign s2mm_dbg_data[16] = \<const0> ;
  assign s2mm_dbg_data[15] = \<const0> ;
  assign s2mm_dbg_data[14] = \<const0> ;
  assign s2mm_dbg_data[13] = \<const0> ;
  assign s2mm_dbg_data[12] = \<const0> ;
  assign s2mm_dbg_data[11] = \<const0> ;
  assign s2mm_dbg_data[10] = \<const0> ;
  assign s2mm_dbg_data[9] = \<const0> ;
  assign s2mm_dbg_data[8] = \<const0> ;
  assign s2mm_dbg_data[7] = \<const0> ;
  assign s2mm_dbg_data[6] = \<const0> ;
  assign s2mm_dbg_data[5] = \<const0> ;
  assign s2mm_dbg_data[4] = \<const0> ;
  assign s2mm_dbg_data[3] = \<const0> ;
  assign s2mm_dbg_data[2] = \<const0> ;
  assign s2mm_dbg_data[1] = \<const0> ;
  assign s2mm_dbg_data[0] = \<const0> ;
  assign s2mm_halt_cmplt = \<const0> ;
  assign s2mm_ld_nxt_len = \<const0> ;
  assign s2mm_wr_len[7] = \<const0> ;
  assign s2mm_wr_len[6] = \<const0> ;
  assign s2mm_wr_len[5] = \<const0> ;
  assign s2mm_wr_len[4] = \<const0> ;
  assign s2mm_wr_len[3] = \<const0> ;
  assign s2mm_wr_len[2] = \<const0> ;
  assign s2mm_wr_len[1] = \<const0> ;
  assign s2mm_wr_len[0] = \<const0> ;
  assign s2mm_wr_xfer_cmplt = \<const0> ;
  assign s_axis_mm2s_cmd_tready = \<const0> ;
  ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap \GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER 
       (.m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_aresetn(m_axi_s2mm_aresetn),
        .m_axi_s2mm_awaddr(m_axi_s2mm_awaddr),
        .m_axi_s2mm_awburst(\^m_axi_s2mm_awburst ),
        .m_axi_s2mm_awlen(\^m_axi_s2mm_awlen ),
        .m_axi_s2mm_awready(m_axi_s2mm_awready),
        .m_axi_s2mm_awsize(\^m_axi_s2mm_awsize ),
        .m_axi_s2mm_awvalid(m_axi_s2mm_awvalid),
        .m_axi_s2mm_bready(m_axi_s2mm_bready),
        .m_axi_s2mm_bresp(m_axi_s2mm_bresp),
        .m_axi_s2mm_bvalid(m_axi_s2mm_bvalid),
        .m_axi_s2mm_wdata(m_axi_s2mm_wdata),
        .m_axi_s2mm_wlast(m_axi_s2mm_wlast),
        .m_axi_s2mm_wready(m_axi_s2mm_wready),
        .m_axi_s2mm_wstrb(m_axi_s2mm_wstrb),
        .m_axi_s2mm_wvalid(m_axi_s2mm_wvalid),
        .m_axis_s2mm_sts_tdata(m_axis_s2mm_sts_tdata),
        .m_axis_s2mm_sts_tready(m_axis_s2mm_sts_tready),
        .m_axis_s2mm_sts_tvalid(m_axis_s2mm_sts_tvalid),
        .s2mm_addr_req_posted(s2mm_addr_req_posted),
        .s2mm_err(s2mm_err),
        .s_axis_s2mm_cmd_tdata({s_axis_s2mm_cmd_tdata[67:32],s_axis_s2mm_cmd_tdata[30],s_axis_s2mm_cmd_tdata[23],s_axis_s2mm_cmd_tdata[15:0]}),
        .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready),
        .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid),
        .s_axis_s2mm_tdata(s_axis_s2mm_tdata),
        .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep),
        .s_axis_s2mm_tlast(s_axis_s2mm_tlast),
        .s_axis_s2mm_tready(s_axis_s2mm_tready),
        .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_addr_cntl" *) 
module ps_axi_datamover_1_0_axi_datamover_addr_cntl
   (s2mm_addr_req_posted,
    out,
    FIFO_Full_reg,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awvalid,
    sig_init_reg2,
    sig_inhibit_rdy_n,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    SR,
    m_axi_s2mm_aclk,
    sig_mmap_reset_reg,
    sig_mmap_rst_reg_n,
    sig_data2all_tlast_error,
    sig_mstr2addr_cmd_valid,
    m_axi_s2mm_awready,
    in);
  output s2mm_addr_req_posted;
  output out;
  output FIFO_Full_reg;
  output [0:0]m_axi_s2mm_awsize;
  output [0:0]m_axi_s2mm_awburst;
  output m_axi_s2mm_awvalid;
  output sig_init_reg2;
  output sig_inhibit_rdy_n;
  output [31:0]m_axi_s2mm_awaddr;
  output [5:0]m_axi_s2mm_awlen;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_mmap_reset_reg;
  input sig_mmap_rst_reg_n;
  input sig_data2all_tlast_error;
  input sig_mstr2addr_cmd_valid;
  input m_axi_s2mm_awready;
  input [39:0]in;

  wire FIFO_Full_reg;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ;
  wire [0:0]SR;
  wire [39:0]in;
  wire m_axi_s2mm_aclk;
  wire [31:0]m_axi_s2mm_awaddr;
  wire [0:0]m_axi_s2mm_awburst;
  wire [5:0]m_axi_s2mm_awlen;
  wire m_axi_s2mm_awready;
  wire [0:0]m_axi_s2mm_awsize;
  wire m_axi_s2mm_awvalid;
  wire p_0_in;
  wire sig_addr2wsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire [50:4]sig_aq_fifo_data_out;
  wire sig_data2all_tlast_error;
  wire sig_inhibit_rdy_n;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_next_addr_reg0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;

  assign out = sig_posted_to_axi;
  assign s2mm_addr_req_posted = sig_posted_to_axi_2;
  ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .SR(SR),
        .\addr_i_reg[2] (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ),
        .in(in),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out({sig_aq_fifo_data_out[50],sig_aq_fifo_data_out[47:46],sig_aq_fifo_data_out[41:4]}),
        .p_0_in(p_0_in),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_data2all_tlast_error(sig_data2all_tlast_error),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_reg2(sig_init_reg2),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(sig_addr_reg_full),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_0_in),
        .Q(m_axi_s2mm_awvalid),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[50]),
        .Q(sig_addr2wsc_calc_error),
        .R(sig_next_addr_reg0));
  LUT4 #(
    .INIT(16'h40FF)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(sig_addr2wsc_calc_error),
        .I1(sig_addr_reg_full),
        .I2(m_axi_s2mm_awready),
        .I3(sig_mmap_rst_reg_n),
        .O(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[4]),
        .Q(m_axi_s2mm_awaddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[14]),
        .Q(m_axi_s2mm_awaddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[15]),
        .Q(m_axi_s2mm_awaddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[16]),
        .Q(m_axi_s2mm_awaddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[17]),
        .Q(m_axi_s2mm_awaddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[18]),
        .Q(m_axi_s2mm_awaddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[19]),
        .Q(m_axi_s2mm_awaddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[20]),
        .Q(m_axi_s2mm_awaddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[21]),
        .Q(m_axi_s2mm_awaddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[22]),
        .Q(m_axi_s2mm_awaddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[23]),
        .Q(m_axi_s2mm_awaddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[5]),
        .Q(m_axi_s2mm_awaddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[24]),
        .Q(m_axi_s2mm_awaddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[25]),
        .Q(m_axi_s2mm_awaddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[26]),
        .Q(m_axi_s2mm_awaddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[27]),
        .Q(m_axi_s2mm_awaddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[28]),
        .Q(m_axi_s2mm_awaddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[29]),
        .Q(m_axi_s2mm_awaddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[30]),
        .Q(m_axi_s2mm_awaddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[31]),
        .Q(m_axi_s2mm_awaddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[32]),
        .Q(m_axi_s2mm_awaddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[33]),
        .Q(m_axi_s2mm_awaddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[6]),
        .Q(m_axi_s2mm_awaddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[34]),
        .Q(m_axi_s2mm_awaddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[35]),
        .Q(m_axi_s2mm_awaddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[7]),
        .Q(m_axi_s2mm_awaddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[8]),
        .Q(m_axi_s2mm_awaddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[9]),
        .Q(m_axi_s2mm_awaddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[10]),
        .Q(m_axi_s2mm_awaddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[11]),
        .Q(m_axi_s2mm_awaddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[12]),
        .Q(m_axi_s2mm_awaddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[13]),
        .Q(m_axi_s2mm_awaddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[47]),
        .Q(m_axi_s2mm_awburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[36]),
        .Q(m_axi_s2mm_awlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[37]),
        .Q(m_axi_s2mm_awlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[38]),
        .Q(m_axi_s2mm_awlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[39]),
        .Q(m_axi_s2mm_awlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[40]),
        .Q(m_axi_s2mm_awlen[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[41]),
        .Q(m_axi_s2mm_awlen[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[46]),
        .Q(m_axi_s2mm_awsize),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ),
        .Q(sig_posted_to_axi_2),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ),
        .Q(sig_posted_to_axi),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_cmd_status" *) 
module ps_axi_datamover_1_0_axi_datamover_cmd_status
   (FIFO_Full_reg,
    Q,
    \USE_SRL_FIFO.sig_wr_fifo ,
    s_axis_s2mm_cmd_tready,
    sig_inhibit_rdy_n,
    sig_coelsc_tag_reg0,
    m_axis_s2mm_sts_tvalid,
    out,
    m_axis_s2mm_sts_tdata,
    SS,
    m_axi_s2mm_aclk,
    FIFO_Full_reg_0,
    D,
    s_axis_s2mm_cmd_tvalid,
    m_axis_s2mm_sts_tready,
    sig_wsc2stat_status_valid,
    sig_mmap_rst_reg_n,
    sig_cmd_stat_rst_int_reg_n,
    s_axis_s2mm_cmd_tdata,
    in);
  output FIFO_Full_reg;
  output [1:0]Q;
  output \USE_SRL_FIFO.sig_wr_fifo ;
  output s_axis_s2mm_cmd_tready;
  output sig_inhibit_rdy_n;
  output sig_coelsc_tag_reg0;
  output m_axis_s2mm_sts_tvalid;
  output [53:0]out;
  output [7:0]m_axis_s2mm_sts_tdata;
  input [0:0]SS;
  input m_axi_s2mm_aclk;
  input FIFO_Full_reg_0;
  input [0:0]D;
  input s_axis_s2mm_cmd_tvalid;
  input m_axis_s2mm_sts_tready;
  input sig_wsc2stat_status_valid;
  input sig_mmap_rst_reg_n;
  input sig_cmd_stat_rst_int_reg_n;
  input [53:0]s_axis_s2mm_cmd_tdata;
  input [0:7]in;

  wire [0:0]D;
  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire I_CMD_FIFO_n_4;
  wire [1:0]Q;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [0:7]in;
  wire m_axi_s2mm_aclk;
  wire [7:0]m_axis_s2mm_sts_tdata;
  wire m_axis_s2mm_sts_tready;
  wire m_axis_s2mm_sts_tvalid;
  wire [53:0]out;
  wire [53:0]s_axis_s2mm_cmd_tdata;
  wire s_axis_s2mm_cmd_tready;
  wire s_axis_s2mm_cmd_tvalid;
  wire sig_cmd_stat_rst_int_reg_n;
  wire sig_coelsc_tag_reg0;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_mmap_rst_reg_n;
  wire sig_wsc2stat_status_valid;

  ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .SS(SS),
        .in(in),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axis_s2mm_sts_tdata(m_axis_s2mm_sts_tdata),
        .m_axis_s2mm_sts_tready(m_axis_s2mm_sts_tready),
        .m_axis_s2mm_sts_tvalid(m_axis_s2mm_sts_tvalid),
        .sig_coelsc_tag_reg0(sig_coelsc_tag_reg0),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(I_CMD_FIFO_n_4),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  ps_axi_datamover_1_0_axi_datamover_fifo I_CMD_FIFO
       (.D(D),
        .FIFO_Full_reg(FIFO_Full_reg_0),
        .Q(Q),
        .SS(SS),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(out),
        .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata),
        .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready),
        .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid),
        .sel(\USE_SRL_FIFO.sig_wr_fifo ),
        .sig_cmd_stat_rst_int_reg_n(sig_cmd_stat_rst_int_reg_n),
        .sig_init_done(sig_init_done),
        .sig_init_reg_reg_0(I_CMD_FIFO_n_4));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_1_0_axi_datamover_fifo
   (Q,
    sel,
    s_axis_s2mm_cmd_tready,
    sig_init_reg_reg_0,
    out,
    SS,
    m_axi_s2mm_aclk,
    FIFO_Full_reg,
    s_axis_s2mm_cmd_tvalid,
    sig_cmd_stat_rst_int_reg_n,
    sig_init_done,
    s_axis_s2mm_cmd_tdata,
    D);
  output [1:0]Q;
  output sel;
  output s_axis_s2mm_cmd_tready;
  output sig_init_reg_reg_0;
  output [53:0]out;
  input [0:0]SS;
  input m_axi_s2mm_aclk;
  input FIFO_Full_reg;
  input s_axis_s2mm_cmd_tvalid;
  input sig_cmd_stat_rst_int_reg_n;
  input sig_init_done;
  input [53:0]s_axis_s2mm_cmd_tdata;
  input [0:0]D;

  wire [0:0]D;
  wire FIFO_Full_reg;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire m_axi_s2mm_aclk;
  wire [53:0]out;
  wire [53:0]s_axis_s2mm_cmd_tdata;
  wire s_axis_s2mm_cmd_tready;
  wire s_axis_s2mm_cmd_tvalid;
  wire sel;
  wire sig_cmd_stat_rst_int_reg_n;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_i_1__4_n_0;
  wire sig_init_reg_reg_0;

  ps_axi_datamover_1_0_srl_fifo \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .FIFO_Full_reg_0(sel),
        .FIFO_Full_reg_1(FIFO_Full_reg),
        .Q(Q),
        .SS(SS),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(out),
        .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata),
        .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready),
        .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done_0),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__3
       (.I0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .I1(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ),
        .I2(sig_cmd_stat_rst_int_reg_n),
        .I3(sig_init_done),
        .O(sig_init_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__4
       (.I0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .I1(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ),
        .I2(sig_cmd_stat_rst_int_reg_n),
        .I3(sig_init_done_0),
        .O(sig_init_done_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1__4_n_0),
        .Q(sig_init_done_0),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .Q(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(SS),
        .Q(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_1_0_axi_datamover_fifo__parameterized0
   (FIFO_Full_reg,
    sig_init_done,
    sig_inhibit_rdy_n_reg_0,
    sig_coelsc_tag_reg0,
    m_axis_s2mm_sts_tvalid,
    m_axis_s2mm_sts_tdata,
    SS,
    m_axi_s2mm_aclk,
    sig_init_done_reg_0,
    m_axis_s2mm_sts_tready,
    sig_wsc2stat_status_valid,
    sig_mmap_rst_reg_n,
    in);
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_inhibit_rdy_n_reg_0;
  output sig_coelsc_tag_reg0;
  output m_axis_s2mm_sts_tvalid;
  output [7:0]m_axis_s2mm_sts_tdata;
  input [0:0]SS;
  input m_axi_s2mm_aclk;
  input sig_init_done_reg_0;
  input m_axis_s2mm_sts_tready;
  input sig_wsc2stat_status_valid;
  input sig_mmap_rst_reg_n;
  input [0:7]in;

  wire FIFO_Full_reg;
  wire [0:0]SS;
  wire [0:7]in;
  wire m_axi_s2mm_aclk;
  wire [7:0]m_axis_s2mm_sts_tdata;
  wire m_axis_s2mm_sts_tready;
  wire m_axis_s2mm_sts_tvalid;
  wire sig_coelsc_tag_reg0;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_mmap_rst_reg_n;
  wire sig_wsc2stat_status_valid;

  ps_axi_datamover_1_0_srl_fifo__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .SS(SS),
        .\addr_i_reg[0]_0 (sig_inhibit_rdy_n_reg_0),
        .in(in),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axis_s2mm_sts_tdata(m_axis_s2mm_sts_tdata),
        .m_axis_s2mm_sts_tready(m_axis_s2mm_sts_tready),
        .m_axis_s2mm_sts_tvalid(m_axis_s2mm_sts_tvalid),
        .sig_coelsc_tag_reg0(sig_coelsc_tag_reg0),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1
   (sig_init_done,
    m_axi_s2mm_bready,
    Q,
    sig_coelsc_decerr_reg0,
    out,
    sig_coelsc_slverr_reg0,
    SR,
    m_axi_s2mm_aclk,
    sig_init_done_reg_0,
    m_axi_s2mm_bvalid,
    \addr_i_reg[0] ,
    sig_coelsc_reg_empty,
    \addr_i_reg[1] ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    in,
    m_axi_s2mm_bresp);
  output sig_init_done;
  output m_axi_s2mm_bready;
  output [0:0]Q;
  output sig_coelsc_decerr_reg0;
  output [0:0]out;
  output sig_coelsc_slverr_reg0;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_init_done_reg_0;
  input m_axi_s2mm_bvalid;
  input \addr_i_reg[0] ;
  input sig_coelsc_reg_empty;
  input [0:0]\addr_i_reg[1] ;
  input [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  input [1:0]in;
  input [1:0]m_axi_s2mm_bresp;

  wire [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \addr_i_reg[0] ;
  wire [0:0]\addr_i_reg[1] ;
  wire [1:0]in;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_bready;
  wire [1:0]m_axi_s2mm_bresp;
  wire m_axi_s2mm_bvalid;
  wire [0:0]out;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_reg_empty;
  wire sig_coelsc_slverr_reg0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;

  ps_axi_datamover_1_0_srl_fifo__parameterized1 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .Q(Q),
        .SR(SR),
        .\addr_i_reg[0]_0 (\addr_i_reg[0] ),
        .\addr_i_reg[1]_0 (\addr_i_reg[1] ),
        .in(in),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_bready(m_axi_s2mm_bready),
        .m_axi_s2mm_bresp(m_axi_s2mm_bresp),
        .m_axi_s2mm_bvalid(m_axi_s2mm_bvalid),
        .out(out),
        .sig_coelsc_decerr_reg0(sig_coelsc_decerr_reg0),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_coelsc_slverr_reg0(sig_coelsc_slverr_reg0),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2
   (FIFO_Full_reg,
    sig_init_done_0,
    Q,
    sig_push_coelsc_reg,
    sig_inhibit_rdy_n_reg_0,
    E,
    D,
    out,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    sig_coelsc_interr_reg0,
    p_0_in,
    SR,
    m_axi_s2mm_aclk,
    sig_init_done_reg_0,
    sig_push_to_wsc,
    sig_tlast_err_stop,
    \sig_wdc_statcnt_reg[3] ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ,
    sig_coelsc_reg_empty,
    in,
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ,
    \USE_SRL_FIFO.sig_wr_fifo ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] );
  output FIFO_Full_reg;
  output sig_init_done_0;
  output [0:0]Q;
  output sig_push_coelsc_reg;
  output sig_inhibit_rdy_n_reg_0;
  output [0:0]E;
  output [2:0]D;
  output [5:0]out;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  output sig_coelsc_interr_reg0;
  output p_0_in;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_init_done_reg_0;
  input sig_push_to_wsc;
  input sig_tlast_err_stop;
  input [3:0]\sig_wdc_statcnt_reg[3] ;
  input [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ;
  input sig_coelsc_reg_empty;
  input [2:0]in;
  input [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ;
  input \USE_SRL_FIFO.sig_wr_fifo ;
  input [0:6]\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] ;

  wire [2:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ;
  wire [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:6]\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [2:0]in;
  wire m_axi_s2mm_aclk;
  wire [5:0]out;
  wire p_0_in;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done_0;
  wire sig_init_done_reg_0;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire [3:0]\sig_wdc_statcnt_reg[3] ;

  ps_axi_datamover_1_0_srl_fifo__parameterized2 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 (\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] (\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] ),
        .Q(Q),
        .SR(SR),
        .\USE_SRL_FIFO.sig_wr_fifo (\USE_SRL_FIFO.sig_wr_fifo ),
        .\addr_i_reg[0]_0 (sig_inhibit_rdy_n_reg_0),
        .\addr_i_reg[3]_0 (sig_push_coelsc_reg),
        .in(in),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(out),
        .p_0_in(p_0_in),
        .sig_coelsc_interr_reg0(sig_coelsc_interr_reg0),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .\sig_wdc_statcnt_reg[3] (\sig_wdc_statcnt_reg[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done_0),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_1_0_axi_datamover_fifo__parameterized3
   (FIFO_Full_reg,
    sig_init_reg2,
    sig_inhibit_rdy_n_reg_0,
    sig_push_addr_reg1_out,
    \addr_i_reg[2] ,
    p_0_in,
    out,
    SR,
    m_axi_s2mm_aclk,
    sig_mmap_reset_reg,
    sig_mmap_rst_reg_n,
    sig_addr_reg_empty,
    sig_data2all_tlast_error,
    sig_mstr2addr_cmd_valid,
    in);
  output FIFO_Full_reg;
  output sig_init_reg2;
  output sig_inhibit_rdy_n_reg_0;
  output sig_push_addr_reg1_out;
  output \addr_i_reg[2] ;
  output p_0_in;
  output [40:0]out;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_mmap_reset_reg;
  input sig_mmap_rst_reg_n;
  input sig_addr_reg_empty;
  input sig_data2all_tlast_error;
  input sig_mstr2addr_cmd_valid;
  input [39:0]in;

  wire FIFO_Full_reg;
  wire [0:0]SR;
  wire \addr_i_reg[2] ;
  wire [39:0]in;
  wire m_axi_s2mm_aclk;
  wire [40:0]out;
  wire p_0_in;
  wire sig_addr_reg_empty;
  wire sig_data2all_tlast_error;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_i_1__1_n_0;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;

  ps_axi_datamover_1_0_srl_fifo__parameterized3 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .SR(SR),
        .\addr_i_reg[0]_0 (sig_inhibit_rdy_n_reg_0),
        .\addr_i_reg[2]_0 (\addr_i_reg[2] ),
        .in(in),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(out),
        .p_0_in(p_0_in),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_data2all_tlast_error(sig_data2all_tlast_error),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__1
       (.I0(sig_mmap_rst_reg_n),
        .I1(sig_mmap_reset_reg),
        .I2(sig_init_reg2),
        .I3(sig_init_done),
        .O(sig_init_done_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1__1_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg),
        .Q(sig_init_reg2),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4
   (FIFO_Full_reg,
    sig_init_done,
    sig_mmap_rst_reg_n_reg,
    sig_push_dqual_reg,
    D,
    out,
    E,
    sig_ld_new_cmd_reg_reg,
    sel,
    sig_inhibit_rdy_n_reg_0,
    sig_mmap_rst_reg_n_reg_0,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_mmap_rst_reg_n_reg_1,
    SR,
    m_axi_s2mm_aclk,
    sig_init_done_reg_0,
    sig_mmap_rst_reg_n,
    sig_first_dbeat__0,
    \sig_dbeat_cntr_reg[0] ,
    Q,
    \sig_dbeat_cntr_reg[6] ,
    sig_ld_new_cmd_reg,
    sig_mstr2data_cmd_valid,
    sig_next_cmd_cmplt_reg_reg,
    \sig_dbeat_cntr_reg[5] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    sig_dqual_reg_empty,
    sig_next_calc_error_reg,
    sig_wdc_status_going_full,
    sig_wsc2stat_status_valid,
    sig_next_calc_error_reg_i_5,
    sig_inhibit_rdy_n_1,
    sig_addr_posted_cntr,
    sig_dqual_reg_empty_reg_0,
    sig_dqual_reg_empty_reg_1,
    sig_dqual_reg_empty_reg_2,
    sig_dqual_reg_full,
    sig_last_mmap_dbeat_reg,
    sig_next_calc_error_reg_i_4,
    sig_last_dbeat_reg,
    sig_next_calc_error_reg_reg);
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_mmap_rst_reg_n_reg;
  output sig_push_dqual_reg;
  output [7:0]D;
  output [39:0]out;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  output sel;
  output sig_inhibit_rdy_n_reg_0;
  output [0:0]sig_mmap_rst_reg_n_reg_0;
  output \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  output sig_mmap_rst_reg_n_reg_1;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_init_done_reg_0;
  input sig_mmap_rst_reg_n;
  input sig_first_dbeat__0;
  input \sig_dbeat_cntr_reg[0] ;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[6] ;
  input sig_ld_new_cmd_reg;
  input sig_mstr2data_cmd_valid;
  input sig_next_cmd_cmplt_reg_reg;
  input \sig_dbeat_cntr_reg[5] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input sig_dqual_reg_empty;
  input sig_next_calc_error_reg;
  input sig_wdc_status_going_full;
  input sig_wsc2stat_status_valid;
  input sig_next_calc_error_reg_i_5;
  input sig_inhibit_rdy_n_1;
  input [2:0]sig_addr_posted_cntr;
  input sig_dqual_reg_empty_reg_0;
  input sig_dqual_reg_empty_reg_1;
  input sig_dqual_reg_empty_reg_2;
  input sig_dqual_reg_full;
  input sig_last_mmap_dbeat_reg;
  input sig_next_calc_error_reg_i_4;
  input sig_last_dbeat_reg;
  input [45:0]sig_next_calc_error_reg_reg;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire m_axi_s2mm_aclk;
  wire [39:0]out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire \sig_dbeat_cntr_reg[6] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_empty_reg_2;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat__0;
  wire sig_inhibit_rdy_n_1;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_last_dbeat_reg;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mmap_rst_reg_n_reg;
  wire [0:0]sig_mmap_rst_reg_n_reg_0;
  wire sig_mmap_rst_reg_n_reg_1;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_i_4;
  wire sig_next_calc_error_reg_i_5;
  wire [45:0]sig_next_calc_error_reg_reg;
  wire sig_next_cmd_cmplt_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_push_dqual_reg;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  ps_axi_datamover_1_0_srl_fifo__parameterized4 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .Q(Q),
        .SR(SR),
        .\addr_i_reg[1]_0 (sig_inhibit_rdy_n_reg_0),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr_reg[0] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr_reg[5] ),
        .\sig_dbeat_cntr_reg[6] (\sig_dbeat_cntr_reg[6] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_empty_reg_1(sig_dqual_reg_empty_reg_1),
        .sig_dqual_reg_empty_reg_2(sig_dqual_reg_empty_reg_2),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat__0(sig_first_dbeat__0),
        .sig_inhibit_rdy_n_1(sig_inhibit_rdy_n_1),
        .sig_inhibit_rdy_n_reg(sel),
        .sig_last_dbeat_reg(sig_push_dqual_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mmap_rst_reg_n_reg(sig_mmap_rst_reg_n_reg),
        .sig_mmap_rst_reg_n_reg_0(sig_mmap_rst_reg_n_reg_0),
        .sig_mmap_rst_reg_n_reg_1(sig_mmap_rst_reg_n_reg_1),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_i_4_0(sig_next_calc_error_reg_i_4),
        .sig_next_calc_error_reg_i_5_0(sig_next_calc_error_reg_i_5),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg),
        .sig_next_cmd_cmplt_reg_reg(sig_next_cmd_cmplt_reg_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_pcc" *) 
module ps_axi_datamover_1_0_axi_datamover_pcc
   (sig_mmap_reset_reg,
    sig_mstr2addr_burst,
    sig_calc2dm_calc_err,
    sig_mstr2data_cmd_valid,
    sig_mstr2addr_cmd_valid,
    in,
    D,
    sig_sm_halt_reg_reg_0,
    s2mm_err,
    \sig_addr_cntr_im0_msh_reg[15]_0 ,
    m_axi_s2mm_aclk,
    out,
    SR,
    Q,
    \USE_SRL_FIFO.sig_wr_fifo ,
    \USE_SRL_FIFO.sig_wr_fifo_0 ,
    sig_inhibit_rdy_n,
    sig_cmd2addr_valid_reg_0,
    sig_cmd2data_valid_reg_0,
    sig_inhibit_rdy_n_1,
    sig_data2all_tlast_error);
  output sig_mmap_reset_reg;
  output [0:0]sig_mstr2addr_burst;
  output sig_calc2dm_calc_err;
  output sig_mstr2data_cmd_valid;
  output sig_mstr2addr_cmd_valid;
  output [44:0]in;
  output [0:0]D;
  output sig_sm_halt_reg_reg_0;
  output s2mm_err;
  output [31:0]\sig_addr_cntr_im0_msh_reg[15]_0 ;
  input m_axi_s2mm_aclk;
  input [53:0]out;
  input [0:0]SR;
  input [1:0]Q;
  input \USE_SRL_FIFO.sig_wr_fifo ;
  input \USE_SRL_FIFO.sig_wr_fifo_0 ;
  input sig_inhibit_rdy_n;
  input sig_cmd2addr_valid_reg_0;
  input sig_cmd2data_valid_reg_0;
  input sig_inhibit_rdy_n_1;
  input sig_data2all_tlast_error;

  wire [0:0]D;
  wire \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ;
  wire [1:1]\I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_end_addr_us__37 ;
  wire \I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3 ;
  wire [3:0]\I_STRT_STRB_GEN/sig_end_offset_un ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire \USE_SRL_FIFO.sig_wr_fifo_0 ;
  wire [44:0]in;
  wire m_axi_s2mm_aclk;
  wire [53:0]out;
  wire [15:0]p_0_in;
  wire p_1_in;
  wire [15:0]p_1_in__0;
  wire s2mm_err;
  wire [3:3]sel0;
  wire sig_addr_aligned_im0;
  wire sig_addr_aligned_ireg1;
  wire \sig_addr_cntr_im0_msh[11]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[13]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[15]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh[15]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[7]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_2_n_0 ;
  wire [15:0]sig_addr_cntr_im0_msh_reg;
  wire [31:0]\sig_addr_cntr_im0_msh_reg[15]_0 ;
  wire [10:0]sig_addr_cntr_incr_ireg2;
  wire \sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ;
  wire \sig_addr_cntr_lsh_im0[15]_i_1_n_0 ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[0] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[10] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[11] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[12] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[13] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[14] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[1] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[2] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[3] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[4] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[5] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[6] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[7] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[8] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[9] ;
  wire [31:0]sig_addr_cntr_lsh_kh;
  wire [9:0]sig_adjusted_addr_incr_im1;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_10_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_11_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_12_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_13_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_6_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_7_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_8_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_9_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[9]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[9]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_4 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_5 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_6 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_7 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[9]_i_1_n_7 ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ;
  wire sig_brst_cnt_eq_one_im0;
  wire sig_brst_cnt_eq_one_ireg1;
  wire sig_brst_cnt_eq_zero_im0;
  wire sig_brst_cnt_eq_zero_ireg1;
  wire \sig_btt_cntr_im0[15]_i_10_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_11_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_12_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_13_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_9_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_10_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_11_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_12_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_13_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_14_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_15_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_16_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_17_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_9_n_0 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_10 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_11 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_12 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_13 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_14 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_15 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_8 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_9 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_10 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_11 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_12 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_13 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_14 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_15 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_8 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_9 ;
  wire \sig_btt_cntr_im0_reg_n_0_[0] ;
  wire \sig_btt_cntr_im0_reg_n_0_[10] ;
  wire \sig_btt_cntr_im0_reg_n_0_[11] ;
  wire \sig_btt_cntr_im0_reg_n_0_[12] ;
  wire \sig_btt_cntr_im0_reg_n_0_[13] ;
  wire \sig_btt_cntr_im0_reg_n_0_[14] ;
  wire \sig_btt_cntr_im0_reg_n_0_[15] ;
  wire \sig_btt_cntr_im0_reg_n_0_[1] ;
  wire \sig_btt_cntr_im0_reg_n_0_[2] ;
  wire \sig_btt_cntr_im0_reg_n_0_[3] ;
  wire \sig_btt_cntr_im0_reg_n_0_[4] ;
  wire \sig_btt_cntr_im0_reg_n_0_[5] ;
  wire \sig_btt_cntr_im0_reg_n_0_[6] ;
  wire \sig_btt_cntr_im0_reg_n_0_[7] ;
  wire \sig_btt_cntr_im0_reg_n_0_[8] ;
  wire \sig_btt_cntr_im0_reg_n_0_[9] ;
  wire sig_btt_eq_b2mbaa_im0;
  wire sig_btt_eq_b2mbaa_ireg1;
  wire sig_btt_eq_b2mbaa_ireg1_i_2_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_3_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_4_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_5_n_0;
  wire sig_btt_eq_b2mbaa_ireg1_i_6_n_0;
  wire sig_btt_is_zero;
  wire sig_btt_lt_b2mbaa_im0;
  wire sig_btt_lt_b2mbaa_im01;
  wire sig_btt_lt_b2mbaa_im01_carry_i_10_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_11_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_12_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_13_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_14_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_9_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_3;
  wire sig_btt_lt_b2mbaa_im01_carry_n_4;
  wire sig_btt_lt_b2mbaa_im01_carry_n_5;
  wire sig_btt_lt_b2mbaa_im01_carry_n_6;
  wire sig_btt_lt_b2mbaa_im01_carry_n_7;
  wire sig_btt_lt_b2mbaa_ireg1;
  wire sig_btt_lt_b2mbaa_ireg1_i_2_n_0;
  wire [9:1]sig_bytes_to_mbaa_im0;
  wire [9:0]sig_bytes_to_mbaa_ireg1;
  wire \sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ;
  wire sig_calc2dm_calc_err;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_reg0;
  wire sig_calc_error_reg_i_2_n_0;
  wire sig_calc_error_reg_i_3_n_0;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2addr_valid_reg_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2data_valid_reg_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_data2all_tlast_error;
  wire [3:0]sig_finish_addr_offset_im1;
  wire [3:0]sig_finish_addr_offset_ireg2;
  wire \sig_finish_addr_offset_ireg2[3]_i_2_n_0 ;
  wire sig_first_xfer_im0;
  wire sig_first_xfer_im0_i_1_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_1;
  wire sig_input_cache_type_reg0;
  wire sig_input_eof_reg_reg_n_0;
  wire sig_input_reg_empty;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_ld_xfer_reg_tmp;
  wire sig_ld_xfer_reg_tmp_i_1_n_0;
  wire sig_mmap_reset_reg;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire sig_no_btt_residue_im0;
  wire sig_no_btt_residue_ireg1;
  wire sig_no_btt_residue_ireg1_i_2_n_0;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [15:0]sig_predict_addr_lsh_im2;
  wire [15:15]sig_predict_addr_lsh_ireg3;
  wire \sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_6_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_7_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_8_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_9_n_0 ;
  wire [14:0]sig_predict_addr_lsh_ireg3__0;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_4 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_5 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_6 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_7 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_4 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_5 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_6 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_7 ;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_halt_reg_reg_0;
  wire sig_sm_ld_calc1_reg;
  wire sig_sm_ld_calc1_reg_ns;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc3_reg;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire [3:0]sig_strbgen_addr_ireg2;
  wire [4:4]sig_strbgen_bytes_ireg2;
  wire \sig_strbgen_bytes_ireg2[3]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2[3]_i_3_n_0 ;
  wire \sig_strbgen_bytes_ireg2[3]_i_4_n_0 ;
  wire \sig_strbgen_bytes_ireg2[4]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[0] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[1] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[2] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[3] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[4] ;
  wire [15:0]sig_xfer_end_strb_ireg3;
  wire \sig_xfer_end_strb_ireg3[10]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[11]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[12]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[13]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[14]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[15]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[1]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[2]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[3]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[4]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[5]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[6]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[7]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[9]_i_1_n_0 ;
  wire sig_xfer_len_eq_0_im2;
  wire sig_xfer_len_eq_0_ireg3;
  wire sig_xfer_len_eq_0_ireg3_i_2_n_0;
  wire sig_xfer_len_eq_0_ireg3_i_3_n_0;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1_n_0;
  wire [14:1]sig_xfer_strt_strb_im2;
  wire [15:0]sig_xfer_strt_strb_ireg3;
  wire \sig_xfer_strt_strb_ireg3[0]_i_1_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[10]_i_2_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[12]_i_1_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[13]_i_2_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[14]_i_2_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_10_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_11_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_12_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_13_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_14_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_15_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_1_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_6_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_7_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[15]_i_9_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[7]_i_1_n_0 ;
  wire \sig_xfer_strt_strb_ireg3[9]_i_2_n_0 ;
  wire [7:1]\NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:6]NLW_sig_btt_lt_b2mbaa_im01_carry_CO_UNCONNECTED;
  wire [7:0]NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [7:7]\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBAAAFFFFBAAABAAA)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .I1(sig_calc_error_pushed),
        .I2(sig_parent_done),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I4(sig_calc_error_reg0),
        .I5(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .O(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I2(sig_sm_ld_calc3_reg),
        .O(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F020F02FF320F02)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_2 
       (.I0(sig_cmd2dre_valid_reg_n_0),
        .I1(sig_mstr2data_cmd_valid),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(\USE_SRL_FIFO.sig_wr_fifo_0 ),
        .I4(sig_inhibit_rdy_n),
        .I5(sig_cmd2addr_valid_reg_0),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_sig_pcc_sm_state[7]_i_1 
       (.I0(sig_calc_error_pushed),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .O(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sig_pcc_sm_state_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .S(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h0100FEFFFEFF0100)) 
    \addr_i[0]_i_1 
       (.I0(sig_sm_halt_reg),
        .I1(sig_calc_error_pushed),
        .I2(Q[1]),
        .I3(sig_input_reg_empty),
        .I4(\USE_SRL_FIFO.sig_wr_fifo ),
        .I5(Q[0]),
        .O(D));
  LUT4 #(
    .INIT(16'h0100)) 
    \addr_i[2]_i_3 
       (.I0(sig_sm_halt_reg),
        .I1(sig_calc_error_pushed),
        .I2(Q[1]),
        .I3(sig_input_reg_empty),
        .O(sig_sm_halt_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][10]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[10]),
        .I4(sig_xfer_end_strb_ireg3[10]),
        .O(in[36]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][11]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[9]),
        .I4(sig_xfer_end_strb_ireg3[9]),
        .O(in[35]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][12]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[8]),
        .I4(sig_xfer_end_strb_ireg3[8]),
        .O(in[34]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][13]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[7]),
        .I4(sig_xfer_end_strb_ireg3[7]),
        .O(in[33]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][14]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[6]),
        .I4(sig_xfer_end_strb_ireg3[6]),
        .O(in[32]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][15]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[5]),
        .I4(sig_xfer_end_strb_ireg3[5]),
        .O(in[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][16]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[4]),
        .I4(sig_xfer_end_strb_ireg3[4]),
        .O(in[30]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \data_reg[3][17]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I2(sig_xfer_len_eq_0_ireg3_i_3_n_0),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][17]_srl4_i_1__0 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[3]),
        .I4(sig_xfer_end_strb_ireg3[3]),
        .O(in[29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \data_reg[3][18]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I2(sig_xfer_len_eq_0_ireg3_i_3_n_0),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][18]_srl4_i_1__0 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[2]),
        .I4(sig_xfer_end_strb_ireg3[2]),
        .O(in[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \data_reg[3][19]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I1(sig_xfer_len_eq_0_ireg3_i_3_n_0),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .O(in[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][19]_srl4_i_1__0 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[1]),
        .I4(sig_xfer_end_strb_ireg3[1]),
        .O(in[27]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][1]_srl4_i_1 
       (.I0(sig_calc2dm_calc_err),
        .I1(in[43]),
        .O(in[44]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \data_reg[3][20]_srl4_i_1 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I1(sig_xfer_len_eq_0_ireg3_i_3_n_0),
        .O(in[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][20]_srl4_i_1__0 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[0]),
        .I4(sig_xfer_end_strb_ireg3[0]),
        .O(in[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][21]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[15]),
        .I1(sig_first_xfer_im0),
        .O(in[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \data_reg[3][21]_srl4_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .O(in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][22]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[14]),
        .I1(sig_first_xfer_im0),
        .O(in[24]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \data_reg[3][22]_srl4_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][23]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[13]),
        .I1(sig_first_xfer_im0),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][23]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[31]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][24]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[12]),
        .I1(sig_first_xfer_im0),
        .O(in[22]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][24]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[30]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][25]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[11]),
        .I1(sig_first_xfer_im0),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][25]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[29]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][26]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[10]),
        .I1(sig_first_xfer_im0),
        .O(in[20]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][26]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[28]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][27]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[9]),
        .I1(sig_first_xfer_im0),
        .O(in[19]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][27]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[27]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][28]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[8]),
        .I1(sig_first_xfer_im0),
        .O(in[18]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][28]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[26]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][29]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[7]),
        .I1(sig_first_xfer_im0),
        .O(in[17]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][29]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[25]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [25]));
  LUT6 #(
    .INIT(64'h0F110FFFFF11FFFF)) 
    \data_reg[3][2]_srl4_i_1 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_btt_eq_b2mbaa_ireg1),
        .I2(sig_brst_cnt_eq_one_ireg1),
        .I3(sig_no_btt_residue_ireg1),
        .I4(sig_brst_cnt_eq_zero_ireg1),
        .I5(sig_addr_aligned_ireg1),
        .O(in[43]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][30]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[6]),
        .I1(sig_first_xfer_im0),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][30]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[24]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][31]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[5]),
        .I1(sig_first_xfer_im0),
        .O(in[15]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][31]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[23]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][32]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[4]),
        .I1(sig_first_xfer_im0),
        .O(in[14]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][32]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[22]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][33]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][33]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[21]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][34]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][34]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[20]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][35]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][35]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[19]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[3][36]_srl4_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .O(in[10]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][36]_srl4_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[18]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][37]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[17]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][38]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[16]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][39]_srl4_i_1 
       (.I0(p_1_in),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[15]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [15]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[3][3]_srl4_i_1 
       (.I0(sig_input_eof_reg_reg_n_0),
        .I1(in[43]),
        .O(in[42]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][40]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[14]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][41]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[13]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][42]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[12]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][43]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[11]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][44]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[10]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][45]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[9]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][46]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[8]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][47]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[7]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][48]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[6]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][49]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[5]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][50]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[4]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][51]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[3]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][52]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[2]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][53]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[1]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[3][54]_srl4_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(sig_mstr2addr_burst),
        .I2(sig_addr_cntr_lsh_kh[0]),
        .O(\sig_addr_cntr_im0_msh_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][5]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[15]),
        .I4(sig_xfer_end_strb_ireg3[15]),
        .O(in[41]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][6]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[14]),
        .I4(sig_xfer_end_strb_ireg3[14]),
        .O(in[40]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][7]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[13]),
        .I4(sig_xfer_end_strb_ireg3[13]),
        .O(in[39]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][8]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[12]),
        .I4(sig_xfer_end_strb_ireg3[12]),
        .O(in[38]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF3FEA2A)) 
    \data_reg[3][9]_srl4_i_1 
       (.I0(in[43]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_strt_strb_ireg3[11]),
        .I4(sig_xfer_end_strb_ireg3[11]),
        .O(in[37]));
  LUT2 #(
    .INIT(4'hE)) 
    s2mm_err_INST_0
       (.I0(sig_calc2dm_calc_err),
        .I1(sig_data2all_tlast_error),
        .O(s2mm_err));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_addr_aligned_ireg1_i_1
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I4(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(sig_addr_aligned_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_aligned_ireg1_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_addr_aligned_im0),
        .Q(sig_addr_aligned_ireg1),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_addr_cntr_im0_msh[0]_i_1 
       (.I0(out[34]),
        .I1(sig_calc_error_reg0),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAACF30)) 
    \sig_addr_cntr_im0_msh[10]_i_1 
       (.I0(out[44]),
        .I1(\sig_addr_cntr_im0_msh[11]_i_2_n_0 ),
        .I2(sig_addr_cntr_im0_msh_reg[9]),
        .I3(sig_addr_cntr_im0_msh_reg[10]),
        .I4(sig_calc_error_reg0),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hFFFF9AAA00009AAA)) 
    \sig_addr_cntr_im0_msh[11]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(\sig_addr_cntr_im0_msh[11]_i_2_n_0 ),
        .I2(sig_addr_cntr_im0_msh_reg[9]),
        .I3(sig_addr_cntr_im0_msh_reg[10]),
        .I4(sig_calc_error_reg0),
        .I5(out[45]),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \sig_addr_cntr_im0_msh[11]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(sig_addr_cntr_im0_msh_reg[5]),
        .I2(\sig_addr_cntr_im0_msh[7]_i_2_n_0 ),
        .I3(sig_addr_cntr_im0_msh_reg[6]),
        .I4(sig_addr_cntr_im0_msh_reg[8]),
        .O(\sig_addr_cntr_im0_msh[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \sig_addr_cntr_im0_msh[12]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ),
        .I2(sig_addr_cntr_im0_msh_reg[11]),
        .I3(sig_calc_error_reg0),
        .I4(out[46]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hFFFF6AAA00006AAA)) 
    \sig_addr_cntr_im0_msh[13]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(sig_addr_cntr_im0_msh_reg[12]),
        .I2(sig_addr_cntr_im0_msh_reg[11]),
        .I3(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ),
        .I4(sig_calc_error_reg0),
        .I5(out[47]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sig_addr_cntr_im0_msh[13]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(sig_addr_cntr_im0_msh_reg[9]),
        .I2(\sig_addr_cntr_im0_msh[11]_i_2_n_0 ),
        .O(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_addr_cntr_im0_msh[14]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(\sig_addr_cntr_im0_msh[15]_i_3_n_0 ),
        .I2(sig_calc_error_reg0),
        .I3(out[48]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sig_addr_cntr_im0_msh[15]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(sig_predict_addr_lsh_ireg3),
        .I3(sig_calc_error_reg0),
        .O(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \sig_addr_cntr_im0_msh[15]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(sig_addr_cntr_im0_msh_reg[14]),
        .I2(\sig_addr_cntr_im0_msh[15]_i_3_n_0 ),
        .I3(sig_calc_error_reg0),
        .I4(out[49]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \sig_addr_cntr_im0_msh[15]_i_3 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(sig_addr_cntr_im0_msh_reg[11]),
        .I2(\sig_addr_cntr_im0_msh[11]_i_2_n_0 ),
        .I3(sig_addr_cntr_im0_msh_reg[9]),
        .I4(sig_addr_cntr_im0_msh_reg[10]),
        .I5(sig_addr_cntr_im0_msh_reg[13]),
        .O(\sig_addr_cntr_im0_msh[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF606)) 
    \sig_addr_cntr_im0_msh[1]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(sig_addr_cntr_im0_msh_reg[0]),
        .I2(sig_calc_error_reg0),
        .I3(out[35]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \sig_addr_cntr_im0_msh[2]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(sig_addr_cntr_im0_msh_reg[0]),
        .I2(sig_addr_cntr_im0_msh_reg[1]),
        .I3(sig_calc_error_reg0),
        .I4(out[36]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFF6AAA00006AAA)) 
    \sig_addr_cntr_im0_msh[3]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(sig_addr_cntr_im0_msh_reg[1]),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .I3(sig_addr_cntr_im0_msh_reg[2]),
        .I4(sig_calc_error_reg0),
        .I5(out[37]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hAAAACC3C)) 
    \sig_addr_cntr_im0_msh[4]_i_1 
       (.I0(out[38]),
        .I1(sig_addr_cntr_im0_msh_reg[4]),
        .I2(sig_addr_cntr_im0_msh_reg[3]),
        .I3(\sig_addr_cntr_im0_msh[4]_i_2_n_0 ),
        .I4(sig_calc_error_reg0),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sig_addr_cntr_im0_msh[4]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(sig_addr_cntr_im0_msh_reg[0]),
        .I2(sig_addr_cntr_im0_msh_reg[2]),
        .O(\sig_addr_cntr_im0_msh[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_addr_cntr_im0_msh[5]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(\sig_addr_cntr_im0_msh[7]_i_2_n_0 ),
        .I2(sig_calc_error_reg0),
        .I3(out[39]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFFA600A6)) 
    \sig_addr_cntr_im0_msh[6]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(sig_addr_cntr_im0_msh_reg[5]),
        .I2(\sig_addr_cntr_im0_msh[7]_i_2_n_0 ),
        .I3(sig_calc_error_reg0),
        .I4(out[40]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFA6AA0000A6AA)) 
    \sig_addr_cntr_im0_msh[7]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(sig_addr_cntr_im0_msh_reg[6]),
        .I2(\sig_addr_cntr_im0_msh[7]_i_2_n_0 ),
        .I3(sig_addr_cntr_im0_msh_reg[5]),
        .I4(sig_calc_error_reg0),
        .I5(out[41]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_addr_cntr_im0_msh[7]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(sig_addr_cntr_im0_msh_reg[1]),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .I3(sig_addr_cntr_im0_msh_reg[2]),
        .I4(sig_addr_cntr_im0_msh_reg[4]),
        .O(\sig_addr_cntr_im0_msh[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACC3CCCCC)) 
    \sig_addr_cntr_im0_msh[8]_i_1 
       (.I0(out[42]),
        .I1(sig_addr_cntr_im0_msh_reg[8]),
        .I2(sig_addr_cntr_im0_msh_reg[7]),
        .I3(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .I4(sig_addr_cntr_im0_msh_reg[6]),
        .I5(sig_calc_error_reg0),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sig_addr_cntr_im0_msh[8]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(sig_addr_cntr_im0_msh_reg[2]),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .I3(sig_addr_cntr_im0_msh_reg[1]),
        .I4(sig_addr_cntr_im0_msh_reg[3]),
        .I5(sig_addr_cntr_im0_msh_reg[5]),
        .O(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_addr_cntr_im0_msh[9]_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(\sig_addr_cntr_im0_msh[11]_i_2_n_0 ),
        .I2(sig_calc_error_reg0),
        .I3(out[43]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(sig_addr_cntr_im0_msh_reg[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(sig_addr_cntr_im0_msh_reg[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(sig_addr_cntr_im0_msh_reg[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(sig_addr_cntr_im0_msh_reg[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(sig_addr_cntr_im0_msh_reg[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(sig_addr_cntr_im0_msh_reg[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(sig_addr_cntr_im0_msh_reg[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(sig_addr_cntr_im0_msh_reg[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(sig_addr_cntr_im0_msh_reg[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(sig_addr_cntr_im0_msh_reg[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(sig_addr_cntr_im0_msh_reg[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(sig_addr_cntr_im0_msh_reg[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(sig_addr_cntr_im0_msh_reg[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(sig_addr_cntr_im0_msh_reg[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(sig_addr_cntr_im0_msh_reg[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(sig_addr_cntr_im0_msh_reg[9]),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[0]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \sig_addr_cntr_incr_ireg2[10]_i_1 
       (.I0(sig_first_xfer_im0),
        .I1(sig_addr_aligned_ireg1),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[1]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_bytes_to_mbaa_ireg1[1]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[2]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_bytes_to_mbaa_ireg1[2]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[3]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_bytes_to_mbaa_ireg1[3]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[4]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_bytes_to_mbaa_ireg1[4]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[5]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_bytes_to_mbaa_ireg1[5]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[6]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_bytes_to_mbaa_ireg1[6]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[7]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(sig_bytes_to_mbaa_ireg1[7]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[8]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I1(sig_bytes_to_mbaa_ireg1[8]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_addr_cntr_incr_ireg2[9]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(sig_bytes_to_mbaa_ireg1[9]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[9]),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[0]_i_1 
       (.I0(out[18]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[0]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[10]_i_1 
       (.I0(out[28]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[10]),
        .O(p_1_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[11]_i_1 
       (.I0(out[29]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[11]),
        .O(p_1_in__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[12]_i_1 
       (.I0(out[30]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[12]),
        .O(p_1_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[13]_i_1 
       (.I0(out[31]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[13]),
        .O(p_1_in__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[14]_i_1 
       (.I0(out[32]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[14]),
        .O(p_1_in__0[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_addr_cntr_lsh_im0[15]_i_1 
       (.I0(sig_calc_error_reg0),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[15]_i_2 
       (.I0(out[33]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3),
        .O(p_1_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[1]_i_1 
       (.I0(out[19]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[1]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[2]_i_1 
       (.I0(out[20]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[3]_i_1 
       (.I0(out[21]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[3]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[4]_i_1 
       (.I0(out[22]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[4]),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[5]_i_1 
       (.I0(out[23]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[5]),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[6]_i_1 
       (.I0(out[24]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[6]),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[7]_i_1 
       (.I0(out[25]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[7]),
        .O(p_1_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[8]_i_1 
       (.I0(out[26]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[8]),
        .O(p_1_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_addr_cntr_lsh_im0[9]_i_1 
       (.I0(out[27]),
        .I1(sig_calc_error_reg0),
        .I2(sig_predict_addr_lsh_ireg3__0[9]),
        .O(p_1_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(p_1_in),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[18]),
        .Q(sig_addr_cntr_lsh_kh[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[28]),
        .Q(sig_addr_cntr_lsh_kh[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[29]),
        .Q(sig_addr_cntr_lsh_kh[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[30]),
        .Q(sig_addr_cntr_lsh_kh[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[31]),
        .Q(sig_addr_cntr_lsh_kh[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[32]),
        .Q(sig_addr_cntr_lsh_kh[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[33]),
        .Q(sig_addr_cntr_lsh_kh[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[34]),
        .Q(sig_addr_cntr_lsh_kh[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[35]),
        .Q(sig_addr_cntr_lsh_kh[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[36]),
        .Q(sig_addr_cntr_lsh_kh[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[37]),
        .Q(sig_addr_cntr_lsh_kh[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[19]),
        .Q(sig_addr_cntr_lsh_kh[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[38]),
        .Q(sig_addr_cntr_lsh_kh[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[39]),
        .Q(sig_addr_cntr_lsh_kh[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[40]),
        .Q(sig_addr_cntr_lsh_kh[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[41]),
        .Q(sig_addr_cntr_lsh_kh[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[42]),
        .Q(sig_addr_cntr_lsh_kh[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[43]),
        .Q(sig_addr_cntr_lsh_kh[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[44]),
        .Q(sig_addr_cntr_lsh_kh[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[45]),
        .Q(sig_addr_cntr_lsh_kh[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[46]),
        .Q(sig_addr_cntr_lsh_kh[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[47]),
        .Q(sig_addr_cntr_lsh_kh[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[20]),
        .Q(sig_addr_cntr_lsh_kh[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[48]),
        .Q(sig_addr_cntr_lsh_kh[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[49]),
        .Q(sig_addr_cntr_lsh_kh[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[21]),
        .Q(sig_addr_cntr_lsh_kh[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[22]),
        .Q(sig_addr_cntr_lsh_kh[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[23]),
        .Q(sig_addr_cntr_lsh_kh[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[24]),
        .Q(sig_addr_cntr_lsh_kh[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[25]),
        .Q(sig_addr_cntr_lsh_kh[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[26]),
        .Q(sig_addr_cntr_lsh_kh[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[27]),
        .Q(sig_addr_cntr_lsh_kh[9]),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h15BFEA40)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_10 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_first_xfer_im0),
        .I2(sig_bytes_to_mbaa_ireg1[3]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h15BFEA40)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_11 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_first_xfer_im0),
        .I2(sig_bytes_to_mbaa_ireg1[2]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h15BFEA40)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_12 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_first_xfer_im0),
        .I2(sig_bytes_to_mbaa_ireg1[1]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h15BFEA40)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_13 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_first_xfer_im0),
        .I2(sig_bytes_to_mbaa_ireg1[0]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_bytes_to_mbaa_ireg1[3]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_bytes_to_mbaa_ireg1[2]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_bytes_to_mbaa_ireg1[1]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_5 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_6 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(sig_bytes_to_mbaa_ireg1[7]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_7 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_bytes_to_mbaa_ireg1[6]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_8 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_bytes_to_mbaa_ireg1[5]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_9 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_bytes_to_mbaa_ireg1[4]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[9]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(sig_bytes_to_mbaa_ireg1[9]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \sig_adjusted_addr_incr_ireg2[9]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I1(sig_bytes_to_mbaa_ireg1[8]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_adjusted_addr_incr_ireg2[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[0]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[1]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[2]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[3]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[4]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[5]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[6]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[7]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_adjusted_addr_incr_ireg2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_4 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_5 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_6 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 }),
        .O(sig_adjusted_addr_incr_im1[7:0]),
        .S({\sig_adjusted_addr_incr_ireg2[7]_i_6_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_7_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_8_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_9_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_10_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_11_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_12_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[8]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[9]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_adjusted_addr_incr_ireg2_reg[9]_i_1 
       (.CI(\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_CO_UNCONNECTED [7:1],\sig_adjusted_addr_incr_ireg2_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sig_adjusted_addr_incr_ireg2_reg[9]_i_1_O_UNCONNECTED [7:2],sig_adjusted_addr_incr_im1[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\sig_adjusted_addr_incr_ireg2[9]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[9]_i_3_n_0 }));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    sig_brst_cnt_eq_one_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(sig_brst_cnt_eq_one_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_one_ireg1_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_one_im0),
        .Q(sig_brst_cnt_eq_one_ireg1),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_brst_cnt_eq_zero_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(sig_brst_cnt_eq_zero_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_zero_ireg1_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_zero_im0),
        .Q(sig_brst_cnt_eq_zero_ireg1),
        .R(sig_mmap_reset_reg));
  LUT3 #(
    .INIT(8'hD1)) 
    \sig_btt_cntr_im0[15]_i_10 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(sig_calc_error_reg0),
        .I2(out[11]),
        .O(\sig_btt_cntr_im0[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_11 
       (.I0(sig_addr_cntr_incr_ireg2[10]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I2(sig_calc_error_reg0),
        .I3(out[10]),
        .O(\sig_btt_cntr_im0[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_12 
       (.I0(sig_addr_cntr_incr_ireg2[9]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I2(sig_calc_error_reg0),
        .I3(out[9]),
        .O(\sig_btt_cntr_im0[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_13 
       (.I0(sig_addr_cntr_incr_ireg2[8]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I2(sig_calc_error_reg0),
        .I3(out[8]),
        .O(\sig_btt_cntr_im0[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sig_btt_cntr_im0[15]_i_2 
       (.I0(sig_input_reg_empty),
        .I1(Q[1]),
        .I2(sig_calc2dm_calc_err),
        .I3(sig_sm_halt_reg),
        .O(\sig_btt_cntr_im0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[15]_i_3 
       (.I0(sig_addr_cntr_incr_ireg2[10]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[15]_i_4 
       (.I0(sig_addr_cntr_incr_ireg2[9]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[15]_i_5 
       (.I0(sig_addr_cntr_incr_ireg2[8]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \sig_btt_cntr_im0[15]_i_6 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I1(sig_calc_error_reg0),
        .I2(out[15]),
        .O(\sig_btt_cntr_im0[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \sig_btt_cntr_im0[15]_i_7 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I1(sig_calc_error_reg0),
        .I2(out[14]),
        .O(\sig_btt_cntr_im0[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \sig_btt_cntr_im0[15]_i_8 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I1(sig_calc_error_reg0),
        .I2(out[13]),
        .O(\sig_btt_cntr_im0[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \sig_btt_cntr_im0[15]_i_9 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(sig_calc_error_reg0),
        .I2(out[12]),
        .O(\sig_btt_cntr_im0[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_10 
       (.I0(sig_addr_cntr_incr_ireg2[7]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I2(sig_calc_error_reg0),
        .I3(out[7]),
        .O(\sig_btt_cntr_im0[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_11 
       (.I0(sig_addr_cntr_incr_ireg2[6]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I2(sig_calc_error_reg0),
        .I3(out[6]),
        .O(\sig_btt_cntr_im0[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_12 
       (.I0(sig_addr_cntr_incr_ireg2[5]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_calc_error_reg0),
        .I3(out[5]),
        .O(\sig_btt_cntr_im0[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_13 
       (.I0(sig_addr_cntr_incr_ireg2[4]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(sig_calc_error_reg0),
        .I3(out[4]),
        .O(\sig_btt_cntr_im0[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_14 
       (.I0(sig_addr_cntr_incr_ireg2[3]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(sig_calc_error_reg0),
        .I3(out[3]),
        .O(\sig_btt_cntr_im0[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_15 
       (.I0(sig_addr_cntr_incr_ireg2[2]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I2(sig_calc_error_reg0),
        .I3(out[2]),
        .O(\sig_btt_cntr_im0[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_16 
       (.I0(sig_addr_cntr_incr_ireg2[1]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_calc_error_reg0),
        .I3(out[1]),
        .O(\sig_btt_cntr_im0[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_17 
       (.I0(sig_addr_cntr_incr_ireg2[0]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I2(sig_calc_error_reg0),
        .I3(out[0]),
        .O(\sig_btt_cntr_im0[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_2 
       (.I0(sig_addr_cntr_incr_ireg2[7]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_3 
       (.I0(sig_addr_cntr_incr_ireg2[6]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_4 
       (.I0(sig_addr_cntr_incr_ireg2[5]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_5 
       (.I0(sig_addr_cntr_incr_ireg2[4]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_6 
       (.I0(sig_addr_cntr_incr_ireg2[3]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_7 
       (.I0(sig_addr_cntr_incr_ireg2[2]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_8 
       (.I0(sig_addr_cntr_incr_ireg2[1]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sig_btt_cntr_im0[7]_i_9 
       (.I0(sig_addr_cntr_incr_ireg2[0]),
        .I1(sig_calc_error_reg0),
        .O(\sig_btt_cntr_im0[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_15 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_13 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_12 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_11 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_10 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_9 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_8 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_btt_cntr_im0_reg[15]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED [7],\sig_btt_cntr_im0_reg[15]_i_1_n_1 ,\sig_btt_cntr_im0_reg[15]_i_1_n_2 ,\sig_btt_cntr_im0_reg[15]_i_1_n_3 ,\sig_btt_cntr_im0_reg[15]_i_1_n_4 ,\sig_btt_cntr_im0_reg[15]_i_1_n_5 ,\sig_btt_cntr_im0_reg[15]_i_1_n_6 ,\sig_btt_cntr_im0_reg[15]_i_1_n_7 }),
        .DI({1'b0,\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_3_n_0 ,\sig_btt_cntr_im0[15]_i_4_n_0 ,\sig_btt_cntr_im0[15]_i_5_n_0 }),
        .O({\sig_btt_cntr_im0_reg[15]_i_1_n_8 ,\sig_btt_cntr_im0_reg[15]_i_1_n_9 ,\sig_btt_cntr_im0_reg[15]_i_1_n_10 ,\sig_btt_cntr_im0_reg[15]_i_1_n_11 ,\sig_btt_cntr_im0_reg[15]_i_1_n_12 ,\sig_btt_cntr_im0_reg[15]_i_1_n_13 ,\sig_btt_cntr_im0_reg[15]_i_1_n_14 ,\sig_btt_cntr_im0_reg[15]_i_1_n_15 }),
        .S({\sig_btt_cntr_im0[15]_i_6_n_0 ,\sig_btt_cntr_im0[15]_i_7_n_0 ,\sig_btt_cntr_im0[15]_i_8_n_0 ,\sig_btt_cntr_im0[15]_i_9_n_0 ,\sig_btt_cntr_im0[15]_i_10_n_0 ,\sig_btt_cntr_im0[15]_i_11_n_0 ,\sig_btt_cntr_im0[15]_i_12_n_0 ,\sig_btt_cntr_im0[15]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_14 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_13 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_12 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_11 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_10 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_9 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_8 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_btt_cntr_im0_reg[7]_i_1 
       (.CI(\sig_btt_cntr_im0[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sig_btt_cntr_im0_reg[7]_i_1_n_0 ,\sig_btt_cntr_im0_reg[7]_i_1_n_1 ,\sig_btt_cntr_im0_reg[7]_i_1_n_2 ,\sig_btt_cntr_im0_reg[7]_i_1_n_3 ,\sig_btt_cntr_im0_reg[7]_i_1_n_4 ,\sig_btt_cntr_im0_reg[7]_i_1_n_5 ,\sig_btt_cntr_im0_reg[7]_i_1_n_6 ,\sig_btt_cntr_im0_reg[7]_i_1_n_7 }),
        .DI({\sig_btt_cntr_im0[7]_i_2_n_0 ,\sig_btt_cntr_im0[7]_i_3_n_0 ,\sig_btt_cntr_im0[7]_i_4_n_0 ,\sig_btt_cntr_im0[7]_i_5_n_0 ,\sig_btt_cntr_im0[7]_i_6_n_0 ,\sig_btt_cntr_im0[7]_i_7_n_0 ,\sig_btt_cntr_im0[7]_i_8_n_0 ,\sig_btt_cntr_im0[7]_i_9_n_0 }),
        .O({\sig_btt_cntr_im0_reg[7]_i_1_n_8 ,\sig_btt_cntr_im0_reg[7]_i_1_n_9 ,\sig_btt_cntr_im0_reg[7]_i_1_n_10 ,\sig_btt_cntr_im0_reg[7]_i_1_n_11 ,\sig_btt_cntr_im0_reg[7]_i_1_n_12 ,\sig_btt_cntr_im0_reg[7]_i_1_n_13 ,\sig_btt_cntr_im0_reg[7]_i_1_n_14 ,\sig_btt_cntr_im0_reg[7]_i_1_n_15 }),
        .S({\sig_btt_cntr_im0[7]_i_10_n_0 ,\sig_btt_cntr_im0[7]_i_11_n_0 ,\sig_btt_cntr_im0[7]_i_12_n_0 ,\sig_btt_cntr_im0[7]_i_13_n_0 ,\sig_btt_cntr_im0[7]_i_14_n_0 ,\sig_btt_cntr_im0[7]_i_15_n_0 ,\sig_btt_cntr_im0[7]_i_16_n_0 ,\sig_btt_cntr_im0[7]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_15 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_14 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    sig_btt_eq_b2mbaa_ireg1_i_1
       (.I0(sig_btt_eq_b2mbaa_ireg1_i_2_n_0),
        .I1(sig_addr_aligned_im0),
        .I2(sig_btt_eq_b2mbaa_ireg1_i_3_n_0),
        .I3(sig_btt_eq_b2mbaa_ireg1_i_4_n_0),
        .I4(sig_btt_eq_b2mbaa_ireg1_i_5_n_0),
        .I5(sig_btt_eq_b2mbaa_ireg1_i_6_n_0),
        .O(sig_btt_eq_b2mbaa_im0));
  LUT6 #(
    .INIT(64'h1114222844428881)) 
    sig_btt_eq_b2mbaa_ireg1_i_2
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I3(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000482100000000)) 
    sig_btt_eq_b2mbaa_ireg1_i_3
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I5(sig_btt_lt_b2mbaa_ireg1_i_2_n_0),
        .O(sig_btt_eq_b2mbaa_ireg1_i_3_n_0));
  LUT6 #(
    .INIT(64'h015402A85402A801)) 
    sig_btt_eq_b2mbaa_ireg1_i_4
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_4_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    sig_btt_eq_b2mbaa_ireg1_i_5
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_im01_carry_i_13_n_0),
        .I2(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_14_n_0),
        .O(sig_btt_eq_b2mbaa_ireg1_i_5_n_0));
  LUT6 #(
    .INIT(64'h1045208A45208A10)) 
    sig_btt_eq_b2mbaa_ireg1_i_6
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I2(sig_btt_lt_b2mbaa_im01_carry_i_12_n_0),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_eq_b2mbaa_ireg1_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_eq_b2mbaa_im0),
        .Q(sig_btt_eq_b2mbaa_ireg1),
        .R(sig_mmap_reset_reg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 sig_btt_lt_b2mbaa_im01_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_sig_btt_lt_b2mbaa_im01_carry_CO_UNCONNECTED[7:6],sig_btt_lt_b2mbaa_im01,sig_btt_lt_b2mbaa_im01_carry_n_3,sig_btt_lt_b2mbaa_im01_carry_n_4,sig_btt_lt_b2mbaa_im01_carry_n_5,sig_btt_lt_b2mbaa_im01_carry_n_6,sig_btt_lt_b2mbaa_im01_carry_n_7}),
        .DI({1'b0,1'b0,sig_addr_aligned_im0,sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,sig_btt_lt_b2mbaa_im01_carry_i_3_n_0,sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,sig_btt_lt_b2mbaa_im01_carry_i_5_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,sig_btt_lt_b2mbaa_im01_carry_i_7_n_0,sig_btt_lt_b2mbaa_im01_carry_i_8_n_0,sig_btt_lt_b2mbaa_im01_carry_i_9_n_0,sig_btt_lt_b2mbaa_im01_carry_i_10_n_0,sig_btt_lt_b2mbaa_im01_carry_i_11_n_0}));
  LUT6 #(
    .INIT(64'h1111141117177417)) 
    sig_btt_lt_b2mbaa_im01_carry_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_12_n_0),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h015402A85402A801)) 
    sig_btt_lt_b2mbaa_im01_carry_i_10
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h2481)) 
    sig_btt_lt_b2mbaa_im01_carry_i_11
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    sig_btt_lt_b2mbaa_im01_carry_i_12
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I2(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    sig_btt_lt_b2mbaa_im01_carry_i_13
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    sig_btt_lt_b2mbaa_im01_carry_i_14
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h0001111333377770)) 
    sig_btt_lt_b2mbaa_im01_carry_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I2(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1117)) 
    sig_btt_lt_b2mbaa_im01_carry_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_im01_carry_i_13_n_0),
        .I2(sig_btt_lt_b2mbaa_im01_carry_i_14_n_0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0101011337373770)) 
    sig_btt_lt_b2mbaa_im01_carry_i_4
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1370)) 
    sig_btt_lt_b2mbaa_im01_carry_i_5
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_lt_b2mbaa_im01_carry_i_6
       (.I0(sig_addr_aligned_im0),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h1045208A45208A10)) 
    sig_btt_lt_b2mbaa_im01_carry_i_7
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I2(sig_btt_lt_b2mbaa_im01_carry_i_12_n_0),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h1114222844428881)) 
    sig_btt_lt_b2mbaa_im01_carry_i_8
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I3(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    sig_btt_lt_b2mbaa_im01_carry_i_9
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_im01_carry_i_13_n_0),
        .I2(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_14_n_0),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    sig_btt_lt_b2mbaa_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I1(sig_btt_lt_b2mbaa_im01),
        .I2(sig_btt_lt_b2mbaa_ireg1_i_2_n_0),
        .O(sig_btt_lt_b2mbaa_im0));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_btt_lt_b2mbaa_ireg1_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .O(sig_btt_lt_b2mbaa_ireg1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_lt_b2mbaa_ireg1_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_lt_b2mbaa_im0),
        .Q(sig_btt_lt_b2mbaa_ireg1),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sig_bytes_to_mbaa_ireg1[1]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(sig_bytes_to_mbaa_im0[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \sig_bytes_to_mbaa_ireg1[2]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(sig_bytes_to_mbaa_im0[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \sig_bytes_to_mbaa_ireg1[3]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(sig_bytes_to_mbaa_im0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(sig_bytes_to_mbaa_im0[4]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sig_bytes_to_mbaa_ireg1[5]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(sig_bytes_to_mbaa_im0[5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \sig_bytes_to_mbaa_ireg1[6]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I2(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .O(sig_bytes_to_mbaa_im0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \sig_bytes_to_mbaa_ireg1[7]_i_1 
       (.I0(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(sig_bytes_to_mbaa_im0[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \sig_bytes_to_mbaa_ireg1[8]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I2(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .O(sig_bytes_to_mbaa_im0[8]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sig_bytes_to_mbaa_ireg1[9]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I4(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(sig_bytes_to_mbaa_im0[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_bytes_to_mbaa_ireg1[9]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(\sig_bytes_to_mbaa_ireg1[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .Q(sig_bytes_to_mbaa_ireg1[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[1]),
        .Q(sig_bytes_to_mbaa_ireg1[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[2]),
        .Q(sig_bytes_to_mbaa_ireg1[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[3]),
        .Q(sig_bytes_to_mbaa_ireg1[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[4]),
        .Q(sig_bytes_to_mbaa_ireg1[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[5]),
        .Q(sig_bytes_to_mbaa_ireg1[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[6]),
        .Q(sig_bytes_to_mbaa_ireg1[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[7]),
        .Q(sig_bytes_to_mbaa_ireg1[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[8]),
        .Q(sig_bytes_to_mbaa_ireg1[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[9]),
        .Q(sig_bytes_to_mbaa_ireg1[9]),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(sig_calc2dm_calc_err),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    sig_calc_error_reg_i_1
       (.I0(sig_calc_error_reg_i_2_n_0),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(sig_calc_error_reg_i_3_n_0),
        .O(sig_btt_is_zero));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_2
       (.I0(out[12]),
        .I1(out[13]),
        .I2(out[10]),
        .I3(out[11]),
        .I4(out[15]),
        .I5(out[14]),
        .O(sig_calc_error_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_3
       (.I0(out[6]),
        .I1(out[7]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(out[9]),
        .I5(out[8]),
        .O(sig_calc_error_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(sig_btt_is_zero),
        .Q(sig_calc2dm_calc_err),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h54540454)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_cmd2addr_valid_reg_0),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_mstr2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h50445544)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_cmd2data_valid_reg_0),
        .I3(sig_mstr2data_cmd_valid),
        .I4(sig_inhibit_rdy_n_1),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_mstr2data_cmd_valid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_cmd2dre_valid_reg_n_0),
        .I2(sig_first_xfer_im0),
        .I3(sig_sm_ld_calc3_reg),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h56669AAA)) 
    \sig_finish_addr_offset_ireg2[0]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[0]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(sig_finish_addr_offset_im1[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sig_finish_addr_offset_ireg2[1]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(sig_finish_addr_offset_im1[1]));
  LUT6 #(
    .INIT(64'hEA4015BF15BFEA40)) 
    \sig_finish_addr_offset_ireg2[2]_i_1 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_first_xfer_im0),
        .I2(sig_bytes_to_mbaa_ireg1[2]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I5(\sig_finish_addr_offset_ireg2[3]_i_2_n_0 ),
        .O(sig_finish_addr_offset_im1[2]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \sig_finish_addr_offset_ireg2[3]_i_1 
       (.I0(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .I3(\sig_finish_addr_offset_ireg2[3]_i_2_n_0 ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(sig_finish_addr_offset_im1[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \sig_finish_addr_offset_ireg2[3]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .O(\sig_finish_addr_offset_ireg2[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[0]),
        .Q(sig_finish_addr_offset_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[1]),
        .Q(sig_finish_addr_offset_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[2]),
        .Q(sig_finish_addr_offset_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[3]),
        .Q(sig_finish_addr_offset_ireg2[3]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'h0054)) 
    sig_first_xfer_im0_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_calc_error_reg0),
        .I2(sig_first_xfer_im0),
        .I3(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(sig_first_xfer_im0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_xfer_im0_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_first_xfer_im0_i_1_n_0),
        .Q(sig_first_xfer_im0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[16]),
        .Q(sig_mstr2addr_burst),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[17]),
        .Q(sig_input_eof_reg_reg_n_0),
        .R(sig_input_cache_type_reg0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_input_reg_empty_i_1
       (.I0(sig_calc_error_pushed),
        .I1(sig_mmap_reset_reg),
        .I2(sig_sm_pop_input_reg),
        .O(sig_input_cache_type_reg0));
  LUT4 #(
    .INIT(16'h0100)) 
    sig_input_reg_empty_i_2
       (.I0(sig_sm_halt_reg),
        .I1(sig_calc2dm_calc_err),
        .I2(Q[1]),
        .I3(sig_input_reg_empty),
        .O(sig_calc_error_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(1'b0),
        .Q(sig_input_reg_empty),
        .S(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[50]),
        .Q(in[0]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[51]),
        .Q(in[1]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[52]),
        .Q(in[2]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_calc_error_reg0),
        .D(out[53]),
        .Q(in[3]),
        .R(sig_input_cache_type_reg0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    sig_last_addr_offset_im2
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(sel0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    sig_ld_xfer_reg_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_ld_xfer_reg),
        .I3(sig_xfer_reg_empty),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0054)) 
    sig_ld_xfer_reg_tmp_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_ld_xfer_reg_tmp),
        .I3(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(sig_ld_xfer_reg_tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_tmp_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_tmp_i_1_n_0),
        .Q(sig_ld_xfer_reg_tmp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_reset_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(sig_mmap_reset_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_no_btt_residue_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I4(sig_no_btt_residue_ireg1_i_2_n_0),
        .O(sig_no_btt_residue_im0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_no_btt_residue_ireg1_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(sig_no_btt_residue_ireg1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_no_btt_residue_ireg1_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_no_btt_residue_im0),
        .Q(sig_no_btt_residue_ireg1),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h00001510)) 
    sig_parent_done_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(in[43]),
        .I2(sig_ld_xfer_reg_tmp),
        .I3(sig_parent_done),
        .I4(sig_calc_error_reg0),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(sig_addr_cntr_incr_ireg2[10]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(sig_addr_cntr_incr_ireg2[9]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(sig_addr_cntr_incr_ireg2[8]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(sig_addr_cntr_incr_ireg2[7]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(sig_addr_cntr_incr_ireg2[6]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(sig_addr_cntr_incr_ireg2[5]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(sig_addr_cntr_incr_ireg2[4]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_6 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(sig_addr_cntr_incr_ireg2[3]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_7 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(sig_addr_cntr_incr_ireg2[2]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_8 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(sig_addr_cntr_incr_ireg2[1]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_9 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(sig_addr_cntr_incr_ireg2[0]),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[0]),
        .Q(sig_predict_addr_lsh_ireg3__0[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[10]),
        .Q(sig_predict_addr_lsh_ireg3__0[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[11]),
        .Q(sig_predict_addr_lsh_ireg3__0[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[12]),
        .Q(sig_predict_addr_lsh_ireg3__0[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[13]),
        .Q(sig_predict_addr_lsh_ireg3__0[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[14]),
        .Q(sig_predict_addr_lsh_ireg3__0[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[15]),
        .Q(sig_predict_addr_lsh_ireg3),
        .R(sig_mmap_reset_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sig_predict_addr_lsh_ireg3_reg[15]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED [7],\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_4 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_5 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_6 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_7 }),
        .DI({1'b0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] ,\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }),
        .O(sig_predict_addr_lsh_im2[15:8]),
        .S({p_1_in,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] ,\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[15]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[15]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[1]),
        .Q(sig_predict_addr_lsh_ireg3__0[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[2]),
        .Q(sig_predict_addr_lsh_ireg3__0[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[3]),
        .Q(sig_predict_addr_lsh_ireg3__0[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[4]),
        .Q(sig_predict_addr_lsh_ireg3__0[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[5]),
        .Q(sig_predict_addr_lsh_ireg3__0[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[6]),
        .Q(sig_predict_addr_lsh_ireg3__0[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[7]),
        .Q(sig_predict_addr_lsh_ireg3__0[7]),
        .R(sig_mmap_reset_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sig_predict_addr_lsh_ireg3_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_4 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_5 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_6 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_7 }),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_addr_cntr_lsh_im0_reg_n_0_[6] ,\sig_addr_cntr_lsh_im0_reg_n_0_[5] ,\sig_addr_cntr_lsh_im0_reg_n_0_[4] ,\sig_addr_cntr_lsh_im0_reg_n_0_[3] ,\sig_addr_cntr_lsh_im0_reg_n_0_[2] ,\sig_addr_cntr_lsh_im0_reg_n_0_[1] ,\sig_addr_cntr_lsh_im0_reg_n_0_[0] }),
        .O(sig_predict_addr_lsh_im2[7:0]),
        .S({\sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_6_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_7_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_8_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[8]),
        .Q(sig_predict_addr_lsh_ireg3__0[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[9]),
        .Q(sig_predict_addr_lsh_ireg3__0[9]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hFFEA)) 
    sig_sm_halt_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I2(sig_calc_error_pushed),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF020202)) 
    sig_sm_ld_calc1_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I1(sig_calc_error_pushed),
        .I2(sig_parent_done),
        .I3(sig_calc_error_reg0),
        .I4(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .O(sig_sm_ld_calc1_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc1_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg_ns),
        .Q(sig_sm_ld_calc1_reg),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg),
        .Q(sig_sm_ld_calc2_reg),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc3_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg),
        .Q(sig_sm_ld_calc3_reg),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_pop_input_reg_i_1
       (.I0(sig_calc_error_pushed),
        .I1(sig_parent_done),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .Q(sig_strbgen_addr_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .Q(sig_strbgen_addr_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .Q(sig_strbgen_addr_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .Q(sig_strbgen_addr_ireg2[3]),
        .R(sig_mmap_reset_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strbgen_bytes_ireg2[3]_i_1 
       (.I0(sig_strbgen_bytes_ireg2),
        .I1(sig_mmap_reset_reg),
        .O(\sig_strbgen_bytes_ireg2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8C8C8C80)) 
    \sig_strbgen_bytes_ireg2[3]_i_2 
       (.I0(sig_no_btt_residue_ireg1_i_2_n_0),
        .I1(sig_sm_ld_calc2_reg),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_strbgen_bytes_ireg2[3]_i_3_n_0 ),
        .I4(\sig_strbgen_bytes_ireg2[3]_i_4_n_0 ),
        .O(sig_strbgen_bytes_ireg2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_strbgen_bytes_ireg2[3]_i_3 
       (.I0(sig_bytes_to_mbaa_ireg1[5]),
        .I1(sig_bytes_to_mbaa_ireg1[4]),
        .I2(sig_bytes_to_mbaa_ireg1[9]),
        .I3(sig_bytes_to_mbaa_ireg1[7]),
        .O(\sig_strbgen_bytes_ireg2[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sig_strbgen_bytes_ireg2[3]_i_4 
       (.I0(sig_bytes_to_mbaa_ireg1[8]),
        .I1(sig_bytes_to_mbaa_ireg1[6]),
        .I2(sig_first_xfer_im0),
        .I3(sig_addr_aligned_ireg1),
        .O(\sig_strbgen_bytes_ireg2[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \sig_strbgen_bytes_ireg2[4]_i_1 
       (.I0(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .I1(sig_sm_ld_calc2_reg),
        .I2(sig_strbgen_bytes_ireg2),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .O(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .R(\sig_strbgen_bytes_ireg2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .R(\sig_strbgen_bytes_ireg2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .R(\sig_strbgen_bytes_ireg2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .R(\sig_strbgen_bytes_ireg2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAA81)) 
    \sig_xfer_end_strb_ireg3[10]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hAA01)) 
    \sig_xfer_end_strb_ireg3[11]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8881)) 
    \sig_xfer_end_strb_ireg3[12]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .O(\sig_xfer_end_strb_ireg3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8801)) 
    \sig_xfer_end_strb_ireg3[13]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \sig_xfer_end_strb_ireg3[14]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \sig_xfer_end_strb_ireg3[15]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sig_xfer_end_strb_ireg3[1]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFEB)) 
    \sig_xfer_end_strb_ireg3[2]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFAB)) 
    \sig_xfer_end_strb_ireg3[3]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEEEB)) 
    \sig_xfer_end_strb_ireg3[4]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .O(\sig_xfer_end_strb_ireg3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEEAB)) 
    \sig_xfer_end_strb_ireg3[5]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEAAB)) 
    \sig_xfer_end_strb_ireg3[6]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \sig_xfer_end_strb_ireg3[7]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hAA89)) 
    \sig_xfer_end_strb_ireg3[9]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[3]),
        .I1(sig_finish_addr_offset_ireg2[1]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[2]),
        .O(\sig_xfer_end_strb_ireg3[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(1'b1),
        .Q(sig_xfer_end_strb_ireg3[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[10]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[11]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[12]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[13]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[14]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[15]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[2]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[4]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[5]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[6]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[7]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sel0),
        .Q(sig_xfer_end_strb_ireg3[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[9]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[9]),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h0000010001000000)) 
    sig_xfer_len_eq_0_ireg3_i_1
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .I3(sig_xfer_len_eq_0_ireg3_i_2_n_0),
        .I4(sig_xfer_len_eq_0_ireg3_i_3_n_0),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .O(sig_xfer_len_eq_0_im2));
  LUT6 #(
    .INIT(64'h0000000155555554)) 
    sig_xfer_len_eq_0_ireg3_i_2
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .O(sig_xfer_len_eq_0_ireg3_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_xfer_len_eq_0_ireg3_i_3
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .O(sig_xfer_len_eq_0_ireg3_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_len_eq_0_ireg3_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_len_eq_0_im2),
        .Q(sig_xfer_len_eq_0_ireg3),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hAEFE)) 
    sig_xfer_reg_empty_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I2(sig_xfer_reg_empty),
        .I3(sig_ld_xfer_reg),
        .O(sig_xfer_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_xfer_reg_empty_i_1_n_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \sig_xfer_strt_strb_ireg3[0]_i_1 
       (.I0(sig_strbgen_addr_ireg2[2]),
        .I1(sig_strbgen_addr_ireg2[1]),
        .I2(sig_strbgen_addr_ireg2[0]),
        .I3(sig_strbgen_addr_ireg2[3]),
        .O(\sig_xfer_strt_strb_ireg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hDDD00000)) 
    \sig_xfer_strt_strb_ireg3[10]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[10]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[10]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \sig_xfer_strt_strb_ireg3[10]_i_2 
       (.I0(sig_strbgen_addr_ireg2[0]),
        .I1(sig_strbgen_addr_ireg2[1]),
        .I2(sig_strbgen_addr_ireg2[2]),
        .O(\sig_xfer_strt_strb_ireg3[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7770707000000000)) 
    \sig_xfer_strt_strb_ireg3[11]_i_1 
       (.I0(sig_strbgen_addr_ireg2[2]),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[11]));
  LUT6 #(
    .INIT(64'h57FF000000000000)) 
    \sig_xfer_strt_strb_ireg3[12]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(sig_strbgen_addr_ireg2[0]),
        .I2(sig_strbgen_addr_ireg2[1]),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .O(\sig_xfer_strt_strb_ireg3[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD000D000D0000000)) 
    \sig_xfer_strt_strb_ireg3[13]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[13]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .O(sig_xfer_strt_strb_im2[13]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sig_xfer_strt_strb_ireg3[13]_i_2 
       (.I0(sig_strbgen_addr_ireg2[2]),
        .I1(sig_strbgen_addr_ireg2[1]),
        .O(\sig_xfer_strt_strb_ireg3[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hD0000000)) 
    \sig_xfer_strt_strb_ireg3[14]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[14]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .O(sig_xfer_strt_strb_im2[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sig_xfer_strt_strb_ireg3[14]_i_2 
       (.I0(sig_strbgen_addr_ireg2[0]),
        .I1(sig_strbgen_addr_ireg2[1]),
        .I2(sig_strbgen_addr_ireg2[2]),
        .O(\sig_xfer_strt_strb_ireg3[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_xfer_strt_strb_ireg3[15]_i_1 
       (.I0(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I1(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \sig_xfer_strt_strb_ireg3[15]_i_10 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0011FFEF)) 
    \sig_xfer_strt_strb_ireg3[15]_i_11 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0505FAFB)) 
    \sig_xfer_strt_strb_ireg3[15]_i_12 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBE189A00)) 
    \sig_xfer_strt_strb_ireg3[15]_i_13 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I2(\I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3 ),
        .I3(sig_strbgen_addr_ireg2[1]),
        .I4(sig_strbgen_addr_ireg2[0]),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0F0F0F1)) 
    \sig_xfer_strt_strb_ireg3[15]_i_14 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AA00A8)) 
    \sig_xfer_strt_strb_ireg3[15]_i_15 
       (.I0(sig_strbgen_addr_ireg2[0]),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_xfer_strt_strb_ireg3[15]_i_16 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1E7878E1)) 
    \sig_xfer_strt_strb_ireg3[15]_i_2 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(\sig_xfer_strt_strb_ireg3[15]_i_6_n_0 ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(sig_strbgen_addr_ireg2[3]),
        .I4(\sig_xfer_strt_strb_ireg3[15]_i_7_n_0 ),
        .I5(\I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_end_addr_us__37 ),
        .O(\I_STRT_STRB_GEN/sig_end_offset_un [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF1E7878E1)) 
    \sig_xfer_strt_strb_ireg3[15]_i_3 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(\sig_xfer_strt_strb_ireg3[15]_i_6_n_0 ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(sig_strbgen_addr_ireg2[3]),
        .I4(\sig_xfer_strt_strb_ireg3[15]_i_7_n_0 ),
        .I5(\sig_xfer_strt_strb_ireg3[15]_i_9_n_0 ),
        .O(\I_STRT_STRB_GEN/sig_end_offset_un [0]));
  LUT5 #(
    .INIT(32'hD77E7EEB)) 
    \sig_xfer_strt_strb_ireg3[15]_i_4 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I3(\sig_xfer_strt_strb_ireg3[15]_i_6_n_0 ),
        .I4(\sig_xfer_strt_strb_ireg3[15]_i_7_n_0 ),
        .O(\I_STRT_STRB_GEN/sig_end_offset_un [3]));
  LUT6 #(
    .INIT(64'hA6FFFFA6FF65A6FF)) 
    \sig_xfer_strt_strb_ireg3[15]_i_5 
       (.I0(\sig_xfer_strt_strb_ireg3[15]_i_10_n_0 ),
        .I1(\sig_xfer_strt_strb_ireg3[15]_i_11_n_0 ),
        .I2(sig_strbgen_addr_ireg2[3]),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(\sig_xfer_strt_strb_ireg3[15]_i_12_n_0 ),
        .I5(\sig_xfer_strt_strb_ireg3[15]_i_13_n_0 ),
        .O(\I_STRT_STRB_GEN/sig_end_offset_un [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFAFB)) 
    \sig_xfer_strt_strb_ireg3[15]_i_6 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFA9EB81EB81A900)) 
    \sig_xfer_strt_strb_ireg3[15]_i_7 
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I1(\sig_xfer_strt_strb_ireg3[15]_i_14_n_0 ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(\sig_xfer_strt_strb_ireg3[15]_i_15_n_0 ),
        .I5(sig_strbgen_addr_ireg2[1]),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h24DBDB24)) 
    \sig_xfer_strt_strb_ireg3[15]_i_8 
       (.I0(sig_strbgen_addr_ireg2[0]),
        .I1(\I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_length_adjust_us__3 ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(sig_strbgen_addr_ireg2[1]),
        .O(\I_STRT_STRB_GEN/GEN_OFF_LEN_CASE.lsig_end_addr_us__37 ));
  LUT6 #(
    .INIT(64'hAA55AA55AA55AA56)) 
    \sig_xfer_strt_strb_ireg3[15]_i_9 
       (.I0(sig_strbgen_addr_ireg2[0]),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(\sig_xfer_strt_strb_ireg3[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \sig_xfer_strt_strb_ireg3[1]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[9]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    \sig_xfer_strt_strb_ireg3[2]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[10]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[2]));
  LUT6 #(
    .INIT(64'h1111111111101010)) 
    \sig_xfer_strt_strb_ireg3[3]_i_1 
       (.I0(sig_strbgen_addr_ireg2[2]),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[3]));
  LUT6 #(
    .INIT(64'h0155015501550000)) 
    \sig_xfer_strt_strb_ireg3[4]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(sig_strbgen_addr_ireg2[0]),
        .I2(sig_strbgen_addr_ireg2[1]),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[4]));
  LUT6 #(
    .INIT(64'h4444444044004400)) 
    \sig_xfer_strt_strb_ireg3[5]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[13]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .O(sig_xfer_strt_strb_im2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h44444000)) 
    \sig_xfer_strt_strb_ireg3[6]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[14]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    \sig_xfer_strt_strb_ireg3[7]_i_1 
       (.I0(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I1(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .I4(sig_strbgen_addr_ireg2[3]),
        .O(\sig_xfer_strt_strb_ireg3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h55570000)) 
    \sig_xfer_strt_strb_ireg3[8]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(sig_strbgen_addr_ireg2[0]),
        .I2(sig_strbgen_addr_ireg2[1]),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[8]));
  LUT6 #(
    .INIT(64'hDDDDDDD000000000)) 
    \sig_xfer_strt_strb_ireg3[9]_i_1 
       (.I0(sig_strbgen_addr_ireg2[3]),
        .I1(\sig_xfer_strt_strb_ireg3[9]_i_2_n_0 ),
        .I2(\I_STRT_STRB_GEN/sig_end_offset_un [2]),
        .I3(\I_STRT_STRB_GEN/sig_end_offset_un [0]),
        .I4(\I_STRT_STRB_GEN/sig_end_offset_un [1]),
        .I5(\I_STRT_STRB_GEN/sig_end_offset_un [3]),
        .O(sig_xfer_strt_strb_im2[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sig_xfer_strt_strb_ireg3[9]_i_2 
       (.I0(sig_strbgen_addr_ireg2[2]),
        .I1(sig_strbgen_addr_ireg2[1]),
        .O(\sig_xfer_strt_strb_ireg3[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[0]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[10]),
        .Q(sig_xfer_strt_strb_ireg3[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[11]),
        .Q(sig_xfer_strt_strb_ireg3[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[12]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[13]),
        .Q(sig_xfer_strt_strb_ireg3[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[14]),
        .Q(sig_xfer_strt_strb_ireg3[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[15]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[1]),
        .Q(sig_xfer_strt_strb_ireg3[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[2]),
        .Q(sig_xfer_strt_strb_ireg3[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[3]),
        .Q(sig_xfer_strt_strb_ireg3[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[4]),
        .Q(sig_xfer_strt_strb_ireg3[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[5]),
        .Q(sig_xfer_strt_strb_ireg3[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[6]),
        .Q(sig_xfer_strt_strb_ireg3[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_strt_strb_ireg3[7]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_ireg3[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[8]),
        .Q(sig_xfer_strt_strb_ireg3[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[9]),
        .Q(sig_xfer_strt_strb_ireg3[9]),
        .R(sig_mmap_reset_reg));
endmodule

(* ORIG_REF_NAME = "axi_datamover_reset" *) 
module ps_axi_datamover_1_0_axi_datamover_reset
   (sig_cmd_stat_rst_int_reg_n,
    sig_mmap_rst_reg_n,
    sig_stream_rst_reg_n,
    sig_mmap_rst_reg_n_reg_0,
    sig_mmap_rst_reg_n_reg_1,
    sig_mmap_rst_reg_n_reg_2,
    SR,
    sig_stream_rst_reg_n_reg_0,
    SS,
    m_axi_s2mm_aresetn,
    m_axi_s2mm_aclk,
    sig_mmap_reset_reg,
    sig_init_reg2,
    sig_init_done,
    sig_init_done_0,
    sig_init_done_1);
  output sig_cmd_stat_rst_int_reg_n;
  output sig_mmap_rst_reg_n;
  output sig_stream_rst_reg_n;
  output sig_mmap_rst_reg_n_reg_0;
  output sig_mmap_rst_reg_n_reg_1;
  output sig_mmap_rst_reg_n_reg_2;
  output [0:0]SR;
  output [0:0]sig_stream_rst_reg_n_reg_0;
  output [0:0]SS;
  input m_axi_s2mm_aresetn;
  input m_axi_s2mm_aclk;
  input sig_mmap_reset_reg;
  input sig_init_reg2;
  input sig_init_done;
  input sig_init_done_0;
  input sig_init_done_1;

  wire [0:0]SR;
  wire [0:0]SS;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_aresetn;
  wire sig_cmd_stat_rst_int_reg_n;
  (* RTL_KEEP = "true" *) wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mmap_rst_reg_n_reg_0;
  wire sig_mmap_rst_reg_n_reg_1;
  wire sig_mmap_rst_reg_n_reg_2;
  wire sig_stream_rst_reg_n;
  wire [0:0]sig_stream_rst_reg_n_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \addr_i[2]_i_1__4 
       (.I0(sig_cmd_stat_rst_int_reg_n),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \addr_i[3]_i_1 
       (.I0(sig_mmap_rst_reg_n),
        .O(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_int_reg_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(m_axi_s2mm_aresetn),
        .Q(sig_cmd_stat_rst_int_reg_n),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(m_axi_s2mm_aresetn),
        .Q(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1
       (.I0(sig_mmap_rst_reg_n),
        .I1(sig_mmap_reset_reg),
        .I2(sig_init_reg2),
        .I3(sig_init_done),
        .O(sig_mmap_rst_reg_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__0
       (.I0(sig_mmap_rst_reg_n),
        .I1(sig_mmap_reset_reg),
        .I2(sig_init_reg2),
        .I3(sig_init_done_0),
        .O(sig_mmap_rst_reg_n_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__2
       (.I0(sig_mmap_rst_reg_n),
        .I1(sig_mmap_reset_reg),
        .I2(sig_init_reg2),
        .I3(sig_init_done_1),
        .O(sig_mmap_rst_reg_n_reg_2));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_rst_reg_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(m_axi_s2mm_aresetn),
        .Q(sig_mmap_rst_reg_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_strb_reg_out[15]_i_1 
       (.I0(sig_stream_rst_reg_n),
        .O(sig_stream_rst_reg_n_reg_0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_stream_rst_reg_n_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(m_axi_s2mm_aresetn),
        .Q(sig_stream_rst_reg_n),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_s2mm_full_wrap" *) 
module ps_axi_datamover_1_0_axi_datamover_s2mm_full_wrap
   (m_axis_s2mm_sts_tdata,
    s_axis_s2mm_tready,
    s2mm_addr_req_posted,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awvalid,
    m_axi_s2mm_wvalid,
    m_axi_s2mm_wdata,
    m_axi_s2mm_wstrb,
    m_axi_s2mm_wlast,
    s_axis_s2mm_cmd_tready,
    m_axis_s2mm_sts_tvalid,
    m_axi_s2mm_bready,
    s2mm_err,
    s_axis_s2mm_cmd_tdata,
    m_axi_s2mm_aclk,
    m_axi_s2mm_bresp,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tlast,
    m_axi_s2mm_aresetn,
    s_axis_s2mm_cmd_tvalid,
    m_axis_s2mm_sts_tready,
    m_axi_s2mm_bvalid,
    s_axis_s2mm_tvalid,
    m_axi_s2mm_wready,
    m_axi_s2mm_awready);
  output [7:0]m_axis_s2mm_sts_tdata;
  output s_axis_s2mm_tready;
  output s2mm_addr_req_posted;
  output [31:0]m_axi_s2mm_awaddr;
  output [5:0]m_axi_s2mm_awlen;
  output [0:0]m_axi_s2mm_awsize;
  output [0:0]m_axi_s2mm_awburst;
  output m_axi_s2mm_awvalid;
  output m_axi_s2mm_wvalid;
  output [127:0]m_axi_s2mm_wdata;
  output [15:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output s_axis_s2mm_cmd_tready;
  output m_axis_s2mm_sts_tvalid;
  output m_axi_s2mm_bready;
  output s2mm_err;
  input [53:0]s_axis_s2mm_cmd_tdata;
  input m_axi_s2mm_aclk;
  input [1:0]m_axi_s2mm_bresp;
  input [127:0]s_axis_s2mm_tdata;
  input [15:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tlast;
  input m_axi_s2mm_aresetn;
  input s_axis_s2mm_cmd_tvalid;
  input m_axis_s2mm_sts_tready;
  input m_axi_s2mm_bvalid;
  input s_axis_s2mm_tvalid;
  input m_axi_s2mm_wready;
  input m_axi_s2mm_awready;

  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_reg2 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \GEN_INCLUDE_PCC.I_MSTR_PCC_n_51 ;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done ;
  wire I_ADDR_CNTL_n_2;
  wire [0:0]\I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i ;
  wire [0:0]\I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i_p1 ;
  wire \I_CMD_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire I_CMD_STATUS_n_0;
  wire I_CMD_STATUS_n_1;
  wire I_RESET_n_3;
  wire I_RESET_n_4;
  wire I_RESET_n_5;
  wire \I_WRESP_STATUS_FIFO/sig_init_done ;
  wire I_WR_DATA_CNTL_n_0;
  wire I_WR_DATA_CNTL_n_17;
  wire I_WR_DATA_CNTL_n_19;
  wire I_WR_STATUS_CNTLR_n_0;
  wire dre2skid_wready;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_aresetn;
  wire [31:0]m_axi_s2mm_awaddr;
  wire [0:0]m_axi_s2mm_awburst;
  wire [5:0]m_axi_s2mm_awlen;
  wire m_axi_s2mm_awready;
  wire [0:0]m_axi_s2mm_awsize;
  wire m_axi_s2mm_awvalid;
  wire m_axi_s2mm_bready;
  wire [1:0]m_axi_s2mm_bresp;
  wire m_axi_s2mm_bvalid;
  wire [127:0]m_axi_s2mm_wdata;
  wire m_axi_s2mm_wlast;
  wire m_axi_s2mm_wready;
  wire [15:0]m_axi_s2mm_wstrb;
  wire m_axi_s2mm_wvalid;
  wire [7:0]m_axis_s2mm_sts_tdata;
  wire m_axis_s2mm_sts_tready;
  wire m_axis_s2mm_sts_tvalid;
  wire p_0_in2_in;
  wire p_0_in2_in_0;
  wire p_0_in3_in;
  wire s2mm_addr_req_posted;
  wire s2mm_err;
  wire [53:0]s_axis_s2mm_cmd_tdata;
  wire s_axis_s2mm_cmd_tready;
  wire s_axis_s2mm_cmd_tvalid;
  wire [127:0]s_axis_s2mm_tdata;
  wire [15:0]s_axis_s2mm_tkeep;
  wire s_axis_s2mm_tlast;
  wire s_axis_s2mm_tready;
  wire s_axis_s2mm_tvalid;
  wire sig_addr2data_addr_posted;
  wire sig_calc2dm_calc_err;
  wire [67:0]sig_cmd2mstr_command;
  wire sig_cmd_stat_rst_int;
  wire sig_cmd_stat_rst_int_reg_n;
  wire sig_coelsc_tag_reg0;
  wire sig_data2all_tlast_error;
  wire sig_data2skid_wlast;
  wire [15:0]sig_data2skid_wstrb;
  wire sig_data2wsc_calc_err;
  wire sig_data2wsc_cmd_cmplt;
  wire sig_data2wsc_last_err;
  wire [3:0]sig_data2wsc_tag;
  wire sig_data_reg_out_en;
  wire sig_data_reg_out_en_1;
  wire [127:0]sig_dre2ibtt_tdata;
  wire sig_dre2ibtt_tlast;
  wire [15:0]sig_dre2ibtt_tstrb;
  wire sig_dre2ibtt_tvalid;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst;
  wire sig_mmap_rst_reg_n;
  wire [31:4]sig_mstr2addr_addr;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_last;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_eof;
  wire [15:0]sig_mstr2data_last_strb;
  wire [5:0]sig_mstr2data_len;
  wire [3:0]sig_mstr2data_saddr_lsb;
  wire sig_mstr2data_sequential;
  wire [15:0]sig_mstr2data_strt_strb;
  wire [3:0]sig_mstr2data_tag;
  wire sig_push_to_wsc;
  wire sig_skid2data_wready;
  wire [15:0]sig_strb_skid_mux_out;
  wire [15:0]sig_strb_skid_reg;
  wire sig_stream_rst;
  wire sig_stream_rst_reg_n;
  wire sig_tlast_err_stop;
  wire sig_wdc_status_going_full;
  wire [7:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;
  wire [127:0]skid2dre_wdata;
  wire skid2dre_wlast;
  wire [15:0]skid2dre_wstrb;
  wire skid2dre_wvalid;

  ps_axi_datamover_1_0_axi_datamover_skid_buf \ENABLE_AXIS_SKID.I_S2MM_STRM_SKID_BUF 
       (.E(sig_data_reg_out_en),
        .Q(skid2dre_wdata),
        .SR(sig_mmap_rst),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(p_0_in2_in),
        .s_axis_s2mm_tdata(s_axis_s2mm_tdata),
        .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep),
        .s_axis_s2mm_tlast(s_axis_s2mm_tlast),
        .s_axis_s2mm_tready(s_axis_s2mm_tready),
        .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid),
        .sig_m_valid_out_reg_0(skid2dre_wvalid),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_s_ready_out_reg_0(dre2skid_wready),
        .\sig_strb_reg_out_reg[15]_0 (skid2dre_wstrb),
        .skid2dre_wlast(skid2dre_wlast));
  ps_axi_datamover_1_0_axi_datamover_pcc \GEN_INCLUDE_PCC.I_MSTR_PCC 
       (.D(\I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i_p1 ),
        .Q({I_CMD_STATUS_n_1,\I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i }),
        .SR(sig_mmap_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\I_CMD_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .\USE_SRL_FIFO.sig_wr_fifo_0 (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_mstr2data_cmd_last,sig_mstr2data_sequential,sig_mstr2data_eof,sig_mstr2data_last_strb,sig_mstr2data_strt_strb,sig_mstr2data_len,sig_mstr2data_tag}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out({sig_cmd2mstr_command[67:32],sig_cmd2mstr_command[30],sig_cmd2mstr_command[23],sig_cmd2mstr_command[15:0]}),
        .s2mm_err(s2mm_err),
        .\sig_addr_cntr_im0_msh_reg[15]_0 ({sig_mstr2addr_addr,sig_mstr2data_saddr_lsb}),
        .sig_calc2dm_calc_err(sig_calc2dm_calc_err),
        .sig_cmd2addr_valid_reg_0(I_ADDR_CNTL_n_2),
        .sig_cmd2data_valid_reg_0(I_WR_DATA_CNTL_n_0),
        .sig_data2all_tlast_error(sig_data2all_tlast_error),
        .sig_inhibit_rdy_n(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mstr2addr_burst(sig_mstr2addr_burst),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_sm_halt_reg_reg_0(\GEN_INCLUDE_PCC.I_MSTR_PCC_n_51 ));
  ps_axi_datamover_1_0_axi_datamover_skid_buf_0 \GEN_NO_REALIGNER.ENABLE_NOREALIGNER_SKID.I_NO_REALIGN_SKID_BUF 
       (.D(skid2dre_wdata),
        .E(sig_data_reg_out_en_1),
        .Q(sig_dre2ibtt_tdata),
        .SR(sig_mmap_rst),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(p_0_in2_in_0),
        .\sig_data_reg_out_reg[127]_0 (p_0_in2_in),
        .sig_dre2ibtt_tlast(sig_dre2ibtt_tlast),
        .sig_m_valid_out_reg_0(sig_dre2ibtt_tvalid),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_s_ready_out_reg_0(dre2skid_wready),
        .sig_s_ready_out_reg_1(sig_data_reg_out_en),
        .sig_s_ready_out_reg_2(skid2dre_wvalid),
        .sig_s_ready_out_reg_3(I_WR_DATA_CNTL_n_19),
        .\sig_strb_reg_out_reg[15]_0 (sig_dre2ibtt_tstrb),
        .\sig_strb_skid_reg_reg[15]_0 (skid2dre_wstrb),
        .skid2dre_wlast(skid2dre_wlast));
  ps_axi_datamover_1_0_axi_datamover_addr_cntl I_ADDR_CNTL
       (.FIFO_Full_reg(I_ADDR_CNTL_n_2),
        .SR(sig_mmap_rst),
        .in({sig_calc2dm_calc_err,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_saddr_lsb}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_awaddr(m_axi_s2mm_awaddr),
        .m_axi_s2mm_awburst(m_axi_s2mm_awburst),
        .m_axi_s2mm_awlen(m_axi_s2mm_awlen),
        .m_axi_s2mm_awready(m_axi_s2mm_awready),
        .m_axi_s2mm_awsize(m_axi_s2mm_awsize),
        .m_axi_s2mm_awvalid(m_axi_s2mm_awvalid),
        .out(sig_addr2data_addr_posted),
        .s2mm_addr_req_posted(s2mm_addr_req_posted),
        .sig_data2all_tlast_error(sig_data2all_tlast_error),
        .sig_inhibit_rdy_n(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_reg2(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_reg2 ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  ps_axi_datamover_1_0_axi_datamover_cmd_status I_CMD_STATUS
       (.D(\I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i_p1 ),
        .FIFO_Full_reg(I_CMD_STATUS_n_0),
        .FIFO_Full_reg_0(\GEN_INCLUDE_PCC.I_MSTR_PCC_n_51 ),
        .Q({I_CMD_STATUS_n_1,\I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/addr_i }),
        .SS(sig_cmd_stat_rst_int),
        .\USE_SRL_FIFO.sig_wr_fifo (\I_CMD_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_wsc2stat_status[7],sig_wsc2stat_status[6],sig_wsc2stat_status[5],sig_wsc2stat_status[4],sig_wsc2stat_status[3],sig_wsc2stat_status[2],sig_wsc2stat_status[1],sig_wsc2stat_status[0]}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axis_s2mm_sts_tdata(m_axis_s2mm_sts_tdata),
        .m_axis_s2mm_sts_tready(m_axis_s2mm_sts_tready),
        .m_axis_s2mm_sts_tvalid(m_axis_s2mm_sts_tvalid),
        .out({sig_cmd2mstr_command[67:32],sig_cmd2mstr_command[30],sig_cmd2mstr_command[23],sig_cmd2mstr_command[15:0]}),
        .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata),
        .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready),
        .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid),
        .sig_cmd_stat_rst_int_reg_n(sig_cmd_stat_rst_int_reg_n),
        .sig_coelsc_tag_reg0(sig_coelsc_tag_reg0),
        .sig_inhibit_rdy_n(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n ),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  ps_axi_datamover_1_0_axi_datamover_reset I_RESET
       (.SR(sig_mmap_rst),
        .SS(sig_cmd_stat_rst_int),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_aresetn(m_axi_s2mm_aresetn),
        .sig_cmd_stat_rst_int_reg_n(sig_cmd_stat_rst_int_reg_n),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done ),
        .sig_init_done_1(\I_WRESP_STATUS_FIFO/sig_init_done ),
        .sig_init_reg2(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_reg2 ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mmap_rst_reg_n_reg_0(I_RESET_n_3),
        .sig_mmap_rst_reg_n_reg_1(I_RESET_n_4),
        .sig_mmap_rst_reg_n_reg_2(I_RESET_n_5),
        .sig_stream_rst_reg_n(sig_stream_rst_reg_n),
        .sig_stream_rst_reg_n_reg_0(sig_stream_rst));
  ps_axi_datamover_1_0_axi_datamover_skid2mm_buf I_S2MM_MMAP_SKID_BUF
       (.D(sig_dre2ibtt_tdata),
        .Q(sig_strb_skid_reg),
        .SR(sig_stream_rst),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_wdata(m_axi_s2mm_wdata),
        .m_axi_s2mm_wlast(m_axi_s2mm_wlast),
        .m_axi_s2mm_wready(m_axi_s2mm_wready),
        .m_axi_s2mm_wstrb(m_axi_s2mm_wstrb),
        .m_axi_s2mm_wvalid(m_axi_s2mm_wvalid),
        .out(p_0_in3_in),
        .sig_data2skid_wlast(sig_data2skid_wlast),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_m_valid_out_reg_0(I_WR_DATA_CNTL_n_17),
        .sig_s_ready_out_reg_0(sig_skid2data_wready),
        .\sig_strb_reg_out_reg[15]_0 (sig_strb_skid_mux_out),
        .\sig_strb_skid_reg_reg[15]_0 (sig_data2skid_wstrb),
        .sig_stream_rst_reg_n(sig_stream_rst_reg_n));
  ps_axi_datamover_1_0_axi_datamover_wrdata_cntl I_WR_DATA_CNTL
       (.E(sig_data_reg_out_en_1),
        .FIFO_Full_reg(I_WR_DATA_CNTL_n_0),
        .\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 (I_WR_STATUS_CNTLR_n_0),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 (sig_dre2ibtt_tstrb),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 (I_WR_DATA_CNTL_n_17),
        .Q(sig_strb_skid_reg),
        .SR(sig_mmap_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .\USE_SRL_FIFO.sig_wr_fifo_0 (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_data2wsc_tag[3],sig_data2wsc_tag[2],sig_data2wsc_tag[1],sig_data2wsc_tag[0],sig_data2wsc_calc_err,sig_data2wsc_last_err,sig_data2wsc_cmd_cmplt}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out(sig_addr2data_addr_posted),
        .sig_data2all_tlast_error(sig_data2all_tlast_error),
        .sig_data2skid_wlast(sig_data2skid_wlast),
        .\sig_data_reg_out_reg[127] (p_0_in2_in_0),
        .sig_dqual_reg_empty_reg_0(sig_dre2ibtt_tvalid),
        .sig_dqual_reg_empty_reg_1(sig_skid2data_wready),
        .sig_dre2ibtt_tlast(sig_dre2ibtt_tlast),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_1(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_2(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_RESET_n_3),
        .sig_last_dbeat_reg_0(sig_data2skid_wstrb),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg_i_5(I_CMD_STATUS_n_0),
        .sig_next_calc_error_reg_reg_0({sig_calc2dm_calc_err,sig_mstr2data_cmd_last,sig_mstr2data_sequential,sig_mstr2data_eof,sig_mstr2data_last_strb,sig_mstr2data_strt_strb,sig_mstr2data_len,sig_mstr2data_tag}),
        .\sig_next_last_strb_reg_reg[15]_0 (sig_strb_skid_mux_out),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_s_ready_out_reg(I_WR_DATA_CNTL_n_19),
        .\sig_strb_reg_out_reg[0] (p_0_in3_in),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  ps_axi_datamover_1_0_axi_datamover_wr_status_cntl I_WR_STATUS_CNTLR
       (.FIFO_Full_reg(I_WR_STATUS_CNTLR_n_0),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0 ({sig_data2wsc_tag[3],sig_data2wsc_tag[2],sig_data2wsc_tag[1],sig_data2wsc_tag[0],sig_data2wsc_calc_err,sig_data2wsc_last_err,sig_data2wsc_cmd_cmplt}),
        .SR(sig_mmap_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_wsc2stat_status[7],sig_wsc2stat_status[6],sig_wsc2stat_status[5],sig_wsc2stat_status[4],sig_wsc2stat_status[3],sig_wsc2stat_status[2],sig_wsc2stat_status[1],sig_wsc2stat_status[0]}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_bready(m_axi_s2mm_bready),
        .m_axi_s2mm_bresp(m_axi_s2mm_bresp),
        .m_axi_s2mm_bvalid(m_axi_s2mm_bvalid),
        .sig_coelsc_tag_reg0(sig_coelsc_tag_reg0),
        .sig_inhibit_rdy_n(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\I_WRESP_STATUS_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done ),
        .sig_init_done_reg(I_RESET_n_5),
        .sig_init_done_reg_0(I_RESET_n_4),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
endmodule

(* ORIG_REF_NAME = "axi_datamover_skid2mm_buf" *) 
module ps_axi_datamover_1_0_axi_datamover_skid2mm_buf
   (out,
    sig_s_ready_out_reg_0,
    m_axi_s2mm_wvalid,
    sig_last_skid_reg,
    m_axi_s2mm_wlast,
    m_axi_s2mm_wdata,
    Q,
    m_axi_s2mm_wstrb,
    SR,
    m_axi_s2mm_aclk,
    sig_data2skid_wlast,
    sig_last_skid_mux_out,
    sig_stream_rst_reg_n,
    sig_m_valid_out_reg_0,
    m_axi_s2mm_wready,
    D,
    \sig_strb_skid_reg_reg[15]_0 ,
    \sig_strb_reg_out_reg[15]_0 );
  output out;
  output sig_s_ready_out_reg_0;
  output m_axi_s2mm_wvalid;
  output sig_last_skid_reg;
  output m_axi_s2mm_wlast;
  output [127:0]m_axi_s2mm_wdata;
  output [15:0]Q;
  output [15:0]m_axi_s2mm_wstrb;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_data2skid_wlast;
  input sig_last_skid_mux_out;
  input sig_stream_rst_reg_n;
  input sig_m_valid_out_reg_0;
  input m_axi_s2mm_wready;
  input [127:0]D;
  input [15:0]\sig_strb_skid_reg_reg[15]_0 ;
  input [15:0]\sig_strb_reg_out_reg[15]_0 ;

  wire [127:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire m_axi_s2mm_aclk;
  wire [127:0]m_axi_s2mm_wdata;
  wire m_axi_s2mm_wlast;
  wire m_axi_s2mm_wready;
  wire [15:0]m_axi_s2mm_wstrb;
  wire sig_data2skid_wlast;
  wire sig_data_reg_out_en;
  wire [127:0]sig_data_skid_mux_out;
  wire [127:0]sig_data_skid_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_m_valid_out_reg_0;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire [15:0]\sig_strb_reg_out_reg[15]_0 ;
  wire [15:0]\sig_strb_skid_reg_reg[15]_0 ;
  wire sig_stream_rst_reg_n;

  assign m_axi_s2mm_wvalid = sig_m_valid_out;
  assign out = sig_s_ready_dup;
  assign sig_s_ready_out_reg_0 = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1__1 
       (.I0(D[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[100]_i_1__1 
       (.I0(D[100]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[100]),
        .O(sig_data_skid_mux_out[100]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[101]_i_1__1 
       (.I0(D[101]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[101]),
        .O(sig_data_skid_mux_out[101]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[102]_i_1__1 
       (.I0(D[102]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[102]),
        .O(sig_data_skid_mux_out[102]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[103]_i_1__1 
       (.I0(D[103]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[103]),
        .O(sig_data_skid_mux_out[103]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[104]_i_1__1 
       (.I0(D[104]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[104]),
        .O(sig_data_skid_mux_out[104]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[105]_i_1__1 
       (.I0(D[105]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[105]),
        .O(sig_data_skid_mux_out[105]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[106]_i_1__1 
       (.I0(D[106]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[106]),
        .O(sig_data_skid_mux_out[106]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[107]_i_1__1 
       (.I0(D[107]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[107]),
        .O(sig_data_skid_mux_out[107]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[108]_i_1__1 
       (.I0(D[108]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[108]),
        .O(sig_data_skid_mux_out[108]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[109]_i_1__1 
       (.I0(D[109]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[109]),
        .O(sig_data_skid_mux_out[109]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1__1 
       (.I0(D[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[110]_i_1__1 
       (.I0(D[110]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[110]),
        .O(sig_data_skid_mux_out[110]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[111]_i_1__1 
       (.I0(D[111]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[111]),
        .O(sig_data_skid_mux_out[111]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[112]_i_1__1 
       (.I0(D[112]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[112]),
        .O(sig_data_skid_mux_out[112]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[113]_i_1__1 
       (.I0(D[113]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[113]),
        .O(sig_data_skid_mux_out[113]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[114]_i_1__1 
       (.I0(D[114]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[114]),
        .O(sig_data_skid_mux_out[114]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[115]_i_1__1 
       (.I0(D[115]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[115]),
        .O(sig_data_skid_mux_out[115]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[116]_i_1__1 
       (.I0(D[116]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[116]),
        .O(sig_data_skid_mux_out[116]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[117]_i_1__1 
       (.I0(D[117]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[117]),
        .O(sig_data_skid_mux_out[117]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[118]_i_1__1 
       (.I0(D[118]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[118]),
        .O(sig_data_skid_mux_out[118]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[119]_i_1__1 
       (.I0(D[119]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[119]),
        .O(sig_data_skid_mux_out[119]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1__1 
       (.I0(D[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[120]_i_1__1 
       (.I0(D[120]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[120]),
        .O(sig_data_skid_mux_out[120]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[121]_i_1__1 
       (.I0(D[121]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[121]),
        .O(sig_data_skid_mux_out[121]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[122]_i_1__1 
       (.I0(D[122]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[122]),
        .O(sig_data_skid_mux_out[122]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[123]_i_1__1 
       (.I0(D[123]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[123]),
        .O(sig_data_skid_mux_out[123]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[124]_i_1__1 
       (.I0(D[124]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[124]),
        .O(sig_data_skid_mux_out[124]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[125]_i_1__1 
       (.I0(D[125]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[125]),
        .O(sig_data_skid_mux_out[125]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[126]_i_1__1 
       (.I0(D[126]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[126]),
        .O(sig_data_skid_mux_out[126]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[127]_i_1__1 
       (.I0(m_axi_s2mm_wready),
        .I1(sig_m_valid_dup),
        .O(sig_data_reg_out_en));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[127]_i_2__1 
       (.I0(D[127]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[127]),
        .O(sig_data_skid_mux_out[127]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1__1 
       (.I0(D[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1__1 
       (.I0(D[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1__1 
       (.I0(D[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1__1 
       (.I0(D[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1__1 
       (.I0(D[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1__1 
       (.I0(D[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1__1 
       (.I0(D[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1__1 
       (.I0(D[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1__1 
       (.I0(D[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1__1 
       (.I0(D[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1__1 
       (.I0(D[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1__1 
       (.I0(D[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1__1 
       (.I0(D[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1__1 
       (.I0(D[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1__1 
       (.I0(D[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1__1 
       (.I0(D[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1__1 
       (.I0(D[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1__1 
       (.I0(D[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1__1 
       (.I0(D[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1__1 
       (.I0(D[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1__1 
       (.I0(D[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_1__1 
       (.I0(D[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[32]_i_1__1 
       (.I0(D[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[32]),
        .O(sig_data_skid_mux_out[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[33]_i_1__1 
       (.I0(D[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[33]),
        .O(sig_data_skid_mux_out[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1__1 
       (.I0(D[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1__1 
       (.I0(D[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1__1 
       (.I0(D[36]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1__1 
       (.I0(D[37]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1__1 
       (.I0(D[38]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1__1 
       (.I0(D[39]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1__1 
       (.I0(D[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[40]_i_1__1 
       (.I0(D[40]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[40]),
        .O(sig_data_skid_mux_out[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[41]_i_1__1 
       (.I0(D[41]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[41]),
        .O(sig_data_skid_mux_out[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1__1 
       (.I0(D[42]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1__1 
       (.I0(D[43]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1__1 
       (.I0(D[44]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1__1 
       (.I0(D[45]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1__1 
       (.I0(D[46]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1__1 
       (.I0(D[47]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[48]_i_1__1 
       (.I0(D[48]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[48]),
        .O(sig_data_skid_mux_out[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[49]_i_1__1 
       (.I0(D[49]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[49]),
        .O(sig_data_skid_mux_out[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1__1 
       (.I0(D[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1__1 
       (.I0(D[50]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1__1 
       (.I0(D[51]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1__1 
       (.I0(D[52]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1__1 
       (.I0(D[53]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1__1 
       (.I0(D[54]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_1__1 
       (.I0(D[55]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[56]_i_1__1 
       (.I0(D[56]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[56]),
        .O(sig_data_skid_mux_out[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[57]_i_1__1 
       (.I0(D[57]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[57]),
        .O(sig_data_skid_mux_out[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[58]_i_1__1 
       (.I0(D[58]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[58]),
        .O(sig_data_skid_mux_out[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[59]_i_1__1 
       (.I0(D[59]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[59]),
        .O(sig_data_skid_mux_out[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1__1 
       (.I0(D[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[60]_i_1__1 
       (.I0(D[60]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[60]),
        .O(sig_data_skid_mux_out[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[61]_i_1__1 
       (.I0(D[61]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[61]),
        .O(sig_data_skid_mux_out[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[62]_i_1__1 
       (.I0(D[62]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[62]),
        .O(sig_data_skid_mux_out[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[63]_i_1__1 
       (.I0(D[63]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[63]),
        .O(sig_data_skid_mux_out[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[64]_i_1__1 
       (.I0(D[64]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[64]),
        .O(sig_data_skid_mux_out[64]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[65]_i_1__1 
       (.I0(D[65]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[65]),
        .O(sig_data_skid_mux_out[65]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[66]_i_1__1 
       (.I0(D[66]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[66]),
        .O(sig_data_skid_mux_out[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[67]_i_1__1 
       (.I0(D[67]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[67]),
        .O(sig_data_skid_mux_out[67]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[68]_i_1__1 
       (.I0(D[68]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[68]),
        .O(sig_data_skid_mux_out[68]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[69]_i_1__1 
       (.I0(D[69]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[69]),
        .O(sig_data_skid_mux_out[69]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1__1 
       (.I0(D[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[70]_i_1__1 
       (.I0(D[70]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[70]),
        .O(sig_data_skid_mux_out[70]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[71]_i_1__1 
       (.I0(D[71]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[71]),
        .O(sig_data_skid_mux_out[71]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[72]_i_1__1 
       (.I0(D[72]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[72]),
        .O(sig_data_skid_mux_out[72]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[73]_i_1__1 
       (.I0(D[73]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[73]),
        .O(sig_data_skid_mux_out[73]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[74]_i_1__1 
       (.I0(D[74]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[74]),
        .O(sig_data_skid_mux_out[74]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[75]_i_1__1 
       (.I0(D[75]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[75]),
        .O(sig_data_skid_mux_out[75]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[76]_i_1__1 
       (.I0(D[76]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[76]),
        .O(sig_data_skid_mux_out[76]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[77]_i_1__1 
       (.I0(D[77]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[77]),
        .O(sig_data_skid_mux_out[77]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[78]_i_1__1 
       (.I0(D[78]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[78]),
        .O(sig_data_skid_mux_out[78]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[79]_i_1__1 
       (.I0(D[79]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[79]),
        .O(sig_data_skid_mux_out[79]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1__1 
       (.I0(D[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[80]_i_1__1 
       (.I0(D[80]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[80]),
        .O(sig_data_skid_mux_out[80]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[81]_i_1__1 
       (.I0(D[81]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[81]),
        .O(sig_data_skid_mux_out[81]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[82]_i_1__1 
       (.I0(D[82]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[82]),
        .O(sig_data_skid_mux_out[82]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[83]_i_1__1 
       (.I0(D[83]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[83]),
        .O(sig_data_skid_mux_out[83]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[84]_i_1__1 
       (.I0(D[84]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[84]),
        .O(sig_data_skid_mux_out[84]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[85]_i_1__1 
       (.I0(D[85]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[85]),
        .O(sig_data_skid_mux_out[85]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[86]_i_1__1 
       (.I0(D[86]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[86]),
        .O(sig_data_skid_mux_out[86]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[87]_i_1__1 
       (.I0(D[87]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[87]),
        .O(sig_data_skid_mux_out[87]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[88]_i_1__1 
       (.I0(D[88]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[88]),
        .O(sig_data_skid_mux_out[88]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[89]_i_1__1 
       (.I0(D[89]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[89]),
        .O(sig_data_skid_mux_out[89]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1__1 
       (.I0(D[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[90]_i_1__1 
       (.I0(D[90]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[90]),
        .O(sig_data_skid_mux_out[90]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[91]_i_1__1 
       (.I0(D[91]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[91]),
        .O(sig_data_skid_mux_out[91]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[92]_i_1__1 
       (.I0(D[92]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[92]),
        .O(sig_data_skid_mux_out[92]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[93]_i_1__1 
       (.I0(D[93]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[93]),
        .O(sig_data_skid_mux_out[93]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[94]_i_1__1 
       (.I0(D[94]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[94]),
        .O(sig_data_skid_mux_out[94]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[95]_i_1__1 
       (.I0(D[95]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[95]),
        .O(sig_data_skid_mux_out[95]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[96]_i_1__1 
       (.I0(D[96]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[96]),
        .O(sig_data_skid_mux_out[96]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[97]_i_1__1 
       (.I0(D[97]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[97]),
        .O(sig_data_skid_mux_out[97]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[98]_i_1__1 
       (.I0(D[98]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[98]),
        .O(sig_data_skid_mux_out[98]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[99]_i_1__1 
       (.I0(D[99]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[99]),
        .O(sig_data_skid_mux_out[99]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1__1 
       (.I0(D[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[0]),
        .Q(m_axi_s2mm_wdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[100] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[100]),
        .Q(m_axi_s2mm_wdata[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[101] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[101]),
        .Q(m_axi_s2mm_wdata[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[102] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[102]),
        .Q(m_axi_s2mm_wdata[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[103] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[103]),
        .Q(m_axi_s2mm_wdata[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[104] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[104]),
        .Q(m_axi_s2mm_wdata[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[105] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[105]),
        .Q(m_axi_s2mm_wdata[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[106] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[106]),
        .Q(m_axi_s2mm_wdata[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[107] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[107]),
        .Q(m_axi_s2mm_wdata[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[108] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[108]),
        .Q(m_axi_s2mm_wdata[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[109] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[109]),
        .Q(m_axi_s2mm_wdata[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[10]),
        .Q(m_axi_s2mm_wdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[110] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[110]),
        .Q(m_axi_s2mm_wdata[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[111] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[111]),
        .Q(m_axi_s2mm_wdata[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[112] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[112]),
        .Q(m_axi_s2mm_wdata[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[113] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[113]),
        .Q(m_axi_s2mm_wdata[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[114] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[114]),
        .Q(m_axi_s2mm_wdata[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[115] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[115]),
        .Q(m_axi_s2mm_wdata[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[116] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[116]),
        .Q(m_axi_s2mm_wdata[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[117] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[117]),
        .Q(m_axi_s2mm_wdata[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[118] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[118]),
        .Q(m_axi_s2mm_wdata[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[119] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[119]),
        .Q(m_axi_s2mm_wdata[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[11]),
        .Q(m_axi_s2mm_wdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[120] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[120]),
        .Q(m_axi_s2mm_wdata[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[121] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[121]),
        .Q(m_axi_s2mm_wdata[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[122] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[122]),
        .Q(m_axi_s2mm_wdata[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[123] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[123]),
        .Q(m_axi_s2mm_wdata[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[124] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[124]),
        .Q(m_axi_s2mm_wdata[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[125] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[125]),
        .Q(m_axi_s2mm_wdata[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[126] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[126]),
        .Q(m_axi_s2mm_wdata[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[127] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[127]),
        .Q(m_axi_s2mm_wdata[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[12]),
        .Q(m_axi_s2mm_wdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[13]),
        .Q(m_axi_s2mm_wdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[14]),
        .Q(m_axi_s2mm_wdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[15]),
        .Q(m_axi_s2mm_wdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[16]),
        .Q(m_axi_s2mm_wdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[17]),
        .Q(m_axi_s2mm_wdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[18]),
        .Q(m_axi_s2mm_wdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[19]),
        .Q(m_axi_s2mm_wdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[1]),
        .Q(m_axi_s2mm_wdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[20]),
        .Q(m_axi_s2mm_wdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[21]),
        .Q(m_axi_s2mm_wdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[22]),
        .Q(m_axi_s2mm_wdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[23]),
        .Q(m_axi_s2mm_wdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[24]),
        .Q(m_axi_s2mm_wdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[25]),
        .Q(m_axi_s2mm_wdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[26]),
        .Q(m_axi_s2mm_wdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[27]),
        .Q(m_axi_s2mm_wdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[28]),
        .Q(m_axi_s2mm_wdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[29]),
        .Q(m_axi_s2mm_wdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[2]),
        .Q(m_axi_s2mm_wdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[30]),
        .Q(m_axi_s2mm_wdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[31]),
        .Q(m_axi_s2mm_wdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[32] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[32]),
        .Q(m_axi_s2mm_wdata[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[33] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[33]),
        .Q(m_axi_s2mm_wdata[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[34]),
        .Q(m_axi_s2mm_wdata[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[35]),
        .Q(m_axi_s2mm_wdata[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[36]),
        .Q(m_axi_s2mm_wdata[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[37]),
        .Q(m_axi_s2mm_wdata[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[38]),
        .Q(m_axi_s2mm_wdata[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[39]),
        .Q(m_axi_s2mm_wdata[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[3]),
        .Q(m_axi_s2mm_wdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[40] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[40]),
        .Q(m_axi_s2mm_wdata[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[41] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[41]),
        .Q(m_axi_s2mm_wdata[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[42]),
        .Q(m_axi_s2mm_wdata[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[43]),
        .Q(m_axi_s2mm_wdata[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[44]),
        .Q(m_axi_s2mm_wdata[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[45]),
        .Q(m_axi_s2mm_wdata[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[46]),
        .Q(m_axi_s2mm_wdata[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[47]),
        .Q(m_axi_s2mm_wdata[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[48] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[48]),
        .Q(m_axi_s2mm_wdata[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[49] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[49]),
        .Q(m_axi_s2mm_wdata[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[4]),
        .Q(m_axi_s2mm_wdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[50]),
        .Q(m_axi_s2mm_wdata[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[51]),
        .Q(m_axi_s2mm_wdata[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[52]),
        .Q(m_axi_s2mm_wdata[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[53]),
        .Q(m_axi_s2mm_wdata[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[54]),
        .Q(m_axi_s2mm_wdata[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[55]),
        .Q(m_axi_s2mm_wdata[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[56] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[56]),
        .Q(m_axi_s2mm_wdata[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[57] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[57]),
        .Q(m_axi_s2mm_wdata[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[58] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[58]),
        .Q(m_axi_s2mm_wdata[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[59] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[59]),
        .Q(m_axi_s2mm_wdata[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[5]),
        .Q(m_axi_s2mm_wdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[60] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[60]),
        .Q(m_axi_s2mm_wdata[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[61] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[61]),
        .Q(m_axi_s2mm_wdata[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[62] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[62]),
        .Q(m_axi_s2mm_wdata[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[63] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[63]),
        .Q(m_axi_s2mm_wdata[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[64] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[64]),
        .Q(m_axi_s2mm_wdata[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[65] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[65]),
        .Q(m_axi_s2mm_wdata[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[66] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[66]),
        .Q(m_axi_s2mm_wdata[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[67] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[67]),
        .Q(m_axi_s2mm_wdata[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[68] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[68]),
        .Q(m_axi_s2mm_wdata[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[69] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[69]),
        .Q(m_axi_s2mm_wdata[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[6]),
        .Q(m_axi_s2mm_wdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[70] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[70]),
        .Q(m_axi_s2mm_wdata[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[71] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[71]),
        .Q(m_axi_s2mm_wdata[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[72] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[72]),
        .Q(m_axi_s2mm_wdata[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[73] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[73]),
        .Q(m_axi_s2mm_wdata[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[74] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[74]),
        .Q(m_axi_s2mm_wdata[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[75] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[75]),
        .Q(m_axi_s2mm_wdata[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[76] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[76]),
        .Q(m_axi_s2mm_wdata[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[77] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[77]),
        .Q(m_axi_s2mm_wdata[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[78] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[78]),
        .Q(m_axi_s2mm_wdata[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[79] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[79]),
        .Q(m_axi_s2mm_wdata[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[7]),
        .Q(m_axi_s2mm_wdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[80] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[80]),
        .Q(m_axi_s2mm_wdata[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[81] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[81]),
        .Q(m_axi_s2mm_wdata[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[82] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[82]),
        .Q(m_axi_s2mm_wdata[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[83] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[83]),
        .Q(m_axi_s2mm_wdata[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[84] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[84]),
        .Q(m_axi_s2mm_wdata[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[85] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[85]),
        .Q(m_axi_s2mm_wdata[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[86] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[86]),
        .Q(m_axi_s2mm_wdata[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[87] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[87]),
        .Q(m_axi_s2mm_wdata[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[88] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[88]),
        .Q(m_axi_s2mm_wdata[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[89] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[89]),
        .Q(m_axi_s2mm_wdata[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[8]),
        .Q(m_axi_s2mm_wdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[90] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[90]),
        .Q(m_axi_s2mm_wdata[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[91] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[91]),
        .Q(m_axi_s2mm_wdata[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[92] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[92]),
        .Q(m_axi_s2mm_wdata[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[93] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[93]),
        .Q(m_axi_s2mm_wdata[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[94] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[94]),
        .Q(m_axi_s2mm_wdata[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[95] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[95]),
        .Q(m_axi_s2mm_wdata[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[96] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[96]),
        .Q(m_axi_s2mm_wdata[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[97] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[97]),
        .Q(m_axi_s2mm_wdata[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[98] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[98]),
        .Q(m_axi_s2mm_wdata[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[99] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[99]),
        .Q(m_axi_s2mm_wdata[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[9]),
        .Q(m_axi_s2mm_wdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[0]),
        .Q(sig_data_skid_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[100] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[100]),
        .Q(sig_data_skid_reg[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[101] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[101]),
        .Q(sig_data_skid_reg[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[102] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[102]),
        .Q(sig_data_skid_reg[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[103] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[103]),
        .Q(sig_data_skid_reg[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[104] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[104]),
        .Q(sig_data_skid_reg[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[105] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[105]),
        .Q(sig_data_skid_reg[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[106] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[106]),
        .Q(sig_data_skid_reg[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[107] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[107]),
        .Q(sig_data_skid_reg[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[108] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[108]),
        .Q(sig_data_skid_reg[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[109] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[109]),
        .Q(sig_data_skid_reg[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[10]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[110] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[110]),
        .Q(sig_data_skid_reg[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[111] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[111]),
        .Q(sig_data_skid_reg[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[112] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[112]),
        .Q(sig_data_skid_reg[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[113] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[113]),
        .Q(sig_data_skid_reg[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[114] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[114]),
        .Q(sig_data_skid_reg[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[115] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[115]),
        .Q(sig_data_skid_reg[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[116] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[116]),
        .Q(sig_data_skid_reg[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[117] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[117]),
        .Q(sig_data_skid_reg[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[118] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[118]),
        .Q(sig_data_skid_reg[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[119] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[119]),
        .Q(sig_data_skid_reg[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[11]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[120] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[120]),
        .Q(sig_data_skid_reg[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[121] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[121]),
        .Q(sig_data_skid_reg[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[122] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[122]),
        .Q(sig_data_skid_reg[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[123] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[123]),
        .Q(sig_data_skid_reg[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[124] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[124]),
        .Q(sig_data_skid_reg[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[125] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[125]),
        .Q(sig_data_skid_reg[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[126] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[126]),
        .Q(sig_data_skid_reg[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[127] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[127]),
        .Q(sig_data_skid_reg[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[12]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[13]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[14]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[15]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[16]),
        .Q(sig_data_skid_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[17]),
        .Q(sig_data_skid_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[18]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[19]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[1]),
        .Q(sig_data_skid_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[20]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[21]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[22]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[23]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[24]),
        .Q(sig_data_skid_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[25]),
        .Q(sig_data_skid_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[26]),
        .Q(sig_data_skid_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[27]),
        .Q(sig_data_skid_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[28]),
        .Q(sig_data_skid_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[29]),
        .Q(sig_data_skid_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[2]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[30]),
        .Q(sig_data_skid_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[31]),
        .Q(sig_data_skid_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[32] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[32]),
        .Q(sig_data_skid_reg[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[33] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[33]),
        .Q(sig_data_skid_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[34]),
        .Q(sig_data_skid_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[35]),
        .Q(sig_data_skid_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[36]),
        .Q(sig_data_skid_reg[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[37]),
        .Q(sig_data_skid_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[38]),
        .Q(sig_data_skid_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[39]),
        .Q(sig_data_skid_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[3]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[40] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[40]),
        .Q(sig_data_skid_reg[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[41] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[41]),
        .Q(sig_data_skid_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[42]),
        .Q(sig_data_skid_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[43]),
        .Q(sig_data_skid_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[44]),
        .Q(sig_data_skid_reg[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[45]),
        .Q(sig_data_skid_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[46]),
        .Q(sig_data_skid_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[47]),
        .Q(sig_data_skid_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[48] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[48]),
        .Q(sig_data_skid_reg[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[49] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[49]),
        .Q(sig_data_skid_reg[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[4]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[50]),
        .Q(sig_data_skid_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[51]),
        .Q(sig_data_skid_reg[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[52]),
        .Q(sig_data_skid_reg[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[53]),
        .Q(sig_data_skid_reg[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[54]),
        .Q(sig_data_skid_reg[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[55]),
        .Q(sig_data_skid_reg[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[56] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[56]),
        .Q(sig_data_skid_reg[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[57] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[57]),
        .Q(sig_data_skid_reg[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[58] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[58]),
        .Q(sig_data_skid_reg[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[59] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[59]),
        .Q(sig_data_skid_reg[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[5]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[60] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[60]),
        .Q(sig_data_skid_reg[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[61] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[61]),
        .Q(sig_data_skid_reg[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[62] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[62]),
        .Q(sig_data_skid_reg[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[63] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[63]),
        .Q(sig_data_skid_reg[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[64] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[64]),
        .Q(sig_data_skid_reg[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[65] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[65]),
        .Q(sig_data_skid_reg[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[66] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[66]),
        .Q(sig_data_skid_reg[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[67] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[67]),
        .Q(sig_data_skid_reg[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[68] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[68]),
        .Q(sig_data_skid_reg[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[69] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[69]),
        .Q(sig_data_skid_reg[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[6]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[70] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[70]),
        .Q(sig_data_skid_reg[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[71] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[71]),
        .Q(sig_data_skid_reg[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[72] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[72]),
        .Q(sig_data_skid_reg[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[73] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[73]),
        .Q(sig_data_skid_reg[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[74] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[74]),
        .Q(sig_data_skid_reg[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[75] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[75]),
        .Q(sig_data_skid_reg[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[76] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[76]),
        .Q(sig_data_skid_reg[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[77] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[77]),
        .Q(sig_data_skid_reg[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[78] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[78]),
        .Q(sig_data_skid_reg[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[79] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[79]),
        .Q(sig_data_skid_reg[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[7]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[80] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[80]),
        .Q(sig_data_skid_reg[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[81] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[81]),
        .Q(sig_data_skid_reg[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[82] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[82]),
        .Q(sig_data_skid_reg[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[83] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[83]),
        .Q(sig_data_skid_reg[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[84] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[84]),
        .Q(sig_data_skid_reg[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[85] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[85]),
        .Q(sig_data_skid_reg[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[86] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[86]),
        .Q(sig_data_skid_reg[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[87] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[87]),
        .Q(sig_data_skid_reg[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[88] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[88]),
        .Q(sig_data_skid_reg[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[89] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[89]),
        .Q(sig_data_skid_reg[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[8]),
        .Q(sig_data_skid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[90] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[90]),
        .Q(sig_data_skid_reg[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[91] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[91]),
        .Q(sig_data_skid_reg[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[92] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[92]),
        .Q(sig_data_skid_reg[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[93] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[93]),
        .Q(sig_data_skid_reg[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[94] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[94]),
        .Q(sig_data_skid_reg[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[95] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[95]),
        .Q(sig_data_skid_reg[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[96] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[96]),
        .Q(sig_data_skid_reg[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[97] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[97]),
        .Q(sig_data_skid_reg[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[98] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[98]),
        .Q(sig_data_skid_reg[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[99] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[99]),
        .Q(sig_data_skid_reg[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[9]),
        .Q(sig_data_skid_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_last_skid_mux_out),
        .Q(m_axi_s2mm_wlast),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_data2skid_wlast),
        .Q(sig_last_skid_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h0444444404040404)) 
    sig_m_valid_dup_i_1
       (.I0(sig_reset_reg),
        .I1(sig_stream_rst_reg_n),
        .I2(sig_m_valid_out_reg_0),
        .I3(sig_s_ready_dup),
        .I4(m_axi_s2mm_wready),
        .I5(sig_m_valid_dup),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_reset_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(sig_reset_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFF0000EEEE0000)) 
    sig_s_ready_dup_i_1__1
       (.I0(m_axi_s2mm_wready),
        .I1(sig_reset_reg),
        .I2(sig_m_valid_out_reg_0),
        .I3(sig_m_valid_dup),
        .I4(sig_stream_rst_reg_n),
        .I5(sig_s_ready_dup),
        .O(sig_s_ready_dup_i_1__1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__1_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__1_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [0]),
        .Q(m_axi_s2mm_wstrb[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [10]),
        .Q(m_axi_s2mm_wstrb[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [11]),
        .Q(m_axi_s2mm_wstrb[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [12]),
        .Q(m_axi_s2mm_wstrb[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [13]),
        .Q(m_axi_s2mm_wstrb[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [14]),
        .Q(m_axi_s2mm_wstrb[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [15]),
        .Q(m_axi_s2mm_wstrb[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [1]),
        .Q(m_axi_s2mm_wstrb[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [2]),
        .Q(m_axi_s2mm_wstrb[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [3]),
        .Q(m_axi_s2mm_wstrb[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [4]),
        .Q(m_axi_s2mm_wstrb[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [5]),
        .Q(m_axi_s2mm_wstrb[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [6]),
        .Q(m_axi_s2mm_wstrb[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [7]),
        .Q(m_axi_s2mm_wstrb[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [8]),
        .Q(m_axi_s2mm_wstrb[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out_reg[15]_0 [9]),
        .Q(m_axi_s2mm_wstrb[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_skid_buf" *) 
module ps_axi_datamover_1_0_axi_datamover_skid_buf
   (out,
    s_axis_s2mm_tready,
    sig_m_valid_out_reg_0,
    skid2dre_wlast,
    Q,
    \sig_strb_reg_out_reg[15]_0 ,
    m_axi_s2mm_aclk,
    SR,
    s_axis_s2mm_tlast,
    E,
    sig_s_ready_out_reg_0,
    sig_mmap_reset_reg,
    s_axis_s2mm_tvalid,
    sig_mmap_rst_reg_n,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep);
  output out;
  output s_axis_s2mm_tready;
  output sig_m_valid_out_reg_0;
  output skid2dre_wlast;
  output [127:0]Q;
  output [15:0]\sig_strb_reg_out_reg[15]_0 ;
  input m_axi_s2mm_aclk;
  input [0:0]SR;
  input s_axis_s2mm_tlast;
  input [0:0]E;
  input sig_s_ready_out_reg_0;
  input sig_mmap_reset_reg;
  input s_axis_s2mm_tvalid;
  input sig_mmap_rst_reg_n;
  input [127:0]s_axis_s2mm_tdata;
  input [15:0]s_axis_s2mm_tkeep;

  wire [0:0]E;
  wire [127:0]Q;
  wire [0:0]SR;
  wire m_axi_s2mm_aclk;
  wire [127:0]s_axis_s2mm_tdata;
  wire [15:0]s_axis_s2mm_tkeep;
  wire s_axis_s2mm_tlast;
  wire s_axis_s2mm_tvalid;
  wire [127:0]sig_data_skid_mux_out;
  wire [127:0]sig_data_skid_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_s_ready_out_reg_0;
  wire [15:0]\sig_strb_reg_out_reg[15]_0 ;
  wire [15:0]sig_strb_skid_mux_out;
  wire [15:0]sig_strb_skid_reg;
  wire skid2dre_wlast;

  assign out = sig_m_valid_dup;
  assign s_axis_s2mm_tready = sig_s_ready_out;
  assign sig_m_valid_out_reg_0 = sig_m_valid_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(s_axis_s2mm_tdata[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[100]_i_1 
       (.I0(s_axis_s2mm_tdata[100]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[100]),
        .O(sig_data_skid_mux_out[100]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[101]_i_1 
       (.I0(s_axis_s2mm_tdata[101]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[101]),
        .O(sig_data_skid_mux_out[101]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[102]_i_1 
       (.I0(s_axis_s2mm_tdata[102]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[102]),
        .O(sig_data_skid_mux_out[102]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[103]_i_1 
       (.I0(s_axis_s2mm_tdata[103]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[103]),
        .O(sig_data_skid_mux_out[103]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[104]_i_1 
       (.I0(s_axis_s2mm_tdata[104]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[104]),
        .O(sig_data_skid_mux_out[104]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[105]_i_1 
       (.I0(s_axis_s2mm_tdata[105]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[105]),
        .O(sig_data_skid_mux_out[105]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[106]_i_1 
       (.I0(s_axis_s2mm_tdata[106]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[106]),
        .O(sig_data_skid_mux_out[106]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[107]_i_1 
       (.I0(s_axis_s2mm_tdata[107]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[107]),
        .O(sig_data_skid_mux_out[107]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[108]_i_1 
       (.I0(s_axis_s2mm_tdata[108]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[108]),
        .O(sig_data_skid_mux_out[108]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[109]_i_1 
       (.I0(s_axis_s2mm_tdata[109]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[109]),
        .O(sig_data_skid_mux_out[109]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(s_axis_s2mm_tdata[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[110]_i_1 
       (.I0(s_axis_s2mm_tdata[110]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[110]),
        .O(sig_data_skid_mux_out[110]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[111]_i_1 
       (.I0(s_axis_s2mm_tdata[111]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[111]),
        .O(sig_data_skid_mux_out[111]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[112]_i_1 
       (.I0(s_axis_s2mm_tdata[112]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[112]),
        .O(sig_data_skid_mux_out[112]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[113]_i_1 
       (.I0(s_axis_s2mm_tdata[113]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[113]),
        .O(sig_data_skid_mux_out[113]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[114]_i_1 
       (.I0(s_axis_s2mm_tdata[114]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[114]),
        .O(sig_data_skid_mux_out[114]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[115]_i_1 
       (.I0(s_axis_s2mm_tdata[115]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[115]),
        .O(sig_data_skid_mux_out[115]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[116]_i_1 
       (.I0(s_axis_s2mm_tdata[116]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[116]),
        .O(sig_data_skid_mux_out[116]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[117]_i_1 
       (.I0(s_axis_s2mm_tdata[117]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[117]),
        .O(sig_data_skid_mux_out[117]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[118]_i_1 
       (.I0(s_axis_s2mm_tdata[118]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[118]),
        .O(sig_data_skid_mux_out[118]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[119]_i_1 
       (.I0(s_axis_s2mm_tdata[119]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[119]),
        .O(sig_data_skid_mux_out[119]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(s_axis_s2mm_tdata[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[120]_i_1 
       (.I0(s_axis_s2mm_tdata[120]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[120]),
        .O(sig_data_skid_mux_out[120]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[121]_i_1 
       (.I0(s_axis_s2mm_tdata[121]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[121]),
        .O(sig_data_skid_mux_out[121]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[122]_i_1 
       (.I0(s_axis_s2mm_tdata[122]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[122]),
        .O(sig_data_skid_mux_out[122]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[123]_i_1 
       (.I0(s_axis_s2mm_tdata[123]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[123]),
        .O(sig_data_skid_mux_out[123]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[124]_i_1 
       (.I0(s_axis_s2mm_tdata[124]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[124]),
        .O(sig_data_skid_mux_out[124]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[125]_i_1 
       (.I0(s_axis_s2mm_tdata[125]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[125]),
        .O(sig_data_skid_mux_out[125]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[126]_i_1 
       (.I0(s_axis_s2mm_tdata[126]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[126]),
        .O(sig_data_skid_mux_out[126]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[127]_i_2 
       (.I0(s_axis_s2mm_tdata[127]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[127]),
        .O(sig_data_skid_mux_out[127]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(s_axis_s2mm_tdata[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(s_axis_s2mm_tdata[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(s_axis_s2mm_tdata[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(s_axis_s2mm_tdata[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(s_axis_s2mm_tdata[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(s_axis_s2mm_tdata[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(s_axis_s2mm_tdata[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(s_axis_s2mm_tdata[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(s_axis_s2mm_tdata[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(s_axis_s2mm_tdata[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(s_axis_s2mm_tdata[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(s_axis_s2mm_tdata[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(s_axis_s2mm_tdata[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(s_axis_s2mm_tdata[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(s_axis_s2mm_tdata[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(s_axis_s2mm_tdata[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(s_axis_s2mm_tdata[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(s_axis_s2mm_tdata[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(s_axis_s2mm_tdata[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(s_axis_s2mm_tdata[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(s_axis_s2mm_tdata[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(s_axis_s2mm_tdata[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[32]_i_1 
       (.I0(s_axis_s2mm_tdata[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[32]),
        .O(sig_data_skid_mux_out[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[33]_i_1 
       (.I0(s_axis_s2mm_tdata[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[33]),
        .O(sig_data_skid_mux_out[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1 
       (.I0(s_axis_s2mm_tdata[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1 
       (.I0(s_axis_s2mm_tdata[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1 
       (.I0(s_axis_s2mm_tdata[36]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1 
       (.I0(s_axis_s2mm_tdata[37]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1 
       (.I0(s_axis_s2mm_tdata[38]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1 
       (.I0(s_axis_s2mm_tdata[39]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(s_axis_s2mm_tdata[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[40]_i_1 
       (.I0(s_axis_s2mm_tdata[40]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[40]),
        .O(sig_data_skid_mux_out[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[41]_i_1 
       (.I0(s_axis_s2mm_tdata[41]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[41]),
        .O(sig_data_skid_mux_out[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1 
       (.I0(s_axis_s2mm_tdata[42]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1 
       (.I0(s_axis_s2mm_tdata[43]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1 
       (.I0(s_axis_s2mm_tdata[44]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1 
       (.I0(s_axis_s2mm_tdata[45]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1 
       (.I0(s_axis_s2mm_tdata[46]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1 
       (.I0(s_axis_s2mm_tdata[47]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[48]_i_1 
       (.I0(s_axis_s2mm_tdata[48]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[48]),
        .O(sig_data_skid_mux_out[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[49]_i_1 
       (.I0(s_axis_s2mm_tdata[49]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[49]),
        .O(sig_data_skid_mux_out[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(s_axis_s2mm_tdata[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1 
       (.I0(s_axis_s2mm_tdata[50]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1 
       (.I0(s_axis_s2mm_tdata[51]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1 
       (.I0(s_axis_s2mm_tdata[52]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1 
       (.I0(s_axis_s2mm_tdata[53]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1 
       (.I0(s_axis_s2mm_tdata[54]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_1 
       (.I0(s_axis_s2mm_tdata[55]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[56]_i_1 
       (.I0(s_axis_s2mm_tdata[56]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[56]),
        .O(sig_data_skid_mux_out[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[57]_i_1 
       (.I0(s_axis_s2mm_tdata[57]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[57]),
        .O(sig_data_skid_mux_out[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[58]_i_1 
       (.I0(s_axis_s2mm_tdata[58]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[58]),
        .O(sig_data_skid_mux_out[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[59]_i_1 
       (.I0(s_axis_s2mm_tdata[59]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[59]),
        .O(sig_data_skid_mux_out[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(s_axis_s2mm_tdata[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[60]_i_1 
       (.I0(s_axis_s2mm_tdata[60]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[60]),
        .O(sig_data_skid_mux_out[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[61]_i_1 
       (.I0(s_axis_s2mm_tdata[61]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[61]),
        .O(sig_data_skid_mux_out[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[62]_i_1 
       (.I0(s_axis_s2mm_tdata[62]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[62]),
        .O(sig_data_skid_mux_out[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[63]_i_1 
       (.I0(s_axis_s2mm_tdata[63]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[63]),
        .O(sig_data_skid_mux_out[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[64]_i_1 
       (.I0(s_axis_s2mm_tdata[64]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[64]),
        .O(sig_data_skid_mux_out[64]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[65]_i_1 
       (.I0(s_axis_s2mm_tdata[65]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[65]),
        .O(sig_data_skid_mux_out[65]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[66]_i_1 
       (.I0(s_axis_s2mm_tdata[66]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[66]),
        .O(sig_data_skid_mux_out[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[67]_i_1 
       (.I0(s_axis_s2mm_tdata[67]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[67]),
        .O(sig_data_skid_mux_out[67]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[68]_i_1 
       (.I0(s_axis_s2mm_tdata[68]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[68]),
        .O(sig_data_skid_mux_out[68]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[69]_i_1 
       (.I0(s_axis_s2mm_tdata[69]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[69]),
        .O(sig_data_skid_mux_out[69]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(s_axis_s2mm_tdata[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[70]_i_1 
       (.I0(s_axis_s2mm_tdata[70]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[70]),
        .O(sig_data_skid_mux_out[70]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[71]_i_1 
       (.I0(s_axis_s2mm_tdata[71]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[71]),
        .O(sig_data_skid_mux_out[71]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[72]_i_1 
       (.I0(s_axis_s2mm_tdata[72]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[72]),
        .O(sig_data_skid_mux_out[72]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[73]_i_1 
       (.I0(s_axis_s2mm_tdata[73]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[73]),
        .O(sig_data_skid_mux_out[73]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[74]_i_1 
       (.I0(s_axis_s2mm_tdata[74]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[74]),
        .O(sig_data_skid_mux_out[74]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[75]_i_1 
       (.I0(s_axis_s2mm_tdata[75]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[75]),
        .O(sig_data_skid_mux_out[75]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[76]_i_1 
       (.I0(s_axis_s2mm_tdata[76]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[76]),
        .O(sig_data_skid_mux_out[76]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[77]_i_1 
       (.I0(s_axis_s2mm_tdata[77]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[77]),
        .O(sig_data_skid_mux_out[77]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[78]_i_1 
       (.I0(s_axis_s2mm_tdata[78]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[78]),
        .O(sig_data_skid_mux_out[78]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[79]_i_1 
       (.I0(s_axis_s2mm_tdata[79]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[79]),
        .O(sig_data_skid_mux_out[79]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(s_axis_s2mm_tdata[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[80]_i_1 
       (.I0(s_axis_s2mm_tdata[80]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[80]),
        .O(sig_data_skid_mux_out[80]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[81]_i_1 
       (.I0(s_axis_s2mm_tdata[81]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[81]),
        .O(sig_data_skid_mux_out[81]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[82]_i_1 
       (.I0(s_axis_s2mm_tdata[82]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[82]),
        .O(sig_data_skid_mux_out[82]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[83]_i_1 
       (.I0(s_axis_s2mm_tdata[83]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[83]),
        .O(sig_data_skid_mux_out[83]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[84]_i_1 
       (.I0(s_axis_s2mm_tdata[84]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[84]),
        .O(sig_data_skid_mux_out[84]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[85]_i_1 
       (.I0(s_axis_s2mm_tdata[85]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[85]),
        .O(sig_data_skid_mux_out[85]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[86]_i_1 
       (.I0(s_axis_s2mm_tdata[86]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[86]),
        .O(sig_data_skid_mux_out[86]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[87]_i_1 
       (.I0(s_axis_s2mm_tdata[87]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[87]),
        .O(sig_data_skid_mux_out[87]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[88]_i_1 
       (.I0(s_axis_s2mm_tdata[88]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[88]),
        .O(sig_data_skid_mux_out[88]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[89]_i_1 
       (.I0(s_axis_s2mm_tdata[89]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[89]),
        .O(sig_data_skid_mux_out[89]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(s_axis_s2mm_tdata[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[90]_i_1 
       (.I0(s_axis_s2mm_tdata[90]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[90]),
        .O(sig_data_skid_mux_out[90]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[91]_i_1 
       (.I0(s_axis_s2mm_tdata[91]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[91]),
        .O(sig_data_skid_mux_out[91]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[92]_i_1 
       (.I0(s_axis_s2mm_tdata[92]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[92]),
        .O(sig_data_skid_mux_out[92]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[93]_i_1 
       (.I0(s_axis_s2mm_tdata[93]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[93]),
        .O(sig_data_skid_mux_out[93]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[94]_i_1 
       (.I0(s_axis_s2mm_tdata[94]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[94]),
        .O(sig_data_skid_mux_out[94]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[95]_i_1 
       (.I0(s_axis_s2mm_tdata[95]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[95]),
        .O(sig_data_skid_mux_out[95]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[96]_i_1 
       (.I0(s_axis_s2mm_tdata[96]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[96]),
        .O(sig_data_skid_mux_out[96]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[97]_i_1 
       (.I0(s_axis_s2mm_tdata[97]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[97]),
        .O(sig_data_skid_mux_out[97]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[98]_i_1 
       (.I0(s_axis_s2mm_tdata[98]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[98]),
        .O(sig_data_skid_mux_out[98]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[99]_i_1 
       (.I0(s_axis_s2mm_tdata[99]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[99]),
        .O(sig_data_skid_mux_out[99]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(s_axis_s2mm_tdata[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[100] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[100]),
        .Q(Q[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[101] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[101]),
        .Q(Q[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[102] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[102]),
        .Q(Q[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[103] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[103]),
        .Q(Q[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[104] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[104]),
        .Q(Q[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[105] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[105]),
        .Q(Q[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[106] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[106]),
        .Q(Q[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[107] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[107]),
        .Q(Q[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[108] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[108]),
        .Q(Q[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[109] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[109]),
        .Q(Q[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[110] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[110]),
        .Q(Q[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[111] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[111]),
        .Q(Q[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[112] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[112]),
        .Q(Q[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[113] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[113]),
        .Q(Q[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[114] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[114]),
        .Q(Q[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[115] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[115]),
        .Q(Q[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[116] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[116]),
        .Q(Q[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[117] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[117]),
        .Q(Q[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[118] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[118]),
        .Q(Q[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[119] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[119]),
        .Q(Q[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[120] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[120]),
        .Q(Q[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[121] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[121]),
        .Q(Q[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[122] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[122]),
        .Q(Q[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[123] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[123]),
        .Q(Q[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[124] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[124]),
        .Q(Q[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[125] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[125]),
        .Q(Q[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[126] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[126]),
        .Q(Q[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[127] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[127]),
        .Q(Q[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[32] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[33] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[33]),
        .Q(Q[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[34]),
        .Q(Q[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[35]),
        .Q(Q[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[36]),
        .Q(Q[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[37]),
        .Q(Q[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[38]),
        .Q(Q[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[39]),
        .Q(Q[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[40] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[40]),
        .Q(Q[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[41] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[41]),
        .Q(Q[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[42]),
        .Q(Q[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[43]),
        .Q(Q[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[44]),
        .Q(Q[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[45]),
        .Q(Q[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[46]),
        .Q(Q[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[47]),
        .Q(Q[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[48] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[48]),
        .Q(Q[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[49] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[49]),
        .Q(Q[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[50]),
        .Q(Q[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[51]),
        .Q(Q[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[52]),
        .Q(Q[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[53]),
        .Q(Q[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[54]),
        .Q(Q[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[55]),
        .Q(Q[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[56] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[56]),
        .Q(Q[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[57] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[57]),
        .Q(Q[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[58] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[58]),
        .Q(Q[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[59] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[59]),
        .Q(Q[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[60] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[60]),
        .Q(Q[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[61] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[61]),
        .Q(Q[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[62] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[62]),
        .Q(Q[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[63] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[63]),
        .Q(Q[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[64] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[64]),
        .Q(Q[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[65] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[65]),
        .Q(Q[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[66] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[66]),
        .Q(Q[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[67] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[67]),
        .Q(Q[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[68] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[68]),
        .Q(Q[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[69] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[69]),
        .Q(Q[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[70] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[70]),
        .Q(Q[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[71] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[71]),
        .Q(Q[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[72] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[72]),
        .Q(Q[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[73] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[73]),
        .Q(Q[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[74] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[74]),
        .Q(Q[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[75] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[75]),
        .Q(Q[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[76] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[76]),
        .Q(Q[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[77] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[77]),
        .Q(Q[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[78] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[78]),
        .Q(Q[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[79] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[79]),
        .Q(Q[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[80] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[80]),
        .Q(Q[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[81] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[81]),
        .Q(Q[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[82] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[82]),
        .Q(Q[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[83] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[83]),
        .Q(Q[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[84] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[84]),
        .Q(Q[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[85] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[85]),
        .Q(Q[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[86] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[86]),
        .Q(Q[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[87] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[87]),
        .Q(Q[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[88] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[88]),
        .Q(Q[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[89] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[89]),
        .Q(Q[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[90] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[90]),
        .Q(Q[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[91] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[91]),
        .Q(Q[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[92] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[92]),
        .Q(Q[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[93] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[93]),
        .Q(Q[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[94] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[94]),
        .Q(Q[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[95] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[95]),
        .Q(Q[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[96] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[96]),
        .Q(Q[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[97] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[97]),
        .Q(Q[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[98] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[98]),
        .Q(Q[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[99] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[99]),
        .Q(Q[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[0]),
        .Q(sig_data_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[100] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[100]),
        .Q(sig_data_skid_reg[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[101] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[101]),
        .Q(sig_data_skid_reg[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[102] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[102]),
        .Q(sig_data_skid_reg[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[103] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[103]),
        .Q(sig_data_skid_reg[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[104] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[104]),
        .Q(sig_data_skid_reg[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[105] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[105]),
        .Q(sig_data_skid_reg[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[106] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[106]),
        .Q(sig_data_skid_reg[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[107] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[107]),
        .Q(sig_data_skid_reg[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[108] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[108]),
        .Q(sig_data_skid_reg[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[109] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[109]),
        .Q(sig_data_skid_reg[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[10]),
        .Q(sig_data_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[110] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[110]),
        .Q(sig_data_skid_reg[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[111] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[111]),
        .Q(sig_data_skid_reg[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[112] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[112]),
        .Q(sig_data_skid_reg[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[113] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[113]),
        .Q(sig_data_skid_reg[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[114] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[114]),
        .Q(sig_data_skid_reg[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[115] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[115]),
        .Q(sig_data_skid_reg[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[116] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[116]),
        .Q(sig_data_skid_reg[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[117] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[117]),
        .Q(sig_data_skid_reg[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[118] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[118]),
        .Q(sig_data_skid_reg[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[119] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[119]),
        .Q(sig_data_skid_reg[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[11]),
        .Q(sig_data_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[120] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[120]),
        .Q(sig_data_skid_reg[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[121] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[121]),
        .Q(sig_data_skid_reg[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[122] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[122]),
        .Q(sig_data_skid_reg[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[123] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[123]),
        .Q(sig_data_skid_reg[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[124] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[124]),
        .Q(sig_data_skid_reg[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[125] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[125]),
        .Q(sig_data_skid_reg[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[126] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[126]),
        .Q(sig_data_skid_reg[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[127] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[127]),
        .Q(sig_data_skid_reg[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[12]),
        .Q(sig_data_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[13]),
        .Q(sig_data_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[14]),
        .Q(sig_data_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[15]),
        .Q(sig_data_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[16]),
        .Q(sig_data_skid_reg[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[17]),
        .Q(sig_data_skid_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[18]),
        .Q(sig_data_skid_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[19]),
        .Q(sig_data_skid_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[1]),
        .Q(sig_data_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[20]),
        .Q(sig_data_skid_reg[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[21]),
        .Q(sig_data_skid_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[22]),
        .Q(sig_data_skid_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[23]),
        .Q(sig_data_skid_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[24]),
        .Q(sig_data_skid_reg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[25]),
        .Q(sig_data_skid_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[26]),
        .Q(sig_data_skid_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[27]),
        .Q(sig_data_skid_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[28]),
        .Q(sig_data_skid_reg[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[29]),
        .Q(sig_data_skid_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[2]),
        .Q(sig_data_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[30]),
        .Q(sig_data_skid_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[31]),
        .Q(sig_data_skid_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[32] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[32]),
        .Q(sig_data_skid_reg[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[33] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[33]),
        .Q(sig_data_skid_reg[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[34]),
        .Q(sig_data_skid_reg[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[35]),
        .Q(sig_data_skid_reg[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[36]),
        .Q(sig_data_skid_reg[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[37]),
        .Q(sig_data_skid_reg[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[38]),
        .Q(sig_data_skid_reg[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[39]),
        .Q(sig_data_skid_reg[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[3]),
        .Q(sig_data_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[40] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[40]),
        .Q(sig_data_skid_reg[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[41] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[41]),
        .Q(sig_data_skid_reg[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[42]),
        .Q(sig_data_skid_reg[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[43]),
        .Q(sig_data_skid_reg[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[44]),
        .Q(sig_data_skid_reg[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[45]),
        .Q(sig_data_skid_reg[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[46]),
        .Q(sig_data_skid_reg[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[47]),
        .Q(sig_data_skid_reg[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[48] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[48]),
        .Q(sig_data_skid_reg[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[49] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[49]),
        .Q(sig_data_skid_reg[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[4]),
        .Q(sig_data_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[50]),
        .Q(sig_data_skid_reg[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[51]),
        .Q(sig_data_skid_reg[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[52]),
        .Q(sig_data_skid_reg[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[53]),
        .Q(sig_data_skid_reg[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[54]),
        .Q(sig_data_skid_reg[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[55]),
        .Q(sig_data_skid_reg[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[56] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[56]),
        .Q(sig_data_skid_reg[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[57] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[57]),
        .Q(sig_data_skid_reg[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[58] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[58]),
        .Q(sig_data_skid_reg[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[59] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[59]),
        .Q(sig_data_skid_reg[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[5]),
        .Q(sig_data_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[60] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[60]),
        .Q(sig_data_skid_reg[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[61] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[61]),
        .Q(sig_data_skid_reg[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[62] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[62]),
        .Q(sig_data_skid_reg[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[63] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[63]),
        .Q(sig_data_skid_reg[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[64] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[64]),
        .Q(sig_data_skid_reg[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[65] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[65]),
        .Q(sig_data_skid_reg[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[66] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[66]),
        .Q(sig_data_skid_reg[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[67] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[67]),
        .Q(sig_data_skid_reg[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[68] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[68]),
        .Q(sig_data_skid_reg[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[69] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[69]),
        .Q(sig_data_skid_reg[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[6]),
        .Q(sig_data_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[70] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[70]),
        .Q(sig_data_skid_reg[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[71] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[71]),
        .Q(sig_data_skid_reg[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[72] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[72]),
        .Q(sig_data_skid_reg[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[73] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[73]),
        .Q(sig_data_skid_reg[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[74] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[74]),
        .Q(sig_data_skid_reg[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[75] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[75]),
        .Q(sig_data_skid_reg[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[76] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[76]),
        .Q(sig_data_skid_reg[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[77] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[77]),
        .Q(sig_data_skid_reg[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[78] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[78]),
        .Q(sig_data_skid_reg[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[79] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[79]),
        .Q(sig_data_skid_reg[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[7]),
        .Q(sig_data_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[80] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[80]),
        .Q(sig_data_skid_reg[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[81] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[81]),
        .Q(sig_data_skid_reg[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[82] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[82]),
        .Q(sig_data_skid_reg[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[83] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[83]),
        .Q(sig_data_skid_reg[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[84] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[84]),
        .Q(sig_data_skid_reg[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[85] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[85]),
        .Q(sig_data_skid_reg[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[86] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[86]),
        .Q(sig_data_skid_reg[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[87] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[87]),
        .Q(sig_data_skid_reg[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[88] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[88]),
        .Q(sig_data_skid_reg[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[89] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[89]),
        .Q(sig_data_skid_reg[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[8]),
        .Q(sig_data_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[90] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[90]),
        .Q(sig_data_skid_reg[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[91] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[91]),
        .Q(sig_data_skid_reg[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[92] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[92]),
        .Q(sig_data_skid_reg[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[93] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[93]),
        .Q(sig_data_skid_reg[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[94] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[94]),
        .Q(sig_data_skid_reg[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[95] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[95]),
        .Q(sig_data_skid_reg[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[96] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[96]),
        .Q(sig_data_skid_reg[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[97] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[97]),
        .Q(sig_data_skid_reg[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[98] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[98]),
        .Q(sig_data_skid_reg[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[99] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[99]),
        .Q(sig_data_skid_reg[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tdata[9]),
        .Q(sig_data_skid_reg[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    sig_last_reg_out_i_1
       (.I0(s_axis_s2mm_tlast),
        .I1(sig_s_ready_dup),
        .I2(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_last_skid_mux_out),
        .Q(skid2dre_wlast),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tlast),
        .Q(sig_last_skid_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FF700000)) 
    sig_m_valid_dup_i_1__1
       (.I0(sig_s_ready_dup),
        .I1(sig_s_ready_out_reg_0),
        .I2(sig_m_valid_dup),
        .I3(s_axis_s2mm_tvalid),
        .I4(sig_mmap_rst_reg_n),
        .I5(sig_mmap_reset_reg),
        .O(sig_m_valid_dup_i_1__1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFF0000EEEE0000)) 
    sig_s_ready_dup_i_1
       (.I0(sig_s_ready_out_reg_0),
        .I1(sig_mmap_reset_reg),
        .I2(sig_m_valid_dup),
        .I3(s_axis_s2mm_tvalid),
        .I4(sig_mmap_rst_reg_n),
        .I5(sig_s_ready_dup),
        .O(sig_s_ready_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(s_axis_s2mm_tkeep[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[0]),
        .O(sig_strb_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[10]_i_1 
       (.I0(s_axis_s2mm_tkeep[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[10]),
        .O(sig_strb_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[11]_i_1 
       (.I0(s_axis_s2mm_tkeep[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[11]),
        .O(sig_strb_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[12]_i_1 
       (.I0(s_axis_s2mm_tkeep[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[12]),
        .O(sig_strb_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[13]_i_1 
       (.I0(s_axis_s2mm_tkeep[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[13]),
        .O(sig_strb_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[14]_i_1 
       (.I0(s_axis_s2mm_tkeep[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[14]),
        .O(sig_strb_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[15]_i_1__0 
       (.I0(s_axis_s2mm_tkeep[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[15]),
        .O(sig_strb_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(s_axis_s2mm_tkeep[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[1]),
        .O(sig_strb_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(s_axis_s2mm_tkeep[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[2]),
        .O(sig_strb_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(s_axis_s2mm_tkeep[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[3]),
        .O(sig_strb_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[4]_i_1 
       (.I0(s_axis_s2mm_tkeep[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[4]),
        .O(sig_strb_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[5]_i_1 
       (.I0(s_axis_s2mm_tkeep[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[5]),
        .O(sig_strb_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[6]_i_1 
       (.I0(s_axis_s2mm_tkeep[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[6]),
        .O(sig_strb_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[7]_i_1 
       (.I0(s_axis_s2mm_tkeep[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[7]),
        .O(sig_strb_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[8]_i_1 
       (.I0(s_axis_s2mm_tkeep[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[8]),
        .O(sig_strb_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[9]_i_1 
       (.I0(s_axis_s2mm_tkeep[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[9]),
        .O(sig_strb_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[0]),
        .Q(\sig_strb_reg_out_reg[15]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[10]),
        .Q(\sig_strb_reg_out_reg[15]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[11]),
        .Q(\sig_strb_reg_out_reg[15]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[12]),
        .Q(\sig_strb_reg_out_reg[15]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[13]),
        .Q(\sig_strb_reg_out_reg[15]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[14]),
        .Q(\sig_strb_reg_out_reg[15]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[15]),
        .Q(\sig_strb_reg_out_reg[15]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[1]),
        .Q(\sig_strb_reg_out_reg[15]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[2]),
        .Q(\sig_strb_reg_out_reg[15]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[3]),
        .Q(\sig_strb_reg_out_reg[15]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[4]),
        .Q(\sig_strb_reg_out_reg[15]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[5]),
        .Q(\sig_strb_reg_out_reg[15]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[6]),
        .Q(\sig_strb_reg_out_reg[15]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[7]),
        .Q(\sig_strb_reg_out_reg[15]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[8]),
        .Q(\sig_strb_reg_out_reg[15]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[9]),
        .Q(\sig_strb_reg_out_reg[15]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[0]),
        .Q(sig_strb_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[10]),
        .Q(sig_strb_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[11]),
        .Q(sig_strb_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[12]),
        .Q(sig_strb_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[13]),
        .Q(sig_strb_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[14]),
        .Q(sig_strb_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[15]),
        .Q(sig_strb_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[1]),
        .Q(sig_strb_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[2]),
        .Q(sig_strb_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[3]),
        .Q(sig_strb_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[4]),
        .Q(sig_strb_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[5]),
        .Q(sig_strb_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[6]),
        .Q(sig_strb_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[7]),
        .Q(sig_strb_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[8]),
        .Q(sig_strb_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(s_axis_s2mm_tkeep[9]),
        .Q(sig_strb_skid_reg[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_skid_buf" *) 
module ps_axi_datamover_1_0_axi_datamover_skid_buf_0
   (out,
    sig_s_ready_out_reg_0,
    sig_m_valid_out_reg_0,
    sig_dre2ibtt_tlast,
    sig_s_ready_out_reg_1,
    Q,
    \sig_strb_reg_out_reg[15]_0 ,
    m_axi_s2mm_aclk,
    SR,
    skid2dre_wlast,
    E,
    sig_mmap_reset_reg,
    sig_s_ready_out_reg_2,
    sig_s_ready_out_reg_3,
    sig_mmap_rst_reg_n,
    \sig_data_reg_out_reg[127]_0 ,
    D,
    \sig_strb_skid_reg_reg[15]_0 );
  output out;
  output sig_s_ready_out_reg_0;
  output sig_m_valid_out_reg_0;
  output sig_dre2ibtt_tlast;
  output [0:0]sig_s_ready_out_reg_1;
  output [127:0]Q;
  output [15:0]\sig_strb_reg_out_reg[15]_0 ;
  input m_axi_s2mm_aclk;
  input [0:0]SR;
  input skid2dre_wlast;
  input [0:0]E;
  input sig_mmap_reset_reg;
  input sig_s_ready_out_reg_2;
  input sig_s_ready_out_reg_3;
  input sig_mmap_rst_reg_n;
  input \sig_data_reg_out_reg[127]_0 ;
  input [127:0]D;
  input [15:0]\sig_strb_skid_reg_reg[15]_0 ;

  wire [127:0]D;
  wire [0:0]E;
  wire [127:0]Q;
  wire [0:0]SR;
  wire m_axi_s2mm_aclk;
  wire \sig_data_reg_out_reg[127]_0 ;
  wire [127:0]sig_data_skid_mux_out;
  wire [127:0]sig_data_skid_reg;
  wire sig_dre2ibtt_tlast;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire [0:0]sig_s_ready_out_reg_1;
  wire sig_s_ready_out_reg_2;
  wire sig_s_ready_out_reg_3;
  wire [15:0]\sig_strb_reg_out_reg[15]_0 ;
  wire [15:0]sig_strb_skid_mux_out;
  wire [15:0]sig_strb_skid_reg;
  wire [15:0]\sig_strb_skid_reg_reg[15]_0 ;
  wire skid2dre_wlast;

  assign out = sig_m_valid_dup;
  assign sig_m_valid_out_reg_0 = sig_m_valid_out;
  assign sig_s_ready_out_reg_0 = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1__0 
       (.I0(D[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[100]_i_1__0 
       (.I0(D[100]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[100]),
        .O(sig_data_skid_mux_out[100]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[101]_i_1__0 
       (.I0(D[101]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[101]),
        .O(sig_data_skid_mux_out[101]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[102]_i_1__0 
       (.I0(D[102]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[102]),
        .O(sig_data_skid_mux_out[102]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[103]_i_1__0 
       (.I0(D[103]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[103]),
        .O(sig_data_skid_mux_out[103]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[104]_i_1__0 
       (.I0(D[104]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[104]),
        .O(sig_data_skid_mux_out[104]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[105]_i_1__0 
       (.I0(D[105]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[105]),
        .O(sig_data_skid_mux_out[105]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[106]_i_1__0 
       (.I0(D[106]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[106]),
        .O(sig_data_skid_mux_out[106]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[107]_i_1__0 
       (.I0(D[107]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[107]),
        .O(sig_data_skid_mux_out[107]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[108]_i_1__0 
       (.I0(D[108]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[108]),
        .O(sig_data_skid_mux_out[108]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[109]_i_1__0 
       (.I0(D[109]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[109]),
        .O(sig_data_skid_mux_out[109]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1__0 
       (.I0(D[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[110]_i_1__0 
       (.I0(D[110]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[110]),
        .O(sig_data_skid_mux_out[110]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[111]_i_1__0 
       (.I0(D[111]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[111]),
        .O(sig_data_skid_mux_out[111]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[112]_i_1__0 
       (.I0(D[112]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[112]),
        .O(sig_data_skid_mux_out[112]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[113]_i_1__0 
       (.I0(D[113]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[113]),
        .O(sig_data_skid_mux_out[113]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[114]_i_1__0 
       (.I0(D[114]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[114]),
        .O(sig_data_skid_mux_out[114]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[115]_i_1__0 
       (.I0(D[115]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[115]),
        .O(sig_data_skid_mux_out[115]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[116]_i_1__0 
       (.I0(D[116]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[116]),
        .O(sig_data_skid_mux_out[116]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[117]_i_1__0 
       (.I0(D[117]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[117]),
        .O(sig_data_skid_mux_out[117]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[118]_i_1__0 
       (.I0(D[118]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[118]),
        .O(sig_data_skid_mux_out[118]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[119]_i_1__0 
       (.I0(D[119]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[119]),
        .O(sig_data_skid_mux_out[119]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1__0 
       (.I0(D[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[120]_i_1__0 
       (.I0(D[120]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[120]),
        .O(sig_data_skid_mux_out[120]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[121]_i_1__0 
       (.I0(D[121]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[121]),
        .O(sig_data_skid_mux_out[121]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[122]_i_1__0 
       (.I0(D[122]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[122]),
        .O(sig_data_skid_mux_out[122]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[123]_i_1__0 
       (.I0(D[123]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[123]),
        .O(sig_data_skid_mux_out[123]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[124]_i_1__0 
       (.I0(D[124]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[124]),
        .O(sig_data_skid_mux_out[124]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[125]_i_1__0 
       (.I0(D[125]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[125]),
        .O(sig_data_skid_mux_out[125]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[126]_i_1__0 
       (.I0(D[126]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[126]),
        .O(sig_data_skid_mux_out[126]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[127]_i_1 
       (.I0(sig_s_ready_out),
        .I1(\sig_data_reg_out_reg[127]_0 ),
        .O(sig_s_ready_out_reg_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[127]_i_2__0 
       (.I0(D[127]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[127]),
        .O(sig_data_skid_mux_out[127]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1__0 
       (.I0(D[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1__0 
       (.I0(D[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1__0 
       (.I0(D[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1__0 
       (.I0(D[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1__0 
       (.I0(D[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1__0 
       (.I0(D[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1__0 
       (.I0(D[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1__0 
       (.I0(D[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1__0 
       (.I0(D[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1__0 
       (.I0(D[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1__0 
       (.I0(D[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1__0 
       (.I0(D[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1__0 
       (.I0(D[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1__0 
       (.I0(D[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1__0 
       (.I0(D[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1__0 
       (.I0(D[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1__0 
       (.I0(D[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1__0 
       (.I0(D[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1__0 
       (.I0(D[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1__0 
       (.I0(D[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1__0 
       (.I0(D[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_1__0 
       (.I0(D[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[32]_i_1__0 
       (.I0(D[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[32]),
        .O(sig_data_skid_mux_out[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[33]_i_1__0 
       (.I0(D[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[33]),
        .O(sig_data_skid_mux_out[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1__0 
       (.I0(D[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1__0 
       (.I0(D[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1__0 
       (.I0(D[36]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1__0 
       (.I0(D[37]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1__0 
       (.I0(D[38]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1__0 
       (.I0(D[39]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1__0 
       (.I0(D[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[40]_i_1__0 
       (.I0(D[40]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[40]),
        .O(sig_data_skid_mux_out[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[41]_i_1__0 
       (.I0(D[41]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[41]),
        .O(sig_data_skid_mux_out[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1__0 
       (.I0(D[42]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1__0 
       (.I0(D[43]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1__0 
       (.I0(D[44]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1__0 
       (.I0(D[45]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1__0 
       (.I0(D[46]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1__0 
       (.I0(D[47]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[48]_i_1__0 
       (.I0(D[48]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[48]),
        .O(sig_data_skid_mux_out[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[49]_i_1__0 
       (.I0(D[49]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[49]),
        .O(sig_data_skid_mux_out[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1__0 
       (.I0(D[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1__0 
       (.I0(D[50]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1__0 
       (.I0(D[51]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1__0 
       (.I0(D[52]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1__0 
       (.I0(D[53]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1__0 
       (.I0(D[54]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_1__0 
       (.I0(D[55]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[56]_i_1__0 
       (.I0(D[56]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[56]),
        .O(sig_data_skid_mux_out[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[57]_i_1__0 
       (.I0(D[57]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[57]),
        .O(sig_data_skid_mux_out[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[58]_i_1__0 
       (.I0(D[58]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[58]),
        .O(sig_data_skid_mux_out[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[59]_i_1__0 
       (.I0(D[59]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[59]),
        .O(sig_data_skid_mux_out[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1__0 
       (.I0(D[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[60]_i_1__0 
       (.I0(D[60]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[60]),
        .O(sig_data_skid_mux_out[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[61]_i_1__0 
       (.I0(D[61]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[61]),
        .O(sig_data_skid_mux_out[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[62]_i_1__0 
       (.I0(D[62]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[62]),
        .O(sig_data_skid_mux_out[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[63]_i_1__0 
       (.I0(D[63]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[63]),
        .O(sig_data_skid_mux_out[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[64]_i_1__0 
       (.I0(D[64]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[64]),
        .O(sig_data_skid_mux_out[64]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[65]_i_1__0 
       (.I0(D[65]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[65]),
        .O(sig_data_skid_mux_out[65]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[66]_i_1__0 
       (.I0(D[66]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[66]),
        .O(sig_data_skid_mux_out[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[67]_i_1__0 
       (.I0(D[67]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[67]),
        .O(sig_data_skid_mux_out[67]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[68]_i_1__0 
       (.I0(D[68]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[68]),
        .O(sig_data_skid_mux_out[68]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[69]_i_1__0 
       (.I0(D[69]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[69]),
        .O(sig_data_skid_mux_out[69]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1__0 
       (.I0(D[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[70]_i_1__0 
       (.I0(D[70]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[70]),
        .O(sig_data_skid_mux_out[70]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[71]_i_1__0 
       (.I0(D[71]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[71]),
        .O(sig_data_skid_mux_out[71]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[72]_i_1__0 
       (.I0(D[72]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[72]),
        .O(sig_data_skid_mux_out[72]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[73]_i_1__0 
       (.I0(D[73]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[73]),
        .O(sig_data_skid_mux_out[73]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[74]_i_1__0 
       (.I0(D[74]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[74]),
        .O(sig_data_skid_mux_out[74]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[75]_i_1__0 
       (.I0(D[75]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[75]),
        .O(sig_data_skid_mux_out[75]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[76]_i_1__0 
       (.I0(D[76]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[76]),
        .O(sig_data_skid_mux_out[76]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[77]_i_1__0 
       (.I0(D[77]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[77]),
        .O(sig_data_skid_mux_out[77]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[78]_i_1__0 
       (.I0(D[78]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[78]),
        .O(sig_data_skid_mux_out[78]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[79]_i_1__0 
       (.I0(D[79]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[79]),
        .O(sig_data_skid_mux_out[79]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1__0 
       (.I0(D[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[80]_i_1__0 
       (.I0(D[80]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[80]),
        .O(sig_data_skid_mux_out[80]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[81]_i_1__0 
       (.I0(D[81]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[81]),
        .O(sig_data_skid_mux_out[81]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[82]_i_1__0 
       (.I0(D[82]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[82]),
        .O(sig_data_skid_mux_out[82]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[83]_i_1__0 
       (.I0(D[83]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[83]),
        .O(sig_data_skid_mux_out[83]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[84]_i_1__0 
       (.I0(D[84]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[84]),
        .O(sig_data_skid_mux_out[84]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[85]_i_1__0 
       (.I0(D[85]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[85]),
        .O(sig_data_skid_mux_out[85]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[86]_i_1__0 
       (.I0(D[86]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[86]),
        .O(sig_data_skid_mux_out[86]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[87]_i_1__0 
       (.I0(D[87]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[87]),
        .O(sig_data_skid_mux_out[87]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[88]_i_1__0 
       (.I0(D[88]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[88]),
        .O(sig_data_skid_mux_out[88]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[89]_i_1__0 
       (.I0(D[89]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[89]),
        .O(sig_data_skid_mux_out[89]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1__0 
       (.I0(D[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[90]_i_1__0 
       (.I0(D[90]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[90]),
        .O(sig_data_skid_mux_out[90]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[91]_i_1__0 
       (.I0(D[91]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[91]),
        .O(sig_data_skid_mux_out[91]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[92]_i_1__0 
       (.I0(D[92]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[92]),
        .O(sig_data_skid_mux_out[92]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[93]_i_1__0 
       (.I0(D[93]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[93]),
        .O(sig_data_skid_mux_out[93]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[94]_i_1__0 
       (.I0(D[94]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[94]),
        .O(sig_data_skid_mux_out[94]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[95]_i_1__0 
       (.I0(D[95]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[95]),
        .O(sig_data_skid_mux_out[95]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[96]_i_1__0 
       (.I0(D[96]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[96]),
        .O(sig_data_skid_mux_out[96]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[97]_i_1__0 
       (.I0(D[97]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[97]),
        .O(sig_data_skid_mux_out[97]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[98]_i_1__0 
       (.I0(D[98]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[98]),
        .O(sig_data_skid_mux_out[98]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[99]_i_1__0 
       (.I0(D[99]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[99]),
        .O(sig_data_skid_mux_out[99]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1__0 
       (.I0(D[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[100] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[100]),
        .Q(Q[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[101] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[101]),
        .Q(Q[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[102] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[102]),
        .Q(Q[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[103] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[103]),
        .Q(Q[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[104] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[104]),
        .Q(Q[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[105] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[105]),
        .Q(Q[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[106] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[106]),
        .Q(Q[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[107] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[107]),
        .Q(Q[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[108] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[108]),
        .Q(Q[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[109] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[109]),
        .Q(Q[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[110] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[110]),
        .Q(Q[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[111] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[111]),
        .Q(Q[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[112] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[112]),
        .Q(Q[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[113] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[113]),
        .Q(Q[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[114] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[114]),
        .Q(Q[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[115] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[115]),
        .Q(Q[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[116] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[116]),
        .Q(Q[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[117] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[117]),
        .Q(Q[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[118] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[118]),
        .Q(Q[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[119] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[119]),
        .Q(Q[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[120] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[120]),
        .Q(Q[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[121] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[121]),
        .Q(Q[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[122] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[122]),
        .Q(Q[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[123] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[123]),
        .Q(Q[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[124] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[124]),
        .Q(Q[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[125] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[125]),
        .Q(Q[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[126] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[126]),
        .Q(Q[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[127] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[127]),
        .Q(Q[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[32] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[33] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[33]),
        .Q(Q[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[34]),
        .Q(Q[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[35]),
        .Q(Q[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[36]),
        .Q(Q[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[37]),
        .Q(Q[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[38]),
        .Q(Q[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[39]),
        .Q(Q[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[40] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[40]),
        .Q(Q[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[41] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[41]),
        .Q(Q[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[42]),
        .Q(Q[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[43]),
        .Q(Q[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[44]),
        .Q(Q[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[45]),
        .Q(Q[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[46]),
        .Q(Q[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[47]),
        .Q(Q[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[48] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[48]),
        .Q(Q[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[49] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[49]),
        .Q(Q[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[50]),
        .Q(Q[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[51]),
        .Q(Q[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[52]),
        .Q(Q[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[53]),
        .Q(Q[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[54]),
        .Q(Q[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[55]),
        .Q(Q[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[56] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[56]),
        .Q(Q[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[57] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[57]),
        .Q(Q[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[58] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[58]),
        .Q(Q[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[59] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[59]),
        .Q(Q[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[60] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[60]),
        .Q(Q[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[61] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[61]),
        .Q(Q[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[62] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[62]),
        .Q(Q[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[63] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[63]),
        .Q(Q[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[64] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[64]),
        .Q(Q[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[65] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[65]),
        .Q(Q[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[66] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[66]),
        .Q(Q[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[67] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[67]),
        .Q(Q[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[68] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[68]),
        .Q(Q[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[69] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[69]),
        .Q(Q[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[70] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[70]),
        .Q(Q[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[71] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[71]),
        .Q(Q[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[72] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[72]),
        .Q(Q[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[73] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[73]),
        .Q(Q[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[74] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[74]),
        .Q(Q[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[75] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[75]),
        .Q(Q[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[76] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[76]),
        .Q(Q[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[77] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[77]),
        .Q(Q[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[78] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[78]),
        .Q(Q[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[79] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[79]),
        .Q(Q[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[80] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[80]),
        .Q(Q[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[81] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[81]),
        .Q(Q[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[82] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[82]),
        .Q(Q[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[83] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[83]),
        .Q(Q[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[84] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[84]),
        .Q(Q[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[85] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[85]),
        .Q(Q[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[86] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[86]),
        .Q(Q[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[87] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[87]),
        .Q(Q[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[88] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[88]),
        .Q(Q[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[89] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[89]),
        .Q(Q[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[90] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[90]),
        .Q(Q[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[91] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[91]),
        .Q(Q[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[92] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[92]),
        .Q(Q[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[93] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[93]),
        .Q(Q[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[94] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[94]),
        .Q(Q[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[95] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[95]),
        .Q(Q[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[96] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[96]),
        .Q(Q[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[97] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[97]),
        .Q(Q[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[98] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[98]),
        .Q(Q[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[99] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[99]),
        .Q(Q[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[0]),
        .Q(sig_data_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[100] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[100]),
        .Q(sig_data_skid_reg[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[101] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[101]),
        .Q(sig_data_skid_reg[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[102] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[102]),
        .Q(sig_data_skid_reg[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[103] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[103]),
        .Q(sig_data_skid_reg[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[104] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[104]),
        .Q(sig_data_skid_reg[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[105] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[105]),
        .Q(sig_data_skid_reg[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[106] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[106]),
        .Q(sig_data_skid_reg[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[107] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[107]),
        .Q(sig_data_skid_reg[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[108] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[108]),
        .Q(sig_data_skid_reg[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[109] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[109]),
        .Q(sig_data_skid_reg[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[10]),
        .Q(sig_data_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[110] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[110]),
        .Q(sig_data_skid_reg[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[111] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[111]),
        .Q(sig_data_skid_reg[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[112] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[112]),
        .Q(sig_data_skid_reg[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[113] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[113]),
        .Q(sig_data_skid_reg[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[114] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[114]),
        .Q(sig_data_skid_reg[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[115] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[115]),
        .Q(sig_data_skid_reg[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[116] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[116]),
        .Q(sig_data_skid_reg[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[117] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[117]),
        .Q(sig_data_skid_reg[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[118] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[118]),
        .Q(sig_data_skid_reg[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[119] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[119]),
        .Q(sig_data_skid_reg[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[11]),
        .Q(sig_data_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[120] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[120]),
        .Q(sig_data_skid_reg[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[121] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[121]),
        .Q(sig_data_skid_reg[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[122] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[122]),
        .Q(sig_data_skid_reg[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[123] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[123]),
        .Q(sig_data_skid_reg[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[124] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[124]),
        .Q(sig_data_skid_reg[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[125] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[125]),
        .Q(sig_data_skid_reg[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[126] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[126]),
        .Q(sig_data_skid_reg[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[127] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[127]),
        .Q(sig_data_skid_reg[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[12]),
        .Q(sig_data_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[13]),
        .Q(sig_data_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[14]),
        .Q(sig_data_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[15]),
        .Q(sig_data_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[16]),
        .Q(sig_data_skid_reg[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[17]),
        .Q(sig_data_skid_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[18]),
        .Q(sig_data_skid_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[19]),
        .Q(sig_data_skid_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[1]),
        .Q(sig_data_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[20]),
        .Q(sig_data_skid_reg[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[21]),
        .Q(sig_data_skid_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[22]),
        .Q(sig_data_skid_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[23]),
        .Q(sig_data_skid_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[24]),
        .Q(sig_data_skid_reg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[25]),
        .Q(sig_data_skid_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[26]),
        .Q(sig_data_skid_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[27]),
        .Q(sig_data_skid_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[28]),
        .Q(sig_data_skid_reg[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[29]),
        .Q(sig_data_skid_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[2]),
        .Q(sig_data_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[30]),
        .Q(sig_data_skid_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[31]),
        .Q(sig_data_skid_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[32] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[32]),
        .Q(sig_data_skid_reg[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[33] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[33]),
        .Q(sig_data_skid_reg[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[34]),
        .Q(sig_data_skid_reg[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[35]),
        .Q(sig_data_skid_reg[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[36]),
        .Q(sig_data_skid_reg[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[37]),
        .Q(sig_data_skid_reg[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[38]),
        .Q(sig_data_skid_reg[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[39]),
        .Q(sig_data_skid_reg[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[3]),
        .Q(sig_data_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[40] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[40]),
        .Q(sig_data_skid_reg[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[41] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[41]),
        .Q(sig_data_skid_reg[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[42]),
        .Q(sig_data_skid_reg[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[43]),
        .Q(sig_data_skid_reg[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[44]),
        .Q(sig_data_skid_reg[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[45]),
        .Q(sig_data_skid_reg[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[46]),
        .Q(sig_data_skid_reg[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[47]),
        .Q(sig_data_skid_reg[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[48] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[48]),
        .Q(sig_data_skid_reg[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[49] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[49]),
        .Q(sig_data_skid_reg[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[4]),
        .Q(sig_data_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[50]),
        .Q(sig_data_skid_reg[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[51]),
        .Q(sig_data_skid_reg[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[52]),
        .Q(sig_data_skid_reg[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[53]),
        .Q(sig_data_skid_reg[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[54]),
        .Q(sig_data_skid_reg[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[55]),
        .Q(sig_data_skid_reg[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[56] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[56]),
        .Q(sig_data_skid_reg[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[57] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[57]),
        .Q(sig_data_skid_reg[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[58] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[58]),
        .Q(sig_data_skid_reg[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[59] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[59]),
        .Q(sig_data_skid_reg[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[5]),
        .Q(sig_data_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[60] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[60]),
        .Q(sig_data_skid_reg[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[61] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[61]),
        .Q(sig_data_skid_reg[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[62] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[62]),
        .Q(sig_data_skid_reg[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[63] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[63]),
        .Q(sig_data_skid_reg[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[64] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[64]),
        .Q(sig_data_skid_reg[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[65] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[65]),
        .Q(sig_data_skid_reg[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[66] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[66]),
        .Q(sig_data_skid_reg[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[67] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[67]),
        .Q(sig_data_skid_reg[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[68] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[68]),
        .Q(sig_data_skid_reg[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[69] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[69]),
        .Q(sig_data_skid_reg[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[6]),
        .Q(sig_data_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[70] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[70]),
        .Q(sig_data_skid_reg[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[71] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[71]),
        .Q(sig_data_skid_reg[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[72] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[72]),
        .Q(sig_data_skid_reg[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[73] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[73]),
        .Q(sig_data_skid_reg[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[74] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[74]),
        .Q(sig_data_skid_reg[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[75] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[75]),
        .Q(sig_data_skid_reg[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[76] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[76]),
        .Q(sig_data_skid_reg[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[77] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[77]),
        .Q(sig_data_skid_reg[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[78] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[78]),
        .Q(sig_data_skid_reg[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[79] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[79]),
        .Q(sig_data_skid_reg[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[7]),
        .Q(sig_data_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[80] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[80]),
        .Q(sig_data_skid_reg[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[81] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[81]),
        .Q(sig_data_skid_reg[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[82] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[82]),
        .Q(sig_data_skid_reg[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[83] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[83]),
        .Q(sig_data_skid_reg[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[84] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[84]),
        .Q(sig_data_skid_reg[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[85] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[85]),
        .Q(sig_data_skid_reg[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[86] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[86]),
        .Q(sig_data_skid_reg[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[87] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[87]),
        .Q(sig_data_skid_reg[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[88] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[88]),
        .Q(sig_data_skid_reg[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[89] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[89]),
        .Q(sig_data_skid_reg[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[8]),
        .Q(sig_data_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[90] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[90]),
        .Q(sig_data_skid_reg[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[91] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[91]),
        .Q(sig_data_skid_reg[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[92] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[92]),
        .Q(sig_data_skid_reg[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[93] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[93]),
        .Q(sig_data_skid_reg[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[94] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[94]),
        .Q(sig_data_skid_reg[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[95] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[95]),
        .Q(sig_data_skid_reg[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[96] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[96]),
        .Q(sig_data_skid_reg[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[97] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[97]),
        .Q(sig_data_skid_reg[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[98] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[98]),
        .Q(sig_data_skid_reg[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[99] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[99]),
        .Q(sig_data_skid_reg[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(D[9]),
        .Q(sig_data_skid_reg[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    sig_last_reg_out_i_1__0
       (.I0(skid2dre_wlast),
        .I1(sig_s_ready_dup),
        .I2(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_last_skid_mux_out),
        .Q(sig_dre2ibtt_tlast),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(skid2dre_wlast),
        .Q(sig_last_skid_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFB00000)) 
    sig_m_valid_dup_i_1__0
       (.I0(sig_s_ready_out_reg_3),
        .I1(sig_s_ready_dup),
        .I2(sig_m_valid_dup),
        .I3(sig_s_ready_out_reg_2),
        .I4(sig_mmap_rst_reg_n),
        .I5(sig_mmap_reset_reg),
        .O(sig_m_valid_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEEEFFFF00000000)) 
    sig_s_ready_dup_i_1__0
       (.I0(sig_mmap_reset_reg),
        .I1(sig_s_ready_dup),
        .I2(sig_s_ready_out_reg_2),
        .I3(sig_m_valid_dup),
        .I4(sig_s_ready_out_reg_3),
        .I5(sig_mmap_rst_reg_n),
        .O(sig_s_ready_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[0]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [0]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[0]),
        .O(sig_strb_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[10]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [10]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[10]),
        .O(sig_strb_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[11]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [11]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[11]),
        .O(sig_strb_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[12]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [12]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[12]),
        .O(sig_strb_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[13]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [13]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[13]),
        .O(sig_strb_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[14]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [14]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[14]),
        .O(sig_strb_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[15]_i_1__1 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [15]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[15]),
        .O(sig_strb_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[1]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [1]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[1]),
        .O(sig_strb_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[2]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [2]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[2]),
        .O(sig_strb_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[3]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [3]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[3]),
        .O(sig_strb_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[4]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [4]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[4]),
        .O(sig_strb_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[5]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [5]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[5]),
        .O(sig_strb_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[6]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [6]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[6]),
        .O(sig_strb_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[7]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [7]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[7]),
        .O(sig_strb_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[8]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [8]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[8]),
        .O(sig_strb_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[9]_i_1__0 
       (.I0(\sig_strb_skid_reg_reg[15]_0 [9]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[9]),
        .O(sig_strb_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[0]),
        .Q(\sig_strb_reg_out_reg[15]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[10]),
        .Q(\sig_strb_reg_out_reg[15]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[11]),
        .Q(\sig_strb_reg_out_reg[15]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[12]),
        .Q(\sig_strb_reg_out_reg[15]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[13]),
        .Q(\sig_strb_reg_out_reg[15]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[14]),
        .Q(\sig_strb_reg_out_reg[15]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[15]),
        .Q(\sig_strb_reg_out_reg[15]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[1]),
        .Q(\sig_strb_reg_out_reg[15]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[2]),
        .Q(\sig_strb_reg_out_reg[15]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[3]),
        .Q(\sig_strb_reg_out_reg[15]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[4]),
        .Q(\sig_strb_reg_out_reg[15]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[5]),
        .Q(\sig_strb_reg_out_reg[15]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[6]),
        .Q(\sig_strb_reg_out_reg[15]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[7]),
        .Q(\sig_strb_reg_out_reg[15]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[8]),
        .Q(\sig_strb_reg_out_reg[15]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(E),
        .D(sig_strb_skid_mux_out[9]),
        .Q(\sig_strb_reg_out_reg[15]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [0]),
        .Q(sig_strb_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [10]),
        .Q(sig_strb_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [11]),
        .Q(sig_strb_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [12]),
        .Q(sig_strb_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [13]),
        .Q(sig_strb_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [14]),
        .Q(sig_strb_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [15]),
        .Q(sig_strb_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [1]),
        .Q(sig_strb_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [2]),
        .Q(sig_strb_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [3]),
        .Q(sig_strb_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [4]),
        .Q(sig_strb_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [5]),
        .Q(sig_strb_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [6]),
        .Q(sig_strb_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [7]),
        .Q(sig_strb_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [8]),
        .Q(sig_strb_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_s_ready_dup),
        .D(\sig_strb_skid_reg_reg[15]_0 [9]),
        .Q(sig_strb_skid_reg[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_wr_status_cntl" *) 
module ps_axi_datamover_1_0_axi_datamover_wr_status_cntl
   (FIFO_Full_reg,
    sig_wsc2stat_status_valid,
    in,
    sig_wdc_status_going_full,
    sig_init_done,
    sig_init_done_0,
    m_axi_s2mm_bready,
    sig_inhibit_rdy_n,
    SR,
    m_axi_s2mm_aclk,
    sig_coelsc_tag_reg0,
    sig_init_done_reg,
    sig_init_done_reg_0,
    m_axi_s2mm_bvalid,
    sig_push_to_wsc,
    sig_tlast_err_stop,
    m_axi_s2mm_bresp,
    \USE_SRL_FIFO.sig_wr_fifo ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0 );
  output FIFO_Full_reg;
  output sig_wsc2stat_status_valid;
  output [0:7]in;
  output sig_wdc_status_going_full;
  output sig_init_done;
  output sig_init_done_0;
  output m_axi_s2mm_bready;
  output sig_inhibit_rdy_n;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_coelsc_tag_reg0;
  input sig_init_done_reg;
  input sig_init_done_reg_0;
  input m_axi_s2mm_bvalid;
  input sig_push_to_wsc;
  input sig_tlast_err_stop;
  input [1:0]m_axi_s2mm_bresp;
  input \USE_SRL_FIFO.sig_wr_fifo ;
  input [0:6]\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0 ;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_16 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_2 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_6 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_7 ;
  wire \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8 ;
  wire [0:6]\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0 ;
  wire [6:0]\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out ;
  wire I_WRESP_STATUS_FIFO_n_2;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [0:7]in;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_bready;
  wire [1:0]m_axi_s2mm_bresp;
  wire m_axi_s2mm_bvalid;
  wire p_0_in;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_reg_empty;
  wire sig_coelsc_slverr_reg0;
  wire sig_coelsc_tag_reg0;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_reg;
  wire sig_init_done_reg_0;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_statcnt_gt_eq_thres;
  wire sig_tlast_err_stop;
  wire \sig_wdc_statcnt[0]_i_1_n_0 ;
  wire [3:0]sig_wdc_statcnt_reg;
  wire sig_wdc_status_going_full;
  wire [1:1]sig_wresp_sfifo_out;
  wire sig_wsc2stat_status_valid;

  ps_axi_datamover_1_0_axi_datamover_fifo__parameterized2 \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO 
       (.D({\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_6 ,\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_7 ,\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8 }),
        .E(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ),
        .FIFO_Full_reg(FIFO_Full_reg),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg (I_WRESP_STATUS_FIFO_n_2),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 (sig_wresp_sfifo_out),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15 ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_16 ),
        .\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] (\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0 ),
        .Q(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_2 ),
        .SR(SR),
        .\USE_SRL_FIFO.sig_wr_fifo (\USE_SRL_FIFO.sig_wr_fifo ),
        .in({in[1],in[2],in[3]}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out({\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [6:2],\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [0]}),
        .p_0_in(p_0_in),
        .sig_coelsc_interr_reg0(sig_coelsc_interr_reg0),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done_0(sig_init_done_0),
        .sig_init_done_reg_0(sig_init_done_reg_0),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .\sig_wdc_statcnt_reg[3] (sig_wdc_statcnt_reg));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(in[2]),
        .R(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(in[3]),
        .R(sig_coelsc_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_16 ),
        .Q(in[0]),
        .S(sig_coelsc_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(p_0_in),
        .Q(sig_coelsc_reg_empty),
        .S(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [0]),
        .Q(sig_wsc2stat_status_valid),
        .R(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(in[1]),
        .R(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [3]),
        .Q(in[7]),
        .R(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [4]),
        .Q(in[6]),
        .R(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [5]),
        .Q(in[5]),
        .R(sig_coelsc_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_coelsc_reg),
        .D(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [6]),
        .Q(in[4]),
        .R(sig_coelsc_tag_reg0));
  ps_axi_datamover_1_0_axi_datamover_fifo__parameterized1 I_WRESP_STATUS_FIFO
       (.\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg (\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out [2]),
        .Q(I_WRESP_STATUS_FIFO_n_2),
        .SR(SR),
        .\addr_i_reg[0] (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15 ),
        .\addr_i_reg[1] (\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_2 ),
        .in({in[1],in[2]}),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .m_axi_s2mm_bready(m_axi_s2mm_bready),
        .m_axi_s2mm_bresp(m_axi_s2mm_bresp),
        .m_axi_s2mm_bvalid(m_axi_s2mm_bvalid),
        .out(sig_wresp_sfifo_out),
        .sig_coelsc_decerr_reg0(sig_coelsc_decerr_reg0),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_coelsc_slverr_reg0(sig_coelsc_slverr_reg0),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_wdc_statcnt[0]_i_1 
       (.I0(sig_wdc_statcnt_reg[0]),
        .O(\sig_wdc_statcnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ),
        .D(\sig_wdc_statcnt[0]_i_1_n_0 ),
        .Q(sig_wdc_statcnt_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_8 ),
        .Q(sig_wdc_statcnt_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_7 ),
        .Q(sig_wdc_statcnt_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_5 ),
        .D(\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_6 ),
        .Q(sig_wdc_statcnt_reg[3]),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    sig_wdc_status_going_full_i_1
       (.I0(sig_wdc_statcnt_reg[2]),
        .I1(sig_wdc_statcnt_reg[3]),
        .O(sig_statcnt_gt_eq_thres));
  FDRE #(
    .INIT(1'b0)) 
    sig_wdc_status_going_full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_statcnt_gt_eq_thres),
        .Q(sig_wdc_status_going_full),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_wrdata_cntl" *) 
module ps_axi_datamover_1_0_axi_datamover_wrdata_cntl
   (FIFO_Full_reg,
    sig_data2all_tlast_error,
    sig_push_to_wsc,
    in,
    sig_init_done,
    sig_data2skid_wlast,
    sig_last_skid_mux_out,
    \USE_SRL_FIFO.sig_wr_fifo ,
    sig_inhibit_rdy_n,
    \USE_SRL_FIFO.sig_wr_fifo_0 ,
    sig_tlast_err_stop,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ,
    E,
    sig_s_ready_out_reg,
    sig_last_dbeat_reg_0,
    \sig_next_last_strb_reg_reg[15]_0 ,
    SR,
    m_axi_s2mm_aclk,
    sig_init_done_reg,
    out,
    \sig_strb_reg_out_reg[0] ,
    sig_last_skid_reg,
    sig_mmap_rst_reg_n,
    sig_mstr2data_cmd_valid,
    sig_wdc_status_going_full,
    sig_wsc2stat_status_valid,
    sig_next_calc_error_reg_i_5,
    sig_inhibit_rdy_n_1,
    sig_inhibit_rdy_n_2,
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 ,
    sig_dqual_reg_empty_reg_0,
    sig_dqual_reg_empty_reg_1,
    \sig_data_reg_out_reg[127] ,
    sig_dre2ibtt_tlast,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 ,
    Q,
    sig_next_calc_error_reg_reg_0);
  output FIFO_Full_reg;
  output sig_data2all_tlast_error;
  output sig_push_to_wsc;
  output [0:6]in;
  output sig_init_done;
  output sig_data2skid_wlast;
  output sig_last_skid_mux_out;
  output \USE_SRL_FIFO.sig_wr_fifo ;
  output sig_inhibit_rdy_n;
  output \USE_SRL_FIFO.sig_wr_fifo_0 ;
  output sig_tlast_err_stop;
  output \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  output [0:0]E;
  output sig_s_ready_out_reg;
  output [15:0]sig_last_dbeat_reg_0;
  output [15:0]\sig_next_last_strb_reg_reg[15]_0 ;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_init_done_reg;
  input out;
  input \sig_strb_reg_out_reg[0] ;
  input sig_last_skid_reg;
  input sig_mmap_rst_reg_n;
  input sig_mstr2data_cmd_valid;
  input sig_wdc_status_going_full;
  input sig_wsc2stat_status_valid;
  input sig_next_calc_error_reg_i_5;
  input sig_inhibit_rdy_n_1;
  input sig_inhibit_rdy_n_2;
  input \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 ;
  input sig_dqual_reg_empty_reg_0;
  input sig_dqual_reg_empty_reg_1;
  input \sig_data_reg_out_reg[127] ;
  input sig_dre2ibtt_tlast;
  input [15:0]\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 ;
  input [15:0]Q;
  input [45:0]sig_next_calc_error_reg_reg_0;

  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_2 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_53 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2_n_0 ;
  wire [15:0]\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9_n_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire \USE_SRL_FIFO.sig_wr_fifo_0 ;
  wire [0:6]in;
  wire m_axi_s2mm_aclk;
  wire out;
  wire [7:0]p_1_in;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[0]_i_2_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_clr_dqual_reg;
  wire [52:0]sig_cmd_fifo_data_out;
  wire sig_data2all_tlast_error;
  wire sig_data2skid_wlast;
  wire sig_data2wsc_cmd_cmplt0;
  wire \sig_data_reg_out_reg[127] ;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[4]_i_2_n_0 ;
  wire \sig_dbeat_cntr[5]_i_2_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_full;
  wire sig_dre2ibtt_tlast;
  wire sig_first_dbeat__0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_1;
  wire sig_inhibit_rdy_n_2;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_last_dbeat_i_3_n_0;
  wire sig_last_dbeat_i_5_n_0;
  wire [15:0]sig_last_dbeat_reg_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_last_reg_out_i_2_n_0;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_i_3_n_0;
  wire sig_next_calc_error_reg_i_5;
  wire [45:0]sig_next_calc_error_reg_reg_0;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_eof_reg;
  wire [15:0]sig_next_last_strb_reg;
  wire [15:0]\sig_next_last_strb_reg_reg[15]_0 ;
  wire sig_next_sequential_reg;
  wire [15:0]sig_next_strt_strb_reg;
  wire [3:0]sig_next_tag_reg;
  wire sig_push_dqual_reg;
  wire sig_push_err2wsc;
  wire sig_push_err2wsc_i_1_n_0;
  wire sig_push_to_wsc;
  wire sig_push_to_wsc0;
  wire sig_push_to_wsc_i_2_n_0;
  wire sig_s_ready_dup_i_3_n_0;
  wire sig_s_ready_dup_i_4_n_0;
  wire sig_s_ready_out_reg;
  wire \sig_strb_reg_out_reg[0] ;
  wire sig_tlast_err_stop;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  ps_axi_datamover_1_0_axi_datamover_fifo__parameterized4 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D(p_1_in),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .FIFO_Full_reg(FIFO_Full_reg),
        .\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57 ),
        .Q(sig_dbeat_cntr),
        .SR(SR),
        .m_axi_s2mm_aclk(m_axi_s2mm_aclk),
        .out({sig_cmd_fifo_data_out[52:49],sig_cmd_fifo_data_out[47:16],sig_cmd_fifo_data_out[3:0]}),
        .sel(\USE_SRL_FIFO.sig_wr_fifo ),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr[7]_i_3_n_0 ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr[4]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr[5]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[6] (sig_last_reg_out_i_2_n_0),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_last_dbeat_reg_n_0),
        .sig_dqual_reg_empty_reg_0(sig_data2all_tlast_error),
        .sig_dqual_reg_empty_reg_1(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_empty_reg_2(sig_dqual_reg_empty_reg_1),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat__0(sig_first_dbeat__0),
        .sig_inhibit_rdy_n_1(sig_inhibit_rdy_n_1),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_i_3_n_0),
        .sig_last_mmap_dbeat_reg(sig_last_mmap_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_53 ),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mmap_rst_reg_n_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_2 ),
        .sig_mmap_rst_reg_n_reg_0(sig_clr_dqual_reg),
        .sig_mmap_rst_reg_n_reg_1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58 ),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_i_4(out),
        .sig_next_calc_error_reg_i_5(sig_next_calc_error_reg_i_5),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg_0),
        .sig_next_cmd_cmplt_reg_reg(sig_next_calc_error_reg_i_3_n_0),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_push_dqual_reg(sig_push_dqual_reg),
        .sig_wdc_status_going_full(sig_wdc_status_going_full),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1 
       (.I0(sig_inhibit_rdy_n_2),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 ),
        .I2(sig_push_to_wsc),
        .I3(sig_data2all_tlast_error),
        .I4(sig_tlast_err_stop),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0 ),
        .Q(sig_tlast_err_stop),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8880)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1 
       (.I0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57 ),
        .I1(sig_dre2ibtt_tlast),
        .I2(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2_n_0 ),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_n_0 ),
        .I4(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4_n_0 ),
        .I5(sig_data2all_tlast_error),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10 
       (.I0(sig_next_last_strb_reg[8]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [8]),
        .I2(sig_next_last_strb_reg[9]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [9]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11 
       (.I0(sig_next_last_strb_reg[5]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [5]),
        .I2(sig_next_last_strb_reg[4]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [4]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2 
       (.I0(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5_n_0 ),
        .I1(sig_next_last_strb_reg[13]),
        .I2(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [13]),
        .I3(sig_next_last_strb_reg[12]),
        .I4(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [12]),
        .I5(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6_n_0 ),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3 
       (.I0(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7_n_0 ),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8_n_0 ),
        .I2(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9_n_0 ),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_10_n_0 ),
        .I4(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_11_n_0 ),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0002)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4 
       (.I0(sig_next_eof_reg),
        .I1(sig_dbeat_cntr[6]),
        .I2(sig_last_reg_out_i_2_n_0),
        .I3(sig_dbeat_cntr[7]),
        .I4(sig_dre2ibtt_tlast),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5 
       (.I0(sig_next_last_strb_reg[7]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [7]),
        .I2(sig_next_last_strb_reg[6]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [6]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6 
       (.I0(sig_next_last_strb_reg[0]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [0]),
        .I2(sig_next_last_strb_reg[1]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [1]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7 
       (.I0(sig_next_last_strb_reg[11]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [11]),
        .I2(sig_next_last_strb_reg[10]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [10]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8 
       (.I0(sig_next_last_strb_reg[14]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [14]),
        .I2(sig_next_last_strb_reg[15]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [15]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9 
       (.I0(sig_next_last_strb_reg[2]),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [2]),
        .I2(sig_next_last_strb_reg[3]),
        .I3(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_3_0 [3]),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0 ),
        .Q(sig_data2all_tlast_error),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \data_reg[5][6]_srl6_i_1 
       (.I0(sig_tlast_err_stop),
        .I1(sig_inhibit_rdy_n_2),
        .I2(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 ),
        .I3(sig_push_to_wsc),
        .O(\USE_SRL_FIFO.sig_wr_fifo_0 ));
  LUT5 #(
    .INIT(32'h00FE7F00)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr[0]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[2]),
        .I3(out),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_addr_posted_cntr[0]_i_2 
       (.I0(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hCC98E6CC)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[0]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[2]),
        .I3(out),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hF0E0F8F0)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[0]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[2]),
        .I3(out),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .D(\sig_addr_posted_cntr[0]_i_2_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_calc_err_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_calc_error_reg),
        .Q(in[4]),
        .R(sig_push_to_wsc0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_data2wsc_cmd_cmplt_i_1
       (.I0(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0 ),
        .I1(sig_next_cmd_cmplt_reg),
        .O(sig_data2wsc_cmd_cmplt0));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_cmd_cmplt_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_data2wsc_cmd_cmplt0),
        .Q(in[6]),
        .R(sig_push_to_wsc0));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_last_err_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0 ),
        .Q(in[5]),
        .R(sig_push_to_wsc0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data2wsc_tag_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_tag_reg[0]),
        .Q(in[3]),
        .R(sig_push_to_wsc0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data2wsc_tag_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_tag_reg[1]),
        .Q(in[2]),
        .R(sig_push_to_wsc0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data2wsc_tag_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_tag_reg[2]),
        .Q(in[1]),
        .R(sig_push_to_wsc0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data2wsc_tag_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_tag_reg[3]),
        .Q(in[0]),
        .R(sig_push_to_wsc0));
  LUT2 #(
    .INIT(4'h7)) 
    \sig_data_reg_out[127]_i_1__0 
       (.I0(sig_s_ready_out_reg),
        .I1(\sig_data_reg_out_reg[127] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[4]_i_2 
       (.I0(sig_dbeat_cntr[2]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[1]),
        .I3(sig_dbeat_cntr[3]),
        .O(\sig_dbeat_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[5]_i_2 
       (.I0(sig_dbeat_cntr[3]),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[2]),
        .I4(sig_dbeat_cntr[4]),
        .O(\sig_dbeat_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_dbeat_cntr[7]),
        .I3(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57 ),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[0]),
        .Q(sig_dbeat_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[1]),
        .Q(sig_dbeat_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[2]),
        .Q(sig_dbeat_cntr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[3]),
        .Q(sig_dbeat_cntr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[4]),
        .Q(sig_dbeat_cntr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[5]),
        .Q(sig_dbeat_cntr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[6]),
        .Q(sig_dbeat_cntr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_52 ),
        .D(p_1_in[7]),
        .Q(sig_dbeat_cntr[7]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b1),
        .Q(sig_dqual_reg_full),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_2 ),
        .Q(sig_first_dbeat__0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    sig_last_dbeat_i_3
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_mmap_rst_reg_n),
        .I3(sig_last_dbeat_i_5_n_0),
        .I4(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57 ),
        .O(sig_last_dbeat_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_last_dbeat_i_5
       (.I0(sig_dbeat_cntr[2]),
        .I1(sig_dbeat_cntr[3]),
        .I2(sig_dbeat_cntr[4]),
        .I3(sig_dbeat_cntr[5]),
        .I4(sig_dbeat_cntr[7]),
        .I5(sig_dbeat_cntr[6]),
        .O(sig_last_dbeat_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58 ),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(sig_next_calc_error_reg_i_3_n_0),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    sig_last_reg_out_i_1__1
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_dbeat_cntr[7]),
        .I3(sig_dqual_reg_full),
        .I4(\sig_strb_reg_out_reg[0] ),
        .I5(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_last_reg_out_i_2
       (.I0(sig_dbeat_cntr[4]),
        .I1(sig_dbeat_cntr[2]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[1]),
        .I4(sig_dbeat_cntr[3]),
        .I5(sig_dbeat_cntr[5]),
        .O(sig_last_reg_out_i_2_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    sig_last_skid_reg_i_1
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_dbeat_cntr[7]),
        .I3(sig_dqual_reg_full),
        .O(sig_data2skid_wlast));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_53 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    sig_next_calc_error_reg_i_3
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_dbeat_cntr[7]),
        .I3(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_57 ),
        .O(sig_next_calc_error_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[52]),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[51]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[49]),
        .Q(sig_next_eof_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[32]),
        .Q(sig_next_last_strb_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[42]),
        .Q(sig_next_last_strb_reg[10]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[43]),
        .Q(sig_next_last_strb_reg[11]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[44]),
        .Q(sig_next_last_strb_reg[12]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[45]),
        .Q(sig_next_last_strb_reg[13]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[46]),
        .Q(sig_next_last_strb_reg[14]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[47]),
        .Q(sig_next_last_strb_reg[15]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[33]),
        .Q(sig_next_last_strb_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[34]),
        .Q(sig_next_last_strb_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[35]),
        .Q(sig_next_last_strb_reg[3]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[36]),
        .Q(sig_next_last_strb_reg[4]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[37]),
        .Q(sig_next_last_strb_reg[5]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[38]),
        .Q(sig_next_last_strb_reg[6]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[39]),
        .Q(sig_next_last_strb_reg[7]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[40]),
        .Q(sig_next_last_strb_reg[8]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[41]),
        .Q(sig_next_last_strb_reg[9]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[50]),
        .Q(sig_next_sequential_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[16]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[10] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[26]),
        .Q(sig_next_strt_strb_reg[10]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[11] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[27]),
        .Q(sig_next_strt_strb_reg[11]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[12] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[28]),
        .Q(sig_next_strt_strb_reg[12]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[13] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[29]),
        .Q(sig_next_strt_strb_reg[13]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[14] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[30]),
        .Q(sig_next_strt_strb_reg[14]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[15] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[31]),
        .Q(sig_next_strt_strb_reg[15]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[17]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[18]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[19]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[4] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[20]),
        .Q(sig_next_strt_strb_reg[4]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[5] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[21]),
        .Q(sig_next_strt_strb_reg[5]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[6] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[22]),
        .Q(sig_next_strt_strb_reg[6]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[7] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[23]),
        .Q(sig_next_strt_strb_reg[7]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[8] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[24]),
        .Q(sig_next_strt_strb_reg[8]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[9] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[25]),
        .Q(sig_next_strt_strb_reg[9]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[0]),
        .Q(sig_next_tag_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[1]),
        .Q(sig_next_tag_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[2]),
        .Q(sig_next_tag_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[3]),
        .Q(sig_next_tag_reg[3]),
        .R(sig_clr_dqual_reg));
  LUT4 #(
    .INIT(16'h2000)) 
    sig_push_err2wsc_i_1
       (.I0(sig_mmap_rst_reg_n),
        .I1(sig_push_err2wsc),
        .I2(sig_ld_new_cmd_reg),
        .I3(sig_next_calc_error_reg),
        .O(sig_push_err2wsc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_push_err2wsc_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(sig_push_err2wsc_i_1_n_0),
        .Q(sig_push_err2wsc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00200000FFFFFFFF)) 
    sig_push_to_wsc_i_1
       (.I0(sig_inhibit_rdy_n_2),
        .I1(\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0 ),
        .I2(sig_push_to_wsc),
        .I3(sig_push_err2wsc),
        .I4(sig_next_calc_error_reg_i_3_n_0),
        .I5(sig_mmap_rst_reg_n),
        .O(sig_push_to_wsc0));
  LUT3 #(
    .INIT(8'h0D)) 
    sig_push_to_wsc_i_2
       (.I0(sig_next_calc_error_reg_i_3_n_0),
        .I1(sig_push_err2wsc),
        .I2(sig_tlast_err_stop),
        .O(sig_push_to_wsc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_push_to_wsc_reg
       (.C(m_axi_s2mm_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(1'b1),
        .Q(sig_push_to_wsc),
        .R(sig_push_to_wsc0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    sig_s_ready_dup_i_2
       (.I0(sig_s_ready_dup_i_3_n_0),
        .I1(sig_data2all_tlast_error),
        .I2(sig_dqual_reg_empty_reg_0),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    sig_s_ready_dup_i_2__0
       (.I0(sig_dqual_reg_empty_reg_1),
        .I1(sig_s_ready_dup_i_3_n_0),
        .I2(sig_data2all_tlast_error),
        .O(sig_s_ready_out_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF1511FFFF)) 
    sig_s_ready_dup_i_3
       (.I0(sig_s_ready_dup_i_4_n_0),
        .I1(sig_addr_posted_cntr[0]),
        .I2(out),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(sig_dqual_reg_full),
        .I5(sig_next_calc_error_reg),
        .O(sig_s_ready_dup_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_s_ready_dup_i_4
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .O(sig_s_ready_dup_i_4_n_0));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[0]_i_1__1 
       (.I0(sig_next_last_strb_reg[0]),
        .I1(sig_next_strt_strb_reg[0]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[0]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[10]_i_1__1 
       (.I0(sig_next_last_strb_reg[10]),
        .I1(sig_next_strt_strb_reg[10]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[10]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [10]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[11]_i_1__1 
       (.I0(sig_next_last_strb_reg[11]),
        .I1(sig_next_strt_strb_reg[11]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[11]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [11]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[12]_i_1__1 
       (.I0(sig_next_last_strb_reg[12]),
        .I1(sig_next_strt_strb_reg[12]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[12]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [12]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[13]_i_1__1 
       (.I0(sig_next_last_strb_reg[13]),
        .I1(sig_next_strt_strb_reg[13]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[13]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [13]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[14]_i_1__1 
       (.I0(sig_next_last_strb_reg[14]),
        .I1(sig_next_strt_strb_reg[14]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[14]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [14]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[15]_i_2 
       (.I0(sig_next_last_strb_reg[15]),
        .I1(sig_next_strt_strb_reg[15]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[15]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [15]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[1]_i_1__1 
       (.I0(sig_next_last_strb_reg[1]),
        .I1(sig_next_strt_strb_reg[1]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[1]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[2]_i_1__1 
       (.I0(sig_next_last_strb_reg[2]),
        .I1(sig_next_strt_strb_reg[2]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[2]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[3]_i_1__1 
       (.I0(sig_next_last_strb_reg[3]),
        .I1(sig_next_strt_strb_reg[3]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[3]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[4]_i_1__1 
       (.I0(sig_next_last_strb_reg[4]),
        .I1(sig_next_strt_strb_reg[4]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[4]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [4]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[5]_i_1__1 
       (.I0(sig_next_last_strb_reg[5]),
        .I1(sig_next_strt_strb_reg[5]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[5]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [5]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[6]_i_1__1 
       (.I0(sig_next_last_strb_reg[6]),
        .I1(sig_next_strt_strb_reg[6]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[6]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [6]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[7]_i_1__1 
       (.I0(sig_next_last_strb_reg[7]),
        .I1(sig_next_strt_strb_reg[7]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[7]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [7]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[8]_i_1__1 
       (.I0(sig_next_last_strb_reg[8]),
        .I1(sig_next_strt_strb_reg[8]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[8]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [8]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00CF00)) 
    \sig_strb_reg_out[9]_i_1__1 
       (.I0(sig_next_last_strb_reg[9]),
        .I1(sig_next_strt_strb_reg[9]),
        .I2(sig_first_dbeat__0),
        .I3(\sig_strb_reg_out_reg[0] ),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(Q[9]),
        .O(\sig_next_last_strb_reg_reg[15]_0 [9]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[0]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[0]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[0]),
        .O(sig_last_dbeat_reg_0[0]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[10]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[10]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[10]),
        .O(sig_last_dbeat_reg_0[10]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[11]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[11]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[11]),
        .O(sig_last_dbeat_reg_0[11]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[12]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[12]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[12]),
        .O(sig_last_dbeat_reg_0[12]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[13]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[13]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[13]),
        .O(sig_last_dbeat_reg_0[13]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[14]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[14]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[14]),
        .O(sig_last_dbeat_reg_0[14]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[15]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[15]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[15]),
        .O(sig_last_dbeat_reg_0[15]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[1]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[1]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[1]),
        .O(sig_last_dbeat_reg_0[1]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[2]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[2]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[2]),
        .O(sig_last_dbeat_reg_0[2]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[3]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[3]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[3]),
        .O(sig_last_dbeat_reg_0[3]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[4]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[4]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[4]),
        .O(sig_last_dbeat_reg_0[4]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[5]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[5]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[5]),
        .O(sig_last_dbeat_reg_0[5]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[6]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[6]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[6]),
        .O(sig_last_dbeat_reg_0[6]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[7]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[7]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[7]),
        .O(sig_last_dbeat_reg_0[7]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[8]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[8]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[8]),
        .O(sig_last_dbeat_reg_0[8]));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \sig_strb_skid_reg[9]_i_1 
       (.I0(sig_last_dbeat_reg_n_0),
        .I1(sig_next_last_strb_reg[9]),
        .I2(sig_first_dbeat__0),
        .I3(sig_next_strt_strb_reg[9]),
        .O(sig_last_dbeat_reg_0[9]));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_1_0_srl_fifo
   (Q,
    FIFO_Full_reg_0,
    s_axis_s2mm_cmd_tready,
    out,
    SS,
    m_axi_s2mm_aclk,
    FIFO_Full_reg_1,
    s_axis_s2mm_cmd_tvalid,
    sig_inhibit_rdy_n,
    s_axis_s2mm_cmd_tdata,
    D);
  output [1:0]Q;
  output FIFO_Full_reg_0;
  output s_axis_s2mm_cmd_tready;
  output [53:0]out;
  input [0:0]SS;
  input m_axi_s2mm_aclk;
  input FIFO_Full_reg_1;
  input s_axis_s2mm_cmd_tvalid;
  input sig_inhibit_rdy_n;
  input [53:0]s_axis_s2mm_cmd_tdata;
  input [0:0]D;

  wire [0:0]D;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire FIFO_Full_reg_n_0;
  wire [1:0]Q;
  wire [0:0]SS;
  wire [1:1]addr_i;
  wire [2:1]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_s2mm_aclk;
  wire [53:0]out;
  wire [53:0]s_axis_s2mm_cmd_tdata;
  wire s_axis_s2mm_cmd_tready;
  wire s_axis_s2mm_cmd_tvalid;
  wire sig_inhibit_rdy_n;

  LUT5 #(
    .INIT(32'h20000220)) 
    FIFO_Full_i_1
       (.I0(addr_i),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(FIFO_Full_reg_0),
        .I4(FIFO_Full_reg_1),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(SS));
  LUT6 #(
    .INIT(64'hC6C6C6C69CC6C6C6)) 
    \addr_i[1]_i_1 
       (.I0(FIFO_Full_reg_1),
        .I1(addr_i),
        .I2(Q[0]),
        .I3(s_axis_s2mm_cmd_tvalid),
        .I4(sig_inhibit_rdy_n),
        .I5(FIFO_Full_reg_n_0),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'hA6AAAABA)) 
    \addr_i[2]_i_2 
       (.I0(Q[1]),
        .I1(addr_i),
        .I2(FIFO_Full_reg_1),
        .I3(FIFO_Full_reg_0),
        .I4(Q[0]),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .S(SS));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i),
        .S(SS));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[1]),
        .S(SS));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][0]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[53]),
        .Q(out[53]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][10]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[43]),
        .Q(out[43]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[42]),
        .Q(out[42]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][12]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[41]),
        .Q(out[41]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][13]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[40]),
        .Q(out[40]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][14]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[39]),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][15]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[38]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][16]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[37]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][17]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[36]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][18]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][19]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][1]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[52]),
        .Q(out[52]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][20]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][21]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][25]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][26]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][27]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][28]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][29]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][2]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[51]),
        .Q(out[51]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][30]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][31]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][32]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][33]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][34]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][35]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][37]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][3]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[50]),
        .Q(out[50]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][44]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][4]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[49]),
        .Q(out[49]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][52]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][53]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][54]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][55]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][55]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][56]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][56]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][57]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][57]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][58]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][58]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][59]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][59]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][5]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[48]),
        .Q(out[48]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][60]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][60]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][61]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][61]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][62]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][62]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][63]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][63]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][64]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][64]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][65]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][65]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][66]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][66]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][67]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][67]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \data_reg[3][67]_srl4_i_1 
       (.I0(FIFO_Full_reg_n_0),
        .I1(sig_inhibit_rdy_n),
        .I2(s_axis_s2mm_cmd_tvalid),
        .O(FIFO_Full_reg_0));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][6]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[47]),
        .Q(out[47]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][7]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[46]),
        .Q(out[46]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][8]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[45]),
        .Q(out[45]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][9]_srl4 
       (.A0(Q[0]),
        .A1(addr_i),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_0),
        .CLK(m_axi_s2mm_aclk),
        .D(s_axis_s2mm_cmd_tdata[44]),
        .Q(out[44]));
  LUT2 #(
    .INIT(4'h2)) 
    s_axis_s2mm_cmd_tready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(s_axis_s2mm_cmd_tready));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_1_0_srl_fifo__parameterized0
   (FIFO_Full_reg_0,
    sig_coelsc_tag_reg0,
    m_axis_s2mm_sts_tvalid,
    m_axis_s2mm_sts_tdata,
    SS,
    m_axi_s2mm_aclk,
    m_axis_s2mm_sts_tready,
    sig_wsc2stat_status_valid,
    \addr_i_reg[0]_0 ,
    sig_mmap_rst_reg_n,
    in);
  output FIFO_Full_reg_0;
  output sig_coelsc_tag_reg0;
  output m_axis_s2mm_sts_tvalid;
  output [7:0]m_axis_s2mm_sts_tdata;
  input [0:0]SS;
  input m_axi_s2mm_aclk;
  input m_axis_s2mm_sts_tready;
  input sig_wsc2stat_status_valid;
  input \addr_i_reg[0]_0 ;
  input sig_mmap_rst_reg_n;
  input [0:7]in;

  wire FIFO_Full_reg_0;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [1:0]addr_i;
  wire [2:0]addr_i_p1;
  wire \addr_i_reg[0]_0 ;
  wire \addr_i_reg_n_0_[2] ;
  wire fifo_full_p1;
  wire [0:7]in;
  wire m_axi_s2mm_aclk;
  wire [7:0]m_axis_s2mm_sts_tdata;
  wire m_axis_s2mm_sts_tready;
  wire m_axis_s2mm_sts_tvalid;
  wire sig_coelsc_tag_reg0;
  wire sig_mmap_rst_reg_n;
  wire sig_wsc2stat_status_valid;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h41100000)) 
    FIFO_Full_i_1__1
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(m_axis_s2mm_sts_tready),
        .I2(addr_i[0]),
        .I3(\USE_SRL_FIFO.sig_wr_fifo ),
        .I4(addr_i[1]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SS));
  LUT4 #(
    .INIT(16'h40FF)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_1 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[0]_0 ),
        .I2(sig_wsc2stat_status_valid),
        .I3(sig_mmap_rst_reg_n),
        .O(sig_coelsc_tag_reg0));
  LUT6 #(
    .INIT(64'hF708F70808F7F708)) 
    \addr_i[0]_i_1__1 
       (.I0(sig_wsc2stat_status_valid),
        .I1(\addr_i_reg[0]_0 ),
        .I2(FIFO_Full_reg_0),
        .I3(addr_i[0]),
        .I4(m_axis_s2mm_sts_tready),
        .I5(\addr_i_reg_n_0_[2] ),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h6C6CC96C)) 
    \addr_i[1]_i_1__1 
       (.I0(\USE_SRL_FIFO.sig_wr_fifo ),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(m_axis_s2mm_sts_tready),
        .I4(\addr_i_reg_n_0_[2] ),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h1AAAAAAE)) 
    \addr_i[2]_i_1__0 
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(m_axis_s2mm_sts_tready),
        .I2(addr_i[0]),
        .I3(addr_i[1]),
        .I4(\USE_SRL_FIFO.sig_wr_fifo ),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SS));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SS));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\addr_i_reg_n_0_[2] ),
        .S(SS));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][0]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[0]),
        .Q(m_axis_s2mm_sts_tdata[7]));
  LUT3 #(
    .INIT(8'h08)) 
    \data_reg[3][0]_srl4_i_1 
       (.I0(sig_wsc2stat_status_valid),
        .I1(\addr_i_reg[0]_0 ),
        .I2(FIFO_Full_reg_0),
        .O(\USE_SRL_FIFO.sig_wr_fifo ));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][1]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[1]),
        .Q(m_axis_s2mm_sts_tdata[6]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][2]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[2]),
        .Q(m_axis_s2mm_sts_tdata[5]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][3]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[3]),
        .Q(m_axis_s2mm_sts_tdata[4]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][4]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[4]),
        .Q(m_axis_s2mm_sts_tdata[3]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][5]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[5]),
        .Q(m_axis_s2mm_sts_tdata[2]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][6]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[6]),
        .Q(m_axis_s2mm_sts_tdata[1]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][7]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[7]),
        .Q(m_axis_s2mm_sts_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_s2mm_sts_tvalid_INST_0
       (.I0(\addr_i_reg_n_0_[2] ),
        .O(m_axis_s2mm_sts_tvalid));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_1_0_srl_fifo__parameterized1
   (m_axi_s2mm_bready,
    Q,
    sig_coelsc_decerr_reg0,
    out,
    sig_coelsc_slverr_reg0,
    SR,
    m_axi_s2mm_aclk,
    sig_inhibit_rdy_n,
    m_axi_s2mm_bvalid,
    \addr_i_reg[0]_0 ,
    sig_coelsc_reg_empty,
    \addr_i_reg[1]_0 ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    in,
    m_axi_s2mm_bresp);
  output m_axi_s2mm_bready;
  output [0:0]Q;
  output sig_coelsc_decerr_reg0;
  output [0:0]out;
  output sig_coelsc_slverr_reg0;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_inhibit_rdy_n;
  input m_axi_s2mm_bvalid;
  input \addr_i_reg[0]_0 ;
  input sig_coelsc_reg_empty;
  input [0:0]\addr_i_reg[1]_0 ;
  input [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  input [1:0]in;
  input [1:0]m_axi_s2mm_bresp;

  wire FIFO_Full_reg_n_0;
  wire [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [2:0]addr_i;
  wire \addr_i[1]_i_2_n_0 ;
  wire \addr_i[3]_i_3_n_0 ;
  wire \addr_i[3]_i_4_n_0 ;
  wire [3:0]addr_i_p1;
  wire \addr_i_reg[0]_0 ;
  wire [0:0]\addr_i_reg[1]_0 ;
  wire fifo_full_p1;
  wire [1:0]in;
  wire m_axi_s2mm_aclk;
  wire m_axi_s2mm_bready;
  wire [1:0]m_axi_s2mm_bresp;
  wire m_axi_s2mm_bvalid;
  wire [0:0]out;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_reg_empty;
  wire sig_coelsc_slverr_reg0;
  wire sig_inhibit_rdy_n;
  wire [0:0]sig_wresp_sfifo_out;

  LUT6 #(
    .INIT(64'h0011400400000000)) 
    FIFO_Full_i_1__2
       (.I0(Q),
        .I1(\addr_i[3]_i_4_n_0 ),
        .I2(\addr_i[3]_i_3_n_0 ),
        .I3(addr_i[0]),
        .I4(addr_i[1]),
        .I5(addr_i[2]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_i_1 
       (.I0(sig_wresp_sfifo_out),
        .I1(out),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .I3(in[0]),
        .O(sig_coelsc_decerr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0F02)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_i_1 
       (.I0(out),
        .I1(sig_wresp_sfifo_out),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ),
        .I3(in[1]),
        .O(sig_coelsc_slverr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    \addr_i[0]_i_1__2 
       (.I0(m_axi_s2mm_bvalid),
        .I1(FIFO_Full_reg_n_0),
        .I2(sig_inhibit_rdy_n),
        .I3(\addr_i_reg[0]_0 ),
        .I4(addr_i[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAAEFFF755510008)) 
    \addr_i[1]_i_1__2 
       (.I0(\addr_i[1]_i_2_n_0 ),
        .I1(sig_coelsc_reg_empty),
        .I2(\addr_i_reg[1]_0 ),
        .I3(Q),
        .I4(addr_i[0]),
        .I5(addr_i[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \addr_i[1]_i_2 
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .I2(m_axi_s2mm_bvalid),
        .O(\addr_i[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA6AA969)) 
    \addr_i[2]_i_1__1 
       (.I0(addr_i[2]),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(\addr_i[3]_i_3_n_0 ),
        .I4(\addr_i[3]_i_4_n_0 ),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'h99AAAAAAAAAAAAAF)) 
    \addr_i[3]_i_2 
       (.I0(Q),
        .I1(\addr_i[3]_i_3_n_0 ),
        .I2(\addr_i[3]_i_4_n_0 ),
        .I3(addr_i[2]),
        .I4(addr_i[1]),
        .I5(addr_i[0]),
        .O(addr_i_p1[3]));
  LUT6 #(
    .INIT(64'hDFDFDFFFDFDFDFDF)) 
    \addr_i[3]_i_3 
       (.I0(m_axi_s2mm_bvalid),
        .I1(FIFO_Full_reg_n_0),
        .I2(sig_inhibit_rdy_n),
        .I3(Q),
        .I4(\addr_i_reg[1]_0 ),
        .I5(sig_coelsc_reg_empty),
        .O(\addr_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFFFEFEFEFEFEF)) 
    \addr_i[3]_i_4 
       (.I0(Q),
        .I1(\addr_i_reg[1]_0 ),
        .I2(sig_coelsc_reg_empty),
        .I3(m_axi_s2mm_bvalid),
        .I4(FIFO_Full_reg_n_0),
        .I5(sig_inhibit_rdy_n),
        .O(\addr_i[3]_i_4_n_0 ));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SR));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SR));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(addr_i[2]),
        .S(SR));
  FDSE \addr_i_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q),
        .S(SR));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][0]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(m_axi_s2mm_bresp[1]),
        .Q(out));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][1]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][1]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(m_axi_s2mm_bresp[0]),
        .Q(sig_wresp_sfifo_out));
  LUT3 #(
    .INIT(8'h20)) 
    \data_reg[5][1]_srl6_i_1 
       (.I0(m_axi_s2mm_bvalid),
        .I1(FIFO_Full_reg_n_0),
        .I2(sig_inhibit_rdy_n),
        .O(\USE_SRL_FIFO.sig_wr_fifo ));
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_s2mm_bready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(m_axi_s2mm_bready));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_1_0_srl_fifo__parameterized2
   (FIFO_Full_reg_0,
    Q,
    \addr_i_reg[3]_0 ,
    E,
    D,
    out,
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ,
    sig_coelsc_interr_reg0,
    p_0_in,
    SR,
    m_axi_s2mm_aclk,
    sig_push_to_wsc,
    \addr_i_reg[0]_0 ,
    sig_tlast_err_stop,
    \sig_wdc_statcnt_reg[3] ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ,
    sig_coelsc_reg_empty,
    in,
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ,
    \USE_SRL_FIFO.sig_wr_fifo ,
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] );
  output FIFO_Full_reg_0;
  output [0:0]Q;
  output \addr_i_reg[3]_0 ;
  output [0:0]E;
  output [2:0]D;
  output [5:0]out;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  output \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  output sig_coelsc_interr_reg0;
  output p_0_in;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_push_to_wsc;
  input \addr_i_reg[0]_0 ;
  input sig_tlast_err_stop;
  input [3:0]\sig_wdc_statcnt_reg[3] ;
  input [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ;
  input sig_coelsc_reg_empty;
  input [2:0]in;
  input [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ;
  input \USE_SRL_FIFO.sig_wr_fifo ;
  input [0:6]\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] ;

  wire [2:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg_0;
  wire [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ;
  wire [0:0]\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ;
  wire \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ;
  wire [0:6]\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] ;
  wire [1:1]\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [2:0]addr_i;
  wire \addr_i[3]_i_2__0_n_0 ;
  wire \addr_i[3]_i_3__0_n_0 ;
  wire [3:0]addr_i_p1;
  wire \addr_i_reg[0]_0 ;
  wire \addr_i_reg[3]_0 ;
  wire fifo_full_p1;
  wire [2:0]in;
  wire m_axi_s2mm_aclk;
  wire [5:0]out;
  wire p_0_in;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_reg_empty;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire [3:0]\sig_wdc_statcnt_reg[3] ;

  LUT6 #(
    .INIT(64'h0050040100000000)) 
    FIFO_Full_i_1__3
       (.I0(Q),
        .I1(\addr_i[3]_i_3__0_n_0 ),
        .I2(\addr_i[3]_i_2__0_n_0 ),
        .I3(addr_i[0]),
        .I4(addr_i[1]),
        .I5(addr_i[2]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_i_1 
       (.I0(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out ),
        .I1(out[1]),
        .I2(in[0]),
        .O(sig_coelsc_interr_reg0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_i_1 
       (.I0(in[2]),
        .I1(\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0 ),
        .I2(in[0]),
        .I3(in[1]),
        .I4(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out ),
        .I5(out[1]),
        .O(\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg ));
  LUT5 #(
    .INIT(32'h00EF0000)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_2 
       (.I0(out[1]),
        .I1(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out ),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ),
        .I3(Q),
        .I4(sig_coelsc_reg_empty),
        .O(\addr_i_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_3 
       (.I0(out[0]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h6666666666966666)) 
    \addr_i[0]_i_1__3 
       (.I0(addr_i[0]),
        .I1(\addr_i_reg[3]_0 ),
        .I2(sig_push_to_wsc),
        .I3(FIFO_Full_reg_0),
        .I4(\addr_i_reg[0]_0 ),
        .I5(sig_tlast_err_stop),
        .O(addr_i_p1[0]));
  LUT3 #(
    .INIT(8'hFD)) 
    \addr_i[0]_i_2 
       (.I0(sig_coelsc_reg_empty),
        .I1(Q),
        .I2(\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg ),
        .O(\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hD12E)) 
    \addr_i[1]_i_1__3 
       (.I0(\addr_i[3]_i_2__0_n_0 ),
        .I1(addr_i[0]),
        .I2(\addr_i[3]_i_3__0_n_0 ),
        .I3(addr_i[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hEFE71018)) 
    \addr_i[2]_i_1__2 
       (.I0(addr_i[1]),
        .I1(addr_i[0]),
        .I2(\addr_i[3]_i_2__0_n_0 ),
        .I3(\addr_i[3]_i_3__0_n_0 ),
        .I4(addr_i[2]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hFEFFFE7F01000180)) 
    \addr_i[3]_i_1__0 
       (.I0(addr_i[2]),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(\addr_i[3]_i_2__0_n_0 ),
        .I4(\addr_i[3]_i_3__0_n_0 ),
        .I5(Q),
        .O(addr_i_p1[3]));
  LUT5 #(
    .INIT(32'hFBFF0000)) 
    \addr_i[3]_i_2__0 
       (.I0(sig_tlast_err_stop),
        .I1(\addr_i_reg[0]_0 ),
        .I2(FIFO_Full_reg_0),
        .I3(sig_push_to_wsc),
        .I4(\addr_i_reg[3]_0 ),
        .O(\addr_i[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \addr_i[3]_i_3__0 
       (.I0(sig_tlast_err_stop),
        .I1(\addr_i_reg[0]_0 ),
        .I2(FIFO_Full_reg_0),
        .I3(sig_push_to_wsc),
        .I4(\addr_i_reg[3]_0 ),
        .O(\addr_i[3]_i_3__0_n_0 ));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SR));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SR));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(addr_i[2]),
        .S(SR));
  FDSE \addr_i_reg[3] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q),
        .S(SR));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][0]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [0]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][1]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][1]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [1]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][2]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][2]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [2]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][3]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][3]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [3]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][4]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][4]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [4]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][5]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][5]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [5]),
        .Q(\GEN_OMIT_INDET_BTT.sig_dcntl_sfifo_out ));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[5][6]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[5][6]_srl6 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(addr_i[2]),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3] [6]),
        .Q(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hC2C33C3C)) 
    \sig_wdc_statcnt[1]_i_1 
       (.I0(\sig_wdc_statcnt_reg[3] [3]),
        .I1(\sig_wdc_statcnt_reg[3] [0]),
        .I2(\addr_i[3]_i_3__0_n_0 ),
        .I3(\sig_wdc_statcnt_reg[3] [2]),
        .I4(\sig_wdc_statcnt_reg[3] [1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hE178)) 
    \sig_wdc_statcnt[2]_i_1 
       (.I0(\sig_wdc_statcnt_reg[3] [1]),
        .I1(\sig_wdc_statcnt_reg[3] [0]),
        .I2(\sig_wdc_statcnt_reg[3] [2]),
        .I3(\addr_i[3]_i_3__0_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF0FFF0FFF0FEF07)) 
    \sig_wdc_statcnt[3]_i_1 
       (.I0(\sig_wdc_statcnt_reg[3] [1]),
        .I1(\sig_wdc_statcnt_reg[3] [2]),
        .I2(\addr_i[3]_i_3__0_n_0 ),
        .I3(\addr_i[3]_i_2__0_n_0 ),
        .I4(\sig_wdc_statcnt_reg[3] [0]),
        .I5(\sig_wdc_statcnt_reg[3] [3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \sig_wdc_statcnt[3]_i_2 
       (.I0(\sig_wdc_statcnt_reg[3] [1]),
        .I1(\sig_wdc_statcnt_reg[3] [0]),
        .I2(\sig_wdc_statcnt_reg[3] [2]),
        .I3(\addr_i[3]_i_3__0_n_0 ),
        .I4(\sig_wdc_statcnt_reg[3] [3]),
        .O(D[2]));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_1_0_srl_fifo__parameterized3
   (FIFO_Full_reg_0,
    sig_push_addr_reg1_out,
    \addr_i_reg[2]_0 ,
    p_0_in,
    out,
    SR,
    m_axi_s2mm_aclk,
    sig_addr_reg_empty,
    sig_data2all_tlast_error,
    \addr_i_reg[0]_0 ,
    sig_mstr2addr_cmd_valid,
    sig_mmap_rst_reg_n,
    in);
  output FIFO_Full_reg_0;
  output sig_push_addr_reg1_out;
  output \addr_i_reg[2]_0 ;
  output p_0_in;
  output [40:0]out;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_addr_reg_empty;
  input sig_data2all_tlast_error;
  input \addr_i_reg[0]_0 ;
  input sig_mstr2addr_cmd_valid;
  input sig_mmap_rst_reg_n;
  input [39:0]in;

  wire FIFO_Full_reg_0;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [1:0]addr_i;
  wire [2:0]addr_i_p1;
  wire \addr_i_reg[0]_0 ;
  wire \addr_i_reg[2]_0 ;
  wire \addr_i_reg_n_0_[2] ;
  wire fifo_full_p1;
  wire [39:0]in;
  wire m_axi_s2mm_aclk;
  wire [40:0]out;
  wire p_0_in;
  wire sig_addr_reg_empty;
  wire sig_data2all_tlast_error;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;

  LUT6 #(
    .INIT(64'h000000002D00D000)) 
    FIFO_Full_i_1__4
       (.I0(sig_addr_reg_empty),
        .I1(sig_data2all_tlast_error),
        .I2(\USE_SRL_FIFO.sig_wr_fifo ),
        .I3(addr_i[1]),
        .I4(addr_i[0]),
        .I5(\addr_i_reg_n_0_[2] ),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    \addr_i[0]_i_1__4 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[0]_0 ),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(addr_i[0]),
        .I4(sig_push_addr_reg1_out),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAEAFF7F55150080)) 
    \addr_i[1]_i_1__4 
       (.I0(addr_i[0]),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(\addr_i_reg[0]_0 ),
        .I3(FIFO_Full_reg_0),
        .I4(sig_push_addr_reg1_out),
        .I5(addr_i[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'h6AAA2AAB6AAA6AAA)) 
    \addr_i[2]_i_1__3 
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(addr_i[0]),
        .I2(addr_i[1]),
        .I3(\USE_SRL_FIFO.sig_wr_fifo ),
        .I4(sig_data2all_tlast_error),
        .I5(sig_addr_reg_empty),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SR));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SR));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\addr_i_reg_n_0_[2] ),
        .S(SR));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][11]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[38]),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][12]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(1'b1),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][17]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[37]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][18]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[36]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][19]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][20]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][21]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][22]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][23]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][24]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][25]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][26]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][27]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][28]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][29]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][30]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][31]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][32]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][33]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][34]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][35]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][36]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][37]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][38]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][39]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][40]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][41]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][42]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][43]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][44]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][45]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][46]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][47]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][48]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][49]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][49]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][50]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][51]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][51]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][52]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][53]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][54]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \data_reg[3][54]_srl4_i_1 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[0]_0 ),
        .I2(sig_mstr2addr_cmd_valid),
        .O(\USE_SRL_FIFO.sig_wr_fifo ));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][8]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_s2mm_aclk),
        .D(in[39]),
        .Q(out[40]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_1
       (.I0(out[40]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(sig_data2all_tlast_error),
        .I1(sig_addr_reg_empty),
        .I2(\addr_i_reg_n_0_[2] ),
        .O(sig_push_addr_reg1_out));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    sig_posted_to_axi_2_i_1
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(sig_addr_reg_empty),
        .I2(sig_data2all_tlast_error),
        .I3(sig_mmap_rst_reg_n),
        .O(\addr_i_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_1_0_srl_fifo__parameterized4
   (FIFO_Full_reg_0,
    sig_mmap_rst_reg_n_reg,
    sig_last_dbeat_reg,
    D,
    E,
    sig_ld_new_cmd_reg_reg,
    sig_inhibit_rdy_n_reg,
    sig_mmap_rst_reg_n_reg_0,
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ,
    sig_mmap_rst_reg_n_reg_1,
    out,
    SR,
    m_axi_s2mm_aclk,
    sig_mmap_rst_reg_n,
    sig_first_dbeat__0,
    \sig_dbeat_cntr_reg[0] ,
    Q,
    \sig_dbeat_cntr_reg[6] ,
    sig_ld_new_cmd_reg,
    sig_mstr2data_cmd_valid,
    \addr_i_reg[1]_0 ,
    sig_next_cmd_cmplt_reg_reg,
    \sig_dbeat_cntr_reg[5] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    sig_dqual_reg_empty,
    sig_next_calc_error_reg,
    sig_wdc_status_going_full,
    sig_wsc2stat_status_valid,
    sig_next_calc_error_reg_i_5_0,
    sig_inhibit_rdy_n_1,
    sig_addr_posted_cntr,
    sig_dqual_reg_empty_reg_0,
    sig_dqual_reg_empty_reg_1,
    sig_dqual_reg_empty_reg_2,
    sig_dqual_reg_full,
    sig_last_mmap_dbeat_reg,
    sig_next_calc_error_reg_i_4_0,
    sig_last_dbeat_reg_0,
    sig_next_calc_error_reg_reg);
  output FIFO_Full_reg_0;
  output sig_mmap_rst_reg_n_reg;
  output sig_last_dbeat_reg;
  output [7:0]D;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  output sig_inhibit_rdy_n_reg;
  output [0:0]sig_mmap_rst_reg_n_reg_0;
  output \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  output sig_mmap_rst_reg_n_reg_1;
  output [39:0]out;
  input [0:0]SR;
  input m_axi_s2mm_aclk;
  input sig_mmap_rst_reg_n;
  input sig_first_dbeat__0;
  input \sig_dbeat_cntr_reg[0] ;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[6] ;
  input sig_ld_new_cmd_reg;
  input sig_mstr2data_cmd_valid;
  input \addr_i_reg[1]_0 ;
  input sig_next_cmd_cmplt_reg_reg;
  input \sig_dbeat_cntr_reg[5] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input sig_dqual_reg_empty;
  input sig_next_calc_error_reg;
  input sig_wdc_status_going_full;
  input sig_wsc2stat_status_valid;
  input sig_next_calc_error_reg_i_5_0;
  input sig_inhibit_rdy_n_1;
  input [2:0]sig_addr_posted_cntr;
  input sig_dqual_reg_empty_reg_0;
  input sig_dqual_reg_empty_reg_1;
  input sig_dqual_reg_empty_reg_2;
  input sig_dqual_reg_full;
  input sig_last_mmap_dbeat_reg;
  input sig_next_calc_error_reg_i_4_0;
  input sig_last_dbeat_reg_0;
  input [45:0]sig_next_calc_error_reg_reg;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg_0;
  wire \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [1:0]addr_i;
  wire [2:0]addr_i_p1;
  wire \addr_i_reg[1]_0 ;
  wire \addr_i_reg_n_0_[2] ;
  wire fifo_full_p1;
  wire m_axi_s2mm_aclk;
  wire [39:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire [13:8]sig_cmd_fifo_data_out;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire \sig_dbeat_cntr_reg[6] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_empty_reg_1;
  wire sig_dqual_reg_empty_reg_2;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat__0;
  wire sig_first_dbeat_i_2_n_0;
  wire sig_inhibit_rdy_n_1;
  wire sig_inhibit_rdy_n_reg;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mmap_rst_reg_n_reg;
  wire [0:0]sig_mmap_rst_reg_n_reg_0;
  wire sig_mmap_rst_reg_n_reg_1;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_i_4_0;
  wire sig_next_calc_error_reg_i_5_0;
  wire sig_next_calc_error_reg_i_5_n_0;
  wire sig_next_calc_error_reg_i_6_n_0;
  wire sig_next_calc_error_reg_i_7_n_0;
  wire [45:0]sig_next_calc_error_reg_reg;
  wire sig_next_cmd_cmplt_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_wdc_status_going_full;
  wire sig_wsc2stat_status_valid;

  LUT5 #(
    .INIT(32'h40140000)) 
    FIFO_Full_i_1__0
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(addr_i[0]),
        .I2(sig_inhibit_rdy_n_reg),
        .I3(sig_last_dbeat_reg),
        .I4(addr_i[1]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h08F7F708)) 
    \addr_i[0]_i_1__0 
       (.I0(\addr_i_reg[1]_0 ),
        .I1(sig_mstr2data_cmd_valid),
        .I2(FIFO_Full_reg_0),
        .I3(sig_last_dbeat_reg),
        .I4(addr_i[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hC69CC6C6C6C6C6C6)) 
    \addr_i[1]_i_1__0 
       (.I0(sig_last_dbeat_reg),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(FIFO_Full_reg_0),
        .I4(sig_mstr2data_cmd_valid),
        .I5(\addr_i_reg[1]_0 ),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'hAAAB6AAA)) 
    \addr_i[2]_i_1 
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(sig_inhibit_rdy_n_reg),
        .I2(addr_i[0]),
        .I3(addr_i[1]),
        .I4(sig_last_dbeat_reg),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SR));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SR));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_s2mm_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\addr_i_reg_n_0_[2] ),
        .S(SR));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][0]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[45]),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][10]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[36]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][11]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[35]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][12]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[34]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][13]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[33]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][14]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[32]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][15]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[31]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][16]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[30]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][17]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[29]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][18]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[28]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][19]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[27]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][1]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[44]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][20]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[26]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][21]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[25]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][22]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[24]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][23]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[23]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][24]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[22]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][25]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[21]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][26]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[20]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][27]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[19]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][28]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[18]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][29]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[17]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][2]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[43]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][30]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[16]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][31]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[15]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][32]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[14]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][33]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[13]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][34]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[12]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][35]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[11]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][36]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[10]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][39]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[9]),
        .Q(sig_cmd_fifo_data_out[13]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][3]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[42]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][40]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[8]),
        .Q(sig_cmd_fifo_data_out[12]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][41]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[7]),
        .Q(sig_cmd_fifo_data_out[11]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][42]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[6]),
        .Q(sig_cmd_fifo_data_out[10]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][43]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[5]),
        .Q(sig_cmd_fifo_data_out[9]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][44]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[4]),
        .Q(sig_cmd_fifo_data_out[8]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][49]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][49]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][50]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][51]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][51]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][52]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \data_reg[3][52]_srl4_i_1 
       (.I0(\addr_i_reg[1]_0 ),
        .I1(sig_mstr2data_cmd_valid),
        .I2(FIFO_Full_reg_0),
        .O(sig_inhibit_rdy_n_reg));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][5]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[41]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][6]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[40]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][7]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[39]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][8]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[38]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][9]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_inhibit_rdy_n_reg),
        .CLK(m_axi_s2mm_aclk),
        .D(sig_next_calc_error_reg_reg[37]),
        .Q(out[31]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(sig_cmd_fifo_data_out[8]),
        .I1(sig_last_dbeat_reg),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sig_last_dbeat_reg),
        .I3(sig_cmd_fifo_data_out[9]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sig_last_dbeat_reg),
        .I4(sig_cmd_fifo_data_out[10]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(sig_last_dbeat_reg),
        .I5(sig_cmd_fifo_data_out[11]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(Q[4]),
        .I1(\sig_dbeat_cntr_reg[4] ),
        .I2(sig_last_dbeat_reg),
        .I3(sig_cmd_fifo_data_out[12]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(Q[5]),
        .I1(\sig_dbeat_cntr_reg[5] ),
        .I2(sig_last_dbeat_reg),
        .I3(sig_cmd_fifo_data_out[13]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(sig_last_dbeat_reg),
        .I1(\sig_dbeat_cntr_reg[6] ),
        .I2(Q[6]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_last_dbeat_reg),
        .I1(\sig_dbeat_cntr_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_last_dbeat_reg),
        .I1(Q[6]),
        .I2(\sig_dbeat_cntr_reg[6] ),
        .I3(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    sig_first_dbeat_i_1
       (.I0(sig_mmap_rst_reg_n),
        .I1(sig_first_dbeat_i_2_n_0),
        .I2(sig_first_dbeat__0),
        .I3(sig_last_dbeat_reg),
        .I4(\sig_dbeat_cntr_reg[0] ),
        .O(sig_mmap_rst_reg_n_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_first_dbeat_i_2
       (.I0(sig_cmd_fifo_data_out[11]),
        .I1(sig_cmd_fifo_data_out[12]),
        .I2(sig_cmd_fifo_data_out[9]),
        .I3(sig_cmd_fifo_data_out[10]),
        .I4(sig_cmd_fifo_data_out[13]),
        .I5(sig_cmd_fifo_data_out[8]),
        .O(sig_first_dbeat_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAFCAACCAA0CAACC)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_i_2_n_0),
        .I1(sig_last_dbeat_reg_0),
        .I2(sig_mmap_rst_reg_n),
        .I3(sig_last_dbeat_reg),
        .I4(\sig_dbeat_cntr_reg[0] ),
        .I5(sig_dqual_reg_empty_reg),
        .O(sig_mmap_rst_reg_n_reg_1));
  LUT4 #(
    .INIT(16'h0008)) 
    sig_last_dbeat_i_2
       (.I0(sig_last_dbeat_i_4_n_0),
        .I1(sig_mmap_rst_reg_n),
        .I2(sig_cmd_fifo_data_out[8]),
        .I3(sig_cmd_fifo_data_out[9]),
        .O(sig_last_dbeat_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_last_dbeat_i_4
       (.I0(sig_cmd_fifo_data_out[13]),
        .I1(sig_cmd_fifo_data_out[12]),
        .I2(sig_cmd_fifo_data_out[11]),
        .I3(sig_cmd_fifo_data_out[10]),
        .O(sig_last_dbeat_i_4_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_mmap_rst_reg_n),
        .I2(sig_last_dbeat_reg),
        .O(sig_ld_new_cmd_reg_reg));
  LUT3 #(
    .INIT(8'h1F)) 
    sig_next_calc_error_reg_i_1
       (.I0(sig_last_dbeat_reg),
        .I1(sig_next_cmd_cmplt_reg_reg),
        .I2(sig_mmap_rst_reg_n),
        .O(sig_mmap_rst_reg_n_reg_0));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    sig_next_calc_error_reg_i_2
       (.I0(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ),
        .I1(sig_dqual_reg_empty_reg),
        .I2(sig_next_sequential_reg),
        .I3(sig_next_calc_error_reg_i_5_n_0),
        .I4(sig_dqual_reg_empty),
        .O(sig_last_dbeat_reg));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    sig_next_calc_error_reg_i_4
       (.I0(sig_dqual_reg_empty_reg_0),
        .I1(sig_dqual_reg_empty_reg_1),
        .I2(sig_dqual_reg_empty_reg_2),
        .I3(sig_next_calc_error_reg_i_6_n_0),
        .I4(sig_dqual_reg_full),
        .I5(sig_next_calc_error_reg),
        .O(\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_next_calc_error_reg_i_5
       (.I0(sig_next_calc_error_reg_i_7_n_0),
        .I1(\addr_i_reg_n_0_[2] ),
        .I2(sig_next_calc_error_reg),
        .I3(sig_wdc_status_going_full),
        .O(sig_next_calc_error_reg_i_5_n_0));
  LUT5 #(
    .INIT(32'h0000002F)) 
    sig_next_calc_error_reg_i_6
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(sig_next_calc_error_reg_i_4_0),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .O(sig_next_calc_error_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'hFF8A8A8A8A8A8A8A)) 
    sig_next_calc_error_reg_i_7
       (.I0(sig_wsc2stat_status_valid),
        .I1(sig_next_calc_error_reg_i_5_0),
        .I2(sig_inhibit_rdy_n_1),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(sig_next_calc_error_reg_i_7_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
