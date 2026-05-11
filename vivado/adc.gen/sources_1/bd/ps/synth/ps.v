//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Sun May 10 23:51:02 2026
//Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target ps.bd
//Design      : ps
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ps,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ps,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=38,numReposBlks=38,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=21,da_board_cnt=6,da_bram_cntlr_cnt=1,da_clkrst_cnt=9,da_rf_converter_usp_cnt=8,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ps.hwdef" *) 
module ps
   (GPIO_0_tri_o,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    ddr4_sdram_c0_act_n,
    ddr4_sdram_c0_adr,
    ddr4_sdram_c0_ba,
    ddr4_sdram_c0_bg,
    ddr4_sdram_c0_ck_c,
    ddr4_sdram_c0_ck_t,
    ddr4_sdram_c0_cke,
    ddr4_sdram_c0_cs_n,
    ddr4_sdram_c0_dm_n,
    ddr4_sdram_c0_dq,
    ddr4_sdram_c0_dqs_c,
    ddr4_sdram_c0_dqs_t,
    ddr4_sdram_c0_odt,
    ddr4_sdram_c0_reset_n,
    default_sysclk_c0_300mhz_clk_n,
    default_sysclk_c0_300mhz_clk_p,
    led_8bits_tri_o,
    pl_clk_n,
    pl_clk_p,
    pl_sysref_n,
    pl_sysref_p,
    reset,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 ACT_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_sdram_c0, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 18, CAS_WRITE_LATENCY 14, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 32, MEMORY_PART MT40A1G8WE-075E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 750" *) output ddr4_sdram_c0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 ADR" *) output [16:0]ddr4_sdram_c0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 BA" *) output [1:0]ddr4_sdram_c0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 BG" *) output [1:0]ddr4_sdram_c0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CK_C" *) output ddr4_sdram_c0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CK_T" *) output ddr4_sdram_c0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CKE" *) output ddr4_sdram_c0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CS_N" *) output [1:0]ddr4_sdram_c0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DM_N" *) inout [3:0]ddr4_sdram_c0_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DQ" *) inout [31:0]ddr4_sdram_c0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DQS_C" *) inout [3:0]ddr4_sdram_c0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DQS_T" *) inout [3:0]ddr4_sdram_c0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 ODT" *) output ddr4_sdram_c0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 RESET_N" *) output ddr4_sdram_c0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_sysclk_c0_300mhz CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME default_sysclk_c0_300mhz, CAN_DEBUG false, FREQ_HZ 300000000" *) input default_sysclk_c0_300mhz_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_sysclk_c0_300mhz CLK_P" *) input default_sysclk_c0_300mhz_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_8bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [7:0]led_8bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_N, CLK_DOMAIN ps_pl_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_P, CLK_DOMAIN ps_pl_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_SYSREF_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_SYSREF_N, CLK_DOMAIN ps_pl_sysref_n, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_sysref_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_SYSREF_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_SYSREF_P, CLK_DOMAIN ps_pl_sysref_p, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input pl_sysref_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
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
  wire [9:0]ana_high_doa_error;
  wire [19:0]ana_high_freq;
  wire [15:0]ana_high_sample;
  wire [5:0]ana_high_sample_E;
  wire [5:0]ana_high_sample_N;
  wire [5:0]ana_high_sample_W;
  wire [8:0]ana_high_size;
  wire [15:0]ana_low_angle;
  wire ana_low_comp_wr;
  wire [9:0]ana_low_doa_error;
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
  wire [7:0]axi_datamover_0_M_AXIS_MM2S_STS_TDATA;
  wire axi_datamover_0_M_AXIS_MM2S_STS_TREADY;
  wire axi_datamover_0_M_AXIS_MM2S_STS_TVALID;
  wire [255:0]axi_datamover_0_M_AXIS_MM2S_TDATA;
  wire axi_datamover_0_M_AXIS_MM2S_TREADY;
  wire axi_datamover_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_datamover_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_datamover_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_datamover_0_M_AXI_MM2S_ARCACHE;
  wire [3:0]axi_datamover_0_M_AXI_MM2S_ARID;
  wire [7:0]axi_datamover_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_datamover_0_M_AXI_MM2S_ARPROT;
  wire axi_datamover_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_datamover_0_M_AXI_MM2S_ARSIZE;
  wire [3:0]axi_datamover_0_M_AXI_MM2S_ARUSER;
  wire axi_datamover_0_M_AXI_MM2S_ARVALID;
  wire [255:0]axi_datamover_0_M_AXI_MM2S_RDATA;
  wire axi_datamover_0_M_AXI_MM2S_RLAST;
  wire axi_datamover_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_datamover_0_M_AXI_MM2S_RRESP;
  wire axi_datamover_0_M_AXI_MM2S_RVALID;
  (* CONN_BUS_INFO = "axi_datamover_1_M_AXIS_S2MM_STS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_datamover_1_M_AXIS_S2MM_STS_TDATA;
  (* CONN_BUS_INFO = "axi_datamover_1_M_AXIS_S2MM_STS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_datamover_1_M_AXIS_S2MM_STS_TKEEP;
  (* CONN_BUS_INFO = "axi_datamover_1_M_AXIS_S2MM_STS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_datamover_1_M_AXIS_S2MM_STS_TLAST;
  (* CONN_BUS_INFO = "axi_datamover_1_M_AXIS_S2MM_STS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_datamover_1_M_AXIS_S2MM_STS_TREADY;
  (* CONN_BUS_INFO = "axi_datamover_1_M_AXIS_S2MM_STS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_datamover_1_M_AXIS_S2MM_STS_TVALID;
  wire [31:0]axi_datamover_1_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_datamover_1_M_AXI_S2MM_AWBURST;
  wire [7:0]axi_datamover_1_M_AXI_S2MM_AWLEN;
  wire axi_datamover_1_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_datamover_1_M_AXI_S2MM_AWSIZE;
  wire [3:0]axi_datamover_1_M_AXI_S2MM_AWUSER;
  wire axi_datamover_1_M_AXI_S2MM_AWVALID;
  wire axi_datamover_1_M_AXI_S2MM_BREADY;
  wire [1:0]axi_datamover_1_M_AXI_S2MM_BRESP;
  wire axi_datamover_1_M_AXI_S2MM_BVALID;
  wire [127:0]axi_datamover_1_M_AXI_S2MM_WDATA;
  wire axi_datamover_1_M_AXI_S2MM_WLAST;
  wire axi_datamover_1_M_AXI_S2MM_WREADY;
  wire [15:0]axi_datamover_1_M_AXI_S2MM_WSTRB;
  wire axi_datamover_1_M_AXI_S2MM_WVALID;
  wire [71:0]axi_dma_1_M_AXI_cmd_TDATA;
  wire axi_dma_1_M_AXI_cmd_TREADY;
  wire axi_dma_1_M_AXI_cmd_TVALID;
  wire [255:0]axi_dma_1_M_AXI_out_TDATA;
  wire [31:0]axi_dma_1_M_AXI_out_TKEEP;
  wire axi_dma_1_M_AXI_out_TLAST;
  wire axi_dma_1_M_AXI_out_TREADY;
  wire axi_dma_1_M_AXI_out_TVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_out_cmd xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [71:0]axi_dma_1_M_AXI_out_cmd_TDATA;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_out_cmd xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_out_cmd_TREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_out_cmd xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_out_cmd_TVALID;
  wire axi_dma_1_irq;
  wire [31:0]axi_dma_1_linux_wr_ptr;
  wire [26:0]axi_dma_1_rd_ptr;
  wire [31:0]axi_int_0_M_AXI_AWADDR;
  wire [1:0]axi_int_0_M_AXI_AWBURST;
  wire [7:0]axi_int_0_M_AXI_AWLEN;
  wire [1:0]axi_int_0_M_AXI_AWPROT;
  wire axi_int_0_M_AXI_AWREADY;
  wire [2:0]axi_int_0_M_AXI_AWSIZE;
  wire axi_int_0_M_AXI_AWVALID;
  wire axi_int_0_M_AXI_BREADY;
  wire [1:0]axi_int_0_M_AXI_BRESP;
  wire axi_int_0_M_AXI_BVALID;
  wire [255:0]axi_int_0_M_AXI_WDATA;
  wire axi_int_0_M_AXI_WLAST;
  wire axi_int_0_M_AXI_WREADY;
  wire [31:0]axi_int_0_M_AXI_WSTRB;
  wire axi_int_0_M_AXI_WVALID;
  wire axi_int_0_high_full;
  wire axi_int_0_high_rd;
  wire axi_int_0_low_full;
  wire axi_int_0_low_rd;
  wire [26:0]axi_int_0_wr_ptr;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_1_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]axi_smc_1_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]axi_smc_1_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]axi_smc_1_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_WVALID;
  wire [8:0]axi_smc_2_M00_AXI_ARADDR;
  wire axi_smc_2_M00_AXI_ARREADY;
  wire axi_smc_2_M00_AXI_ARVALID;
  wire [8:0]axi_smc_2_M00_AXI_AWADDR;
  wire axi_smc_2_M00_AXI_AWREADY;
  wire axi_smc_2_M00_AXI_AWVALID;
  wire axi_smc_2_M00_AXI_BREADY;
  wire [1:0]axi_smc_2_M00_AXI_BRESP;
  wire axi_smc_2_M00_AXI_BVALID;
  wire [31:0]axi_smc_2_M00_AXI_RDATA;
  wire axi_smc_2_M00_AXI_RREADY;
  wire [1:0]axi_smc_2_M00_AXI_RRESP;
  wire axi_smc_2_M00_AXI_RVALID;
  wire [31:0]axi_smc_2_M00_AXI_WDATA;
  wire axi_smc_2_M00_AXI_WREADY;
  wire [3:0]axi_smc_2_M00_AXI_WSTRB;
  wire axi_smc_2_M00_AXI_WVALID;
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
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_dwidth_converter_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_dwidth_converter_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_dwidth_converter_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire [255:0]comp_ana_high_axi_data;
  wire comp_ana_high_axi_empty;
  wire comp_ana_high_axi_pending;
  wire [21:0]comp_ana_high_axi_timestamp;
  wire comp_ana_high_axi_wr;
  wire [255:0]comp_ana_low_axi_data;
  wire comp_ana_low_axi_empty;
  wire comp_ana_low_axi_pending;
  wire [21:0]comp_ana_low_axi_timestamp;
  wire comp_ana_low_axi_wr;
  wire comp_high_active;
  wire [15:0]comp_high_angle;
  wire comp_high_burst;
  wire [9:0]comp_high_doa_error;
  wire [19:0]comp_high_freq;
  wire [63:0]comp_high_im;
  wire [63:0]comp_high_re;
  wire [15:0]comp_high_sample;
  wire [8:0]comp_high_size;
  wire comp_low_active;
  wire [15:0]comp_low_angle;
  wire comp_low_burst;
  wire [9:0]comp_low_doa_error;
  wire [19:0]comp_low_freq;
  wire [63:0]comp_low_im;
  wire [63:0]comp_low_re;
  wire [15:0]comp_low_sample;
  wire [8:0]comp_low_size;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_init_calib_complete;
  wire ddr4_sdram_c0_act_n;
  wire [16:0]ddr4_sdram_c0_adr;
  wire [1:0]ddr4_sdram_c0_ba;
  wire [1:0]ddr4_sdram_c0_bg;
  wire [0:0]\^ddr4_sdram_c0_ck_c ;
  wire [0:0]\^ddr4_sdram_c0_ck_t ;
  wire [0:0]\^ddr4_sdram_c0_cke ;
  wire [1:0]ddr4_sdram_c0_cs_n;
  wire [3:0]ddr4_sdram_c0_dm_n;
  wire [31:0]ddr4_sdram_c0_dq;
  wire [3:0]ddr4_sdram_c0_dqs_c;
  wire [3:0]ddr4_sdram_c0_dqs_t;
  wire [0:0]\^ddr4_sdram_c0_odt ;
  wire ddr4_sdram_c0_reset_n;
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
  wire default_sysclk_c0_300mhz_clk_n;
  wire default_sysclk_c0_300mhz_clk_p;
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
  wire [31:0]gpio_linux_ptr_gpio2_io_o;
  wire [3:0]ilconstant_0_dout;
  wire [2:0]ilconstant_0_dout1;
  wire [7:0]led_8bits_tri_o;
  wire mts_0_ana0_clk;
  wire mts_0_ana0_reset;
  wire mts_0_ana1_clk;
  wire mts_0_ana1_reset;
  wire mts_0_axi_reset_out;
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
  wire reset;
  wire rst_ps8_0_99M_mb_reset;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [0:0]rst_ps_333M_peripheral_aresetn;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [255:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [255:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [31:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
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
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
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
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign ddr4_sdram_c0_ck_c = \^ddr4_sdram_c0_ck_c [0];
  assign ddr4_sdram_c0_ck_t = \^ddr4_sdram_c0_ck_t [0];
  assign ddr4_sdram_c0_cke = \^ddr4_sdram_c0_cke [0];
  assign ddr4_sdram_c0_odt = \^ddr4_sdram_c0_odt [0];
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
        .doa_error(ana_high_doa_error),
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
        .doa_error(ana_low_doa_error),
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
  assign ilconstant_0_dout = 4'hB;
  assign ilconstant_0_dout1 = 3'h2;
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
  ps_axi_datamover_0_1 axi_datamover_0
       (.m_axi_mm2s_aclk(ddr4_0_c0_ddr4_ui_clk),
        .m_axi_mm2s_araddr(axi_datamover_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_datamover_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_datamover_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_aresetn(mts_0_axi_reset_out),
        .m_axi_mm2s_arid(axi_datamover_0_M_AXI_MM2S_ARID),
        .m_axi_mm2s_arlen(axi_datamover_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_datamover_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_datamover_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_datamover_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_aruser(axi_datamover_0_M_AXI_MM2S_ARUSER),
        .m_axi_mm2s_arvalid(axi_datamover_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_datamover_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_datamover_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_datamover_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_datamover_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_datamover_0_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_cmdsts_aclk(ddr4_0_c0_ddr4_ui_clk),
        .m_axis_mm2s_cmdsts_aresetn(mts_0_axi_reset_out),
        .m_axis_mm2s_sts_tdata(axi_datamover_0_M_AXIS_MM2S_STS_TDATA),
        .m_axis_mm2s_sts_tready(axi_datamover_0_M_AXIS_MM2S_STS_TREADY),
        .m_axis_mm2s_sts_tvalid(axi_datamover_0_M_AXIS_MM2S_STS_TVALID),
        .m_axis_mm2s_tdata(axi_datamover_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tready(axi_datamover_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_datamover_0_M_AXIS_MM2S_TVALID),
        .s_axis_mm2s_cmd_tdata(axi_dma_1_M_AXI_cmd_TDATA),
        .s_axis_mm2s_cmd_tready(axi_dma_1_M_AXI_cmd_TREADY),
        .s_axis_mm2s_cmd_tvalid(axi_dma_1_M_AXI_cmd_TVALID));
  ps_axi_datamover_1_0 axi_datamover_1
       (.m_axi_s2mm_aclk(ddr4_0_c0_ddr4_ui_clk),
        .m_axi_s2mm_aresetn(mts_0_axi_reset_out),
        .m_axi_s2mm_awaddr(axi_datamover_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_datamover_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awlen(axi_datamover_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awready(axi_datamover_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_datamover_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awuser(axi_datamover_1_M_AXI_S2MM_AWUSER),
        .m_axi_s2mm_awvalid(axi_datamover_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_datamover_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_datamover_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_datamover_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_datamover_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_datamover_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_datamover_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_datamover_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_datamover_1_M_AXI_S2MM_WVALID),
        .m_axis_s2mm_cmdsts_aresetn(mts_0_axi_reset_out),
        .m_axis_s2mm_cmdsts_awclk(ddr4_0_c0_ddr4_ui_clk),
        .m_axis_s2mm_sts_tdata(axi_datamover_1_M_AXIS_S2MM_STS_TDATA),
        .m_axis_s2mm_sts_tkeep(axi_datamover_1_M_AXIS_S2MM_STS_TKEEP),
        .m_axis_s2mm_sts_tlast(axi_datamover_1_M_AXIS_S2MM_STS_TLAST),
        .m_axis_s2mm_sts_tready(axi_datamover_1_M_AXIS_S2MM_STS_TREADY),
        .m_axis_s2mm_sts_tvalid(axi_datamover_1_M_AXIS_S2MM_STS_TVALID),
        .s_axis_s2mm_cmd_tdata(axi_dma_1_M_AXI_out_cmd_TDATA),
        .s_axis_s2mm_cmd_tready(axi_dma_1_M_AXI_out_cmd_TREADY),
        .s_axis_s2mm_cmd_tvalid(axi_dma_1_M_AXI_out_cmd_TVALID),
        .s_axis_s2mm_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID));
  ps_axi_dma_1_0 axi_dma_1
       (.M_AXI_STS_in_tdata(axi_datamover_0_M_AXIS_MM2S_STS_TDATA),
        .M_AXI_STS_in_tready(axi_datamover_0_M_AXIS_MM2S_STS_TREADY),
        .M_AXI_STS_in_tvalid(axi_datamover_0_M_AXIS_MM2S_STS_TVALID),
        .M_AXI_STS_out_tdata(axi_datamover_1_M_AXIS_S2MM_STS_TDATA),
        .M_AXI_STS_out_tready(axi_datamover_1_M_AXIS_S2MM_STS_TREADY),
        .M_AXI_STS_out_tvalid(axi_datamover_1_M_AXIS_S2MM_STS_TVALID),
        .M_AXI_TDATA_in(axi_datamover_0_M_AXIS_MM2S_TDATA),
        .M_AXI_TDATA_in_cmd(axi_dma_1_M_AXI_cmd_TDATA),
        .M_AXI_TDATA_out(axi_dma_1_M_AXI_out_TDATA),
        .M_AXI_TDATA_out_cmd(axi_dma_1_M_AXI_out_cmd_TDATA),
        .M_AXI_TKEEP_out(axi_dma_1_M_AXI_out_TKEEP),
        .M_AXI_TLAST_out(axi_dma_1_M_AXI_out_TLAST),
        .M_AXI_TREADY_in(axi_datamover_0_M_AXIS_MM2S_TREADY),
        .M_AXI_TREADY_in_cmd(axi_dma_1_M_AXI_cmd_TREADY),
        .M_AXI_TREADY_out(axi_dma_1_M_AXI_out_TREADY),
        .M_AXI_TREADY_out_cmd(axi_dma_1_M_AXI_out_cmd_TREADY),
        .M_AXI_TVALID_in(axi_datamover_0_M_AXIS_MM2S_TVALID),
        .M_AXI_TVALID_in_cmd(axi_dma_1_M_AXI_cmd_TVALID),
        .M_AXI_TVALID_out(axi_dma_1_M_AXI_out_TVALID),
        .M_AXI_TVALID_out_cmd(axi_dma_1_M_AXI_out_cmd_TVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .irq(axi_dma_1_irq),
        .linux_rd_ptr(gpio_linux_ptr_gpio2_io_o),
        .linux_wr_ptr(axi_dma_1_linux_wr_ptr),
        .mig_rd_ptr(axi_dma_1_rd_ptr),
        .mig_wr_ptr(axi_int_0_wr_ptr),
        .resetn(mts_0_axi_reset_out));
  ps_axi_int_0_0 axi_int_0
       (.M_AXI_AWADDR(axi_int_0_M_AXI_AWADDR),
        .M_AXI_AWBURST(axi_int_0_M_AXI_AWBURST),
        .M_AXI_AWLEN(axi_int_0_M_AXI_AWLEN),
        .M_AXI_AWPROT(axi_int_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(axi_int_0_M_AXI_AWREADY),
        .M_AXI_AWSIZE(axi_int_0_M_AXI_AWSIZE),
        .M_AXI_AWVALID(axi_int_0_M_AXI_AWVALID),
        .M_AXI_BREADY(axi_int_0_M_AXI_BREADY),
        .M_AXI_BRESP(axi_int_0_M_AXI_BRESP),
        .M_AXI_BVALID(axi_int_0_M_AXI_BVALID),
        .M_AXI_WDATA(axi_int_0_M_AXI_WDATA),
        .M_AXI_WLAST(axi_int_0_M_AXI_WLAST),
        .M_AXI_WREADY(axi_int_0_M_AXI_WREADY),
        .M_AXI_WSTRB(axi_int_0_M_AXI_WSTRB),
        .M_AXI_WVALID(axi_int_0_M_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .high_data(comp_ana_high_axi_data),
        .high_empty(comp_ana_high_axi_empty),
        .high_full(axi_int_0_high_full),
        .high_pending(comp_ana_high_axi_pending),
        .high_rd(axi_int_0_high_rd),
        .high_timestamp(comp_ana_high_axi_timestamp),
        .high_wr(comp_ana_high_axi_wr),
        .low_data(comp_ana_low_axi_data),
        .low_empty(comp_ana_low_axi_empty),
        .low_full(axi_int_0_low_full),
        .low_pending(comp_ana_low_axi_pending),
        .low_rd(axi_int_0_low_rd),
        .low_timestamp(comp_ana_low_axi_timestamp),
        .low_wr(comp_ana_low_axi_wr),
        .rd_ptr(axi_dma_1_rd_ptr),
        .resetn(mts_0_axi_reset_out),
        .up(ddr4_0_c0_init_calib_complete),
        .wr_ptr(axi_int_0_wr_ptr));
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
  ps_axi_smc_1_0 axi_smc_1
       (.M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_smc_1_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_awaddr(axi_datamover_1_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_datamover_1_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(ilconstant_0_dout),
        .S00_AXI_awlen(axi_datamover_1_M_AXI_S2MM_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(ilconstant_0_dout1),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_datamover_1_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_datamover_1_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awuser(axi_datamover_1_M_AXI_S2MM_AWUSER),
        .S00_AXI_awvalid(axi_datamover_1_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_datamover_1_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_datamover_1_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_datamover_1_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_datamover_1_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_datamover_1_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_datamover_1_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_datamover_1_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_datamover_1_M_AXI_S2MM_WVALID),
        .aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(mts_0_axi_reset_out));
  ps_axi_smc_2_0 axi_smc_2
       (.M00_AXI_araddr(axi_smc_2_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_2_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_2_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_2_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_2_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_2_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_2_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_2_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_2_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_2_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(mts_0_axi_reset_out));
  ps_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(mts_0_axi_reset_out),
        .m_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(axi_dma_1_M_AXI_out_TDATA),
        .s_axis_tkeep(axi_dma_1_M_AXI_out_TKEEP),
        .s_axis_tlast(axi_dma_1_M_AXI_out_TLAST),
        .s_axis_tready(axi_dma_1_M_AXI_out_TREADY),
        .s_axis_tvalid(axi_dma_1_M_AXI_out_TVALID));
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
       (.axi_clk(ddr4_0_c0_ddr4_ui_clk),
        .axi_data(comp_ana_high_axi_data),
        .axi_empty(comp_ana_high_axi_empty),
        .axi_full(axi_int_0_high_full),
        .axi_pending(comp_ana_high_axi_pending),
        .axi_rd(axi_int_0_high_rd),
        .axi_timestamp(comp_ana_high_axi_timestamp),
        .axi_wr(comp_ana_high_axi_wr),
        .clk(mts_0_comp_ana1_clk),
        .config_adr(adc_control_0_config_adr),
        .config_clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_data(adc_control_0_config_data),
        .config_wr(adc_control_0_config_high_wr),
        .fifo_active(comp_high_active),
        .fifo_angle(comp_high_angle),
        .fifo_burst(comp_high_burst),
        .fifo_clk(mts_0_comp1_clk),
        .fifo_doa_error(comp_high_doa_error),
        .fifo_freq(comp_high_freq),
        .fifo_im(comp_high_im),
        .fifo_re(comp_high_re),
        .fifo_sample(comp_high_sample),
        .fifo_size(comp_high_size),
        .pl_clk(zynq_ultra_ps_e_0_pl_clk0),
        .reset(mts_0_comp_ana1_reset));
  ps_comp_ana_0_0 comp_ana_low
       (.axi_clk(ddr4_0_c0_ddr4_ui_clk),
        .axi_data(comp_ana_low_axi_data),
        .axi_empty(comp_ana_low_axi_empty),
        .axi_full(axi_int_0_low_full),
        .axi_pending(comp_ana_low_axi_pending),
        .axi_rd(axi_int_0_low_rd),
        .axi_timestamp(comp_ana_low_axi_timestamp),
        .axi_wr(comp_ana_low_axi_wr),
        .clk(mts_0_comp_ana0_clk),
        .config_adr(adc_control_0_config_adr),
        .config_clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_data(adc_control_0_config_data),
        .config_wr(adc_control_0_config_low_wr),
        .fifo_active(comp_low_active),
        .fifo_angle(comp_low_angle),
        .fifo_burst(comp_low_burst),
        .fifo_clk(mts_0_comp0_clk),
        .fifo_doa_error(comp_low_doa_error),
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
        .ana_fifo_doa_error(ana_high_doa_error),
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
        .doa_error(comp_high_doa_error),
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
        .ana_fifo_doa_error(ana_low_doa_error),
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
        .doa_error(comp_low_doa_error),
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
  ps_ddr4_0_0 ddr4_0
       (.c0_ddr4_act_n(ddr4_sdram_c0_act_n),
        .c0_ddr4_adr(ddr4_sdram_c0_adr),
        .c0_ddr4_aresetn(mts_0_axi_reset_out),
        .c0_ddr4_ba(ddr4_sdram_c0_ba),
        .c0_ddr4_bg(ddr4_sdram_c0_bg),
        .c0_ddr4_ck_c(\^ddr4_sdram_c0_ck_c ),
        .c0_ddr4_ck_t(\^ddr4_sdram_c0_ck_t ),
        .c0_ddr4_cke(\^ddr4_sdram_c0_cke ),
        .c0_ddr4_cs_n(ddr4_sdram_c0_cs_n),
        .c0_ddr4_dm_dbi_n(ddr4_sdram_c0_dm_n),
        .c0_ddr4_dq(ddr4_sdram_c0_dq),
        .c0_ddr4_dqs_c(ddr4_sdram_c0_dqs_c),
        .c0_ddr4_dqs_t(ddr4_sdram_c0_dqs_t),
        .c0_ddr4_odt(\^ddr4_sdram_c0_odt ),
        .c0_ddr4_reset_n(ddr4_sdram_c0_reset_n),
        .c0_ddr4_s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(smartconnect_0_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(smartconnect_0_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_init_calib_complete(ddr4_0_c0_init_calib_complete),
        .c0_sys_clk_n(default_sysclk_c0_300mhz_clk_n),
        .c0_sys_clk_p(default_sysclk_c0_300mhz_clk_p),
        .sys_rst(reset));
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
  ps_axi_gpio_0_6 gpio_linux_ptr
       (.gpio2_io_o(gpio_linux_ptr_gpio2_io_o),
        .gpio_io_i(axi_dma_1_linux_wr_ptr),
        .s_axi_aclk(ddr4_0_c0_ddr4_ui_clk),
        .s_axi_araddr(axi_smc_2_M00_AXI_ARADDR),
        .s_axi_aresetn(mts_0_axi_reset_out),
        .s_axi_arready(axi_smc_2_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .s_axi_awready(axi_smc_2_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_2_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_2_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_2_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_2_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_2_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_2_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_2_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_2_M00_AXI_WDATA),
        .s_axi_wready(axi_smc_2_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_2_M00_AXI_WVALID));
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
        .mig_clk(ddr4_0_c0_ddr4_ui_clk),
        .mig_resetn(mts_0_axi_reset_out),
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
  ps_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  ps_axi_timer_0_0 r5_timer
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
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
  ps_rst_ps_333M_0 rst_ps_333M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps_333M_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_c0_ddr4_ui_clk));
  ps_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .S01_AXI_awaddr(axi_int_0_M_AXI_AWADDR),
        .S01_AXI_awburst(axi_int_0_M_AXI_AWBURST),
        .S01_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_awlen(axi_int_0_M_AXI_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot({1'b0,axi_int_0_M_AXI_AWPROT}),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_int_0_M_AXI_AWREADY),
        .S01_AXI_awsize(axi_int_0_M_AXI_AWSIZE),
        .S01_AXI_awvalid(axi_int_0_M_AXI_AWVALID),
        .S01_AXI_bready(axi_int_0_M_AXI_BREADY),
        .S01_AXI_bresp(axi_int_0_M_AXI_BRESP),
        .S01_AXI_bvalid(axi_int_0_M_AXI_BVALID),
        .S01_AXI_wdata(axi_int_0_M_AXI_WDATA),
        .S01_AXI_wlast(axi_int_0_M_AXI_WLAST),
        .S01_AXI_wready(axi_int_0_M_AXI_WREADY),
        .S01_AXI_wstrb(axi_int_0_M_AXI_WSTRB),
        .S01_AXI_wvalid(axi_int_0_M_AXI_WVALID),
        .S02_AXI_araddr(axi_datamover_0_M_AXI_MM2S_ARADDR),
        .S02_AXI_arburst(axi_datamover_0_M_AXI_MM2S_ARBURST),
        .S02_AXI_arcache(axi_datamover_0_M_AXI_MM2S_ARCACHE),
        .S02_AXI_arid(axi_datamover_0_M_AXI_MM2S_ARID),
        .S02_AXI_arlen(axi_datamover_0_M_AXI_MM2S_ARLEN),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(axi_datamover_0_M_AXI_MM2S_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(axi_datamover_0_M_AXI_MM2S_ARREADY),
        .S02_AXI_arsize(axi_datamover_0_M_AXI_MM2S_ARSIZE),
        .S02_AXI_aruser(axi_datamover_0_M_AXI_MM2S_ARUSER),
        .S02_AXI_arvalid(axi_datamover_0_M_AXI_MM2S_ARVALID),
        .S02_AXI_rdata(axi_datamover_0_M_AXI_MM2S_RDATA),
        .S02_AXI_rlast(axi_datamover_0_M_AXI_MM2S_RLAST),
        .S02_AXI_rready(axi_datamover_0_M_AXI_MM2S_RREADY),
        .S02_AXI_rresp(axi_datamover_0_M_AXI_MM2S_RRESP),
        .S02_AXI_rvalid(axi_datamover_0_M_AXI_MM2S_RVALID),
        .aclk(ddr4_0_c0_ddr4_ui_clk),
        .aresetn(mts_0_axi_reset_out));
  ps_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arburst({1'b0,1'b1}),
        .SLOT_0_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_0_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arlock(1'b0),
        .SLOT_0_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize({1'b1,1'b0,1'b0}),
        .SLOT_0_AXI_arvalid(1'b0),
        .SLOT_0_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .SLOT_0_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(axi_smc_1_M00_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .SLOT_0_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .SLOT_0_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(1'b0),
        .SLOT_0_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .SLOT_1_AXIS_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .SLOT_1_AXIS_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .SLOT_1_AXIS_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .SLOT_1_AXIS_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .SLOT_1_AXIS_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .SLOT_2_AXIS_tdata(axi_datamover_1_M_AXIS_S2MM_STS_TDATA),
        .SLOT_2_AXIS_tkeep(axi_datamover_1_M_AXIS_S2MM_STS_TKEEP),
        .SLOT_2_AXIS_tlast(axi_datamover_1_M_AXIS_S2MM_STS_TLAST),
        .SLOT_2_AXIS_tready(axi_datamover_1_M_AXIS_S2MM_STS_TREADY),
        .SLOT_2_AXIS_tvalid(axi_datamover_1_M_AXIS_S2MM_STS_TVALID),
        .SLOT_3_AXIS_tdata(axi_dma_1_M_AXI_out_cmd_TDATA),
        .SLOT_3_AXIS_tlast(1'b0),
        .SLOT_3_AXIS_tready(axi_dma_1_M_AXI_out_cmd_TREADY),
        .SLOT_3_AXIS_tvalid(axi_dma_1_M_AXI_out_cmd_TVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .resetn(rst_ps_333M_peripheral_aresetn));
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
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
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
        .maxihpm0_fpd_aclk(ddr4_0_c0_ddr4_ui_clk),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(ddr4_0_c0_ddr4_ui_clk),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(axi_dma_1_irq),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arburst({1'b0,1'b1}),
        .saxigp0_arcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlock(1'b0),
        .saxigp0_arprot({1'b0,1'b0,1'b0}),
        .saxigp0_arqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp0_arsize({1'b1,1'b0,1'b0}),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(1'b0),
        .saxigp0_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp0_awuser(axi_smc_1_M00_AXI_AWUSER[0]),
        .saxigp0_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp0_rready(1'b0),
        .saxigp0_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxihpc0_fpd_aclk(ddr4_0_c0_ddr4_ui_clk));
endmodule
