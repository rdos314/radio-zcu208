// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:27:51 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_axi_dma_0_1/rfdc_ex_axi_dma_0_1_stub.v
// Design      : rfdc_ex_axi_dma_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "rfdc_ex_axi_dma_0_1,axi_dma,{}" *) (* core_generation_info = "rfdc_ex_axi_dma_0_1,axi_dma,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_dma,x_ipVersion=7.1,x_ipCoreRevision=36,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_LITE_ADDR_WIDTH=10,C_S_AXI_LITE_DATA_WIDTH=32,C_DLYTMR_RESOLUTION=125,C_PRMRY_IS_ACLK_ASYNC=1,C_ENABLE_MULTI_CHANNEL=0,C_NUM_MM2S_CHANNELS=1,C_NUM_S2MM_CHANNELS=1,C_INCLUDE_SG=1,C_SG_INCLUDE_STSCNTRL_STRM=0,C_SG_USE_STSAPP_LENGTH=0,C_SG_LENGTH_WIDTH=26,C_M_AXI_SG_ADDR_WIDTH=64,C_M_AXI_SG_DATA_WIDTH=32,C_M_AXIS_MM2S_CNTRL_TDATA_WIDTH=32,C_S_AXIS_S2MM_STS_TDATA_WIDTH=32,C_MICRO_DMA=0,C_INCLUDE_MM2S=0,C_INCLUDE_MM2S_SF=1,C_MM2S_BURST_SIZE=16,C_M_AXI_MM2S_ADDR_WIDTH=64,C_M_AXI_MM2S_DATA_WIDTH=32,C_M_AXIS_MM2S_TDATA_WIDTH=32,C_INCLUDE_MM2S_DRE=0,C_INCLUDE_S2MM=1,C_INCLUDE_S2MM_SF=1,C_S2MM_BURST_SIZE=64,C_M_AXI_S2MM_ADDR_WIDTH=64,C_M_AXI_S2MM_DATA_WIDTH=512,C_S_AXIS_S2MM_TDATA_WIDTH=512,C_INCLUDE_S2MM_DRE=0,C_INCREASE_THROUGHPUT=0,C_FAMILY=zynquplus}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_dma,Vivado 2025.1" *) 
module rfdc_ex_axi_dma_0_1(s_axi_lite_aclk, m_axi_sg_aclk, 
  m_axi_s2mm_aclk, axi_resetn, s_axi_lite_awvalid, s_axi_lite_awready, s_axi_lite_awaddr, 
  s_axi_lite_wvalid, s_axi_lite_wready, s_axi_lite_wdata, s_axi_lite_bresp, 
  s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_arvalid, s_axi_lite_arready, 
  s_axi_lite_araddr, s_axi_lite_rvalid, s_axi_lite_rready, s_axi_lite_rdata, 
  s_axi_lite_rresp, m_axi_sg_awaddr, m_axi_sg_awlen, m_axi_sg_awsize, m_axi_sg_awburst, 
  m_axi_sg_awprot, m_axi_sg_awcache, m_axi_sg_awvalid, m_axi_sg_awready, m_axi_sg_wdata, 
  m_axi_sg_wstrb, m_axi_sg_wlast, m_axi_sg_wvalid, m_axi_sg_wready, m_axi_sg_bresp, 
  m_axi_sg_bvalid, m_axi_sg_bready, m_axi_sg_araddr, m_axi_sg_arlen, m_axi_sg_arsize, 
  m_axi_sg_arburst, m_axi_sg_arprot, m_axi_sg_arcache, m_axi_sg_arvalid, m_axi_sg_arready, 
  m_axi_sg_rdata, m_axi_sg_rresp, m_axi_sg_rlast, m_axi_sg_rvalid, m_axi_sg_rready, 
  m_axi_s2mm_awaddr, m_axi_s2mm_awlen, m_axi_s2mm_awsize, m_axi_s2mm_awburst, 
  m_axi_s2mm_awprot, m_axi_s2mm_awcache, m_axi_s2mm_awvalid, m_axi_s2mm_awready, 
  m_axi_s2mm_wdata, m_axi_s2mm_wstrb, m_axi_s2mm_wlast, m_axi_s2mm_wvalid, 
  m_axi_s2mm_wready, m_axi_s2mm_bresp, m_axi_s2mm_bvalid, m_axi_s2mm_bready, 
  s2mm_prmry_reset_out_n, s_axis_s2mm_tdata, s_axis_s2mm_tkeep, s_axis_s2mm_tvalid, 
  s_axis_s2mm_tready, s_axis_s2mm_tlast, s2mm_introut, axi_dma_tstvec)
/* synthesis syn_black_box black_box_pad_pin="axi_resetn,s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_awaddr[9:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_wdata[31:0],s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_araddr[9:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],m_axi_sg_awaddr[63:0],m_axi_sg_awlen[7:0],m_axi_sg_awsize[2:0],m_axi_sg_awburst[1:0],m_axi_sg_awprot[2:0],m_axi_sg_awcache[3:0],m_axi_sg_awvalid,m_axi_sg_awready,m_axi_sg_wdata[31:0],m_axi_sg_wstrb[3:0],m_axi_sg_wlast,m_axi_sg_wvalid,m_axi_sg_wready,m_axi_sg_bresp[1:0],m_axi_sg_bvalid,m_axi_sg_bready,m_axi_sg_araddr[63:0],m_axi_sg_arlen[7:0],m_axi_sg_arsize[2:0],m_axi_sg_arburst[1:0],m_axi_sg_arprot[2:0],m_axi_sg_arcache[3:0],m_axi_sg_arvalid,m_axi_sg_arready,m_axi_sg_rdata[31:0],m_axi_sg_rresp[1:0],m_axi_sg_rlast,m_axi_sg_rvalid,m_axi_sg_rready,m_axi_s2mm_awaddr[63:0],m_axi_s2mm_awlen[7:0],m_axi_s2mm_awsize[2:0],m_axi_s2mm_awburst[1:0],m_axi_s2mm_awprot[2:0],m_axi_s2mm_awcache[3:0],m_axi_s2mm_awvalid,m_axi_s2mm_awready,m_axi_s2mm_wdata[511:0],m_axi_s2mm_wstrb[63:0],m_axi_s2mm_wlast,m_axi_s2mm_wvalid,m_axi_s2mm_wready,m_axi_s2mm_bresp[1:0],m_axi_s2mm_bvalid,m_axi_s2mm_bready,s2mm_prmry_reset_out_n,s_axis_s2mm_tdata[511:0],s_axis_s2mm_tkeep[63:0],s_axis_s2mm_tvalid,s_axis_s2mm_tready,s_axis_s2mm_tlast,s2mm_introut,axi_dma_tstvec[31:0]" */
/* synthesis syn_force_seq_prim="s_axi_lite_aclk" */
/* synthesis syn_force_seq_prim="m_axi_sg_aclk" */
/* synthesis syn_force_seq_prim="m_axi_s2mm_aclk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_LITE_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE_ACLK, ASSOCIATED_BUSIF S_AXI_LITE:M_AXI, ASSOCIATED_RESET axi_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, INSERT_VIP 0" *) input s_axi_lite_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_SG_CLK CLK" *) (* x_interface_mode = "slave M_AXI_SG_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_SG_CLK, ASSOCIATED_BUSIF M_AXI_SG, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, INSERT_VIP 0" *) input m_axi_sg_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_S2MM_CLK CLK" *) (* x_interface_mode = "slave M_AXI_S2MM_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_S2MM_CLK, ASSOCIATED_BUSIF M_AXI_S2MM:S_AXIS_S2MM:S_AXIS_STS, ASSOCIATED_RESET s2mm_prmry_reset_out_n:s2mm_sts_reset_out_n, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input m_axi_s2mm_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_RESETN RST" *) (* x_interface_mode = "slave AXI_RESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_resetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) (* x_interface_mode = "slave S_AXI_LITE" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [9:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [9:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWADDR" *) (* x_interface_mode = "master M_AXI_SG" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_SG, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_sg_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWLEN" *) output [7:0]m_axi_sg_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWSIZE" *) output [2:0]m_axi_sg_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWBURST" *) output [1:0]m_axi_sg_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWPROT" *) output [2:0]m_axi_sg_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWCACHE" *) output [3:0]m_axi_sg_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWVALID" *) output m_axi_sg_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG AWREADY" *) input m_axi_sg_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG WDATA" *) output [31:0]m_axi_sg_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG WSTRB" *) output [3:0]m_axi_sg_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG WLAST" *) output m_axi_sg_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG WVALID" *) output m_axi_sg_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG WREADY" *) input m_axi_sg_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG BRESP" *) input [1:0]m_axi_sg_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG BVALID" *) input m_axi_sg_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG BREADY" *) output m_axi_sg_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARADDR" *) output [63:0]m_axi_sg_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARLEN" *) output [7:0]m_axi_sg_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARSIZE" *) output [2:0]m_axi_sg_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARBURST" *) output [1:0]m_axi_sg_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARPROT" *) output [2:0]m_axi_sg_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARCACHE" *) output [3:0]m_axi_sg_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARVALID" *) output m_axi_sg_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG ARREADY" *) input m_axi_sg_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG RDATA" *) input [31:0]m_axi_sg_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG RRESP" *) input [1:0]m_axi_sg_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG RLAST" *) input m_axi_sg_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG RVALID" *) input m_axi_sg_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_SG RREADY" *) output m_axi_sg_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWADDR" *) (* x_interface_mode = "master M_AXI_S2MM" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_S2MM, SUPPORTS_NARROW_BURST 0, NUM_WRITE_OUTSTANDING 16, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_s2mm_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWLEN" *) output [7:0]m_axi_s2mm_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWSIZE" *) output [2:0]m_axi_s2mm_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWBURST" *) output [1:0]m_axi_s2mm_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWPROT" *) output [2:0]m_axi_s2mm_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWCACHE" *) output [3:0]m_axi_s2mm_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWVALID" *) output m_axi_s2mm_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWREADY" *) input m_axi_s2mm_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WDATA" *) output [511:0]m_axi_s2mm_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WSTRB" *) output [63:0]m_axi_s2mm_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WLAST" *) output m_axi_s2mm_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WVALID" *) output m_axi_s2mm_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WREADY" *) input m_axi_s2mm_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BRESP" *) input [1:0]m_axi_s2mm_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BVALID" *) input m_axi_s2mm_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BREADY" *) output m_axi_s2mm_bready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S2MM_PRMRY_RESET_OUT_N RST" *) (* x_interface_mode = "master S2MM_PRMRY_RESET_OUT_N" *) (* x_interface_parameter = "XIL_INTERFACENAME S2MM_PRMRY_RESET_OUT_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output s2mm_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA" *) (* x_interface_mode = "slave S_AXIS_S2MM" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_S2MM, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [511:0]s_axis_s2mm_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP" *) input [63:0]s_axis_s2mm_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID" *) input s_axis_s2mm_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY" *) output s_axis_s2mm_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST" *) input s_axis_s2mm_tlast;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 S2MM_INTROUT INTERRUPT" *) (* x_interface_mode = "master S2MM_INTROUT" *) (* x_interface_parameter = "XIL_INTERFACENAME S2MM_INTROUT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output s2mm_introut;
  output [31:0]axi_dma_tstvec;
endmodule
