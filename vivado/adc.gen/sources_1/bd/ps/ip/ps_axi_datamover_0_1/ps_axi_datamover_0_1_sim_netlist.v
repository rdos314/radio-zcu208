// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Apr 21 22:55:13 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_0_1/ps_axi_datamover_0_1_sim_netlist.v
// Design      : ps_axi_datamover_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_axi_datamover_0_1,axi_datamover,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_datamover,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_axi_datamover_0_1
   (m_axi_mm2s_aclk,
    m_axi_mm2s_aresetn,
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
    m_axis_mm2s_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_MM2S_ACLK CLK" *) (* x_interface_mode = "slave M_AXI_MM2S_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S_ACLK, ASSOCIATED_BUSIF M_AXI_MM2S:M_AXIS_MM2S:M_AXI, ASSOCIATED_RESET m_axi_mm2s_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axi_mm2s_aclk;
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

  wire \<const0> ;
  wire \<const1> ;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]\^m_axi_mm2s_arburst ;
  wire m_axi_mm2s_aresetn;
  wire [6:0]\^m_axi_mm2s_arlen ;
  wire m_axi_mm2s_arready;
  wire [2:0]\^m_axi_mm2s_arsize ;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axis_mm2s_cmdsts_aclk;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_err;
  wire [71:0]s_axis_mm2s_cmd_tdata;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid;
  wire NLW_U0_m_axi_s2mm_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_bready_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_s2mm_sts_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_s2mm_sts_tvalid_UNCONNECTED;
  wire NLW_U0_mm2s_addr_req_posted_UNCONNECTED;
  wire NLW_U0_mm2s_halt_cmplt_UNCONNECTED;
  wire NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED;
  wire NLW_U0_s2mm_addr_req_posted_UNCONNECTED;
  wire NLW_U0_s2mm_err_UNCONNECTED;
  wire NLW_U0_s2mm_halt_cmplt_UNCONNECTED;
  wire NLW_U0_s2mm_ld_nxt_len_UNCONNECTED;
  wire NLW_U0_s2mm_wr_xfer_cmplt_UNCONNECTED;
  wire NLW_U0_s_axis_s2mm_cmd_tready_UNCONNECTED;
  wire NLW_U0_s_axis_s2mm_tready_UNCONNECTED;
  wire [1:1]NLW_U0_m_axi_mm2s_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_arcache_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_arid_UNCONNECTED;
  wire [7:7]NLW_U0_m_axi_mm2s_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_mm2s_arprot_UNCONNECTED;
  wire [1:1]NLW_U0_m_axi_mm2s_arsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_s2mm_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_s2mm_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awcache_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_s2mm_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awuser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_s2mm_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_s2mm_sts_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_s2mm_sts_tkeep_UNCONNECTED;
  wire [31:0]NLW_U0_mm2s_dbg_data_UNCONNECTED;
  wire [31:0]NLW_U0_s2mm_dbg_data_UNCONNECTED;
  wire [7:0]NLW_U0_s2mm_wr_len_UNCONNECTED;

  assign m_axi_mm2s_arburst[1] = \<const0> ;
  assign m_axi_mm2s_arburst[0] = \^m_axi_mm2s_arburst [0];
  assign m_axi_mm2s_arcache[3] = \<const0> ;
  assign m_axi_mm2s_arcache[2] = \<const0> ;
  assign m_axi_mm2s_arcache[1] = \<const1> ;
  assign m_axi_mm2s_arcache[0] = \<const1> ;
  assign m_axi_mm2s_arid[3] = \<const0> ;
  assign m_axi_mm2s_arid[2] = \<const0> ;
  assign m_axi_mm2s_arid[1] = \<const0> ;
  assign m_axi_mm2s_arid[0] = \<const0> ;
  assign m_axi_mm2s_arlen[7] = \<const0> ;
  assign m_axi_mm2s_arlen[6:0] = \^m_axi_mm2s_arlen [6:0];
  assign m_axi_mm2s_arprot[2] = \<const0> ;
  assign m_axi_mm2s_arprot[1] = \<const0> ;
  assign m_axi_mm2s_arprot[0] = \<const0> ;
  assign m_axi_mm2s_arsize[2] = \^m_axi_mm2s_arsize [2];
  assign m_axi_mm2s_arsize[1] = \<const0> ;
  assign m_axi_mm2s_arsize[0] = \^m_axi_mm2s_arsize [0];
  assign m_axi_mm2s_aruser[3] = \<const0> ;
  assign m_axi_mm2s_aruser[2] = \<const0> ;
  assign m_axi_mm2s_aruser[1] = \<const0> ;
  assign m_axi_mm2s_aruser[0] = \<const0> ;
  assign m_axis_mm2s_sts_tkeep[0] = \<const1> ;
  assign m_axis_mm2s_sts_tlast = \<const1> ;
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
  (* C_INCLUDE_MM2S = "1" *) 
  (* C_INCLUDE_MM2S_DRE = "0" *) 
  (* C_INCLUDE_MM2S_STSFIFO = "1" *) 
  (* C_INCLUDE_S2MM = "0" *) 
  (* C_INCLUDE_S2MM_DRE = "0" *) 
  (* C_INCLUDE_S2MM_STSFIFO = "0" *) 
  (* C_MCDMA = "0" *) 
  (* C_MICRO_DMA = "0" *) 
  (* C_MM2S_ADDR_PIPE_DEPTH = "3" *) 
  (* C_MM2S_BTT_USED = "16" *) 
  (* C_MM2S_BURST_SIZE = "128" *) 
  (* C_MM2S_INCLUDE_SF = "1" *) 
  (* C_MM2S_STSCMD_FIFO_DEPTH = "4" *) 
  (* C_MM2S_STSCMD_IS_ASYNC = "0" *) 
  (* C_M_AXIS_MM2S_TDATA_WIDTH = "256" *) 
  (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_ARID = "0" *) 
  (* C_M_AXI_MM2S_DATA_WIDTH = "256" *) 
  (* C_M_AXI_MM2S_ID_WIDTH = "4" *) 
  (* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_S2MM_AWID = "1" *) 
  (* C_M_AXI_S2MM_DATA_WIDTH = "32" *) 
  (* C_M_AXI_S2MM_ID_WIDTH = "4" *) 
  (* C_S2MM_ADDR_PIPE_DEPTH = "3" *) 
  (* C_S2MM_BTT_USED = "16" *) 
  (* C_S2MM_BURST_SIZE = "16" *) 
  (* C_S2MM_INCLUDE_SF = "0" *) 
  (* C_S2MM_STSCMD_FIFO_DEPTH = "4" *) 
  (* C_S2MM_STSCMD_IS_ASYNC = "0" *) 
  (* C_S2MM_SUPPORT_INDET_BTT = "0" *) 
  (* C_S_AXIS_S2MM_TDATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ps_axi_datamover_0_1_axi_datamover U0
       (.m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst({NLW_U0_m_axi_mm2s_arburst_UNCONNECTED[1],\^m_axi_mm2s_arburst }),
        .m_axi_mm2s_arcache(NLW_U0_m_axi_mm2s_arcache_UNCONNECTED[3:0]),
        .m_axi_mm2s_aresetn(m_axi_mm2s_aresetn),
        .m_axi_mm2s_arid(NLW_U0_m_axi_mm2s_arid_UNCONNECTED[3:0]),
        .m_axi_mm2s_arlen({NLW_U0_m_axi_mm2s_arlen_UNCONNECTED[7],\^m_axi_mm2s_arlen }),
        .m_axi_mm2s_arprot(NLW_U0_m_axi_mm2s_arprot_UNCONNECTED[2:0]),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(\^m_axi_mm2s_arsize ),
        .m_axi_mm2s_aruser(NLW_U0_m_axi_mm2s_aruser_UNCONNECTED[3:0]),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axi_s2mm_aclk(1'b0),
        .m_axi_s2mm_aresetn(1'b1),
        .m_axi_s2mm_awaddr(NLW_U0_m_axi_s2mm_awaddr_UNCONNECTED[31:0]),
        .m_axi_s2mm_awburst(NLW_U0_m_axi_s2mm_awburst_UNCONNECTED[1:0]),
        .m_axi_s2mm_awcache(NLW_U0_m_axi_s2mm_awcache_UNCONNECTED[3:0]),
        .m_axi_s2mm_awid(NLW_U0_m_axi_s2mm_awid_UNCONNECTED[3:0]),
        .m_axi_s2mm_awlen(NLW_U0_m_axi_s2mm_awlen_UNCONNECTED[7:0]),
        .m_axi_s2mm_awprot(NLW_U0_m_axi_s2mm_awprot_UNCONNECTED[2:0]),
        .m_axi_s2mm_awready(1'b0),
        .m_axi_s2mm_awsize(NLW_U0_m_axi_s2mm_awsize_UNCONNECTED[2:0]),
        .m_axi_s2mm_awuser(NLW_U0_m_axi_s2mm_awuser_UNCONNECTED[3:0]),
        .m_axi_s2mm_awvalid(NLW_U0_m_axi_s2mm_awvalid_UNCONNECTED),
        .m_axi_s2mm_bready(NLW_U0_m_axi_s2mm_bready_UNCONNECTED),
        .m_axi_s2mm_bresp({1'b0,1'b0}),
        .m_axi_s2mm_bvalid(1'b0),
        .m_axi_s2mm_wdata(NLW_U0_m_axi_s2mm_wdata_UNCONNECTED[31:0]),
        .m_axi_s2mm_wlast(NLW_U0_m_axi_s2mm_wlast_UNCONNECTED),
        .m_axi_s2mm_wready(1'b0),
        .m_axi_s2mm_wstrb(NLW_U0_m_axi_s2mm_wstrb_UNCONNECTED[3:0]),
        .m_axi_s2mm_wvalid(NLW_U0_m_axi_s2mm_wvalid_UNCONNECTED),
        .m_axis_mm2s_cmdsts_aclk(m_axis_mm2s_cmdsts_aclk),
        .m_axis_mm2s_cmdsts_aresetn(1'b0),
        .m_axis_mm2s_sts_tdata(m_axis_mm2s_sts_tdata),
        .m_axis_mm2s_sts_tkeep(NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED[0]),
        .m_axis_mm2s_sts_tlast(NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid(m_axis_mm2s_sts_tvalid),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .m_axis_s2mm_cmdsts_aresetn(1'b1),
        .m_axis_s2mm_cmdsts_awclk(1'b0),
        .m_axis_s2mm_sts_tdata(NLW_U0_m_axis_s2mm_sts_tdata_UNCONNECTED[7:0]),
        .m_axis_s2mm_sts_tkeep(NLW_U0_m_axis_s2mm_sts_tkeep_UNCONNECTED[0]),
        .m_axis_s2mm_sts_tlast(NLW_U0_m_axis_s2mm_sts_tlast_UNCONNECTED),
        .m_axis_s2mm_sts_tready(1'b0),
        .m_axis_s2mm_sts_tvalid(NLW_U0_m_axis_s2mm_sts_tvalid_UNCONNECTED),
        .mm2s_addr_req_posted(NLW_U0_mm2s_addr_req_posted_UNCONNECTED),
        .mm2s_allow_addr_req(1'b1),
        .mm2s_dbg_data(NLW_U0_mm2s_dbg_data_UNCONNECTED[31:0]),
        .mm2s_dbg_sel({1'b0,1'b0,1'b0,1'b0}),
        .mm2s_err(mm2s_err),
        .mm2s_halt(1'b0),
        .mm2s_halt_cmplt(NLW_U0_mm2s_halt_cmplt_UNCONNECTED),
        .mm2s_rd_xfer_cmplt(NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED),
        .s2mm_addr_req_posted(NLW_U0_s2mm_addr_req_posted_UNCONNECTED),
        .s2mm_allow_addr_req(1'b1),
        .s2mm_dbg_data(NLW_U0_s2mm_dbg_data_UNCONNECTED[31:0]),
        .s2mm_dbg_sel({1'b0,1'b0,1'b0,1'b0}),
        .s2mm_err(NLW_U0_s2mm_err_UNCONNECTED),
        .s2mm_halt(1'b0),
        .s2mm_halt_cmplt(NLW_U0_s2mm_halt_cmplt_UNCONNECTED),
        .s2mm_ld_nxt_len(NLW_U0_s2mm_ld_nxt_len_UNCONNECTED),
        .s2mm_wr_len(NLW_U0_s2mm_wr_len_UNCONNECTED[7:0]),
        .s2mm_wr_xfer_cmplt(NLW_U0_s2mm_wr_xfer_cmplt_UNCONNECTED),
        .s_axis_mm2s_cmd_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_mm2s_cmd_tdata[67:32],1'b0,s_axis_mm2s_cmd_tdata[30],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_mm2s_cmd_tdata[23],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_mm2s_cmd_tdata[15:0]}),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),
        .s_axis_s2mm_cmd_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_cmd_tready(NLW_U0_s_axis_s2mm_cmd_tready_UNCONNECTED),
        .s_axis_s2mm_cmd_tvalid(1'b0),
        .s_axis_s2mm_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(1'b0),
        .s_axis_s2mm_tready(NLW_U0_s_axis_s2mm_tready_UNCONNECTED),
        .s_axis_s2mm_tvalid(1'b0));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* C_CMD_WIDTH = "72" *) (* C_ENABLE_CACHE_USER = "0" *) (* C_ENABLE_MM2S_ADV_SIG = "0" *) 
(* C_ENABLE_MM2S_TKEEP = "1" *) (* C_ENABLE_S2MM_ADV_SIG = "0" *) (* C_ENABLE_S2MM_TKEEP = "1" *) 
(* C_ENABLE_SKID_BUF = "11111" *) (* C_FAMILY = "zynquplus" *) (* C_INCLUDE_MM2S = "1" *) 
(* C_INCLUDE_MM2S_DRE = "0" *) (* C_INCLUDE_MM2S_STSFIFO = "1" *) (* C_INCLUDE_S2MM = "0" *) 
(* C_INCLUDE_S2MM_DRE = "0" *) (* C_INCLUDE_S2MM_STSFIFO = "0" *) (* C_MCDMA = "0" *) 
(* C_MICRO_DMA = "0" *) (* C_MM2S_ADDR_PIPE_DEPTH = "3" *) (* C_MM2S_BTT_USED = "16" *) 
(* C_MM2S_BURST_SIZE = "128" *) (* C_MM2S_INCLUDE_SF = "1" *) (* C_MM2S_STSCMD_FIFO_DEPTH = "4" *) 
(* C_MM2S_STSCMD_IS_ASYNC = "0" *) (* C_M_AXIS_MM2S_TDATA_WIDTH = "256" *) (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) 
(* C_M_AXI_MM2S_ARID = "0" *) (* C_M_AXI_MM2S_DATA_WIDTH = "256" *) (* C_M_AXI_MM2S_ID_WIDTH = "4" *) 
(* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) (* C_M_AXI_S2MM_AWID = "1" *) (* C_M_AXI_S2MM_DATA_WIDTH = "32" *) 
(* C_M_AXI_S2MM_ID_WIDTH = "4" *) (* C_S2MM_ADDR_PIPE_DEPTH = "3" *) (* C_S2MM_BTT_USED = "16" *) 
(* C_S2MM_BURST_SIZE = "16" *) (* C_S2MM_INCLUDE_SF = "0" *) (* C_S2MM_STSCMD_FIFO_DEPTH = "4" *) 
(* C_S2MM_STSCMD_IS_ASYNC = "0" *) (* C_S2MM_SUPPORT_INDET_BTT = "0" *) (* C_S_AXIS_S2MM_TDATA_WIDTH = "32" *) 
(* ORIG_REF_NAME = "axi_datamover" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ps_axi_datamover_0_1_axi_datamover
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
  input [255:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
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
  output [3:0]m_axi_s2mm_awid;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output [3:0]m_axi_s2mm_awuser;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [31:0]m_axi_s2mm_wdata;
  output [3:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  input [31:0]s_axis_s2mm_tdata;
  input [3:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tlast;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input [3:0]s2mm_dbg_sel;
  output [31:0]s2mm_dbg_data;

  wire \<const0> ;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]\^m_axi_mm2s_arburst ;
  wire m_axi_mm2s_aresetn;
  wire [6:0]\^m_axi_mm2s_arlen ;
  wire m_axi_mm2s_arready;
  wire [2:0]\^m_axi_mm2s_arsize ;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  (* DONT_TOUCH *) wire m_axis_mm2s_cmdsts_aclk;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  (* DONT_TOUCH *) wire m_axis_s2mm_cmdsts_awclk;
  wire mm2s_addr_req_posted;
  wire mm2s_err;
  wire [71:0]s_axis_mm2s_cmd_tdata;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid;

  assign m_axi_mm2s_arburst[1] = \<const0> ;
  assign m_axi_mm2s_arburst[0] = \^m_axi_mm2s_arburst [0];
  assign m_axi_mm2s_arcache[3] = \<const0> ;
  assign m_axi_mm2s_arcache[2] = \<const0> ;
  assign m_axi_mm2s_arcache[1] = \<const0> ;
  assign m_axi_mm2s_arcache[0] = \<const0> ;
  assign m_axi_mm2s_arid[3] = \<const0> ;
  assign m_axi_mm2s_arid[2] = \<const0> ;
  assign m_axi_mm2s_arid[1] = \<const0> ;
  assign m_axi_mm2s_arid[0] = \<const0> ;
  assign m_axi_mm2s_arlen[7] = \<const0> ;
  assign m_axi_mm2s_arlen[6:0] = \^m_axi_mm2s_arlen [6:0];
  assign m_axi_mm2s_arprot[2] = \<const0> ;
  assign m_axi_mm2s_arprot[1] = \<const0> ;
  assign m_axi_mm2s_arprot[0] = \<const0> ;
  assign m_axi_mm2s_arsize[2] = \^m_axi_mm2s_arsize [2];
  assign m_axi_mm2s_arsize[1] = \<const0> ;
  assign m_axi_mm2s_arsize[0] = \^m_axi_mm2s_arsize [0];
  assign m_axi_mm2s_aruser[3] = \<const0> ;
  assign m_axi_mm2s_aruser[2] = \<const0> ;
  assign m_axi_mm2s_aruser[1] = \<const0> ;
  assign m_axi_mm2s_aruser[0] = \<const0> ;
  assign m_axi_s2mm_awaddr[31] = \<const0> ;
  assign m_axi_s2mm_awaddr[30] = \<const0> ;
  assign m_axi_s2mm_awaddr[29] = \<const0> ;
  assign m_axi_s2mm_awaddr[28] = \<const0> ;
  assign m_axi_s2mm_awaddr[27] = \<const0> ;
  assign m_axi_s2mm_awaddr[26] = \<const0> ;
  assign m_axi_s2mm_awaddr[25] = \<const0> ;
  assign m_axi_s2mm_awaddr[24] = \<const0> ;
  assign m_axi_s2mm_awaddr[23] = \<const0> ;
  assign m_axi_s2mm_awaddr[22] = \<const0> ;
  assign m_axi_s2mm_awaddr[21] = \<const0> ;
  assign m_axi_s2mm_awaddr[20] = \<const0> ;
  assign m_axi_s2mm_awaddr[19] = \<const0> ;
  assign m_axi_s2mm_awaddr[18] = \<const0> ;
  assign m_axi_s2mm_awaddr[17] = \<const0> ;
  assign m_axi_s2mm_awaddr[16] = \<const0> ;
  assign m_axi_s2mm_awaddr[15] = \<const0> ;
  assign m_axi_s2mm_awaddr[14] = \<const0> ;
  assign m_axi_s2mm_awaddr[13] = \<const0> ;
  assign m_axi_s2mm_awaddr[12] = \<const0> ;
  assign m_axi_s2mm_awaddr[11] = \<const0> ;
  assign m_axi_s2mm_awaddr[10] = \<const0> ;
  assign m_axi_s2mm_awaddr[9] = \<const0> ;
  assign m_axi_s2mm_awaddr[8] = \<const0> ;
  assign m_axi_s2mm_awaddr[7] = \<const0> ;
  assign m_axi_s2mm_awaddr[6] = \<const0> ;
  assign m_axi_s2mm_awaddr[5] = \<const0> ;
  assign m_axi_s2mm_awaddr[4] = \<const0> ;
  assign m_axi_s2mm_awaddr[3] = \<const0> ;
  assign m_axi_s2mm_awaddr[2] = \<const0> ;
  assign m_axi_s2mm_awaddr[1] = \<const0> ;
  assign m_axi_s2mm_awaddr[0] = \<const0> ;
  assign m_axi_s2mm_awburst[1] = \<const0> ;
  assign m_axi_s2mm_awburst[0] = \<const0> ;
  assign m_axi_s2mm_awcache[3] = \<const0> ;
  assign m_axi_s2mm_awcache[2] = \<const0> ;
  assign m_axi_s2mm_awcache[1] = \<const0> ;
  assign m_axi_s2mm_awcache[0] = \<const0> ;
  assign m_axi_s2mm_awid[3] = \<const0> ;
  assign m_axi_s2mm_awid[2] = \<const0> ;
  assign m_axi_s2mm_awid[1] = \<const0> ;
  assign m_axi_s2mm_awid[0] = \<const0> ;
  assign m_axi_s2mm_awlen[7] = \<const0> ;
  assign m_axi_s2mm_awlen[6] = \<const0> ;
  assign m_axi_s2mm_awlen[5] = \<const0> ;
  assign m_axi_s2mm_awlen[4] = \<const0> ;
  assign m_axi_s2mm_awlen[3] = \<const0> ;
  assign m_axi_s2mm_awlen[2] = \<const0> ;
  assign m_axi_s2mm_awlen[1] = \<const0> ;
  assign m_axi_s2mm_awlen[0] = \<const0> ;
  assign m_axi_s2mm_awprot[2] = \<const0> ;
  assign m_axi_s2mm_awprot[1] = \<const0> ;
  assign m_axi_s2mm_awprot[0] = \<const0> ;
  assign m_axi_s2mm_awsize[2] = \<const0> ;
  assign m_axi_s2mm_awsize[1] = \<const0> ;
  assign m_axi_s2mm_awsize[0] = \<const0> ;
  assign m_axi_s2mm_awuser[3] = \<const0> ;
  assign m_axi_s2mm_awuser[2] = \<const0> ;
  assign m_axi_s2mm_awuser[1] = \<const0> ;
  assign m_axi_s2mm_awuser[0] = \<const0> ;
  assign m_axi_s2mm_awvalid = \<const0> ;
  assign m_axi_s2mm_bready = \<const0> ;
  assign m_axi_s2mm_wdata[31] = \<const0> ;
  assign m_axi_s2mm_wdata[30] = \<const0> ;
  assign m_axi_s2mm_wdata[29] = \<const0> ;
  assign m_axi_s2mm_wdata[28] = \<const0> ;
  assign m_axi_s2mm_wdata[27] = \<const0> ;
  assign m_axi_s2mm_wdata[26] = \<const0> ;
  assign m_axi_s2mm_wdata[25] = \<const0> ;
  assign m_axi_s2mm_wdata[24] = \<const0> ;
  assign m_axi_s2mm_wdata[23] = \<const0> ;
  assign m_axi_s2mm_wdata[22] = \<const0> ;
  assign m_axi_s2mm_wdata[21] = \<const0> ;
  assign m_axi_s2mm_wdata[20] = \<const0> ;
  assign m_axi_s2mm_wdata[19] = \<const0> ;
  assign m_axi_s2mm_wdata[18] = \<const0> ;
  assign m_axi_s2mm_wdata[17] = \<const0> ;
  assign m_axi_s2mm_wdata[16] = \<const0> ;
  assign m_axi_s2mm_wdata[15] = \<const0> ;
  assign m_axi_s2mm_wdata[14] = \<const0> ;
  assign m_axi_s2mm_wdata[13] = \<const0> ;
  assign m_axi_s2mm_wdata[12] = \<const0> ;
  assign m_axi_s2mm_wdata[11] = \<const0> ;
  assign m_axi_s2mm_wdata[10] = \<const0> ;
  assign m_axi_s2mm_wdata[9] = \<const0> ;
  assign m_axi_s2mm_wdata[8] = \<const0> ;
  assign m_axi_s2mm_wdata[7] = \<const0> ;
  assign m_axi_s2mm_wdata[6] = \<const0> ;
  assign m_axi_s2mm_wdata[5] = \<const0> ;
  assign m_axi_s2mm_wdata[4] = \<const0> ;
  assign m_axi_s2mm_wdata[3] = \<const0> ;
  assign m_axi_s2mm_wdata[2] = \<const0> ;
  assign m_axi_s2mm_wdata[1] = \<const0> ;
  assign m_axi_s2mm_wdata[0] = \<const0> ;
  assign m_axi_s2mm_wlast = \<const0> ;
  assign m_axi_s2mm_wstrb[3] = \<const0> ;
  assign m_axi_s2mm_wstrb[2] = \<const0> ;
  assign m_axi_s2mm_wstrb[1] = \<const0> ;
  assign m_axi_s2mm_wstrb[0] = \<const0> ;
  assign m_axi_s2mm_wvalid = \<const0> ;
  assign m_axis_mm2s_sts_tkeep[0] = \<const0> ;
  assign m_axis_mm2s_sts_tlast = \<const0> ;
  assign m_axis_s2mm_sts_tdata[7] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[6] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[5] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[4] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[3] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[2] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[1] = \<const0> ;
  assign m_axis_s2mm_sts_tdata[0] = \<const0> ;
  assign m_axis_s2mm_sts_tkeep[0] = \<const0> ;
  assign m_axis_s2mm_sts_tlast = \<const0> ;
  assign m_axis_s2mm_sts_tvalid = \<const0> ;
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
  assign mm2s_halt_cmplt = \<const0> ;
  assign mm2s_rd_xfer_cmplt = \<const0> ;
  assign s2mm_addr_req_posted = \<const0> ;
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
  assign s2mm_err = \<const0> ;
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
  assign s_axis_s2mm_cmd_tready = \<const0> ;
  assign s_axis_s2mm_tready = \<const0> ;
  ps_axi_datamover_0_1_axi_datamover_mm2s_full_wrap \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER 
       (.m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(\^m_axi_mm2s_arburst ),
        .m_axi_mm2s_aresetn(m_axi_mm2s_aresetn),
        .m_axi_mm2s_arlen(\^m_axi_mm2s_arlen ),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize({\^m_axi_mm2s_arsize [2],\^m_axi_mm2s_arsize [0]}),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axis_mm2s_sts_tdata(m_axis_mm2s_sts_tdata),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid(m_axis_mm2s_sts_tvalid),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_addr_req_posted(mm2s_addr_req_posted),
        .s_axis_mm2s_cmd_tdata({s_axis_mm2s_cmd_tdata[67:32],s_axis_mm2s_cmd_tdata[30],s_axis_mm2s_cmd_tdata[23],s_axis_mm2s_cmd_tdata[15:0]}),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),
        .sig_calc_error_reg_reg(mm2s_err));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_addr_cntl" *) 
module ps_axi_datamover_0_1_axi_datamover_addr_cntl
   (mm2s_addr_req_posted,
    out,
    FIFO_Full_reg,
    sig_init_reg2,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    \USE_SRL_FIFO.sig_wr_fifo ,
    sig_inhibit_rdy_n,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    SR,
    m_axi_mm2s_aclk,
    sig_mmap_reset_reg,
    sig_sf_allow_addr_req,
    sig_mmap_rst_reg_n,
    m_axi_mm2s_arready,
    sig_mstr2addr_cmd_valid,
    in);
  output mm2s_addr_req_posted;
  output out;
  output FIFO_Full_reg;
  output sig_init_reg2;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output \USE_SRL_FIFO.sig_wr_fifo ;
  output sig_inhibit_rdy_n;
  output [31:0]m_axi_mm2s_araddr;
  output [6:0]m_axi_mm2s_arlen;
  output [1:0]m_axi_mm2s_arsize;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_mmap_reset_reg;
  input sig_sf_allow_addr_req;
  input sig_mmap_rst_reg_n;
  input m_axi_mm2s_arready;
  input sig_mstr2addr_cmd_valid;
  input [40:0]in;

  wire FIFO_Full_reg;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6 ;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [40:0]in;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [6:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [1:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire sig_addr2rsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire [50:4]sig_aq_fifo_data_out;
  wire sig_inhibit_rdy_n;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire \sig_next_addr_reg[31]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;
  wire sig_sf_allow_addr_req;

  assign mm2s_addr_req_posted = sig_posted_to_axi_2;
  assign out = sig_posted_to_axi;
  ps_axi_datamover_0_1_axi_datamover_fifo__parameterized1 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out({sig_aq_fifo_data_out[50],sig_aq_fifo_data_out[47:46],sig_aq_fifo_data_out[44],sig_aq_fifo_data_out[42:4]}),
        .sel(\USE_SRL_FIFO.sig_wr_fifo ),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_addr_reg_empty_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ),
        .sig_calc_error_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6 ),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_reg2(sig_init_reg2),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(sig_addr_reg_full),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6 ),
        .Q(m_axi_mm2s_arvalid),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[50]),
        .Q(sig_addr2rsc_calc_error),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(sig_addr2rsc_calc_error),
        .I1(sig_addr_reg_full),
        .I2(m_axi_mm2s_arready),
        .I3(sig_mmap_rst_reg_n),
        .O(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[4]),
        .Q(m_axi_mm2s_araddr[0]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[14]),
        .Q(m_axi_mm2s_araddr[10]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[15]),
        .Q(m_axi_mm2s_araddr[11]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[16]),
        .Q(m_axi_mm2s_araddr[12]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[17]),
        .Q(m_axi_mm2s_araddr[13]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[18]),
        .Q(m_axi_mm2s_araddr[14]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[19]),
        .Q(m_axi_mm2s_araddr[15]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[20]),
        .Q(m_axi_mm2s_araddr[16]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[21]),
        .Q(m_axi_mm2s_araddr[17]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[22]),
        .Q(m_axi_mm2s_araddr[18]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[23]),
        .Q(m_axi_mm2s_araddr[19]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[5]),
        .Q(m_axi_mm2s_araddr[1]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[24]),
        .Q(m_axi_mm2s_araddr[20]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[25]),
        .Q(m_axi_mm2s_araddr[21]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[26]),
        .Q(m_axi_mm2s_araddr[22]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[27]),
        .Q(m_axi_mm2s_araddr[23]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[28]),
        .Q(m_axi_mm2s_araddr[24]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[29]),
        .Q(m_axi_mm2s_araddr[25]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[30]),
        .Q(m_axi_mm2s_araddr[26]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[31]),
        .Q(m_axi_mm2s_araddr[27]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[32]),
        .Q(m_axi_mm2s_araddr[28]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[33]),
        .Q(m_axi_mm2s_araddr[29]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[6]),
        .Q(m_axi_mm2s_araddr[2]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[34]),
        .Q(m_axi_mm2s_araddr[30]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[35]),
        .Q(m_axi_mm2s_araddr[31]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[7]),
        .Q(m_axi_mm2s_araddr[3]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[8]),
        .Q(m_axi_mm2s_araddr[4]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[9]),
        .Q(m_axi_mm2s_araddr[5]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[10]),
        .Q(m_axi_mm2s_araddr[6]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[11]),
        .Q(m_axi_mm2s_araddr[7]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[12]),
        .Q(m_axi_mm2s_araddr[8]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[13]),
        .Q(m_axi_mm2s_araddr[9]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[47]),
        .Q(m_axi_mm2s_arburst),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[36]),
        .Q(m_axi_mm2s_arlen[0]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[37]),
        .Q(m_axi_mm2s_arlen[1]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[38]),
        .Q(m_axi_mm2s_arlen[2]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[39]),
        .Q(m_axi_mm2s_arlen[3]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[40]),
        .Q(m_axi_mm2s_arlen[4]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[41]),
        .Q(m_axi_mm2s_arlen[5]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[42]),
        .Q(m_axi_mm2s_arlen[6]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[44]),
        .Q(m_axi_mm2s_arsize[0]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_aq_fifo_data_out[46]),
        .Q(m_axi_mm2s_arsize[1]),
        .R(\sig_next_addr_reg[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ),
        .Q(sig_posted_to_axi_2),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ),
        .Q(sig_posted_to_axi),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_cmd_status" *) 
module ps_axi_datamover_0_1_axi_datamover_cmd_status
   (FIFO_Full_reg,
    SR,
    sig_inhibit_rdy_n,
    Q,
    s_axis_mm2s_cmd_tready,
    m_axis_mm2s_sts_tvalid,
    out,
    m_axis_mm2s_sts_tdata,
    SS,
    m_axi_mm2s_aclk,
    sig_rsc2stat_status_valid,
    sig_mmap_rst_reg_n,
    FIFO_Full_reg_0,
    s_axis_mm2s_cmd_tvalid,
    sig_calc_error_pushed,
    sig_input_reg_empty,
    sig_sm_halt_reg,
    m_axis_mm2s_sts_tready,
    sig_cmd_stat_rst_int_reg_n,
    s_axis_mm2s_cmd_tdata,
    in);
  output FIFO_Full_reg;
  output [0:0]SR;
  output sig_inhibit_rdy_n;
  output [0:0]Q;
  output s_axis_mm2s_cmd_tready;
  output m_axis_mm2s_sts_tvalid;
  output [53:0]out;
  output [7:0]m_axis_mm2s_sts_tdata;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_rsc2stat_status_valid;
  input sig_mmap_rst_reg_n;
  input FIFO_Full_reg_0;
  input s_axis_mm2s_cmd_tvalid;
  input sig_calc_error_pushed;
  input sig_input_reg_empty;
  input sig_sm_halt_reg;
  input m_axis_mm2s_sts_tready;
  input sig_cmd_stat_rst_int_reg_n;
  input [53:0]s_axis_mm2s_cmd_tdata;
  input [0:7]in;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire I_CMD_FIFO_n_2;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [0:7]in;
  wire m_axi_mm2s_aclk;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid;
  wire [53:0]out;
  wire [53:0]s_axis_mm2s_cmd_tdata;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid;
  wire sig_calc_error_pushed;
  wire sig_cmd_stat_rst_int_reg_n;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_input_reg_empty;
  wire sig_mmap_rst_reg_n;
  wire sig_rsc2stat_status_valid;
  wire sig_sm_halt_reg;

  ps_axi_datamover_0_1_axi_datamover_fifo__parameterized0 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .SR(SR),
        .SS(SS),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_sts_tdata(m_axis_mm2s_sts_tdata),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid(m_axis_mm2s_sts_tvalid),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(I_CMD_FIFO_n_2),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  ps_axi_datamover_0_1_axi_datamover_fifo I_CMD_FIFO
       (.FIFO_Full_reg(FIFO_Full_reg_0),
        .Q(Q),
        .SS(SS),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),
        .sig_calc_error_pushed(sig_calc_error_pushed),
        .sig_cmd_stat_rst_int_reg_n(sig_cmd_stat_rst_int_reg_n),
        .sig_init_done(sig_init_done),
        .sig_init_reg_reg_0(I_CMD_FIFO_n_2),
        .sig_input_reg_empty(sig_input_reg_empty),
        .sig_sm_halt_reg(sig_sm_halt_reg));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_0_1_axi_datamover_fifo
   (Q,
    s_axis_mm2s_cmd_tready,
    sig_init_reg_reg_0,
    out,
    SS,
    m_axi_mm2s_aclk,
    FIFO_Full_reg,
    s_axis_mm2s_cmd_tvalid,
    sig_calc_error_pushed,
    sig_input_reg_empty,
    sig_sm_halt_reg,
    sig_cmd_stat_rst_int_reg_n,
    sig_init_done,
    s_axis_mm2s_cmd_tdata);
  output [0:0]Q;
  output s_axis_mm2s_cmd_tready;
  output sig_init_reg_reg_0;
  output [53:0]out;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input FIFO_Full_reg;
  input s_axis_mm2s_cmd_tvalid;
  input sig_calc_error_pushed;
  input sig_input_reg_empty;
  input sig_sm_halt_reg;
  input sig_cmd_stat_rst_int_reg_n;
  input sig_init_done;
  input [53:0]s_axis_mm2s_cmd_tdata;

  wire FIFO_Full_reg;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire m_axi_mm2s_aclk;
  wire [53:0]out;
  wire [53:0]s_axis_mm2s_cmd_tdata;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid;
  wire sig_calc_error_pushed;
  wire sig_cmd_stat_rst_int_reg_n;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_i_1__3_n_0;
  wire sig_init_reg_reg_0;
  wire sig_input_reg_empty;
  wire sig_sm_halt_reg;

  ps_axi_datamover_0_1_srl_fifo \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .Q(Q),
        .SS(SS),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),
        .sig_calc_error_pushed(sig_calc_error_pushed),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_input_reg_empty(sig_input_reg_empty),
        .sig_sm_halt_reg(sig_sm_halt_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done_0),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__2
       (.I0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .I1(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ),
        .I2(sig_cmd_stat_rst_int_reg_n),
        .I3(sig_init_done),
        .O(sig_init_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__3
       (.I0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .I1(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ),
        .I2(sig_cmd_stat_rst_int_reg_n),
        .I3(sig_init_done_0),
        .O(sig_init_done_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1__3_n_0),
        .Q(sig_init_done_0),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .Q(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg2 ),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(SS),
        .Q(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_reg ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_0_1_axi_datamover_fifo__parameterized0
   (FIFO_Full_reg,
    sig_init_done,
    SR,
    sig_inhibit_rdy_n_reg_0,
    m_axis_mm2s_sts_tvalid,
    m_axis_mm2s_sts_tdata,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg_0,
    sig_rsc2stat_status_valid,
    sig_mmap_rst_reg_n,
    m_axis_mm2s_sts_tready,
    in);
  output FIFO_Full_reg;
  output sig_init_done;
  output [0:0]SR;
  output sig_inhibit_rdy_n_reg_0;
  output m_axis_mm2s_sts_tvalid;
  output [7:0]m_axis_mm2s_sts_tdata;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_mmap_rst_reg_n;
  input m_axis_mm2s_sts_tready;
  input [0:7]in;

  wire FIFO_Full_reg;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [0:7]in;
  wire m_axi_mm2s_aclk;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_mmap_rst_reg_n;
  wire sig_rsc2stat_status_valid;

  ps_axi_datamover_0_1_srl_fifo__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .SR(SR),
        .SS(SS),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_sts_tdata(m_axis_mm2s_sts_tdata),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid(m_axis_mm2s_sts_tvalid),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_rd_sts_okay_reg_reg(sig_inhibit_rdy_n_reg_0),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_0_1_axi_datamover_fifo__parameterized0_0
   (FIFO_Full_reg,
    sig_init_done,
    sig_inhibit_rdy_n_reg_0,
    Q,
    FIFO_Full_reg_0,
    SS,
    m_axi_mm2s_aclk,
    sig_init_done_reg_0,
    sig_mstr2sf_cmd_valid,
    \OMIT_UNPACKING.lsig_ld_cmd );
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_inhibit_rdy_n_reg_0;
  output [0:0]Q;
  output FIFO_Full_reg_0;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg_0;
  input sig_mstr2sf_cmd_valid;
  input \OMIT_UNPACKING.lsig_ld_cmd ;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire m_axi_mm2s_aclk;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_mstr2sf_cmd_valid;

  ps_axi_datamover_0_1_srl_fifo__parameterized0_1 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .FIFO_Full_reg_1(FIFO_Full_reg_0),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(Q),
        .SS(SS),
        .\addr_i_reg[1]_0 (sig_inhibit_rdy_n_reg_0),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_0_1_axi_datamover_fifo__parameterized1
   (FIFO_Full_reg,
    sig_init_reg2,
    sig_addr_reg_empty_reg,
    sel,
    sig_inhibit_rdy_n_reg_0,
    sig_push_addr_reg1_out,
    sig_calc_error_reg_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_mmap_reset_reg,
    sig_addr_reg_empty,
    sig_sf_allow_addr_req,
    sig_mmap_rst_reg_n,
    sig_mstr2addr_cmd_valid,
    in);
  output FIFO_Full_reg;
  output sig_init_reg2;
  output sig_addr_reg_empty_reg;
  output sel;
  output sig_inhibit_rdy_n_reg_0;
  output sig_push_addr_reg1_out;
  output sig_calc_error_reg_reg;
  output [42:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_mmap_reset_reg;
  input sig_addr_reg_empty;
  input sig_sf_allow_addr_req;
  input sig_mmap_rst_reg_n;
  input sig_mstr2addr_cmd_valid;
  input [40:0]in;

  wire FIFO_Full_reg;
  wire [0:0]SR;
  wire [40:0]in;
  wire m_axi_mm2s_aclk;
  wire [42:0]out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_empty_reg;
  wire sig_calc_error_reg_reg;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_i_1__1_n_0;
  wire sig_init_reg2;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;
  wire sig_sf_allow_addr_req;

  ps_axi_datamover_0_1_srl_fifo__parameterized1 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .FIFO_Full_reg_1(sel),
        .SR(SR),
        .\addr_i_reg[1]_0 (sig_inhibit_rdy_n_reg_0),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_init_reg2),
        .I2(sig_mmap_rst_reg_n),
        .I3(sig_init_done),
        .O(sig_init_done_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1__1_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_mmap_reset_reg),
        .Q(sig_init_reg2),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module ps_axi_datamover_0_1_axi_datamover_fifo__parameterized2
   (FIFO_Full_reg,
    sig_init_done,
    sig_push_dqual_reg,
    sig_inhibit_rdy_n_reg_0,
    m_axi_mm2s_rlast_0,
    m_axi_mm2s_rvalid_0,
    \sig_addr_posted_cntr_reg[2] ,
    sig_first_dbeat_reg,
    D,
    out,
    sel,
    E,
    sig_mmap_rst_reg_n_reg,
    sig_mmap_rst_reg_n_reg_0,
    SR,
    m_axi_mm2s_aclk,
    sig_init_done_reg_0,
    sig_mstr2data_cmd_valid,
    m_axi_mm2s_rlast,
    sig_mmap_rst_reg_n,
    sig_addr_posted_cntr,
    sig_first_dbeat_reg_0,
    sig_first_dbeat,
    Q,
    sig_dqual_reg_empty,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    \sig_dbeat_cntr_reg[0] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_ld_new_cmd_reg,
    sig_inhibit_rdy_n_0,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    sig_next_calc_error_reg,
    m_axi_mm2s_rvalid,
    sig_dqual_reg_full,
    \sig_dbeat_cntr_reg[0]_0 ,
    full,
    sig_last_dbeat_reg,
    sig_next_calc_error_reg_reg);
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_push_dqual_reg;
  output sig_inhibit_rdy_n_reg_0;
  output [0:0]m_axi_mm2s_rlast_0;
  output m_axi_mm2s_rvalid_0;
  output \sig_addr_posted_cntr_reg[2] ;
  output sig_first_dbeat_reg;
  output [7:0]D;
  output [71:0]out;
  output sel;
  output [0:0]E;
  output sig_mmap_rst_reg_n_reg;
  output sig_mmap_rst_reg_n_reg_0;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg_0;
  input sig_mstr2data_cmd_valid;
  input m_axi_mm2s_rlast;
  input sig_mmap_rst_reg_n;
  input [2:0]sig_addr_posted_cntr;
  input sig_first_dbeat_reg_0;
  input sig_first_dbeat;
  input [7:0]Q;
  input sig_dqual_reg_empty;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input \sig_dbeat_cntr_reg[0] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_ld_new_cmd_reg;
  input sig_inhibit_rdy_n_0;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_next_calc_error_reg;
  input m_axi_mm2s_rvalid;
  input sig_dqual_reg_full;
  input \sig_dbeat_cntr_reg[0]_0 ;
  input full;
  input sig_last_dbeat_reg;
  input [78:0]sig_next_calc_error_reg_reg;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire full;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire [0:0]m_axi_mm2s_rlast_0;
  wire m_axi_mm2s_rvalid;
  wire m_axi_mm2s_rvalid_0;
  wire [71:0]out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[0]_0 ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n_0;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mmap_rst_reg_n_reg;
  wire sig_mmap_rst_reg_n_reg_0;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire [78:0]sig_next_calc_error_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_push_dqual_reg;
  wire sig_rsc2stat_status_valid;

  ps_axi_datamover_0_1_srl_fifo__parameterized2 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .FIFO_Full_reg_1(sel),
        .Q(Q),
        .SR(SR),
        .\addr_i_reg[1]_0 (sig_inhibit_rdy_n_reg_0),
        .full(full),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rlast_0(m_axi_mm2s_rlast_0),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axi_mm2s_rvalid_0(m_axi_mm2s_rvalid_0),
        .out(out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[2] (\sig_addr_posted_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr_reg[0] ),
        .\sig_dbeat_cntr_reg[0]_0 (\sig_dbeat_cntr_reg[0]_0 ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat(sig_first_dbeat),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_inhibit_rdy_n_0(sig_inhibit_rdy_n_0),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mmap_rst_reg_n_reg(sig_mmap_rst_reg_n_reg),
        .sig_mmap_rst_reg_n_reg_0(sig_mmap_rst_reg_n_reg_0),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_next_sequential_reg_reg(sig_push_dqual_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_mm2s_full_wrap" *) 
module ps_axi_datamover_0_1_axi_datamover_mm2s_full_wrap
   (sig_calc_error_reg_reg,
    mm2s_addr_req_posted,
    m_axis_mm2s_sts_tdata,
    m_axis_mm2s_tvalid,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tlast,
    s_axis_mm2s_cmd_tready,
    m_axis_mm2s_sts_tvalid,
    m_axi_mm2s_rready,
    m_axi_mm2s_rlast,
    m_axi_mm2s_arready,
    s_axis_mm2s_cmd_tdata,
    m_axi_mm2s_aclk,
    m_axi_mm2s_rdata,
    m_axi_mm2s_aresetn,
    s_axis_mm2s_cmd_tvalid,
    m_axis_mm2s_sts_tready,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rresp,
    m_axis_mm2s_tready);
  output sig_calc_error_reg_reg;
  output mm2s_addr_req_posted;
  output [7:0]m_axis_mm2s_sts_tdata;
  output m_axis_mm2s_tvalid;
  output [31:0]m_axi_mm2s_araddr;
  output [6:0]m_axi_mm2s_arlen;
  output [1:0]m_axi_mm2s_arsize;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tlast;
  output s_axis_mm2s_cmd_tready;
  output m_axis_mm2s_sts_tvalid;
  output m_axi_mm2s_rready;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_arready;
  input [53:0]s_axis_mm2s_cmd_tdata;
  input m_axi_mm2s_aclk;
  input [255:0]m_axi_mm2s_rdata;
  input m_axi_mm2s_aresetn;
  input s_axis_mm2s_cmd_tvalid;
  input m_axis_mm2s_sts_tready;
  input m_axi_mm2s_rvalid;
  input [1:0]m_axi_mm2s_rresp;
  input m_axis_mm2s_tready;

  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_289 ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_293 ;
  wire \GEN_INCLUDE_MM2S_SF.I_RD_SF_n_296 ;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n ;
  wire I_ADDR_CNTL_n_2;
  wire I_CMD_STATUS_n_0;
  wire I_CMD_STATUS_n_1;
  wire I_CMD_STATUS_n_3;
  wire I_MSTR_PCC_n_120;
  wire I_MSTR_PCC_n_121;
  wire I_MSTR_PCC_n_48;
  wire I_RD_DATA_CNTL_n_0;
  wire I_RD_DATA_CNTL_n_2;
  wire \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_done ;
  wire \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire m_axi_mm2s_aresetn;
  wire [6:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [1:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [255:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_addr_req_posted;
  wire p_0_in5_in;
  wire [53:0]s_axis_mm2s_cmd_tdata;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid;
  wire sig_addr2data_addr_posted;
  wire sig_calc_error_pushed;
  wire sig_calc_error_reg_reg;
  wire [67:0]sig_cmd2mstr_command;
  wire sig_cmd_stat_rst_int;
  wire sig_cmd_stat_rst_int_reg_n;
  wire [3:0]sig_coelsc_tag_reg;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_valid;
  wire sig_data2sf_cmd_cmplt;
  wire sig_data_fifo_full;
  wire sig_good_sin_strm_dbeat;
  wire sig_input_reg_empty;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_mmap_reset_reg;
  wire sig_mmap_rst;
  wire sig_mmap_rst_reg_n;
  wire [31:6]sig_mstr2addr_addr;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_cmplt;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_eof;
  wire [31:0]sig_mstr2data_last_strb;
  wire [6:0]sig_mstr2data_len;
  wire [4:1]sig_mstr2data_saddr_lsb;
  wire sig_mstr2data_sequential;
  wire [31:0]sig_mstr2data_strt_strb;
  wire sig_mstr2sf_cmd_valid;
  wire sig_mstr2sf_dre_src_align;
  wire sig_mstr2sf_strt_offset;
  wire [3:0]sig_mstr2sf_tag;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_okay_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rdc2sf_wlast;
  wire [31:0]sig_rdc2sf_wstrb;
  wire sig_rsc2data_ready;
  wire [7:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire [255:0]sig_sf2dre_wdata;
  wire sig_sf2dre_wlast;
  wire [31:0]sig_sf2dre_wstrb;
  wire sig_sf_allow_addr_req;
  wire sig_skid2dre_wready;
  wire sig_sm_halt_reg;
  wire sig_stream_rst;
  wire sig_stream_rst_reg_n;

  ps_axi_datamover_0_1_axi_datamover_skid_buf \ENABLE_AXIS_SKID.I_MM2S_SKID_BUF 
       (.SR(sig_stream_rst),
        .dout({sig_sf2dre_wstrb,sig_sf2dre_wdata}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .out(p_0_in5_in),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_m_valid_out_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_296 ),
        .sig_s_ready_out_reg_0(sig_skid2dre_wready),
        .sig_sf2dre_wlast(sig_sf2dre_wlast),
        .sig_stream_rst_reg_n(sig_stream_rst_reg_n));
  ps_axi_datamover_0_1_axi_datamover_rd_sf \GEN_INCLUDE_MM2S_SF.I_RD_SF 
       (.FIFO_Full_reg(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_289 ),
        .FIFO_Full_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_293 ),
        .\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 (\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_296 ),
        .\OMIT_UNPACKING.lsig_cmd_loaded_reg_1 (sig_skid2dre_wready),
        .SS(sig_mmap_rst),
        .din({sig_data2sf_cmd_cmplt,sig_rdc2sf_wlast,sig_rdc2sf_wstrb,m_axi_mm2s_rdata}),
        .dout({sig_sf2dre_wstrb,sig_sf2dre_wdata}),
        .full(sig_data_fifo_full),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(mm2s_addr_req_posted),
        .sig_good_sin_strm_dbeat(sig_good_sin_strm_dbeat),
        .sig_inhibit_rdy_n(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_MSTR_PCC_n_120),
        .sig_last_reg_out_reg(p_0_in5_in),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid),
        .sig_sf2dre_wlast(sig_sf2dre_wlast),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req),
        .\sig_token_cntr_reg[1]_0 (I_RD_DATA_CNTL_n_2));
  ps_axi_datamover_0_1_axi_datamover_addr_cntl I_ADDR_CNTL
       (.FIFO_Full_reg(I_ADDR_CNTL_n_2),
        .SR(sig_mmap_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_calc_error_reg_reg,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2sf_strt_offset,sig_mstr2data_saddr_lsb,sig_mstr2sf_dre_src_align}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
        .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .mm2s_addr_req_posted(mm2s_addr_req_posted),
        .out(sig_addr2data_addr_posted),
        .sig_inhibit_rdy_n(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_reg2(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_sf_allow_addr_req(sig_sf_allow_addr_req));
  ps_axi_datamover_0_1_axi_datamover_cmd_status I_CMD_STATUS
       (.FIFO_Full_reg(I_CMD_STATUS_n_0),
        .FIFO_Full_reg_0(I_MSTR_PCC_n_48),
        .Q(I_CMD_STATUS_n_3),
        .SR(I_CMD_STATUS_n_1),
        .SS(sig_cmd_stat_rst_int),
        .in({sig_rsc2stat_status[7],sig_rsc2stat_status[6],sig_rsc2stat_status[5],sig_rsc2stat_status[4],sig_rsc2stat_status[3],sig_rsc2stat_status[2],sig_rsc2stat_status[1],sig_rsc2stat_status[0]}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_sts_tdata(m_axis_mm2s_sts_tdata),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid(m_axis_mm2s_sts_tvalid),
        .out({sig_cmd2mstr_command[67:32],sig_cmd2mstr_command[30],sig_cmd2mstr_command[23],sig_cmd2mstr_command[15:0]}),
        .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),
        .sig_calc_error_pushed(sig_calc_error_pushed),
        .sig_cmd_stat_rst_int_reg_n(sig_cmd_stat_rst_int_reg_n),
        .sig_inhibit_rdy_n(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n ),
        .sig_input_reg_empty(sig_input_reg_empty),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_sm_halt_reg(sig_sm_halt_reg));
  ps_axi_datamover_0_1_axi_datamover_pcc I_MSTR_PCC
       (.Q(I_CMD_STATUS_n_3),
        .SR(sig_mmap_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .\USE_SRL_FIFO.sig_wr_fifo_0 (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .in({sig_calc_error_reg_reg,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2sf_strt_offset,sig_mstr2data_saddr_lsb,sig_mstr2sf_dre_src_align}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out({sig_cmd2mstr_command[67:32],sig_cmd2mstr_command[30],sig_cmd2mstr_command[23],sig_cmd2mstr_command[15:0]}),
        .sig_calc_error_pushed(sig_calc_error_pushed),
        .sig_calc_error_pushed_reg_0(I_MSTR_PCC_n_48),
        .sig_calc_error_reg_reg_0({sig_mstr2data_cmd_cmplt,sig_mstr2data_eof,sig_mstr2data_last_strb,sig_mstr2data_strt_strb,sig_mstr2sf_tag}),
        .sig_cmd2addr_valid_reg_0(I_ADDR_CNTL_n_2),
        .sig_cmd2data_valid_reg_0(I_RD_DATA_CNTL_n_0),
        .sig_cmd2dre_valid_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_289 ),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_1(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_2(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_done ),
        .sig_init_done_3(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_reg2(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO/sig_init_reg2 ),
        .sig_input_reg_empty(sig_input_reg_empty),
        .sig_ld_xfer_reg_tmp_reg_0(\GEN_INCLUDE_MM2S_SF.I_RD_SF_n_293 ),
        .sig_mmap_reset_reg(sig_mmap_reset_reg),
        .sig_mmap_reset_reg_reg_0(I_MSTR_PCC_n_120),
        .sig_mmap_reset_reg_reg_1(I_MSTR_PCC_n_121),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_mstr2data_sequential(sig_mstr2data_sequential),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid),
        .sig_sm_halt_reg(sig_sm_halt_reg));
  ps_axi_datamover_0_1_axi_datamover_rddata_cntl I_RD_DATA_CNTL
       (.FIFO_Full_reg(I_RD_DATA_CNTL_n_0),
        .Q(sig_coelsc_tag_reg),
        .SR(sig_mmap_rst),
        .\USE_SRL_FIFO.sig_wr_fifo (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.sig_wr_fifo ),
        .din({sig_data2sf_cmd_cmplt,sig_rdc2sf_wlast,sig_rdc2sf_wstrb}),
        .full(sig_data_fifo_full),
        .in(sig_rsc2stat_status[6:4]),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .out(sig_addr2data_addr_posted),
        .sig_data2rsc_decerr(sig_data2rsc_decerr),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .sig_dqual_reg_empty_reg_0(I_CMD_STATUS_n_0),
        .sig_good_sin_strm_dbeat(sig_good_sin_strm_dbeat),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_MSTR_PCC_n_121),
        .sig_last_mmap_dbeat_reg_reg_0(I_RD_DATA_CNTL_n_2),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg_reg_0({sig_calc_error_reg_reg,sig_mstr2data_cmd_cmplt,sig_mstr2data_sequential,sig_mstr2data_eof,sig_mstr2data_last_strb,sig_mstr2data_strt_strb,sig_mstr2data_len,sig_mstr2sf_tag}),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_okay_reg0(sig_rd_sts_okay_reg0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  ps_axi_datamover_0_1_axi_datamover_rd_status_cntl I_RD_STATUS_CNTLR
       (.D(sig_coelsc_tag_reg),
        .SR(I_CMD_STATUS_n_1),
        .in({sig_rsc2stat_status[7],sig_rsc2stat_status[6],sig_rsc2stat_status[5],sig_rsc2stat_status[4],sig_rsc2stat_status[3],sig_rsc2stat_status[2],sig_rsc2stat_status[1],sig_rsc2stat_status[0]}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_data2rsc_decerr(sig_data2rsc_decerr),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_okay_reg0(sig_rd_sts_okay_reg0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  ps_axi_datamover_0_1_axi_datamover_reset I_RESET
       (.SR(sig_mmap_rst),
        .SS(sig_cmd_stat_rst_int),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_aresetn(m_axi_mm2s_aresetn),
        .sig_cmd_stat_rst_int_reg_n(sig_cmd_stat_rst_int_reg_n),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_stream_rst_reg_n(sig_stream_rst_reg_n),
        .sig_stream_rst_reg_n_reg_0(sig_stream_rst));
endmodule

(* ORIG_REF_NAME = "axi_datamover_pcc" *) 
module ps_axi_datamover_0_1_axi_datamover_pcc
   (sig_mmap_reset_reg,
    sig_sm_halt_reg,
    sig_input_reg_empty,
    in,
    sig_calc_error_pushed,
    sig_mstr2sf_cmd_valid,
    sig_mstr2data_cmd_valid,
    sig_mstr2addr_cmd_valid,
    sig_calc_error_pushed_reg_0,
    sig_mstr2data_sequential,
    sig_calc_error_reg_reg_0,
    sig_mmap_reset_reg_reg_0,
    sig_mmap_reset_reg_reg_1,
    m_axi_mm2s_aclk,
    out,
    SR,
    Q,
    \USE_SRL_FIFO.sig_wr_fifo ,
    \USE_SRL_FIFO.sig_wr_fifo_0 ,
    sig_ld_xfer_reg_tmp_reg_0,
    sig_inhibit_rdy_n,
    sig_cmd2data_valid_reg_0,
    sig_inhibit_rdy_n_1,
    sig_cmd2dre_valid_reg_0,
    sig_inhibit_rdy_n_2,
    sig_cmd2addr_valid_reg_0,
    sig_init_reg2,
    sig_mmap_rst_reg_n,
    sig_init_done,
    sig_init_done_3);
  output sig_mmap_reset_reg;
  output sig_sm_halt_reg;
  output sig_input_reg_empty;
  output [40:0]in;
  output sig_calc_error_pushed;
  output sig_mstr2sf_cmd_valid;
  output sig_mstr2data_cmd_valid;
  output sig_mstr2addr_cmd_valid;
  output sig_calc_error_pushed_reg_0;
  output sig_mstr2data_sequential;
  output [69:0]sig_calc_error_reg_reg_0;
  output sig_mmap_reset_reg_reg_0;
  output sig_mmap_reset_reg_reg_1;
  input m_axi_mm2s_aclk;
  input [53:0]out;
  input [0:0]SR;
  input [0:0]Q;
  input \USE_SRL_FIFO.sig_wr_fifo ;
  input \USE_SRL_FIFO.sig_wr_fifo_0 ;
  input sig_ld_xfer_reg_tmp_reg_0;
  input sig_inhibit_rdy_n;
  input sig_cmd2data_valid_reg_0;
  input sig_inhibit_rdy_n_1;
  input sig_cmd2dre_valid_reg_0;
  input sig_inhibit_rdy_n_2;
  input sig_cmd2addr_valid_reg_0;
  input sig_init_reg2;
  input sig_mmap_rst_reg_n;
  input sig_init_done;
  input sig_init_done_3;

  wire \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ;
  wire [0:0]\GEN_32BIT_CASE.lsig_start_vect ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire \USE_SRL_FIFO.sig_wr_fifo_0 ;
  wire \data_reg[2][16]_srl3_i_2_n_0 ;
  wire \data_reg[2][21]_srl3_i_2_n_0 ;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b12_n_0;
  wire g0_b13_n_0;
  wire g0_b14_n_0;
  wire g0_b15_n_0;
  wire g0_b17_n_0;
  wire g0_b18_n_0;
  wire g0_b19_n_0;
  wire g0_b1_i_10_n_0;
  wire g0_b1_i_11_n_0;
  wire g0_b1_i_6_n_0;
  wire g0_b1_i_7_n_0;
  wire g0_b1_i_8_n_0;
  wire g0_b1_i_9_n_0;
  wire g0_b1_n_0;
  wire g0_b20_n_0;
  wire g0_b21_n_0;
  wire g0_b22_n_0;
  wire g0_b23_n_0;
  wire g0_b24_n_0;
  wire g0_b25_n_0;
  wire g0_b26_n_0;
  wire g0_b27_n_0;
  wire g0_b28_i_1_n_0;
  wire g0_b28_i_2_n_0;
  wire g0_b28_i_3_n_0;
  wire g0_b28_n_0;
  wire g0_b29_n_0;
  wire g0_b2_n_0;
  wire g0_b30_n_0;
  wire g0_b31_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;
  wire [40:0]in;
  wire m_axi_mm2s_aclk;
  wire [53:0]out;
  wire [15:0]p_0_in;
  wire p_1_in;
  wire [15:0]p_1_in__0;
  wire sig_addr_aligned_im0;
  wire sig_addr_aligned_ireg1;
  wire \sig_addr_cntr_im0_msh[10]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[13]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[15]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh[15]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[5]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[9]_i_2_n_0 ;
  wire [15:0]sig_addr_cntr_im0_msh_reg;
  wire [12:0]sig_addr_cntr_incr_ireg2;
  wire \sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[12]_i_1_n_0 ;
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
  wire [11:0]sig_adjusted_addr_incr_im1;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_10_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_11_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_12_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_13_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_14_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_6_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_7_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_8_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_9_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_5 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_6 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_7 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_4 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_5 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_6 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_7 ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ;
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
  wire \sig_btt_cntr_im0[15]_i_14_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_15_n_0 ;
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
  wire sig_btt_eq_b2mbaa_ireg1_i_7_n_0;
  wire sig_btt_is_zero;
  wire sig_btt_lt_b2mbaa_im0;
  wire sig_btt_lt_b2mbaa_im01;
  wire sig_btt_lt_b2mbaa_im01_carry_i_10_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_11_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_12_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_13_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_14_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_15_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_16_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_9_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_2;
  wire sig_btt_lt_b2mbaa_im01_carry_n_3;
  wire sig_btt_lt_b2mbaa_im01_carry_n_4;
  wire sig_btt_lt_b2mbaa_im01_carry_n_5;
  wire sig_btt_lt_b2mbaa_im01_carry_n_6;
  wire sig_btt_lt_b2mbaa_im01_carry_n_7;
  wire sig_btt_lt_b2mbaa_ireg1;
  wire [9:1]sig_bytes_to_mbaa_im0;
  wire [11:0]sig_bytes_to_mbaa_ireg1;
  wire \sig_bytes_to_mbaa_ireg1[10]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[11]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[7]_i_1_n_0 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_pushed_reg_0;
  wire sig_calc_error_reg_i_1_n_0;
  wire sig_calc_error_reg_i_3_n_0;
  wire sig_calc_error_reg_i_4_n_0;
  wire [69:0]sig_calc_error_reg_reg_0;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2addr_valid_reg_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2data_valid_reg_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_0;
  wire [4:0]sig_end_offset_un;
  wire [4:1]sig_finish_addr_offset_im1;
  wire [4:0]sig_finish_addr_offset_ireg2;
  wire \sig_finish_addr_offset_ireg2[0]_i_1_n_0 ;
  wire \sig_finish_addr_offset_ireg2[1]_i_2_n_0 ;
  wire \sig_finish_addr_offset_ireg2[2]_i_2_n_0 ;
  wire \sig_finish_addr_offset_ireg2[4]_i_2_n_0 ;
  wire sig_first_xfer_im0;
  wire sig_first_xfer_im0_i_1_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_1;
  wire sig_inhibit_rdy_n_2;
  wire sig_init_done;
  wire sig_init_done_3;
  wire sig_init_reg2;
  wire sig_input_cache_type_reg0;
  wire sig_input_reg_empty;
  wire [4:4]sig_last_addr_offset_im2__0;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_ld_xfer_reg_tmp;
  wire sig_ld_xfer_reg_tmp_i_1_n_0;
  wire sig_ld_xfer_reg_tmp_reg_0;
  wire sig_mmap_reset_reg;
  wire sig_mmap_reset_reg_reg_0;
  wire sig_mmap_reset_reg_reg_1;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_sequential;
  wire sig_mstr2sf_cmd_valid;
  wire sig_mstr2sf_eof;
  wire sig_no_btt_residue_im0;
  wire sig_no_btt_residue_ireg1;
  wire sig_no_btt_residue_ireg1_i_2_n_0;
  wire sig_no_btt_residue_ireg1_i_3_n_0;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [15:0]sig_predict_addr_lsh_im2;
  wire [15:15]sig_predict_addr_lsh_ireg3;
  wire \sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_6_n_0 ;
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
  wire sig_push_input_reg11_out;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_ld_calc3_reg;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire [4:0]sig_strbgen_addr_ireg2;
  wire [5:5]sig_strbgen_bytes_ireg2;
  wire \sig_strbgen_bytes_ireg2[4]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2[4]_i_3_n_0 ;
  wire \sig_strbgen_bytes_ireg2[5]_i_1_n_0 ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[0] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[1] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[2] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[3] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[4] ;
  wire \sig_strbgen_bytes_ireg2_reg_n_0_[5] ;
  wire [31:0]sig_xfer_end_strb_ireg3;
  wire \sig_xfer_end_strb_ireg3[10]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[11]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[12]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[13]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[14]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[15]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[17]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[18]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[19]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[1]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[20]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[21]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[22]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[23]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[24]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[25]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[26]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[27]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[28]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[29]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[2]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[30]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[31]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[3]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[4]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[5]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[6]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[7]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[8]_i_1_n_0 ;
  wire \sig_xfer_end_strb_ireg3[9]_i_1_n_0 ;
  wire sig_xfer_len_eq_0_im2;
  wire sig_xfer_len_eq_0_ireg3;
  wire sig_xfer_len_eq_0_ireg3_i_2_n_0;
  wire sig_xfer_len_eq_0_ireg3_i_3_n_0;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1_n_0;
  wire [30:1]sig_xfer_strt_strb_im2;
  wire [31:0]sig_xfer_strt_strb_ireg3;
  wire [7:3]\NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]NLW_sig_btt_lt_b2mbaa_im01_carry_CO_UNCONNECTED;
  wire [7:0]NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [7:7]\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I3(sig_parent_done),
        .I4(sig_calc_error_pushed),
        .I5(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .O(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h88888F88)) 
    \FSM_onehot_sig_pcc_sm_state[2]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(sig_parent_done),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I4(sig_calc_error_pushed),
        .O(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_1 
       (.I0(sig_sm_ld_calc3_reg),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .O(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0C)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_2 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(\USE_SRL_FIFO.sig_wr_fifo ),
        .I2(sig_mstr2data_cmd_valid),
        .I3(\USE_SRL_FIFO.sig_wr_fifo_0 ),
        .I4(sig_mstr2sf_cmd_valid),
        .I5(sig_ld_xfer_reg_tmp_reg_0),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_sig_pcc_sm_state[7]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .I1(sig_calc_error_pushed),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .O(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sig_pcc_sm_state_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .S(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ),
        .Q(sig_sm_ld_calc2_reg_ns),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  ps_axi_datamover_0_1_axi_datamover_strb_gen2 I_STRT_STRB_GEN
       (.D({sig_xfer_strt_strb_im2[30:17],sig_xfer_strt_strb_im2[14:1],\GEN_32BIT_CASE.lsig_start_vect }),
        .Q(sig_strbgen_addr_ireg2),
        .out({g0_b29_n_0,g0_b27_n_0,g0_b25_n_0,g0_b23_n_0,g0_b21_n_0,g0_b19_n_0,g0_b17_n_0,g0_b13_n_0,g0_b11_n_0,g0_b9_n_0,g0_b7_n_0,g0_b5_n_0,g0_b3_n_0,g0_b1_n_0}),
        .\sig_xfer_strt_strb_ireg3_reg[10] (g0_b10_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[12] (g0_b12_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[14] (g0_b14_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[18] (g0_b18_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[20] (g0_b20_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[22] (g0_b22_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[24] (g0_b24_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[26] (g0_b26_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[28] (g0_b28_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[2] (g0_b2_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[30] (g0_b30_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[4] (g0_b4_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[6] (g0_b6_n_0),
        .\sig_xfer_strt_strb_ireg3_reg[8] (g0_b8_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr_i[2]_i_3__0 
       (.I0(sig_calc_error_pushed),
        .I1(Q),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .O(sig_calc_error_pushed_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][10]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[28]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[28]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[64]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][11]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[27]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[27]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[63]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][12]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[26]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[26]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[62]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][13]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[25]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[25]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[61]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][14]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[24]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[24]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[60]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][15]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[23]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[23]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[59]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][16]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[22]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[22]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[58]));
  LUT3 #(
    .INIT(8'hE1)) 
    \data_reg[2][16]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ),
        .I1(\data_reg[2][16]_srl3_i_2_n_0 ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ),
        .O(in[38]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_reg[2][16]_srl3_i_2 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I2(\data_reg[2][21]_srl3_i_2_n_0 ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .O(\data_reg[2][16]_srl3_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][17]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[21]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[21]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[57]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \data_reg[2][17]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I3(\data_reg[2][21]_srl3_i_2_n_0 ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .O(in[37]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][18]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[20]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[20]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[56]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \data_reg[2][18]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I2(\data_reg[2][21]_srl3_i_2_n_0 ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .O(in[36]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][19]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[19]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[19]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[55]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \data_reg[2][19]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I2(\data_reg[2][21]_srl3_i_2_n_0 ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .O(in[35]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][20]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[18]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[18]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[54]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \data_reg[2][20]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I1(\data_reg[2][21]_srl3_i_2_n_0 ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .O(in[34]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][21]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[17]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[17]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[53]));
  LUT2 #(
    .INIT(4'h9)) 
    \data_reg[2][21]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I1(\data_reg[2][21]_srl3_i_2_n_0 ),
        .O(in[33]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_reg[2][21]_srl3_i_2 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .O(\data_reg[2][21]_srl3_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][22]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[16]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[16]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[52]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \data_reg[2][22]_srl3_i_1__0 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .O(in[32]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][23]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[15]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[15]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[51]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][23]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[31]),
        .O(in[31]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][24]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[14]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[14]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[50]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][24]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[30]),
        .O(in[30]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][25]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[13]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[13]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[49]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][25]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[29]),
        .O(in[29]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][26]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[12]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[12]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[48]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][26]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[28]),
        .O(in[28]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][27]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[11]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[11]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[47]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][27]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[27]),
        .O(in[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][28]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[10]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[10]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[46]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][28]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[26]),
        .O(in[26]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][29]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[9]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[9]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[45]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][29]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[25]),
        .O(in[25]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][30]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[8]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[8]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[44]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][30]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[24]),
        .O(in[24]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][31]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[7]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[7]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[43]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][31]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[23]),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][32]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[6]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[6]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[42]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][32]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[22]),
        .O(in[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][33]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[5]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[5]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[41]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][33]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[21]),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][34]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[4]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[4]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[40]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][34]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[20]),
        .O(in[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][35]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[3]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[39]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][35]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[19]),
        .O(in[19]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][36]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[2]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[38]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][36]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[18]),
        .O(in[18]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][37]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[1]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[37]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][37]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[17]),
        .O(in[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][38]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[0]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[36]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][38]_srl3_i_1__0 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[16]),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][39]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[31]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[35]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][39]_srl3_i_1__0 
       (.I0(p_1_in),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[15]),
        .O(in[15]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][3]_srl3_i_1 
       (.I0(in[40]),
        .I1(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[69]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][40]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[30]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[34]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][40]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[14]),
        .O(in[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][41]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[29]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[33]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][41]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[13]),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][42]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[28]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[32]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][42]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[12]),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][43]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[27]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][43]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[11]),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][44]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[26]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][44]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[10]),
        .O(in[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][45]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[25]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][45]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[9]),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][46]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[24]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][46]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[8]),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][47]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[23]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][47]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[7]),
        .O(in[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][48]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[22]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][48]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[6]),
        .O(in[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][49]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[21]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][49]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[5]),
        .O(in[5]));
  LUT6 #(
    .INIT(64'h00FFFFFF57575757)) 
    \data_reg[2][4]_srl3_i_1 
       (.I0(sig_brst_cnt_eq_zero_ireg1),
        .I1(sig_btt_eq_b2mbaa_ireg1),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(sig_brst_cnt_eq_one_ireg1),
        .I4(sig_addr_aligned_ireg1),
        .I5(sig_no_btt_residue_ireg1),
        .O(sig_mstr2data_sequential));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][50]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[20]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][50]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[4]),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][51]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[19]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][51]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[3]),
        .O(in[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][52]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[18]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][52]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[2]),
        .O(in[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][53]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[17]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][53]_srl3_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[1]),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][54]_srl3_i_1__0 
       (.I0(sig_xfer_strt_strb_ireg3[16]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg[2][54]_srl3_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(in[39]),
        .I2(sig_addr_cntr_lsh_kh[0]),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][55]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[15]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][56]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[14]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][57]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[13]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][58]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[12]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][59]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[11]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[2][5]_srl3_i_1 
       (.I0(sig_mstr2sf_eof),
        .I1(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[68]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][60]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[10]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][61]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[9]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][62]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[8]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][63]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[7]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][64]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[6]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][65]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[5]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][66]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[4]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][67]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[3]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][68]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[2]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][69]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[1]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_reg[2][70]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[0]),
        .I1(sig_first_xfer_im0),
        .O(sig_calc_error_reg_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][7]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[31]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[31]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[67]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][8]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[30]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[30]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[66]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \data_reg[2][9]_srl3_i_1 
       (.I0(sig_xfer_strt_strb_ireg3[29]),
        .I1(sig_first_xfer_im0),
        .I2(sig_xfer_len_eq_0_ireg3),
        .I3(sig_xfer_end_strb_ireg3[29]),
        .I4(sig_mstr2data_sequential),
        .O(sig_calc_error_reg_reg_0[65]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    g0_b1
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b1_n_0));
  LUT4 #(
    .INIT(16'hFFE0)) 
    g0_b10
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b10_n_0));
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    g0_b11
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEEB0000)) 
    g0_b12
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_2_n_0),
        .I3(g0_b28_i_3_n_0),
        .I4(sig_end_offset_un[2]),
        .I5(sig_end_offset_un[4]),
        .O(g0_b12_n_0));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    g0_b13
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b13_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    g0_b14
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b14_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
    g0_b15
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .I5(sig_strbgen_addr_ireg2[4]),
        .O(g0_b15_n_0));
  LUT6 #(
    .INIT(64'h222222222222222A)) 
    g0_b16
       (.I0(sig_end_offset_un[4]),
        .I1(sig_strbgen_addr_ireg2[4]),
        .I2(sig_strbgen_addr_ireg2[1]),
        .I3(sig_strbgen_addr_ireg2[2]),
        .I4(sig_strbgen_addr_ireg2[3]),
        .I5(sig_strbgen_addr_ireg2[0]),
        .O(sig_xfer_strt_strb_im2[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    g0_b17
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b17_n_0));
  LUT4 #(
    .INIT(16'hFE00)) 
    g0_b18
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b18_n_0));
  LUT5 #(
    .INIT(32'hFFF80000)) 
    g0_b19
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b19_n_0));
  LUT3 #(
    .INIT(8'hEB)) 
    g0_b1_i_1
       (.I0(g0_b28_i_1_n_0),
        .I1(g0_b1_i_6_n_0),
        .I2(sig_strbgen_addr_ireg2[0]),
        .O(sig_end_offset_un[0]));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    g0_b1_i_10
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .O(g0_b1_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAA9FFFF0000AAA9)) 
    g0_b1_i_11
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(g0_b1_i_6_n_0),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I4(g0_b28_i_3_n_0),
        .I5(sig_strbgen_addr_ireg2[3]),
        .O(g0_b1_i_11_n_0));
  LUT5 #(
    .INIT(32'hBBBEEEEB)) 
    g0_b1_i_2
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[1]),
        .I2(g0_b1_i_6_n_0),
        .I3(sig_strbgen_addr_ireg2[0]),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .O(sig_end_offset_un[1]));
  LUT6 #(
    .INIT(64'hBBBEEEEBEEEBBBBE)) 
    g0_b1_i_3
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[2]),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(g0_b1_i_6_n_0),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I5(g0_b1_i_7_n_0),
        .O(sig_end_offset_un[2]));
  LUT6 #(
    .INIT(64'hBEDB7DD7BEEBBEDB)) 
    g0_b1_i_4
       (.I0(g0_b1_i_8_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_3_n_0),
        .I3(g0_b28_i_2_n_0),
        .I4(sig_strbgen_addr_ireg2[4]),
        .I5(g0_b1_i_9_n_0),
        .O(sig_end_offset_un[3]));
  LUT5 #(
    .INIT(32'h7DF7E7FE)) 
    g0_b1_i_5
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I1(sig_strbgen_addr_ireg2[4]),
        .I2(g0_b1_i_10_n_0),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I4(g0_b1_i_11_n_0),
        .O(sig_end_offset_un[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    g0_b1_i_6
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(g0_b1_i_6_n_0));
  LUT4 #(
    .INIT(16'h52FB)) 
    g0_b1_i_7
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I1(sig_strbgen_addr_ireg2[0]),
        .I2(g0_b1_i_6_n_0),
        .I3(sig_strbgen_addr_ireg2[1]),
        .O(g0_b1_i_7_n_0));
  LUT6 #(
    .INIT(64'h3333333333333337)) 
    g0_b1_i_8
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .O(g0_b1_i_8_n_0));
  LUT6 #(
    .INIT(64'h00FF00FF01FE01FF)) 
    g0_b1_i_9
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .O(g0_b1_i_9_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b2
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'hFFFFBEEB00000000)) 
    g0_b20
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_2_n_0),
        .I3(g0_b28_i_3_n_0),
        .I4(sig_end_offset_un[2]),
        .I5(sig_end_offset_un[4]),
        .O(g0_b20_n_0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    g0_b21
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b21_n_0));
  LUT4 #(
    .INIT(16'hF800)) 
    g0_b22
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b22_n_0));
  LUT5 #(
    .INIT(32'hFF800000)) 
    g0_b23
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b23_n_0));
  LUT5 #(
    .INIT(32'hBEEB0000)) 
    g0_b24
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_2_n_0),
        .I3(g0_b28_i_3_n_0),
        .I4(sig_end_offset_un[4]),
        .O(g0_b24_n_0));
  LUT5 #(
    .INIT(32'hFE000000)) 
    g0_b25
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b25_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    g0_b26
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b26_n_0));
  LUT5 #(
    .INIT(32'hF8000000)) 
    g0_b27
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b27_n_0));
  LUT6 #(
    .INIT(64'hBEEB000000000000)) 
    g0_b28
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_2_n_0),
        .I3(g0_b28_i_3_n_0),
        .I4(sig_end_offset_un[2]),
        .I5(sig_end_offset_un[4]),
        .O(g0_b28_n_0));
  LUT6 #(
    .INIT(64'h9A595555AAAA9A59)) 
    g0_b28_i_1
       (.I0(g0_b1_i_8_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_3_n_0),
        .I3(g0_b28_i_2_n_0),
        .I4(sig_strbgen_addr_ireg2[4]),
        .I5(g0_b1_i_9_n_0),
        .O(g0_b28_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF00FF00FF00AA54)) 
    g0_b28_i_2
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .I2(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .I4(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I5(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .O(g0_b28_i_2_n_0));
  LUT6 #(
    .INIT(64'h11045546776EFFEF)) 
    g0_b28_i_3
       (.I0(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .I1(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .I2(sig_strbgen_addr_ireg2[0]),
        .I3(g0_b1_i_6_n_0),
        .I4(sig_strbgen_addr_ireg2[1]),
        .I5(sig_strbgen_addr_ireg2[2]),
        .O(g0_b28_i_3_n_0));
  LUT5 #(
    .INIT(32'hE0000000)) 
    g0_b29
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b29_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    g0_b3
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    g0_b30
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b30_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    g0_b31
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBEEB)) 
    g0_b4
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_2_n_0),
        .I3(g0_b28_i_3_n_0),
        .I4(sig_end_offset_un[2]),
        .I5(sig_end_offset_un[4]),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    g0_b5
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b5_n_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    g0_b6
       (.I0(sig_end_offset_un[1]),
        .I1(sig_end_offset_un[2]),
        .I2(sig_end_offset_un[3]),
        .I3(sig_end_offset_un[4]),
        .O(g0_b6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    g0_b7
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b7_n_0));
  LUT5 #(
    .INIT(32'hFFFFBEEB)) 
    g0_b8
       (.I0(g0_b28_i_1_n_0),
        .I1(sig_strbgen_addr_ireg2[3]),
        .I2(g0_b28_i_2_n_0),
        .I3(g0_b28_i_3_n_0),
        .I4(sig_end_offset_un[4]),
        .O(g0_b8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    g0_b9
       (.I0(sig_end_offset_un[0]),
        .I1(sig_end_offset_un[1]),
        .I2(sig_end_offset_un[2]),
        .I3(sig_end_offset_un[3]),
        .I4(sig_end_offset_un[4]),
        .O(g0_b9_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    sig_addr_aligned_ireg1_i_1
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .O(sig_addr_aligned_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_aligned_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_addr_aligned_im0),
        .Q(sig_addr_aligned_ireg1),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h00000200FFFFFEFF)) 
    \sig_addr_cntr_im0_msh[0]_i_1 
       (.I0(out[34]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_addr_cntr_im0_msh_reg[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_addr_cntr_im0_msh[10]_i_1 
       (.I0(out[44]),
        .I1(sig_push_input_reg11_out),
        .I2(\sig_addr_cntr_im0_msh[10]_i_2_n_0 ),
        .I3(sig_addr_cntr_im0_msh_reg[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \sig_addr_cntr_im0_msh[10]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(sig_addr_cntr_im0_msh_reg[6]),
        .I2(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .I3(sig_addr_cntr_im0_msh_reg[7]),
        .I4(sig_addr_cntr_im0_msh_reg[9]),
        .O(\sig_addr_cntr_im0_msh[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \sig_addr_cntr_im0_msh[11]_i_1 
       (.I0(out[45]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[11]),
        .I3(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \sig_addr_cntr_im0_msh[12]_i_1 
       (.I0(out[46]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[12]),
        .I3(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ),
        .I4(sig_addr_cntr_im0_msh_reg[11]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \sig_addr_cntr_im0_msh[13]_i_1 
       (.I0(out[47]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[13]),
        .I3(sig_addr_cntr_im0_msh_reg[11]),
        .I4(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ),
        .I5(sig_addr_cntr_im0_msh_reg[12]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \sig_addr_cntr_im0_msh[13]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(sig_addr_cntr_im0_msh_reg[9]),
        .I2(sig_addr_cntr_im0_msh_reg[7]),
        .I3(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .I4(sig_addr_cntr_im0_msh_reg[6]),
        .I5(sig_addr_cntr_im0_msh_reg[8]),
        .O(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \sig_addr_cntr_im0_msh[14]_i_1 
       (.I0(out[48]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[14]),
        .I3(\sig_addr_cntr_im0_msh[15]_i_3_n_0 ),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \sig_addr_cntr_im0_msh[15]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(sig_predict_addr_lsh_ireg3),
        .I2(p_1_in),
        .I3(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \sig_addr_cntr_im0_msh[15]_i_2 
       (.I0(out[49]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[15]),
        .I3(\sig_addr_cntr_im0_msh[15]_i_3_n_0 ),
        .I4(sig_addr_cntr_im0_msh_reg[14]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_addr_cntr_im0_msh[15]_i_3 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(sig_addr_cntr_im0_msh_reg[11]),
        .I2(\sig_addr_cntr_im0_msh[13]_i_2_n_0 ),
        .I3(sig_addr_cntr_im0_msh_reg[12]),
        .O(\sig_addr_cntr_im0_msh[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \sig_addr_cntr_im0_msh[1]_i_1 
       (.I0(out[35]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .I3(sig_addr_cntr_im0_msh_reg[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \sig_addr_cntr_im0_msh[2]_i_1 
       (.I0(out[36]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[2]),
        .I3(sig_addr_cntr_im0_msh_reg[0]),
        .I4(sig_addr_cntr_im0_msh_reg[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \sig_addr_cntr_im0_msh[3]_i_1 
       (.I0(out[37]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[3]),
        .I3(sig_addr_cntr_im0_msh_reg[1]),
        .I4(sig_addr_cntr_im0_msh_reg[0]),
        .I5(sig_addr_cntr_im0_msh_reg[2]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_addr_cntr_im0_msh[4]_i_1 
       (.I0(out[38]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[4]),
        .I3(\sig_addr_cntr_im0_msh[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_addr_cntr_im0_msh[4]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(sig_addr_cntr_im0_msh_reg[0]),
        .I2(sig_addr_cntr_im0_msh_reg[1]),
        .I3(sig_addr_cntr_im0_msh_reg[3]),
        .O(\sig_addr_cntr_im0_msh[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_addr_cntr_im0_msh[5]_i_1 
       (.I0(out[39]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[5]),
        .I3(\sig_addr_cntr_im0_msh[5]_i_2_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_addr_cntr_im0_msh[5]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(sig_addr_cntr_im0_msh_reg[1]),
        .I2(sig_addr_cntr_im0_msh_reg[0]),
        .I3(sig_addr_cntr_im0_msh_reg[2]),
        .I4(sig_addr_cntr_im0_msh_reg[4]),
        .O(\sig_addr_cntr_im0_msh[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_addr_cntr_im0_msh[6]_i_1 
       (.I0(out[40]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[6]),
        .I3(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \sig_addr_cntr_im0_msh[7]_i_1 
       (.I0(out[41]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[7]),
        .I3(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .I4(sig_addr_cntr_im0_msh_reg[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hB8B88BB8B8B8B8B8)) 
    \sig_addr_cntr_im0_msh[8]_i_1 
       (.I0(out[42]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[8]),
        .I3(sig_addr_cntr_im0_msh_reg[6]),
        .I4(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .I5(sig_addr_cntr_im0_msh_reg[7]),
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
    .INIT(16'hB88B)) 
    \sig_addr_cntr_im0_msh[9]_i_1 
       (.I0(out[43]),
        .I1(sig_push_input_reg11_out),
        .I2(sig_addr_cntr_im0_msh_reg[9]),
        .I3(\sig_addr_cntr_im0_msh[9]_i_2_n_0 ),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \sig_addr_cntr_im0_msh[9]_i_2 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ),
        .I2(sig_addr_cntr_im0_msh_reg[6]),
        .I3(sig_addr_cntr_im0_msh_reg[8]),
        .O(\sig_addr_cntr_im0_msh[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(sig_addr_cntr_im0_msh_reg[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(sig_addr_cntr_im0_msh_reg[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(sig_addr_cntr_im0_msh_reg[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(sig_addr_cntr_im0_msh_reg[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(sig_addr_cntr_im0_msh_reg[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(sig_addr_cntr_im0_msh_reg[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(sig_addr_cntr_im0_msh_reg[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(sig_addr_cntr_im0_msh_reg[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(sig_addr_cntr_im0_msh_reg[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(sig_addr_cntr_im0_msh_reg[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(sig_addr_cntr_im0_msh_reg[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(sig_addr_cntr_im0_msh_reg[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(sig_addr_cntr_im0_msh_reg[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(sig_addr_cntr_im0_msh_reg[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(sig_addr_cntr_im0_msh_reg[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_im0_msh[15]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(sig_addr_cntr_im0_msh_reg[9]),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hEA40)) 
    \sig_addr_cntr_incr_ireg2[0]_i_1 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[10]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[10]),
        .O(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[11]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[11]),
        .O(\sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \sig_addr_cntr_incr_ireg2[12]_i_1 
       (.I0(sig_first_xfer_im0),
        .I1(sig_addr_aligned_ireg1),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_addr_cntr_incr_ireg2[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[1]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .O(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[2]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[3]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .O(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[4]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[4]),
        .O(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[5]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[5]),
        .O(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[6]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[6]),
        .O(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[7]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[7]),
        .O(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[8]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[8]),
        .O(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_addr_cntr_incr_ireg2[9]_i_1 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[9]),
        .O(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[12]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_ireg2[9]),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[0]_i_1 
       (.I0(out[18]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[0]),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[10]_i_1 
       (.I0(out[28]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[10]),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[11]_i_1 
       (.I0(out[29]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[11]),
        .O(p_1_in__0[11]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[12]_i_1 
       (.I0(out[30]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[12]),
        .O(p_1_in__0[12]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[13]_i_1 
       (.I0(out[31]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[13]),
        .O(p_1_in__0[13]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[14]_i_1 
       (.I0(out[32]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[14]),
        .O(p_1_in__0[14]));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \sig_addr_cntr_lsh_im0[15]_i_1 
       (.I0(sig_sm_halt_reg),
        .I1(sig_input_reg_empty),
        .I2(Q),
        .I3(in[40]),
        .I4(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .O(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[15]_i_2 
       (.I0(out[33]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3),
        .O(p_1_in__0[15]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[1]_i_1 
       (.I0(out[19]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[1]),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[2]_i_1 
       (.I0(out[20]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[2]),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[3]_i_1 
       (.I0(out[21]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[3]),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[4]_i_1 
       (.I0(out[22]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[5]_i_1 
       (.I0(out[23]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[6]_i_1 
       (.I0(out[24]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[6]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[7]_i_1 
       (.I0(out[25]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[7]),
        .O(p_1_in__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[8]_i_1 
       (.I0(out[26]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[8]),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \sig_addr_cntr_lsh_im0[9]_i_1 
       (.I0(out[27]),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_predict_addr_lsh_ireg3__0[9]),
        .O(p_1_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(p_1_in),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[18]),
        .Q(sig_addr_cntr_lsh_kh[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[28]),
        .Q(sig_addr_cntr_lsh_kh[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[29]),
        .Q(sig_addr_cntr_lsh_kh[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[30]),
        .Q(sig_addr_cntr_lsh_kh[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[31]),
        .Q(sig_addr_cntr_lsh_kh[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[32]),
        .Q(sig_addr_cntr_lsh_kh[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[33]),
        .Q(sig_addr_cntr_lsh_kh[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[34]),
        .Q(sig_addr_cntr_lsh_kh[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[35]),
        .Q(sig_addr_cntr_lsh_kh[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[36]),
        .Q(sig_addr_cntr_lsh_kh[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[37]),
        .Q(sig_addr_cntr_lsh_kh[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[19]),
        .Q(sig_addr_cntr_lsh_kh[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[38]),
        .Q(sig_addr_cntr_lsh_kh[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[39]),
        .Q(sig_addr_cntr_lsh_kh[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[40]),
        .Q(sig_addr_cntr_lsh_kh[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[41]),
        .Q(sig_addr_cntr_lsh_kh[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[42]),
        .Q(sig_addr_cntr_lsh_kh[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[43]),
        .Q(sig_addr_cntr_lsh_kh[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[44]),
        .Q(sig_addr_cntr_lsh_kh[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[45]),
        .Q(sig_addr_cntr_lsh_kh[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[46]),
        .Q(sig_addr_cntr_lsh_kh[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[47]),
        .Q(sig_addr_cntr_lsh_kh[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[20]),
        .Q(sig_addr_cntr_lsh_kh[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[48]),
        .Q(sig_addr_cntr_lsh_kh[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[49]),
        .Q(sig_addr_cntr_lsh_kh[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[21]),
        .Q(sig_addr_cntr_lsh_kh[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[22]),
        .Q(sig_addr_cntr_lsh_kh[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[23]),
        .Q(sig_addr_cntr_lsh_kh[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[24]),
        .Q(sig_addr_cntr_lsh_kh[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[25]),
        .Q(sig_addr_cntr_lsh_kh[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[26]),
        .Q(sig_addr_cntr_lsh_kh[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[27]),
        .Q(sig_addr_cntr_lsh_kh[9]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[11]),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[10]),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[9]),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_5 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[8]),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_10 
       (.I0(sig_bytes_to_mbaa_ireg1[4]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_11 
       (.I0(sig_bytes_to_mbaa_ireg1[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_12 
       (.I0(sig_bytes_to_mbaa_ireg1[2]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_13 
       (.I0(sig_bytes_to_mbaa_ireg1[1]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h15BFEA40)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_14 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[4]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_5 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEA40)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_6 
       (.I0(sig_btt_lt_b2mbaa_ireg1),
        .I1(sig_bytes_to_mbaa_ireg1[0]),
        .I2(sig_first_xfer_im0),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_7 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[7]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_8 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[6]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_9 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[5]),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[0]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[10]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[11]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_adjusted_addr_incr_ireg2_reg[11]_i_1 
       (.CI(\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED [7:3],\sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_5 ,\sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_6 ,\sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_O_UNCONNECTED [7:4],sig_adjusted_addr_incr_im1[11:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,\sig_adjusted_addr_incr_ireg2[11]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[11]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[11]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[1]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[2]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[3]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[4]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[5]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[6]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[7]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_adjusted_addr_incr_ireg2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_4 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_5 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_6 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,\sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_6_n_0 }),
        .O(sig_adjusted_addr_incr_im1[7:0]),
        .S({\sig_adjusted_addr_incr_ireg2[7]_i_7_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_8_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_9_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_10_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_11_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_12_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_13_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[8]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[9]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    sig_brst_cnt_eq_one_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .O(sig_brst_cnt_eq_one_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_one_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_brst_cnt_eq_one_im0),
        .Q(sig_brst_cnt_eq_one_ireg1),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sig_brst_cnt_eq_zero_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .O(sig_brst_cnt_eq_zero_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_zero_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_brst_cnt_eq_zero_im0),
        .Q(sig_brst_cnt_eq_zero_ireg1),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h5555557555555545)) 
    \sig_btt_cntr_im0[15]_i_10 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .I5(out[13]),
        .O(\sig_btt_cntr_im0[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_11 
       (.I0(sig_addr_cntr_incr_ireg2[12]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[12]),
        .O(\sig_btt_cntr_im0[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_12 
       (.I0(sig_addr_cntr_incr_ireg2[11]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[11]),
        .O(\sig_btt_cntr_im0[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_13 
       (.I0(sig_addr_cntr_incr_ireg2[10]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[10]),
        .O(\sig_btt_cntr_im0[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_14 
       (.I0(sig_addr_cntr_incr_ireg2[9]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[9]),
        .O(\sig_btt_cntr_im0[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_15 
       (.I0(sig_addr_cntr_incr_ireg2[8]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[8]),
        .O(\sig_btt_cntr_im0[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \sig_btt_cntr_im0[15]_i_2 
       (.I0(sig_sm_halt_reg),
        .I1(sig_input_reg_empty),
        .I2(Q),
        .I3(in[40]),
        .O(\sig_btt_cntr_im0[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[15]_i_3 
       (.I0(sig_addr_cntr_incr_ireg2[12]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[15]_i_4 
       (.I0(sig_addr_cntr_incr_ireg2[11]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[15]_i_5 
       (.I0(sig_addr_cntr_incr_ireg2[10]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[15]_i_6 
       (.I0(sig_addr_cntr_incr_ireg2[9]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[15]_i_7 
       (.I0(sig_addr_cntr_incr_ireg2[8]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555557555555545)) 
    \sig_btt_cntr_im0[15]_i_8 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .I5(out[15]),
        .O(\sig_btt_cntr_im0[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555557555555545)) 
    \sig_btt_cntr_im0[15]_i_9 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .I5(out[14]),
        .O(\sig_btt_cntr_im0[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_10 
       (.I0(sig_addr_cntr_incr_ireg2[7]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[7]),
        .O(\sig_btt_cntr_im0[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_11 
       (.I0(sig_addr_cntr_incr_ireg2[6]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[6]),
        .O(\sig_btt_cntr_im0[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_12 
       (.I0(sig_addr_cntr_incr_ireg2[5]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[5]),
        .O(\sig_btt_cntr_im0[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_13 
       (.I0(sig_addr_cntr_incr_ireg2[4]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[4]),
        .O(\sig_btt_cntr_im0[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_14 
       (.I0(sig_addr_cntr_incr_ireg2[3]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[3]),
        .O(\sig_btt_cntr_im0[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_15 
       (.I0(sig_addr_cntr_incr_ireg2[2]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[2]),
        .O(\sig_btt_cntr_im0[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_16 
       (.I0(sig_addr_cntr_incr_ireg2[1]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[1]),
        .O(\sig_btt_cntr_im0[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_17 
       (.I0(sig_addr_cntr_incr_ireg2[0]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I2(sig_push_input_reg11_out),
        .I3(out[0]),
        .O(\sig_btt_cntr_im0[7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_2 
       (.I0(sig_addr_cntr_incr_ireg2[7]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_3 
       (.I0(sig_addr_cntr_incr_ireg2[6]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_4 
       (.I0(sig_addr_cntr_incr_ireg2[5]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_5 
       (.I0(sig_addr_cntr_incr_ireg2[4]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_6 
       (.I0(sig_addr_cntr_incr_ireg2[3]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_7 
       (.I0(sig_addr_cntr_incr_ireg2[2]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_8 
       (.I0(sig_addr_cntr_incr_ireg2[1]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \sig_btt_cntr_im0[7]_i_9 
       (.I0(sig_addr_cntr_incr_ireg2[0]),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(Q),
        .I4(in[40]),
        .O(\sig_btt_cntr_im0[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_15 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_13 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_12 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_11 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_10 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_9 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_8 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .R(sig_mmap_reset_reg));
  CARRY8 \sig_btt_cntr_im0_reg[15]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED [7],\sig_btt_cntr_im0_reg[15]_i_1_n_1 ,\sig_btt_cntr_im0_reg[15]_i_1_n_2 ,\sig_btt_cntr_im0_reg[15]_i_1_n_3 ,\sig_btt_cntr_im0_reg[15]_i_1_n_4 ,\sig_btt_cntr_im0_reg[15]_i_1_n_5 ,\sig_btt_cntr_im0_reg[15]_i_1_n_6 ,\sig_btt_cntr_im0_reg[15]_i_1_n_7 }),
        .DI({1'b0,\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_3_n_0 ,\sig_btt_cntr_im0[15]_i_4_n_0 ,\sig_btt_cntr_im0[15]_i_5_n_0 ,\sig_btt_cntr_im0[15]_i_6_n_0 ,\sig_btt_cntr_im0[15]_i_7_n_0 }),
        .O({\sig_btt_cntr_im0_reg[15]_i_1_n_8 ,\sig_btt_cntr_im0_reg[15]_i_1_n_9 ,\sig_btt_cntr_im0_reg[15]_i_1_n_10 ,\sig_btt_cntr_im0_reg[15]_i_1_n_11 ,\sig_btt_cntr_im0_reg[15]_i_1_n_12 ,\sig_btt_cntr_im0_reg[15]_i_1_n_13 ,\sig_btt_cntr_im0_reg[15]_i_1_n_14 ,\sig_btt_cntr_im0_reg[15]_i_1_n_15 }),
        .S({\sig_btt_cntr_im0[15]_i_8_n_0 ,\sig_btt_cntr_im0[15]_i_9_n_0 ,\sig_btt_cntr_im0[15]_i_10_n_0 ,\sig_btt_cntr_im0[15]_i_11_n_0 ,\sig_btt_cntr_im0[15]_i_12_n_0 ,\sig_btt_cntr_im0[15]_i_13_n_0 ,\sig_btt_cntr_im0[15]_i_14_n_0 ,\sig_btt_cntr_im0[15]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_14 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_13 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_12 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_11 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_10 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_9 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[7] 
       (.C(m_axi_mm2s_aclk),
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
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_15 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_14 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    sig_btt_eq_b2mbaa_ireg1_i_1
       (.I0(sig_btt_eq_b2mbaa_ireg1_i_2_n_0),
        .I1(sig_addr_aligned_im0),
        .I2(sig_btt_eq_b2mbaa_ireg1_i_3_n_0),
        .I3(sig_btt_eq_b2mbaa_ireg1_i_4_n_0),
        .I4(sig_btt_eq_b2mbaa_ireg1_i_5_n_0),
        .I5(sig_btt_eq_b2mbaa_ireg1_i_6_n_0),
        .O(sig_btt_eq_b2mbaa_im0));
  LUT5 #(
    .INIT(32'h60060960)) 
    sig_btt_eq_b2mbaa_ireg1_i_2
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I3(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_2_n_0));
  LUT5 #(
    .INIT(32'h06606009)) 
    sig_btt_eq_b2mbaa_ireg1_i_3
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_16_n_0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_3_n_0));
  LUT6 #(
    .INIT(64'h2800008200000000)) 
    sig_btt_eq_b2mbaa_ireg1_i_4
       (.I0(sig_btt_eq_b2mbaa_ireg1_i_7_n_0),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I5(sig_brst_cnt_eq_zero_im0),
        .O(sig_btt_eq_b2mbaa_ireg1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hF99F9FF6)) 
    sig_btt_eq_b2mbaa_ireg1_i_5
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I3(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_5_n_0));
  LUT5 #(
    .INIT(32'hF99F9FF6)) 
    sig_btt_eq_b2mbaa_ireg1_i_6
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_15_n_0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_6_n_0));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    sig_btt_eq_b2mbaa_ireg1_i_7
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_btt_eq_b2mbaa_ireg1_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_eq_b2mbaa_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_btt_eq_b2mbaa_im0),
        .Q(sig_btt_eq_b2mbaa_ireg1),
        .R(sig_mmap_reset_reg));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 sig_btt_lt_b2mbaa_im01_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_sig_btt_lt_b2mbaa_im01_carry_CO_UNCONNECTED[7],sig_btt_lt_b2mbaa_im01,sig_btt_lt_b2mbaa_im01_carry_n_2,sig_btt_lt_b2mbaa_im01_carry_n_3,sig_btt_lt_b2mbaa_im01_carry_n_4,sig_btt_lt_b2mbaa_im01_carry_n_5,sig_btt_lt_b2mbaa_im01_carry_n_6,sig_btt_lt_b2mbaa_im01_carry_n_7}),
        .DI({1'b0,sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,sig_btt_lt_b2mbaa_im01_carry_i_3_n_0,sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,sig_btt_lt_b2mbaa_im01_carry_i_7_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,sig_btt_lt_b2mbaa_im01_carry_i_8_n_0,sig_btt_lt_b2mbaa_im01_carry_i_9_n_0,sig_btt_lt_b2mbaa_im01_carry_i_10_n_0,sig_btt_lt_b2mbaa_im01_carry_i_11_n_0,sig_btt_lt_b2mbaa_im01_carry_i_12_n_0,sig_btt_lt_b2mbaa_im01_carry_i_13_n_0,sig_btt_lt_b2mbaa_im01_carry_i_14_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    sig_btt_lt_b2mbaa_im01_carry_i_1
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h01686801)) 
    sig_btt_lt_b2mbaa_im01_carry_i_10
       (.I0(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I1(sig_btt_lt_b2mbaa_im01_carry_i_15_n_0),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h01686801)) 
    sig_btt_lt_b2mbaa_im01_carry_i_11
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h06606009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_12
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I3(sig_btt_lt_b2mbaa_im01_carry_i_16_n_0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_13
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h6009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_14
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_btt_lt_b2mbaa_im01_carry_i_15
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_btt_lt_b2mbaa_im01_carry_i_16
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h045145D3)) 
    sig_btt_lt_b2mbaa_im01_carry_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h11141774)) 
    sig_btt_lt_b2mbaa_im01_carry_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I2(sig_btt_lt_b2mbaa_im01_carry_i_15_n_0),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h0154157C)) 
    sig_btt_lt_b2mbaa_im01_carry_i_4
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I2(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h0154157C)) 
    sig_btt_lt_b2mbaa_im01_carry_i_5
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I2(sig_btt_lt_b2mbaa_im01_carry_i_16_n_0),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h000111103337777C)) 
    sig_btt_lt_b2mbaa_im01_carry_i_6
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h1474)) 
    sig_btt_lt_b2mbaa_im01_carry_i_7
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_lt_b2mbaa_im01_carry_i_8
       (.I0(sig_addr_aligned_im0),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h60060960)) 
    sig_btt_lt_b2mbaa_im01_carry_i_9
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I3(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    sig_btt_lt_b2mbaa_ireg1_i_1
       (.I0(sig_btt_lt_b2mbaa_im01),
        .I1(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .O(sig_btt_lt_b2mbaa_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_lt_b2mbaa_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_btt_lt_b2mbaa_im0),
        .Q(sig_btt_lt_b2mbaa_ireg1),
        .R(sig_mmap_reset_reg));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sig_bytes_to_mbaa_ireg1[10]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I4(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(\sig_bytes_to_mbaa_ireg1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_bytes_to_mbaa_ireg1[10]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \sig_bytes_to_mbaa_ireg1[11]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I2(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ),
        .O(\sig_bytes_to_mbaa_ireg1[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sig_bytes_to_mbaa_ireg1[11]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .O(\sig_bytes_to_mbaa_ireg1[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sig_bytes_to_mbaa_ireg1[1]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(sig_bytes_to_mbaa_im0[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \sig_bytes_to_mbaa_ireg1[2]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(sig_bytes_to_mbaa_im0[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \sig_bytes_to_mbaa_ireg1[3]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(sig_bytes_to_mbaa_im0[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(sig_bytes_to_mbaa_im0[4]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sig_bytes_to_mbaa_ireg1[5]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(sig_bytes_to_mbaa_im0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_bytes_to_mbaa_ireg1[6]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .O(sig_bytes_to_mbaa_im0[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \sig_bytes_to_mbaa_ireg1[7]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .O(\sig_bytes_to_mbaa_ireg1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \sig_bytes_to_mbaa_ireg1[8]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I2(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(sig_bytes_to_mbaa_im0[8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \sig_bytes_to_mbaa_ireg1[9]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I2(\sig_bytes_to_mbaa_ireg1[10]_i_2_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .O(sig_bytes_to_mbaa_im0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .Q(sig_bytes_to_mbaa_ireg1[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_bytes_to_mbaa_ireg1[10]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_bytes_to_mbaa_ireg1[11]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[1]),
        .Q(sig_bytes_to_mbaa_ireg1[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[2]),
        .Q(sig_bytes_to_mbaa_ireg1[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[3]),
        .Q(sig_bytes_to_mbaa_ireg1[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[4]),
        .Q(sig_bytes_to_mbaa_ireg1[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[5]),
        .Q(sig_bytes_to_mbaa_ireg1[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[6]),
        .Q(sig_bytes_to_mbaa_ireg1[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\sig_bytes_to_mbaa_ireg1[7]_i_1_n_0 ),
        .Q(sig_bytes_to_mbaa_ireg1[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[8]),
        .Q(sig_bytes_to_mbaa_ireg1[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_bytes_to_mbaa_im0[9]),
        .Q(sig_bytes_to_mbaa_ireg1[9]),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(in[40]),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'hCCCCCECC)) 
    sig_calc_error_reg_i_1
       (.I0(sig_btt_is_zero),
        .I1(in[40]),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .O(sig_calc_error_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    sig_calc_error_reg_i_2
       (.I0(sig_calc_error_reg_i_3_n_0),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(sig_calc_error_reg_i_4_n_0),
        .O(sig_btt_is_zero));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_3
       (.I0(out[12]),
        .I1(out[13]),
        .I2(out[10]),
        .I3(out[11]),
        .I4(out[15]),
        .I5(out[14]),
        .O(sig_calc_error_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_4
       (.I0(out[6]),
        .I1(out[7]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(out[9]),
        .I5(out[8]),
        .O(sig_calc_error_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_i_1_n_0),
        .Q(in[40]),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h54540454)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(sig_inhibit_rdy_n_2),
        .I4(sig_cmd2addr_valid_reg_0),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_mstr2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h54540454)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_cmd2data_valid_reg_0),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_mstr2data_cmd_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5540554000405540)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_sm_ld_calc3_reg),
        .I2(sig_first_xfer_im0),
        .I3(sig_mstr2sf_cmd_valid),
        .I4(sig_inhibit_rdy_n_1),
        .I5(sig_cmd2dre_valid_reg_0),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_mstr2sf_cmd_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h56669AAA)) 
    \sig_finish_addr_offset_ireg2[0]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_bytes_to_mbaa_ireg1[0]),
        .I3(sig_first_xfer_im0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_finish_addr_offset_ireg2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    \sig_finish_addr_offset_ireg2[1]_i_1 
       (.I0(\sig_finish_addr_offset_ireg2[1]_i_2_n_0 ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(sig_first_xfer_im0),
        .I4(sig_bytes_to_mbaa_ireg1[1]),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(sig_finish_addr_offset_im1[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hA8882000)) 
    \sig_finish_addr_offset_ireg2[1]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_bytes_to_mbaa_ireg1[0]),
        .I3(sig_first_xfer_im0),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_finish_addr_offset_ireg2[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA59595555A6A6AA)) 
    \sig_finish_addr_offset_ireg2[2]_i_1 
       (.I0(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_finish_addr_offset_ireg2[2]_i_2_n_0 ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I4(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(sig_finish_addr_offset_im1[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \sig_finish_addr_offset_ireg2[2]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_first_xfer_im0),
        .I2(sig_bytes_to_mbaa_ireg1[0]),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .O(\sig_finish_addr_offset_ireg2[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h556AAA6AAA955595)) 
    \sig_finish_addr_offset_ireg2[3]_i_1 
       (.I0(\sig_finish_addr_offset_ireg2[4]_i_2_n_0 ),
        .I1(sig_bytes_to_mbaa_ireg1[3]),
        .I2(sig_first_xfer_im0),
        .I3(sig_btt_lt_b2mbaa_ireg1),
        .I4(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(sig_finish_addr_offset_im1[3]));
  LUT5 #(
    .INIT(32'hB24D4DB2)) 
    \sig_finish_addr_offset_ireg2[4]_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(\sig_finish_addr_offset_ireg2[4]_i_2_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .I3(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(sig_finish_addr_offset_im1[4]));
  LUT6 #(
    .INIT(64'h00000DDF0DDFFFFF)) 
    \sig_finish_addr_offset_ireg2[4]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(\sig_finish_addr_offset_ireg2[2]_i_2_n_0 ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I3(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I5(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .O(\sig_finish_addr_offset_ireg2[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_finish_addr_offset_ireg2[0]_i_1_n_0 ),
        .Q(sig_finish_addr_offset_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[1]),
        .Q(sig_finish_addr_offset_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[2]),
        .Q(sig_finish_addr_offset_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[3]),
        .Q(sig_finish_addr_offset_ireg2[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_finish_addr_offset_im1[4]),
        .Q(sig_finish_addr_offset_ireg2[4]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'h000E)) 
    sig_first_xfer_im0_i_1
       (.I0(sig_first_xfer_im0),
        .I1(sig_push_input_reg11_out),
        .I2(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I3(sig_mmap_reset_reg),
        .O(sig_first_xfer_im0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_xfer_im0_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_first_xfer_im0_i_1_n_0),
        .Q(sig_first_xfer_im0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_init_reg2),
        .I2(sig_mmap_rst_reg_n),
        .I3(sig_init_done),
        .O(sig_mmap_reset_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sig_init_done_i_1__0
       (.I0(sig_mmap_reset_reg),
        .I1(sig_init_reg2),
        .I2(sig_mmap_rst_reg_n),
        .I3(sig_init_done_3),
        .O(sig_mmap_reset_reg_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[16]),
        .Q(in[39]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[17]),
        .Q(sig_mstr2sf_eof),
        .R(sig_input_cache_type_reg0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_input_reg_empty_i_1
       (.I0(sig_sm_pop_input_reg),
        .I1(sig_calc_error_pushed),
        .I2(sig_mmap_reset_reg),
        .O(sig_input_cache_type_reg0));
  LUT4 #(
    .INIT(16'h0010)) 
    sig_input_reg_empty_i_2
       (.I0(in[40]),
        .I1(Q),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .O(sig_push_input_reg11_out));
  FDSE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(1'b0),
        .Q(sig_input_reg_empty),
        .S(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[50]),
        .Q(sig_calc_error_reg_reg_0[0]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[51]),
        .Q(sig_calc_error_reg_reg_0[1]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[52]),
        .Q(sig_calc_error_reg_reg_0[2]),
        .R(sig_input_cache_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_input_tag_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_input_reg11_out),
        .D(out[53]),
        .Q(sig_calc_error_reg_reg_0[3]),
        .R(sig_input_cache_type_reg0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    sig_last_addr_offset_im2
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(sig_last_addr_offset_im2__0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
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
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h000E)) 
    sig_ld_xfer_reg_tmp_i_1
       (.I0(sig_ld_xfer_reg_tmp),
        .I1(sig_sm_ld_calc3_reg),
        .I2(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I3(sig_mmap_reset_reg),
        .O(sig_ld_xfer_reg_tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_tmp_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_tmp_i_1_n_0),
        .Q(sig_ld_xfer_reg_tmp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_reset_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(sig_mmap_reset_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_no_btt_residue_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I4(sig_no_btt_residue_ireg1_i_2_n_0),
        .I5(sig_no_btt_residue_ireg1_i_3_n_0),
        .O(sig_no_btt_residue_im0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_no_btt_residue_ireg1_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_no_btt_residue_ireg1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_no_btt_residue_ireg1_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .O(sig_no_btt_residue_ireg1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_no_btt_residue_ireg1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(sig_no_btt_residue_im0),
        .Q(sig_no_btt_residue_ireg1),
        .R(sig_mmap_reset_reg));
  LUT5 #(
    .INIT(32'h00001510)) 
    sig_parent_done_i_1
       (.I0(sig_mmap_reset_reg),
        .I1(sig_mstr2data_sequential),
        .I2(sig_ld_xfer_reg_tmp),
        .I3(sig_parent_done),
        .I4(sig_push_input_reg11_out),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(sig_addr_cntr_incr_ireg2[12]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(sig_addr_cntr_incr_ireg2[11]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(sig_addr_cntr_incr_ireg2[10]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(sig_addr_cntr_incr_ireg2[9]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_6 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(sig_addr_cntr_incr_ireg2[8]),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_6_n_0 ));
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
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[0]),
        .Q(sig_predict_addr_lsh_ireg3__0[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[10]),
        .Q(sig_predict_addr_lsh_ireg3__0[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[11]),
        .Q(sig_predict_addr_lsh_ireg3__0[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[12]),
        .Q(sig_predict_addr_lsh_ireg3__0[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[13]),
        .Q(sig_predict_addr_lsh_ireg3__0[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[14]),
        .Q(sig_predict_addr_lsh_ireg3__0[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[15] 
       (.C(m_axi_mm2s_aclk),
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
        .S({p_1_in,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[15]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[15]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[15]_i_5_n_0 ,\sig_predict_addr_lsh_ireg3[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[1]),
        .Q(sig_predict_addr_lsh_ireg3__0[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[2]),
        .Q(sig_predict_addr_lsh_ireg3__0[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[3]),
        .Q(sig_predict_addr_lsh_ireg3__0[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[4]),
        .Q(sig_predict_addr_lsh_ireg3__0[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[5]),
        .Q(sig_predict_addr_lsh_ireg3__0[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[6]),
        .Q(sig_predict_addr_lsh_ireg3__0[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[7] 
       (.C(m_axi_mm2s_aclk),
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
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[8]),
        .Q(sig_predict_addr_lsh_ireg3__0[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_predict_addr_lsh_im2[9]),
        .Q(sig_predict_addr_lsh_ireg3__0[9]),
        .R(sig_mmap_reset_reg));
  LUT4 #(
    .INIT(16'hFFEA)) 
    sig_sm_halt_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I2(sig_calc_error_pushed),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_calc2_reg),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc3_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg),
        .Q(sig_sm_ld_calc3_reg),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_sm_pop_input_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I1(sig_parent_done),
        .I2(sig_calc_error_pushed),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .Q(sig_strbgen_addr_ireg2[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .Q(sig_strbgen_addr_ireg2[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .Q(sig_strbgen_addr_ireg2[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .Q(sig_strbgen_addr_ireg2[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .Q(sig_strbgen_addr_ireg2[4]),
        .R(sig_mmap_reset_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strbgen_bytes_ireg2[4]_i_1 
       (.I0(sig_mmap_reset_reg),
        .I1(sig_strbgen_bytes_ireg2),
        .O(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \sig_strbgen_bytes_ireg2[4]_i_2 
       (.I0(sig_sm_ld_calc2_reg),
        .I1(\sig_strbgen_bytes_ireg2[4]_i_3_n_0 ),
        .I2(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ),
        .I3(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ),
        .I4(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ),
        .I5(\sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ),
        .O(sig_strbgen_bytes_ireg2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0D)) 
    \sig_strbgen_bytes_ireg2[4]_i_3 
       (.I0(sig_first_xfer_im0),
        .I1(sig_addr_aligned_ireg1),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ),
        .I4(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ),
        .I5(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .O(\sig_strbgen_bytes_ireg2[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \sig_strbgen_bytes_ireg2[5]_i_1 
       (.I0(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .I1(sig_sm_ld_calc2_reg),
        .I2(sig_strbgen_bytes_ireg2),
        .I3(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .O(\sig_strbgen_bytes_ireg2[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[0] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[1] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[2] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[3] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[4] ),
        .R(\sig_strbgen_bytes_ireg2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_ireg2_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_ireg2[5]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_ireg2_reg_n_0_[5] ),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFEEEAAAB)) 
    \sig_xfer_end_strb_ireg3[10]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hEEEEAAAB)) 
    \sig_xfer_end_strb_ireg3[11]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hEEEAAAAB)) 
    \sig_xfer_end_strb_ireg3[12]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hEEAAAAAB)) 
    \sig_xfer_end_strb_ireg3[13]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAB)) 
    \sig_xfer_end_strb_ireg3[14]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \sig_xfer_end_strb_ireg3[15]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hAAAAAA89)) 
    \sig_xfer_end_strb_ireg3[17]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hAAAAA889)) 
    \sig_xfer_end_strb_ireg3[18]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hAAAA8889)) 
    \sig_xfer_end_strb_ireg3[19]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \sig_xfer_end_strb_ireg3[1]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hAAAA8881)) 
    \sig_xfer_end_strb_ireg3[20]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hAAAA8801)) 
    \sig_xfer_end_strb_ireg3[21]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hAAAA8001)) 
    \sig_xfer_end_strb_ireg3[22]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hAAAA0001)) 
    \sig_xfer_end_strb_ireg3[23]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hAAA80001)) 
    \sig_xfer_end_strb_ireg3[24]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hAA880001)) 
    \sig_xfer_end_strb_ireg3[25]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hA8880001)) 
    \sig_xfer_end_strb_ireg3[26]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h88880001)) 
    \sig_xfer_end_strb_ireg3[27]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h88800001)) 
    \sig_xfer_end_strb_ireg3[28]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h88000001)) 
    \sig_xfer_end_strb_ireg3[29]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEF)) 
    \sig_xfer_end_strb_ireg3[2]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    \sig_xfer_end_strb_ireg3[30]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \sig_xfer_end_strb_ireg3[31]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEF)) 
    \sig_xfer_end_strb_ireg3[3]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEB)) 
    \sig_xfer_end_strb_ireg3[4]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFFFEEAB)) 
    \sig_xfer_end_strb_ireg3[5]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAB)) 
    \sig_xfer_end_strb_ireg3[6]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFFAAAB)) 
    \sig_xfer_end_strb_ireg3[7]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAB)) 
    \sig_xfer_end_strb_ireg3[8]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFEEAAAB)) 
    \sig_xfer_end_strb_ireg3[9]_i_1 
       (.I0(sig_finish_addr_offset_ireg2[4]),
        .I1(sig_finish_addr_offset_ireg2[2]),
        .I2(sig_finish_addr_offset_ireg2[0]),
        .I3(sig_finish_addr_offset_ireg2[1]),
        .I4(sig_finish_addr_offset_ireg2[3]),
        .O(\sig_xfer_end_strb_ireg3[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(1'b1),
        .Q(sig_xfer_end_strb_ireg3[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[10]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[11]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[12]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[13]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[14]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[15]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_last_addr_offset_im2__0),
        .Q(sig_xfer_end_strb_ireg3[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[17]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[18]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[19]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[1]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[20]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[21]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[22]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[23]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[24]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[25]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[26]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[27]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[28]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[29]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[2]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[30]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[31]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[3]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[4]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[5]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[6]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[7]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[8]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_ireg3_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\sig_xfer_end_strb_ireg3[9]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_ireg3[9]),
        .R(sig_mmap_reset_reg));
  LUT3 #(
    .INIT(8'h28)) 
    sig_xfer_len_eq_0_ireg3_i_1
       (.I0(sig_xfer_len_eq_0_ireg3_i_2_n_0),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .I2(sig_xfer_len_eq_0_ireg3_i_3_n_0),
        .O(sig_xfer_len_eq_0_im2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_xfer_len_eq_0_ireg3_i_2
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ),
        .I5(\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ),
        .O(sig_xfer_len_eq_0_ireg3_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_xfer_len_eq_0_ireg3_i_3
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .I1(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .I2(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .I3(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .I4(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .O(sig_xfer_len_eq_0_ireg3_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_len_eq_0_ireg3_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_len_eq_0_im2),
        .Q(sig_xfer_len_eq_0_ireg3),
        .R(sig_mmap_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFF3A)) 
    sig_xfer_reg_empty_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0 ),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_mmap_reset_reg),
        .O(sig_xfer_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_xfer_reg_empty_i_1_n_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(\GEN_32BIT_CASE.lsig_start_vect ),
        .Q(sig_xfer_strt_strb_ireg3[0]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[10]),
        .Q(sig_xfer_strt_strb_ireg3[10]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[11]),
        .Q(sig_xfer_strt_strb_ireg3[11]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[12]),
        .Q(sig_xfer_strt_strb_ireg3[12]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[13]),
        .Q(sig_xfer_strt_strb_ireg3[13]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[14]),
        .Q(sig_xfer_strt_strb_ireg3[14]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(g0_b15_n_0),
        .Q(sig_xfer_strt_strb_ireg3[15]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[16]),
        .Q(sig_xfer_strt_strb_ireg3[16]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[17]),
        .Q(sig_xfer_strt_strb_ireg3[17]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[18]),
        .Q(sig_xfer_strt_strb_ireg3[18]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[19]),
        .Q(sig_xfer_strt_strb_ireg3[19]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[1]),
        .Q(sig_xfer_strt_strb_ireg3[1]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[20]),
        .Q(sig_xfer_strt_strb_ireg3[20]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[21]),
        .Q(sig_xfer_strt_strb_ireg3[21]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[22]),
        .Q(sig_xfer_strt_strb_ireg3[22]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[23]),
        .Q(sig_xfer_strt_strb_ireg3[23]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[24]),
        .Q(sig_xfer_strt_strb_ireg3[24]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[25]),
        .Q(sig_xfer_strt_strb_ireg3[25]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[26]),
        .Q(sig_xfer_strt_strb_ireg3[26]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[27]),
        .Q(sig_xfer_strt_strb_ireg3[27]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[28]),
        .Q(sig_xfer_strt_strb_ireg3[28]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[29]),
        .Q(sig_xfer_strt_strb_ireg3[29]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[2]),
        .Q(sig_xfer_strt_strb_ireg3[2]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[30]),
        .Q(sig_xfer_strt_strb_ireg3[30]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(g0_b31_n_0),
        .Q(sig_xfer_strt_strb_ireg3[31]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[3]),
        .Q(sig_xfer_strt_strb_ireg3[3]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[4]),
        .Q(sig_xfer_strt_strb_ireg3[4]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[5]),
        .Q(sig_xfer_strt_strb_ireg3[5]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[6]),
        .Q(sig_xfer_strt_strb_ireg3[6]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[7]),
        .Q(sig_xfer_strt_strb_ireg3[7]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[8]),
        .Q(sig_xfer_strt_strb_ireg3[8]),
        .R(sig_mmap_reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_ireg3_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_sm_ld_calc3_reg),
        .D(sig_xfer_strt_strb_im2[9]),
        .Q(sig_xfer_strt_strb_ireg3[9]),
        .R(sig_mmap_reset_reg));
endmodule

(* ORIG_REF_NAME = "axi_datamover_rd_sf" *) 
module ps_axi_datamover_0_1_axi_datamover_rd_sf
   (full,
    dout,
    FIFO_Full_reg,
    sig_init_done,
    sig_sf_allow_addr_req,
    sig_inhibit_rdy_n,
    FIFO_Full_reg_0,
    sig_last_skid_mux_out,
    sig_sf2dre_wlast,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ,
    SS,
    m_axi_mm2s_aclk,
    sig_good_sin_strm_dbeat,
    din,
    sig_init_done_reg,
    sig_mstr2sf_cmd_valid,
    out,
    \sig_token_cntr_reg[1]_0 ,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg_1 ,
    sig_last_reg_out_reg,
    sig_last_skid_reg,
    sig_mmap_rst_reg_n);
  output full;
  output [287:0]dout;
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_sf_allow_addr_req;
  output sig_inhibit_rdy_n;
  output FIFO_Full_reg_0;
  output sig_last_skid_mux_out;
  output sig_sf2dre_wlast;
  output \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_good_sin_strm_dbeat;
  input [289:0]din;
  input sig_init_done_reg;
  input sig_mstr2sf_cmd_valid;
  input out;
  input \sig_token_cntr_reg[1]_0 ;
  input \OMIT_UNPACKING.lsig_cmd_loaded_reg_1 ;
  input sig_last_reg_out_reg;
  input sig_last_skid_reg;
  input sig_mmap_rst_reg_n;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire I_DATA_FIFO_n_293;
  wire I_DATA_FIFO_n_294;
  wire \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO_n_3 ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg_1 ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]SS;
  wire [289:0]din;
  wire [287:0]dout;
  wire full;
  wire m_axi_mm2s_aclk;
  wire out;
  wire sig_good_sin_strm_dbeat;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_last_reg_out_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2sf_cmd_valid;
  wire sig_ok_to_post_rd_addr_i_3_n_0;
  wire sig_ok_to_post_rd_addr_i_4_n_0;
  wire sig_sf2dre_wlast;
  wire sig_sf_allow_addr_req;
  wire \sig_token_cntr[0]_i_1_n_0 ;
  wire \sig_token_cntr[1]_i_1_n_0 ;
  wire \sig_token_cntr[2]_i_1_n_0 ;
  wire \sig_token_cntr[3]_i_1_n_0 ;
  wire \sig_token_cntr[3]_i_2_n_0 ;
  wire [3:0]sig_token_cntr_reg;
  wire \sig_token_cntr_reg[1]_0 ;

  ps_axi_datamover_0_1_axi_datamover_sfifo_autord I_DATA_FIFO
       (.\OMIT_UNPACKING.lsig_cmd_loaded (\OMIT_UNPACKING.lsig_cmd_loaded ),
        .\OMIT_UNPACKING.lsig_cmd_loaded_reg (\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 (\OMIT_UNPACKING.lsig_cmd_loaded_reg_1 ),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO_n_3 ),
        .SS(SS),
        .din(din),
        .dout(dout),
        .full(full),
        .\gwdc.wr_data_count_i_reg[10] (I_DATA_FIFO_n_293),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_good_sin_strm_dbeat(sig_good_sin_strm_dbeat),
        .sig_last_reg_out_reg(sig_last_reg_out_reg),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_ok_to_post_rd_addr_reg(sig_ok_to_post_rd_addr_i_3_n_0),
        .sig_ok_to_post_rd_addr_reg_0(sig_ok_to_post_rd_addr_i_4_n_0),
        .sig_ok_to_post_rd_addr_reg_1(sig_token_cntr_reg),
        .sig_s_ready_out_reg(I_DATA_FIFO_n_294),
        .sig_sf2dre_wlast(sig_sf2dre_wlast));
  ps_axi_datamover_0_1_axi_datamover_fifo__parameterized0_0 \OMIT_DRE_CNTL.I_DRE_CNTL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(FIFO_Full_reg_0),
        .\OMIT_UNPACKING.lsig_ld_cmd (\OMIT_UNPACKING.lsig_ld_cmd ),
        .Q(\OMIT_DRE_CNTL.I_DRE_CNTL_FIFO_n_3 ),
        .SS(SS),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_mstr2sf_cmd_valid(sig_mstr2sf_cmd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \OMIT_UNPACKING.lsig_cmd_loaded_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(I_DATA_FIFO_n_294),
        .Q(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sig_ok_to_post_rd_addr_i_3
       (.I0(sig_token_cntr_reg[1]),
        .I1(sig_token_cntr_reg[0]),
        .I2(sig_token_cntr_reg[3]),
        .I3(sig_token_cntr_reg[2]),
        .O(sig_ok_to_post_rd_addr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    sig_ok_to_post_rd_addr_i_4
       (.I0(sig_token_cntr_reg[1]),
        .I1(sig_token_cntr_reg[0]),
        .I2(sig_token_cntr_reg[3]),
        .I3(sig_token_cntr_reg[2]),
        .O(sig_ok_to_post_rd_addr_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ok_to_post_rd_addr_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(I_DATA_FIFO_n_293),
        .Q(sig_sf_allow_addr_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_token_cntr[0]_i_1 
       (.I0(sig_token_cntr_reg[0]),
        .O(\sig_token_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF55005500B8FF)) 
    \sig_token_cntr[1]_i_1 
       (.I0(out),
        .I1(sig_token_cntr_reg[2]),
        .I2(sig_token_cntr_reg[3]),
        .I3(\sig_token_cntr_reg[1]_0 ),
        .I4(sig_token_cntr_reg[1]),
        .I5(sig_token_cntr_reg[0]),
        .O(\sig_token_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99CCCC74CCCCCC33)) 
    \sig_token_cntr[2]_i_1 
       (.I0(out),
        .I1(sig_token_cntr_reg[2]),
        .I2(sig_token_cntr_reg[3]),
        .I3(sig_token_cntr_reg[0]),
        .I4(sig_token_cntr_reg[1]),
        .I5(\sig_token_cntr_reg[1]_0 ),
        .O(\sig_token_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555756AAAAA8AA)) 
    \sig_token_cntr[3]_i_1 
       (.I0(\sig_token_cntr_reg[1]_0 ),
        .I1(sig_token_cntr_reg[1]),
        .I2(sig_token_cntr_reg[0]),
        .I3(sig_token_cntr_reg[3]),
        .I4(sig_token_cntr_reg[2]),
        .I5(out),
        .O(\sig_token_cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FC017F80FC01)) 
    \sig_token_cntr[3]_i_2 
       (.I0(\sig_token_cntr_reg[1]_0 ),
        .I1(sig_token_cntr_reg[1]),
        .I2(sig_token_cntr_reg[0]),
        .I3(sig_token_cntr_reg[3]),
        .I4(sig_token_cntr_reg[2]),
        .I5(out),
        .O(\sig_token_cntr[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[3]_i_1_n_0 ),
        .D(\sig_token_cntr[0]_i_1_n_0 ),
        .Q(sig_token_cntr_reg[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[3]_i_1_n_0 ),
        .D(\sig_token_cntr[1]_i_1_n_0 ),
        .Q(sig_token_cntr_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[3]_i_1_n_0 ),
        .D(\sig_token_cntr[2]_i_1_n_0 ),
        .Q(sig_token_cntr_reg[2]),
        .R(SS));
  FDSE #(
    .INIT(1'b0)) 
    \sig_token_cntr_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_token_cntr[3]_i_1_n_0 ),
        .D(\sig_token_cntr[3]_i_2_n_0 ),
        .Q(sig_token_cntr_reg[3]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "axi_datamover_rd_status_cntl" *) 
module ps_axi_datamover_0_1_axi_datamover_rd_status_cntl
   (sig_rsc2stat_status_valid,
    sig_rsc2data_ready,
    in,
    SR,
    m_axi_mm2s_aclk,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_slverr_reg0,
    sig_rd_sts_okay_reg0,
    sig_data2rsc_valid,
    sig_data2rsc_decerr,
    D);
  output sig_rsc2stat_status_valid;
  output sig_rsc2data_ready;
  output [0:7]in;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_rd_sts_interr_reg0;
  input sig_rd_sts_slverr_reg0;
  input sig_rd_sts_okay_reg0;
  input sig_data2rsc_valid;
  input sig_data2rsc_decerr;
  input [3:0]D;

  wire [3:0]D;
  wire [0:0]SR;
  wire [0:7]in;
  wire m_axi_mm2s_aclk;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_valid;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_okay_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rsc2data_ready;
  wire sig_rsc2stat_status_valid;

  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(in[2]),
        .I1(sig_data2rsc_decerr),
        .O(sig_rd_sts_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(in[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(in[3]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_okay_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_okay_reg0),
        .Q(in[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b0),
        .Q(sig_rsc2data_ready),
        .S(SR));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_reg_full_i_2
       (.I0(sig_rsc2data_ready),
        .I1(sig_data2rsc_valid),
        .O(sig_push_rd_sts_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b1),
        .Q(sig_rsc2stat_status_valid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_rd_sts_tag_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(D[0]),
        .Q(in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_rd_sts_tag_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(D[1]),
        .Q(in[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_rd_sts_tag_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(D[2]),
        .Q(in[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_rd_sts_tag_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(D[3]),
        .Q(in[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_rddata_cntl" *) 
module ps_axi_datamover_0_1_axi_datamover_rddata_cntl
   (FIFO_Full_reg,
    sig_data2rsc_valid,
    sig_last_mmap_dbeat_reg_reg_0,
    sig_data2rsc_decerr,
    sig_init_done,
    sig_inhibit_rdy_n,
    sig_good_sin_strm_dbeat,
    \USE_SRL_FIFO.sig_wr_fifo ,
    sig_rd_sts_okay_reg0,
    sig_rd_sts_slverr_reg0,
    sig_rd_sts_interr_reg0,
    m_axi_mm2s_rready,
    din,
    Q,
    SR,
    m_axi_mm2s_aclk,
    sig_init_done_reg,
    sig_mstr2data_cmd_valid,
    m_axi_mm2s_rlast,
    sig_mmap_rst_reg_n,
    sig_rsc2data_ready,
    out,
    sig_inhibit_rdy_n_0,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    in,
    full,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rresp,
    sig_next_calc_error_reg_reg_0);
  output FIFO_Full_reg;
  output sig_data2rsc_valid;
  output sig_last_mmap_dbeat_reg_reg_0;
  output sig_data2rsc_decerr;
  output sig_init_done;
  output sig_inhibit_rdy_n;
  output sig_good_sin_strm_dbeat;
  output \USE_SRL_FIFO.sig_wr_fifo ;
  output sig_rd_sts_okay_reg0;
  output sig_rd_sts_slverr_reg0;
  output sig_rd_sts_interr_reg0;
  output m_axi_mm2s_rready;
  output [33:0]din;
  output [3:0]Q;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_init_done_reg;
  input sig_mstr2data_cmd_valid;
  input m_axi_mm2s_rlast;
  input sig_mmap_rst_reg_n;
  input sig_rsc2data_ready;
  input out;
  input sig_inhibit_rdy_n_0;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input [2:0]in;
  input full;
  input m_axi_mm2s_rvalid;
  input [1:0]m_axi_mm2s_rresp;
  input [78:0]sig_next_calc_error_reg_reg_0;

  wire FIFO_Full_reg;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_90 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_91 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [33:0]din;
  wire full;
  wire [2:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire out;
  wire [7:0]p_1_in;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[0]_i_2_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_cmd_cmplt_last_dbeat;
  wire [85:0]sig_cmd_fifo_data_out;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_okay_reg_i_1_n_0;
  wire sig_coelsc_slverr_reg0;
  wire \sig_coelsc_tag_reg[3]_i_1_n_0 ;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_okay;
  wire sig_data2rsc_slverr;
  wire sig_data2rsc_valid;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr[7]_i_4_n_0 ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat;
  wire sig_first_dbeat_i_2_n_0;
  wire sig_good_sin_strm_dbeat;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_0;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire [78:0]sig_next_calc_error_reg_reg_0;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_eof_reg;
  wire [31:0]sig_next_last_strb_reg;
  wire sig_next_sequential_reg;
  wire [31:0]sig_next_strt_strb_reg;
  wire [3:0]sig_next_tag_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_dqual_reg;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_okay_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rsc2data_ready;
  wire sig_rsc2stat_status_valid;

  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_10 
       (.I0(sig_next_strt_strb_reg[26]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[26]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[26]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_11 
       (.I0(sig_next_strt_strb_reg[25]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[25]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[25]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_12 
       (.I0(sig_next_strt_strb_reg[24]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[24]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[24]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_13 
       (.I0(sig_next_strt_strb_reg[23]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[23]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[23]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_14 
       (.I0(sig_next_strt_strb_reg[22]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[22]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[22]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_15 
       (.I0(sig_next_strt_strb_reg[21]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[21]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[21]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_16 
       (.I0(sig_next_strt_strb_reg[20]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[20]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[20]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_17 
       (.I0(sig_next_strt_strb_reg[19]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[19]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[19]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_18 
       (.I0(sig_next_strt_strb_reg[18]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[18]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[18]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_19 
       (.I0(sig_next_strt_strb_reg[17]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[17]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[17]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_20 
       (.I0(sig_next_strt_strb_reg[16]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[16]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[16]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_21 
       (.I0(sig_next_strt_strb_reg[15]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[15]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[15]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_22 
       (.I0(sig_next_strt_strb_reg[14]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[14]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[14]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_23 
       (.I0(sig_next_strt_strb_reg[13]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[13]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[13]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_24 
       (.I0(sig_next_strt_strb_reg[12]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[12]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[12]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_25 
       (.I0(sig_next_strt_strb_reg[11]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[11]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[11]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_26 
       (.I0(sig_next_strt_strb_reg[10]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[10]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[10]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_27 
       (.I0(sig_next_strt_strb_reg[9]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[9]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[9]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_28 
       (.I0(sig_next_strt_strb_reg[8]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[8]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[8]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_29 
       (.I0(sig_next_strt_strb_reg[7]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[7]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[7]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_3 
       (.I0(m_axi_mm2s_rlast),
        .I1(sig_next_cmd_cmplt_reg),
        .O(din[33]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_30 
       (.I0(sig_next_strt_strb_reg[6]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[6]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[6]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_31 
       (.I0(sig_next_strt_strb_reg[5]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[5]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[5]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_32 
       (.I0(sig_next_strt_strb_reg[4]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[4]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[4]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_33 
       (.I0(sig_next_strt_strb_reg[3]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[3]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[3]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_34 
       (.I0(sig_next_strt_strb_reg[2]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[2]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[2]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_35 
       (.I0(sig_next_strt_strb_reg[1]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[1]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[1]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_36 
       (.I0(sig_next_strt_strb_reg[0]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[0]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_4 
       (.I0(m_axi_mm2s_rlast),
        .I1(sig_next_eof_reg),
        .O(din[32]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_5 
       (.I0(sig_next_strt_strb_reg[31]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[31]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[31]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_6 
       (.I0(sig_next_strt_strb_reg[30]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[30]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[30]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_7 
       (.I0(sig_next_strt_strb_reg[29]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[29]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[29]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_8 
       (.I0(sig_next_strt_strb_reg[28]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[28]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[28]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_9 
       (.I0(sig_next_strt_strb_reg[27]),
        .I1(sig_first_dbeat),
        .I2(sig_next_last_strb_reg[27]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(din[27]));
  ps_axi_datamover_0_1_axi_datamover_fifo__parameterized2 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D(p_1_in),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .FIFO_Full_reg(FIFO_Full_reg),
        .Q(sig_dbeat_cntr),
        .SR(SR),
        .full(full),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rlast_0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axi_mm2s_rvalid_0(sig_good_sin_strm_dbeat),
        .out({sig_cmd_fifo_data_out[85:82],sig_cmd_fifo_data_out[80:17],sig_cmd_fifo_data_out[3:0]}),
        .sel(\USE_SRL_FIFO.sig_wr_fifo ),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[2] (\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .\sig_dbeat_cntr_reg[0] (\sig_dbeat_cntr[7]_i_3_n_0 ),
        .\sig_dbeat_cntr_reg[0]_0 (sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr[7]_i_4_n_0 ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_last_dbeat_reg_n_0),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_first_dbeat(sig_first_dbeat),
        .sig_first_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .sig_first_dbeat_reg_0(sig_first_dbeat_i_2_n_0),
        .sig_inhibit_rdy_n_0(sig_inhibit_rdy_n_0),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_last_dbeat_reg(sig_last_dbeat_i_2_n_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mmap_rst_reg_n(sig_mmap_rst_reg_n),
        .sig_mmap_rst_reg_n_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_90 ),
        .sig_mmap_rst_reg_n_reg_0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_91 ),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(sig_next_calc_error_reg_reg_0),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_push_dqual_reg(sig_push_dqual_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  LUT5 #(
    .INIT(32'h00000002)) 
    m_axi_mm2s_rready_INST_0
       (.I0(sig_dqual_reg_full),
        .I1(sig_next_calc_error_reg),
        .I2(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .I3(sig_data2rsc_valid),
        .I4(full),
        .O(m_axi_mm2s_rready));
  LUT5 #(
    .INIT(32'h007FFE00)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg_reg_0),
        .I4(out),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_addr_posted_cntr[0]_i_2 
       (.I0(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hCCBCC2CC)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg_reg_0),
        .I4(out),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hAAEAA8AA)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg_reg_0),
        .I4(out),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .D(\sig_addr_posted_cntr[0]_i_2_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_cmd_cmplt_reg_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(sig_next_cmd_cmplt_reg),
        .I2(m_axi_mm2s_rlast),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_cmd_cmplt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_data2rsc_valid),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(sig_data2rsc_decerr),
        .I1(m_axi_mm2s_rvalid),
        .I2(m_axi_mm2s_rresp[1]),
        .I3(m_axi_mm2s_rresp[0]),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_data2rsc_decerr),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_data2rsc_calc_err),
        .I1(sig_next_calc_error_reg),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_data2rsc_calc_err),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    sig_coelsc_okay_reg_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(m_axi_mm2s_rresp[1]),
        .I2(m_axi_mm2s_rvalid),
        .O(sig_coelsc_okay_reg_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    sig_coelsc_okay_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_okay_reg_i_1_n_0),
        .Q(sig_data2rsc_okay),
        .S(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(sig_data2rsc_slverr),
        .I1(m_axi_mm2s_rresp[0]),
        .I2(m_axi_mm2s_rvalid),
        .I3(m_axi_mm2s_rresp[1]),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_data2rsc_slverr),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    \sig_coelsc_tag_reg[3]_i_1 
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_rsc2data_ready),
        .I3(sig_data2rsc_valid),
        .I4(sig_mmap_rst_reg_n),
        .O(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \sig_coelsc_tag_reg[3]_i_2 
       (.I0(sig_good_sin_strm_dbeat),
        .I1(sig_next_calc_error_reg),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_push_coelsc_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_coelsc_tag_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_next_tag_reg[0]),
        .Q(Q[0]),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_coelsc_tag_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_next_tag_reg[1]),
        .Q(Q[1]),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_coelsc_tag_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_next_tag_reg[2]),
        .Q(Q[2]),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_coelsc_tag_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_next_tag_reg[3]),
        .Q(Q[3]),
        .R(\sig_coelsc_tag_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I1(sig_dbeat_cntr[7]),
        .I2(sig_dbeat_cntr[6]),
        .I3(sig_dbeat_cntr[4]),
        .I4(sig_dbeat_cntr[5]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[3]),
        .I3(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[0]),
        .Q(sig_dbeat_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[1]),
        .Q(sig_dbeat_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[2]),
        .Q(sig_dbeat_cntr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[3]),
        .Q(sig_dbeat_cntr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[4]),
        .Q(sig_dbeat_cntr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[5]),
        .Q(sig_dbeat_cntr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[6]),
        .Q(sig_dbeat_cntr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_89 ),
        .D(p_1_in[7]),
        .Q(sig_dbeat_cntr[7]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b1),
        .Q(sig_dqual_reg_full),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    sig_first_dbeat_i_2
       (.I0(sig_good_sin_strm_dbeat),
        .I1(sig_dbeat_cntr[5]),
        .I2(sig_dbeat_cntr[4]),
        .I3(sig_dbeat_cntr[6]),
        .I4(sig_dbeat_cntr[7]),
        .I5(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .O(sig_first_dbeat_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .Q(sig_first_dbeat),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    sig_last_dbeat_i_2
       (.I0(sig_good_sin_strm_dbeat),
        .I1(sig_dbeat_cntr[3]),
        .I2(sig_dbeat_cntr[2]),
        .I3(sig_dbeat_cntr[0]),
        .I4(sig_dbeat_cntr[1]),
        .I5(sig_last_dbeat_i_4_n_0),
        .O(sig_last_dbeat_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_4
       (.I0(sig_dbeat_cntr[5]),
        .I1(sig_dbeat_cntr[4]),
        .I2(sig_dbeat_cntr[6]),
        .I3(sig_dbeat_cntr[7]),
        .O(sig_last_dbeat_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_91 ),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(m_axi_mm2s_rlast),
        .I1(sig_good_sin_strm_dbeat),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_90 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[85]),
        .Q(sig_next_calc_error_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[84]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[82]),
        .Q(sig_next_eof_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[49]),
        .Q(sig_next_last_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[59]),
        .Q(sig_next_last_strb_reg[10]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[60]),
        .Q(sig_next_last_strb_reg[11]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[61]),
        .Q(sig_next_last_strb_reg[12]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[62]),
        .Q(sig_next_last_strb_reg[13]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[63]),
        .Q(sig_next_last_strb_reg[14]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[64]),
        .Q(sig_next_last_strb_reg[15]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[65]),
        .Q(sig_next_last_strb_reg[16]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[66]),
        .Q(sig_next_last_strb_reg[17]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[67]),
        .Q(sig_next_last_strb_reg[18]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[68]),
        .Q(sig_next_last_strb_reg[19]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[50]),
        .Q(sig_next_last_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[69]),
        .Q(sig_next_last_strb_reg[20]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[70]),
        .Q(sig_next_last_strb_reg[21]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[71]),
        .Q(sig_next_last_strb_reg[22]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[72]),
        .Q(sig_next_last_strb_reg[23]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[73]),
        .Q(sig_next_last_strb_reg[24]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[74]),
        .Q(sig_next_last_strb_reg[25]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[75]),
        .Q(sig_next_last_strb_reg[26]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[76]),
        .Q(sig_next_last_strb_reg[27]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[77]),
        .Q(sig_next_last_strb_reg[28]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[78]),
        .Q(sig_next_last_strb_reg[29]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[51]),
        .Q(sig_next_last_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[79]),
        .Q(sig_next_last_strb_reg[30]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[80]),
        .Q(sig_next_last_strb_reg[31]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[52]),
        .Q(sig_next_last_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[53]),
        .Q(sig_next_last_strb_reg[4]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[54]),
        .Q(sig_next_last_strb_reg[5]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[55]),
        .Q(sig_next_last_strb_reg[6]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[56]),
        .Q(sig_next_last_strb_reg[7]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[57]),
        .Q(sig_next_last_strb_reg[8]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[58]),
        .Q(sig_next_last_strb_reg[9]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[83]),
        .Q(sig_next_sequential_reg),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[17]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[27]),
        .Q(sig_next_strt_strb_reg[10]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[28]),
        .Q(sig_next_strt_strb_reg[11]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[29]),
        .Q(sig_next_strt_strb_reg[12]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[30]),
        .Q(sig_next_strt_strb_reg[13]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[31]),
        .Q(sig_next_strt_strb_reg[14]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[32]),
        .Q(sig_next_strt_strb_reg[15]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[33]),
        .Q(sig_next_strt_strb_reg[16]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[34]),
        .Q(sig_next_strt_strb_reg[17]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[35]),
        .Q(sig_next_strt_strb_reg[18]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[36]),
        .Q(sig_next_strt_strb_reg[19]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[18]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[37]),
        .Q(sig_next_strt_strb_reg[20]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[38]),
        .Q(sig_next_strt_strb_reg[21]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[39]),
        .Q(sig_next_strt_strb_reg[22]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[40]),
        .Q(sig_next_strt_strb_reg[23]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[41]),
        .Q(sig_next_strt_strb_reg[24]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[42]),
        .Q(sig_next_strt_strb_reg[25]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[43]),
        .Q(sig_next_strt_strb_reg[26]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[44]),
        .Q(sig_next_strt_strb_reg[27]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[45]),
        .Q(sig_next_strt_strb_reg[28]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[46]),
        .Q(sig_next_strt_strb_reg[29]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[19]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[47]),
        .Q(sig_next_strt_strb_reg[30]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[48]),
        .Q(sig_next_strt_strb_reg[31]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[20]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[21]),
        .Q(sig_next_strt_strb_reg[4]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[22]),
        .Q(sig_next_strt_strb_reg[5]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[23]),
        .Q(sig_next_strt_strb_reg[6]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[24]),
        .Q(sig_next_strt_strb_reg[7]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[25]),
        .Q(sig_next_strt_strb_reg[8]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[26]),
        .Q(sig_next_strt_strb_reg[9]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[0]),
        .Q(sig_next_tag_reg[0]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[1]),
        .Q(sig_next_tag_reg[1]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[2]),
        .Q(sig_next_tag_reg[2]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_tag_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[3]),
        .Q(sig_next_tag_reg[3]),
        .R(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_data2rsc_calc_err),
        .I1(in[0]),
        .O(sig_rd_sts_interr_reg0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    sig_rd_sts_okay_reg_i_1
       (.I0(sig_data2rsc_calc_err),
        .I1(in[0]),
        .I2(sig_data2rsc_okay),
        .I3(sig_rd_sts_slverr_reg0),
        .I4(in[1]),
        .I5(sig_data2rsc_decerr),
        .O(sig_rd_sts_okay_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_data2rsc_slverr),
        .I1(in[2]),
        .O(sig_rd_sts_slverr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_reset" *) 
module ps_axi_datamover_0_1_axi_datamover_reset
   (sig_cmd_stat_rst_int_reg_n,
    sig_mmap_rst_reg_n,
    sig_stream_rst_reg_n,
    SR,
    sig_stream_rst_reg_n_reg_0,
    SS,
    m_axi_mm2s_aresetn,
    m_axi_mm2s_aclk);
  output sig_cmd_stat_rst_int_reg_n;
  output sig_mmap_rst_reg_n;
  output sig_stream_rst_reg_n;
  output [0:0]SR;
  output [0:0]sig_stream_rst_reg_n_reg_0;
  output [0:0]SS;
  input m_axi_mm2s_aresetn;
  input m_axi_mm2s_aclk;

  wire [0:0]SR;
  wire [0:0]SS;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_aresetn;
  wire sig_cmd_stat_rst_int_reg_n;
  (* RTL_KEEP = "true" *) wire sig_cmd_stat_rst_user_reg_n_cdc_from;
  wire sig_mmap_rst_reg_n;
  wire sig_stream_rst_reg_n;
  wire [0:0]sig_stream_rst_reg_n_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_1 
       (.I0(sig_mmap_rst_reg_n),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_i[2]_i_1__3 
       (.I0(sig_cmd_stat_rst_int_reg_n),
        .O(SS));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_int_reg_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(m_axi_mm2s_aresetn),
        .Q(sig_cmd_stat_rst_int_reg_n),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(m_axi_mm2s_aresetn),
        .Q(sig_cmd_stat_rst_user_reg_n_cdc_from),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_data_reg_out[255]_i_1 
       (.I0(sig_stream_rst_reg_n),
        .O(sig_stream_rst_reg_n_reg_0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_rst_reg_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(m_axi_mm2s_aresetn),
        .Q(sig_mmap_rst_reg_n),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_stream_rst_reg_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(m_axi_mm2s_aresetn),
        .Q(sig_stream_rst_reg_n),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_sfifo_autord" *) 
module ps_axi_datamover_0_1_axi_datamover_sfifo_autord
   (full,
    dout,
    \OMIT_UNPACKING.lsig_ld_cmd ,
    sig_last_skid_mux_out,
    sig_sf2dre_wlast,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg ,
    \gwdc.wr_data_count_i_reg[10] ,
    sig_s_ready_out_reg,
    SS,
    m_axi_mm2s_aclk,
    sig_good_sin_strm_dbeat,
    din,
    \OMIT_UNPACKING.lsig_cmd_loaded ,
    Q,
    \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ,
    sig_last_reg_out_reg,
    sig_last_skid_reg,
    sig_mmap_rst_reg_n,
    out,
    sig_ok_to_post_rd_addr_reg,
    sig_ok_to_post_rd_addr_reg_0,
    sig_ok_to_post_rd_addr_reg_1);
  output full;
  output [287:0]dout;
  output \OMIT_UNPACKING.lsig_ld_cmd ;
  output sig_last_skid_mux_out;
  output sig_sf2dre_wlast;
  output \OMIT_UNPACKING.lsig_cmd_loaded_reg ;
  output \gwdc.wr_data_count_i_reg[10] ;
  output sig_s_ready_out_reg;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_good_sin_strm_dbeat;
  input [289:0]din;
  input \OMIT_UNPACKING.lsig_cmd_loaded ;
  input [0:0]Q;
  input \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  input sig_last_reg_out_reg;
  input sig_last_skid_reg;
  input sig_mmap_rst_reg_n;
  input out;
  input sig_ok_to_post_rd_addr_reg;
  input sig_ok_to_post_rd_addr_reg_0;
  input [3:0]sig_ok_to_post_rd_addr_reg_1;

  wire \BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg ;
  wire \OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [289:0]din;
  wire [287:0]dout;
  wire full;
  wire \gwdc.wr_data_count_i_reg[10] ;
  wire m_axi_mm2s_aclk;
  wire out;
  wire [289:288]sig_data_fifo_data_out;
  wire [10:7]sig_data_fifo_wr_cnt;
  wire sig_good_sin_strm_dbeat;
  wire sig_last_reg_out_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_ok_to_post_rd_addr_i_2_n_0;
  wire sig_ok_to_post_rd_addr_i_5_n_0;
  wire sig_ok_to_post_rd_addr_reg;
  wire sig_ok_to_post_rd_addr_reg_0;
  wire [3:0]sig_ok_to_post_rd_addr_reg_1;
  wire sig_pop_data_fifo;
  wire sig_s_ready_out_reg;
  wire sig_sf2dre_wlast;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_almost_empty_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_almost_full_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_data_valid_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_dbiterr_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_overflow_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_prog_empty_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_prog_full_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_rd_rst_busy_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_sbiterr_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_underflow_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_wr_ack_UNCONNECTED ;
  wire \NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_wr_rst_busy_UNCONNECTED ;
  wire [290:290]\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_dout_UNCONNECTED ;
  wire [10:0]\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_rd_data_count_UNCONNECTED ;
  wire [6:0]\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_wr_data_count_UNCONNECTED ;

  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0001111100011111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "291" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "291" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  ps_axi_datamover_0_1_xpm_fifo_sync \BLK_MEM.I_SYNC_FIFOGEN_FIFO 
       (.almost_empty(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_almost_full_UNCONNECTED ),
        .data_valid(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_dbiterr_UNCONNECTED ),
        .din({1'b0,din}),
        .dout({\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_dout_UNCONNECTED [290],sig_data_fifo_data_out,dout}),
        .empty(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_overflow_UNCONNECTED ),
        .prog_empty(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_prog_full_UNCONNECTED ),
        .rd_data_count(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_rd_data_count_UNCONNECTED [10:0]),
        .rd_en(sig_pop_data_fifo),
        .rd_rst_busy(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_rd_rst_busy_UNCONNECTED ),
        .rst(SS),
        .sbiterr(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_underflow_UNCONNECTED ),
        .wr_ack(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_wr_ack_UNCONNECTED ),
        .wr_clk(m_axi_mm2s_aclk),
        .wr_data_count({sig_data_fifo_wr_cnt,\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_wr_data_count_UNCONNECTED [6:0]}),
        .wr_en(sig_good_sin_strm_dbeat),
        .wr_rst_busy(\NLW_BLK_MEM.I_SYNC_FIFOGEN_FIFO_wr_rst_busy_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_37 
       (.I0(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .I1(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .I2(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .O(sig_pop_data_fifo));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDFFF00FF)) 
    \OMIT_UNPACKING.lsig_cmd_loaded_i_1 
       (.I0(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .I1(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .I2(sig_data_fifo_data_out[289]),
        .I3(Q),
        .I4(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .O(sig_s_ready_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h11311111)) 
    \addr_i[2]_i_3 
       (.I0(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .I1(Q),
        .I2(sig_data_fifo_data_out[289]),
        .I3(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .I4(\OMIT_UNPACKING.lsig_cmd_loaded_reg_0 ),
        .O(\OMIT_UNPACKING.lsig_ld_cmd ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h20FF2000)) 
    sig_last_reg_out_i_1
       (.I0(sig_data_fifo_data_out[288]),
        .I1(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .I2(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .I3(sig_last_reg_out_reg),
        .I4(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h20)) 
    sig_last_skid_reg_i_1
       (.I0(sig_data_fifo_data_out[288]),
        .I1(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .I2(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .O(sig_sf2dre_wlast));
  LUT5 #(
    .INIT(32'h00000020)) 
    sig_ok_to_post_rd_addr_i_1
       (.I0(sig_ok_to_post_rd_addr_i_2_n_0),
        .I1(sig_data_fifo_wr_cnt[10]),
        .I2(sig_mmap_rst_reg_n),
        .I3(out),
        .I4(sig_ok_to_post_rd_addr_reg),
        .O(\gwdc.wr_data_count_i_reg[10] ));
  LUT6 #(
    .INIT(64'h7F00FFFF7F007F00)) 
    sig_ok_to_post_rd_addr_i_2
       (.I0(sig_data_fifo_wr_cnt[7]),
        .I1(sig_data_fifo_wr_cnt[9]),
        .I2(sig_data_fifo_wr_cnt[8]),
        .I3(sig_ok_to_post_rd_addr_reg_0),
        .I4(sig_ok_to_post_rd_addr_reg_1[3]),
        .I5(sig_ok_to_post_rd_addr_i_5_n_0),
        .O(sig_ok_to_post_rd_addr_i_2_n_0));
  LUT6 #(
    .INIT(64'h00F000B0B0FB00F0)) 
    sig_ok_to_post_rd_addr_i_5
       (.I0(sig_ok_to_post_rd_addr_reg_1[0]),
        .I1(sig_data_fifo_wr_cnt[7]),
        .I2(sig_ok_to_post_rd_addr_reg_1[2]),
        .I3(sig_data_fifo_wr_cnt[9]),
        .I4(sig_ok_to_post_rd_addr_reg_1[1]),
        .I5(sig_data_fifo_wr_cnt[8]),
        .O(sig_ok_to_post_rd_addr_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_s_ready_dup_i_2
       (.I0(\OMIT_UNPACKING.lsig_cmd_loaded ),
        .I1(\BLK_MEM.I_SYNC_FIFOGEN_FIFO_n_308 ),
        .O(\OMIT_UNPACKING.lsig_cmd_loaded_reg ));
endmodule

(* ORIG_REF_NAME = "axi_datamover_skid_buf" *) 
module ps_axi_datamover_0_1_axi_datamover_skid_buf
   (out,
    sig_s_ready_out_reg_0,
    m_axis_mm2s_tvalid,
    sig_last_skid_reg,
    m_axis_mm2s_tlast,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    SR,
    m_axi_mm2s_aclk,
    sig_sf2dre_wlast,
    sig_last_skid_mux_out,
    sig_m_valid_out_reg_0,
    m_axis_mm2s_tready,
    sig_stream_rst_reg_n,
    dout);
  output out;
  output sig_s_ready_out_reg_0;
  output m_axis_mm2s_tvalid;
  output sig_last_skid_reg;
  output m_axis_mm2s_tlast;
  output [255:0]m_axis_mm2s_tdata;
  output [31:0]m_axis_mm2s_tkeep;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_sf2dre_wlast;
  input sig_last_skid_mux_out;
  input sig_m_valid_out_reg_0;
  input m_axis_mm2s_tready;
  input sig_stream_rst_reg_n;
  input [287:0]dout;

  wire [0:0]SR;
  wire [287:0]dout;
  wire m_axi_mm2s_aclk;
  wire [255:0]m_axis_mm2s_tdata;
  wire [31:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire sig_data_reg_out_en;
  wire [255:0]sig_data_skid_mux_out;
  wire [255:0]sig_data_skid_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_m_valid_out_reg_0;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_sf2dre_wlast;
  wire [31:0]sig_strb_skid_mux_out;
  wire [31:0]sig_strb_skid_reg;
  wire sig_stream_rst_reg_n;

  assign m_axis_mm2s_tvalid = sig_m_valid_out;
  assign out = sig_s_ready_dup;
  assign sig_s_ready_out_reg_0 = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(dout[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[100]_i_1 
       (.I0(dout[100]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[100]),
        .O(sig_data_skid_mux_out[100]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[101]_i_1 
       (.I0(dout[101]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[101]),
        .O(sig_data_skid_mux_out[101]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[102]_i_1 
       (.I0(dout[102]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[102]),
        .O(sig_data_skid_mux_out[102]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[103]_i_1 
       (.I0(dout[103]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[103]),
        .O(sig_data_skid_mux_out[103]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[104]_i_1 
       (.I0(dout[104]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[104]),
        .O(sig_data_skid_mux_out[104]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[105]_i_1 
       (.I0(dout[105]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[105]),
        .O(sig_data_skid_mux_out[105]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[106]_i_1 
       (.I0(dout[106]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[106]),
        .O(sig_data_skid_mux_out[106]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[107]_i_1 
       (.I0(dout[107]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[107]),
        .O(sig_data_skid_mux_out[107]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[108]_i_1 
       (.I0(dout[108]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[108]),
        .O(sig_data_skid_mux_out[108]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[109]_i_1 
       (.I0(dout[109]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[109]),
        .O(sig_data_skid_mux_out[109]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(dout[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[110]_i_1 
       (.I0(dout[110]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[110]),
        .O(sig_data_skid_mux_out[110]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[111]_i_1 
       (.I0(dout[111]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[111]),
        .O(sig_data_skid_mux_out[111]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[112]_i_1 
       (.I0(dout[112]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[112]),
        .O(sig_data_skid_mux_out[112]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[113]_i_1 
       (.I0(dout[113]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[113]),
        .O(sig_data_skid_mux_out[113]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[114]_i_1 
       (.I0(dout[114]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[114]),
        .O(sig_data_skid_mux_out[114]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[115]_i_1 
       (.I0(dout[115]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[115]),
        .O(sig_data_skid_mux_out[115]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[116]_i_1 
       (.I0(dout[116]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[116]),
        .O(sig_data_skid_mux_out[116]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[117]_i_1 
       (.I0(dout[117]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[117]),
        .O(sig_data_skid_mux_out[117]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[118]_i_1 
       (.I0(dout[118]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[118]),
        .O(sig_data_skid_mux_out[118]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[119]_i_1 
       (.I0(dout[119]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[119]),
        .O(sig_data_skid_mux_out[119]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(dout[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[120]_i_1 
       (.I0(dout[120]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[120]),
        .O(sig_data_skid_mux_out[120]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[121]_i_1 
       (.I0(dout[121]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[121]),
        .O(sig_data_skid_mux_out[121]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[122]_i_1 
       (.I0(dout[122]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[122]),
        .O(sig_data_skid_mux_out[122]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[123]_i_1 
       (.I0(dout[123]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[123]),
        .O(sig_data_skid_mux_out[123]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[124]_i_1 
       (.I0(dout[124]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[124]),
        .O(sig_data_skid_mux_out[124]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[125]_i_1 
       (.I0(dout[125]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[125]),
        .O(sig_data_skid_mux_out[125]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[126]_i_1 
       (.I0(dout[126]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[126]),
        .O(sig_data_skid_mux_out[126]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[127]_i_1 
       (.I0(dout[127]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[127]),
        .O(sig_data_skid_mux_out[127]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[128]_i_1 
       (.I0(dout[128]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[128]),
        .O(sig_data_skid_mux_out[128]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[129]_i_1 
       (.I0(dout[129]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[129]),
        .O(sig_data_skid_mux_out[129]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(dout[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[130]_i_1 
       (.I0(dout[130]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[130]),
        .O(sig_data_skid_mux_out[130]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[131]_i_1 
       (.I0(dout[131]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[131]),
        .O(sig_data_skid_mux_out[131]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[132]_i_1 
       (.I0(dout[132]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[132]),
        .O(sig_data_skid_mux_out[132]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[133]_i_1 
       (.I0(dout[133]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[133]),
        .O(sig_data_skid_mux_out[133]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[134]_i_1 
       (.I0(dout[134]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[134]),
        .O(sig_data_skid_mux_out[134]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[135]_i_1 
       (.I0(dout[135]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[135]),
        .O(sig_data_skid_mux_out[135]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[136]_i_1 
       (.I0(dout[136]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[136]),
        .O(sig_data_skid_mux_out[136]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[137]_i_1 
       (.I0(dout[137]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[137]),
        .O(sig_data_skid_mux_out[137]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[138]_i_1 
       (.I0(dout[138]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[138]),
        .O(sig_data_skid_mux_out[138]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[139]_i_1 
       (.I0(dout[139]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[139]),
        .O(sig_data_skid_mux_out[139]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(dout[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[140]_i_1 
       (.I0(dout[140]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[140]),
        .O(sig_data_skid_mux_out[140]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[141]_i_1 
       (.I0(dout[141]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[141]),
        .O(sig_data_skid_mux_out[141]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[142]_i_1 
       (.I0(dout[142]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[142]),
        .O(sig_data_skid_mux_out[142]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[143]_i_1 
       (.I0(dout[143]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[143]),
        .O(sig_data_skid_mux_out[143]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[144]_i_1 
       (.I0(dout[144]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[144]),
        .O(sig_data_skid_mux_out[144]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[145]_i_1 
       (.I0(dout[145]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[145]),
        .O(sig_data_skid_mux_out[145]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[146]_i_1 
       (.I0(dout[146]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[146]),
        .O(sig_data_skid_mux_out[146]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[147]_i_1 
       (.I0(dout[147]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[147]),
        .O(sig_data_skid_mux_out[147]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[148]_i_1 
       (.I0(dout[148]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[148]),
        .O(sig_data_skid_mux_out[148]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[149]_i_1 
       (.I0(dout[149]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[149]),
        .O(sig_data_skid_mux_out[149]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(dout[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[150]_i_1 
       (.I0(dout[150]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[150]),
        .O(sig_data_skid_mux_out[150]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[151]_i_1 
       (.I0(dout[151]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[151]),
        .O(sig_data_skid_mux_out[151]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[152]_i_1 
       (.I0(dout[152]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[152]),
        .O(sig_data_skid_mux_out[152]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[153]_i_1 
       (.I0(dout[153]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[153]),
        .O(sig_data_skid_mux_out[153]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[154]_i_1 
       (.I0(dout[154]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[154]),
        .O(sig_data_skid_mux_out[154]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[155]_i_1 
       (.I0(dout[155]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[155]),
        .O(sig_data_skid_mux_out[155]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[156]_i_1 
       (.I0(dout[156]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[156]),
        .O(sig_data_skid_mux_out[156]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[157]_i_1 
       (.I0(dout[157]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[157]),
        .O(sig_data_skid_mux_out[157]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[158]_i_1 
       (.I0(dout[158]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[158]),
        .O(sig_data_skid_mux_out[158]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[159]_i_1 
       (.I0(dout[159]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[159]),
        .O(sig_data_skid_mux_out[159]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(dout[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[160]_i_1 
       (.I0(dout[160]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[160]),
        .O(sig_data_skid_mux_out[160]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[161]_i_1 
       (.I0(dout[161]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[161]),
        .O(sig_data_skid_mux_out[161]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[162]_i_1 
       (.I0(dout[162]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[162]),
        .O(sig_data_skid_mux_out[162]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[163]_i_1 
       (.I0(dout[163]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[163]),
        .O(sig_data_skid_mux_out[163]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[164]_i_1 
       (.I0(dout[164]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[164]),
        .O(sig_data_skid_mux_out[164]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[165]_i_1 
       (.I0(dout[165]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[165]),
        .O(sig_data_skid_mux_out[165]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[166]_i_1 
       (.I0(dout[166]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[166]),
        .O(sig_data_skid_mux_out[166]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[167]_i_1 
       (.I0(dout[167]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[167]),
        .O(sig_data_skid_mux_out[167]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[168]_i_1 
       (.I0(dout[168]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[168]),
        .O(sig_data_skid_mux_out[168]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[169]_i_1 
       (.I0(dout[169]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[169]),
        .O(sig_data_skid_mux_out[169]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(dout[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[170]_i_1 
       (.I0(dout[170]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[170]),
        .O(sig_data_skid_mux_out[170]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[171]_i_1 
       (.I0(dout[171]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[171]),
        .O(sig_data_skid_mux_out[171]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[172]_i_1 
       (.I0(dout[172]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[172]),
        .O(sig_data_skid_mux_out[172]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[173]_i_1 
       (.I0(dout[173]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[173]),
        .O(sig_data_skid_mux_out[173]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[174]_i_1 
       (.I0(dout[174]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[174]),
        .O(sig_data_skid_mux_out[174]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[175]_i_1 
       (.I0(dout[175]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[175]),
        .O(sig_data_skid_mux_out[175]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[176]_i_1 
       (.I0(dout[176]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[176]),
        .O(sig_data_skid_mux_out[176]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[177]_i_1 
       (.I0(dout[177]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[177]),
        .O(sig_data_skid_mux_out[177]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[178]_i_1 
       (.I0(dout[178]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[178]),
        .O(sig_data_skid_mux_out[178]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[179]_i_1 
       (.I0(dout[179]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[179]),
        .O(sig_data_skid_mux_out[179]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(dout[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[180]_i_1 
       (.I0(dout[180]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[180]),
        .O(sig_data_skid_mux_out[180]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[181]_i_1 
       (.I0(dout[181]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[181]),
        .O(sig_data_skid_mux_out[181]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[182]_i_1 
       (.I0(dout[182]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[182]),
        .O(sig_data_skid_mux_out[182]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[183]_i_1 
       (.I0(dout[183]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[183]),
        .O(sig_data_skid_mux_out[183]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[184]_i_1 
       (.I0(dout[184]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[184]),
        .O(sig_data_skid_mux_out[184]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[185]_i_1 
       (.I0(dout[185]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[185]),
        .O(sig_data_skid_mux_out[185]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[186]_i_1 
       (.I0(dout[186]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[186]),
        .O(sig_data_skid_mux_out[186]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[187]_i_1 
       (.I0(dout[187]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[187]),
        .O(sig_data_skid_mux_out[187]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[188]_i_1 
       (.I0(dout[188]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[188]),
        .O(sig_data_skid_mux_out[188]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[189]_i_1 
       (.I0(dout[189]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[189]),
        .O(sig_data_skid_mux_out[189]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(dout[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[190]_i_1 
       (.I0(dout[190]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[190]),
        .O(sig_data_skid_mux_out[190]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[191]_i_1 
       (.I0(dout[191]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[191]),
        .O(sig_data_skid_mux_out[191]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[192]_i_1 
       (.I0(dout[192]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[192]),
        .O(sig_data_skid_mux_out[192]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[193]_i_1 
       (.I0(dout[193]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[193]),
        .O(sig_data_skid_mux_out[193]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[194]_i_1 
       (.I0(dout[194]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[194]),
        .O(sig_data_skid_mux_out[194]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[195]_i_1 
       (.I0(dout[195]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[195]),
        .O(sig_data_skid_mux_out[195]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[196]_i_1 
       (.I0(dout[196]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[196]),
        .O(sig_data_skid_mux_out[196]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[197]_i_1 
       (.I0(dout[197]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[197]),
        .O(sig_data_skid_mux_out[197]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[198]_i_1 
       (.I0(dout[198]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[198]),
        .O(sig_data_skid_mux_out[198]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[199]_i_1 
       (.I0(dout[199]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[199]),
        .O(sig_data_skid_mux_out[199]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(dout[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(dout[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[200]_i_1 
       (.I0(dout[200]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[200]),
        .O(sig_data_skid_mux_out[200]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[201]_i_1 
       (.I0(dout[201]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[201]),
        .O(sig_data_skid_mux_out[201]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[202]_i_1 
       (.I0(dout[202]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[202]),
        .O(sig_data_skid_mux_out[202]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[203]_i_1 
       (.I0(dout[203]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[203]),
        .O(sig_data_skid_mux_out[203]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[204]_i_1 
       (.I0(dout[204]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[204]),
        .O(sig_data_skid_mux_out[204]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[205]_i_1 
       (.I0(dout[205]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[205]),
        .O(sig_data_skid_mux_out[205]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[206]_i_1 
       (.I0(dout[206]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[206]),
        .O(sig_data_skid_mux_out[206]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[207]_i_1 
       (.I0(dout[207]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[207]),
        .O(sig_data_skid_mux_out[207]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[208]_i_1 
       (.I0(dout[208]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[208]),
        .O(sig_data_skid_mux_out[208]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[209]_i_1 
       (.I0(dout[209]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[209]),
        .O(sig_data_skid_mux_out[209]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(dout[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[210]_i_1 
       (.I0(dout[210]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[210]),
        .O(sig_data_skid_mux_out[210]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[211]_i_1 
       (.I0(dout[211]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[211]),
        .O(sig_data_skid_mux_out[211]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[212]_i_1 
       (.I0(dout[212]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[212]),
        .O(sig_data_skid_mux_out[212]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[213]_i_1 
       (.I0(dout[213]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[213]),
        .O(sig_data_skid_mux_out[213]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[214]_i_1 
       (.I0(dout[214]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[214]),
        .O(sig_data_skid_mux_out[214]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[215]_i_1 
       (.I0(dout[215]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[215]),
        .O(sig_data_skid_mux_out[215]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[216]_i_1 
       (.I0(dout[216]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[216]),
        .O(sig_data_skid_mux_out[216]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[217]_i_1 
       (.I0(dout[217]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[217]),
        .O(sig_data_skid_mux_out[217]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[218]_i_1 
       (.I0(dout[218]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[218]),
        .O(sig_data_skid_mux_out[218]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[219]_i_1 
       (.I0(dout[219]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[219]),
        .O(sig_data_skid_mux_out[219]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(dout[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[220]_i_1 
       (.I0(dout[220]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[220]),
        .O(sig_data_skid_mux_out[220]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[221]_i_1 
       (.I0(dout[221]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[221]),
        .O(sig_data_skid_mux_out[221]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[222]_i_1 
       (.I0(dout[222]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[222]),
        .O(sig_data_skid_mux_out[222]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[223]_i_1 
       (.I0(dout[223]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[223]),
        .O(sig_data_skid_mux_out[223]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[224]_i_1 
       (.I0(dout[224]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[224]),
        .O(sig_data_skid_mux_out[224]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[225]_i_1 
       (.I0(dout[225]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[225]),
        .O(sig_data_skid_mux_out[225]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[226]_i_1 
       (.I0(dout[226]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[226]),
        .O(sig_data_skid_mux_out[226]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[227]_i_1 
       (.I0(dout[227]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[227]),
        .O(sig_data_skid_mux_out[227]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[228]_i_1 
       (.I0(dout[228]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[228]),
        .O(sig_data_skid_mux_out[228]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[229]_i_1 
       (.I0(dout[229]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[229]),
        .O(sig_data_skid_mux_out[229]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(dout[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[230]_i_1 
       (.I0(dout[230]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[230]),
        .O(sig_data_skid_mux_out[230]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[231]_i_1 
       (.I0(dout[231]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[231]),
        .O(sig_data_skid_mux_out[231]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[232]_i_1 
       (.I0(dout[232]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[232]),
        .O(sig_data_skid_mux_out[232]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[233]_i_1 
       (.I0(dout[233]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[233]),
        .O(sig_data_skid_mux_out[233]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[234]_i_1 
       (.I0(dout[234]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[234]),
        .O(sig_data_skid_mux_out[234]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[235]_i_1 
       (.I0(dout[235]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[235]),
        .O(sig_data_skid_mux_out[235]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[236]_i_1 
       (.I0(dout[236]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[236]),
        .O(sig_data_skid_mux_out[236]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[237]_i_1 
       (.I0(dout[237]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[237]),
        .O(sig_data_skid_mux_out[237]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[238]_i_1 
       (.I0(dout[238]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[238]),
        .O(sig_data_skid_mux_out[238]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[239]_i_1 
       (.I0(dout[239]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[239]),
        .O(sig_data_skid_mux_out[239]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(dout[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[240]_i_1 
       (.I0(dout[240]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[240]),
        .O(sig_data_skid_mux_out[240]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[241]_i_1 
       (.I0(dout[241]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[241]),
        .O(sig_data_skid_mux_out[241]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[242]_i_1 
       (.I0(dout[242]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[242]),
        .O(sig_data_skid_mux_out[242]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[243]_i_1 
       (.I0(dout[243]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[243]),
        .O(sig_data_skid_mux_out[243]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[244]_i_1 
       (.I0(dout[244]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[244]),
        .O(sig_data_skid_mux_out[244]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[245]_i_1 
       (.I0(dout[245]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[245]),
        .O(sig_data_skid_mux_out[245]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[246]_i_1 
       (.I0(dout[246]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[246]),
        .O(sig_data_skid_mux_out[246]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[247]_i_1 
       (.I0(dout[247]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[247]),
        .O(sig_data_skid_mux_out[247]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[248]_i_1 
       (.I0(dout[248]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[248]),
        .O(sig_data_skid_mux_out[248]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[249]_i_1 
       (.I0(dout[249]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[249]),
        .O(sig_data_skid_mux_out[249]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(dout[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[250]_i_1 
       (.I0(dout[250]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[250]),
        .O(sig_data_skid_mux_out[250]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[251]_i_1 
       (.I0(dout[251]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[251]),
        .O(sig_data_skid_mux_out[251]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[252]_i_1 
       (.I0(dout[252]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[252]),
        .O(sig_data_skid_mux_out[252]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[253]_i_1 
       (.I0(dout[253]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[253]),
        .O(sig_data_skid_mux_out[253]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[254]_i_1 
       (.I0(dout[254]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[254]),
        .O(sig_data_skid_mux_out[254]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[255]_i_2 
       (.I0(m_axis_mm2s_tready),
        .I1(sig_m_valid_dup),
        .O(sig_data_reg_out_en));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[255]_i_3 
       (.I0(dout[255]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[255]),
        .O(sig_data_skid_mux_out[255]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(dout[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(dout[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(dout[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(dout[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(dout[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(dout[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(dout[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(dout[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[32]_i_1 
       (.I0(dout[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[32]),
        .O(sig_data_skid_mux_out[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[33]_i_1 
       (.I0(dout[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[33]),
        .O(sig_data_skid_mux_out[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1 
       (.I0(dout[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1 
       (.I0(dout[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1 
       (.I0(dout[36]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1 
       (.I0(dout[37]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1 
       (.I0(dout[38]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1 
       (.I0(dout[39]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(dout[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[40]_i_1 
       (.I0(dout[40]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[40]),
        .O(sig_data_skid_mux_out[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[41]_i_1 
       (.I0(dout[41]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[41]),
        .O(sig_data_skid_mux_out[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1 
       (.I0(dout[42]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1 
       (.I0(dout[43]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1 
       (.I0(dout[44]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1 
       (.I0(dout[45]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1 
       (.I0(dout[46]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1 
       (.I0(dout[47]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[48]_i_1 
       (.I0(dout[48]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[48]),
        .O(sig_data_skid_mux_out[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[49]_i_1 
       (.I0(dout[49]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[49]),
        .O(sig_data_skid_mux_out[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(dout[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1 
       (.I0(dout[50]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1 
       (.I0(dout[51]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1 
       (.I0(dout[52]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1 
       (.I0(dout[53]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1 
       (.I0(dout[54]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_1 
       (.I0(dout[55]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[56]_i_1 
       (.I0(dout[56]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[56]),
        .O(sig_data_skid_mux_out[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[57]_i_1 
       (.I0(dout[57]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[57]),
        .O(sig_data_skid_mux_out[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[58]_i_1 
       (.I0(dout[58]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[58]),
        .O(sig_data_skid_mux_out[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[59]_i_1 
       (.I0(dout[59]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[59]),
        .O(sig_data_skid_mux_out[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(dout[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[60]_i_1 
       (.I0(dout[60]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[60]),
        .O(sig_data_skid_mux_out[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[61]_i_1 
       (.I0(dout[61]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[61]),
        .O(sig_data_skid_mux_out[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[62]_i_1 
       (.I0(dout[62]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[62]),
        .O(sig_data_skid_mux_out[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[63]_i_1 
       (.I0(dout[63]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[63]),
        .O(sig_data_skid_mux_out[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[64]_i_1 
       (.I0(dout[64]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[64]),
        .O(sig_data_skid_mux_out[64]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[65]_i_1 
       (.I0(dout[65]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[65]),
        .O(sig_data_skid_mux_out[65]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[66]_i_1 
       (.I0(dout[66]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[66]),
        .O(sig_data_skid_mux_out[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[67]_i_1 
       (.I0(dout[67]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[67]),
        .O(sig_data_skid_mux_out[67]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[68]_i_1 
       (.I0(dout[68]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[68]),
        .O(sig_data_skid_mux_out[68]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[69]_i_1 
       (.I0(dout[69]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[69]),
        .O(sig_data_skid_mux_out[69]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(dout[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[70]_i_1 
       (.I0(dout[70]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[70]),
        .O(sig_data_skid_mux_out[70]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[71]_i_1 
       (.I0(dout[71]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[71]),
        .O(sig_data_skid_mux_out[71]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[72]_i_1 
       (.I0(dout[72]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[72]),
        .O(sig_data_skid_mux_out[72]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[73]_i_1 
       (.I0(dout[73]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[73]),
        .O(sig_data_skid_mux_out[73]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[74]_i_1 
       (.I0(dout[74]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[74]),
        .O(sig_data_skid_mux_out[74]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[75]_i_1 
       (.I0(dout[75]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[75]),
        .O(sig_data_skid_mux_out[75]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[76]_i_1 
       (.I0(dout[76]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[76]),
        .O(sig_data_skid_mux_out[76]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[77]_i_1 
       (.I0(dout[77]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[77]),
        .O(sig_data_skid_mux_out[77]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[78]_i_1 
       (.I0(dout[78]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[78]),
        .O(sig_data_skid_mux_out[78]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[79]_i_1 
       (.I0(dout[79]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[79]),
        .O(sig_data_skid_mux_out[79]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(dout[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[80]_i_1 
       (.I0(dout[80]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[80]),
        .O(sig_data_skid_mux_out[80]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[81]_i_1 
       (.I0(dout[81]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[81]),
        .O(sig_data_skid_mux_out[81]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[82]_i_1 
       (.I0(dout[82]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[82]),
        .O(sig_data_skid_mux_out[82]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[83]_i_1 
       (.I0(dout[83]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[83]),
        .O(sig_data_skid_mux_out[83]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[84]_i_1 
       (.I0(dout[84]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[84]),
        .O(sig_data_skid_mux_out[84]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[85]_i_1 
       (.I0(dout[85]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[85]),
        .O(sig_data_skid_mux_out[85]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[86]_i_1 
       (.I0(dout[86]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[86]),
        .O(sig_data_skid_mux_out[86]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[87]_i_1 
       (.I0(dout[87]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[87]),
        .O(sig_data_skid_mux_out[87]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[88]_i_1 
       (.I0(dout[88]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[88]),
        .O(sig_data_skid_mux_out[88]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[89]_i_1 
       (.I0(dout[89]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[89]),
        .O(sig_data_skid_mux_out[89]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(dout[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[90]_i_1 
       (.I0(dout[90]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[90]),
        .O(sig_data_skid_mux_out[90]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[91]_i_1 
       (.I0(dout[91]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[91]),
        .O(sig_data_skid_mux_out[91]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[92]_i_1 
       (.I0(dout[92]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[92]),
        .O(sig_data_skid_mux_out[92]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[93]_i_1 
       (.I0(dout[93]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[93]),
        .O(sig_data_skid_mux_out[93]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[94]_i_1 
       (.I0(dout[94]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[94]),
        .O(sig_data_skid_mux_out[94]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[95]_i_1 
       (.I0(dout[95]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[95]),
        .O(sig_data_skid_mux_out[95]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[96]_i_1 
       (.I0(dout[96]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[96]),
        .O(sig_data_skid_mux_out[96]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[97]_i_1 
       (.I0(dout[97]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[97]),
        .O(sig_data_skid_mux_out[97]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[98]_i_1 
       (.I0(dout[98]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[98]),
        .O(sig_data_skid_mux_out[98]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[99]_i_1 
       (.I0(dout[99]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[99]),
        .O(sig_data_skid_mux_out[99]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(dout[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[0]),
        .Q(m_axis_mm2s_tdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[100] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[100]),
        .Q(m_axis_mm2s_tdata[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[101] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[101]),
        .Q(m_axis_mm2s_tdata[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[102] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[102]),
        .Q(m_axis_mm2s_tdata[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[103] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[103]),
        .Q(m_axis_mm2s_tdata[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[104] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[104]),
        .Q(m_axis_mm2s_tdata[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[105] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[105]),
        .Q(m_axis_mm2s_tdata[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[106] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[106]),
        .Q(m_axis_mm2s_tdata[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[107] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[107]),
        .Q(m_axis_mm2s_tdata[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[108] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[108]),
        .Q(m_axis_mm2s_tdata[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[109] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[109]),
        .Q(m_axis_mm2s_tdata[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[10]),
        .Q(m_axis_mm2s_tdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[110] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[110]),
        .Q(m_axis_mm2s_tdata[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[111] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[111]),
        .Q(m_axis_mm2s_tdata[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[112] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[112]),
        .Q(m_axis_mm2s_tdata[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[113] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[113]),
        .Q(m_axis_mm2s_tdata[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[114] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[114]),
        .Q(m_axis_mm2s_tdata[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[115] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[115]),
        .Q(m_axis_mm2s_tdata[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[116] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[116]),
        .Q(m_axis_mm2s_tdata[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[117] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[117]),
        .Q(m_axis_mm2s_tdata[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[118] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[118]),
        .Q(m_axis_mm2s_tdata[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[119] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[119]),
        .Q(m_axis_mm2s_tdata[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[11]),
        .Q(m_axis_mm2s_tdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[120] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[120]),
        .Q(m_axis_mm2s_tdata[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[121] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[121]),
        .Q(m_axis_mm2s_tdata[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[122] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[122]),
        .Q(m_axis_mm2s_tdata[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[123] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[123]),
        .Q(m_axis_mm2s_tdata[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[124] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[124]),
        .Q(m_axis_mm2s_tdata[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[125] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[125]),
        .Q(m_axis_mm2s_tdata[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[126] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[126]),
        .Q(m_axis_mm2s_tdata[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[127] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[127]),
        .Q(m_axis_mm2s_tdata[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[128] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[128]),
        .Q(m_axis_mm2s_tdata[128]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[129] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[129]),
        .Q(m_axis_mm2s_tdata[129]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[12]),
        .Q(m_axis_mm2s_tdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[130] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[130]),
        .Q(m_axis_mm2s_tdata[130]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[131] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[131]),
        .Q(m_axis_mm2s_tdata[131]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[132] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[132]),
        .Q(m_axis_mm2s_tdata[132]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[133] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[133]),
        .Q(m_axis_mm2s_tdata[133]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[134] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[134]),
        .Q(m_axis_mm2s_tdata[134]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[135] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[135]),
        .Q(m_axis_mm2s_tdata[135]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[136] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[136]),
        .Q(m_axis_mm2s_tdata[136]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[137] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[137]),
        .Q(m_axis_mm2s_tdata[137]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[138] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[138]),
        .Q(m_axis_mm2s_tdata[138]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[139] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[139]),
        .Q(m_axis_mm2s_tdata[139]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[13]),
        .Q(m_axis_mm2s_tdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[140] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[140]),
        .Q(m_axis_mm2s_tdata[140]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[141] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[141]),
        .Q(m_axis_mm2s_tdata[141]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[142] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[142]),
        .Q(m_axis_mm2s_tdata[142]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[143] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[143]),
        .Q(m_axis_mm2s_tdata[143]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[144] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[144]),
        .Q(m_axis_mm2s_tdata[144]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[145] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[145]),
        .Q(m_axis_mm2s_tdata[145]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[146] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[146]),
        .Q(m_axis_mm2s_tdata[146]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[147] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[147]),
        .Q(m_axis_mm2s_tdata[147]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[148] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[148]),
        .Q(m_axis_mm2s_tdata[148]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[149] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[149]),
        .Q(m_axis_mm2s_tdata[149]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[14]),
        .Q(m_axis_mm2s_tdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[150] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[150]),
        .Q(m_axis_mm2s_tdata[150]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[151] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[151]),
        .Q(m_axis_mm2s_tdata[151]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[152] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[152]),
        .Q(m_axis_mm2s_tdata[152]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[153] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[153]),
        .Q(m_axis_mm2s_tdata[153]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[154] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[154]),
        .Q(m_axis_mm2s_tdata[154]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[155] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[155]),
        .Q(m_axis_mm2s_tdata[155]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[156] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[156]),
        .Q(m_axis_mm2s_tdata[156]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[157] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[157]),
        .Q(m_axis_mm2s_tdata[157]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[158] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[158]),
        .Q(m_axis_mm2s_tdata[158]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[159] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[159]),
        .Q(m_axis_mm2s_tdata[159]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[15]),
        .Q(m_axis_mm2s_tdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[160] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[160]),
        .Q(m_axis_mm2s_tdata[160]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[161] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[161]),
        .Q(m_axis_mm2s_tdata[161]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[162] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[162]),
        .Q(m_axis_mm2s_tdata[162]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[163] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[163]),
        .Q(m_axis_mm2s_tdata[163]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[164] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[164]),
        .Q(m_axis_mm2s_tdata[164]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[165] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[165]),
        .Q(m_axis_mm2s_tdata[165]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[166] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[166]),
        .Q(m_axis_mm2s_tdata[166]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[167] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[167]),
        .Q(m_axis_mm2s_tdata[167]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[168] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[168]),
        .Q(m_axis_mm2s_tdata[168]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[169] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[169]),
        .Q(m_axis_mm2s_tdata[169]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[16]),
        .Q(m_axis_mm2s_tdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[170] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[170]),
        .Q(m_axis_mm2s_tdata[170]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[171] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[171]),
        .Q(m_axis_mm2s_tdata[171]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[172] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[172]),
        .Q(m_axis_mm2s_tdata[172]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[173] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[173]),
        .Q(m_axis_mm2s_tdata[173]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[174] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[174]),
        .Q(m_axis_mm2s_tdata[174]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[175] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[175]),
        .Q(m_axis_mm2s_tdata[175]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[176] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[176]),
        .Q(m_axis_mm2s_tdata[176]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[177] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[177]),
        .Q(m_axis_mm2s_tdata[177]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[178] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[178]),
        .Q(m_axis_mm2s_tdata[178]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[179] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[179]),
        .Q(m_axis_mm2s_tdata[179]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[17]),
        .Q(m_axis_mm2s_tdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[180] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[180]),
        .Q(m_axis_mm2s_tdata[180]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[181] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[181]),
        .Q(m_axis_mm2s_tdata[181]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[182] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[182]),
        .Q(m_axis_mm2s_tdata[182]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[183] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[183]),
        .Q(m_axis_mm2s_tdata[183]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[184] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[184]),
        .Q(m_axis_mm2s_tdata[184]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[185] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[185]),
        .Q(m_axis_mm2s_tdata[185]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[186] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[186]),
        .Q(m_axis_mm2s_tdata[186]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[187] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[187]),
        .Q(m_axis_mm2s_tdata[187]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[188] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[188]),
        .Q(m_axis_mm2s_tdata[188]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[189] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[189]),
        .Q(m_axis_mm2s_tdata[189]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[18]),
        .Q(m_axis_mm2s_tdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[190] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[190]),
        .Q(m_axis_mm2s_tdata[190]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[191] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[191]),
        .Q(m_axis_mm2s_tdata[191]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[192] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[192]),
        .Q(m_axis_mm2s_tdata[192]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[193] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[193]),
        .Q(m_axis_mm2s_tdata[193]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[194] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[194]),
        .Q(m_axis_mm2s_tdata[194]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[195] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[195]),
        .Q(m_axis_mm2s_tdata[195]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[196] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[196]),
        .Q(m_axis_mm2s_tdata[196]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[197] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[197]),
        .Q(m_axis_mm2s_tdata[197]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[198] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[198]),
        .Q(m_axis_mm2s_tdata[198]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[199] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[199]),
        .Q(m_axis_mm2s_tdata[199]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[19]),
        .Q(m_axis_mm2s_tdata[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[1]),
        .Q(m_axis_mm2s_tdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[200] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[200]),
        .Q(m_axis_mm2s_tdata[200]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[201] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[201]),
        .Q(m_axis_mm2s_tdata[201]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[202] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[202]),
        .Q(m_axis_mm2s_tdata[202]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[203] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[203]),
        .Q(m_axis_mm2s_tdata[203]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[204] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[204]),
        .Q(m_axis_mm2s_tdata[204]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[205] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[205]),
        .Q(m_axis_mm2s_tdata[205]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[206] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[206]),
        .Q(m_axis_mm2s_tdata[206]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[207] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[207]),
        .Q(m_axis_mm2s_tdata[207]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[208] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[208]),
        .Q(m_axis_mm2s_tdata[208]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[209] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[209]),
        .Q(m_axis_mm2s_tdata[209]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[20]),
        .Q(m_axis_mm2s_tdata[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[210] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[210]),
        .Q(m_axis_mm2s_tdata[210]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[211] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[211]),
        .Q(m_axis_mm2s_tdata[211]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[212] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[212]),
        .Q(m_axis_mm2s_tdata[212]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[213] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[213]),
        .Q(m_axis_mm2s_tdata[213]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[214] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[214]),
        .Q(m_axis_mm2s_tdata[214]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[215] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[215]),
        .Q(m_axis_mm2s_tdata[215]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[216] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[216]),
        .Q(m_axis_mm2s_tdata[216]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[217] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[217]),
        .Q(m_axis_mm2s_tdata[217]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[218] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[218]),
        .Q(m_axis_mm2s_tdata[218]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[219] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[219]),
        .Q(m_axis_mm2s_tdata[219]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[21]),
        .Q(m_axis_mm2s_tdata[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[220] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[220]),
        .Q(m_axis_mm2s_tdata[220]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[221] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[221]),
        .Q(m_axis_mm2s_tdata[221]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[222] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[222]),
        .Q(m_axis_mm2s_tdata[222]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[223] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[223]),
        .Q(m_axis_mm2s_tdata[223]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[224] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[224]),
        .Q(m_axis_mm2s_tdata[224]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[225] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[225]),
        .Q(m_axis_mm2s_tdata[225]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[226] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[226]),
        .Q(m_axis_mm2s_tdata[226]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[227] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[227]),
        .Q(m_axis_mm2s_tdata[227]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[228] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[228]),
        .Q(m_axis_mm2s_tdata[228]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[229] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[229]),
        .Q(m_axis_mm2s_tdata[229]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[22]),
        .Q(m_axis_mm2s_tdata[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[230] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[230]),
        .Q(m_axis_mm2s_tdata[230]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[231] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[231]),
        .Q(m_axis_mm2s_tdata[231]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[232] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[232]),
        .Q(m_axis_mm2s_tdata[232]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[233] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[233]),
        .Q(m_axis_mm2s_tdata[233]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[234] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[234]),
        .Q(m_axis_mm2s_tdata[234]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[235] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[235]),
        .Q(m_axis_mm2s_tdata[235]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[236] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[236]),
        .Q(m_axis_mm2s_tdata[236]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[237] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[237]),
        .Q(m_axis_mm2s_tdata[237]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[238] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[238]),
        .Q(m_axis_mm2s_tdata[238]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[239] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[239]),
        .Q(m_axis_mm2s_tdata[239]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[23]),
        .Q(m_axis_mm2s_tdata[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[240] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[240]),
        .Q(m_axis_mm2s_tdata[240]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[241] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[241]),
        .Q(m_axis_mm2s_tdata[241]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[242] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[242]),
        .Q(m_axis_mm2s_tdata[242]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[243] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[243]),
        .Q(m_axis_mm2s_tdata[243]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[244] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[244]),
        .Q(m_axis_mm2s_tdata[244]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[245] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[245]),
        .Q(m_axis_mm2s_tdata[245]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[246] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[246]),
        .Q(m_axis_mm2s_tdata[246]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[247] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[247]),
        .Q(m_axis_mm2s_tdata[247]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[248] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[248]),
        .Q(m_axis_mm2s_tdata[248]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[249] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[249]),
        .Q(m_axis_mm2s_tdata[249]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[24]),
        .Q(m_axis_mm2s_tdata[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[250] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[250]),
        .Q(m_axis_mm2s_tdata[250]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[251] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[251]),
        .Q(m_axis_mm2s_tdata[251]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[252] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[252]),
        .Q(m_axis_mm2s_tdata[252]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[253] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[253]),
        .Q(m_axis_mm2s_tdata[253]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[254] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[254]),
        .Q(m_axis_mm2s_tdata[254]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[255] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[255]),
        .Q(m_axis_mm2s_tdata[255]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[25]),
        .Q(m_axis_mm2s_tdata[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[26]),
        .Q(m_axis_mm2s_tdata[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[27]),
        .Q(m_axis_mm2s_tdata[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[28]),
        .Q(m_axis_mm2s_tdata[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[29]),
        .Q(m_axis_mm2s_tdata[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[2]),
        .Q(m_axis_mm2s_tdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[30]),
        .Q(m_axis_mm2s_tdata[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[31]),
        .Q(m_axis_mm2s_tdata[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[32] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[32]),
        .Q(m_axis_mm2s_tdata[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[33] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[33]),
        .Q(m_axis_mm2s_tdata[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[34]),
        .Q(m_axis_mm2s_tdata[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[35]),
        .Q(m_axis_mm2s_tdata[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[36]),
        .Q(m_axis_mm2s_tdata[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[37]),
        .Q(m_axis_mm2s_tdata[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[38]),
        .Q(m_axis_mm2s_tdata[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[39]),
        .Q(m_axis_mm2s_tdata[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[3]),
        .Q(m_axis_mm2s_tdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[40] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[40]),
        .Q(m_axis_mm2s_tdata[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[41] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[41]),
        .Q(m_axis_mm2s_tdata[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[42]),
        .Q(m_axis_mm2s_tdata[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[43]),
        .Q(m_axis_mm2s_tdata[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[44]),
        .Q(m_axis_mm2s_tdata[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[45]),
        .Q(m_axis_mm2s_tdata[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[46]),
        .Q(m_axis_mm2s_tdata[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[47]),
        .Q(m_axis_mm2s_tdata[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[48] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[48]),
        .Q(m_axis_mm2s_tdata[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[49] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[49]),
        .Q(m_axis_mm2s_tdata[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[4]),
        .Q(m_axis_mm2s_tdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[50]),
        .Q(m_axis_mm2s_tdata[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[51]),
        .Q(m_axis_mm2s_tdata[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[52]),
        .Q(m_axis_mm2s_tdata[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[53]),
        .Q(m_axis_mm2s_tdata[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[54]),
        .Q(m_axis_mm2s_tdata[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[55]),
        .Q(m_axis_mm2s_tdata[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[56] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[56]),
        .Q(m_axis_mm2s_tdata[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[57] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[57]),
        .Q(m_axis_mm2s_tdata[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[58] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[58]),
        .Q(m_axis_mm2s_tdata[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[59] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[59]),
        .Q(m_axis_mm2s_tdata[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[5]),
        .Q(m_axis_mm2s_tdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[60] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[60]),
        .Q(m_axis_mm2s_tdata[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[61] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[61]),
        .Q(m_axis_mm2s_tdata[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[62] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[62]),
        .Q(m_axis_mm2s_tdata[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[63] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[63]),
        .Q(m_axis_mm2s_tdata[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[64] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[64]),
        .Q(m_axis_mm2s_tdata[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[65] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[65]),
        .Q(m_axis_mm2s_tdata[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[66] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[66]),
        .Q(m_axis_mm2s_tdata[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[67] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[67]),
        .Q(m_axis_mm2s_tdata[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[68] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[68]),
        .Q(m_axis_mm2s_tdata[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[69] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[69]),
        .Q(m_axis_mm2s_tdata[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[6]),
        .Q(m_axis_mm2s_tdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[70] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[70]),
        .Q(m_axis_mm2s_tdata[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[71] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[71]),
        .Q(m_axis_mm2s_tdata[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[72] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[72]),
        .Q(m_axis_mm2s_tdata[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[73] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[73]),
        .Q(m_axis_mm2s_tdata[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[74] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[74]),
        .Q(m_axis_mm2s_tdata[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[75] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[75]),
        .Q(m_axis_mm2s_tdata[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[76] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[76]),
        .Q(m_axis_mm2s_tdata[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[77] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[77]),
        .Q(m_axis_mm2s_tdata[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[78] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[78]),
        .Q(m_axis_mm2s_tdata[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[79] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[79]),
        .Q(m_axis_mm2s_tdata[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[7]),
        .Q(m_axis_mm2s_tdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[80] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[80]),
        .Q(m_axis_mm2s_tdata[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[81] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[81]),
        .Q(m_axis_mm2s_tdata[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[82] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[82]),
        .Q(m_axis_mm2s_tdata[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[83] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[83]),
        .Q(m_axis_mm2s_tdata[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[84] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[84]),
        .Q(m_axis_mm2s_tdata[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[85] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[85]),
        .Q(m_axis_mm2s_tdata[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[86] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[86]),
        .Q(m_axis_mm2s_tdata[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[87] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[87]),
        .Q(m_axis_mm2s_tdata[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[88] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[88]),
        .Q(m_axis_mm2s_tdata[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[89] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[89]),
        .Q(m_axis_mm2s_tdata[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[8]),
        .Q(m_axis_mm2s_tdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[90] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[90]),
        .Q(m_axis_mm2s_tdata[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[91] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[91]),
        .Q(m_axis_mm2s_tdata[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[92] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[92]),
        .Q(m_axis_mm2s_tdata[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[93] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[93]),
        .Q(m_axis_mm2s_tdata[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[94] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[94]),
        .Q(m_axis_mm2s_tdata[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[95] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[95]),
        .Q(m_axis_mm2s_tdata[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[96] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[96]),
        .Q(m_axis_mm2s_tdata[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[97] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[97]),
        .Q(m_axis_mm2s_tdata[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[98] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[98]),
        .Q(m_axis_mm2s_tdata[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[99] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[99]),
        .Q(m_axis_mm2s_tdata[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[9]),
        .Q(m_axis_mm2s_tdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[0]),
        .Q(sig_data_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[100] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[100]),
        .Q(sig_data_skid_reg[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[101] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[101]),
        .Q(sig_data_skid_reg[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[102] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[102]),
        .Q(sig_data_skid_reg[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[103] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[103]),
        .Q(sig_data_skid_reg[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[104] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[104]),
        .Q(sig_data_skid_reg[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[105] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[105]),
        .Q(sig_data_skid_reg[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[106] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[106]),
        .Q(sig_data_skid_reg[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[107] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[107]),
        .Q(sig_data_skid_reg[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[108] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[108]),
        .Q(sig_data_skid_reg[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[109] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[109]),
        .Q(sig_data_skid_reg[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[10]),
        .Q(sig_data_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[110] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[110]),
        .Q(sig_data_skid_reg[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[111] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[111]),
        .Q(sig_data_skid_reg[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[112] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[112]),
        .Q(sig_data_skid_reg[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[113] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[113]),
        .Q(sig_data_skid_reg[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[114] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[114]),
        .Q(sig_data_skid_reg[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[115] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[115]),
        .Q(sig_data_skid_reg[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[116] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[116]),
        .Q(sig_data_skid_reg[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[117] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[117]),
        .Q(sig_data_skid_reg[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[118] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[118]),
        .Q(sig_data_skid_reg[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[119] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[119]),
        .Q(sig_data_skid_reg[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[11]),
        .Q(sig_data_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[120] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[120]),
        .Q(sig_data_skid_reg[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[121] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[121]),
        .Q(sig_data_skid_reg[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[122] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[122]),
        .Q(sig_data_skid_reg[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[123] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[123]),
        .Q(sig_data_skid_reg[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[124] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[124]),
        .Q(sig_data_skid_reg[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[125] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[125]),
        .Q(sig_data_skid_reg[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[126] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[126]),
        .Q(sig_data_skid_reg[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[127] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[127]),
        .Q(sig_data_skid_reg[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[128] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[128]),
        .Q(sig_data_skid_reg[128]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[129] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[129]),
        .Q(sig_data_skid_reg[129]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[12]),
        .Q(sig_data_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[130] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[130]),
        .Q(sig_data_skid_reg[130]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[131] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[131]),
        .Q(sig_data_skid_reg[131]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[132] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[132]),
        .Q(sig_data_skid_reg[132]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[133] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[133]),
        .Q(sig_data_skid_reg[133]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[134] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[134]),
        .Q(sig_data_skid_reg[134]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[135] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[135]),
        .Q(sig_data_skid_reg[135]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[136] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[136]),
        .Q(sig_data_skid_reg[136]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[137] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[137]),
        .Q(sig_data_skid_reg[137]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[138] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[138]),
        .Q(sig_data_skid_reg[138]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[139] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[139]),
        .Q(sig_data_skid_reg[139]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[13]),
        .Q(sig_data_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[140] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[140]),
        .Q(sig_data_skid_reg[140]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[141] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[141]),
        .Q(sig_data_skid_reg[141]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[142] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[142]),
        .Q(sig_data_skid_reg[142]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[143] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[143]),
        .Q(sig_data_skid_reg[143]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[144] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[144]),
        .Q(sig_data_skid_reg[144]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[145] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[145]),
        .Q(sig_data_skid_reg[145]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[146] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[146]),
        .Q(sig_data_skid_reg[146]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[147] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[147]),
        .Q(sig_data_skid_reg[147]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[148] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[148]),
        .Q(sig_data_skid_reg[148]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[149] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[149]),
        .Q(sig_data_skid_reg[149]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[14]),
        .Q(sig_data_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[150] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[150]),
        .Q(sig_data_skid_reg[150]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[151] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[151]),
        .Q(sig_data_skid_reg[151]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[152] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[152]),
        .Q(sig_data_skid_reg[152]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[153] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[153]),
        .Q(sig_data_skid_reg[153]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[154] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[154]),
        .Q(sig_data_skid_reg[154]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[155] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[155]),
        .Q(sig_data_skid_reg[155]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[156] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[156]),
        .Q(sig_data_skid_reg[156]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[157] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[157]),
        .Q(sig_data_skid_reg[157]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[158] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[158]),
        .Q(sig_data_skid_reg[158]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[159] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[159]),
        .Q(sig_data_skid_reg[159]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[15]),
        .Q(sig_data_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[160] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[160]),
        .Q(sig_data_skid_reg[160]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[161] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[161]),
        .Q(sig_data_skid_reg[161]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[162] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[162]),
        .Q(sig_data_skid_reg[162]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[163] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[163]),
        .Q(sig_data_skid_reg[163]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[164] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[164]),
        .Q(sig_data_skid_reg[164]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[165] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[165]),
        .Q(sig_data_skid_reg[165]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[166] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[166]),
        .Q(sig_data_skid_reg[166]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[167] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[167]),
        .Q(sig_data_skid_reg[167]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[168] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[168]),
        .Q(sig_data_skid_reg[168]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[169] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[169]),
        .Q(sig_data_skid_reg[169]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[16]),
        .Q(sig_data_skid_reg[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[170] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[170]),
        .Q(sig_data_skid_reg[170]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[171] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[171]),
        .Q(sig_data_skid_reg[171]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[172] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[172]),
        .Q(sig_data_skid_reg[172]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[173] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[173]),
        .Q(sig_data_skid_reg[173]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[174] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[174]),
        .Q(sig_data_skid_reg[174]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[175] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[175]),
        .Q(sig_data_skid_reg[175]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[176] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[176]),
        .Q(sig_data_skid_reg[176]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[177] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[177]),
        .Q(sig_data_skid_reg[177]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[178] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[178]),
        .Q(sig_data_skid_reg[178]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[179] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[179]),
        .Q(sig_data_skid_reg[179]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[17]),
        .Q(sig_data_skid_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[180] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[180]),
        .Q(sig_data_skid_reg[180]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[181] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[181]),
        .Q(sig_data_skid_reg[181]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[182] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[182]),
        .Q(sig_data_skid_reg[182]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[183] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[183]),
        .Q(sig_data_skid_reg[183]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[184] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[184]),
        .Q(sig_data_skid_reg[184]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[185] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[185]),
        .Q(sig_data_skid_reg[185]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[186] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[186]),
        .Q(sig_data_skid_reg[186]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[187] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[187]),
        .Q(sig_data_skid_reg[187]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[188] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[188]),
        .Q(sig_data_skid_reg[188]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[189] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[189]),
        .Q(sig_data_skid_reg[189]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[18]),
        .Q(sig_data_skid_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[190] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[190]),
        .Q(sig_data_skid_reg[190]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[191] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[191]),
        .Q(sig_data_skid_reg[191]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[192] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[192]),
        .Q(sig_data_skid_reg[192]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[193] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[193]),
        .Q(sig_data_skid_reg[193]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[194] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[194]),
        .Q(sig_data_skid_reg[194]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[195] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[195]),
        .Q(sig_data_skid_reg[195]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[196] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[196]),
        .Q(sig_data_skid_reg[196]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[197] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[197]),
        .Q(sig_data_skid_reg[197]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[198] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[198]),
        .Q(sig_data_skid_reg[198]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[199] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[199]),
        .Q(sig_data_skid_reg[199]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[19]),
        .Q(sig_data_skid_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[1]),
        .Q(sig_data_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[200] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[200]),
        .Q(sig_data_skid_reg[200]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[201] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[201]),
        .Q(sig_data_skid_reg[201]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[202] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[202]),
        .Q(sig_data_skid_reg[202]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[203] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[203]),
        .Q(sig_data_skid_reg[203]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[204] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[204]),
        .Q(sig_data_skid_reg[204]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[205] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[205]),
        .Q(sig_data_skid_reg[205]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[206] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[206]),
        .Q(sig_data_skid_reg[206]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[207] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[207]),
        .Q(sig_data_skid_reg[207]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[208] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[208]),
        .Q(sig_data_skid_reg[208]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[209] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[209]),
        .Q(sig_data_skid_reg[209]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[20]),
        .Q(sig_data_skid_reg[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[210] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[210]),
        .Q(sig_data_skid_reg[210]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[211] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[211]),
        .Q(sig_data_skid_reg[211]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[212] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[212]),
        .Q(sig_data_skid_reg[212]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[213] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[213]),
        .Q(sig_data_skid_reg[213]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[214] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[214]),
        .Q(sig_data_skid_reg[214]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[215] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[215]),
        .Q(sig_data_skid_reg[215]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[216] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[216]),
        .Q(sig_data_skid_reg[216]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[217] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[217]),
        .Q(sig_data_skid_reg[217]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[218] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[218]),
        .Q(sig_data_skid_reg[218]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[219] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[219]),
        .Q(sig_data_skid_reg[219]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[21]),
        .Q(sig_data_skid_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[220] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[220]),
        .Q(sig_data_skid_reg[220]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[221] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[221]),
        .Q(sig_data_skid_reg[221]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[222] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[222]),
        .Q(sig_data_skid_reg[222]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[223] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[223]),
        .Q(sig_data_skid_reg[223]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[224] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[224]),
        .Q(sig_data_skid_reg[224]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[225] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[225]),
        .Q(sig_data_skid_reg[225]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[226] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[226]),
        .Q(sig_data_skid_reg[226]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[227] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[227]),
        .Q(sig_data_skid_reg[227]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[228] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[228]),
        .Q(sig_data_skid_reg[228]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[229] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[229]),
        .Q(sig_data_skid_reg[229]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[22]),
        .Q(sig_data_skid_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[230] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[230]),
        .Q(sig_data_skid_reg[230]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[231] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[231]),
        .Q(sig_data_skid_reg[231]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[232] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[232]),
        .Q(sig_data_skid_reg[232]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[233] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[233]),
        .Q(sig_data_skid_reg[233]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[234] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[234]),
        .Q(sig_data_skid_reg[234]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[235] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[235]),
        .Q(sig_data_skid_reg[235]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[236] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[236]),
        .Q(sig_data_skid_reg[236]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[237] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[237]),
        .Q(sig_data_skid_reg[237]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[238] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[238]),
        .Q(sig_data_skid_reg[238]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[239] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[239]),
        .Q(sig_data_skid_reg[239]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[23]),
        .Q(sig_data_skid_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[240] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[240]),
        .Q(sig_data_skid_reg[240]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[241] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[241]),
        .Q(sig_data_skid_reg[241]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[242] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[242]),
        .Q(sig_data_skid_reg[242]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[243] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[243]),
        .Q(sig_data_skid_reg[243]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[244] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[244]),
        .Q(sig_data_skid_reg[244]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[245] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[245]),
        .Q(sig_data_skid_reg[245]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[246] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[246]),
        .Q(sig_data_skid_reg[246]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[247] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[247]),
        .Q(sig_data_skid_reg[247]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[248] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[248]),
        .Q(sig_data_skid_reg[248]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[249] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[249]),
        .Q(sig_data_skid_reg[249]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[24]),
        .Q(sig_data_skid_reg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[250] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[250]),
        .Q(sig_data_skid_reg[250]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[251] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[251]),
        .Q(sig_data_skid_reg[251]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[252] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[252]),
        .Q(sig_data_skid_reg[252]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[253] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[253]),
        .Q(sig_data_skid_reg[253]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[254] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[254]),
        .Q(sig_data_skid_reg[254]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[255] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[255]),
        .Q(sig_data_skid_reg[255]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[25]),
        .Q(sig_data_skid_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[26]),
        .Q(sig_data_skid_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[27]),
        .Q(sig_data_skid_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[28]),
        .Q(sig_data_skid_reg[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[29]),
        .Q(sig_data_skid_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[2]),
        .Q(sig_data_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[30]),
        .Q(sig_data_skid_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[31]),
        .Q(sig_data_skid_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[32] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[32]),
        .Q(sig_data_skid_reg[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[33] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[33]),
        .Q(sig_data_skid_reg[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[34]),
        .Q(sig_data_skid_reg[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[35]),
        .Q(sig_data_skid_reg[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[36]),
        .Q(sig_data_skid_reg[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[37]),
        .Q(sig_data_skid_reg[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[38]),
        .Q(sig_data_skid_reg[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[39]),
        .Q(sig_data_skid_reg[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[3]),
        .Q(sig_data_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[40] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[40]),
        .Q(sig_data_skid_reg[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[41] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[41]),
        .Q(sig_data_skid_reg[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[42]),
        .Q(sig_data_skid_reg[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[43]),
        .Q(sig_data_skid_reg[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[44]),
        .Q(sig_data_skid_reg[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[45]),
        .Q(sig_data_skid_reg[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[46]),
        .Q(sig_data_skid_reg[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[47]),
        .Q(sig_data_skid_reg[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[48] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[48]),
        .Q(sig_data_skid_reg[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[49] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[49]),
        .Q(sig_data_skid_reg[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[4]),
        .Q(sig_data_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[50]),
        .Q(sig_data_skid_reg[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[51]),
        .Q(sig_data_skid_reg[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[52]),
        .Q(sig_data_skid_reg[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[53]),
        .Q(sig_data_skid_reg[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[54]),
        .Q(sig_data_skid_reg[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[55]),
        .Q(sig_data_skid_reg[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[56] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[56]),
        .Q(sig_data_skid_reg[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[57] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[57]),
        .Q(sig_data_skid_reg[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[58] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[58]),
        .Q(sig_data_skid_reg[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[59] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[59]),
        .Q(sig_data_skid_reg[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[5]),
        .Q(sig_data_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[60] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[60]),
        .Q(sig_data_skid_reg[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[61] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[61]),
        .Q(sig_data_skid_reg[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[62] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[62]),
        .Q(sig_data_skid_reg[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[63] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[63]),
        .Q(sig_data_skid_reg[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[64] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[64]),
        .Q(sig_data_skid_reg[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[65] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[65]),
        .Q(sig_data_skid_reg[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[66] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[66]),
        .Q(sig_data_skid_reg[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[67] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[67]),
        .Q(sig_data_skid_reg[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[68] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[68]),
        .Q(sig_data_skid_reg[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[69] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[69]),
        .Q(sig_data_skid_reg[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[6]),
        .Q(sig_data_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[70] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[70]),
        .Q(sig_data_skid_reg[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[71] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[71]),
        .Q(sig_data_skid_reg[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[72] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[72]),
        .Q(sig_data_skid_reg[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[73] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[73]),
        .Q(sig_data_skid_reg[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[74] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[74]),
        .Q(sig_data_skid_reg[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[75] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[75]),
        .Q(sig_data_skid_reg[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[76] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[76]),
        .Q(sig_data_skid_reg[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[77] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[77]),
        .Q(sig_data_skid_reg[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[78] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[78]),
        .Q(sig_data_skid_reg[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[79] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[79]),
        .Q(sig_data_skid_reg[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[7]),
        .Q(sig_data_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[80] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[80]),
        .Q(sig_data_skid_reg[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[81] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[81]),
        .Q(sig_data_skid_reg[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[82] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[82]),
        .Q(sig_data_skid_reg[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[83] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[83]),
        .Q(sig_data_skid_reg[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[84] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[84]),
        .Q(sig_data_skid_reg[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[85] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[85]),
        .Q(sig_data_skid_reg[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[86] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[86]),
        .Q(sig_data_skid_reg[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[87] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[87]),
        .Q(sig_data_skid_reg[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[88] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[88]),
        .Q(sig_data_skid_reg[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[89] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[89]),
        .Q(sig_data_skid_reg[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[8]),
        .Q(sig_data_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[90] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[90]),
        .Q(sig_data_skid_reg[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[91] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[91]),
        .Q(sig_data_skid_reg[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[92] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[92]),
        .Q(sig_data_skid_reg[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[93] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[93]),
        .Q(sig_data_skid_reg[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[94] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[94]),
        .Q(sig_data_skid_reg[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[95] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[95]),
        .Q(sig_data_skid_reg[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[96] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[96]),
        .Q(sig_data_skid_reg[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[97] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[97]),
        .Q(sig_data_skid_reg[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[98] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[98]),
        .Q(sig_data_skid_reg[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[99] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[99]),
        .Q(sig_data_skid_reg[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[9]),
        .Q(sig_data_skid_reg[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_last_skid_mux_out),
        .Q(m_axis_mm2s_tlast),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_sf2dre_wlast),
        .Q(sig_last_skid_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000BAFA0000)) 
    sig_m_valid_dup_i_1
       (.I0(sig_m_valid_out_reg_0),
        .I1(sig_s_ready_dup),
        .I2(sig_m_valid_dup),
        .I3(m_axis_mm2s_tready),
        .I4(sig_stream_rst_reg_n),
        .I5(sig_reset_reg),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_reset_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(sig_reset_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AAAAAAA8A8A8A8)) 
    sig_s_ready_dup_i_1
       (.I0(sig_stream_rst_reg_n),
        .I1(sig_reset_reg),
        .I2(m_axis_mm2s_tready),
        .I3(sig_m_valid_out_reg_0),
        .I4(sig_m_valid_dup),
        .I5(sig_s_ready_dup),
        .O(sig_s_ready_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(dout[256]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[0]),
        .O(sig_strb_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[10]_i_1 
       (.I0(dout[266]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[10]),
        .O(sig_strb_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[11]_i_1 
       (.I0(dout[267]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[11]),
        .O(sig_strb_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[12]_i_1 
       (.I0(dout[268]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[12]),
        .O(sig_strb_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[13]_i_1 
       (.I0(dout[269]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[13]),
        .O(sig_strb_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[14]_i_1 
       (.I0(dout[270]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[14]),
        .O(sig_strb_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[15]_i_1 
       (.I0(dout[271]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[15]),
        .O(sig_strb_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[16]_i_1 
       (.I0(dout[272]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[16]),
        .O(sig_strb_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[17]_i_1 
       (.I0(dout[273]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[17]),
        .O(sig_strb_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[18]_i_1 
       (.I0(dout[274]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[18]),
        .O(sig_strb_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[19]_i_1 
       (.I0(dout[275]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[19]),
        .O(sig_strb_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(dout[257]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[1]),
        .O(sig_strb_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[20]_i_1 
       (.I0(dout[276]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[20]),
        .O(sig_strb_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[21]_i_1 
       (.I0(dout[277]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[21]),
        .O(sig_strb_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[22]_i_1 
       (.I0(dout[278]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[22]),
        .O(sig_strb_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[23]_i_1 
       (.I0(dout[279]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[23]),
        .O(sig_strb_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[24]_i_1 
       (.I0(dout[280]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[24]),
        .O(sig_strb_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[25]_i_1 
       (.I0(dout[281]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[25]),
        .O(sig_strb_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[26]_i_1 
       (.I0(dout[282]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[26]),
        .O(sig_strb_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[27]_i_1 
       (.I0(dout[283]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[27]),
        .O(sig_strb_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[28]_i_1 
       (.I0(dout[284]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[28]),
        .O(sig_strb_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[29]_i_1 
       (.I0(dout[285]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[29]),
        .O(sig_strb_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(dout[258]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[2]),
        .O(sig_strb_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[30]_i_1 
       (.I0(dout[286]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[30]),
        .O(sig_strb_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[31]_i_1 
       (.I0(dout[287]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[31]),
        .O(sig_strb_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(dout[259]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[3]),
        .O(sig_strb_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[4]_i_1 
       (.I0(dout[260]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[4]),
        .O(sig_strb_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[5]_i_1 
       (.I0(dout[261]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[5]),
        .O(sig_strb_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[6]_i_1 
       (.I0(dout[262]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[6]),
        .O(sig_strb_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[7]_i_1 
       (.I0(dout[263]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[7]),
        .O(sig_strb_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[8]_i_1 
       (.I0(dout[264]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[8]),
        .O(sig_strb_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_strb_reg_out[9]_i_1 
       (.I0(dout[265]),
        .I1(sig_s_ready_dup),
        .I2(sig_strb_skid_reg[9]),
        .O(sig_strb_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[0]),
        .Q(m_axis_mm2s_tkeep[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[10]),
        .Q(m_axis_mm2s_tkeep[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[11]),
        .Q(m_axis_mm2s_tkeep[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[12]),
        .Q(m_axis_mm2s_tkeep[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[13]),
        .Q(m_axis_mm2s_tkeep[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[14]),
        .Q(m_axis_mm2s_tkeep[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[15]),
        .Q(m_axis_mm2s_tkeep[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[16]),
        .Q(m_axis_mm2s_tkeep[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[17]),
        .Q(m_axis_mm2s_tkeep[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[18]),
        .Q(m_axis_mm2s_tkeep[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[19]),
        .Q(m_axis_mm2s_tkeep[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[1]),
        .Q(m_axis_mm2s_tkeep[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[20]),
        .Q(m_axis_mm2s_tkeep[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[21]),
        .Q(m_axis_mm2s_tkeep[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[22]),
        .Q(m_axis_mm2s_tkeep[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[23]),
        .Q(m_axis_mm2s_tkeep[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[24]),
        .Q(m_axis_mm2s_tkeep[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[25]),
        .Q(m_axis_mm2s_tkeep[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[26]),
        .Q(m_axis_mm2s_tkeep[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[27]),
        .Q(m_axis_mm2s_tkeep[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[28]),
        .Q(m_axis_mm2s_tkeep[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[29]),
        .Q(m_axis_mm2s_tkeep[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[2]),
        .Q(m_axis_mm2s_tkeep[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[30]),
        .Q(m_axis_mm2s_tkeep[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[31]),
        .Q(m_axis_mm2s_tkeep[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[3]),
        .Q(m_axis_mm2s_tkeep[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[4]),
        .Q(m_axis_mm2s_tkeep[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[5]),
        .Q(m_axis_mm2s_tkeep[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[6]),
        .Q(m_axis_mm2s_tkeep[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[7]),
        .Q(m_axis_mm2s_tkeep[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[8]),
        .Q(m_axis_mm2s_tkeep[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_strb_skid_mux_out[9]),
        .Q(m_axis_mm2s_tkeep[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[256]),
        .Q(sig_strb_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[266]),
        .Q(sig_strb_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[267]),
        .Q(sig_strb_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[268]),
        .Q(sig_strb_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[269]),
        .Q(sig_strb_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[270]),
        .Q(sig_strb_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[271]),
        .Q(sig_strb_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[272]),
        .Q(sig_strb_skid_reg[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[273]),
        .Q(sig_strb_skid_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[274]),
        .Q(sig_strb_skid_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[275]),
        .Q(sig_strb_skid_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[257]),
        .Q(sig_strb_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[276]),
        .Q(sig_strb_skid_reg[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[277]),
        .Q(sig_strb_skid_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[278]),
        .Q(sig_strb_skid_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[279]),
        .Q(sig_strb_skid_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[280]),
        .Q(sig_strb_skid_reg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[281]),
        .Q(sig_strb_skid_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[282]),
        .Q(sig_strb_skid_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[283]),
        .Q(sig_strb_skid_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[284]),
        .Q(sig_strb_skid_reg[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[285]),
        .Q(sig_strb_skid_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[258]),
        .Q(sig_strb_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[286]),
        .Q(sig_strb_skid_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[287]),
        .Q(sig_strb_skid_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[259]),
        .Q(sig_strb_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[260]),
        .Q(sig_strb_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[261]),
        .Q(sig_strb_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[262]),
        .Q(sig_strb_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[263]),
        .Q(sig_strb_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[264]),
        .Q(sig_strb_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(dout[265]),
        .Q(sig_strb_skid_reg[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_strb_gen2" *) 
module ps_axi_datamover_0_1_axi_datamover_strb_gen2
   (D,
    Q,
    out,
    \sig_xfer_strt_strb_ireg3_reg[2] ,
    \sig_xfer_strt_strb_ireg3_reg[4] ,
    \sig_xfer_strt_strb_ireg3_reg[6] ,
    \sig_xfer_strt_strb_ireg3_reg[8] ,
    \sig_xfer_strt_strb_ireg3_reg[10] ,
    \sig_xfer_strt_strb_ireg3_reg[12] ,
    \sig_xfer_strt_strb_ireg3_reg[14] ,
    \sig_xfer_strt_strb_ireg3_reg[18] ,
    \sig_xfer_strt_strb_ireg3_reg[20] ,
    \sig_xfer_strt_strb_ireg3_reg[22] ,
    \sig_xfer_strt_strb_ireg3_reg[24] ,
    \sig_xfer_strt_strb_ireg3_reg[26] ,
    \sig_xfer_strt_strb_ireg3_reg[28] ,
    \sig_xfer_strt_strb_ireg3_reg[30] );
  output [28:0]D;
  input [4:0]Q;
  input [13:0]out;
  input \sig_xfer_strt_strb_ireg3_reg[2] ;
  input \sig_xfer_strt_strb_ireg3_reg[4] ;
  input \sig_xfer_strt_strb_ireg3_reg[6] ;
  input \sig_xfer_strt_strb_ireg3_reg[8] ;
  input \sig_xfer_strt_strb_ireg3_reg[10] ;
  input \sig_xfer_strt_strb_ireg3_reg[12] ;
  input \sig_xfer_strt_strb_ireg3_reg[14] ;
  input \sig_xfer_strt_strb_ireg3_reg[18] ;
  input \sig_xfer_strt_strb_ireg3_reg[20] ;
  input \sig_xfer_strt_strb_ireg3_reg[22] ;
  input \sig_xfer_strt_strb_ireg3_reg[24] ;
  input \sig_xfer_strt_strb_ireg3_reg[26] ;
  input \sig_xfer_strt_strb_ireg3_reg[28] ;
  input \sig_xfer_strt_strb_ireg3_reg[30] ;

  wire [28:0]D;
  wire [4:0]Q;
  wire [13:0]out;
  wire \sig_xfer_strt_strb_ireg3_reg[10] ;
  wire \sig_xfer_strt_strb_ireg3_reg[12] ;
  wire \sig_xfer_strt_strb_ireg3_reg[14] ;
  wire \sig_xfer_strt_strb_ireg3_reg[18] ;
  wire \sig_xfer_strt_strb_ireg3_reg[20] ;
  wire \sig_xfer_strt_strb_ireg3_reg[22] ;
  wire \sig_xfer_strt_strb_ireg3_reg[24] ;
  wire \sig_xfer_strt_strb_ireg3_reg[26] ;
  wire \sig_xfer_strt_strb_ireg3_reg[28] ;
  wire \sig_xfer_strt_strb_ireg3_reg[2] ;
  wire \sig_xfer_strt_strb_ireg3_reg[30] ;
  wire \sig_xfer_strt_strb_ireg3_reg[4] ;
  wire \sig_xfer_strt_strb_ireg3_reg[6] ;
  wire \sig_xfer_strt_strb_ireg3_reg[8] ;

  LUT6 #(
    .INIT(64'h0015555500000000)) 
    \sig_xfer_strt_strb_ireg3[10]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[10] ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h1500)) 
    \sig_xfer_strt_strb_ireg3[11]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[5]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0555155500000000)) 
    \sig_xfer_strt_strb_ireg3[12]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h15550000)) 
    \sig_xfer_strt_strb_ireg3[13]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[6]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \sig_xfer_strt_strb_ireg3[14]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \sig_xfer_strt_strb_ireg3[17]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[7]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h5555557F00000000)) 
    \sig_xfer_strt_strb_ireg3[18]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[18] ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h5700)) 
    \sig_xfer_strt_strb_ireg3[19]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[8]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \sig_xfer_strt_strb_ireg3[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h55555F7F00000000)) 
    \sig_xfer_strt_strb_ireg3[20]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[20] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h557F0000)) 
    \sig_xfer_strt_strb_ireg3[21]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(out[9]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h55557FFF00000000)) 
    \sig_xfer_strt_strb_ireg3[22]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[22] ),
        .O(D[20]));
  LUT3 #(
    .INIT(8'h70)) 
    \sig_xfer_strt_strb_ireg3[23]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(out[10]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h5557FFFF00000000)) 
    \sig_xfer_strt_strb_ireg3[24]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[24] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h57FF0000)) 
    \sig_xfer_strt_strb_ireg3[25]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(out[11]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h557FFFFF00000000)) 
    \sig_xfer_strt_strb_ireg3[26]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[26] ),
        .O(D[24]));
  LUT4 #(
    .INIT(16'h7F00)) 
    \sig_xfer_strt_strb_ireg3[27]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[12]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h5FFF7FFF00000000)) 
    \sig_xfer_strt_strb_ireg3[28]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[28] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \sig_xfer_strt_strb_ireg3[29]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[13]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000001500000000)) 
    \sig_xfer_strt_strb_ireg3[2]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \sig_xfer_strt_strb_ireg3[30]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[30] ),
        .O(D[28]));
  LUT4 #(
    .INIT(16'h0100)) 
    \sig_xfer_strt_strb_ireg3[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(out[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000051500000000)) 
    \sig_xfer_strt_strb_ireg3[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00150000)) 
    \sig_xfer_strt_strb_ireg3[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(out[2]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000155500000000)) 
    \sig_xfer_strt_strb_ireg3[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[6] ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h10)) 
    \sig_xfer_strt_strb_ireg3[7]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(out[3]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0001555500000000)) 
    \sig_xfer_strt_strb_ireg3[8]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sig_xfer_strt_strb_ireg3_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h01550000)) 
    \sig_xfer_strt_strb_ireg3[9]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(out[4]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \var_start_vector/i_ 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_0_1_srl_fifo
   (Q,
    s_axis_mm2s_cmd_tready,
    out,
    SS,
    m_axi_mm2s_aclk,
    FIFO_Full_reg_0,
    s_axis_mm2s_cmd_tvalid,
    sig_inhibit_rdy_n,
    sig_calc_error_pushed,
    sig_input_reg_empty,
    sig_sm_halt_reg,
    s_axis_mm2s_cmd_tdata);
  output [0:0]Q;
  output s_axis_mm2s_cmd_tready;
  output [53:0]out;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input FIFO_Full_reg_0;
  input s_axis_mm2s_cmd_tvalid;
  input sig_inhibit_rdy_n;
  input sig_calc_error_pushed;
  input sig_input_reg_empty;
  input sig_sm_halt_reg;
  input [53:0]s_axis_mm2s_cmd_tdata;

  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_n_0;
  wire [0:0]Q;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [1:0]addr_i;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire [53:0]out;
  wire [53:0]s_axis_mm2s_cmd_tdata;
  wire s_axis_mm2s_cmd_tready;
  wire s_axis_mm2s_cmd_tvalid;
  wire sig_calc_error_pushed;
  wire sig_inhibit_rdy_n;
  wire sig_input_reg_empty;
  wire sig_sm_halt_reg;

  LUT5 #(
    .INIT(32'h00009200)) 
    FIFO_Full_i_1
       (.I0(addr_i[0]),
        .I1(FIFO_Full_reg_0),
        .I2(\USE_SRL_FIFO.sig_wr_fifo ),
        .I3(addr_i[1]),
        .I4(Q),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(SS));
  LUT6 #(
    .INIT(64'h55555655AAAAA9AA)) 
    \addr_i[0]_i_1 
       (.I0(addr_i[0]),
        .I1(sig_calc_error_pushed),
        .I2(Q),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\USE_SRL_FIFO.sig_wr_fifo ),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'h99A99999AA6AAAAA)) 
    \addr_i[1]_i_1 
       (.I0(addr_i[1]),
        .I1(addr_i[0]),
        .I2(s_axis_mm2s_cmd_tvalid),
        .I3(FIFO_Full_reg_n_0),
        .I4(sig_inhibit_rdy_n),
        .I5(FIFO_Full_reg_0),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'hAAAB6AAA)) 
    \addr_i[2]_i_2 
       (.I0(Q),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(\USE_SRL_FIFO.sig_wr_fifo ),
        .I4(FIFO_Full_reg_0),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SS));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SS));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q),
        .S(SS));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][0]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[53]),
        .Q(out[53]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][10]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[43]),
        .Q(out[43]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][11]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[42]),
        .Q(out[42]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][12]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[41]),
        .Q(out[41]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][13]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[40]),
        .Q(out[40]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][14]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[39]),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][15]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[38]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][16]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[37]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][17]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[36]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][18]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][19]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][1]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[52]),
        .Q(out[52]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][20]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][21]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][22]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][23]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][24]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][25]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][26]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][27]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][28]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][29]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][2]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[51]),
        .Q(out[51]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][30]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][31]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][32]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][33]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][34]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][35]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][37]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][3]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[50]),
        .Q(out[50]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][44]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][4]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[49]),
        .Q(out[49]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][52]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][53]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][54]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][55]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][55]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][56]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][56]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][57]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][57]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][58]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][58]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][59]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][59]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][5]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[48]),
        .Q(out[48]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][60]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][60]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][61]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][61]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][62]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][62]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][63]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][63]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][64]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][64]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][65]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][65]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][66]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][66]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][67]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][67]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h20)) 
    \data_reg[3][67]_srl4_i_1 
       (.I0(s_axis_mm2s_cmd_tvalid),
        .I1(FIFO_Full_reg_n_0),
        .I2(sig_inhibit_rdy_n),
        .O(\USE_SRL_FIFO.sig_wr_fifo ));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][6]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[47]),
        .Q(out[47]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][7]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[46]),
        .Q(out[46]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][8]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[45]),
        .Q(out[45]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][9]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(s_axis_mm2s_cmd_tdata[44]),
        .Q(out[44]));
  LUT2 #(
    .INIT(4'h2)) 
    s_axis_mm2s_cmd_tready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(s_axis_mm2s_cmd_tready));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_0_1_srl_fifo__parameterized0
   (FIFO_Full_reg_0,
    SR,
    m_axis_mm2s_sts_tvalid,
    m_axis_mm2s_sts_tdata,
    SS,
    m_axi_mm2s_aclk,
    sig_rd_sts_okay_reg_reg,
    sig_rsc2stat_status_valid,
    sig_mmap_rst_reg_n,
    m_axis_mm2s_sts_tready,
    in);
  output FIFO_Full_reg_0;
  output [0:0]SR;
  output m_axis_mm2s_sts_tvalid;
  output [7:0]m_axis_mm2s_sts_tdata;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input sig_rd_sts_okay_reg_reg;
  input sig_rsc2stat_status_valid;
  input sig_mmap_rst_reg_n;
  input m_axis_mm2s_sts_tready;
  input [0:7]in;

  wire FIFO_Full_reg_0;
  wire [0:0]SR;
  wire [0:0]SS;
  wire \USE_SRL_FIFO.sig_wr_fifo ;
  wire [1:0]addr_i;
  wire [2:0]addr_i_p1;
  wire \addr_i_reg_n_0_[2] ;
  wire fifo_full_p1;
  wire [0:7]in;
  wire m_axi_mm2s_aclk;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire m_axis_mm2s_sts_tready;
  wire m_axis_mm2s_sts_tvalid;
  wire sig_mmap_rst_reg_n;
  wire sig_rd_sts_okay_reg_reg;
  wire sig_rsc2stat_status_valid;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h09020000)) 
    FIFO_Full_i_1__1
       (.I0(addr_i[0]),
        .I1(m_axis_mm2s_sts_tready),
        .I2(\addr_i_reg_n_0_[2] ),
        .I3(\USE_SRL_FIFO.sig_wr_fifo ),
        .I4(addr_i[1]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SS));
  LUT6 #(
    .INIT(64'hA6A659A6A6A6A6A6)) 
    \addr_i[0]_i_1__0 
       (.I0(addr_i[0]),
        .I1(m_axis_mm2s_sts_tready),
        .I2(\addr_i_reg_n_0_[2] ),
        .I3(sig_rsc2stat_status_valid),
        .I4(FIFO_Full_reg_0),
        .I5(sig_rd_sts_okay_reg_reg),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6A6AA96A)) 
    \addr_i[1]_i_1__1 
       (.I0(addr_i[1]),
        .I1(addr_i[0]),
        .I2(\USE_SRL_FIFO.sig_wr_fifo ),
        .I3(m_axis_mm2s_sts_tready),
        .I4(\addr_i_reg_n_0_[2] ),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7F7F0180)) 
    \addr_i[2]_i_1__0 
       (.I0(addr_i[1]),
        .I1(addr_i[0]),
        .I2(\USE_SRL_FIFO.sig_wr_fifo ),
        .I3(m_axis_mm2s_sts_tready),
        .I4(\addr_i_reg_n_0_[2] ),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SS));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SS));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\addr_i_reg_n_0_[2] ),
        .S(SS));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][0]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[0]),
        .Q(m_axis_mm2s_sts_tdata[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \data_reg[3][0]_srl4_i_1 
       (.I0(sig_rsc2stat_status_valid),
        .I1(FIFO_Full_reg_0),
        .I2(sig_rd_sts_okay_reg_reg),
        .O(\USE_SRL_FIFO.sig_wr_fifo ));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][1]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[1]),
        .Q(m_axis_mm2s_sts_tdata[6]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][2]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[2]),
        .Q(m_axis_mm2s_sts_tdata[5]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][3]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[3]),
        .Q(m_axis_mm2s_sts_tdata[4]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][4]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[4]),
        .Q(m_axis_mm2s_sts_tdata[3]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][5]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[5]),
        .Q(m_axis_mm2s_sts_tdata[2]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][6]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[6]),
        .Q(m_axis_mm2s_sts_tdata[1]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[3][7]_srl4 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\USE_SRL_FIFO.sig_wr_fifo ),
        .CLK(m_axi_mm2s_aclk),
        .D(in[7]),
        .Q(m_axis_mm2s_sts_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_mm2s_sts_tvalid_INST_0
       (.I0(\addr_i_reg_n_0_[2] ),
        .O(m_axis_mm2s_sts_tvalid));
  LUT4 #(
    .INIT(16'h20FF)) 
    sig_rd_sts_reg_full_i_1
       (.I0(sig_rd_sts_okay_reg_reg),
        .I1(FIFO_Full_reg_0),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_mmap_rst_reg_n),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_0_1_srl_fifo__parameterized0_1
   (FIFO_Full_reg_0,
    Q,
    FIFO_Full_reg_1,
    SS,
    m_axi_mm2s_aclk,
    \addr_i_reg[1]_0 ,
    sig_mstr2sf_cmd_valid,
    \OMIT_UNPACKING.lsig_ld_cmd );
  output FIFO_Full_reg_0;
  output [0:0]Q;
  output FIFO_Full_reg_1;
  input [0:0]SS;
  input m_axi_mm2s_aclk;
  input \addr_i_reg[1]_0 ;
  input sig_mstr2sf_cmd_valid;
  input \OMIT_UNPACKING.lsig_ld_cmd ;

  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire \OMIT_UNPACKING.lsig_ld_cmd ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [1:0]addr_i;
  wire \addr_i[1]_i_1__3_n_0 ;
  wire [2:0]addr_i_p1;
  wire \addr_i_reg[1]_0 ;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire sig_mstr2sf_cmd_valid;

  LUT5 #(
    .INIT(32'h40000440)) 
    FIFO_Full_i_1__2
       (.I0(Q),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(FIFO_Full_reg_1),
        .I4(\OMIT_UNPACKING.lsig_ld_cmd ),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08F7F708)) 
    \addr_i[0]_i_1__1 
       (.I0(sig_mstr2sf_cmd_valid),
        .I1(\addr_i_reg[1]_0 ),
        .I2(FIFO_Full_reg_0),
        .I3(\OMIT_UNPACKING.lsig_ld_cmd ),
        .I4(addr_i[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'h9A999999A6AAAAAA)) 
    \addr_i[1]_i_1__3 
       (.I0(addr_i[1]),
        .I1(addr_i[0]),
        .I2(FIFO_Full_reg_0),
        .I3(\addr_i_reg[1]_0 ),
        .I4(sig_mstr2sf_cmd_valid),
        .I5(\OMIT_UNPACKING.lsig_ld_cmd ),
        .O(\addr_i[1]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAB6AAA)) 
    \addr_i[2]_i_1__1 
       (.I0(Q),
        .I1(addr_i[1]),
        .I2(addr_i[0]),
        .I3(FIFO_Full_reg_1),
        .I4(\OMIT_UNPACKING.lsig_ld_cmd ),
        .O(addr_i_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_i[2]_i_2__0 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[1]_0 ),
        .I2(sig_mstr2sf_cmd_valid),
        .O(FIFO_Full_reg_1));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SS));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\addr_i[1]_i_1__3_n_0 ),
        .Q(addr_i[1]),
        .S(SS));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_0_1_srl_fifo__parameterized1
   (FIFO_Full_reg_0,
    sig_addr_reg_empty_reg,
    FIFO_Full_reg_1,
    sig_push_addr_reg1_out,
    sig_calc_error_reg_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_addr_reg_empty,
    sig_sf_allow_addr_req,
    sig_mmap_rst_reg_n,
    sig_mstr2addr_cmd_valid,
    \addr_i_reg[1]_0 ,
    in);
  output FIFO_Full_reg_0;
  output sig_addr_reg_empty_reg;
  output FIFO_Full_reg_1;
  output sig_push_addr_reg1_out;
  output sig_calc_error_reg_reg;
  output [42:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_addr_reg_empty;
  input sig_sf_allow_addr_req;
  input sig_mmap_rst_reg_n;
  input sig_mstr2addr_cmd_valid;
  input \addr_i_reg[1]_0 ;
  input [40:0]in;

  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire [0:0]SR;
  wire [1:0]addr_i;
  wire [2:0]addr_i_p1;
  wire \addr_i_reg[1]_0 ;
  wire \addr_i_reg_n_0_[2] ;
  wire fifo_full_p1;
  wire [40:0]in;
  wire m_axi_mm2s_aclk;
  wire [42:0]out;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_empty_reg;
  wire sig_calc_error_reg_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;
  wire sig_sf_allow_addr_req;

  LUT6 #(
    .INIT(64'h1000211102220000)) 
    FIFO_Full_i_1__3
       (.I0(addr_i[0]),
        .I1(\addr_i_reg_n_0_[2] ),
        .I2(sig_sf_allow_addr_req),
        .I3(sig_addr_reg_empty),
        .I4(FIFO_Full_reg_1),
        .I5(addr_i[1]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h69666666)) 
    \addr_i[0]_i_1__2 
       (.I0(addr_i[0]),
        .I1(sig_push_addr_reg1_out),
        .I2(FIFO_Full_reg_0),
        .I3(\addr_i_reg[1]_0 ),
        .I4(sig_mstr2addr_cmd_valid),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAEAFF7F55150080)) 
    \addr_i[1]_i_1__2 
       (.I0(addr_i[0]),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(\addr_i_reg[1]_0 ),
        .I3(FIFO_Full_reg_0),
        .I4(sig_push_addr_reg1_out),
        .I5(addr_i[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'h07F0F0F0F0F0F0F8)) 
    \addr_i[2]_i_1__2 
       (.I0(sig_addr_reg_empty),
        .I1(sig_sf_allow_addr_req),
        .I2(\addr_i_reg_n_0_[2] ),
        .I3(FIFO_Full_reg_1),
        .I4(addr_i[0]),
        .I5(addr_i[1]),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i[0]),
        .S(SR));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SR));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\addr_i_reg_n_0_[2] ),
        .S(SR));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][11]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[39]),
        .Q(out[41]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][12]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[40]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][14]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][14]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][16]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[38]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][17]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[37]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][18]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[36]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][19]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][20]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][21]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][22]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][23]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][24]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][24]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][25]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][25]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][26]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][26]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][27]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][27]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][28]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][29]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][29]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][30]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][30]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][31]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][31]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][32]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][32]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][33]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][33]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][34]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][34]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][35]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][35]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][36]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][36]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][37]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][37]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][38]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][38]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][39]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][39]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][40]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][40]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][41]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][41]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][42]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][42]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][43]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][43]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][44]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][44]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][45]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][45]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][46]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][46]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][47]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][47]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][48]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][48]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][49]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][49]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][50]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][50]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][51]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][51]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][52]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][52]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][53]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][53]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][54]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][54]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \data_reg[2][54]_srl3_i_1 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[1]_0 ),
        .I2(sig_mstr2addr_cmd_valid),
        .O(FIFO_Full_reg_1));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][8]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(in[40]),
        .Q(out[42]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_1
       (.I0(out[42]),
        .O(sig_calc_error_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(sig_sf_allow_addr_req),
        .I2(sig_addr_reg_empty),
        .O(sig_push_addr_reg1_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    sig_posted_to_axi_2_i_1
       (.I0(sig_addr_reg_empty),
        .I1(sig_sf_allow_addr_req),
        .I2(\addr_i_reg_n_0_[2] ),
        .I3(sig_mmap_rst_reg_n),
        .O(sig_addr_reg_empty_reg));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module ps_axi_datamover_0_1_srl_fifo__parameterized2
   (FIFO_Full_reg_0,
    sig_next_sequential_reg_reg,
    m_axi_mm2s_rlast_0,
    m_axi_mm2s_rvalid_0,
    \sig_addr_posted_cntr_reg[2] ,
    sig_first_dbeat_reg,
    D,
    FIFO_Full_reg_1,
    E,
    sig_mmap_rst_reg_n_reg,
    sig_mmap_rst_reg_n_reg_0,
    out,
    SR,
    m_axi_mm2s_aclk,
    \addr_i_reg[1]_0 ,
    sig_mstr2data_cmd_valid,
    m_axi_mm2s_rlast,
    sig_mmap_rst_reg_n,
    sig_addr_posted_cntr,
    sig_first_dbeat_reg_0,
    sig_first_dbeat,
    Q,
    sig_dqual_reg_empty,
    sig_dqual_reg_empty_reg,
    sig_next_sequential_reg,
    \sig_dbeat_cntr_reg[0] ,
    \sig_dbeat_cntr_reg[4] ,
    sig_ld_new_cmd_reg,
    sig_inhibit_rdy_n_0,
    sig_dqual_reg_empty_reg_0,
    sig_rsc2stat_status_valid,
    sig_next_calc_error_reg,
    m_axi_mm2s_rvalid,
    sig_dqual_reg_full,
    \sig_dbeat_cntr_reg[0]_0 ,
    full,
    sig_last_dbeat_reg,
    sig_next_calc_error_reg_reg);
  output FIFO_Full_reg_0;
  output sig_next_sequential_reg_reg;
  output [0:0]m_axi_mm2s_rlast_0;
  output m_axi_mm2s_rvalid_0;
  output \sig_addr_posted_cntr_reg[2] ;
  output sig_first_dbeat_reg;
  output [7:0]D;
  output FIFO_Full_reg_1;
  output [0:0]E;
  output sig_mmap_rst_reg_n_reg;
  output sig_mmap_rst_reg_n_reg_0;
  output [71:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input \addr_i_reg[1]_0 ;
  input sig_mstr2data_cmd_valid;
  input m_axi_mm2s_rlast;
  input sig_mmap_rst_reg_n;
  input [2:0]sig_addr_posted_cntr;
  input sig_first_dbeat_reg_0;
  input sig_first_dbeat;
  input [7:0]Q;
  input sig_dqual_reg_empty;
  input sig_dqual_reg_empty_reg;
  input sig_next_sequential_reg;
  input \sig_dbeat_cntr_reg[0] ;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_ld_new_cmd_reg;
  input sig_inhibit_rdy_n_0;
  input sig_dqual_reg_empty_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_next_calc_error_reg;
  input m_axi_mm2s_rvalid;
  input sig_dqual_reg_full;
  input \sig_dbeat_cntr_reg[0]_0 ;
  input full;
  input sig_last_dbeat_reg;
  input [78:0]sig_next_calc_error_reg_reg;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [1:0]addr_i;
  wire \addr_i[0]_i_1__3_n_0 ;
  wire [2:1]addr_i_p1;
  wire \addr_i_reg[1]_0 ;
  wire \addr_i_reg_n_0_[2] ;
  wire fifo_full_p1;
  wire full;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire [0:0]m_axi_mm2s_rlast_0;
  wire m_axi_mm2s_rvalid;
  wire m_axi_mm2s_rvalid_0;
  wire [71:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr_reg[2] ;
  wire [15:9]sig_cmd_fifo_data_out;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[0]_0 ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n_0;
  wire sig_last_dbeat_i_3_n_0;
  wire sig_last_dbeat_i_5_n_0;
  wire sig_last_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mmap_rst_reg_n;
  wire sig_mmap_rst_reg_n_reg;
  wire sig_mmap_rst_reg_n_reg_0;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire [78:0]sig_next_calc_error_reg_reg;
  wire sig_next_sequential_reg;
  wire sig_next_sequential_reg_reg;
  wire \sig_next_tag_reg[3]_i_3_n_0 ;
  wire \sig_next_tag_reg[3]_i_4_n_0 ;
  wire sig_rsc2stat_status_valid;

  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \BLK_MEM.I_SYNC_FIFOGEN_FIFO_i_2 
       (.I0(m_axi_mm2s_rvalid),
        .I1(sig_dqual_reg_full),
        .I2(sig_next_calc_error_reg),
        .I3(\sig_addr_posted_cntr_reg[2] ),
        .I4(\sig_dbeat_cntr_reg[0]_0 ),
        .I5(full),
        .O(m_axi_mm2s_rvalid_0));
  LUT5 #(
    .INIT(32'h00490020)) 
    FIFO_Full_i_1__0
       (.I0(addr_i[0]),
        .I1(sig_next_sequential_reg_reg),
        .I2(FIFO_Full_reg_1),
        .I3(\addr_i_reg_n_0_[2] ),
        .I4(addr_i[1]),
        .O(fifo_full_p1));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h69666666)) 
    \addr_i[0]_i_1__3 
       (.I0(addr_i[0]),
        .I1(sig_next_sequential_reg_reg),
        .I2(FIFO_Full_reg_0),
        .I3(\addr_i_reg[1]_0 ),
        .I4(sig_mstr2data_cmd_valid),
        .O(\addr_i[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF40FF0040BF00)) 
    \addr_i[1]_i_1__0 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[1]_0 ),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_next_sequential_reg_reg),
        .I4(addr_i[0]),
        .I5(addr_i[1]),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'hAA6AABAA)) 
    \addr_i[2]_i_1 
       (.I0(\addr_i_reg_n_0_[2] ),
        .I1(addr_i[0]),
        .I2(FIFO_Full_reg_1),
        .I3(sig_next_sequential_reg_reg),
        .I4(addr_i[1]),
        .O(addr_i_p1[2]));
  FDSE \addr_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\addr_i[0]_i_1__3_n_0 ),
        .Q(addr_i[0]),
        .S(SR));
  FDSE \addr_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i[1]),
        .S(SR));
  FDSE \addr_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\addr_i_reg_n_0_[2] ),
        .S(SR));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][10]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[71]),
        .Q(out[64]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][11]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[70]),
        .Q(out[63]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][12]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[69]),
        .Q(out[62]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][13]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][13]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[68]),
        .Q(out[61]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][14]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][14]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[67]),
        .Q(out[60]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][15]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][15]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[66]),
        .Q(out[59]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][16]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[65]),
        .Q(out[58]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][17]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[64]),
        .Q(out[57]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][18]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[63]),
        .Q(out[56]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][19]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[62]),
        .Q(out[55]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][20]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[61]),
        .Q(out[54]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][21]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[60]),
        .Q(out[53]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][22]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[59]),
        .Q(out[52]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][23]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[58]),
        .Q(out[51]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][24]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][24]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[57]),
        .Q(out[50]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][25]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][25]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[56]),
        .Q(out[49]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][26]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][26]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[55]),
        .Q(out[48]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][27]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][27]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[54]),
        .Q(out[47]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][28]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[53]),
        .Q(out[46]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][29]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][29]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[52]),
        .Q(out[45]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][2]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[78]),
        .Q(out[71]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][30]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][30]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[51]),
        .Q(out[44]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][31]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][31]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[50]),
        .Q(out[43]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][32]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][32]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[49]),
        .Q(out[42]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][33]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][33]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[48]),
        .Q(out[41]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][34]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][34]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[47]),
        .Q(out[40]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][35]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][35]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[46]),
        .Q(out[39]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][36]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][36]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[45]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][37]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][37]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[44]),
        .Q(out[37]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][38]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][38]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[43]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][39]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][39]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[42]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][3]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[77]),
        .Q(out[70]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][40]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][40]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[41]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][41]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][41]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[40]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][42]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][42]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[39]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][43]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][43]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[38]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][44]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][44]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[37]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][45]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][45]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[36]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][46]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][46]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[35]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][47]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][47]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[34]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][48]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][48]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[33]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][49]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][49]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[32]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][4]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[76]),
        .Q(out[69]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][50]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][50]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[31]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][51]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][51]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[30]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][52]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][52]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[29]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][53]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][53]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[28]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][54]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][54]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[27]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][55]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][55]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[26]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][56]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][56]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[25]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][57]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][57]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[24]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][58]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][58]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[23]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][59]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][59]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[22]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][5]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[75]),
        .Q(out[68]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][60]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][60]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[21]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][61]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][61]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[20]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][62]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][62]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[19]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][63]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][63]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[18]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][64]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][64]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[17]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][65]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][65]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[16]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][66]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][66]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[15]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][67]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][67]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[14]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][68]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][68]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[13]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][69]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][69]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[12]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][70]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][70]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[11]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][72]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][72]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[10]),
        .Q(sig_cmd_fifo_data_out[15]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][73]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][73]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[9]),
        .Q(sig_cmd_fifo_data_out[14]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][74]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][74]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[8]),
        .Q(sig_cmd_fifo_data_out[13]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][75]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][75]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[7]),
        .Q(sig_cmd_fifo_data_out[12]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][76]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][76]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[6]),
        .Q(sig_cmd_fifo_data_out[11]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][77]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][77]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[5]),
        .Q(sig_cmd_fifo_data_out[10]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][78]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][78]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[4]),
        .Q(sig_cmd_fifo_data_out[9]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][7]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[74]),
        .Q(out[67]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][84]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][84]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][85]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][85]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][86]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][86]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][87]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][87]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \data_reg[2][87]_srl3_i_1 
       (.I0(FIFO_Full_reg_0),
        .I1(\addr_i_reg[1]_0 ),
        .I2(sig_mstr2data_cmd_valid),
        .O(FIFO_Full_reg_1));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][8]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[73]),
        .Q(out[66]));
  (* srl_bus_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2] " *) 
  (* srl_name = "U0/\\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/data_reg[2][9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[2][9]_srl3 
       (.A0(addr_i[0]),
        .A1(addr_i[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg_1),
        .CLK(m_axi_mm2s_aclk),
        .D(sig_next_calc_error_reg_reg[72]),
        .Q(out[65]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h01)) 
    m_axi_mm2s_rready_INST_0_i_1
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(sig_cmd_fifo_data_out[9]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(sig_cmd_fifo_data_out[10]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(sig_cmd_fifo_data_out[11]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(sig_cmd_fifo_data_out[12]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_cmd_fifo_data_out[13]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[4]),
        .I3(\sig_dbeat_cntr_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(sig_cmd_fifo_data_out[14]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\sig_dbeat_cntr_reg[4] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B88BB8B8)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(sig_cmd_fifo_data_out[15]),
        .I1(sig_next_sequential_reg_reg),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\sig_dbeat_cntr_reg[4] ),
        .I5(Q[4]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h5444FFFF44444444)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(\sig_next_tag_reg[3]_i_3_n_0 ),
        .I1(sig_dqual_reg_empty),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_next_sequential_reg),
        .I4(\sig_dbeat_cntr_reg[0] ),
        .I5(m_axi_mm2s_rvalid_0),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FFFB0004)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(Q[5]),
        .I1(\sig_dbeat_cntr_reg[4] ),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(sig_next_sequential_reg_reg),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h35300000)) 
    sig_first_dbeat_i_1
       (.I0(sig_first_dbeat_reg_0),
        .I1(sig_last_dbeat_i_3_n_0),
        .I2(sig_next_sequential_reg_reg),
        .I3(sig_first_dbeat),
        .I4(sig_mmap_rst_reg_n),
        .O(sig_first_dbeat_reg));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_reg),
        .I1(sig_next_sequential_reg_reg),
        .I2(sig_last_dbeat_i_3_n_0),
        .I3(E),
        .I4(sig_mmap_rst_reg_n),
        .I5(sig_dqual_reg_empty_reg),
        .O(sig_mmap_rst_reg_n_reg_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_last_dbeat_i_3
       (.I0(sig_cmd_fifo_data_out[12]),
        .I1(sig_cmd_fifo_data_out[14]),
        .I2(sig_cmd_fifo_data_out[13]),
        .I3(sig_last_dbeat_i_5_n_0),
        .O(sig_last_dbeat_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_5
       (.I0(sig_cmd_fifo_data_out[11]),
        .I1(sig_cmd_fifo_data_out[9]),
        .I2(sig_cmd_fifo_data_out[15]),
        .I3(sig_cmd_fifo_data_out[10]),
        .O(sig_last_dbeat_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_next_sequential_reg_reg),
        .I1(sig_mmap_rst_reg_n),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_mmap_rst_reg_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \sig_next_tag_reg[3]_i_1 
       (.I0(sig_next_sequential_reg_reg),
        .I1(m_axi_mm2s_rlast),
        .I2(m_axi_mm2s_rvalid_0),
        .I3(sig_mmap_rst_reg_n),
        .O(m_axi_mm2s_rlast_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    \sig_next_tag_reg[3]_i_2 
       (.I0(m_axi_mm2s_rvalid_0),
        .I1(sig_next_sequential_reg),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_dqual_reg_empty),
        .I4(\sig_next_tag_reg[3]_i_3_n_0 ),
        .O(sig_next_sequential_reg_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \sig_next_tag_reg[3]_i_3 
       (.I0(sig_inhibit_rdy_n_0),
        .I1(sig_dqual_reg_empty_reg_0),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_next_calc_error_reg),
        .I4(\addr_i_reg_n_0_[2] ),
        .I5(\sig_next_tag_reg[3]_i_4_n_0 ),
        .O(\sig_next_tag_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sig_next_tag_reg[3]_i_4 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(\sig_next_tag_reg[3]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_datamover_0_1_xpm_counter_updn__parameterized1
   (Q,
    S,
    DI,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    rd_en,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[7]_0 ,
    SR,
    wr_clk);
  output [0:0]Q;
  output [1:0]S;
  output [0:0]DI;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input [1:0]\gwdc.wr_data_count_i_reg[7] ;
  input [1:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input wr_clk;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \gen_fwft.count_en ;
  wire [1:0]\gwdc.wr_data_count_i_reg[7] ;
  wire [1:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__3 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 [0]),
        .I5(count_value_i),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(count_value_i),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q),
        .R(SR));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(\gwdc.wr_data_count_i_reg[7] [1]),
        .I2(Q),
        .I3(\gwdc.wr_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[7]_i_16 
       (.I0(count_value_i),
        .I1(\gwdc.wr_data_count_i_reg[7] [0]),
        .I2(\gwdc.wr_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(count_value_i),
        .I1(\gwdc.wr_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_datamover_0_1_xpm_counter_updn__parameterized2
   (DI,
    Q,
    S,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    leaving_empty0,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[10] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [0:0]DI;
  output [9:0]Q;
  output [2:0]S;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output leaving_empty0;
  output [4:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [0:0]\gwdc.wr_data_count_i_reg[7] ;
  input [10:0]\gwdc.wr_data_count_i_reg[10] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire [2:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [4:0]\count_value_i_reg[6]_0 ;
  wire \count_value_i_reg_n_0_[10] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire going_full1;
  wire [10:0]\gwdc.wr_data_count_i_reg[10] ;
  wire [0:0]\gwdc.wr_data_count_i_reg[7] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(\count_value_i_reg_n_0_[10] ),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[10] ),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gwdc.wr_data_count_i_reg[10] [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_empty0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[10] [0]),
        .I2(\gwdc.wr_data_count_i_reg[10] [2]),
        .I3(Q[2]),
        .I4(\gwdc.wr_data_count_i_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[10] [6]),
        .I2(\gwdc.wr_data_count_i_reg[10] [8]),
        .I3(Q[8]),
        .I4(\gwdc.wr_data_count_i_reg[10] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[10] [3]),
        .I2(\gwdc.wr_data_count_i_reg[10] [5]),
        .I3(Q[5]),
        .I4(\gwdc.wr_data_count_i_reg[10] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[10]_i_4 
       (.I0(Q[9]),
        .I1(\gwdc.wr_data_count_i_reg[10] [9]),
        .I2(\count_value_i_reg_n_0_[10] ),
        .I3(\gwdc.wr_data_count_i_reg[10] [10]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[10]_i_5 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[10] [8]),
        .I2(Q[9]),
        .I3(\gwdc.wr_data_count_i_reg[10] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[10]_i_6 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[10] [7]),
        .I2(Q[8]),
        .I3(\gwdc.wr_data_count_i_reg[10] [8]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[10] [5]),
        .I2(Q[6]),
        .I3(\gwdc.wr_data_count_i_reg[10] [6]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[10] [4]),
        .I2(Q[5]),
        .I3(\gwdc.wr_data_count_i_reg[10] [5]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[10] [3]),
        .I2(Q[4]),
        .I3(\gwdc.wr_data_count_i_reg[10] [4]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[10] [2]),
        .I2(Q[3]),
        .I3(\gwdc.wr_data_count_i_reg[10] [3]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[7] ),
        .I2(\gwdc.wr_data_count_i_reg[10] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[10] [6]),
        .I2(Q[7]),
        .I3(\gwdc.wr_data_count_i_reg[10] [7]),
        .O(\count_value_i_reg[6]_0 [4]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_datamover_0_1_xpm_counter_updn__parameterized2_2
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[10]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    DI,
    S,
    \gwdc.wr_data_count_i_reg[10] ,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[10]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [10:0]Q;
  output [3:0]D;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[10]_0 ;
  input rst_d1;
  input [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [1:0]DI;
  input [6:0]S;
  input [2:0]\gwdc.wr_data_count_i_reg[10] ;
  input [0:0]\gwdc.wr_data_count_i_reg[7] ;
  input [7:0]\gwdc.wr_data_count_i_reg[10]_0 ;
  input wr_clk;

  wire [3:0]D;
  wire [1:0]DI;
  wire [10:0]Q;
  wire [6:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire \gwdc.wr_data_count_i[10]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[10]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_14_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire [2:0]\gwdc.wr_data_count_i_reg[10] ;
  wire [7:0]\gwdc.wr_data_count_i_reg[10]_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_7 ;
  wire [0:0]\gwdc.wr_data_count_i_reg[7] ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:2]\NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED ;
  wire [6:0]\NLW_gwdc.wr_data_count_i_reg[7]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[10]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[10]_i_2 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [7]),
        .O(\gwdc.wr_data_count_i[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[10]_i_3 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [6]),
        .O(\gwdc.wr_data_count_i[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[7] ),
        .I2(\gwdc.wr_data_count_i_reg[10]_0 [0]),
        .I3(\gwdc.wr_data_count_i_reg[10]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[10]_0 [1]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[10]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED [7:2],\gwdc.wr_data_count_i_reg[10]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[10]_i_2_n_0 ,\gwdc.wr_data_count_i[10]_i_3_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED [7:3],D[3:1]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i_reg[10] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,DI,Q[0]}),
        .O({D[0],\NLW_gwdc.wr_data_count_i_reg[7]_i_1_O_UNCONNECTED [6:0]}),
        .S({S[6:2],\gwdc.wr_data_count_i[7]_i_14_n_0 ,S[1:0]}));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_datamover_0_1_xpm_counter_updn__parameterized3
   (Q,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_datamover_0_1_xpm_counter_updn__parameterized3_3
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [9:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) 
(* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "297984" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "1019" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "291" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "291" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) 
(* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "9" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module ps_axi_datamover_0_1_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [290:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [290:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid_fwft1;
  wire [290:0]din;
  wire [289:0]\^dout ;
  wire empty;
  wire full;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire [10:7]\grdc.diff_wr_rd_pntr_rdc ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire [10:7]\^wr_data_count ;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [290:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [290:290]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[290] = \<const0> ;
  assign dout[289:0] = \^dout [289:0];
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10:7] = \^wr_data_count [10:7];
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  ps_axi_datamover_0_1_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_3 ),
        .Q(count_value_i),
        .S({\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\gwdc.wr_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\gwdc.wr_data_count_i_reg[7]_0 (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_21),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "291" *) 
  (* BYTE_WRITE_WIDTH_B = "291" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "289" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "290" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "297984" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "291" *) 
  (* P_MIN_WIDTH_DATA_A = "291" *) 
  (* P_MIN_WIDTH_DATA_B = "291" *) 
  (* P_MIN_WIDTH_DATA_ECC = "291" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "291" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "291" *) 
  (* P_WIDTH_COL_WRITE_B = "291" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "291" *) 
  (* READ_DATA_WIDTH_B = "291" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "291" *) 
  (* WRITE_DATA_WIDTH_B = "291" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "292" *) 
  (* rstb_loop_iter = "292" *) 
  ps_axi_datamover_0_1_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({1'b0,din[289:0]}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [290:0]),
        .doutb({\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED [290],\^dout }),
        .ena(1'b0),
        .enb(rdp_inst_n_14),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(\^wr_data_count [10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(\^wr_data_count [7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(\^wr_data_count [8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(\^wr_data_count [9]),
        .R(xpm_fifo_rst_inst_n_1));
  ps_axi_datamover_0_1_xpm_counter_updn__parameterized2 rdp_inst
       (.DI(rdp_inst_n_0),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_14),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_11,rdp_inst_n_12,rdp_inst_n_13}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_21),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (full),
        .\gwdc.wr_data_count_i_reg[10] ({wrp_inst_n_1,wr_pntr_ext}),
        .\gwdc.wr_data_count_i_reg[7] (count_value_i),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ps_axi_datamover_0_1_xpm_counter_updn__parameterized3 rdpp1_inst
       (.Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (rdp_inst_n_14),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ps_axi_datamover_0_1_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ps_axi_datamover_0_1_xpm_counter_updn__parameterized2_2 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_0,\gen_fwft.rdpp1_inst_n_3 }),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S({rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[10]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_14),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\gwdc.wr_data_count_i_reg[10] ({rdp_inst_n_11,rdp_inst_n_12,rdp_inst_n_13}),
        .\gwdc.wr_data_count_i_reg[10]_0 (rd_pntr_ext[8:1]),
        .\gwdc.wr_data_count_i_reg[7] (count_value_i),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ps_axi_datamover_0_1_xpm_counter_updn__parameterized3_3 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ps_axi_datamover_0_1_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1] (curr_fwft_state),
        .\count_value_i_reg[9] (full),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ps_axi_datamover_0_1_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ps_axi_datamover_0_1_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    SR,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    ram_empty_i,
    \count_value_i_reg[1] ,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output [0:0]SR;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1] ;
  input wr_clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]\count_value_i_reg[1] ;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT4 #(
    .INIT(16'hAAAE)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1] [1]),
        .I3(\count_value_i_reg[1] [0]),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0001111100011111" *) (* EN_SIM_ASSERT_ERR = "warning" *) (* FIFO_MEMORY_TYPE = "block" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_sync" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "2" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* READ_DATA_WIDTH = "291" *) (* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "291" *) 
(* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module ps_axi_datamover_0_1_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [290:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [290:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [290:0]din;
  wire [289:0]\^dout ;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire [10:7]\^wr_data_count ;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [290:290]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [6:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[290] = \<const0> ;
  assign dout[289:0] = \^dout [289:0];
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10:7] = \^wr_data_count [10:7];
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "297984" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "291" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "291" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ps_axi_datamover_0_1_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({1'b0,din[289:0]}),
        .dout({NLW_xpm_fifo_base_inst_dout_UNCONNECTED[290],\^dout }),
        .empty(empty),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count({\^wr_data_count ,NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[6:0]}),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "291" *) (* BYTE_WRITE_WIDTH_B = "291" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "297984" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "291" *) (* P_MIN_WIDTH_DATA_A = "291" *) (* P_MIN_WIDTH_DATA_B = "291" *) 
(* P_MIN_WIDTH_DATA_ECC = "291" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "291" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "291" *) 
(* P_WIDTH_COL_WRITE_B = "291" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "291" *) 
(* READ_DATA_WIDTH_B = "291" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "291" *) (* WRITE_DATA_WIDTH_B = "291" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "292" *) 
(* rstb_loop_iter = "292" *) 
module ps_axi_datamover_0_1_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [290:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [290:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [290:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [290:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [290:0]dina;
  wire [289:0]\^doutb ;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTPB_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTADOUT_UNCONNECTED ;
  wire [15:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTPBDOUTP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[290] = \<const0> ;
  assign douta[289] = \<const0> ;
  assign douta[288] = \<const0> ;
  assign douta[287] = \<const0> ;
  assign douta[286] = \<const0> ;
  assign douta[285] = \<const0> ;
  assign douta[284] = \<const0> ;
  assign douta[283] = \<const0> ;
  assign douta[282] = \<const0> ;
  assign douta[281] = \<const0> ;
  assign douta[280] = \<const0> ;
  assign douta[279] = \<const0> ;
  assign douta[278] = \<const0> ;
  assign douta[277] = \<const0> ;
  assign douta[276] = \<const0> ;
  assign douta[275] = \<const0> ;
  assign douta[274] = \<const0> ;
  assign douta[273] = \<const0> ;
  assign douta[272] = \<const0> ;
  assign douta[271] = \<const0> ;
  assign douta[270] = \<const0> ;
  assign douta[269] = \<const0> ;
  assign douta[268] = \<const0> ;
  assign douta[267] = \<const0> ;
  assign douta[266] = \<const0> ;
  assign douta[265] = \<const0> ;
  assign douta[264] = \<const0> ;
  assign douta[263] = \<const0> ;
  assign douta[262] = \<const0> ;
  assign douta[261] = \<const0> ;
  assign douta[260] = \<const0> ;
  assign douta[259] = \<const0> ;
  assign douta[258] = \<const0> ;
  assign douta[257] = \<const0> ;
  assign douta[256] = \<const0> ;
  assign douta[255] = \<const0> ;
  assign douta[254] = \<const0> ;
  assign douta[253] = \<const0> ;
  assign douta[252] = \<const0> ;
  assign douta[251] = \<const0> ;
  assign douta[250] = \<const0> ;
  assign douta[249] = \<const0> ;
  assign douta[248] = \<const0> ;
  assign douta[247] = \<const0> ;
  assign douta[246] = \<const0> ;
  assign douta[245] = \<const0> ;
  assign douta[244] = \<const0> ;
  assign douta[243] = \<const0> ;
  assign douta[242] = \<const0> ;
  assign douta[241] = \<const0> ;
  assign douta[240] = \<const0> ;
  assign douta[239] = \<const0> ;
  assign douta[238] = \<const0> ;
  assign douta[237] = \<const0> ;
  assign douta[236] = \<const0> ;
  assign douta[235] = \<const0> ;
  assign douta[234] = \<const0> ;
  assign douta[233] = \<const0> ;
  assign douta[232] = \<const0> ;
  assign douta[231] = \<const0> ;
  assign douta[230] = \<const0> ;
  assign douta[229] = \<const0> ;
  assign douta[228] = \<const0> ;
  assign douta[227] = \<const0> ;
  assign douta[226] = \<const0> ;
  assign douta[225] = \<const0> ;
  assign douta[224] = \<const0> ;
  assign douta[223] = \<const0> ;
  assign douta[222] = \<const0> ;
  assign douta[221] = \<const0> ;
  assign douta[220] = \<const0> ;
  assign douta[219] = \<const0> ;
  assign douta[218] = \<const0> ;
  assign douta[217] = \<const0> ;
  assign douta[216] = \<const0> ;
  assign douta[215] = \<const0> ;
  assign douta[214] = \<const0> ;
  assign douta[213] = \<const0> ;
  assign douta[212] = \<const0> ;
  assign douta[211] = \<const0> ;
  assign douta[210] = \<const0> ;
  assign douta[209] = \<const0> ;
  assign douta[208] = \<const0> ;
  assign douta[207] = \<const0> ;
  assign douta[206] = \<const0> ;
  assign douta[205] = \<const0> ;
  assign douta[204] = \<const0> ;
  assign douta[203] = \<const0> ;
  assign douta[202] = \<const0> ;
  assign douta[201] = \<const0> ;
  assign douta[200] = \<const0> ;
  assign douta[199] = \<const0> ;
  assign douta[198] = \<const0> ;
  assign douta[197] = \<const0> ;
  assign douta[196] = \<const0> ;
  assign douta[195] = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[290] = \<const0> ;
  assign doutb[289:0] = \^doutb [289:0];
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[35:32]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [31:0]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [35:32]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN(dina[67:36]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[71:68]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [67:36]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [71:68]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "107" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "107" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "107" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ),
        .DINADIN(dina[103:72]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[107:104]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [103:72]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [107:104]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "108" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "108" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "143" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_3 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DBITERR_UNCONNECTED ),
        .DINADIN(dina[139:108]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[143:140]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [139:108]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [143:140]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "179" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "179" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "179" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_4 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DBITERR_UNCONNECTED ),
        .DINADIN(dina[175:144]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[179:176]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [175:144]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [179:176]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "180" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "180" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "180" *) 
  (* ram_slice_end = "215" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_5 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DBITERR_UNCONNECTED ),
        .DINADIN(dina[211:180]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[215:212]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [211:180]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [215:212]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "251" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "251" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "251" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_6 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DBITERR_UNCONNECTED ),
        .DINADIN(dina[247:216]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[251:248]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [247:216]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [251:248]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "252" *) 
  (* \MEM.PORTA.DATA_MSB  = "287" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "252" *) 
  (* \MEM.PORTB.DATA_MSB  = "287" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "252" *) 
  (* ram_slice_end = "287" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_7 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_DBITERR_UNCONNECTED ),
        .DINADIN(dina[283:252]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[287:284]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\^doutb [283:252]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\^doutb [287:284]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_7_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTA.DATA_LSB  = "288" *) 
  (* \MEM.PORTA.DATA_MSB  = "289" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_LSB  = "288" *) 
  (* \MEM.PORTB.DATA_MSB  = "289" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "297984" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "288" *) 
  (* ram_slice_end = "289" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_8 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[289:288]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTADOUT_UNCONNECTED [15:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTBDOUT_UNCONNECTED [15:2],\^doutb [289:288]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_8_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SLEEP(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
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
