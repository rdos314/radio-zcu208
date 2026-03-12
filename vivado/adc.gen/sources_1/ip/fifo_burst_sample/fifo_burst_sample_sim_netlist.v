// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Mar 12 00:33:15 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/ip/fifo_burst_sample/fifo_burst_sample_sim_netlist.v
// Design      : fifo_burst_sample
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_burst_sample,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module fifo_burst_sample
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [19:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [19:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [19:0]din;
  wire [19:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "20" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "20" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "63" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "62" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_burst_sample_fifo_generator_v13_2_13 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_burst_sample_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_burst_sample_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_burst_sample_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_burst_sample_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_burst_sample_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_burst_sample_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 100640)
`pragma protect data_block
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
`pragma protect end_protected
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
