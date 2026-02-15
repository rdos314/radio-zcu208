//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sun Feb 15 14:33:12 2026
//Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
//Command     : generate_target ps.bd
//Design      : ps
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ps,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ps,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=23,numReposBlks=23,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=12,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=3,da_bram_cntlr_cnt=1,da_rf_converter_usp_cnt=8,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ps.hwdef" *) 
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
  wire adc_control_0_adc_active;
  wire adc_control_0_adc_start;
  wire adc_control_0_adc_stop;
  wire [10:0]adc_control_0_address;
  wire [10:0]adc_control_0_bram_adr_out;
  wire [7:0]adc_control_0_config_adr;
  wire [31:0]adc_control_0_config_data;
  wire adc_control_0_config_high_wr;
  wire adc_control_0_config_low_wr;
  wire [31:0]adc_control_0_data_out;
  wire adc_control_0_sim_active;
  wire [1:0]adc_control_0_sim_channel;
  wire [31:0]adc_control_0_sim_data;
  wire adc_control_0_sim_high_wr;
  wire adc_control_0_sim_low_wr;
  wire adc_control_0_sim_start;
  wire [3:0]adc_control_0_wr_en;
  wire [15:0]ana_high_angle;
  wire ana_high_comp_wr;
  wire [19:0]ana_high_freq;
  wire [15:0]ana_high_sample;
  wire [5:0]ana_high_sample_E;
  wire [5:0]ana_high_sample_N;
  wire [5:0]ana_high_sample_W;
  wire [8:0]ana_high_size;
  wire [15:0]ana_low_angle;
  wire ana_low_comp_wr;
  wire [19:0]ana_low_freq;
  wire [15:0]ana_low_sample;
  wire [5:0]ana_low_sample_E;
  wire [5:0]ana_low_sample_N;
  wire [5:0]ana_low_sample_W;
  wire [8:0]ana_low_size;
  wire [12:0]axi_bram_ctrl_0_bram_addr_a;
  wire axi_bram_ctrl_0_bram_clk_a;
  wire axi_bram_ctrl_0_bram_en_a;
  wire [3:0]axi_bram_ctrl_0_bram_we_a;
  wire [31:0]axi_bram_ctrl_0_bram_wrdata_a;
  wire [31:0]axi_bram_douta;
  wire [31:0]axi_bram_doutb;
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
  wire [12:0]axi_smc_M04_AXI_ARADDR;
  wire [1:0]axi_smc_M04_AXI_ARBURST;
  wire [3:0]axi_smc_M04_AXI_ARCACHE;
  wire [7:0]axi_smc_M04_AXI_ARLEN;
  wire [0:0]axi_smc_M04_AXI_ARLOCK;
  wire [2:0]axi_smc_M04_AXI_ARPROT;
  wire axi_smc_M04_AXI_ARREADY;
  wire [2:0]axi_smc_M04_AXI_ARSIZE;
  wire axi_smc_M04_AXI_ARVALID;
  wire [12:0]axi_smc_M04_AXI_AWADDR;
  wire [1:0]axi_smc_M04_AXI_AWBURST;
  wire [3:0]axi_smc_M04_AXI_AWCACHE;
  wire [7:0]axi_smc_M04_AXI_AWLEN;
  wire [0:0]axi_smc_M04_AXI_AWLOCK;
  wire [2:0]axi_smc_M04_AXI_AWPROT;
  wire axi_smc_M04_AXI_AWREADY;
  wire [2:0]axi_smc_M04_AXI_AWSIZE;
  wire axi_smc_M04_AXI_AWVALID;
  wire axi_smc_M04_AXI_BREADY;
  wire [1:0]axi_smc_M04_AXI_BRESP;
  wire axi_smc_M04_AXI_BVALID;
  wire [31:0]axi_smc_M04_AXI_RDATA;
  wire axi_smc_M04_AXI_RLAST;
  wire axi_smc_M04_AXI_RREADY;
  wire [1:0]axi_smc_M04_AXI_RRESP;
  wire axi_smc_M04_AXI_RVALID;
  wire [31:0]axi_smc_M04_AXI_WDATA;
  wire axi_smc_M04_AXI_WLAST;
  wire axi_smc_M04_AXI_WREADY;
  wire [3:0]axi_smc_M04_AXI_WSTRB;
  wire axi_smc_M04_AXI_WVALID;
  wire comp_high_active;
  wire [15:0]comp_high_angle;
  wire comp_high_burst;
  wire [19:0]comp_high_freq;
  wire [63:0]comp_high_im;
  wire [63:0]comp_high_re;
  wire [15:0]comp_high_sample;
  wire [8:0]comp_high_size;
  wire comp_low_active;
  wire [15:0]comp_low_angle;
  wire comp_low_burst;
  wire [19:0]comp_low_freq;
  wire [63:0]comp_low_im;
  wire [63:0]comp_low_re;
  wire [15:0]comp_low_sample;
  wire [8:0]comp_low_size;
  wire [31:0]deci_high_freq_E;
  wire [31:0]deci_high_freq_N;
  wire [31:0]deci_high_freq_W;
  wire deci_high_freq_wr;
  wire [127:0]deci_high_raw_E;
  wire [127:0]deci_high_raw_N;
  wire [127:0]deci_high_raw_W;
  wire deci_high_raw_wr;
  wire [15:0]deci_low_freq_E;
  wire [15:0]deci_low_freq_N;
  wire [15:0]deci_low_freq_W;
  wire deci_low_freq_wr;
  wire [127:0]deci_low_raw_E;
  wire [127:0]deci_low_raw_N;
  wire [127:0]deci_low_raw_W;
  wire deci_low_raw_wr;
  wire deci_low_sim_active;
  wire freq_high_189_0_ana_wr;
  wire [15:0]freq_high_189_0_env_E;
  wire [15:0]freq_high_189_0_env_N;
  wire [15:0]freq_high_189_0_env_W;
  wire [11:0]freq_high_189_0_err_EW;
  wire [11:0]freq_high_189_0_err_NE;
  wire [11:0]freq_high_189_0_err_WN;
  wire [19:0]freq_high_189_0_phase_E;
  wire [19:0]freq_high_189_0_phase_N;
  wire [19:0]freq_high_189_0_phase_W;
  wire freq_low_46_0_ana_wr;
  wire [15:0]freq_low_46_0_env_E;
  wire [15:0]freq_low_46_0_env_N;
  wire [15:0]freq_low_46_0_env_W;
  wire [11:0]freq_low_46_0_err_EW;
  wire [11:0]freq_low_46_0_err_NE;
  wire [11:0]freq_low_46_0_err_WN;
  wire [19:0]freq_low_46_0_phase_E;
  wire [19:0]freq_low_46_0_phase_N;
  wire [19:0]freq_low_46_0_phase_W;
  wire [7:0]led_8bits_tri_o;
  wire mts_0_ana0_clk;
  wire mts_0_ana0_reset;
  wire mts_0_ana1_clk;
  wire mts_0_ana1_reset;
  wire mts_0_comp0_clk;
  wire mts_0_comp0_reset;
  wire mts_0_comp1_clk;
  wire mts_0_comp1_reset;
  wire mts_0_comp_ana0_clk;
  wire mts_0_comp_ana0_reset;
  wire mts_0_comp_ana1_clk;
  wire mts_0_comp_ana1_reset;
  wire mts_0_deci_adc_active;
  wire mts_0_deci_clk;
  wire mts_0_deci_resetn;
  wire mts_0_deci_sim_active;
  wire mts_0_deci_sim_start;
  wire mts_0_freq0_clk;
  wire mts_0_freq0_reset;
  wire mts_0_freq1_clk;
  wire mts_0_freq1_reset;
  wire mts_0_user_sysref_adc;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_sysref_n;
  wire pl_sysref_p;
  wire r5_timer_interrupt;
  wire rst_ps8_0_99M_mb_reset;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire [127:0]usp_rf_data_converter_0_m00_axis_tdata;
  wire usp_rf_data_converter_0_m00_axis_tvalid;
  wire [127:0]usp_rf_data_converter_0_m02_axis_tdata;
  wire usp_rf_data_converter_0_m02_axis_tvalid;
  wire [127:0]usp_rf_data_converter_0_m10_axis_tdata;
  wire usp_rf_data_converter_0_m10_axis_tvalid;
  wire [127:0]usp_rf_data_converter_0_m20_axis_tdata;
  wire usp_rf_data_converter_0_m20_axis_tvalid;
  wire [127:0]usp_rf_data_converter_0_m22_axis_tdata;
  wire usp_rf_data_converter_0_m22_axis_tvalid;
  wire [127:0]usp_rf_data_converter_0_m30_axis_tdata;
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

  ps_adc_control_0_0 adc_control_0
       (.adc_active(adc_control_0_adc_active),
        .adc_start(adc_control_0_adc_start),
        .adc_stop(adc_control_0_adc_stop),
        .address(adc_control_0_address),
        .bram_adr_in(axi_bram_ctrl_0_bram_addr_a),
        .bram_adr_out(adc_control_0_bram_adr_out),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_adr(adc_control_0_config_adr),
        .config_data(adc_control_0_config_data),
        .config_high_wr(adc_control_0_config_high_wr),
        .config_low_wr(adc_control_0_config_low_wr),
        .data_in(axi_bram_doutb),
        .data_out(adc_control_0_data_out),
        .resetn(rst_ps8_0_99M_peripheral_aresetn),
        .sim_active(adc_control_0_sim_active),
        .sim_channel(adc_control_0_sim_channel),
        .sim_data(adc_control_0_sim_data),
        .sim_high_wr(adc_control_0_sim_high_wr),
        .sim_low_wr(adc_control_0_sim_low_wr),
        .sim_start(adc_control_0_sim_start),
        .wr_en(adc_control_0_wr_en));
  ps_ana_0_0 ana_high
       (.ana_wr(freq_high_189_0_ana_wr),
        .angle(ana_high_angle),
        .clk(mts_0_ana1_clk),
        .comp_wr(ana_high_comp_wr),
        .config_adr(adc_control_0_config_adr),
        .config_clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_data(adc_control_0_config_data),
        .config_wr(adc_control_0_config_high_wr),
        .env_E(freq_high_189_0_env_E),
        .env_N(freq_high_189_0_env_N),
        .env_W(freq_high_189_0_env_W),
        .err_EW(freq_high_189_0_err_EW),
        .err_NE(freq_high_189_0_err_NE),
        .err_WN(freq_high_189_0_err_WN),
        .fifo_clk(mts_0_freq1_clk),
        .freq(ana_high_freq),
        .phase_E(freq_high_189_0_phase_E),
        .phase_N(freq_high_189_0_phase_N),
        .phase_W(freq_high_189_0_phase_W),
        .reset(mts_0_ana1_reset),
        .sample(ana_high_sample),
        .sample_E(ana_high_sample_E),
        .sample_N(ana_high_sample_N),
        .sample_W(ana_high_sample_W),
        .size(ana_high_size));
  ps_ana_0_1 ana_low
       (.ana_wr(freq_low_46_0_ana_wr),
        .angle(ana_low_angle),
        .clk(mts_0_ana0_clk),
        .comp_wr(ana_low_comp_wr),
        .config_adr(adc_control_0_config_adr),
        .config_clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_data(adc_control_0_config_data),
        .config_wr(adc_control_0_config_low_wr),
        .env_E(freq_low_46_0_env_E),
        .env_N(freq_low_46_0_env_N),
        .env_W(freq_low_46_0_env_W),
        .err_EW(freq_low_46_0_err_EW),
        .err_NE(freq_low_46_0_err_NE),
        .err_WN(freq_low_46_0_err_WN),
        .fifo_clk(mts_0_freq0_clk),
        .freq(ana_low_freq),
        .phase_E(freq_low_46_0_phase_E),
        .phase_N(freq_low_46_0_phase_N),
        .phase_W(freq_low_46_0_phase_W),
        .reset(mts_0_ana0_reset),
        .sample(ana_low_sample),
        .sample_E(ana_low_sample_E),
        .sample_N(ana_low_sample_N),
        .sample_W(ana_low_sample_W),
        .size(ana_low_size));
  ps_axi_bram_ctrl_0_bram_0 axi_bram
       (.addra(adc_control_0_bram_adr_out),
        .addrb(adc_control_0_address),
        .clka(axi_bram_ctrl_0_bram_clk_a),
        .clkb(zynq_ultra_ps_e_0_pl_clk0),
        .dina(axi_bram_ctrl_0_bram_wrdata_a),
        .dinb(adc_control_0_data_out),
        .douta(axi_bram_douta),
        .doutb(axi_bram_doutb),
        .ena(axi_bram_ctrl_0_bram_en_a),
        .rsta(1'b0),
        .wea(axi_bram_ctrl_0_bram_we_a),
        .web(adc_control_0_wr_en));
  ps_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_bram_addr_a),
        .bram_clk_a(axi_bram_ctrl_0_bram_clk_a),
        .bram_en_a(axi_bram_ctrl_0_bram_en_a),
        .bram_rddata_a(axi_bram_douta),
        .bram_we_a(axi_bram_ctrl_0_bram_we_a),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_wrdata_a),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M04_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M04_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M04_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M04_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M04_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M04_AXI_ARPROT),
        .s_axi_arready(axi_smc_M04_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M04_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M04_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M04_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M04_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M04_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M04_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M04_AXI_AWPROT),
        .s_axi_awready(axi_smc_M04_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M04_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M04_AXI_AWVALID),
        .s_axi_bready(axi_smc_M04_AXI_BREADY),
        .s_axi_bresp(axi_smc_M04_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M04_AXI_BVALID),
        .s_axi_rdata(axi_smc_M04_AXI_RDATA),
        .s_axi_rlast(axi_smc_M04_AXI_RLAST),
        .s_axi_rready(axi_smc_M04_AXI_RREADY),
        .s_axi_rresp(axi_smc_M04_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M04_AXI_RVALID),
        .s_axi_wdata(axi_smc_M04_AXI_WDATA),
        .s_axi_wlast(axi_smc_M04_AXI_WLAST),
        .s_axi_wready(axi_smc_M04_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M04_AXI_WVALID));
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
        .M04_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .M04_AXI_arburst(axi_smc_M04_AXI_ARBURST),
        .M04_AXI_arcache(axi_smc_M04_AXI_ARCACHE),
        .M04_AXI_arlen(axi_smc_M04_AXI_ARLEN),
        .M04_AXI_arlock(axi_smc_M04_AXI_ARLOCK),
        .M04_AXI_arprot(axi_smc_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .M04_AXI_arsize(axi_smc_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .M04_AXI_awburst(axi_smc_M04_AXI_AWBURST),
        .M04_AXI_awcache(axi_smc_M04_AXI_AWCACHE),
        .M04_AXI_awlen(axi_smc_M04_AXI_AWLEN),
        .M04_AXI_awlock(axi_smc_M04_AXI_AWLOCK),
        .M04_AXI_awprot(axi_smc_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .M04_AXI_awsize(axi_smc_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_smc_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .M04_AXI_rlast(axi_smc_M04_AXI_RLAST),
        .M04_AXI_rready(axi_smc_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .M04_AXI_wlast(axi_smc_M04_AXI_WLAST),
        .M04_AXI_wready(axi_smc_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_smc_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_smc_M04_AXI_WVALID),
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
  ps_comp_ana_0_1 comp_ana_high
       (.clk(mts_0_comp_ana1_clk),
        .config_adr(adc_control_0_config_adr),
        .config_clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_data(adc_control_0_config_data),
        .config_wr(adc_control_0_config_high_wr),
        .fifo_active(comp_high_active),
        .fifo_angle(comp_high_angle),
        .fifo_burst(comp_high_burst),
        .fifo_clk(mts_0_comp1_clk),
        .fifo_freq(comp_high_freq),
        .fifo_im(comp_high_im),
        .fifo_re(comp_high_re),
        .fifo_sample(comp_high_sample),
        .fifo_size(comp_high_size),
        .pl_clk(zynq_ultra_ps_e_0_pl_clk0),
        .reset(mts_0_comp_ana1_reset));
  ps_comp_ana_0_0 comp_ana_low
       (.clk(mts_0_comp_ana0_clk),
        .config_adr(adc_control_0_config_adr),
        .config_clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_data(adc_control_0_config_data),
        .config_wr(adc_control_0_config_low_wr),
        .fifo_active(comp_low_active),
        .fifo_angle(comp_low_angle),
        .fifo_burst(comp_low_burst),
        .fifo_clk(mts_0_comp0_clk),
        .fifo_freq(comp_low_freq),
        .fifo_im(comp_low_im),
        .fifo_re(comp_low_re),
        .fifo_sample(comp_low_sample),
        .fifo_size(comp_low_size),
        .pl_clk(zynq_ultra_ps_e_0_pl_clk0),
        .reset(mts_0_comp_ana0_reset));
  ps_comp_high_0_0 comp_high
       (.active(comp_high_active),
        .ana_fifo_angle(ana_high_angle),
        .ana_fifo_clk(mts_0_ana1_clk),
        .ana_fifo_freq(ana_high_freq),
        .ana_fifo_sample(ana_high_sample),
        .ana_fifo_sample_E(ana_high_sample_E),
        .ana_fifo_sample_N(ana_high_sample_N),
        .ana_fifo_sample_W(ana_high_sample_W),
        .ana_fifo_size(ana_high_size),
        .ana_fifo_wr(ana_high_comp_wr),
        .angle(comp_high_angle),
        .burst(comp_high_burst),
        .clk(mts_0_comp1_clk),
        .freq(comp_high_freq),
        .im(comp_high_im),
        .raw_fifo_E(deci_high_raw_E),
        .raw_fifo_N(deci_high_raw_N),
        .raw_fifo_W(deci_high_raw_W),
        .raw_fifo_clk(mts_0_deci_clk),
        .raw_fifo_wr(deci_high_raw_wr),
        .re(comp_high_re),
        .reset(mts_0_comp1_reset),
        .sample(comp_high_sample),
        .size(comp_high_size));
  ps_comp_low_0_0 comp_low
       (.active(comp_low_active),
        .ana_fifo_angle(ana_low_angle),
        .ana_fifo_clk(mts_0_ana0_clk),
        .ana_fifo_freq(ana_low_freq),
        .ana_fifo_sample(ana_low_sample),
        .ana_fifo_sample_E(ana_low_sample_E),
        .ana_fifo_sample_N(ana_low_sample_N),
        .ana_fifo_sample_W(ana_low_sample_W),
        .ana_fifo_size(ana_low_size),
        .ana_fifo_wr(ana_low_comp_wr),
        .angle(comp_low_angle),
        .burst(comp_low_burst),
        .clk(mts_0_comp0_clk),
        .freq(comp_low_freq),
        .im(comp_low_im),
        .raw_fifo_E(deci_low_raw_E),
        .raw_fifo_N(deci_low_raw_N),
        .raw_fifo_W(deci_low_raw_W),
        .raw_fifo_clk(mts_0_deci_clk),
        .raw_fifo_wr(deci_low_raw_wr),
        .re(comp_low_re),
        .reset(mts_0_comp0_reset),
        .sample(comp_low_sample),
        .size(comp_low_size));
  ps_deci_high_0_0 deci_high
       (.adc_active(mts_0_deci_adc_active),
        .clk(mts_0_deci_clk),
        .data_E(usp_rf_data_converter_0_m22_axis_tdata),
        .data_N(usp_rf_data_converter_0_m20_axis_tdata),
        .data_W(usp_rf_data_converter_0_m30_axis_tdata),
        .freq_E(deci_high_freq_E),
        .freq_N(deci_high_freq_N),
        .freq_W(deci_high_freq_W),
        .freq_wr(deci_high_freq_wr),
        .raw_E(deci_high_raw_E),
        .raw_N(deci_high_raw_N),
        .raw_W(deci_high_raw_W),
        .raw_wr(deci_high_raw_wr),
        .ready_E(usp_rf_data_converter_0_m22_axis_tvalid),
        .ready_N(usp_rf_data_converter_0_m20_axis_tvalid),
        .ready_W(usp_rf_data_converter_0_m30_axis_tvalid),
        .resetn(mts_0_deci_resetn),
        .sim_active(mts_0_deci_sim_active),
        .sim_channel(adc_control_0_sim_channel),
        .sim_clk(zynq_ultra_ps_e_0_pl_clk0),
        .sim_data(adc_control_0_sim_data),
        .sim_resetn(rst_ps8_0_99M_peripheral_aresetn),
        .sim_start(mts_0_deci_sim_start),
        .sim_wr(adc_control_0_sim_high_wr));
  ps_deci_low_0_0 deci_low
       (.adc_active(mts_0_deci_adc_active),
        .clk(mts_0_deci_clk),
        .data_E(usp_rf_data_converter_0_m02_axis_tdata),
        .data_N(usp_rf_data_converter_0_m00_axis_tdata),
        .data_W(usp_rf_data_converter_0_m10_axis_tdata),
        .freq_E(deci_low_freq_E),
        .freq_N(deci_low_freq_N),
        .freq_W(deci_low_freq_W),
        .freq_wr(deci_low_freq_wr),
        .raw_E(deci_low_raw_E),
        .raw_N(deci_low_raw_N),
        .raw_W(deci_low_raw_W),
        .raw_wr(deci_low_raw_wr),
        .ready_E(usp_rf_data_converter_0_m02_axis_tvalid),
        .ready_N(usp_rf_data_converter_0_m00_axis_tvalid),
        .ready_W(usp_rf_data_converter_0_m10_axis_tvalid),
        .resetn(mts_0_deci_resetn),
        .sim_active(deci_low_sim_active),
        .sim_channel(adc_control_0_sim_channel),
        .sim_clk(zynq_ultra_ps_e_0_pl_clk0),
        .sim_data(adc_control_0_sim_data),
        .sim_resetn(rst_ps8_0_99M_peripheral_aresetn),
        .sim_start(mts_0_deci_sim_start),
        .sim_wr(adc_control_0_sim_low_wr));
  ps_freq_high_189_0_0 freq_high_189_0
       (.ana_wr(freq_high_189_0_ana_wr),
        .clk(mts_0_freq1_clk),
        .env_E(freq_high_189_0_env_E),
        .env_N(freq_high_189_0_env_N),
        .env_W(freq_high_189_0_env_W),
        .err_EW(freq_high_189_0_err_EW),
        .err_NE(freq_high_189_0_err_NE),
        .err_WN(freq_high_189_0_err_WN),
        .fifo_clk(mts_0_deci_clk),
        .freq_in_E(deci_high_freq_E),
        .freq_in_N(deci_high_freq_N),
        .freq_in_W(deci_high_freq_W),
        .freq_wr(deci_high_freq_wr),
        .phase_E(freq_high_189_0_phase_E),
        .phase_N(freq_high_189_0_phase_N),
        .phase_W(freq_high_189_0_phase_W),
        .reset(mts_0_freq1_reset));
  ps_freq_low_46_0_0 freq_low_46_0
       (.ana_wr(freq_low_46_0_ana_wr),
        .clk(mts_0_freq0_clk),
        .env_E(freq_low_46_0_env_E),
        .env_N(freq_low_46_0_env_N),
        .env_W(freq_low_46_0_env_W),
        .err_EW(freq_low_46_0_err_EW),
        .err_NE(freq_low_46_0_err_NE),
        .err_WN(freq_low_46_0_err_WN),
        .fifo_clk(mts_0_deci_clk),
        .freq_in_E(deci_low_freq_E),
        .freq_in_N(deci_low_freq_N),
        .freq_in_W(deci_low_freq_W),
        .freq_wr(deci_low_freq_wr),
        .phase_E(freq_low_46_0_phase_E),
        .phase_N(freq_low_46_0_phase_N),
        .phase_W(freq_low_46_0_phase_W),
        .reset(mts_0_freq0_reset));
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
       (.ana0_clk(mts_0_ana0_clk),
        .ana0_reset(mts_0_ana0_reset),
        .ana1_clk(mts_0_ana1_clk),
        .ana1_reset(mts_0_ana1_reset),
        .axi_adc_active(adc_control_0_adc_active),
        .axi_adc_start(adc_control_0_adc_start),
        .axi_adc_stop(adc_control_0_adc_stop),
        .axi_clk(zynq_ultra_ps_e_0_pl_clk0),
        .axi_sim_active(adc_control_0_sim_active),
        .axi_sim_start(adc_control_0_sim_start),
        .comp0_clk(mts_0_comp0_clk),
        .comp0_reset(mts_0_comp0_reset),
        .comp1_clk(mts_0_comp1_clk),
        .comp1_reset(mts_0_comp1_reset),
        .comp_ana0_clk(mts_0_comp_ana0_clk),
        .comp_ana0_reset(mts_0_comp_ana0_reset),
        .comp_ana1_clk(mts_0_comp_ana1_clk),
        .comp_ana1_reset(mts_0_comp_ana1_reset),
        .deci_adc_active(mts_0_deci_adc_active),
        .deci_clk(mts_0_deci_clk),
        .deci_resetn(mts_0_deci_resetn),
        .deci_sim_active_high(mts_0_deci_sim_active),
        .deci_sim_active_low(deci_low_sim_active),
        .deci_sim_start(mts_0_deci_sim_start),
        .freq0_clk(mts_0_freq0_clk),
        .freq0_reset(mts_0_freq0_reset),
        .freq1_clk(mts_0_freq1_clk),
        .freq1_reset(mts_0_freq1_reset),
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
