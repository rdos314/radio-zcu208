// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Nov 13 23:20:08 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/ip/fifo_doa_low/fifo_doa_low_sim_netlist.v
// Design      : fifo_doa_low
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_doa_low,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module fifo_doa_low
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [69:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [69:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [69:0]din;
  wire [69:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
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
  (* C_DIN_WIDTH = "70" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "70" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
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
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
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
  (* C_USE_EMBEDDED_REG = "1" *) 
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
  fifo_doa_low_fifo_generator_v13_2_13 U0
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
        .rd_rst_busy(rd_rst_busy),
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
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_doa_low_xpm_cdc_gray
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
module fifo_doa_low_xpm_cdc_gray__1
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_doa_low_xpm_cdc_single
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_doa_low_xpm_cdc_single__1
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_doa_low_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_doa_low_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 107152)
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
