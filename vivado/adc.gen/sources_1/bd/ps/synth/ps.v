//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Nov  3 23:09:35 2025
//Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
//Command     : generate_target ps.bd
//Design      : ps
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ps,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ps,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=22,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_board_cnt=3,da_rf_converter_usp_cnt=7,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ps.hwdef" *) 
module ps
   (GPIO_0_tri_o,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    led_8bits_tri_o,
    pl_clk_n,
    pl_clk_p,
    pl_sysref_n,
    pl_sysref_p,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vin0_01_v_n,
    vin0_01_v_p,
    vin0_23_v_n,
    vin0_23_v_p,
    vin1_01_v_n,
    vin1_01_v_p,
    vin2_01_v_n,
    vin2_01_v_p,
    vin2_23_v_n,
    vin2_23_v_p,
    vin3_01_v_n,
    vin3_01_v_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [1:0]GPIO_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc1_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc1_clk, CAN_DEBUG false, FREQ_HZ 500000000.0" *) input adc1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc1_clk CLK_P" *) input adc1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_8bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [7:0]led_8bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_N, CLK_DOMAIN ps_pl_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_P, CLK_DOMAIN ps_pl_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_SYSREF_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_SYSREF_N, CLK_DOMAIN ps_pl_sysref_n, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_sysref_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_SYSREF_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_SYSREF_P, CLK_DOMAIN ps_pl_sysref_p, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_sysref_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_n" *) (* X_INTERFACE_MODE = "Slave" *) input sysref_in_diff_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_p" *) input sysref_in_diff_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_N" *) (* X_INTERFACE_MODE = "Slave" *) input vin0_01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_P" *) input vin0_01_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_N" *) (* X_INTERFACE_MODE = "Slave" *) input vin0_23_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_P" *) input vin0_23_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin1_01 V_N" *) (* X_INTERFACE_MODE = "Slave" *) input vin1_01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin1_01 V_P" *) input vin1_01_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_01 V_N" *) (* X_INTERFACE_MODE = "Slave" *) input vin2_01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_01 V_P" *) input vin2_01_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_23 V_N" *) (* X_INTERFACE_MODE = "Slave" *) input vin2_23_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_23 V_P" *) input vin2_23_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin3_01 V_N" *) (* X_INTERFACE_MODE = "Slave" *) input vin3_01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin3_01 V_P" *) input vin3_01_v_p;

  wire [1:0]GPIO_0_tri_o;
  wire adc1_clk_clk_n;
  wire adc1_clk_clk_p;
  wire [8:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [8:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [4:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [4:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [8:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [8:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [17:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [17:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire composite_0_fifo_rd;
  wire composite_1_fifo_rd;
  wire [447:0]decimate_0_fifo;
  wire decimate_0_fifo_wr;
  wire [447:0]decimate_1_fifo;
  wire decimate_1_fifo_wr;
  wire [31:0]fir_deci_E0_m_axis_data_tdata;
  wire fir_deci_E0_m_axis_data_tvalid;
  wire [31:0]fir_deci_E1_m_axis_data_tdata;
  wire fir_deci_E1_m_axis_data_tvalid;
  wire [31:0]fir_deci_N0_m_axis_data_tdata;
  wire fir_deci_N0_m_axis_data_tvalid;
  wire [31:0]fir_deci_N1_m_axis_data_tdata;
  wire fir_deci_N1_m_axis_data_tvalid;
  wire [31:0]fir_deci_W0_m_axis_data_tdata;
  wire fir_deci_W0_m_axis_data_tvalid;
  wire [31:0]fir_deci_W1_m_axis_data_tdata;
  wire fir_deci_W1_m_axis_data_tvalid;
  wire [7:0]led_8bits_tri_o;
  wire mts_0_comp0_clk;
  wire mts_0_comp0_reset;
  wire mts_0_comp1_clk;
  wire mts_0_comp1_reset;
  wire mts_0_deci_clk;
  wire mts_0_deci_resetn;
  wire mts_0_user_sysref_adc;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_sysref_n;
  wire pl_sysref_p;
  wire r5_timer_interrupt;
  wire [447:0]raw_fifo_0_dout;
  wire [447:0]raw_fifo_1_dout;
  wire rst_ps8_0_99M_mb_reset;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire [159:0]usp_rf_data_converter_0_m00_axis_tdata;
  wire usp_rf_data_converter_0_m00_axis_tvalid;
  wire [159:0]usp_rf_data_converter_0_m02_axis_tdata;
  wire usp_rf_data_converter_0_m02_axis_tvalid;
  wire [159:0]usp_rf_data_converter_0_m10_axis_tdata;
  wire usp_rf_data_converter_0_m10_axis_tvalid;
  wire [159:0]usp_rf_data_converter_0_m20_axis_tdata;
  wire usp_rf_data_converter_0_m20_axis_tvalid;
  wire [159:0]usp_rf_data_converter_0_m22_axis_tdata;
  wire usp_rf_data_converter_0_m22_axis_tvalid;
  wire [159:0]usp_rf_data_converter_0_m30_axis_tdata;
  wire usp_rf_data_converter_0_m30_axis_tvalid;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]util_ds_buf_0_IBUF_OUT1;
  wire vin0_01_v_n;
  wire vin0_01_v_p;
  wire vin0_23_v_n;
  wire vin0_23_v_p;
  wire vin1_01_v_n;
  wire vin1_01_v_p;
  wire vin2_01_v_n;
  wire vin2_01_v_p;
  wire vin2_23_v_n;
  wire vin2_23_v_p;
  wire vin3_01_v_n;
  wire vin3_01_v_p;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  ps_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  ps_axi_gpio_0_4 clk104_mux
       (.gpio_io_o(GPIO_0_tri_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  ps_composite_0_0 composite_0
       (.clk(mts_0_comp0_clk),
        .fifo(raw_fifo_0_dout),
        .fifo_rd(composite_0_fifo_rd),
        .reset(mts_0_comp0_reset));
  ps_composite_1_0 composite_1
       (.clk(mts_0_comp1_clk),
        .fifo(raw_fifo_1_dout),
        .fifo_rd(composite_1_fifo_rd),
        .reset(mts_0_comp1_reset));
  ps_decimate_0_0 decimate_0
       (.clk(mts_0_deci_clk),
        .data_E(usp_rf_data_converter_0_m02_axis_tdata),
        .data_N(usp_rf_data_converter_0_m00_axis_tdata),
        .data_W(usp_rf_data_converter_0_m10_axis_tdata),
        .fifo(decimate_0_fifo),
        .fifo_wr(decimate_0_fifo_wr),
        .fir_E(fir_deci_E0_m_axis_data_tdata),
        .fir_N(fir_deci_N0_m_axis_data_tdata),
        .fir_W(fir_deci_W0_m_axis_data_tdata),
        .ready_E(usp_rf_data_converter_0_m02_axis_tvalid),
        .ready_N(usp_rf_data_converter_0_m00_axis_tvalid),
        .ready_W(usp_rf_data_converter_0_m10_axis_tvalid),
        .resetn(mts_0_deci_resetn),
        .valid_E(fir_deci_E0_m_axis_data_tvalid),
        .valid_N(fir_deci_N0_m_axis_data_tvalid),
        .valid_W(fir_deci_W0_m_axis_data_tvalid));
  ps_decimate_1_0 decimate_1
       (.clk(mts_0_deci_clk),
        .data_E(usp_rf_data_converter_0_m22_axis_tdata),
        .data_N(usp_rf_data_converter_0_m20_axis_tdata),
        .data_W(usp_rf_data_converter_0_m30_axis_tdata),
        .fifo(decimate_1_fifo),
        .fifo_wr(decimate_1_fifo_wr),
        .fir_E(fir_deci_E1_m_axis_data_tdata),
        .fir_N(fir_deci_N1_m_axis_data_tdata),
        .fir_W(fir_deci_W1_m_axis_data_tdata),
        .ready_E(usp_rf_data_converter_0_m22_axis_tvalid),
        .ready_N(usp_rf_data_converter_0_m20_axis_tvalid),
        .ready_W(usp_rf_data_converter_0_m30_axis_tvalid),
        .resetn(mts_0_deci_resetn),
        .valid_E(fir_deci_E1_m_axis_data_tvalid),
        .valid_N(fir_deci_N1_m_axis_data_tvalid),
        .valid_W(fir_deci_W1_m_axis_data_tvalid));
  ps_fir_deci_N_0 fir_deci_E0
       (.aclk(mts_0_deci_clk),
        .m_axis_data_tdata(fir_deci_E0_m_axis_data_tdata),
        .m_axis_data_tvalid(fir_deci_E0_m_axis_data_tvalid),
        .s_axis_data_tdata(usp_rf_data_converter_0_m02_axis_tdata),
        .s_axis_data_tvalid(usp_rf_data_converter_0_m02_axis_tvalid));
  ps_fir_deci_E0_1 fir_deci_E1
       (.aclk(mts_0_deci_clk),
        .m_axis_data_tdata(fir_deci_E1_m_axis_data_tdata),
        .m_axis_data_tvalid(fir_deci_E1_m_axis_data_tvalid),
        .s_axis_data_tdata(usp_rf_data_converter_0_m22_axis_tdata),
        .s_axis_data_tvalid(usp_rf_data_converter_0_m22_axis_tvalid));
  ps_fir_compiler_0_0 fir_deci_N0
       (.aclk(mts_0_deci_clk),
        .m_axis_data_tdata(fir_deci_N0_m_axis_data_tdata),
        .m_axis_data_tvalid(fir_deci_N0_m_axis_data_tvalid),
        .s_axis_data_tdata(usp_rf_data_converter_0_m00_axis_tdata),
        .s_axis_data_tvalid(usp_rf_data_converter_0_m00_axis_tvalid));
  ps_fir_deci_N0_0 fir_deci_N1
       (.aclk(mts_0_deci_clk),
        .m_axis_data_tdata(fir_deci_N1_m_axis_data_tdata),
        .m_axis_data_tvalid(fir_deci_N1_m_axis_data_tvalid),
        .s_axis_data_tdata(usp_rf_data_converter_0_m20_axis_tdata),
        .s_axis_data_tvalid(usp_rf_data_converter_0_m20_axis_tvalid));
  ps_fir_deci_E0_0 fir_deci_W0
       (.aclk(mts_0_deci_clk),
        .m_axis_data_tdata(fir_deci_W0_m_axis_data_tdata),
        .m_axis_data_tvalid(fir_deci_W0_m_axis_data_tvalid),
        .s_axis_data_tdata(usp_rf_data_converter_0_m10_axis_tdata),
        .s_axis_data_tvalid(usp_rf_data_converter_0_m10_axis_tvalid));
  ps_fir_deci_W0_0 fir_deci_W1
       (.aclk(mts_0_deci_clk),
        .m_axis_data_tdata(fir_deci_W1_m_axis_data_tdata),
        .m_axis_data_tvalid(fir_deci_W1_m_axis_data_tvalid),
        .s_axis_data_tdata(usp_rf_data_converter_0_m30_axis_tdata),
        .s_axis_data_tvalid(usp_rf_data_converter_0_m30_axis_tvalid));
  ps_axi_gpio_0_0 gpio_led
       (.gpio_io_o(led_8bits_tri_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  ps_mts_0_0 mts_0
       (.comp0_clk(mts_0_comp0_clk),
        .comp0_reset(mts_0_comp0_reset),
        .comp1_clk(mts_0_comp1_clk),
        .comp1_reset(mts_0_comp1_reset),
        .deci_clk(mts_0_deci_clk),
        .deci_resetn(mts_0_deci_resetn),
        .pl_clk(util_ds_buf_0_IBUF_OUT),
        .pl_sysref(util_ds_buf_0_IBUF_OUT1),
        .sys_reset(rst_ps8_0_99M_mb_reset),
        .user_sysref_adc(mts_0_user_sysref_adc));
  ps_util_ds_buf_0_0 pl_clk_util_ds_buf
       (.IBUF_DS_N(pl_clk_n),
        .IBUF_DS_P(pl_clk_p),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  ps_util_ds_buf_0_1 pl_sysref_ds_buf
       (.IBUF_DS_N(pl_sysref_n),
        .IBUF_DS_P(pl_sysref_p),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT1));
  ps_axi_timer_0_0 r5_timer
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(r5_timer_interrupt),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  ps_fifo_generator_0_0 raw_fifo_0
       (.din(decimate_0_fifo),
        .dout(raw_fifo_0_dout),
        .rd_clk(mts_0_comp0_clk),
        .rd_en(composite_0_fifo_rd),
        .rst(mts_0_comp0_reset),
        .wr_clk(mts_0_deci_clk),
        .wr_en(decimate_0_fifo_wr));
  ps_fifo_generator_0_1 raw_fifo_1
       (.din(decimate_1_fifo),
        .dout(raw_fifo_1_dout),
        .rd_clk(mts_0_comp1_clk),
        .rd_en(composite_1_fifo_rd),
        .rst(mts_0_comp1_reset),
        .wr_clk(mts_0_deci_clk),
        .wr_en(decimate_1_fifo_wr));
  ps_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(rst_ps8_0_99M_mb_reset),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  ps_usp_rf_data_converter_0_0 usp_rf_data_converter_0
       (.adc1_clk_n(adc1_clk_clk_n),
        .adc1_clk_p(adc1_clk_clk_p),
        .m00_axis_tdata(usp_rf_data_converter_0_m00_axis_tdata),
        .m00_axis_tready(1'b1),
        .m00_axis_tvalid(usp_rf_data_converter_0_m00_axis_tvalid),
        .m02_axis_tdata(usp_rf_data_converter_0_m02_axis_tdata),
        .m02_axis_tready(1'b1),
        .m02_axis_tvalid(usp_rf_data_converter_0_m02_axis_tvalid),
        .m0_axis_aclk(mts_0_deci_clk),
        .m0_axis_aresetn(mts_0_deci_resetn),
        .m10_axis_tdata(usp_rf_data_converter_0_m10_axis_tdata),
        .m10_axis_tready(1'b1),
        .m10_axis_tvalid(usp_rf_data_converter_0_m10_axis_tvalid),
        .m1_axis_aclk(mts_0_deci_clk),
        .m1_axis_aresetn(mts_0_deci_resetn),
        .m20_axis_tdata(usp_rf_data_converter_0_m20_axis_tdata),
        .m20_axis_tready(1'b1),
        .m20_axis_tvalid(usp_rf_data_converter_0_m20_axis_tvalid),
        .m22_axis_tdata(usp_rf_data_converter_0_m22_axis_tdata),
        .m22_axis_tready(1'b1),
        .m22_axis_tvalid(usp_rf_data_converter_0_m22_axis_tvalid),
        .m2_axis_aclk(mts_0_deci_clk),
        .m2_axis_aresetn(mts_0_deci_resetn),
        .m30_axis_tdata(usp_rf_data_converter_0_m30_axis_tdata),
        .m30_axis_tready(1'b1),
        .m30_axis_tvalid(usp_rf_data_converter_0_m30_axis_tvalid),
        .m3_axis_aclk(mts_0_deci_clk),
        .m3_axis_aresetn(mts_0_deci_resetn),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M03_AXI_AWADDR),
        .s_axi_awready(axi_smc_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M03_AXI_AWVALID),
        .s_axi_bready(axi_smc_M03_AXI_BREADY),
        .s_axi_bresp(axi_smc_M03_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M03_AXI_BVALID),
        .s_axi_rdata(axi_smc_M03_AXI_RDATA),
        .s_axi_rready(axi_smc_M03_AXI_RREADY),
        .s_axi_rresp(axi_smc_M03_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M03_AXI_RVALID),
        .s_axi_wdata(axi_smc_M03_AXI_WDATA),
        .s_axi_wready(axi_smc_M03_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M03_AXI_WVALID),
        .sysref_in_n(sysref_in_diff_n),
        .sysref_in_p(sysref_in_diff_p),
        .user_sysref_adc(mts_0_user_sysref_adc),
        .vin0_01_n(vin0_01_v_n),
        .vin0_01_p(vin0_01_v_p),
        .vin0_23_n(vin0_23_v_n),
        .vin0_23_p(vin0_23_v_p),
        .vin1_01_n(vin1_01_v_n),
        .vin1_01_p(vin1_01_v_p),
        .vin2_01_n(vin2_01_v_n),
        .vin2_01_p(vin2_01_v_p),
        .vin2_23_n(vin2_23_v_n),
        .vin2_23_p(vin2_23_v_p),
        .vin3_01_n(vin3_01_v_n),
        .vin3_01_p(vin3_01_v_p));
  ps_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(r5_timer_interrupt),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule
