// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Apr 14 22:10:32 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/ip/fifo_ptr/fifo_ptr_sim_netlist.v
// Design      : fifo_ptr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_ptr,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module fifo_ptr
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
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
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
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
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "11" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_ptr_fifo_generator_v13_2_13 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_ptr_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_ptr_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81824)
`pragma protect data_block
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
CfOanrRy1S9jCuz5Qzl9ePayDyZ3EACK3kOEa2E=
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
