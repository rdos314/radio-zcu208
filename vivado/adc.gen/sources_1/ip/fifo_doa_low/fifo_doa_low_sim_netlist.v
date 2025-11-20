// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Nov 19 21:34:13 2025
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
