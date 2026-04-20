// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Apr 20 23:18:27 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/ip/fifo_spy/fifo_spy_sim_netlist.v
// Design      : fifo_spy
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_spy,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module fifo_spy
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [13:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [13:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [13:0]din;
  wire [13:0]dout;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "14" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "14" *) 
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
  (* C_MEMORY_TYPE = "2" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_spy_fifo_generator_v13_2_13 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_spy_xpm_cdc_async_rst
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
module fifo_spy_xpm_cdc_async_rst__1
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
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_spy_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_spy_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_spy_xpm_cdc_single
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
module fifo_spy_xpm_cdc_single__1
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
DkrAesSLBeDxhaXI0asb+puroLvZBWosIXruDqTgmPTfjI3i0ebKCZLqSBTKg5KUexTiKWVl+9Ug
OYhkMJXkn0n/j8/6GJO1z/4tReZHG89WtZnUKH7DqjJ9cbYER+xiMOLSptE29AOOLGbQ4MjVzy18
/GymLeiAgR0qzkp9N7Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yr55bXOTA5/Rx+gX4TeeJXN0K2cBO3bWYWFnZFCMoAD3+p3RscsDqPrCcQoQK89bE+j5quTJPCqN
12//qWlZoWwZn76VLtgZ6uR08n49XeFz74xjL/TLVxYGXt6h6xX4vQmlg4FObv4H7DjasBX3ZKbJ
ok2aUJCoVpTf1qKo+JcowFn3wCJuym0DTf+pKogOmnP+lFMp5UqrHjukbVdejhRT74VR1/DemaE8
T5gZjbZ3QR/HcWThFnFovoQYfDe6/w6F45CxJCG+PeP9h3J9NvtHuoTROp/4Pm3PwHsb42eiSpxr
pnyaDp+17FZLap9oxsD4do1RXjk5D34ULkJVIA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
O7CLKF7GDUoxVy+wsDp+MYsQrWrtsRT6vUjYFyhzMh6Ub+aCHVi4kv7qJlcKC/lqgz7jtEMHuwnT
UOnYZwGZhoYQGiyYgQ49hiQ3ZRRKZhFERi0ZIsCQqnt9KL/lctiP1qftlXs9jExoeBOOF7u/WVi3
pyQy0g7Wba9UIUGIm6s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GNpCV29nEkhsU3/WearppJw/bF+jpNkJZ/R95n3ICdpGLWfuUStwlUy8HF9jlXwQBHOlyBOP7M8y
5/3deJ7dP9wf0/ktca2pbkd2baod2G4UyNgD7Kw6HEUvRRpyTJZ/L3VmfGT+tIbWo6HIxzLTs/m5
5iqKTaDaI4Q3qK4JULeTAAdRL/RfQmSpb3LUmOqKahCwxslnzUfjlDrQ1yr6O4UDsXY4hdfrGK9D
/I7KoTKVvEhrueaX2jRmY3TQrBUt4jyGRe3PZ6bG503/ai2p2yjlgo+WpvN4/p05/WKtMyZOkIZl
UJBltJG+KSXZ7ZMQP6CiBt0LOX7irCbHz0Jc8g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DywZ/kNdKOmRTL7XhjPG/GfMoClg4ctHdFzXJa3aew7oWOtgVWlq099QePdVKIIjIu5l23MJcdIO
oqynvDtsO7VQVhHYIpsQFOj2gSnqXKfBL8B5bT2FcKG3ooFRv+3lkOFeU5Nw8WL0q47fLhyAMLNd
/9HoUonhRo19wn0Me1Do9aWic/JVt3e9Nd7ru1ix5nBBPNQOlYU7SVx+2X1T2XaJWYvLixlk0Mhc
jMhvX3YFZPzZ0+CM93ob1QR9ScG+y4XfYgNogHRVVefGFoLz2+xnJN+Bu/U0KTX6CQMDDd3buBwQ
T6pBRJKKEDybcMbPkbOJLE5f5LO6qExT7Tg1VA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xk76vYY5+Mi9SikZxGvoXU0nDA0NsPtFqoFTdNelYrbJJjzYNc3fKoKmeAPJEHAK68DYNC1hfZ+h
wET+8JT5Y0DFS6q4lseScDHDk1aw1B8bX+BjAZGKZ0aHGVLPVIBWoebVqqt6jq4ixwO9FqIZHsBM
+MvVrCQvX1DCzUaRFYo14SpAvNJqUYqu6GG3yylKDKwbG8MXyf+cxyC3SADqw9GIWVeUU6K6qVhw
xPAS+X8RLs2umC5guWQim6qB6i7UvICDc0XHSGBJTshyHB7pJ2HTmwrJM0u4VdB6VWY7d3+mSXiS
DD460Qt+vAgSG+7W6NzEmdFsY1oS7d9BmIM8TQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lnn2zznD4woSpcQ8qX9T+xHBP0X7XM2/xXLBM/d+4CrXYKZQlI5YUEvGjRGGV7RB+4F2JgUow8cF
xFJeqARfTzUNSbwmUP/DFMtqlGEpM1nl55xR/wX4ilkSqJcznCGf58hVz/IgOrc5d0OVvOQ/RNYL
rQXtkBsY4w2O8c7EGphPL24fy/JJg5k7ryF7nyHr6SJRrqNDPv/NiKuP5m/kV27HfpteXE06q4M0
JWC5QAIiv5LTpXAb+DVggJmRRAjxMvV2S84NjffxHFMCaMTvtc+jxlYh9aF+cQNAKPRiHAx85SiJ
PEFLBbwPCT5vvJDdLpasydWmMxkjZHzK2xrqeQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
DUNozA2bEHamc0iNCnZvk8LepBeINdhN5GX+6IX34qnspEKMKv7BjtLqXgwW/V/JCnWf8Y7OIbw4
f22QHEpI1y43+nOTrbDPPtprE6ltlBCtccryEPYttIQJF/Tiu49G9uWMIYmXUXgklMNLgBGIeDiK
MdigVvsFpWQ6/uEjPAFsj2WD2pLIKxqEXb3OZ0Nem9xlsoptO6Uf3qgYsXspsW/L4zVBsQNlETzy
cGcBkm40vHTRqemA2HpoPknluLKSuOwehOGvmKh55bvIJRxVFCrPdV4bF50Nq2S4uePYJ2wCeLJb
1sDpBCI5cUI6kGfJN0e+OIQ/DwN9iIoPWSdiKj6BN3I0bmh8maYAcAmtDaAzTaXC3jXkFQB+ik7h
V11sxx0a+8ZYnH66nJrJftgrmqQZU1leLEGxxaKkkPXytKyATXEpCz9MbzyjKwvliQljZcszf7lH
WWRPP6R6bKU8hpjrVAMsuRm+R8j4iHc4nTPqt7cZhlyhAViBvlB2C40D

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHaUQmQmLufYzNZ5QppuzuiisgA7fFX3fAiRBFmfJqYPZjTG0XgsTNCRYHWXcuY3m9BX/s9Er2Gd
/L/4+bT/RXW5ZkETw2SBQHO7qe1CJqtNqDahDuB0zADrCR/cKwPDQtFItqIOeGeJoLEA9s/HUvSD
th2uPFi0+hFXeDicj+1plX4ApmUWJska8TlRwC0oi/m+lIBBbRrdYO5XY38+qhOgnKC2wPmdMbkc
EFGNFdyzlp/ZUen6C7tswoDOjsDSmlB3wOq10stSLY7Bo90k8f9xLzuwI5q+H7plQuinSdWPRTYu
x9hcgLtu9zFvPwNz/KNLHShBAtzUCp4bx3dwGw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sOYoFu61UC8Y00qCHUNN26P31U5AWJ63SSgVOs2Gp7CWPJ+P3OCRLePUP3+bAteUgBN7AVfI4R/z
Yw2S8JiIqaRcTitNUHv2Diet7aTJZ4Pnf0fbOaK8TOtu0MU72ttMTQPYuX472KGwdJiqBAxB4FzH
KuXCK8Q+rXGxbV5Sub0rOi5KOyQYei7zMxxhQsQHIl4iRkiNGJ5OLhaX6w1YJw60TzJq3XLnqBbu
hbrtcwSQccW8il9D3IlW+Uk+JKVURvFU0ULOXoBLyfWnFH57yQp5QhIrCf8jqGqVd4po+EbPJz6B
sWESgEhaJa8ccl9THIShRCNPAVXkyfN7wTTFmA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fz3nBHklRG4aYQk8bMLrCmmQlzihvhNQmRJkDjMqAVQp3WfT3s29tMACoxDJDWmUKcN48pRpjTcS
XQtCGGmwDaUP9aAsJBVtDs3tIakQoXZ/Q+b6bJy16xRLtVX3DbYsT5harhUkmBWCTRn3H1XrmQyv
sxbL1P6awsZjt9hO4Mdv3YOqh9IsIKEnsRIHQNdH6IFLnpz/3Zi3LzPQNq06nEuGqIvBuo3484HA
Oqj7FoYVOOEHSLUEZOW8wOSmhniWeAOKTQGQRonLiMMuS8yDcXSIQh1zEg+e0cBH8+1DW5cFMzeD
wCbuSTLTBwW2672ks/1kB5Hp7UKgj/KoG2ySZA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82304)
`pragma protect data_block
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
9p6FcuLcrf49dWfuOMPHjdiLPpP5bxDs/eK730tvQzTLU3jn1onZUmbci6PxLYUknav1KsDyB5aW
DkiwFRvcN1yloVnMCpXFuuX5V8/MSvs26TG5MGZCOMFahB/PDnX6ubt5+Xd6zzaOAlni2bFwsj2G
0xSQdePw47YPI+0rj7SEzh++OolLM93GUhT1nOMSpGBQWLo6rV3wlMVoI6HR67fnUL6lLaj7tWVI
tMp/IbkGPmF9odqkhKV/0/7Z8Ci02eY8A9XfgUrNEKHprzJlb3Ex54oRl5ei4BWXMeG51BPrrEJw
Cp31gjtodIgKboojX5626AQylllLLWZB8HUzrmJTW2JgWhFgGLIMO0jabjBaKfWgUyJiIQs4v1wp
IVZUjqjr29LWdhHICeQZKCcfsjPh8s8EM3d/u5J2+RDZggc9pTbLky2O1iOIOiZD6ObytfpqUoQQ
CPsrLUIW+HaVN0Z4x2D145mrKBuLQElwtqD4lLTHguRtftkESCl02hWm5gDerIJkhoea7MwxPn8I
iL7YzEyrp9wMtlq1tjcztOh60mkJbxYhYTibtPzOphY12Yes1WFFbM3XiBWVzT3Tx6piFZ7QDbhR
umI4aROrBpQvkrT5CXjEpD2j8ivSg4N0E/sPzY3zzAqulPOqFJTsNZVSXpMMS+ZyGzidzn0o1+tF
2RsFLID3LIRzB/qe8qDsH9DIufMNjBcQiBsMOUv9nvMV9icKni55IM2gACMZXUPHsiyjUVGyXJlY
i+v6voRcnTuqmdrGKNVwmKeDznpQnoAtScOj1Ng0ql7AvtfhZ6BQqDk0DfiNQM6xRt7j3+xyapb0
/KodIcu59bLmRgxuSYqGhrcs6MzV00LFurBcxZczK+SPjhFKHzx9JY/lFqEd7XbXesnitEFG1Gt/
PkWqESsQtdAtGK0/NiliErpg8MhTnXaUD32sPg+LdXPf2mXA9g2FUdODTPhr98O4PQRnavJcll/d
J4B3fZOp6vmUxIpDS92JRUid/phMRraqmpwvrqR8WYdZgq8SoJJvzYC7otHEm0u5UDBOhqhY3TXX
ehnFoLPV/xGMQs115DJJ2QWlcWyMNE9+6SigbjfH4uHGfxVzz3F4YLgDPfGfHy3cWkuSR/b20aOI
zyUXHIXfUf4FTX5RAsQYRyESCjjJgLuJntiARNuCOxjxIXTaOXwDPP0oXAyk9wFgK1EOKNG1YboF
r7fcHEwhzx44toS25m8qVk/G2Z1dWuIxMKPx2InfwD/HwBDmXqnNVGfpTs3wITcnkQ2q+wAGSkzk
ERknDwwGsnqijgvAbTi95BlkCoqpOtLkpqB9CXlfj8MwCJXLtdzmuwNDK9hTJ5NyvVWBhqGjIkdr
Pg5tqYplmiOQV5aKvm7jrymzhS/lvo391FSwuV522zXD+qpNtTQ0KtYErpuShMjZQGH1K/g9iuqY
jFifiUpP9/bMouiteWZt8FSqXJWlCSW8XrNQQeoJccfj3FAgAXbfuGRUNqXtRimIaj6/Na5aQc7e
UVJqGA/P90rMbjGYwJd8JrgScoqvuLjLH18dB2tRL5MAWy4v39bcH+etXkyBDtY0rsK/uAyCtK/4
a8GE2od1GZePUUnLfGUKMvNTydsHIPDUMwlvZ/vMlM592nO0rAKxGrerkOSxqwFAnHoVC2TZnnbs
YpnikR0+lbX7o/pIEubOZ9iiSJ3MbGifDGVHpnynNczxF/DnH5M6tFVIX1wdB5LwPJRV2JPBaeYk
WSDbb+VHCiNG0Zwr4G4hQaC3ruOtCq9+E9Trty/C+QqtwKVr4NZWlm1oO1U9S7zJUuXaZSsBFPeD
nBF8Xb2ez1VnG7/dDTKJcqlrNiUusVCcc9xEolLqexO41hmFXBPat9NgplNw0n3xEOB4l/HlgQ7x
MgoZuCBH8JxB217XJLlyuu82HartBmTDHXfIPY9mVdVeoOjPeaE1tpeWYqD0w49XnifXxlBZoRTK
Rm3Q7qSTDAldOItUrwtxaMgFTpE9w5UaM8LXhM6GmvNMFcbMKPGzRzCwrgFl4Rf2n/SIlOEjeFa5
ZmMXq1XdHySeUhdkh1g9bX4G1z+YSHaQOEFpnK3d2xwp6naOwmW5LRUNFf/fQL0fryC0len6g4yn
IQpAyEk32oNHn1RhzvEimnaoB7vc2yLrFeUiexZuA1a47LVMDfPa1EweIPgQ059752xU/uevIibn
2slSmahJ62Jv3Z7JWR561geOOSMHCiPdM4waFrDJgFCaeAbiq7lIZOPsJhxkTiegYG7RAAxbHA3w
xqT+9eXPwByL2fguMKHN3fdsAyLtgyANPL7Rq2zXQBmFLPinQKcBH7rhYt9tmkWMgVW8/Si2pIwY
PLtEVVBOi7sygvJJNaThgvm2/hpdEiiU37eezMg1uPz8+rYCB/EzdmfkG7gYzeik3wUrgftr4Jar
hTgoVEI2Ul7jdcbmbs30nno1/nfO/tQA2waaHW1Njc7IHvNEXEsVmOaxuJ/eaFwzKfMGMRRoi4Hp
X4UWWjvtn8mNdKe4UggLXO7LFy+jnzOk0oGeWIpIVoo/Hv9BK/X1vlUESrPmeHRulI/F5SixRn1U
DNTSEWh3PPe7E+26HpK8s6qRNyie6WreMbpT9D+lstBpaCfVC9OPv+R4nkZQHnQQP2K6m/agbGY7
WP/tGdEgdU9onwxS815cuFCKire7HCdJbSoMXedvniDub6QmhWVUPaISlFQW0Vt36djcdxjTieZx
xqbgmNEULw545bZeIGPCLOmNZPizXzf6i1dGvkHB1y0PzwCkt5YEP2NLMRd3xNPtRyiMmCHCLdZ5
TlV2wfUfKJ9sxnuFoodbS2DB42S1WV0Dgaw9zbhtZOWPrgnDRn4LGfzIiOUjVnrqrA5wMw4MrJfU
dnn2pzL9PwlIhgx/YsRVTu4dy4ZdBYlw1Gc8brHMYBkG6Wcu6sbsL9X3BB7AJOmJ9Pw3K9OQ4IIZ
coGZAMt352UMQ2S2QhO+2az4XJPR5/goIWL+SEvPpeAX9qg7MNbaKyADaMc9W7ANgwLd5tJDrRBg
iuip9yMJjBQ+8sg5kT/e5Yu7Xv0saF1GA94zG6Rx7De8e8l1Uwutp8b3oU3wm70VCNfxSRtnfMyM
UjAyC+j/a0Uy2RIT9pezoEFxOpn4ve7zPmI2kWhyPn6oQRC/yihYWIYcRPOkxhOTc9/llmaSD27L
uls98q9QCsS9ZpEcWYeZ3fPcj3tbiYXl42CPrxMpXJ35hBqvIK+EOQZRORTRlZn7Wf0qZws5Ckne
kLlrBilJljlDkrOQQtYQ+8YkzzySXuw43kxATsQI5sofahiBqSV5ex+OeUnEhWXRmeo04J8ktUGR
S2g4IAKoYaLpToOO9tft4bOmypTOQQNYwBR9+O7Dao4R6Tx5Q9ePCYAzqr/QyeLy4qqv6QKfYALE
uHignPa20NudwXGUyaRMSdwUFtc4FI/uU8GjU0+6t2Ehg4iYLCOj3bqxMu613dsE120JFHxwvyfZ
3nVmcU3VJfs4xn3Gayh3fzmP4PPbBJ+np0jroadKryYZLBSqIH1/WAcTq+I+xA1W2GdYCkbVhg4d
62m4wFcuBvfC6trSWJ1sH6SfrTfZisc7pQ/mzExILYDpvAwIPje9WYMrl4jyo+srZAuVRzXzcvho
CGBFnc3gPY05wzB7OQBPYrhjdaJcvFiFPhBVvLg3aqoc+0v5/NQc9BAOcy6ASpCFwmR1EBEfdBAu
qAVHOlblV+WSKvL5pJhxexuIYeGMJ23Yqem+X7k8gaIdfxiNnXq2uq4iDaaez+Dd0GHNoUx090E4
mhQBUWy4og94hkM+JtphVBIzuizlQctGS46OSZOGz1f4pk667IIHXsEl+VTWQtPct9s7yp04VN+N
epJ/HgX1831Kk+P5GDiBPbhuME32BqxGJhPX3RA3ZmS9S7EJjGAU7BKB+K/5mxBbyamA2myYiFNn
4JEiKkQtNKX7KR5z1y95EQyxQSqReLb4wskNGdzhUVjzuHy7fCCXUdU6xkSS/tlOgK1wm0s+TuUp
na0eJqm0DzPcWhT6W8rXKe6ditWfk4CWP2f16pJuec8Ir/ZmryuD5mhDZDQCzZVsghoG0X/CihxZ
9KKQbkWfaghV1P8eIjXtb+AadrNuhuG5Lz9Gih/RMgVcc6bpJVMXN0U1w58pAdepie2S7ERQfK3V
VGtBvZQ0SbDu4kOF5LYHCXsPXBOhuyJGeu/6gkZd1eIRyqwT/DooRnIZe/G398LRjmwLhzQmk7px
TBVNxwptKg6JDJ9aUwgw8X4dAaK1bxEOYEaCf8tquS5DnCIfriyHPUxqf6UyMjUXMbGoVHHawVeV
DgrtKok1iHB+vXGO1A1CpM8Ku9Wgg9CaSmEszvl+XOeAH7XdiPbcQiPplrtuHFjpb/zjsq+3gTJU
ij9Ty1A9fI6LVEFsqPcfSFexwE40qScPRIIBi2tO6zEJPdGf+jHs5R0FARECjYOs4l+wEOH8V/8R
fz+6dhytn/NGqb371pLVhEFrjK0UznC5QQk6/Nxp+gZJ9VJmGT0aG2uUPvRj4ZObmpYH1Z+wE9tQ
QFe8i7cGK6SbOQBrpV/udlgEI90sBzvC91MWe8R7UP/gL6iB/BrFe/D2xI00VySpP4jVuPvZoxIP
ira4WczpdOBvAluCMrMFt0lAF6xM3voGIohDtbrtfuRBvUGg8bt/MGmc9hE5XH4oEmIRZwP/gh72
xWhw1ilmlssCl16gVTL/q6YiXe1c5uYJLDVhKAaYxRG9tzCVYLBZ+uLEcw2QcQaGidv4iv3nNSFL
Gj9yBrdzBiGgB2ClG00R4fxwJdTDBpGsurA3VBLPsOlLJM210Bir9b/zF1uBYotTg6W8Ooq0uDv6
7WnxSv8z2BsG/Mj6hJtXcmIUb0yxUT4vzJcQbIBpB0KsMEBy3c6soaKQ8mOkDaYleglD5QO928th
91l1H19eaKKMtzDhB0/+mHVMeNvTQO/KZcTvRecT5MkNzs1cmvdEovjxZCrOrOFncVyvv57IPx67
ugcVDI5oLIy5bZBuIqs4OL2iYPZgyQI6gOxSgry/xhBaEzxcupnr+pt5CE3bKaoPZy8WRAaw+gFb
B0Hv4Srv9gKv1ds1LgKEGYCg6f740ZBw313uA6fFjUUzczQzNp6MMesMpbXcPNFiIgN8bZ1SFop+
QRHxsCyt+lmMy0UnmDX4j3GLIGpLaBqQg9U71fHN9L7aZEWtrgd0WrUZM9U6VOYQFgTQFwBxsqS+
BB58y+QY6lhLlVvIewvDllgEJ0oFc4w1BWJKIgKUX8qZfWoP64FNmKQfcfZASURJnt4RduUGoTt/
5FNQlJkctV//IjBvebXlEop0cNNWKGh8pEfcbFCjqUrcyuWpWcQxmUsKCBBB5I1efZURGGVodeco
UCsHRkXBuZkIdypRmiOMUEkbehW4WyQm2ZLKZrbWz2UjvlDE89Cco9XDKh77zj52zS5l8iE3xYK2
5OhOd/Gx752ehR7QTNRG7CgDnb/PVH8PybwKk7cXFE0W/ya+nvw9xwCAofr8F7QVqpfx1udNTtLW
zwaRhrnBDfnzi3wpnhgQrcxzVNEnFMC1P3as7lbJJmt0JguZr1yXpgXl1mARO9bLIOR+Kjg2mJDt
gZTmtfuWZBrW/bMrmrzjwdC6w3YidlKMpphHq73AvTcaqP5U8botGLZepurooCGm2wbdEu2kIa8M
4PRr7A5iPZPhF/d3siy/cnRW0GEYrpsl2MAqkP/w6lEYYmWerEEVHeT/pWt7ZZPqhvytbVpvKr6F
cGjm6N1X+Bi9sulFIMvBPuFZK0aybfwK+f6G42XitZY+k0BJnLZWQB5+Ub4i9vRRIo9HOVhWrb9W
puaB+42FLM6q7wTXLYZa6l+UxrbghvkXQ7JzGf3CfDPP7O8vqzydEGFu67Q3wwWEr3RhprlURZWv
H4pV777DErfSxfz/OYKWO6CPm76YkfV48+P/H0qWhU+s6Q544lLAs/PcO+H68qfm0nhyW5HaMBOD
nqkN7VAxe0EUtsexBn2nuYStxAeLda0tYiGkBf4PSNbvE2KA7V1K1pQelmECKqlgQAJB8lR/J8OF
6BODsZgoBlzAP1e9GL8dt8/W8/ZrznWzKR9kD7+GfrWgs1weZYmtlSgyq5i/kLclQfjmcTIg91zw
oJrCKFYmO8Gle6YnFXSJa4SetgXBE2/VeC1bYUUTsip+qbfo7ALyjfBONn/KddRoH8D1bgNMCHMK
Sq9gl2rf/sz1BOemrPlzwi63QwWbUpMkzBnEYwE/xrZoBC3hhhs/zsTvyRLuLOmiXWemilrQ13ol
eGw1K7H/ew0P9PZFK0adPZ5rnr23paPBiLmPMyXcoSf+RjFERC5ywGrPy7t7tTPvjWlLb6lUKdPj
BNb1WlRMZu8XkpqjiX5xYDz/wMe0f05Y/zsjQwyhdli5VzZa1pH2Zy70Cx5FIXbgtK8bc//eW8mY
xa3mw1lILz31iSng+alTya/nyNygJ6BAMiicsJVRVlCFnIV9yIj4v+QiSomjPcf4bwJLBdb+7wXe
UspuYXQIQeCBLKi7IgnYhHHVBMh2LhATvY/C1Sg14fb3rrb5nxIBrvstz7oom919gKCsGxzaG9D0
Plhs2USDWfh/dRhw7InV/OPHSB1EfY/q3whdu011KUvSbrOm9iR7cL4WiqHNtT7f9o5/WIZYYs/s
/W6JLzVWPPNtzBb7+MZ6LeXeFKnSFVu1XiJqnetCgIDpkM/AilxwuFNd9egLgP+XJL101YYBnn/6
ys6mvKd3G1tZYh7L50qBFomrBvqfSAoZiI3iK6jHMt4Kj39oXYeM5pajxxy8/THUPjeX2seC2+aW
jWZ6q9vQhFvfgWww6JYkcsomBGT5WSkrbRukMLNsEsCKxYRqHM3ma9PwAu9TB/bzjVq7gvnmd8F2
OAU0L6P3XZ/MCg9/UjVYLJAv4/81lfXJ2ADp7rJTPBoXy+TQuiyU0n4pxekdAwGwvyD8Wi0yDN7L
4FFnZOnGyPfLCd77hIWKj63K+W52MCyQWN+ADsCW2c/2ACIGGhpKKzQ1cebMAjEg6PhwUR33T/E2
x8rszGV84tBRaYnvW9o53oajouRTNCrY0KuL26Ox0DQ6RGcMjFs7JlPsQpLTtl6JlQCzKkPtUgz2
UMiNG6lAHjfSM0TpdZl9AZt/DDDmeF4hTa6OX/E7ApE6spBFEQdzbCTBZxD+AiuPYtbI5cVvYX08
scMb0/JmU/ZQHexX48gDPB3RCygm+AtIpLvmi6E61ojDITfuny3cb57iDblHtizcYpe3bR5KTeLt
XKa6wOxO4re4uFFRshEglKl6GVlwmpLXaSLJD3GKyTNoeKHqq2pNXCeXVDGJ5kIBNhBixovXJs7r
qu9z+df9pjo2GkR1fklJ6voDUgFpM+kKgj6WZgDFen7jC6lH5iPkNZb47E6b2WzPvRQ36JSA432v
+2t2xLElkR+wnWjuDuIUY/GBUCPPLdG92s+4urkC6RPOnHvpfc5batAyfSpmRYzmYpB21WVK02hS
NOHjfBkuRr6E+1EGvQKXDMsThHqdVvkag52l7zcVIn0YFsle1m8d4ZJDzWoHx09bq7KxAenA5hZP
JzEwwyzP+WJkOeQZyvJuoVNfwyw/iAL51JLynLZizhUmI+nGsFWiK2TmnEyvsGyE7VYeBC3eWa1z
qcruS34J/gv48iRMSTFkoFB2XL6bAm9b6y539wb+JHW7SocKEVPFKVtxzEHFNe1hgatHWr1gTktS
JBLjXORPi2KEqP+7tAerP12x4orvccDyqop6gMlPkXNUD6cfUN8ysDFCAIY2AHCl60X0RU9lO2PP
GUWYPlUdRy4bDxIwkat8165LWSz4tGwwZgX3qsX9YFDwtlgsJFqHIAnlP44iV+2vHEGlxb0Z9eaK
aSdVEyRjDPzqTQH9yL6wOj+SGyWi/7usY7u9YBy1JxYwcVGMQGUcKHeb42JUeOvp3P12MPWzBEsc
LMIEpfWQ/zKzlJBc/N9jNwoPh7Pni8Nz6DMW+QFnZ+CCljWeprjdb1voFuWXrYlSsqe+RRXz0Xa8
SQkbnspYMO3UVLPPmRWc0PmmY3EMUsSxxxcA+KzQgSljsfWD+Wrhv6Gh2Yohg+8eSDdUGarhmEVJ
4iY0TNiW0sUD0pnRkepIftFd8VdYm7/eKodLpBGpnfZYYJBMVjx2OcC8TSdb9zXgaCGsgXkEC+6a
kRVmuXEUVU774LKbqjIQUFHWyaWgtZ3rSBA5BSFCQSwaxoItrf/ZWvMWUziUxW5R9N49caqLF7++
5/f1JipGqu231UPRzRqKU2wUq6XC0zeDTPdGDlTZhpwjias+TFfSS+mjZzGHCrAC1JSqyz/bJ4gb
a4jh2Y+V64kupolLZTNWPfhxJUP8Q1gMNkhIC3ZTSJBCvHmMfnuKA43h2swDwDJuXq4bn0d+42lT
VUe/1zDBfTmZAd8U6qz16aZ+iQ4GESCmpB2kYykFEjWWvyDwK7wz41iBaW0WRKqJurw+rY6oL9DE
L5sGizoDHoamfKxNnK/dpue63R8D1sOnNNlmDQrUP5Fg7qMkWEwIOrQ/WuoQ1Wo4l9iwltC668zS
gHZ8el3tkjHrZi6w4Z1O43hjo/yxRYRVaMQ291o003YR/pcr4cEJyG3NzO4EI2pg9YbIkZeblRK5
8Igw0HYkf1gnOfCBtoNVY1wmzboCDfbCVnYwnS5BXxXJ4zf0zGohK2FC21cn8zXedUawV3H9hiQ5
QX+ue+x/47GVrzwaxg4rXIvmbDKYonuphx9ocR2TZd6byRKgqSRYGoZy1M5E6Yz2Pfnta+EGYK0L
BStKkfjrTkE9dDKVap0hk69/G1F0wHYLquiZDKBiOB/8tZxC73IKDjjX7JG323GxZLZHF2eI85Bv
/ldL8MdU7lmWVyanlPDlf1YuDEP77pET25hgiwAk2ubflIDaSip36b417EhgTsrLZ2E8i3/2J35+
kC1bmIYFEQrp0wt3tudZKwQeZE4hoj4ILpT3kpWrCfperC4AG/9jBmyGN3V2WbbaMBaWfoQtpBg6
ByelpNjd/E2mKyklkvPyzcRxMMAM2nEg3K7SRUZJdpRPhiBLga/s6t+vnIypbF6HuBNqWl/DcyVv
fhD1khvbrclEKghlxMmj1QIHPcvgDTtdT2/QO7gd388M71c9olBlW00+TtOJBTrgnuKcuz/Bxbkh
IsgXpyQ3EJpjS1NPu71jMakuCj7vLN+L66hHHZNe2bfqlK/F0tt4FZd2rTPct+XS/VPpr48K++ql
eeKKp/JzPqKGilBRU//SOdG9NuwLexx56VQKtSpFVhrdJlT/4lzGA3g1sZFfUZGkPIZA4KN5hdn9
0A7mtZ+qgJZuLwVAqXjJr0rfdOFo1pRgndjrm5xeTzfXC8yOvQFuYWg7CGGofVXSluNneBfCCHpG
QO7OJPkX4/wE5CN6/+bFIUozvWEc99mmb8x8+MNg/ugTQcIqxJAPRfeqOBLDaDB/1ZdXpJEZJ11o
HeHjxMudxNTgiPF0rGqfWi6Oe3FXk1Vz8nExX9UTz4b1THeOONQ8/5ccScZbrXlukZdRmqLNtOx3
2bJzjW/FpfNHqCSb5mTzOUc2kSTUKGy6FXdywFqlSy0r6XeYzzeKy3QZQAzOVVyN/2ZO9CiYRlZQ
csH+KBqLB85KmJh4KHU6OZHNch91vlcZ15e5VSp0HQU5l568K4MPgD1RyhylvsXd04gcGrEYKfxf
dED8yx/AV1NP3z3V7UQ233VJuaOSriyzBs6Tniu/e5z3YEcbe4u3fsOJ5xFwfvR8NYbMwgwUf5uH
Xh5PS9+03AHbjm/Pvf0VEX93JtESbhh8NRO4Vu1bsPhSk6WWIsaXAmmBzsQY45BeMSG38qea1SbA
Vjp9CEmTLYtfBQlqfh1jseeny+L5kizjPzmzx1QcHcwtLp86fTQwH75v7+nYbb9LV4PanjMC8/lB
QATtFFq23wN78krv8l7QpQDGayVm+4iexPJZVQYQ5e8EWRZ6W90NOEJ0eJMVxlbPU/veKZ2GzqoU
vH9ZS5iZzp7UrOBUI00j0oqJcEd+aMpi1IUdvOVZ/vBVjpfFAXSaSQGQ90TwtjU56BgZ7+p+ZSr8
vRsgMwEN3vbfZ4+h+O1HQDPjJf6TGMHa4QKiQQRXrlJjJEHe+ko75PJh1b6ANzSQonuMIIzfZPnc
iPXfrSbIJnJRlEt2lVVhMc9GW+D3ezomIcTUr8OgTHJscBzh6faGZdWpVyrCYVLBwk5tWFdruihV
Fr8eS8L5nmw/HAnNQNnjkJNGPplmzXyvYUbpmquOh31zv7co4n4TJY2HRbrH/isDaplEI/AFNwI1
Z1HuWiSBU+t2E8PuqKPbevP0QULM9wBLVrOZY2dkxdWfmEEo1cfj4Uf+/yJ7mPPlFWWBtXrtMgCc
V86PHhstD8/FBZNDqpiG+8SnYn/6m1rFd08/9zslRua+ebCDO6G6ISASh72yESW0Ej2QeY1nZP/j
zFehV+YSF/hc0vUYsKYQTdD2f4UkRhJgA6xprfp0PHd7D7Du14DRoPrTvUhsjuN+RD5WvbnQ+gO3
nqp3Hcg/SedXHGEm9kfC9klpUvqpa+5zKzLgW8qLGy58XH44mMXagHtPn2Sc5VqYzfxfn+mjTcLJ
ZNfaU81RHOqxx5OhwfB+EcvI3UtPS+hyRJv9gVV4GQRqUgodpLQvJ6H5r2UeRmKBdEs7a8zJdUZn
54zhGRtyMZ7BfMMTa+lUdV2AGP1SiqedITy3BFk2fHPsZLjwt9jNu4Y72t/Zf4sFZrfF1ntNGNG8
WP82BhEJJIyplx9F/2zKvtDPsdCDKagDrKVt6qUhsmisGiO5Xu0brymrnshainw+A7/wgmKZahTa
9bnzjoN72/0IuYZMlUqVckTFSw6pbyLqEowi1ySTqHIbiCPxOmBpWnzoecrnbRRDdJ9WIgcZekKk
GbHPrPPqc1oKwJ/xXQg08jsxfU0OdPcISRwH6yPLVM4FOVm+DChN55AKyAKCRbvGMcl/Z9XdPqaq
tAeev1wpKRK1McBIb3swRqcBbClFWzx7e2AuzTWXMFYQzar5OqDXE984+6gY624zXbDNlP5q9iO0
CJxvjIpbqwzHCTpk0gjle0xJE8JI3NC2JfqsHN/FD59UnTHp24dbKkT+230635W9etdvmzLY4Bq3
D1BRmWhFtZV4iDk39gjwnfzqXm+h674GrOmexGox6ufoaCoLS2Kx7XV9HJJ3ln63J8M27bJzWIsZ
sbNqIqh37bLF56ncw+/il7Gym54dqCFboa7MQeCRQUhuZy7a6Tbp/Dgb2LwD8kbZiBmuup6eLj6S
DP87TYFBOIx6+veWeniMq5kcH0Yx4SEPosVR6VGg2BOmaEtR2eHkSXqgodlkRZc/UY1j0jv3GGAb
0kuODRXAjg1Mk0H9Bt/Qzc4OygZzLwNaXt+OjdwIfYn3uVO/USGpHazZHWHBX9CEg8YfvLFTVSWk
YR+80GByl0oJc8dJNId/t3ZAZiJSrlYUg9ZPxECBdogETMgpYxcMnBQ3b4moZuHHOgdAI6azTRh4
QpMf8TM3udLMT47CkLViA9JDKTsuK9E9yFkRfTn0SUaYXstBdHJmpKXIK4QqvOdCzwX5xEVgiIP6
kITwtHIVfKF5DrXYW9wppxiIgmlet/V53BiCxAnPQHtEKA2B8pWGLnM8q4N7OTqTkAjsNmq1emBx
iv/u3yyHfk/ucm3HNrbP2vcgMI7OLmdBC283GfPsC7dpBZAkI2Qf1ztFZcaiekY9qFMrkrnWsZ41
NngNEiA8iORheCCCBXLm/QGUEbTZr/ybppmfJwzF7Gai5L+EGIFBaiEof4e6fFt8JdTz/lJKknyT
qOv14O0cEQ2kA8PdzrwCnQoTt6zAuP8bTxf4HMKekw8hcFutwvaHBUKv22te3pUZVqOFGYu8OxSB
iFvl6ajF0l7d1iv8+hM0ALiPiOFscAAaMJ3SUAiHEUEp+b5Tpqz4wVT78Xx63f3t9RQTxcpwBvQv
tQdzLpXxNS2Um7nJwRC5oaX9XuNAHfopuGKtEzCaXtRqKL4iMTTFfHE9mld6pLsMnAAUMK0X8Q+G
vsVwTtiphh1JOFDEZyhMLp411IOYipXp2Sy+WIfVjR+KckCgDPd36hsCP0Bj8FQsxFJMBeKnx3aE
WIbwbTcBkeUsnlNmVZt1AcZrL0Pud1A/pvRqbYuCEGHLdUkHZZDuubW/fbYhD45aia4VipeksldY
J7xiVGpu4O368778ykgdSxiYWT8Lhzw2m6w9ARsT54B2vEKZMYFumyhgf8o+/9Uk6u+fehAmHZzr
ZRQH0dTRkHJxNCzxuUqX8gK6U7bTXhBGT046qcxw4JoglVatLSRJaHXf6NBu/SZ99L2TL7jSyqeu
nXxq+xtUVy8eANbaFW32RRIoHtP2Ysw7lvZEurQ2XeuKp9pSS/bo/wyTayeS8d8H86mKK5DJP84D
AR6BODY6jb3RfVSYRGdwxEDdh/8vpbAUImYQirpc4D4RKpcFq62JqjexwcHV7pJ+PeLjw5mhrxRQ
oCm2N5K4kO/U7sdywWYPjhuf5V8b+WjKAR1YNJoOameGZrN90gm8LzpcUR1mt+OTdrDMz9gvBnes
+QiEr0c+9ybHlr2g797k/AnGIsiPJAgwOurRLQFkGHx4pHTCinWkCMNmq9vno+FXZXVhat1PjxM8
fPwtNJbbxfC9E7G6e50pcXf3VX2QPwaOoOG86a8D1UCyM81Wa8vs8f3ey3vsdCE9hIxFNNs9JDUb
EUuVtAND5TRCORADAbhPvek5fVgJQO3pVOFp3CSKRTfbT1Oavla7lYx3/hsleQjbcSHvgD+jdgOu
c3Z5+4uTqpTDl67jD9Mm+TVtJUfWa4AFW51Fl15u0l8YHfoZiDzteHd9MnauUFh8W8vB8M4K9EF0
5POUo/gINKnUnR0KrhDXabrIaDGvLZPXH9wRuYaEDLbwnUS9vvpnC3atqlZObAgwo8tujFhzG5F9
IWfmD3xcR1H21ZGK7ol/B1s+tg+/aS8hFT0I71QMZEDI2XpgDsM9ct92x/H1Rb8+SN7kGUDrizW7
LUm0PRw+0y3USCc+kGZV/AGwuKE7nY9yvj9c06hNPN2zJYj/sOeCpXFMcGYaw1G7fCVX39V5Xz3N
qxY2DDSLjyfli7gTpzLj15FLfK2aqti2RhLIvruK2X+vpa2M1lL7ojJ+1yqqHau+quHeUxfxzbi+
2QQudJlgfrQoWB0O2NFBiqKckS+o5Y097BzwDE+FkJYAYdoy5tgdEqXzVdSgQfu3wZqoteqdB8TE
O4aJmCug+NU3fCpAKh5V4uRoo1C3ud0ogO74beZHD2TBembK/EpxVbsyZyZOS4SgQeKHmScu7SE9
kYsaJYxT8/ZLppiBcNw27dwxcHZq/+TuB+H/H0bd/ZzRoX2lyIFaS+tcnQ9p51cTKVclgkSAoQ9E
ZSI3m1YIOXgSpTwMLHwPJqKhzuS8m1rIT/I8fXb5Fmw5aqJgeDfHain55JU1GNESHsjFd8a/gH4F
TZG3pcuru+VlqwhT6dA2Ry8jds9BaclBeLIJIfuNI4fUIuwHwBhbBJgXdGuUp3nIwhr/7kH8UHhv
+Rymt7CppNQt6Uq91HWqa+1v15ePOKswhArQVRs2DRwmPTXp80ZORcHGF/cStq+v3cqWmnYH5H/w
OCG79FajEwFdDtmb3XHVqzl+rpyNbDrv1sgHAc5ul2bX2/55zUIq/fqiHnQfQTEQPJ0xcTSnx83D
Ez39a2JxruI8UjU6FSfbJ4F5/HsPL1hxexqNx/n4c2Lyd3REHG8EFCpvKfwZRFDlZYfhD25n4cf/
vvfi70hWmMUghoJWVMnQon5lnhDsHl0Q1NaP48VLmPG54zmtoE0ShRZgKp/c/6sMWleHO80g0UjR
Wpjo1+WfoWAidV2yXhG/sEghcZVy7mRmdLWRWjFi9D8dDIspgmK2dgmMEdq/hBhYPXvLPw7+zRZ1
uutM4gY0ijHn1bKfpgzDIsLJ+XWAvqlPDyjuixAMqeYPOLgDe59L6XfoAwLAt2RKA7wdMuKbTMRE
RZO8P9Z4UaYC1I8vuYSiW7Yiee8KW199wMfFRHZlwQh8rfiBpM41WgaYV0aYsA+5kx5ysWMd+l3Y
t03u55uQVV/OJmH0+TnFQNUW3E7GGoz6RIFEbkia51fDA0h24+gBwsbTznp9yHkf1wwPw/cTgEuq
g0WtE1D73dpQ7YG/Hvy2qOuuykH76dyqVOweGjjlSp3FbUI6UBaq6N+nZCD4MC/wScuBRJhAEZge
wSITcCIWpZek1tCZv1u7KxaZgjuHORbcDwunv4kqKtQTCVmvtb0hrKRPdG9ex6JQJesdDdk2IEja
BnpmTobfmiwa1NB3LOS4gSIYSYHclXiylC2rq7kfZO7LbdlufBYi/9+KY/Y0IvIQWiQXmETRFb35
HByX14zINiGpBqVkXOIwmzuV5PkW4yrHO3T5ia5VDL1GaIpna4H4pubZPCeX8w20kF4UMOmXcDY9
nb1CdRGSahAMwzT+QVl/frDFk3meSLEcxToaEiCfnSi5PPewouMj5tWFB0yztLNzDVRnL4ymc+ee
Pf5hEXjvJ6maJauepWHLmUxav8AniGDyNWCdwH56PlZSwzXSQNcgCrgdaW0SVS5Em6P3hCPX3X0x
K/nRUACg6qMLvvSVhK/NuNVIzluYlQTuqIEvPGJtACqip7WFQE5NlhLZPwtAFYYKrpzG9j7ll9wz
6siZ+DP0bZkr2YJOUXE+vfWoUoO4So4MSfmfHQ7d65ZVcfS8RNvSkvHabnVf4TEybQtQaFACje5j
sUiePtOIudsR9MMIDod1qZwxt0aYO10nQ515rSRQ+Bh4LLanihCl3eiLE8Aoc6ZZTpaczRgf8qyK
dA5y0HKeQktQGYZNSexyeuf+uLLbE5yI/4P4SyB9J5uGyXFS5orlKcU6jpR166AU3SH2ZU9AQTsK
BxCzmFEe43lhJ420btK7nVDyykQebiec7yhqOaPUchpVjtkroEh3QuAEh1w831sM0IppzXBwozEv
sveMgtoJ9U/AnIssti8Yiz1E3zQx2vEULUi//A9ETy4p57szhYrEcI9PAhKx4uE7vVwduZFO0XLW
u8ai8CgcXXs9ihREef73Q6ONtmSi7XNiT9ZM1hHmLpq0qRwCkmrg9pCH26hpwxAI5Hs1WJq0TU9l
Fyf5GlKb5ld3UTTcktMI0iw/BVmZQGjApm1WCM2qQ0KQr9eLpEyVDjfNycbIvZaNu8gQxCk12HMV
4rbVE9eDLpLEQHB5DkXROpyNHiGXsKfBW48bWYUlgOnaPbQGLBa/8w47h1In0/Tgnjyud5d9zzBX
m/Fhb/UQuYfbMO1mmkxof7weVmdrUwF2xKx66Mjzt6MTzqomVC5AvXRuI+gJtUvZ17bUKZ8kPuw3
B0CnsKaHLnz7GBtkQ4PMjGq7gxGsOEc3g7V0KpCEYM3YF26rVHdpVbClEiT24rvK+0JJkO3pc3AZ
tJ0ujcOwno8kURpclJ6IolCipadmVjt40TSNHA6pmwHSDCPKjSNUUbY5myiDj5UmYP1P74AuHzNF
80SO5dAotOUUHASiRbWalHZPR4awa3ZTbkQGNjr0g48QCevk8jINfRpnfGeQ5nVssUznSzhZ9tYv
lNyfLfQ90ZUoFk3nPH6MkHCzm+G/DNW7Wh1Pvwndf51XEx3m616TYI5szmERFJvP1ZxTHX5WZFSl
OS9gEzDaJS+VPDqeF1rh/avZu4FVw6ggNdYCRz5vq0VR2xkcPZvk/cfK+fOHbAV/NKc7nrchhQbX
PXwZSrzYLlt4crfP0JSPIsJtPbQ7imCuB6OmssWeGQoaREBp4qtcEcBDPdTgJzfB/47ENICoSVfN
VzRa0lZFoC9MJ4XRwJEOg7WxOxWn3qUKLrOZ8EqvJFzhZzISsPan2sTkfEct5W0RJOIjiJOzCSlg
PMhFB3LRP8Gs4yffu3DNd5qmDxihnc6tVV1R3evSq7ucwGYjK2C5BM8YMVCWMuROHHQLcSdSbUyJ
4bF54wAZdDn+v+gMPx+ox4lZb7ubcRBzI3z1IfVR+/uxkHCm5XWSyypCXSTr4S7PGlYn8+bw4Th8
9zvxRLU6jAovgeQ3xq5iah19hZ8dJekRDGpLl4KVrZ5bnmv0m4NgoQ+QQm9uyANOptnJtS5MRl0O
6Xl+reboroH5fS309jadLqMpCsZDS6XtRyY/2M9M3zcNDJ9pAW2BdQyph84Xjbjj9YV5E9YNpt2d
+P3SjxxCt5BNSFdZAyEL/TGgu4CQ+dSKXnftbYo9zDJpOXcWk/ntmia+ZLyCxuHI95j3d/XM1HVK
jbV3fYPX5UvqIgumqN50YtOHThapuVSNlbcOo5DzfY3k56r/QMT2YIEZ5Xt7opPo6zWO8rpAT0lc
UUhcJLdPlCzMYSJM+BIdvwvSchYw8onLhn1SCT1GgvZ/o3Bm52U+Q4m+WRZN/LZeDMkGsGMeAYnx
j0/UnYE0uBgRjU7CqLfTig66PWXAoO7YtJx5CUaEQFwoTyHwbExYdg7iAskclcot+9PjdVD19vc8
LSHYTJAZ3P83JVSj+XlWsi8CEKBFu59dhqmXz1s6lR7LFL1aWOzM/uRi7Xkr080ImwL0+iC9Qrv1
jMgvrTm2aoh5904OxiO420eNm4912RzdbzS+NkkjVvcrA6OIuvQ8ZHUfDjRRe/QVwKt8IwAW+zKL
XBGGe8hNeQ/Abo49faYALnIFHNG9LexcEkEpXQkzEIvjJp+YiDvqgXZZN8+VGwLjP9Wc1O6YvT3T
0ET6m9wd5xB8EZWDZPtIgnWiRAMffzvEC9C3QkC01vvRYrvsWK6KOLfX3oy4jwXICCi4gyPLL2ZA
C0zVzRyiLTgzUCJOapS16jUsj+714SvzpqSbmhzC5SYiAcQVBRi3apdX79qh5FXIw6Bwg0cR4SEE
K//UXf78cbFiyBxn5fTu7sWjlQqsA4+PrgNaMoU7TDswHRiJciiMluQftShSP6jUllGwOU185mOD
b85zj/pU1AVGzX7hhIYnPqnscU7pNdaTonwUvoWlubmPvAgg+BahtSwfTb9o2lJAVEQCbcupmwIX
wQmNwE8JcHAQjqS78c0aA4H0c3kIVjcNZhc4KvFaiG2XHrUd+ITaqW6/jzYFXCia0HuFT3Kl1p5e
882DNuxDUZpSzo+Q1IHjrBZN3tq/8gAEpsjaVoplXrRmrH3vIG7cKYsiYi75EaqWk2VSpLqNLBF9
h9KqJCGYsi2KdVyhM/I7JxpY9DbZg8Zq2DvAlp55sgOcdQeyWiBbkWH2QB07XKCGKx3IzzA=
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
