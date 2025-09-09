// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:26:59 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_tlast_gen_v1_0_0_0/rfdc_ex_tlast_gen_v1_0_0_0_sim_netlist.v
// Design      : rfdc_ex_tlast_gen_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rfdc_ex_tlast_gen_v1_0_0_0,tlast_gen_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "tlast_gen_v1_0,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module rfdc_ex_tlast_gen_v1_0_0_0
   (s_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tkeep,
    aclk,
    arstn,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [511:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [63:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET arstn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 arstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input arstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [63:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF s00_axi, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire arstn;
  wire [511:0]m_axis_tdata;
  wire [63:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [511:0]s_axis_tdata;
  wire [63:0]s_axis_tkeep;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXIS_TDATA_BYTES = "64" *) 
  (* C_S_AXIS_TDATA_WIDTH = "512" *) 
  (* C_S_AXIS_TKEEP_WIDTH = "64" *) 
  rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 inst
       (.aclk(aclk),
        .arstn(arstn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[3:2],1'b0,1'b0}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr({s00_axi_awaddr[3:2],1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(NLW_inst_s00_axi_bresp_UNCONNECTED[1:0]),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(NLW_inst_s00_axi_rresp_UNCONNECTED[1:0]),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* C_S_AXIS_TDATA_BYTES = "64" *) 
(* C_S_AXIS_TDATA_WIDTH = "512" *) (* C_S_AXIS_TKEEP_WIDTH = "64" *) (* ORIG_REF_NAME = "tlast_gen_v1_0" *) 
module rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0
   (s_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tkeep,
    aclk,
    arstn,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output s_axis_tready;
  input s_axis_tvalid;
  input [511:0]s_axis_tdata;
  input [63:0]s_axis_tkeep;
  input aclk;
  input arstn;
  output m_axis_tlast;
  input m_axis_tready;
  output m_axis_tvalid;
  output [511:0]m_axis_tdata;
  output [63:0]m_axis_tkeep;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire arstn;
  wire m_axis_tlast;
  wire m_axis_tlast1;
  wire [31:6]m_axis_tlast2;
  wire m_axis_tlast_i_10_n_0;
  wire m_axis_tlast_i_11_n_0;
  wire m_axis_tlast_i_12_n_0;
  wire m_axis_tlast_i_13_n_0;
  wire m_axis_tlast_i_14_n_0;
  wire m_axis_tlast_i_15_n_0;
  wire m_axis_tlast_i_16_n_0;
  wire m_axis_tlast_i_17_n_0;
  wire m_axis_tlast_i_18_n_0;
  wire m_axis_tlast_i_19_n_0;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_20_n_0;
  wire m_axis_tlast_i_21_n_0;
  wire m_axis_tlast_i_22_n_0;
  wire m_axis_tlast_i_23_n_0;
  wire m_axis_tlast_i_24_n_0;
  wire m_axis_tlast_i_25_n_0;
  wire m_axis_tlast_i_26_n_0;
  wire m_axis_tlast_i_27_n_0;
  wire m_axis_tlast_i_28_n_0;
  wire m_axis_tlast_i_29_n_0;
  wire m_axis_tlast_i_30_n_0;
  wire m_axis_tlast_i_31_n_0;
  wire m_axis_tlast_i_32_n_0;
  wire m_axis_tlast_i_37_n_0;
  wire m_axis_tlast_i_38_n_0;
  wire m_axis_tlast_i_39_n_0;
  wire m_axis_tlast_i_40_n_0;
  wire m_axis_tlast_i_41_n_0;
  wire m_axis_tlast_i_42_n_0;
  wire m_axis_tlast_i_43_n_0;
  wire m_axis_tlast_i_44_n_0;
  wire m_axis_tlast_i_45_n_0;
  wire m_axis_tlast_i_46_n_0;
  wire m_axis_tlast_i_47_n_0;
  wire m_axis_tlast_i_48_n_0;
  wire m_axis_tlast_i_49_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tlast_i_50_n_0;
  wire m_axis_tlast_i_51_n_0;
  wire m_axis_tlast_i_52_n_0;
  wire m_axis_tlast_i_53_n_0;
  wire m_axis_tlast_i_54_n_0;
  wire m_axis_tlast_i_55_n_0;
  wire m_axis_tlast_i_56_n_0;
  wire m_axis_tlast_i_57_n_0;
  wire m_axis_tlast_i_58_n_0;
  wire m_axis_tlast_i_59_n_0;
  wire m_axis_tlast_i_5_n_0;
  wire m_axis_tlast_i_60_n_0;
  wire m_axis_tlast_i_61_n_0;
  wire m_axis_tlast_i_6_n_0;
  wire m_axis_tlast_i_7_n_0;
  wire m_axis_tlast_i_8_n_0;
  wire m_axis_tlast_i_9_n_0;
  wire m_axis_tlast_reg_i_2_n_2;
  wire m_axis_tlast_reg_i_2_n_3;
  wire m_axis_tlast_reg_i_2_n_4;
  wire m_axis_tlast_reg_i_2_n_5;
  wire m_axis_tlast_reg_i_2_n_6;
  wire m_axis_tlast_reg_i_2_n_7;
  wire m_axis_tlast_reg_i_33_n_7;
  wire m_axis_tlast_reg_i_34_n_0;
  wire m_axis_tlast_reg_i_34_n_1;
  wire m_axis_tlast_reg_i_34_n_2;
  wire m_axis_tlast_reg_i_34_n_3;
  wire m_axis_tlast_reg_i_34_n_4;
  wire m_axis_tlast_reg_i_34_n_5;
  wire m_axis_tlast_reg_i_34_n_6;
  wire m_axis_tlast_reg_i_34_n_7;
  wire m_axis_tlast_reg_i_35_n_0;
  wire m_axis_tlast_reg_i_35_n_1;
  wire m_axis_tlast_reg_i_35_n_2;
  wire m_axis_tlast_reg_i_35_n_3;
  wire m_axis_tlast_reg_i_35_n_4;
  wire m_axis_tlast_reg_i_35_n_5;
  wire m_axis_tlast_reg_i_35_n_6;
  wire m_axis_tlast_reg_i_35_n_7;
  wire m_axis_tlast_reg_i_36_n_0;
  wire m_axis_tlast_reg_i_36_n_1;
  wire m_axis_tlast_reg_i_36_n_2;
  wire m_axis_tlast_reg_i_36_n_3;
  wire m_axis_tlast_reg_i_36_n_4;
  wire m_axis_tlast_reg_i_36_n_5;
  wire m_axis_tlast_reg_i_36_n_6;
  wire m_axis_tlast_reg_i_36_n_7;
  wire m_axis_tlast_reg_i_3_n_0;
  wire m_axis_tlast_reg_i_3_n_1;
  wire m_axis_tlast_reg_i_3_n_2;
  wire m_axis_tlast_reg_i_3_n_3;
  wire m_axis_tlast_reg_i_3_n_4;
  wire m_axis_tlast_reg_i_3_n_5;
  wire m_axis_tlast_reg_i_3_n_6;
  wire m_axis_tlast_reg_i_3_n_7;
  wire m_axis_tready;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [511:0]s_axis_tdata;
  wire [63:0]s_axis_tkeep;
  wire s_axis_tvalid;
  wire [31:0]tdata_byte_count;
  wire \tdata_byte_count_int[13]_i_2_n_0 ;
  wire \tdata_byte_count_int[13]_i_3_n_0 ;
  wire \tdata_byte_count_int[13]_i_4_n_0 ;
  wire \tdata_byte_count_int[13]_i_5_n_0 ;
  wire \tdata_byte_count_int[13]_i_6_n_0 ;
  wire \tdata_byte_count_int[13]_i_7_n_0 ;
  wire \tdata_byte_count_int[13]_i_8_n_0 ;
  wire \tdata_byte_count_int[13]_i_9_n_0 ;
  wire \tdata_byte_count_int[21]_i_2_n_0 ;
  wire \tdata_byte_count_int[21]_i_3_n_0 ;
  wire \tdata_byte_count_int[21]_i_4_n_0 ;
  wire \tdata_byte_count_int[21]_i_5_n_0 ;
  wire \tdata_byte_count_int[21]_i_6_n_0 ;
  wire \tdata_byte_count_int[21]_i_7_n_0 ;
  wire \tdata_byte_count_int[21]_i_8_n_0 ;
  wire \tdata_byte_count_int[21]_i_9_n_0 ;
  wire \tdata_byte_count_int[29]_i_2_n_0 ;
  wire \tdata_byte_count_int[29]_i_3_n_0 ;
  wire \tdata_byte_count_int[29]_i_4_n_0 ;
  wire \tdata_byte_count_int[6]_i_10_n_0 ;
  wire \tdata_byte_count_int[6]_i_11_n_0 ;
  wire \tdata_byte_count_int[6]_i_1_n_0 ;
  wire \tdata_byte_count_int[6]_i_3_n_0 ;
  wire \tdata_byte_count_int[6]_i_4_n_0 ;
  wire \tdata_byte_count_int[6]_i_5_n_0 ;
  wire \tdata_byte_count_int[6]_i_6_n_0 ;
  wire \tdata_byte_count_int[6]_i_7_n_0 ;
  wire \tdata_byte_count_int[6]_i_8_n_0 ;
  wire \tdata_byte_count_int[6]_i_9_n_0 ;
  wire [31:6]tdata_byte_count_int_reg;
  wire \tdata_byte_count_int_reg[13]_i_1_n_0 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_1 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_10 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_11 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_12 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_13 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_14 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_15 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_2 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_3 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_4 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_5 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_6 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_7 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_8 ;
  wire \tdata_byte_count_int_reg[13]_i_1_n_9 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_0 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_1 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_10 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_11 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_12 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_13 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_14 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_15 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_2 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_3 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_4 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_5 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_6 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_7 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_8 ;
  wire \tdata_byte_count_int_reg[21]_i_1_n_9 ;
  wire \tdata_byte_count_int_reg[29]_i_1_n_13 ;
  wire \tdata_byte_count_int_reg[29]_i_1_n_14 ;
  wire \tdata_byte_count_int_reg[29]_i_1_n_15 ;
  wire \tdata_byte_count_int_reg[29]_i_1_n_6 ;
  wire \tdata_byte_count_int_reg[29]_i_1_n_7 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_0 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_1 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_10 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_11 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_12 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_13 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_14 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_2 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_3 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_4 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_5 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_6 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_7 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_8 ;
  wire \tdata_byte_count_int_reg[6]_i_2_n_9 ;
  (* async_reg = "true" *) wire [31:0]tdata_byte_count_meta;
  (* async_reg = "true" *) wire [31:0]tdata_byte_count_sync;
  wire [31:0]tdata_byte_count_sync_d1;
  wire tdata_byte_count_update;
  (* async_reg = "true" *) wire tdata_byte_count_update_meta;
  (* async_reg = "true" *) wire tdata_byte_count_update_sync;
  wire tdata_byte_count_update_sync_d1;
  wire tdata_byte_count_update_sync_re;
  wire tdata_byte_count_update_sync_re0;
  wire [7:7]NLW_m_axis_tlast_reg_i_2_CO_UNCONNECTED;
  wire [7:0]NLW_m_axis_tlast_reg_i_2_O_UNCONNECTED;
  wire [7:0]NLW_m_axis_tlast_reg_i_3_O_UNCONNECTED;
  wire [7:1]NLW_m_axis_tlast_reg_i_33_CO_UNCONNECTED;
  wire [7:2]NLW_m_axis_tlast_reg_i_33_O_UNCONNECTED;
  wire [7:2]\NLW_tdata_byte_count_int_reg[29]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_tdata_byte_count_int_reg[29]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_tdata_byte_count_int_reg[6]_i_2_O_UNCONNECTED ;

  assign m_axis_tdata[511:0] = s_axis_tdata;
  assign m_axis_tkeep[63:0] = s_axis_tkeep;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s_axis_tready = m_axis_tready;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h2CCC)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast1),
        .I1(m_axis_tlast),
        .I2(s_axis_tvalid),
        .I3(m_axis_tready),
        .O(m_axis_tlast_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_10
       (.I0(tdata_byte_count_int_reg[18]),
        .I1(m_axis_tlast2[18]),
        .I2(m_axis_tlast2[19]),
        .I3(tdata_byte_count_int_reg[19]),
        .O(m_axis_tlast_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_11
       (.I0(tdata_byte_count_int_reg[30]),
        .I1(m_axis_tlast2[30]),
        .I2(tdata_byte_count_int_reg[31]),
        .I3(m_axis_tlast2[31]),
        .O(m_axis_tlast_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_12
       (.I0(tdata_byte_count_int_reg[28]),
        .I1(m_axis_tlast2[28]),
        .I2(tdata_byte_count_int_reg[29]),
        .I3(m_axis_tlast2[29]),
        .O(m_axis_tlast_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_13
       (.I0(tdata_byte_count_int_reg[26]),
        .I1(m_axis_tlast2[26]),
        .I2(tdata_byte_count_int_reg[27]),
        .I3(m_axis_tlast2[27]),
        .O(m_axis_tlast_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_14
       (.I0(tdata_byte_count_int_reg[24]),
        .I1(m_axis_tlast2[24]),
        .I2(tdata_byte_count_int_reg[25]),
        .I3(m_axis_tlast2[25]),
        .O(m_axis_tlast_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_15
       (.I0(tdata_byte_count_int_reg[22]),
        .I1(m_axis_tlast2[22]),
        .I2(tdata_byte_count_int_reg[23]),
        .I3(m_axis_tlast2[23]),
        .O(m_axis_tlast_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_16
       (.I0(tdata_byte_count_int_reg[20]),
        .I1(m_axis_tlast2[20]),
        .I2(tdata_byte_count_int_reg[21]),
        .I3(m_axis_tlast2[21]),
        .O(m_axis_tlast_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_17
       (.I0(tdata_byte_count_int_reg[18]),
        .I1(m_axis_tlast2[18]),
        .I2(tdata_byte_count_int_reg[19]),
        .I3(m_axis_tlast2[19]),
        .O(m_axis_tlast_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    m_axis_tlast_i_18
       (.I0(tdata_byte_count_sync_d1[0]),
        .I1(tdata_byte_count_sync_d1[1]),
        .O(m_axis_tlast_i_18_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_19
       (.I0(tdata_byte_count_int_reg[16]),
        .I1(m_axis_tlast2[16]),
        .I2(m_axis_tlast2[17]),
        .I3(tdata_byte_count_int_reg[17]),
        .O(m_axis_tlast_i_19_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_20
       (.I0(tdata_byte_count_int_reg[14]),
        .I1(m_axis_tlast2[14]),
        .I2(m_axis_tlast2[15]),
        .I3(tdata_byte_count_int_reg[15]),
        .O(m_axis_tlast_i_20_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_21
       (.I0(tdata_byte_count_int_reg[12]),
        .I1(m_axis_tlast2[12]),
        .I2(m_axis_tlast2[13]),
        .I3(tdata_byte_count_int_reg[13]),
        .O(m_axis_tlast_i_21_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_22
       (.I0(tdata_byte_count_int_reg[10]),
        .I1(m_axis_tlast2[10]),
        .I2(m_axis_tlast2[11]),
        .I3(tdata_byte_count_int_reg[11]),
        .O(m_axis_tlast_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_23
       (.I0(tdata_byte_count_int_reg[8]),
        .I1(m_axis_tlast2[8]),
        .I2(m_axis_tlast2[9]),
        .I3(tdata_byte_count_int_reg[9]),
        .O(m_axis_tlast_i_23_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_24
       (.I0(tdata_byte_count_int_reg[6]),
        .I1(m_axis_tlast2[6]),
        .I2(m_axis_tlast2[7]),
        .I3(tdata_byte_count_int_reg[7]),
        .O(m_axis_tlast_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_25
       (.I0(tdata_byte_count_int_reg[16]),
        .I1(m_axis_tlast2[16]),
        .I2(tdata_byte_count_int_reg[17]),
        .I3(m_axis_tlast2[17]),
        .O(m_axis_tlast_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_26
       (.I0(tdata_byte_count_int_reg[14]),
        .I1(m_axis_tlast2[14]),
        .I2(tdata_byte_count_int_reg[15]),
        .I3(m_axis_tlast2[15]),
        .O(m_axis_tlast_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_27
       (.I0(tdata_byte_count_int_reg[12]),
        .I1(m_axis_tlast2[12]),
        .I2(tdata_byte_count_int_reg[13]),
        .I3(m_axis_tlast2[13]),
        .O(m_axis_tlast_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_28
       (.I0(tdata_byte_count_int_reg[10]),
        .I1(m_axis_tlast2[10]),
        .I2(tdata_byte_count_int_reg[11]),
        .I3(m_axis_tlast2[11]),
        .O(m_axis_tlast_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_29
       (.I0(tdata_byte_count_int_reg[8]),
        .I1(m_axis_tlast2[8]),
        .I2(tdata_byte_count_int_reg[9]),
        .I3(m_axis_tlast2[9]),
        .O(m_axis_tlast_i_29_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast_i_30
       (.I0(tdata_byte_count_int_reg[6]),
        .I1(m_axis_tlast2[6]),
        .I2(tdata_byte_count_int_reg[7]),
        .I3(m_axis_tlast2[7]),
        .O(m_axis_tlast_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    m_axis_tlast_i_31
       (.I0(tdata_byte_count_sync_d1[4]),
        .I1(tdata_byte_count_sync_d1[5]),
        .O(m_axis_tlast_i_31_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    m_axis_tlast_i_32
       (.I0(tdata_byte_count_sync_d1[2]),
        .I1(tdata_byte_count_sync_d1[3]),
        .O(m_axis_tlast_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_37
       (.I0(tdata_byte_count_sync_d1[31]),
        .O(m_axis_tlast_i_37_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_38
       (.I0(tdata_byte_count_sync_d1[30]),
        .O(m_axis_tlast_i_38_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_39
       (.I0(tdata_byte_count_sync_d1[29]),
        .O(m_axis_tlast_i_39_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_4
       (.I0(tdata_byte_count_int_reg[30]),
        .I1(m_axis_tlast2[30]),
        .I2(m_axis_tlast2[31]),
        .I3(tdata_byte_count_int_reg[31]),
        .O(m_axis_tlast_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_40
       (.I0(tdata_byte_count_sync_d1[28]),
        .O(m_axis_tlast_i_40_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_41
       (.I0(tdata_byte_count_sync_d1[27]),
        .O(m_axis_tlast_i_41_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_42
       (.I0(tdata_byte_count_sync_d1[26]),
        .O(m_axis_tlast_i_42_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_43
       (.I0(tdata_byte_count_sync_d1[25]),
        .O(m_axis_tlast_i_43_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_44
       (.I0(tdata_byte_count_sync_d1[24]),
        .O(m_axis_tlast_i_44_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_45
       (.I0(tdata_byte_count_sync_d1[23]),
        .O(m_axis_tlast_i_45_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_46
       (.I0(tdata_byte_count_sync_d1[22]),
        .O(m_axis_tlast_i_46_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_47
       (.I0(tdata_byte_count_sync_d1[21]),
        .O(m_axis_tlast_i_47_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_48
       (.I0(tdata_byte_count_sync_d1[20]),
        .O(m_axis_tlast_i_48_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_49
       (.I0(tdata_byte_count_sync_d1[19]),
        .O(m_axis_tlast_i_49_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_5
       (.I0(tdata_byte_count_int_reg[28]),
        .I1(m_axis_tlast2[28]),
        .I2(m_axis_tlast2[29]),
        .I3(tdata_byte_count_int_reg[29]),
        .O(m_axis_tlast_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_50
       (.I0(tdata_byte_count_sync_d1[18]),
        .O(m_axis_tlast_i_50_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_51
       (.I0(tdata_byte_count_sync_d1[17]),
        .O(m_axis_tlast_i_51_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_52
       (.I0(tdata_byte_count_sync_d1[16]),
        .O(m_axis_tlast_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_53
       (.I0(tdata_byte_count_sync_d1[15]),
        .O(m_axis_tlast_i_53_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_54
       (.I0(tdata_byte_count_sync_d1[14]),
        .O(m_axis_tlast_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_55
       (.I0(tdata_byte_count_sync_d1[13]),
        .O(m_axis_tlast_i_55_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_56
       (.I0(tdata_byte_count_sync_d1[12]),
        .O(m_axis_tlast_i_56_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_57
       (.I0(tdata_byte_count_sync_d1[11]),
        .O(m_axis_tlast_i_57_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_58
       (.I0(tdata_byte_count_sync_d1[10]),
        .O(m_axis_tlast_i_58_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_59
       (.I0(tdata_byte_count_sync_d1[9]),
        .O(m_axis_tlast_i_59_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_6
       (.I0(tdata_byte_count_int_reg[26]),
        .I1(m_axis_tlast2[26]),
        .I2(m_axis_tlast2[27]),
        .I3(tdata_byte_count_int_reg[27]),
        .O(m_axis_tlast_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_60
       (.I0(tdata_byte_count_sync_d1[8]),
        .O(m_axis_tlast_i_60_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_i_61
       (.I0(tdata_byte_count_sync_d1[7]),
        .O(m_axis_tlast_i_61_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_7
       (.I0(tdata_byte_count_int_reg[24]),
        .I1(m_axis_tlast2[24]),
        .I2(m_axis_tlast2[25]),
        .I3(tdata_byte_count_int_reg[25]),
        .O(m_axis_tlast_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_8
       (.I0(tdata_byte_count_int_reg[22]),
        .I1(m_axis_tlast2[22]),
        .I2(m_axis_tlast2[23]),
        .I3(tdata_byte_count_int_reg[23]),
        .O(m_axis_tlast_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    m_axis_tlast_i_9
       (.I0(tdata_byte_count_int_reg[20]),
        .I1(m_axis_tlast2[20]),
        .I2(m_axis_tlast2[21]),
        .I3(tdata_byte_count_int_reg[21]),
        .O(m_axis_tlast_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 m_axis_tlast_reg_i_2
       (.CI(m_axis_tlast_reg_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_m_axis_tlast_reg_i_2_CO_UNCONNECTED[7],m_axis_tlast1,m_axis_tlast_reg_i_2_n_2,m_axis_tlast_reg_i_2_n_3,m_axis_tlast_reg_i_2_n_4,m_axis_tlast_reg_i_2_n_5,m_axis_tlast_reg_i_2_n_6,m_axis_tlast_reg_i_2_n_7}),
        .DI({1'b0,m_axis_tlast_i_4_n_0,m_axis_tlast_i_5_n_0,m_axis_tlast_i_6_n_0,m_axis_tlast_i_7_n_0,m_axis_tlast_i_8_n_0,m_axis_tlast_i_9_n_0,m_axis_tlast_i_10_n_0}),
        .O(NLW_m_axis_tlast_reg_i_2_O_UNCONNECTED[7:0]),
        .S({1'b0,m_axis_tlast_i_11_n_0,m_axis_tlast_i_12_n_0,m_axis_tlast_i_13_n_0,m_axis_tlast_i_14_n_0,m_axis_tlast_i_15_n_0,m_axis_tlast_i_16_n_0,m_axis_tlast_i_17_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 m_axis_tlast_reg_i_3
       (.CI(m_axis_tlast_i_18_n_0),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast_reg_i_3_n_0,m_axis_tlast_reg_i_3_n_1,m_axis_tlast_reg_i_3_n_2,m_axis_tlast_reg_i_3_n_3,m_axis_tlast_reg_i_3_n_4,m_axis_tlast_reg_i_3_n_5,m_axis_tlast_reg_i_3_n_6,m_axis_tlast_reg_i_3_n_7}),
        .DI({m_axis_tlast_i_19_n_0,m_axis_tlast_i_20_n_0,m_axis_tlast_i_21_n_0,m_axis_tlast_i_22_n_0,m_axis_tlast_i_23_n_0,m_axis_tlast_i_24_n_0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast_reg_i_3_O_UNCONNECTED[7:0]),
        .S({m_axis_tlast_i_25_n_0,m_axis_tlast_i_26_n_0,m_axis_tlast_i_27_n_0,m_axis_tlast_i_28_n_0,m_axis_tlast_i_29_n_0,m_axis_tlast_i_30_n_0,m_axis_tlast_i_31_n_0,m_axis_tlast_i_32_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast_reg_i_33
       (.CI(m_axis_tlast_reg_i_34_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_m_axis_tlast_reg_i_33_CO_UNCONNECTED[7:1],m_axis_tlast_reg_i_33_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tdata_byte_count_sync_d1[30]}),
        .O({NLW_m_axis_tlast_reg_i_33_O_UNCONNECTED[7:2],m_axis_tlast2[31:30]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m_axis_tlast_i_37_n_0,m_axis_tlast_i_38_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast_reg_i_34
       (.CI(m_axis_tlast_reg_i_35_n_0),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast_reg_i_34_n_0,m_axis_tlast_reg_i_34_n_1,m_axis_tlast_reg_i_34_n_2,m_axis_tlast_reg_i_34_n_3,m_axis_tlast_reg_i_34_n_4,m_axis_tlast_reg_i_34_n_5,m_axis_tlast_reg_i_34_n_6,m_axis_tlast_reg_i_34_n_7}),
        .DI(tdata_byte_count_sync_d1[29:22]),
        .O(m_axis_tlast2[29:22]),
        .S({m_axis_tlast_i_39_n_0,m_axis_tlast_i_40_n_0,m_axis_tlast_i_41_n_0,m_axis_tlast_i_42_n_0,m_axis_tlast_i_43_n_0,m_axis_tlast_i_44_n_0,m_axis_tlast_i_45_n_0,m_axis_tlast_i_46_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast_reg_i_35
       (.CI(m_axis_tlast_reg_i_36_n_0),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast_reg_i_35_n_0,m_axis_tlast_reg_i_35_n_1,m_axis_tlast_reg_i_35_n_2,m_axis_tlast_reg_i_35_n_3,m_axis_tlast_reg_i_35_n_4,m_axis_tlast_reg_i_35_n_5,m_axis_tlast_reg_i_35_n_6,m_axis_tlast_reg_i_35_n_7}),
        .DI(tdata_byte_count_sync_d1[21:14]),
        .O(m_axis_tlast2[21:14]),
        .S({m_axis_tlast_i_47_n_0,m_axis_tlast_i_48_n_0,m_axis_tlast_i_49_n_0,m_axis_tlast_i_50_n_0,m_axis_tlast_i_51_n_0,m_axis_tlast_i_52_n_0,m_axis_tlast_i_53_n_0,m_axis_tlast_i_54_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast_reg_i_36
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast_reg_i_36_n_0,m_axis_tlast_reg_i_36_n_1,m_axis_tlast_reg_i_36_n_2,m_axis_tlast_reg_i_36_n_3,m_axis_tlast_reg_i_36_n_4,m_axis_tlast_reg_i_36_n_5,m_axis_tlast_reg_i_36_n_6,m_axis_tlast_reg_i_36_n_7}),
        .DI({tdata_byte_count_sync_d1[13:7],1'b0}),
        .O(m_axis_tlast2[13:6]),
        .S({m_axis_tlast_i_55_n_0,m_axis_tlast_i_56_n_0,m_axis_tlast_i_57_n_0,m_axis_tlast_i_58_n_0,m_axis_tlast_i_59_n_0,m_axis_tlast_i_60_n_0,m_axis_tlast_i_61_n_0,tdata_byte_count_sync_d1[6]}));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_2 
       (.I0(tdata_byte_count_int_reg[20]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_3 
       (.I0(tdata_byte_count_int_reg[19]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_4 
       (.I0(tdata_byte_count_int_reg[18]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_5 
       (.I0(tdata_byte_count_int_reg[17]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_6 
       (.I0(tdata_byte_count_int_reg[16]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_7 
       (.I0(tdata_byte_count_int_reg[15]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_8 
       (.I0(tdata_byte_count_int_reg[14]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[13]_i_9 
       (.I0(tdata_byte_count_int_reg[13]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_2 
       (.I0(tdata_byte_count_int_reg[28]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_3 
       (.I0(tdata_byte_count_int_reg[27]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_4 
       (.I0(tdata_byte_count_int_reg[26]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_5 
       (.I0(tdata_byte_count_int_reg[25]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_6 
       (.I0(tdata_byte_count_int_reg[24]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_7 
       (.I0(tdata_byte_count_int_reg[23]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_8 
       (.I0(tdata_byte_count_int_reg[22]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[21]_i_9 
       (.I0(tdata_byte_count_int_reg[21]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[29]_i_2 
       (.I0(tdata_byte_count_int_reg[31]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[29]_i_3 
       (.I0(tdata_byte_count_int_reg[30]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[29]_i_4 
       (.I0(tdata_byte_count_int_reg[29]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[29]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tdata_byte_count_int[6]_i_1 
       (.I0(tdata_byte_count_update_sync_re),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .O(\tdata_byte_count_int[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_10 
       (.I0(tdata_byte_count_int_reg[7]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h01111111)) 
    \tdata_byte_count_int[6]_i_11 
       (.I0(tdata_byte_count_int_reg[6]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tdata_byte_count_int[6]_i_3 
       (.I0(arstn),
        .O(\tdata_byte_count_int[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_4 
       (.I0(tdata_byte_count_int_reg[6]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_5 
       (.I0(tdata_byte_count_int_reg[12]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_6 
       (.I0(tdata_byte_count_int_reg[11]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_7 
       (.I0(tdata_byte_count_int_reg[10]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_8 
       (.I0(tdata_byte_count_int_reg[9]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \tdata_byte_count_int[6]_i_9 
       (.I0(tdata_byte_count_int_reg[8]),
        .I1(tdata_byte_count_update_sync_re),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(m_axis_tlast),
        .O(\tdata_byte_count_int[6]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[10] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_10 ),
        .Q(tdata_byte_count_int_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[11] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_9 ),
        .Q(tdata_byte_count_int_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[12] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_8 ),
        .Q(tdata_byte_count_int_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[13] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_15 ),
        .Q(tdata_byte_count_int_reg[13]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tdata_byte_count_int_reg[13]_i_1 
       (.CI(\tdata_byte_count_int_reg[6]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tdata_byte_count_int_reg[13]_i_1_n_0 ,\tdata_byte_count_int_reg[13]_i_1_n_1 ,\tdata_byte_count_int_reg[13]_i_1_n_2 ,\tdata_byte_count_int_reg[13]_i_1_n_3 ,\tdata_byte_count_int_reg[13]_i_1_n_4 ,\tdata_byte_count_int_reg[13]_i_1_n_5 ,\tdata_byte_count_int_reg[13]_i_1_n_6 ,\tdata_byte_count_int_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tdata_byte_count_int_reg[13]_i_1_n_8 ,\tdata_byte_count_int_reg[13]_i_1_n_9 ,\tdata_byte_count_int_reg[13]_i_1_n_10 ,\tdata_byte_count_int_reg[13]_i_1_n_11 ,\tdata_byte_count_int_reg[13]_i_1_n_12 ,\tdata_byte_count_int_reg[13]_i_1_n_13 ,\tdata_byte_count_int_reg[13]_i_1_n_14 ,\tdata_byte_count_int_reg[13]_i_1_n_15 }),
        .S({\tdata_byte_count_int[13]_i_2_n_0 ,\tdata_byte_count_int[13]_i_3_n_0 ,\tdata_byte_count_int[13]_i_4_n_0 ,\tdata_byte_count_int[13]_i_5_n_0 ,\tdata_byte_count_int[13]_i_6_n_0 ,\tdata_byte_count_int[13]_i_7_n_0 ,\tdata_byte_count_int[13]_i_8_n_0 ,\tdata_byte_count_int[13]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[14] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_14 ),
        .Q(tdata_byte_count_int_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[15] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_13 ),
        .Q(tdata_byte_count_int_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[16] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_12 ),
        .Q(tdata_byte_count_int_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[17] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_11 ),
        .Q(tdata_byte_count_int_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[18] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_10 ),
        .Q(tdata_byte_count_int_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[19] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_9 ),
        .Q(tdata_byte_count_int_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[20] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[13]_i_1_n_8 ),
        .Q(tdata_byte_count_int_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[21] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_15 ),
        .Q(tdata_byte_count_int_reg[21]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tdata_byte_count_int_reg[21]_i_1 
       (.CI(\tdata_byte_count_int_reg[13]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tdata_byte_count_int_reg[21]_i_1_n_0 ,\tdata_byte_count_int_reg[21]_i_1_n_1 ,\tdata_byte_count_int_reg[21]_i_1_n_2 ,\tdata_byte_count_int_reg[21]_i_1_n_3 ,\tdata_byte_count_int_reg[21]_i_1_n_4 ,\tdata_byte_count_int_reg[21]_i_1_n_5 ,\tdata_byte_count_int_reg[21]_i_1_n_6 ,\tdata_byte_count_int_reg[21]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tdata_byte_count_int_reg[21]_i_1_n_8 ,\tdata_byte_count_int_reg[21]_i_1_n_9 ,\tdata_byte_count_int_reg[21]_i_1_n_10 ,\tdata_byte_count_int_reg[21]_i_1_n_11 ,\tdata_byte_count_int_reg[21]_i_1_n_12 ,\tdata_byte_count_int_reg[21]_i_1_n_13 ,\tdata_byte_count_int_reg[21]_i_1_n_14 ,\tdata_byte_count_int_reg[21]_i_1_n_15 }),
        .S({\tdata_byte_count_int[21]_i_2_n_0 ,\tdata_byte_count_int[21]_i_3_n_0 ,\tdata_byte_count_int[21]_i_4_n_0 ,\tdata_byte_count_int[21]_i_5_n_0 ,\tdata_byte_count_int[21]_i_6_n_0 ,\tdata_byte_count_int[21]_i_7_n_0 ,\tdata_byte_count_int[21]_i_8_n_0 ,\tdata_byte_count_int[21]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[22] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_14 ),
        .Q(tdata_byte_count_int_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[23] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_13 ),
        .Q(tdata_byte_count_int_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[24] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_12 ),
        .Q(tdata_byte_count_int_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[25] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_11 ),
        .Q(tdata_byte_count_int_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[26] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_10 ),
        .Q(tdata_byte_count_int_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[27] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_9 ),
        .Q(tdata_byte_count_int_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[28] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[21]_i_1_n_8 ),
        .Q(tdata_byte_count_int_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[29] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[29]_i_1_n_15 ),
        .Q(tdata_byte_count_int_reg[29]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tdata_byte_count_int_reg[29]_i_1 
       (.CI(\tdata_byte_count_int_reg[21]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tdata_byte_count_int_reg[29]_i_1_CO_UNCONNECTED [7:2],\tdata_byte_count_int_reg[29]_i_1_n_6 ,\tdata_byte_count_int_reg[29]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tdata_byte_count_int_reg[29]_i_1_O_UNCONNECTED [7:3],\tdata_byte_count_int_reg[29]_i_1_n_13 ,\tdata_byte_count_int_reg[29]_i_1_n_14 ,\tdata_byte_count_int_reg[29]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\tdata_byte_count_int[29]_i_2_n_0 ,\tdata_byte_count_int[29]_i_3_n_0 ,\tdata_byte_count_int[29]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[30] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[29]_i_1_n_14 ),
        .Q(tdata_byte_count_int_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[31] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[29]_i_1_n_13 ),
        .Q(tdata_byte_count_int_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[6] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_14 ),
        .Q(tdata_byte_count_int_reg[6]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tdata_byte_count_int_reg[6]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\tdata_byte_count_int_reg[6]_i_2_n_0 ,\tdata_byte_count_int_reg[6]_i_2_n_1 ,\tdata_byte_count_int_reg[6]_i_2_n_2 ,\tdata_byte_count_int_reg[6]_i_2_n_3 ,\tdata_byte_count_int_reg[6]_i_2_n_4 ,\tdata_byte_count_int_reg[6]_i_2_n_5 ,\tdata_byte_count_int_reg[6]_i_2_n_6 ,\tdata_byte_count_int_reg[6]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tdata_byte_count_int[6]_i_4_n_0 ,1'b0}),
        .O({\tdata_byte_count_int_reg[6]_i_2_n_8 ,\tdata_byte_count_int_reg[6]_i_2_n_9 ,\tdata_byte_count_int_reg[6]_i_2_n_10 ,\tdata_byte_count_int_reg[6]_i_2_n_11 ,\tdata_byte_count_int_reg[6]_i_2_n_12 ,\tdata_byte_count_int_reg[6]_i_2_n_13 ,\tdata_byte_count_int_reg[6]_i_2_n_14 ,\NLW_tdata_byte_count_int_reg[6]_i_2_O_UNCONNECTED [0]}),
        .S({\tdata_byte_count_int[6]_i_5_n_0 ,\tdata_byte_count_int[6]_i_6_n_0 ,\tdata_byte_count_int[6]_i_7_n_0 ,\tdata_byte_count_int[6]_i_8_n_0 ,\tdata_byte_count_int[6]_i_9_n_0 ,\tdata_byte_count_int[6]_i_10_n_0 ,\tdata_byte_count_int[6]_i_11_n_0 ,1'b0}));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[7] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_13 ),
        .Q(tdata_byte_count_int_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[8] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_12 ),
        .Q(tdata_byte_count_int_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_byte_count_int_reg[9] 
       (.C(aclk),
        .CE(\tdata_byte_count_int[6]_i_1_n_0 ),
        .CLR(\tdata_byte_count_int[6]_i_3_n_0 ),
        .D(\tdata_byte_count_int_reg[6]_i_2_n_11 ),
        .Q(tdata_byte_count_int_reg[9]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[0]),
        .Q(tdata_byte_count_meta[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[10]),
        .Q(tdata_byte_count_meta[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[11]),
        .Q(tdata_byte_count_meta[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[12]),
        .Q(tdata_byte_count_meta[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[13]),
        .Q(tdata_byte_count_meta[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[14]),
        .Q(tdata_byte_count_meta[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[15]),
        .Q(tdata_byte_count_meta[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[16]),
        .Q(tdata_byte_count_meta[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[17]),
        .Q(tdata_byte_count_meta[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[18]),
        .Q(tdata_byte_count_meta[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[19]),
        .Q(tdata_byte_count_meta[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[1]),
        .Q(tdata_byte_count_meta[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[20]),
        .Q(tdata_byte_count_meta[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[21]),
        .Q(tdata_byte_count_meta[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[22]),
        .Q(tdata_byte_count_meta[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[23]),
        .Q(tdata_byte_count_meta[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[24]),
        .Q(tdata_byte_count_meta[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[25]),
        .Q(tdata_byte_count_meta[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[26]),
        .Q(tdata_byte_count_meta[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[27]),
        .Q(tdata_byte_count_meta[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[28]),
        .Q(tdata_byte_count_meta[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[29]),
        .Q(tdata_byte_count_meta[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[2]),
        .Q(tdata_byte_count_meta[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[30]),
        .Q(tdata_byte_count_meta[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[31]),
        .Q(tdata_byte_count_meta[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[3]),
        .Q(tdata_byte_count_meta[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[4]),
        .Q(tdata_byte_count_meta[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[5]),
        .Q(tdata_byte_count_meta[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[6]),
        .Q(tdata_byte_count_meta[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[7]),
        .Q(tdata_byte_count_meta[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[8]),
        .Q(tdata_byte_count_meta[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_meta_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count[9]),
        .Q(tdata_byte_count_meta[9]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[0] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[0]),
        .Q(tdata_byte_count_sync_d1[0]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[10] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[10]),
        .Q(tdata_byte_count_sync_d1[10]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[11] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[11]),
        .Q(tdata_byte_count_sync_d1[11]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[12] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[12]),
        .Q(tdata_byte_count_sync_d1[12]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[13] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[13]),
        .Q(tdata_byte_count_sync_d1[13]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[14] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[14]),
        .Q(tdata_byte_count_sync_d1[14]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[15] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[15]),
        .Q(tdata_byte_count_sync_d1[15]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[16] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[16]),
        .Q(tdata_byte_count_sync_d1[16]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[17] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[17]),
        .Q(tdata_byte_count_sync_d1[17]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[18] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[18]),
        .Q(tdata_byte_count_sync_d1[18]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[19] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[19]),
        .Q(tdata_byte_count_sync_d1[19]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[1] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[1]),
        .Q(tdata_byte_count_sync_d1[1]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[20] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[20]),
        .Q(tdata_byte_count_sync_d1[20]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[21] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[21]),
        .Q(tdata_byte_count_sync_d1[21]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[22] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[22]),
        .Q(tdata_byte_count_sync_d1[22]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[23] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[23]),
        .Q(tdata_byte_count_sync_d1[23]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[24] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[24]),
        .Q(tdata_byte_count_sync_d1[24]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[25] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[25]),
        .Q(tdata_byte_count_sync_d1[25]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[26] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[26]),
        .Q(tdata_byte_count_sync_d1[26]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[27] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[27]),
        .Q(tdata_byte_count_sync_d1[27]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[28] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[28]),
        .Q(tdata_byte_count_sync_d1[28]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[29] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[29]),
        .Q(tdata_byte_count_sync_d1[29]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[2] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[2]),
        .Q(tdata_byte_count_sync_d1[2]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[30] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[30]),
        .Q(tdata_byte_count_sync_d1[30]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[31] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[31]),
        .Q(tdata_byte_count_sync_d1[31]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[3] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[3]),
        .Q(tdata_byte_count_sync_d1[3]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[4] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[4]),
        .Q(tdata_byte_count_sync_d1[4]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[5] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[5]),
        .Q(tdata_byte_count_sync_d1[5]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[6] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[6]),
        .Q(tdata_byte_count_sync_d1[6]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[7] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[7]),
        .Q(tdata_byte_count_sync_d1[7]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[8] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[8]),
        .Q(tdata_byte_count_sync_d1[8]),
        .R(1'b0));
  FDRE \tdata_byte_count_sync_d1_reg[9] 
       (.C(aclk),
        .CE(tdata_byte_count_update_sync_re),
        .D(tdata_byte_count_sync[9]),
        .Q(tdata_byte_count_sync_d1[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[0]),
        .Q(tdata_byte_count_sync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[10]),
        .Q(tdata_byte_count_sync[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[11]),
        .Q(tdata_byte_count_sync[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[12]),
        .Q(tdata_byte_count_sync[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[13]),
        .Q(tdata_byte_count_sync[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[14]),
        .Q(tdata_byte_count_sync[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[15]),
        .Q(tdata_byte_count_sync[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[16]),
        .Q(tdata_byte_count_sync[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[17]),
        .Q(tdata_byte_count_sync[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[18]),
        .Q(tdata_byte_count_sync[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[19]),
        .Q(tdata_byte_count_sync[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[1]),
        .Q(tdata_byte_count_sync[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[20]),
        .Q(tdata_byte_count_sync[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[21]),
        .Q(tdata_byte_count_sync[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[22]),
        .Q(tdata_byte_count_sync[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[23]),
        .Q(tdata_byte_count_sync[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[24]),
        .Q(tdata_byte_count_sync[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[25]),
        .Q(tdata_byte_count_sync[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[26]),
        .Q(tdata_byte_count_sync[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[27]),
        .Q(tdata_byte_count_sync[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[28]),
        .Q(tdata_byte_count_sync[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[29]),
        .Q(tdata_byte_count_sync[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[2]),
        .Q(tdata_byte_count_sync[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[30]),
        .Q(tdata_byte_count_sync[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[31]),
        .Q(tdata_byte_count_sync[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[3]),
        .Q(tdata_byte_count_sync[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[4]),
        .Q(tdata_byte_count_sync[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[5]),
        .Q(tdata_byte_count_sync[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[6]),
        .Q(tdata_byte_count_sync[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[7]),
        .Q(tdata_byte_count_sync[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[8]),
        .Q(tdata_byte_count_sync[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tdata_byte_count_sync_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_meta[9]),
        .Q(tdata_byte_count_sync[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    tdata_byte_count_update_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_update),
        .Q(tdata_byte_count_update_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tdata_byte_count_update_sync_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_update_sync),
        .Q(tdata_byte_count_update_sync_d1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    tdata_byte_count_update_sync_re_i_1
       (.I0(tdata_byte_count_update_sync),
        .I1(tdata_byte_count_update_sync_d1),
        .O(tdata_byte_count_update_sync_re0));
  FDRE #(
    .INIT(1'b0)) 
    tdata_byte_count_update_sync_re_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_update_sync_re0),
        .Q(tdata_byte_count_update_sync_re),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    tdata_byte_count_update_sync_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tdata_byte_count_update_meta),
        .Q(tdata_byte_count_update_sync),
        .R(1'b0));
  rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI tlast_gen_v1_0_S00_AXI_inst
       (.Q(tdata_byte_count),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .in0(tdata_byte_count_update),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "tlast_gen_v1_0_S00_AXI" *) 
module rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    in0,
    s00_axi_rvalid,
    Q,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output in0;
  output s00_axi_rvalid;
  output [31:0]Q;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;

  wire [31:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire in0;
  wire p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire slv_reg0_update_i_1_n_0;
  wire slv_reg0_update_i_2_n_0;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(Q[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(Q[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(Q[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(Q[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(Q[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(Q[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(Q[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(Q[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(Q[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(Q[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(Q[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(Q[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(Q[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(Q[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(Q[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(Q[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(Q[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(Q[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(Q[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(Q[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(Q[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(Q[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(Q[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(Q[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(Q[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(Q[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(Q[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(Q[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(Q[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(Q[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(Q[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(Q[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(Q[31]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    slv_reg0_update_i_1
       (.I0(slv_reg0_update_i_2_n_0),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_aresetn),
        .O(slv_reg0_update_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    slv_reg0_update_i_2
       (.I0(s00_axi_wstrb[2]),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(slv_reg0_update_i_2_n_0));
  FDRE slv_reg0_update_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg0_update_i_1_n_0),
        .Q(in0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
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
