// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:15:32 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_clk_wiz_adc1_0/rfdc_ex_clk_wiz_adc1_0_sim_netlist.v
// Design      : rfdc_ex_clk_wiz_adc1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module rfdc_ex_clk_wiz_adc1_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1,
    locked,
    clk_in1);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output clk_out1;
  output locked;
  input clk_in1;

  wire \<const0> ;
  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_ADDR_WIDTH = "11" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  rfdc_ex_clk_wiz_adc1_0_axi_clk_config inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_inst_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_inst_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module rfdc_ex_clk_wiz_adc1_0_address_decoder
   (E,
    \bus2ip_addr_i_reg[9] ,
    \bus2ip_addr_i_reg[2] ,
    \bus2ip_addr_i_reg[2]_0 ,
    \bus2ip_addr_i_reg[2]_1 ,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[5] ,
    \bus2ip_addr_i_reg[4] ,
    \bus2ip_addr_i_reg[4]_0 ,
    \bus2ip_addr_i_reg[4]_1 ,
    \bus2ip_addr_i_reg[3]_0 ,
    \bus2ip_addr_i_reg[2]_2 ,
    \bus2ip_addr_i_reg[3]_1 ,
    \bus2ip_addr_i_reg[3]_2 ,
    \bus2ip_addr_i_reg[3]_3 ,
    \bus2ip_addr_i_reg[3]_4 ,
    \bus2ip_addr_i_reg[3]_5 ,
    \bus2ip_addr_i_reg[2]_3 ,
    \bus2ip_addr_i_reg[3]_6 ,
    \bus2ip_addr_i_reg[4]_2 ,
    \bus2ip_addr_i_reg[3]_7 ,
    \bus2ip_addr_i_reg[2]_4 ,
    \bus2ip_addr_i_reg[3]_8 ,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ,
    Bus_RNW_reg_reg_0,
    D,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \bus2ip_addr_i_reg[8] ,
    bus2ip_wrce,
    \bus2ip_addr_i_reg[5]_1 ,
    rdack_reg_10,
    rst_ip2bus_rdack0,
    bus2ip_rdce,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    reset_trig0,
    sw_rst_cond,
    dummy_local_reg_rdack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_wrack0,
    dummy_local_reg_wrack_d10,
    \bus2ip_addr_i_reg[3]_9 ,
    \bus2ip_addr_i_reg[2]_5 ,
    \bus2ip_addr_i_reg[2]_6 ,
    \bus2ip_addr_i_reg[4]_3 ,
    \bus2ip_addr_i_reg[3]_10 ,
    \bus2ip_addr_i_reg[6]_0 ,
    \bus2ip_addr_i_reg[3]_11 ,
    \bus2ip_addr_i_reg[4]_4 ,
    \bus2ip_addr_i_reg[5]_2 ,
    s_axi_wdata_0_sp_1,
    Q,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    ip2bus_wrack,
    ip2bus_rdack,
    s_axi_aresetn,
    \clkout0_reg_reg[14] ,
    \clkout0_reg_reg[14]_0 ,
    \interrupt_enable_reg_reg[15] ,
    \clkfbout_reg_reg[6] ,
    \clkfbout_reg_reg[6]_0 ,
    \ram_clk_config_reg[31][31] ,
    \ram_clk_config_reg[27][31] ,
    \ram_clk_config_reg[26][31] ,
    \ram_clk_config_reg[17][31] ,
    \ram_clk_config_reg[0][31] ,
    \load_enable_reg_reg[0] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[15]_0 ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[1] ,
    SRDY,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[6]_0 ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[13]_0 ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[17]_0 ,
    \s_axi_rdata_i_reg[18]_0 ,
    \s_axi_rdata_i_reg[18]_1 ,
    config_reg,
    load_enable_reg_d_reg,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[0]_1 ,
    \s_axi_rdata_i_reg[0]_2 ,
    \s_axi_rdata_i_reg[15]_1 ,
    \s_axi_rdata_i_reg[15]_2 ,
    \s_axi_rdata_i_reg[15]_3 ,
    rst_ip2bus_rdack_d1,
    ip2bus_error_reg,
    ip2bus_wrack_reg,
    dummy_local_reg_wrack,
    wrack,
    IP2Bus_WrAck,
    sw_rst_cond_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    s_axi_wstrb,
    s_axi_wdata);
  output [0:0]E;
  output [0:0]\bus2ip_addr_i_reg[9] ;
  output [0:0]\bus2ip_addr_i_reg[2] ;
  output [0:0]\bus2ip_addr_i_reg[2]_0 ;
  output [0:0]\bus2ip_addr_i_reg[2]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3] ;
  output [0:0]\bus2ip_addr_i_reg[5] ;
  output [0:0]\bus2ip_addr_i_reg[4] ;
  output [0:0]\bus2ip_addr_i_reg[4]_0 ;
  output [0:0]\bus2ip_addr_i_reg[4]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3]_0 ;
  output [0:0]\bus2ip_addr_i_reg[2]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_5 ;
  output [0:0]\bus2ip_addr_i_reg[2]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_6 ;
  output [0:0]\bus2ip_addr_i_reg[4]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_7 ;
  output [0:0]\bus2ip_addr_i_reg[2]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_8 ;
  output [0:0]\bus2ip_addr_i_reg[5]_0 ;
  output [0:0]\bus2ip_addr_i_reg[6] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ;
  output [0:0]Bus_RNW_reg_reg_0;
  output [17:0]D;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output \bus2ip_addr_i_reg[8] ;
  output [0:0]bus2ip_wrce;
  output \bus2ip_addr_i_reg[5]_1 ;
  output rdack_reg_10;
  output rst_ip2bus_rdack0;
  output [0:0]bus2ip_rdce;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output reset_trig0;
  output sw_rst_cond;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_wrack0;
  output dummy_local_reg_wrack_d10;
  output [0:0]\bus2ip_addr_i_reg[3]_9 ;
  output [0:0]\bus2ip_addr_i_reg[2]_5 ;
  output [0:0]\bus2ip_addr_i_reg[2]_6 ;
  output [0:0]\bus2ip_addr_i_reg[4]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_10 ;
  output [0:0]\bus2ip_addr_i_reg[6]_0 ;
  output [0:0]\bus2ip_addr_i_reg[3]_11 ;
  output [0:0]\bus2ip_addr_i_reg[4]_4 ;
  output [0:0]\bus2ip_addr_i_reg[5]_2 ;
  output s_axi_wdata_0_sp_1;
  input Q;
  input s_axi_aclk;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input ip2bus_wrack;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input \clkout0_reg_reg[14] ;
  input \clkout0_reg_reg[14]_0 ;
  input [8:0]\interrupt_enable_reg_reg[15] ;
  input \clkfbout_reg_reg[6] ;
  input \clkfbout_reg_reg[6]_0 ;
  input \ram_clk_config_reg[31][31] ;
  input \ram_clk_config_reg[27][31] ;
  input \ram_clk_config_reg[26][31] ;
  input \ram_clk_config_reg[17][31] ;
  input \ram_clk_config_reg[0][31] ;
  input \load_enable_reg_reg[0] ;
  input [15:0]\s_axi_rdata_i_reg[15] ;
  input [16:0]\s_axi_rdata_i_reg[18] ;
  input \s_axi_rdata_i_reg[15]_0 ;
  input \s_axi_rdata_i_reg[14] ;
  input \s_axi_rdata_i_reg[12] ;
  input \s_axi_rdata_i_reg[11] ;
  input \s_axi_rdata_i_reg[10] ;
  input \s_axi_rdata_i_reg[9] ;
  input \s_axi_rdata_i_reg[8] ;
  input \s_axi_rdata_i_reg[7] ;
  input \s_axi_rdata_i_reg[5] ;
  input \s_axi_rdata_i_reg[4] ;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[2] ;
  input \s_axi_rdata_i_reg[1] ;
  input SRDY;
  input \s_axi_rdata_i_reg[6] ;
  input \s_axi_rdata_i_reg[6]_0 ;
  input \s_axi_rdata_i_reg[13] ;
  input \s_axi_rdata_i_reg[13]_0 ;
  input \s_axi_rdata_i_reg[17] ;
  input \s_axi_rdata_i_reg[17]_0 ;
  input \s_axi_rdata_i_reg[18]_0 ;
  input \s_axi_rdata_i_reg[18]_1 ;
  input [0:0]config_reg;
  input load_enable_reg_d_reg;
  input \s_axi_rdata_i_reg[0] ;
  input \s_axi_rdata_i_reg[0]_0 ;
  input \s_axi_rdata_i_reg[0]_1 ;
  input \s_axi_rdata_i_reg[0]_2 ;
  input \s_axi_rdata_i_reg[15]_1 ;
  input \s_axi_rdata_i_reg[15]_2 ;
  input \s_axi_rdata_i_reg[15]_3 ;
  input rst_ip2bus_rdack_d1;
  input ip2bus_error_reg;
  input ip2bus_wrack_reg;
  input dummy_local_reg_wrack;
  input wrack;
  input IP2Bus_WrAck;
  input sw_rst_cond_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [0:0]Bus_RNW_reg_reg_0;
  wire [17:0]D;
  wire [0:0]E;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ;
  wire IP2Bus_WrAck;
  wire Q;
  wire SRDY;
  wire [0:0]\bus2ip_addr_i_reg[2] ;
  wire [0:0]\bus2ip_addr_i_reg[2]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_6 ;
  wire [0:0]\bus2ip_addr_i_reg[3] ;
  wire [0:0]\bus2ip_addr_i_reg[3]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_10 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_11 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_6 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_7 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_8 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_9 ;
  wire [0:0]\bus2ip_addr_i_reg[4] ;
  wire [0:0]\bus2ip_addr_i_reg[4]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[5] ;
  wire [0:0]\bus2ip_addr_i_reg[5]_0 ;
  wire \bus2ip_addr_i_reg[5]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[5]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[6] ;
  wire [0:0]\bus2ip_addr_i_reg[6]_0 ;
  wire \bus2ip_addr_i_reg[8] ;
  wire [0:0]\bus2ip_addr_i_reg[9] ;
  wire [0:0]bus2ip_rdce;
  wire [0:0]bus2ip_wrce;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire \clkfbout_reg[6]_i_4_n_0 ;
  wire \clkfbout_reg_reg[6] ;
  wire \clkfbout_reg_reg[6]_0 ;
  wire \clkout0_reg_reg[14] ;
  wire \clkout0_reg_reg[14]_0 ;
  wire [0:0]config_reg;
  wire cs_ce_clr;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire \interrupt_enable_reg[15]_i_2_n_0 ;
  wire [8:0]\interrupt_enable_reg_reg[15] ;
  wire ip2bus_error_i_2_n_0;
  wire ip2bus_error_i_3_n_0;
  wire ip2bus_error_int1;
  wire ip2bus_error_reg;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ip2bus_wrack_reg;
  wire load_enable_reg_d_reg;
  wire \load_enable_reg_reg[0] ;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire \ram_clk_config[16][31]_i_2_n_0 ;
  wire \ram_clk_config[1][31]_i_3_n_0 ;
  wire \ram_clk_config[24][31]_i_2_n_0 ;
  wire \ram_clk_config[9][31]_i_2_n_0 ;
  wire \ram_clk_config_reg[0][31] ;
  wire \ram_clk_config_reg[17][31] ;
  wire \ram_clk_config_reg[26][31] ;
  wire \ram_clk_config_reg[27][31] ;
  wire \ram_clk_config_reg[31][31] ;
  wire rdack_reg_10;
  wire reset_trig0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \s_axi_rdata_i[0]_i_11_n_0 ;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[0]_i_4_n_0 ;
  wire \s_axi_rdata_i[0]_i_5_n_0 ;
  wire \s_axi_rdata_i[13]_i_2_n_0 ;
  wire \s_axi_rdata_i[15]_i_10_n_0 ;
  wire \s_axi_rdata_i[15]_i_2_n_0 ;
  wire \s_axi_rdata_i[15]_i_4_n_0 ;
  wire \s_axi_rdata_i[15]_i_5_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[31]_i_10_n_0 ;
  wire \s_axi_rdata_i[31]_i_11_n_0 ;
  wire \s_axi_rdata_i[31]_i_12_n_0 ;
  wire \s_axi_rdata_i[31]_i_13_n_0 ;
  wire \s_axi_rdata_i[31]_i_14_n_0 ;
  wire \s_axi_rdata_i[31]_i_8_n_0 ;
  wire \s_axi_rdata_i[31]_i_9_n_0 ;
  wire \s_axi_rdata_i[6]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[0]_1 ;
  wire \s_axi_rdata_i_reg[0]_2 ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[13]_0 ;
  wire \s_axi_rdata_i_reg[14] ;
  wire [15:0]\s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[15]_0 ;
  wire \s_axi_rdata_i_reg[15]_1 ;
  wire \s_axi_rdata_i_reg[15]_2 ;
  wire \s_axi_rdata_i_reg[15]_3 ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[17]_0 ;
  wire [16:0]\s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[18]_0 ;
  wire \s_axi_rdata_i_reg[18]_1 ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire [0:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire [3:0]s_axi_wstrb;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(ip2bus_error_reg),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(ce_expnd_i_8));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [2]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [1]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0 ),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(ce_expnd_i_5));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(ce_expnd_i_4));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [0]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [2]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 
       (.I0(\interrupt_enable_reg_reg[15] [5]),
        .I1(\interrupt_enable_reg_reg[15] [8]),
        .I2(\bus2ip_addr_i_reg[5]_1 ),
        .I3(\interrupt_enable_reg_reg[15] [7]),
        .I4(\interrupt_enable_reg_reg[15] [6]),
        .I5(Q),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ),
        .Q(p_1_in),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(ip2bus_wrack),
        .I2(ip2bus_rdack),
        .I3(s_axi_aresetn),
        .O(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(1'b1),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h00040000)) 
    \clkfbout_reg[6]_i_1 
       (.I0(\clkfbout_reg_reg[6] ),
        .I1(\interrupt_enable_reg_reg[15] [7]),
        .I2(\clkfbout_reg_reg[6]_0 ),
        .I3(\clkout0_reg_reg[14] ),
        .I4(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\bus2ip_addr_i_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \clkfbout_reg[6]_i_4 
       (.I0(\interrupt_enable_reg[15]_i_2_n_0 ),
        .I1(p_4_in),
        .I2(\interrupt_enable_reg_reg[15] [8]),
        .O(\clkfbout_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \clkout0_reg[14]_i_1 
       (.I0(\clkout0_reg_reg[14] ),
        .I1(\clkfbout_reg[6]_i_4_n_0 ),
        .I2(\clkout0_reg_reg[14]_0 ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .I4(\interrupt_enable_reg_reg[15] [1]),
        .I5(\interrupt_enable_reg_reg[15] [2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    dummy_local_reg_rdack_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(p_3_in),
        .I2(p_2_in),
        .I3(p_1_in),
        .O(dummy_local_reg_rdack_d10));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    dummy_local_reg_rdack_i_1
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(p_3_in),
        .I3(Bus_RNW_reg),
        .I4(dummy_local_reg_rdack_d1),
        .O(dummy_local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    dummy_local_reg_wrack_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(p_3_in),
        .I2(p_2_in),
        .I3(p_1_in),
        .O(dummy_local_reg_wrack_d10));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    dummy_local_reg_wrack_i_1
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(p_3_in),
        .I3(Bus_RNW_reg),
        .I4(dummy_local_reg_wrack_d1),
        .O(dummy_local_reg_wrack0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \interrupt_enable_reg[15]_i_1 
       (.I0(\interrupt_enable_reg[15]_i_2_n_0 ),
        .I1(Bus_RNW_reg),
        .I2(p_4_in),
        .I3(\interrupt_enable_reg_reg[15] [8]),
        .I4(\interrupt_enable_reg_reg[15] [6]),
        .O(Bus_RNW_reg_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \interrupt_enable_reg[15]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .I2(\interrupt_enable_reg_reg[15] [5]),
        .I3(p_5_in),
        .I4(p_7_in),
        .I5(p_6_in),
        .O(\interrupt_enable_reg[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAAAA)) 
    ip2bus_error_i_1
       (.I0(ip2bus_error_i_2_n_0),
        .I1(ip2bus_error_reg),
        .I2(ip2bus_rdack),
        .I3(ip2bus_wrack),
        .I4(ip2bus_error_i_3_n_0),
        .O(ip2bus_error_int1));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ip2bus_error_i_2
       (.I0(Bus_RNW_reg),
        .I1(p_8_in),
        .I2(ip2bus_wrack_reg),
        .O(ip2bus_error_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ip2bus_error_i_3
       (.I0(s_axi_wstrb[2]),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_wstrb[3]),
        .I3(s_axi_wstrb[1]),
        .O(ip2bus_error_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    ip2bus_wrack_i_1
       (.I0(ip2bus_wrack_reg),
        .I1(p_8_in),
        .I2(Bus_RNW_reg),
        .I3(dummy_local_reg_wrack),
        .I4(wrack),
        .I5(IP2Bus_WrAck),
        .O(ip2bus_wrack_int1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_enable_reg[0]_i_1 
       (.I0(\clkfbout_reg[6]_i_4_n_0 ),
        .I1(\load_enable_reg_reg[0] ),
        .O(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    load_enable_reg_d_i_1
       (.I0(\clkfbout_reg[6]_i_4_n_0 ),
        .I1(\load_enable_reg_reg[0] ),
        .I2(s_axi_wdata),
        .I3(load_enable_reg_d_reg),
        .O(s_axi_wdata_0_sn_1));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \ram_clk_config[0][31]_i_1 
       (.I0(\clkfbout_reg_reg[6]_0 ),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .I2(\interrupt_enable_reg_reg[15] [3]),
        .I3(\ram_clk_config_reg[26][31] ),
        .I4(\clkfbout_reg[6]_i_4_n_0 ),
        .I5(\ram_clk_config_reg[0][31] ),
        .O(\bus2ip_addr_i_reg[6] ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \ram_clk_config[10][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [0]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [3]),
        .I5(\interrupt_enable_reg_reg[15] [4]),
        .O(\bus2ip_addr_i_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \ram_clk_config[11][31]_i_1 
       (.I0(\ram_clk_config[9][31]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\ram_clk_config_reg[17][31] ),
        .I3(\ram_clk_config_reg[26][31] ),
        .I4(\interrupt_enable_reg_reg[15] [2]),
        .O(\bus2ip_addr_i_reg[3]_5 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \ram_clk_config[12][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\interrupt_enable_reg_reg[15] [3]),
        .O(\bus2ip_addr_i_reg[3]_10 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \ram_clk_config[13][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\interrupt_enable_reg_reg[15] [3]),
        .O(\bus2ip_addr_i_reg[3]_6 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \ram_clk_config[14][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [0]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [1]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\interrupt_enable_reg_reg[15] [3]),
        .O(\bus2ip_addr_i_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \ram_clk_config[15][31]_i_1 
       (.I0(\clkfbout_reg[6]_i_4_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .I2(\interrupt_enable_reg_reg[15] [3]),
        .I3(\interrupt_enable_reg_reg[15] [1]),
        .I4(\ram_clk_config_reg[17][31] ),
        .I5(\interrupt_enable_reg_reg[15] [2]),
        .O(\bus2ip_addr_i_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ram_clk_config[16][31]_i_1 
       (.I0(\ram_clk_config[16][31]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(\bus2ip_addr_i_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ram_clk_config[16][31]_i_2 
       (.I0(\clkfbout_reg[6]_i_4_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .I2(\interrupt_enable_reg_reg[15] [3]),
        .O(\ram_clk_config[16][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ram_clk_config[17][31]_i_1 
       (.I0(\ram_clk_config_reg[17][31] ),
        .I1(\ram_clk_config[16][31]_i_2_n_0 ),
        .I2(\interrupt_enable_reg_reg[15] [1]),
        .I3(\interrupt_enable_reg_reg[15] [2]),
        .O(\bus2ip_addr_i_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ram_clk_config[18][31]_i_1 
       (.I0(\ram_clk_config[16][31]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [1]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(\bus2ip_addr_i_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[19][31]_i_1 
       (.I0(\ram_clk_config_reg[27][31] ),
        .I1(\ram_clk_config[16][31]_i_2_n_0 ),
        .O(\bus2ip_addr_i_reg[2]_5 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \ram_clk_config[1][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [2]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\ram_clk_config_reg[31][31] ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .I4(\ram_clk_config[1][31]_i_3_n_0 ),
        .O(\bus2ip_addr_i_reg[4]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ram_clk_config[1][31]_i_3 
       (.I0(\clkfbout_reg[6]_i_4_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .I2(\interrupt_enable_reg_reg[15] [3]),
        .O(\ram_clk_config[1][31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ram_clk_config[20][31]_i_1 
       (.I0(\ram_clk_config[16][31]_i_2_n_0 ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .O(\bus2ip_addr_i_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ram_clk_config[21][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\ram_clk_config[16][31]_i_2_n_0 ),
        .O(\bus2ip_addr_i_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \ram_clk_config[22][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [0]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\ram_clk_config[16][31]_i_2_n_0 ),
        .I3(\interrupt_enable_reg_reg[15] [1]),
        .I4(\ram_clk_config_reg[31][31] ),
        .O(\bus2ip_addr_i_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \ram_clk_config[23][31]_i_1 
       (.I0(\ram_clk_config_reg[31][31] ),
        .I1(\interrupt_enable_reg_reg[15] [0]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [1]),
        .I4(\ram_clk_config[16][31]_i_2_n_0 ),
        .O(\bus2ip_addr_i_reg[2]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ram_clk_config[24][31]_i_1 
       (.I0(\ram_clk_config_reg[31][31] ),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\ram_clk_config[24][31]_i_2_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [0]),
        .O(\bus2ip_addr_i_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ram_clk_config[24][31]_i_2 
       (.I0(\interrupt_enable_reg_reg[15] [4]),
        .I1(\interrupt_enable_reg_reg[15] [3]),
        .I2(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\ram_clk_config[24][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ram_clk_config[25][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [2]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\ram_clk_config_reg[31][31] ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .I4(\ram_clk_config[24][31]_i_2_n_0 ),
        .O(\bus2ip_addr_i_reg[4] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ram_clk_config[26][31]_i_1 
       (.I0(\ram_clk_config_reg[26][31] ),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\ram_clk_config[24][31]_i_2_n_0 ),
        .I4(\ram_clk_config_reg[31][31] ),
        .I5(\interrupt_enable_reg_reg[15] [1]),
        .O(\bus2ip_addr_i_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ram_clk_config[27][31]_i_1 
       (.I0(\ram_clk_config_reg[27][31] ),
        .I1(\clkfbout_reg[6]_i_4_n_0 ),
        .I2(\interrupt_enable_reg_reg[15] [3]),
        .I3(\interrupt_enable_reg_reg[15] [4]),
        .O(\bus2ip_addr_i_reg[5] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \ram_clk_config[28][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [3]),
        .I5(\interrupt_enable_reg_reg[15] [4]),
        .O(\bus2ip_addr_i_reg[3]_9 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \ram_clk_config[29][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [3]),
        .I5(\interrupt_enable_reg_reg[15] [4]),
        .O(\bus2ip_addr_i_reg[3] ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \ram_clk_config[2][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [0]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\interrupt_enable_reg_reg[15] [3]),
        .O(\bus2ip_addr_i_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \ram_clk_config[30][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [2]),
        .I1(\interrupt_enable_reg_reg[15] [0]),
        .I2(\ram_clk_config[24][31]_i_2_n_0 ),
        .I3(\ram_clk_config_reg[31][31] ),
        .I4(\interrupt_enable_reg_reg[15] [1]),
        .O(\bus2ip_addr_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \ram_clk_config[31][31]_i_1 
       (.I0(\ram_clk_config_reg[31][31] ),
        .I1(\interrupt_enable_reg_reg[15] [0]),
        .I2(\interrupt_enable_reg_reg[15] [2]),
        .I3(\interrupt_enable_reg_reg[15] [1]),
        .I4(\ram_clk_config[24][31]_i_2_n_0 ),
        .O(\bus2ip_addr_i_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \ram_clk_config[3][31]_i_1 
       (.I0(\ram_clk_config_reg[27][31] ),
        .I1(\interrupt_enable_reg_reg[15] [3]),
        .I2(\interrupt_enable_reg_reg[15] [4]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_2 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \ram_clk_config[4][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [3]),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .I2(\clkfbout_reg[6]_i_4_n_0 ),
        .I3(\interrupt_enable_reg_reg[15] [1]),
        .I4(\interrupt_enable_reg_reg[15] [2]),
        .I5(\interrupt_enable_reg_reg[15] [0]),
        .O(\bus2ip_addr_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \ram_clk_config[5][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\interrupt_enable_reg_reg[15] [3]),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\bus2ip_addr_i_reg[3]_8 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \ram_clk_config[6][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [0]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [1]),
        .I3(\interrupt_enable_reg_reg[15] [3]),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\bus2ip_addr_i_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ram_clk_config[7][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\interrupt_enable_reg_reg[15] [3]),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\bus2ip_addr_i_reg[3]_7 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \ram_clk_config[8][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [1]),
        .I1(\interrupt_enable_reg_reg[15] [2]),
        .I2(\interrupt_enable_reg_reg[15] [0]),
        .I3(\clkfbout_reg[6]_i_4_n_0 ),
        .I4(\interrupt_enable_reg_reg[15] [4]),
        .I5(\interrupt_enable_reg_reg[15] [3]),
        .O(\bus2ip_addr_i_reg[3]_11 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ram_clk_config[9][31]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [2]),
        .I1(\interrupt_enable_reg_reg[15] [1]),
        .I2(\ram_clk_config_reg[31][31] ),
        .I3(\interrupt_enable_reg_reg[15] [0]),
        .I4(\ram_clk_config[9][31]_i_2_n_0 ),
        .O(\bus2ip_addr_i_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \ram_clk_config[9][31]_i_2 
       (.I0(\interrupt_enable_reg_reg[15] [3]),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .I2(\clkfbout_reg[6]_i_4_n_0 ),
        .O(\ram_clk_config[9][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    rdack_reg_1_i_1
       (.I0(p_8_in),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .I2(Bus_RNW_reg),
        .O(rdack_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reset_trig_i_1
       (.I0(ip2bus_wrack_reg),
        .I1(p_8_in),
        .I2(Bus_RNW_reg),
        .I3(sw_rst_cond_d1),
        .O(reset_trig0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rst_ip2bus_rdack_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(p_8_in),
        .O(bus2ip_rdce));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rst_ip2bus_rdack_i_1
       (.I0(p_8_in),
        .I1(Bus_RNW_reg),
        .I2(rst_ip2bus_rdack_d1),
        .O(rst_ip2bus_rdack0));
  LUT6 #(
    .INIT(64'h44444444FFFF444F)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [0]),
        .I2(\s_axi_rdata_i[0]_i_2_n_0 ),
        .I3(\s_axi_rdata_i[0]_i_3_n_0 ),
        .I4(\s_axi_rdata_i[0]_i_4_n_0 ),
        .I5(\s_axi_rdata_i[0]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \s_axi_rdata_i[0]_i_11 
       (.I0(p_5_in),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .I3(\interrupt_enable_reg_reg[15] [5]),
        .I4(\interrupt_enable_reg_reg[15] [8]),
        .O(\s_axi_rdata_i[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\s_axi_rdata_i[15]_i_5_n_0 ),
        .I1(config_reg),
        .I2(\bus2ip_addr_i_reg[8] ),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004044)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\s_axi_rdata_i_reg[0] ),
        .I1(\s_axi_rdata_i_reg[0]_0 ),
        .I2(\bus2ip_addr_i_reg[5]_1 ),
        .I3(\s_axi_rdata_i_reg[0]_1 ),
        .I4(\s_axi_rdata_i_reg[0]_2 ),
        .I5(\bus2ip_addr_i_reg[8] ),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_rdata_i[0]_i_4 
       (.I0(\s_axi_rdata_i[15]_i_5_n_0 ),
        .I1(load_enable_reg_d_reg),
        .I2(\s_axi_rdata_i[15]_i_4_n_0 ),
        .O(\s_axi_rdata_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFECCFECCFCCC)) 
    \s_axi_rdata_i[0]_i_5 
       (.I0(\interrupt_enable_reg_reg[15] [6]),
        .I1(\s_axi_rdata_i[0]_i_11_n_0 ),
        .I2(p_4_in),
        .I3(Bus_RNW_reg),
        .I4(p_6_in),
        .I5(p_7_in),
        .O(\s_axi_rdata_i[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[0]_i_8 
       (.I0(\interrupt_enable_reg_reg[15] [3]),
        .I1(\interrupt_enable_reg_reg[15] [4]),
        .O(\bus2ip_addr_i_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [10]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [9]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[10] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [11]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [10]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[11] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [12]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [11]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[12] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [13]),
        .I2(\s_axi_rdata_i[13]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h00000000FFE400E4)) 
    \s_axi_rdata_i[13]_i_2 
       (.I0(\interrupt_enable_reg_reg[15] [4]),
        .I1(\s_axi_rdata_i_reg[13] ),
        .I2(\s_axi_rdata_i_reg[13]_0 ),
        .I3(\bus2ip_addr_i_reg[8] ),
        .I4(\s_axi_rdata_i_reg[18] [12]),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .O(\s_axi_rdata_i[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [14]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [13]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[14] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [15]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [14]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[15]_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \s_axi_rdata_i[15]_i_10 
       (.I0(Bus_RNW_reg),
        .I1(p_6_in),
        .I2(p_7_in),
        .O(\s_axi_rdata_i[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \s_axi_rdata_i[15]_i_2 
       (.I0(\s_axi_rdata_i[15]_i_4_n_0 ),
        .I1(\s_axi_rdata_i[15]_i_5_n_0 ),
        .I2(\s_axi_rdata_i[0]_i_5_n_0 ),
        .O(\s_axi_rdata_i[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h222A0880)) 
    \s_axi_rdata_i[15]_i_4 
       (.I0(\s_axi_rdata_i[31]_i_13_n_0 ),
        .I1(Bus_RNW_reg),
        .I2(p_6_in),
        .I3(p_4_in),
        .I4(\interrupt_enable_reg_reg[15] [6]),
        .O(\s_axi_rdata_i[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCECECCC)) 
    \s_axi_rdata_i[15]_i_5 
       (.I0(\interrupt_enable_reg_reg[15] [6]),
        .I1(\s_axi_rdata_i[15]_i_10_n_0 ),
        .I2(Bus_RNW_reg),
        .I3(p_4_in),
        .I4(p_5_in),
        .I5(\s_axi_rdata_i[31]_i_11_n_0 ),
        .O(\s_axi_rdata_i[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\s_axi_rdata_i_reg[17] ),
        .I1(\s_axi_rdata_i_reg[17]_0 ),
        .I2(\bus2ip_addr_i_reg[8] ),
        .I3(\s_axi_rdata_i_reg[18] [15]),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h00000000FFD800D8)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\interrupt_enable_reg_reg[15] [4]),
        .I1(\s_axi_rdata_i_reg[18]_0 ),
        .I2(\s_axi_rdata_i_reg[18]_1 ),
        .I3(\bus2ip_addr_i_reg[8] ),
        .I4(\s_axi_rdata_i_reg[18] [16]),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hA888AA8A)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[1]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I2(\bus2ip_addr_i_reg[8] ),
        .I3(\s_axi_rdata_i_reg[18] [0]),
        .I4(\s_axi_rdata_i_reg[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00C00AFF)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(SRDY),
        .I1(\s_axi_rdata_i_reg[15] [1]),
        .I2(\s_axi_rdata_i[15]_i_4_n_0 ),
        .I3(\s_axi_rdata_i[15]_i_5_n_0 ),
        .I4(\s_axi_rdata_i[0]_i_5_n_0 ),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [1]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hC888)) 
    \s_axi_rdata_i[31]_i_10 
       (.I0(p_4_in),
        .I1(Bus_RNW_reg),
        .I2(p_6_in),
        .I3(p_7_in),
        .O(\s_axi_rdata_i[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \s_axi_rdata_i[31]_i_11 
       (.I0(\interrupt_enable_reg_reg[15] [8]),
        .I1(\interrupt_enable_reg_reg[15] [5]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .I3(Bus_RNW_reg),
        .O(\s_axi_rdata_i[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \s_axi_rdata_i[31]_i_12 
       (.I0(p_7_in),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\interrupt_enable_reg_reg[15] [6]),
        .O(\s_axi_rdata_i[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \s_axi_rdata_i[31]_i_13 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .I1(\interrupt_enable_reg_reg[15] [5]),
        .I2(\interrupt_enable_reg_reg[15] [8]),
        .I3(Bus_RNW_reg),
        .I4(p_5_in),
        .I5(p_7_in),
        .O(\s_axi_rdata_i[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE955)) 
    \s_axi_rdata_i[31]_i_14 
       (.I0(\interrupt_enable_reg_reg[15] [6]),
        .I1(p_4_in),
        .I2(p_6_in),
        .I3(Bus_RNW_reg),
        .O(\s_axi_rdata_i[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(\s_axi_rdata_i[31]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[31]_i_9_n_0 ),
        .I2(\s_axi_rdata_i[31]_i_10_n_0 ),
        .I3(\s_axi_rdata_i[31]_i_11_n_0 ),
        .I4(p_5_in),
        .I5(\s_axi_rdata_i[31]_i_12_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h00000000000020D0)) 
    \s_axi_rdata_i[31]_i_4 
       (.I0(\s_axi_rdata_i[31]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[31]_i_14_n_0 ),
        .I2(\s_axi_rdata_i_reg[15]_1 ),
        .I3(\interrupt_enable_reg_reg[15] [6]),
        .I4(\s_axi_rdata_i_reg[15]_2 ),
        .I5(\s_axi_rdata_i_reg[15]_3 ),
        .O(\bus2ip_addr_i_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0E0E0E0)) 
    \s_axi_rdata_i[31]_i_8 
       (.I0(p_7_in),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(p_4_in),
        .I4(p_5_in),
        .O(\s_axi_rdata_i[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \s_axi_rdata_i[31]_i_9 
       (.I0(\interrupt_enable_reg_reg[15] [6]),
        .I1(Bus_RNW_reg),
        .I2(p_4_in),
        .I3(p_5_in),
        .O(\s_axi_rdata_i[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [2]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [3]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [5]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [4]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [6]),
        .I2(\s_axi_rdata_i[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000000FF4E004E)) 
    \s_axi_rdata_i[6]_i_2 
       (.I0(\interrupt_enable_reg_reg[15] [4]),
        .I1(\s_axi_rdata_i_reg[6] ),
        .I2(\s_axi_rdata_i_reg[6]_0 ),
        .I3(\bus2ip_addr_i_reg[8] ),
        .I4(\s_axi_rdata_i_reg[18] [5]),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .O(\s_axi_rdata_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [7]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [6]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [8]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [7]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[8] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\s_axi_rdata_i[15]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[15] [9]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(\s_axi_rdata_i_reg[18] [8]),
        .I4(\bus2ip_addr_i_reg[8] ),
        .I5(\s_axi_rdata_i_reg[9] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sw_rst_cond_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(p_8_in),
        .I2(ip2bus_wrack_reg),
        .O(sw_rst_cond));
  LUT2 #(
    .INIT(4'h2)) 
    wrack_reg_1_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg_n_0_[8] ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce));
endmodule

(* C_S_AXI_ADDR_WIDTH = "11" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
module rfdc_ex_clk_wiz_adc1_0_axi_clk_config
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1,
    locked,
    clk_in1);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output clk_out1;
  output locked;
  input clk_in1;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_100;
  wire AXI_LITE_IPIF_I_n_101;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_19;
  wire AXI_LITE_IPIF_I_n_20;
  wire AXI_LITE_IPIF_I_n_21;
  wire AXI_LITE_IPIF_I_n_22;
  wire AXI_LITE_IPIF_I_n_23;
  wire AXI_LITE_IPIF_I_n_24;
  wire AXI_LITE_IPIF_I_n_25;
  wire AXI_LITE_IPIF_I_n_26;
  wire AXI_LITE_IPIF_I_n_27;
  wire AXI_LITE_IPIF_I_n_28;
  wire AXI_LITE_IPIF_I_n_29;
  wire AXI_LITE_IPIF_I_n_30;
  wire AXI_LITE_IPIF_I_n_31;
  wire AXI_LITE_IPIF_I_n_32;
  wire AXI_LITE_IPIF_I_n_33;
  wire AXI_LITE_IPIF_I_n_34;
  wire AXI_LITE_IPIF_I_n_35;
  wire AXI_LITE_IPIF_I_n_36;
  wire AXI_LITE_IPIF_I_n_37;
  wire AXI_LITE_IPIF_I_n_38;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_40;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_43;
  wire AXI_LITE_IPIF_I_n_44;
  wire AXI_LITE_IPIF_I_n_45;
  wire AXI_LITE_IPIF_I_n_46;
  wire AXI_LITE_IPIF_I_n_47;
  wire AXI_LITE_IPIF_I_n_48;
  wire AXI_LITE_IPIF_I_n_49;
  wire AXI_LITE_IPIF_I_n_50;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_52;
  wire AXI_LITE_IPIF_I_n_53;
  wire AXI_LITE_IPIF_I_n_54;
  wire AXI_LITE_IPIF_I_n_55;
  wire AXI_LITE_IPIF_I_n_56;
  wire AXI_LITE_IPIF_I_n_57;
  wire AXI_LITE_IPIF_I_n_58;
  wire AXI_LITE_IPIF_I_n_59;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_60;
  wire AXI_LITE_IPIF_I_n_61;
  wire AXI_LITE_IPIF_I_n_62;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_65;
  wire AXI_LITE_IPIF_I_n_66;
  wire AXI_LITE_IPIF_I_n_67;
  wire AXI_LITE_IPIF_I_n_68;
  wire AXI_LITE_IPIF_I_n_69;
  wire AXI_LITE_IPIF_I_n_70;
  wire AXI_LITE_IPIF_I_n_71;
  wire AXI_LITE_IPIF_I_n_72;
  wire AXI_LITE_IPIF_I_n_73;
  wire AXI_LITE_IPIF_I_n_74;
  wire AXI_LITE_IPIF_I_n_75;
  wire AXI_LITE_IPIF_I_n_76;
  wire AXI_LITE_IPIF_I_n_77;
  wire AXI_LITE_IPIF_I_n_78;
  wire AXI_LITE_IPIF_I_n_79;
  wire AXI_LITE_IPIF_I_n_80;
  wire AXI_LITE_IPIF_I_n_92;
  wire AXI_LITE_IPIF_I_n_93;
  wire AXI_LITE_IPIF_I_n_94;
  wire AXI_LITE_IPIF_I_n_95;
  wire AXI_LITE_IPIF_I_n_96;
  wire AXI_LITE_IPIF_I_n_97;
  wire AXI_LITE_IPIF_I_n_98;
  wire AXI_LITE_IPIF_I_n_99;
  wire CLK_CORE_DRP_I_n_107;
  wire CLK_CORE_DRP_I_n_36;
  wire CLK_CORE_DRP_I_n_37;
  wire CLK_CORE_DRP_I_n_38;
  wire CLK_CORE_DRP_I_n_39;
  wire CLK_CORE_DRP_I_n_40;
  wire CLK_CORE_DRP_I_n_41;
  wire CLK_CORE_DRP_I_n_42;
  wire CLK_CORE_DRP_I_n_43;
  wire CLK_CORE_DRP_I_n_44;
  wire CLK_CORE_DRP_I_n_45;
  wire CLK_CORE_DRP_I_n_46;
  wire CLK_CORE_DRP_I_n_47;
  wire CLK_CORE_DRP_I_n_48;
  wire CLK_CORE_DRP_I_n_49;
  wire CLK_CORE_DRP_I_n_50;
  wire CLK_CORE_DRP_I_n_51;
  wire CLK_CORE_DRP_I_n_52;
  wire CLK_CORE_DRP_I_n_53;
  wire CLK_CORE_DRP_I_n_54;
  wire CLK_CORE_DRP_I_n_55;
  wire CLK_CORE_DRP_I_n_56;
  wire CLK_CORE_DRP_I_n_57;
  wire CLK_CORE_DRP_I_n_58;
  wire CLK_CORE_DRP_I_n_59;
  wire CLK_CORE_DRP_I_n_60;
  wire CLK_CORE_DRP_I_n_61;
  wire CLK_CORE_DRP_I_n_70;
  wire CLK_CORE_DRP_I_n_71;
  wire CLK_CORE_DRP_I_n_72;
  wire CLK_CORE_DRP_I_n_73;
  wire CLK_CORE_DRP_I_n_74;
  wire CLK_CORE_DRP_I_n_75;
  wire CLK_CORE_DRP_I_n_76;
  wire CLK_CORE_DRP_I_n_77;
  wire CLK_CORE_DRP_I_n_78;
  wire CLK_CORE_DRP_I_n_79;
  wire CLK_CORE_DRP_I_n_80;
  wire CLK_CORE_DRP_I_n_81;
  wire CLK_CORE_DRP_I_n_82;
  wire CLK_CORE_DRP_I_n_83;
  wire CLK_CORE_DRP_I_n_84;
  wire CLK_CORE_DRP_I_n_85;
  wire CLK_CORE_DRP_I_n_86;
  wire CLK_CORE_DRP_I_n_87;
  wire CLK_CORE_DRP_I_n_88;
  wire CLK_CORE_DRP_I_n_89;
  wire CLK_CORE_DRP_I_n_90;
  wire CLK_CORE_DRP_I_n_91;
  wire [0:15]IP2Bus_Data;
  wire IP2Bus_WrAck;
  wire SOFT_RESET_I_n_2;
  wire SRDY;
  wire [6:2]bus2ip_addr;
  wire [8:8]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire clk_in1;
  wire clk_out1;
  wire [30:31]config_reg;
  wire [13:29]config_reg__0;
  wire dummy_local_reg_rdack;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire locked;
  wire [1:1]p_1_in;
  wire p_36_in;
  wire p_39_in;
  wire p_42_in;
  wire p_45_in;
  wire p_48_in;
  wire p_51_in;
  wire p_54_in;
  wire p_57_in;
  wire p_60_in;
  wire p_63_in;
  wire p_66_in;
  wire p_69_in;
  wire p_72_in;
  wire p_75_in;
  wire p_93_in;
  wire [17:17]\ram_clk_config_reg[12]_5 ;
  wire [17:17]\ram_clk_config_reg[14]_6 ;
  wire [17:17]\ram_clk_config_reg[15]_7 ;
  wire [17:17]\ram_clk_config_reg[24]_3 ;
  wire [17:17]\ram_clk_config_reg[25]_4 ;
  wire [17:17]\ram_clk_config_reg[29]_0 ;
  wire [17:17]\ram_clk_config_reg[30]_1 ;
  wire [17:17]\ram_clk_config_reg[31]_2 ;
  wire rdack_reg_10;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_rdack;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;
  wire wrack_reg_10;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  rfdc_ex_clk_wiz_adc1_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_39),
        .D({IP2Bus_Data[0],IP2Bus_Data[1],IP2Bus_Data[2],IP2Bus_Data[3],IP2Bus_Data[4],IP2Bus_Data[5],IP2Bus_Data[6],IP2Bus_Data[7],IP2Bus_Data[8],IP2Bus_Data[9],IP2Bus_Data[10],IP2Bus_Data[11],IP2Bus_Data[12],IP2Bus_Data[15]}),
        .E(AXI_LITE_IPIF_I_n_6),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (AXI_LITE_IPIF_I_n_40),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (AXI_LITE_IPIF_I_n_38),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .Q(bus2ip_addr),
        .SRDY(SRDY),
        .\bus2ip_addr_i_reg[1] (AXI_LITE_IPIF_I_n_48),
        .\bus2ip_addr_i_reg[2] (AXI_LITE_IPIF_I_n_15),
        .\bus2ip_addr_i_reg[2]_0 (AXI_LITE_IPIF_I_n_16),
        .\bus2ip_addr_i_reg[2]_1 (AXI_LITE_IPIF_I_n_17),
        .\bus2ip_addr_i_reg[2]_2 (AXI_LITE_IPIF_I_n_24),
        .\bus2ip_addr_i_reg[2]_3 (AXI_LITE_IPIF_I_n_30),
        .\bus2ip_addr_i_reg[2]_4 (AXI_LITE_IPIF_I_n_34),
        .\bus2ip_addr_i_reg[2]_5 (AXI_LITE_IPIF_I_n_93),
        .\bus2ip_addr_i_reg[2]_6 (AXI_LITE_IPIF_I_n_94),
        .\bus2ip_addr_i_reg[3] (AXI_LITE_IPIF_I_n_18),
        .\bus2ip_addr_i_reg[3]_0 (AXI_LITE_IPIF_I_n_23),
        .\bus2ip_addr_i_reg[3]_1 (AXI_LITE_IPIF_I_n_25),
        .\bus2ip_addr_i_reg[3]_10 (AXI_LITE_IPIF_I_n_96),
        .\bus2ip_addr_i_reg[3]_11 (AXI_LITE_IPIF_I_n_98),
        .\bus2ip_addr_i_reg[3]_2 (AXI_LITE_IPIF_I_n_26),
        .\bus2ip_addr_i_reg[3]_3 (AXI_LITE_IPIF_I_n_27),
        .\bus2ip_addr_i_reg[3]_4 (AXI_LITE_IPIF_I_n_28),
        .\bus2ip_addr_i_reg[3]_5 (AXI_LITE_IPIF_I_n_29),
        .\bus2ip_addr_i_reg[3]_6 (AXI_LITE_IPIF_I_n_31),
        .\bus2ip_addr_i_reg[3]_7 (AXI_LITE_IPIF_I_n_33),
        .\bus2ip_addr_i_reg[3]_8 (AXI_LITE_IPIF_I_n_35),
        .\bus2ip_addr_i_reg[3]_9 (AXI_LITE_IPIF_I_n_92),
        .\bus2ip_addr_i_reg[4] (AXI_LITE_IPIF_I_n_20),
        .\bus2ip_addr_i_reg[4]_0 (AXI_LITE_IPIF_I_n_21),
        .\bus2ip_addr_i_reg[4]_1 (AXI_LITE_IPIF_I_n_22),
        .\bus2ip_addr_i_reg[4]_2 (AXI_LITE_IPIF_I_n_32),
        .\bus2ip_addr_i_reg[4]_3 (AXI_LITE_IPIF_I_n_95),
        .\bus2ip_addr_i_reg[4]_4 (AXI_LITE_IPIF_I_n_99),
        .\bus2ip_addr_i_reg[5] (AXI_LITE_IPIF_I_n_19),
        .\bus2ip_addr_i_reg[5]_0 (AXI_LITE_IPIF_I_n_36),
        .\bus2ip_addr_i_reg[5]_1 (AXI_LITE_IPIF_I_n_100),
        .\bus2ip_addr_i_reg[6] (AXI_LITE_IPIF_I_n_37),
        .\bus2ip_addr_i_reg[6]_0 (AXI_LITE_IPIF_I_n_97),
        .\bus2ip_addr_i_reg[8] (AXI_LITE_IPIF_I_n_41),
        .\bus2ip_addr_i_reg[9] (AXI_LITE_IPIF_I_n_13),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .config_reg(config_reg[31]),
        .\current_state_reg[1] (SOFT_RESET_I_n_2),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .load_enable_reg_d_reg(locked),
        .p_1_in(p_1_in),
        .\ram_clk_config_reg[2][17] ({CLK_CORE_DRP_I_n_44,CLK_CORE_DRP_I_n_45,CLK_CORE_DRP_I_n_46,CLK_CORE_DRP_I_n_47,CLK_CORE_DRP_I_n_48,CLK_CORE_DRP_I_n_49,CLK_CORE_DRP_I_n_50,CLK_CORE_DRP_I_n_51,CLK_CORE_DRP_I_n_52,CLK_CORE_DRP_I_n_53,CLK_CORE_DRP_I_n_54,CLK_CORE_DRP_I_n_55,CLK_CORE_DRP_I_n_56,CLK_CORE_DRP_I_n_57,CLK_CORE_DRP_I_n_58,CLK_CORE_DRP_I_n_59,CLK_CORE_DRP_I_n_60,CLK_CORE_DRP_I_n_61}),
        .\ram_clk_config_reg[2][18] (CLK_CORE_DRP_I_n_43),
        .rdack_reg_10(rdack_reg_10),
        .reset2ip_reset(reset2ip_reset),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i[0]_i_3 (CLK_CORE_DRP_I_n_90),
        .\s_axi_rdata_i[0]_i_3_0 (CLK_CORE_DRP_I_n_91),
        .\s_axi_rdata_i[0]_i_3_1 (CLK_CORE_DRP_I_n_86),
        .\s_axi_rdata_i[0]_i_3_2 (CLK_CORE_DRP_I_n_85),
        .\s_axi_rdata_i[0]_i_3_3 (CLK_CORE_DRP_I_n_88),
        .\s_axi_rdata_i[0]_i_3_4 (CLK_CORE_DRP_I_n_89),
        .\s_axi_rdata_i[17]_i_11 (\ram_clk_config_reg[14]_6 ),
        .\s_axi_rdata_i[17]_i_11_0 (\ram_clk_config_reg[15]_7 ),
        .\s_axi_rdata_i[17]_i_3 (\ram_clk_config_reg[29]_0 ),
        .\s_axi_rdata_i[17]_i_3_0 (\ram_clk_config_reg[31]_2 ),
        .\s_axi_rdata_i[17]_i_3_1 (\ram_clk_config_reg[25]_4 ),
        .\s_axi_rdata_i[17]_i_3_2 (\ram_clk_config_reg[24]_3 ),
        .\s_axi_rdata_i[17]_i_3_3 (\ram_clk_config_reg[30]_1 ),
        .\s_axi_rdata_i[17]_i_3_4 (\ram_clk_config_reg[12]_5 ),
        .\s_axi_rdata_i_reg[0] (CLK_CORE_DRP_I_n_87),
        .\s_axi_rdata_i_reg[10] (CLK_CORE_DRP_I_n_38),
        .\s_axi_rdata_i_reg[11] (CLK_CORE_DRP_I_n_77),
        .\s_axi_rdata_i_reg[12] (CLK_CORE_DRP_I_n_76),
        .\s_axi_rdata_i_reg[13] (CLK_CORE_DRP_I_n_74),
        .\s_axi_rdata_i_reg[13]_0 (CLK_CORE_DRP_I_n_75),
        .\s_axi_rdata_i_reg[14] (CLK_CORE_DRP_I_n_73),
        .\s_axi_rdata_i_reg[15] ({p_93_in,p_75_in,p_72_in,p_69_in,p_66_in,p_63_in,p_60_in,p_57_in,p_54_in,p_51_in,p_48_in,p_45_in,p_42_in,p_39_in,p_36_in,CLK_CORE_DRP_I_n_107}),
        .\s_axi_rdata_i_reg[15]_0 (CLK_CORE_DRP_I_n_72),
        .\s_axi_rdata_i_reg[17] (CLK_CORE_DRP_I_n_40),
        .\s_axi_rdata_i_reg[17]_0 (CLK_CORE_DRP_I_n_42),
        .\s_axi_rdata_i_reg[17]_1 (CLK_CORE_DRP_I_n_41),
        .\s_axi_rdata_i_reg[18] ({config_reg__0[13],config_reg__0[14],config_reg__0[16],config_reg__0[17],config_reg__0[18],config_reg__0[19],config_reg__0[20],config_reg__0[21],config_reg__0[22],config_reg__0[23],config_reg__0[24],config_reg__0[25],config_reg__0[26],config_reg__0[27],config_reg__0[28],config_reg__0[29],config_reg[30]}),
        .\s_axi_rdata_i_reg[18]_0 (CLK_CORE_DRP_I_n_70),
        .\s_axi_rdata_i_reg[18]_1 (CLK_CORE_DRP_I_n_71),
        .\s_axi_rdata_i_reg[1] (CLK_CORE_DRP_I_n_39),
        .\s_axi_rdata_i_reg[2] (CLK_CORE_DRP_I_n_36),
        .\s_axi_rdata_i_reg[3] (CLK_CORE_DRP_I_n_84),
        .\s_axi_rdata_i_reg[4] (CLK_CORE_DRP_I_n_83),
        .\s_axi_rdata_i_reg[5] (CLK_CORE_DRP_I_n_82),
        .\s_axi_rdata_i_reg[6] (CLK_CORE_DRP_I_n_80),
        .\s_axi_rdata_i_reg[6]_0 (CLK_CORE_DRP_I_n_81),
        .\s_axi_rdata_i_reg[7] (CLK_CORE_DRP_I_n_79),
        .\s_axi_rdata_i_reg[8] (CLK_CORE_DRP_I_n_37),
        .\s_axi_rdata_i_reg[9] (CLK_CORE_DRP_I_n_78),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] ({AXI_LITE_IPIF_I_n_43,AXI_LITE_IPIF_I_n_44,AXI_LITE_IPIF_I_n_45,AXI_LITE_IPIF_I_n_46,AXI_LITE_IPIF_I_n_47}),
        .\s_axi_wdata[31]_0 ({AXI_LITE_IPIF_I_n_49,AXI_LITE_IPIF_I_n_50,AXI_LITE_IPIF_I_n_51,AXI_LITE_IPIF_I_n_52,AXI_LITE_IPIF_I_n_53,AXI_LITE_IPIF_I_n_54,AXI_LITE_IPIF_I_n_55,AXI_LITE_IPIF_I_n_56,AXI_LITE_IPIF_I_n_57,AXI_LITE_IPIF_I_n_58,AXI_LITE_IPIF_I_n_59,AXI_LITE_IPIF_I_n_60,AXI_LITE_IPIF_I_n_61,AXI_LITE_IPIF_I_n_62,AXI_LITE_IPIF_I_n_63,AXI_LITE_IPIF_I_n_64,AXI_LITE_IPIF_I_n_65,AXI_LITE_IPIF_I_n_66,AXI_LITE_IPIF_I_n_67,AXI_LITE_IPIF_I_n_68,AXI_LITE_IPIF_I_n_69,AXI_LITE_IPIF_I_n_70,AXI_LITE_IPIF_I_n_71,AXI_LITE_IPIF_I_n_72,AXI_LITE_IPIF_I_n_73,AXI_LITE_IPIF_I_n_74,AXI_LITE_IPIF_I_n_75,AXI_LITE_IPIF_I_n_76,AXI_LITE_IPIF_I_n_77,AXI_LITE_IPIF_I_n_78,AXI_LITE_IPIF_I_n_79,AXI_LITE_IPIF_I_n_80}),
        .s_axi_wdata_0_sp_1(AXI_LITE_IPIF_I_n_101),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack),
        .wrack_reg_10(wrack_reg_10));
  rfdc_ex_clk_wiz_adc1_0_clk_wiz_drp CLK_CORE_DRP_I
       (.D({IP2Bus_Data[0],IP2Bus_Data[1],IP2Bus_Data[2],IP2Bus_Data[3],IP2Bus_Data[4],IP2Bus_Data[5],IP2Bus_Data[6],IP2Bus_Data[7],IP2Bus_Data[8],IP2Bus_Data[9],IP2Bus_Data[10],IP2Bus_Data[11],IP2Bus_Data[12],IP2Bus_Data[15]}),
        .E(AXI_LITE_IPIF_I_n_13),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .Q(bus2ip_addr),
        .SR(reset2ip_reset),
        .SRDY(SRDY),
        .\bus2ip_addr_i_reg[2] (CLK_CORE_DRP_I_n_41),
        .\bus2ip_addr_i_reg[4] (CLK_CORE_DRP_I_n_40),
        .\bus2ip_addr_i_reg[4]_0 (CLK_CORE_DRP_I_n_87),
        .\bus2ip_addr_i_reg[5] (CLK_CORE_DRP_I_n_37),
        .\bus2ip_addr_i_reg[5]_0 (CLK_CORE_DRP_I_n_38),
        .\bus2ip_addr_i_reg[5]_1 (CLK_CORE_DRP_I_n_39),
        .\bus2ip_addr_i_reg[5]_2 (CLK_CORE_DRP_I_n_70),
        .\bus2ip_addr_i_reg[5]_3 (CLK_CORE_DRP_I_n_71),
        .\bus2ip_addr_i_reg[5]_4 (CLK_CORE_DRP_I_n_74),
        .\bus2ip_addr_i_reg[5]_5 (CLK_CORE_DRP_I_n_75),
        .\bus2ip_addr_i_reg[5]_6 (CLK_CORE_DRP_I_n_80),
        .\bus2ip_addr_i_reg[5]_7 (CLK_CORE_DRP_I_n_81),
        .\bus2ip_addr_i_reg[6] (CLK_CORE_DRP_I_n_36),
        .\bus2ip_addr_i_reg[6]_0 (CLK_CORE_DRP_I_n_72),
        .\bus2ip_addr_i_reg[6]_1 (CLK_CORE_DRP_I_n_73),
        .\bus2ip_addr_i_reg[6]_2 (CLK_CORE_DRP_I_n_76),
        .\bus2ip_addr_i_reg[6]_3 (CLK_CORE_DRP_I_n_77),
        .\bus2ip_addr_i_reg[6]_4 (CLK_CORE_DRP_I_n_78),
        .\bus2ip_addr_i_reg[6]_5 (CLK_CORE_DRP_I_n_79),
        .\bus2ip_addr_i_reg[6]_6 (CLK_CORE_DRP_I_n_82),
        .\bus2ip_addr_i_reg[6]_7 (CLK_CORE_DRP_I_n_83),
        .\bus2ip_addr_i_reg[6]_8 (CLK_CORE_DRP_I_n_84),
        .bus2ip_wrce(bus2ip_wrce),
        .clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .\clkout0_reg_reg[14]_0 ({CLK_CORE_DRP_I_n_44,CLK_CORE_DRP_I_n_45,CLK_CORE_DRP_I_n_46,CLK_CORE_DRP_I_n_47,CLK_CORE_DRP_I_n_48,CLK_CORE_DRP_I_n_49,CLK_CORE_DRP_I_n_50,CLK_CORE_DRP_I_n_51,CLK_CORE_DRP_I_n_52,CLK_CORE_DRP_I_n_53,CLK_CORE_DRP_I_n_54,CLK_CORE_DRP_I_n_55,CLK_CORE_DRP_I_n_56,CLK_CORE_DRP_I_n_57,CLK_CORE_DRP_I_n_58,CLK_CORE_DRP_I_n_59,CLK_CORE_DRP_I_n_60,CLK_CORE_DRP_I_n_61}),
        .\clkout0_reg_reg[14]_1 (AXI_LITE_IPIF_I_n_6),
        .\clkout0_reg_reg[20]_0 (CLK_CORE_DRP_I_n_43),
        .config_reg({config_reg[30],config_reg[31]}),
        .dummy_local_reg_rdack(dummy_local_reg_rdack),
        .\interrupt_enable_reg_reg[15]_0 ({p_93_in,p_75_in,p_72_in,p_69_in,p_66_in,p_63_in,p_60_in,p_57_in,p_54_in,p_51_in,p_48_in,p_45_in,p_42_in,p_39_in,p_36_in,CLK_CORE_DRP_I_n_107}),
        .\interrupt_enable_reg_reg[15]_1 (AXI_LITE_IPIF_I_n_39),
        .ip2bus_rdack_int1(ip2bus_rdack_int1),
        .load_enable_reg_d_reg_0(AXI_LITE_IPIF_I_n_101),
        .\load_enable_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_38),
        .\load_enable_reg_reg[13]_0 ({config_reg__0[13],config_reg__0[14],config_reg__0[16],config_reg__0[17],config_reg__0[18],config_reg__0[19],config_reg__0[20],config_reg__0[21],config_reg__0[22],config_reg__0[23],config_reg__0[24],config_reg__0[25],config_reg__0[26],config_reg__0[27],config_reg__0[28],config_reg__0[29]}),
        .plle4_adv_inst(locked),
        .\ram_clk_config_reg[0][0]_0 (AXI_LITE_IPIF_I_n_48),
        .\ram_clk_config_reg[0][31]_0 (AXI_LITE_IPIF_I_n_37),
        .\ram_clk_config_reg[0][31]_1 ({AXI_LITE_IPIF_I_n_43,AXI_LITE_IPIF_I_n_44,AXI_LITE_IPIF_I_n_45,AXI_LITE_IPIF_I_n_46,AXI_LITE_IPIF_I_n_47}),
        .\ram_clk_config_reg[10][31]_0 (AXI_LITE_IPIF_I_n_16),
        .\ram_clk_config_reg[11][0]_0 (CLK_CORE_DRP_I_n_86),
        .\ram_clk_config_reg[11][31]_0 (AXI_LITE_IPIF_I_n_29),
        .\ram_clk_config_reg[12][0]_0 (AXI_LITE_IPIF_I_n_96),
        .\ram_clk_config_reg[12][17]_0 (\ram_clk_config_reg[12]_5 ),
        .\ram_clk_config_reg[13][31]_0 (AXI_LITE_IPIF_I_n_31),
        .\ram_clk_config_reg[14][17]_0 (\ram_clk_config_reg[14]_6 ),
        .\ram_clk_config_reg[14][31]_0 (AXI_LITE_IPIF_I_n_30),
        .\ram_clk_config_reg[15][0]_0 (CLK_CORE_DRP_I_n_85),
        .\ram_clk_config_reg[15][0]_1 (AXI_LITE_IPIF_I_n_97),
        .\ram_clk_config_reg[15][17]_0 (\ram_clk_config_reg[15]_7 ),
        .\ram_clk_config_reg[16][31]_0 (AXI_LITE_IPIF_I_n_28),
        .\ram_clk_config_reg[17][31]_0 (AXI_LITE_IPIF_I_n_27),
        .\ram_clk_config_reg[18][0]_0 (AXI_LITE_IPIF_I_n_95),
        .\ram_clk_config_reg[19][0]_0 (CLK_CORE_DRP_I_n_90),
        .\ram_clk_config_reg[19][0]_1 (AXI_LITE_IPIF_I_n_93),
        .\ram_clk_config_reg[1][0]_0 (AXI_LITE_IPIF_I_n_99),
        .\ram_clk_config_reg[20][31]_0 (AXI_LITE_IPIF_I_n_26),
        .\ram_clk_config_reg[21][31]_0 (AXI_LITE_IPIF_I_n_25),
        .\ram_clk_config_reg[22][31]_0 (AXI_LITE_IPIF_I_n_24),
        .\ram_clk_config_reg[23][0]_0 (CLK_CORE_DRP_I_n_91),
        .\ram_clk_config_reg[23][0]_1 (AXI_LITE_IPIF_I_n_94),
        .\ram_clk_config_reg[24][17]_0 (\ram_clk_config_reg[24]_3 ),
        .\ram_clk_config_reg[24][31]_0 (AXI_LITE_IPIF_I_n_23),
        .\ram_clk_config_reg[25][17]_0 (\ram_clk_config_reg[25]_4 ),
        .\ram_clk_config_reg[25][31]_0 (AXI_LITE_IPIF_I_n_20),
        .\ram_clk_config_reg[26][31]_0 (AXI_LITE_IPIF_I_n_22),
        .\ram_clk_config_reg[27][0]_0 (CLK_CORE_DRP_I_n_88),
        .\ram_clk_config_reg[27][31]_0 (AXI_LITE_IPIF_I_n_19),
        .\ram_clk_config_reg[28][0]_0 (AXI_LITE_IPIF_I_n_92),
        .\ram_clk_config_reg[28][17]_0 (CLK_CORE_DRP_I_n_42),
        .\ram_clk_config_reg[29][17]_0 (\ram_clk_config_reg[29]_0 ),
        .\ram_clk_config_reg[29][31]_0 (AXI_LITE_IPIF_I_n_18),
        .\ram_clk_config_reg[2][31]_0 (AXI_LITE_IPIF_I_n_15),
        .\ram_clk_config_reg[2][31]_1 ({AXI_LITE_IPIF_I_n_49,AXI_LITE_IPIF_I_n_50,AXI_LITE_IPIF_I_n_51,AXI_LITE_IPIF_I_n_52,AXI_LITE_IPIF_I_n_53,AXI_LITE_IPIF_I_n_54,AXI_LITE_IPIF_I_n_55,AXI_LITE_IPIF_I_n_56,AXI_LITE_IPIF_I_n_57,AXI_LITE_IPIF_I_n_58,AXI_LITE_IPIF_I_n_59,AXI_LITE_IPIF_I_n_60,AXI_LITE_IPIF_I_n_61,AXI_LITE_IPIF_I_n_62,AXI_LITE_IPIF_I_n_63,AXI_LITE_IPIF_I_n_64,AXI_LITE_IPIF_I_n_65,AXI_LITE_IPIF_I_n_66,AXI_LITE_IPIF_I_n_67,AXI_LITE_IPIF_I_n_68,AXI_LITE_IPIF_I_n_69,AXI_LITE_IPIF_I_n_70,AXI_LITE_IPIF_I_n_71,AXI_LITE_IPIF_I_n_72,AXI_LITE_IPIF_I_n_73,AXI_LITE_IPIF_I_n_74,AXI_LITE_IPIF_I_n_75,AXI_LITE_IPIF_I_n_76,AXI_LITE_IPIF_I_n_77,AXI_LITE_IPIF_I_n_78,AXI_LITE_IPIF_I_n_79,AXI_LITE_IPIF_I_n_80}),
        .\ram_clk_config_reg[30][17]_0 (\ram_clk_config_reg[30]_1 ),
        .\ram_clk_config_reg[30][31]_0 (AXI_LITE_IPIF_I_n_21),
        .\ram_clk_config_reg[31][0]_0 (CLK_CORE_DRP_I_n_89),
        .\ram_clk_config_reg[31][17]_0 (\ram_clk_config_reg[31]_2 ),
        .\ram_clk_config_reg[31][31]_0 (AXI_LITE_IPIF_I_n_17),
        .\ram_clk_config_reg[3][0]_0 (AXI_LITE_IPIF_I_n_100),
        .\ram_clk_config_reg[4][31]_0 (AXI_LITE_IPIF_I_n_36),
        .\ram_clk_config_reg[5][31]_0 (AXI_LITE_IPIF_I_n_35),
        .\ram_clk_config_reg[6][31]_0 (AXI_LITE_IPIF_I_n_34),
        .\ram_clk_config_reg[7][31]_0 (AXI_LITE_IPIF_I_n_33),
        .\ram_clk_config_reg[8][0]_0 (AXI_LITE_IPIF_I_n_98),
        .\ram_clk_config_reg[9][31]_0 (AXI_LITE_IPIF_I_n_32),
        .rdack_reg_10(rdack_reg_10),
        .rst_ip2bus_rdack(rst_ip2bus_rdack),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[16] (AXI_LITE_IPIF_I_n_41),
        .\s_axi_rdata_i_reg[16]_0 (AXI_LITE_IPIF_I_n_40),
        .s_axi_wdata(s_axi_wdata),
        .wrack_reg_10(wrack_reg_10));
  GND GND
       (.G(\<const0> ));
  rfdc_ex_clk_wiz_adc1_0_soft_reset SOFT_RESET_I
       (.\RESET_FLOPS[15].RST_FLOPS_0 (SOFT_RESET_I_n_2),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  FDRE dummy_local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack_d10),
        .Q(dummy_local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack0),
        .Q(dummy_local_reg_rdack),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack_d10),
        .Q(dummy_local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack0),
        .Q(dummy_local_reg_wrack),
        .R(reset2ip_reset));
  FDRE ip2bus_error_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_error_int1),
        .Q(p_1_in),
        .R(reset2ip_reset));
  FDRE ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_int1),
        .Q(ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE ip2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_int1),
        .Q(ip2bus_wrack),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce),
        .Q(rst_ip2bus_rdack_d1),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_ip2bus_rdack0),
        .Q(rst_ip2bus_rdack),
        .R(reset2ip_reset));
endmodule

module rfdc_ex_clk_wiz_adc1_0_axi_lite_ipif
   (bus2ip_reset_active_high,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_arready,
    E,
    reset2ip_reset,
    Q,
    \bus2ip_addr_i_reg[9] ,
    wrack_reg_10,
    \bus2ip_addr_i_reg[2] ,
    \bus2ip_addr_i_reg[2]_0 ,
    \bus2ip_addr_i_reg[2]_1 ,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[5] ,
    \bus2ip_addr_i_reg[4] ,
    \bus2ip_addr_i_reg[4]_0 ,
    \bus2ip_addr_i_reg[4]_1 ,
    \bus2ip_addr_i_reg[3]_0 ,
    \bus2ip_addr_i_reg[2]_2 ,
    \bus2ip_addr_i_reg[3]_1 ,
    \bus2ip_addr_i_reg[3]_2 ,
    \bus2ip_addr_i_reg[3]_3 ,
    \bus2ip_addr_i_reg[3]_4 ,
    \bus2ip_addr_i_reg[3]_5 ,
    \bus2ip_addr_i_reg[2]_3 ,
    \bus2ip_addr_i_reg[3]_6 ,
    \bus2ip_addr_i_reg[4]_2 ,
    \bus2ip_addr_i_reg[3]_7 ,
    \bus2ip_addr_i_reg[2]_4 ,
    \bus2ip_addr_i_reg[3]_8 ,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \bus2ip_addr_i_reg[8] ,
    bus2ip_wrce,
    \s_axi_wdata[31] ,
    \bus2ip_addr_i_reg[1] ,
    \s_axi_wdata[31]_0 ,
    rdack_reg_10,
    rst_ip2bus_rdack0,
    bus2ip_rdce,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    reset_trig0,
    sw_rst_cond,
    dummy_local_reg_rdack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_wrack0,
    dummy_local_reg_wrack_d10,
    \bus2ip_addr_i_reg[3]_9 ,
    \bus2ip_addr_i_reg[2]_5 ,
    \bus2ip_addr_i_reg[2]_6 ,
    \bus2ip_addr_i_reg[4]_3 ,
    \bus2ip_addr_i_reg[3]_10 ,
    \bus2ip_addr_i_reg[6]_0 ,
    \bus2ip_addr_i_reg[3]_11 ,
    \bus2ip_addr_i_reg[4]_4 ,
    \bus2ip_addr_i_reg[5]_1 ,
    s_axi_wdata_0_sp_1,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    ip2bus_wrack,
    ip2bus_rdack,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    \current_state_reg[1] ,
    D,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[15]_0 ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[1] ,
    SRDY,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[6]_0 ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[13]_0 ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[18]_0 ,
    \s_axi_rdata_i_reg[18]_1 ,
    config_reg,
    load_enable_reg_d_reg,
    s_axi_wdata,
    \ram_clk_config_reg[2][17] ,
    \ram_clk_config_reg[2][18] ,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[17]_0 ,
    \s_axi_rdata_i_reg[17]_1 ,
    \s_axi_rdata_i[17]_i_3 ,
    \s_axi_rdata_i[17]_i_3_0 ,
    \s_axi_rdata_i[17]_i_3_1 ,
    \s_axi_rdata_i[17]_i_3_2 ,
    \s_axi_rdata_i[17]_i_3_3 ,
    \s_axi_rdata_i[0]_i_3 ,
    \s_axi_rdata_i[0]_i_3_0 ,
    \s_axi_rdata_i[17]_i_3_4 ,
    \s_axi_rdata_i[17]_i_11 ,
    \s_axi_rdata_i[17]_i_11_0 ,
    rst_ip2bus_rdack_d1,
    dummy_local_reg_wrack,
    wrack,
    IP2Bus_WrAck,
    sw_rst_cond_d1,
    s_axi_wstrb,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    s_axi_bready,
    s_axi_rready,
    \s_axi_rdata_i[0]_i_3_1 ,
    \s_axi_rdata_i[0]_i_3_2 ,
    \s_axi_rdata_i[0]_i_3_3 ,
    \s_axi_rdata_i[0]_i_3_4 ,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset_active_high;
  output [0:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_arready;
  output [0:0]E;
  output reset2ip_reset;
  output [4:0]Q;
  output [0:0]\bus2ip_addr_i_reg[9] ;
  output wrack_reg_10;
  output [0:0]\bus2ip_addr_i_reg[2] ;
  output [0:0]\bus2ip_addr_i_reg[2]_0 ;
  output [0:0]\bus2ip_addr_i_reg[2]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3] ;
  output [0:0]\bus2ip_addr_i_reg[5] ;
  output [0:0]\bus2ip_addr_i_reg[4] ;
  output [0:0]\bus2ip_addr_i_reg[4]_0 ;
  output [0:0]\bus2ip_addr_i_reg[4]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3]_0 ;
  output [0:0]\bus2ip_addr_i_reg[2]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_5 ;
  output [0:0]\bus2ip_addr_i_reg[2]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_6 ;
  output [0:0]\bus2ip_addr_i_reg[4]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_7 ;
  output [0:0]\bus2ip_addr_i_reg[2]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_8 ;
  output [0:0]\bus2ip_addr_i_reg[5]_0 ;
  output [0:0]\bus2ip_addr_i_reg[6] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  output [0:0]Bus_RNW_reg_reg;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output \bus2ip_addr_i_reg[8] ;
  output [0:0]bus2ip_wrce;
  output [4:0]\s_axi_wdata[31] ;
  output \bus2ip_addr_i_reg[1] ;
  output [31:0]\s_axi_wdata[31]_0 ;
  output rdack_reg_10;
  output rst_ip2bus_rdack0;
  output [0:0]bus2ip_rdce;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output reset_trig0;
  output sw_rst_cond;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_wrack0;
  output dummy_local_reg_wrack_d10;
  output [0:0]\bus2ip_addr_i_reg[3]_9 ;
  output [0:0]\bus2ip_addr_i_reg[2]_5 ;
  output [0:0]\bus2ip_addr_i_reg[2]_6 ;
  output [0:0]\bus2ip_addr_i_reg[4]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_10 ;
  output [0:0]\bus2ip_addr_i_reg[6]_0 ;
  output [0:0]\bus2ip_addr_i_reg[3]_11 ;
  output [0:0]\bus2ip_addr_i_reg[4]_4 ;
  output [0:0]\bus2ip_addr_i_reg[5]_1 ;
  output s_axi_wdata_0_sp_1;
  output [0:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input ip2bus_wrack;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input \current_state_reg[1] ;
  input [13:0]D;
  input [15:0]\s_axi_rdata_i_reg[15] ;
  input [16:0]\s_axi_rdata_i_reg[18] ;
  input \s_axi_rdata_i_reg[15]_0 ;
  input \s_axi_rdata_i_reg[14] ;
  input \s_axi_rdata_i_reg[12] ;
  input \s_axi_rdata_i_reg[11] ;
  input \s_axi_rdata_i_reg[10] ;
  input \s_axi_rdata_i_reg[9] ;
  input \s_axi_rdata_i_reg[8] ;
  input \s_axi_rdata_i_reg[7] ;
  input \s_axi_rdata_i_reg[5] ;
  input \s_axi_rdata_i_reg[4] ;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[2] ;
  input \s_axi_rdata_i_reg[1] ;
  input SRDY;
  input \s_axi_rdata_i_reg[6] ;
  input \s_axi_rdata_i_reg[6]_0 ;
  input \s_axi_rdata_i_reg[13] ;
  input \s_axi_rdata_i_reg[13]_0 ;
  input \s_axi_rdata_i_reg[17] ;
  input \s_axi_rdata_i_reg[18]_0 ;
  input \s_axi_rdata_i_reg[18]_1 ;
  input [0:0]config_reg;
  input load_enable_reg_d_reg;
  input [31:0]s_axi_wdata;
  input [17:0]\ram_clk_config_reg[2][17] ;
  input \ram_clk_config_reg[2][18] ;
  input \s_axi_rdata_i_reg[0] ;
  input \s_axi_rdata_i_reg[17]_0 ;
  input \s_axi_rdata_i_reg[17]_1 ;
  input [0:0]\s_axi_rdata_i[17]_i_3 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_0 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_1 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_2 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_3 ;
  input \s_axi_rdata_i[0]_i_3 ;
  input \s_axi_rdata_i[0]_i_3_0 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_4 ;
  input [0:0]\s_axi_rdata_i[17]_i_11 ;
  input [0:0]\s_axi_rdata_i[17]_i_11_0 ;
  input rst_ip2bus_rdack_d1;
  input dummy_local_reg_wrack;
  input wrack;
  input IP2Bus_WrAck;
  input sw_rst_cond_d1;
  input [3:0]s_axi_wstrb;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input s_axi_bready;
  input s_axi_rready;
  input \s_axi_rdata_i[0]_i_3_1 ;
  input \s_axi_rdata_i[0]_i_3_2 ;
  input \s_axi_rdata_i[0]_i_3_3 ;
  input \s_axi_rdata_i[0]_i_3_4 ;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;

  wire [0:0]Bus_RNW_reg_reg;
  wire [13:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire IP2Bus_WrAck;
  wire [4:0]Q;
  wire SRDY;
  wire \bus2ip_addr_i_reg[1] ;
  wire [0:0]\bus2ip_addr_i_reg[2] ;
  wire [0:0]\bus2ip_addr_i_reg[2]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_6 ;
  wire [0:0]\bus2ip_addr_i_reg[3] ;
  wire [0:0]\bus2ip_addr_i_reg[3]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_10 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_11 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_6 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_7 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_8 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_9 ;
  wire [0:0]\bus2ip_addr_i_reg[4] ;
  wire [0:0]\bus2ip_addr_i_reg[4]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[5] ;
  wire [0:0]\bus2ip_addr_i_reg[5]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[5]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[6] ;
  wire [0:0]\bus2ip_addr_i_reg[6]_0 ;
  wire \bus2ip_addr_i_reg[8] ;
  wire [0:0]\bus2ip_addr_i_reg[9] ;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire [0:0]config_reg;
  wire \current_state_reg[1] ;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire load_enable_reg_d_reg;
  wire [0:0]p_1_in;
  wire [17:0]\ram_clk_config_reg[2][17] ;
  wire \ram_clk_config_reg[2][18] ;
  wire rdack_reg_10;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_3 ;
  wire \s_axi_rdata_i[0]_i_3_0 ;
  wire \s_axi_rdata_i[0]_i_3_1 ;
  wire \s_axi_rdata_i[0]_i_3_2 ;
  wire \s_axi_rdata_i[0]_i_3_3 ;
  wire \s_axi_rdata_i[0]_i_3_4 ;
  wire [0:0]\s_axi_rdata_i[17]_i_11 ;
  wire [0:0]\s_axi_rdata_i[17]_i_11_0 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_0 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_1 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_2 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_3 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_4 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[13]_0 ;
  wire \s_axi_rdata_i_reg[14] ;
  wire [15:0]\s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[15]_0 ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[17]_0 ;
  wire \s_axi_rdata_i_reg[17]_1 ;
  wire [16:0]\s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[18]_0 ;
  wire \s_axi_rdata_i_reg[18]_1 ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [4:0]\s_axi_wdata[31] ;
  wire [31:0]\s_axi_wdata[31]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;
  wire wrack_reg_10;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  rfdc_ex_clk_wiz_adc1_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .Q(Q),
        .SR(bus2ip_reset_active_high),
        .SRDY(SRDY),
        .\bus2ip_addr_i_reg[1]_0 (\bus2ip_addr_i_reg[1] ),
        .\bus2ip_addr_i_reg[2]_0 (\bus2ip_addr_i_reg[2] ),
        .\bus2ip_addr_i_reg[2]_1 (\bus2ip_addr_i_reg[2]_0 ),
        .\bus2ip_addr_i_reg[2]_2 (\bus2ip_addr_i_reg[2]_1 ),
        .\bus2ip_addr_i_reg[2]_3 (\bus2ip_addr_i_reg[2]_2 ),
        .\bus2ip_addr_i_reg[2]_4 (\bus2ip_addr_i_reg[2]_3 ),
        .\bus2ip_addr_i_reg[2]_5 (\bus2ip_addr_i_reg[2]_4 ),
        .\bus2ip_addr_i_reg[2]_6 (\bus2ip_addr_i_reg[2]_5 ),
        .\bus2ip_addr_i_reg[2]_7 (\bus2ip_addr_i_reg[2]_6 ),
        .\bus2ip_addr_i_reg[3]_0 (\bus2ip_addr_i_reg[3] ),
        .\bus2ip_addr_i_reg[3]_1 (\bus2ip_addr_i_reg[3]_0 ),
        .\bus2ip_addr_i_reg[3]_10 (\bus2ip_addr_i_reg[3]_9 ),
        .\bus2ip_addr_i_reg[3]_11 (\bus2ip_addr_i_reg[3]_10 ),
        .\bus2ip_addr_i_reg[3]_12 (\bus2ip_addr_i_reg[3]_11 ),
        .\bus2ip_addr_i_reg[3]_2 (\bus2ip_addr_i_reg[3]_1 ),
        .\bus2ip_addr_i_reg[3]_3 (\bus2ip_addr_i_reg[3]_2 ),
        .\bus2ip_addr_i_reg[3]_4 (\bus2ip_addr_i_reg[3]_3 ),
        .\bus2ip_addr_i_reg[3]_5 (\bus2ip_addr_i_reg[3]_4 ),
        .\bus2ip_addr_i_reg[3]_6 (\bus2ip_addr_i_reg[3]_5 ),
        .\bus2ip_addr_i_reg[3]_7 (\bus2ip_addr_i_reg[3]_6 ),
        .\bus2ip_addr_i_reg[3]_8 (\bus2ip_addr_i_reg[3]_7 ),
        .\bus2ip_addr_i_reg[3]_9 (\bus2ip_addr_i_reg[3]_8 ),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4] ),
        .\bus2ip_addr_i_reg[4]_1 (\bus2ip_addr_i_reg[4]_0 ),
        .\bus2ip_addr_i_reg[4]_2 (\bus2ip_addr_i_reg[4]_1 ),
        .\bus2ip_addr_i_reg[4]_3 (\bus2ip_addr_i_reg[4]_2 ),
        .\bus2ip_addr_i_reg[4]_4 (\bus2ip_addr_i_reg[4]_3 ),
        .\bus2ip_addr_i_reg[4]_5 (\bus2ip_addr_i_reg[4]_4 ),
        .\bus2ip_addr_i_reg[5]_0 (\bus2ip_addr_i_reg[5] ),
        .\bus2ip_addr_i_reg[5]_1 (\bus2ip_addr_i_reg[5]_0 ),
        .\bus2ip_addr_i_reg[5]_2 (\bus2ip_addr_i_reg[5]_1 ),
        .\bus2ip_addr_i_reg[6]_0 (\bus2ip_addr_i_reg[6] ),
        .\bus2ip_addr_i_reg[6]_1 (\bus2ip_addr_i_reg[6]_0 ),
        .\bus2ip_addr_i_reg[8]_0 (\bus2ip_addr_i_reg[8] ),
        .\bus2ip_addr_i_reg[9]_0 (\bus2ip_addr_i_reg[9] ),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_wrce(bus2ip_wrce),
        .config_reg(config_reg),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .load_enable_reg_d_reg(load_enable_reg_d_reg),
        .p_1_in(p_1_in),
        .\ram_clk_config_reg[2][17] (\ram_clk_config_reg[2][17] ),
        .\ram_clk_config_reg[2][18] (\ram_clk_config_reg[2][18] ),
        .rdack_reg_10(rdack_reg_10),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .rst_reg_0(reset2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i[0]_i_3 (\s_axi_rdata_i[0]_i_3 ),
        .\s_axi_rdata_i[0]_i_3_0 (\s_axi_rdata_i[0]_i_3_0 ),
        .\s_axi_rdata_i[0]_i_3_1 (\s_axi_rdata_i[0]_i_3_1 ),
        .\s_axi_rdata_i[0]_i_3_2 (\s_axi_rdata_i[0]_i_3_2 ),
        .\s_axi_rdata_i[0]_i_3_3 (\s_axi_rdata_i[0]_i_3_3 ),
        .\s_axi_rdata_i[0]_i_3_4 (\s_axi_rdata_i[0]_i_3_4 ),
        .\s_axi_rdata_i[17]_i_11_0 (\s_axi_rdata_i[17]_i_11 ),
        .\s_axi_rdata_i[17]_i_11_1 (\s_axi_rdata_i[17]_i_11_0 ),
        .\s_axi_rdata_i[17]_i_3_0 (\s_axi_rdata_i[17]_i_3 ),
        .\s_axi_rdata_i[17]_i_3_1 (\s_axi_rdata_i[17]_i_3_0 ),
        .\s_axi_rdata_i[17]_i_3_2 (\s_axi_rdata_i[17]_i_3_1 ),
        .\s_axi_rdata_i[17]_i_3_3 (\s_axi_rdata_i[17]_i_3_2 ),
        .\s_axi_rdata_i[17]_i_3_4 (\s_axi_rdata_i[17]_i_3_3 ),
        .\s_axi_rdata_i[17]_i_3_5 (\s_axi_rdata_i[17]_i_3_4 ),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[10]_0 (\s_axi_rdata_i_reg[10] ),
        .\s_axi_rdata_i_reg[11]_0 (\s_axi_rdata_i_reg[11] ),
        .\s_axi_rdata_i_reg[12]_0 (\s_axi_rdata_i_reg[12] ),
        .\s_axi_rdata_i_reg[13]_0 (\s_axi_rdata_i_reg[13] ),
        .\s_axi_rdata_i_reg[13]_1 (\s_axi_rdata_i_reg[13]_0 ),
        .\s_axi_rdata_i_reg[14]_0 (\s_axi_rdata_i_reg[14] ),
        .\s_axi_rdata_i_reg[15]_0 (\s_axi_rdata_i_reg[15] ),
        .\s_axi_rdata_i_reg[15]_1 (\s_axi_rdata_i_reg[15]_0 ),
        .\s_axi_rdata_i_reg[17]_0 (\s_axi_rdata_i_reg[17] ),
        .\s_axi_rdata_i_reg[17]_1 (\s_axi_rdata_i_reg[17]_0 ),
        .\s_axi_rdata_i_reg[17]_2 (\s_axi_rdata_i_reg[17]_1 ),
        .\s_axi_rdata_i_reg[18]_0 (\s_axi_rdata_i_reg[18] ),
        .\s_axi_rdata_i_reg[18]_1 (\s_axi_rdata_i_reg[18]_0 ),
        .\s_axi_rdata_i_reg[18]_2 (\s_axi_rdata_i_reg[18]_1 ),
        .\s_axi_rdata_i_reg[1]_0 (\s_axi_rdata_i_reg[1] ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3] ),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i_reg[4] ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5] ),
        .\s_axi_rdata_i_reg[6]_0 (\s_axi_rdata_i_reg[6] ),
        .\s_axi_rdata_i_reg[6]_1 (\s_axi_rdata_i_reg[6]_0 ),
        .\s_axi_rdata_i_reg[7]_0 (\s_axi_rdata_i_reg[7] ),
        .\s_axi_rdata_i_reg[8]_0 (\s_axi_rdata_i_reg[8] ),
        .\s_axi_rdata_i_reg[9]_0 (\s_axi_rdata_i_reg[9] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .\s_axi_wdata[31]_0 (\s_axi_wdata[31]_0 ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack),
        .wrack_reg_10(wrack_reg_10));
endmodule

module rfdc_ex_clk_wiz_adc1_0_clk_wiz
   (clk_out1,
    drdy,
    plle4_adv_inst_0,
    DO,
    clk_in1,
    s_axi_aclk,
    DEN,
    DWE,
    reset,
    DI,
    DADDR);
  output clk_out1;
  output drdy;
  output plle4_adv_inst_0;
  output [12:0]DO;
  input clk_in1;
  input s_axi_aclk;
  input DEN;
  input DWE;
  input reset;
  input [15:0]DI;
  input [5:0]DADDR;

  wire [5:0]DADDR;
  wire DEN;
  wire [15:0]DI;
  wire [12:0]DO;
  wire DWE;
  wire clk_in1;
  wire clk_out1;
  wire [8:4]dout;
  wire drdy;
  wire plle4_adv_inst_0;
  wire reset;
  wire s_axi_aclk;
  wire NLW_plle4_adv_inst_CLKFBIN_UNCONNECTED;
  wire NLW_plle4_adv_inst_CLKFBOUT_UNCONNECTED;
  wire NLW_plle4_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_plle4_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle4_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_plle4_adv_inst_CLKOUTPHY_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  PLLE4_ADV #(
    .CLKFBOUT_MULT(16),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN_PERIOD(3.617000),
    .CLKOUT0_DIVIDE(4),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUTPHY_MODE("VCO_2X"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(3),
    .IS_CLKFBIN_INVERTED(1'b0),
    .IS_CLKIN_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle4_adv_inst
       (.CLKFBIN(NLW_plle4_adv_inst_CLKFBIN_UNCONNECTED),
        .CLKFBOUT(NLW_plle4_adv_inst_CLKFBOUT_UNCONNECTED),
        .CLKIN(clk_in1),
        .CLKOUT0(clk_out1),
        .CLKOUT0B(NLW_plle4_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_plle4_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_plle4_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUTPHY(NLW_plle4_adv_inst_CLKOUTPHY_UNCONNECTED),
        .CLKOUTPHYEN(1'b0),
        .DADDR({DADDR[5],1'b0,DADDR[4:0]}),
        .DCLK(s_axi_aclk),
        .DEN(DEN),
        .DI(DI),
        .DO({DO[12:6],dout[8:7],DO[5:4],dout[4],DO[3:0]}),
        .DRDY(drdy),
        .DWE(DWE),
        .LOCKED(plle4_adv_inst_0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module rfdc_ex_clk_wiz_adc1_0_clk_wiz_drp
   (clk_out1,
    plle4_adv_inst,
    config_reg,
    IP2Bus_WrAck,
    ip2bus_rdack_int1,
    D,
    \load_enable_reg_reg[13]_0 ,
    \bus2ip_addr_i_reg[6] ,
    \bus2ip_addr_i_reg[5] ,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[5]_1 ,
    \bus2ip_addr_i_reg[4] ,
    \bus2ip_addr_i_reg[2] ,
    \ram_clk_config_reg[28][17]_0 ,
    \clkout0_reg_reg[20]_0 ,
    \clkout0_reg_reg[14]_0 ,
    \ram_clk_config_reg[15][17]_0 ,
    \ram_clk_config_reg[14][17]_0 ,
    \ram_clk_config_reg[12][17]_0 ,
    \ram_clk_config_reg[25][17]_0 ,
    \ram_clk_config_reg[24][17]_0 ,
    \ram_clk_config_reg[31][17]_0 ,
    \ram_clk_config_reg[30][17]_0 ,
    \ram_clk_config_reg[29][17]_0 ,
    \bus2ip_addr_i_reg[5]_2 ,
    \bus2ip_addr_i_reg[5]_3 ,
    \bus2ip_addr_i_reg[6]_0 ,
    \bus2ip_addr_i_reg[6]_1 ,
    \bus2ip_addr_i_reg[5]_4 ,
    \bus2ip_addr_i_reg[5]_5 ,
    \bus2ip_addr_i_reg[6]_2 ,
    \bus2ip_addr_i_reg[6]_3 ,
    \bus2ip_addr_i_reg[6]_4 ,
    \bus2ip_addr_i_reg[6]_5 ,
    \bus2ip_addr_i_reg[5]_6 ,
    \bus2ip_addr_i_reg[5]_7 ,
    \bus2ip_addr_i_reg[6]_6 ,
    \bus2ip_addr_i_reg[6]_7 ,
    \bus2ip_addr_i_reg[6]_8 ,
    \ram_clk_config_reg[15][0]_0 ,
    \ram_clk_config_reg[11][0]_0 ,
    \bus2ip_addr_i_reg[4]_0 ,
    \ram_clk_config_reg[27][0]_0 ,
    \ram_clk_config_reg[31][0]_0 ,
    \ram_clk_config_reg[19][0]_0 ,
    \ram_clk_config_reg[23][0]_0 ,
    \interrupt_enable_reg_reg[15]_0 ,
    SRDY,
    clk_in1,
    s_axi_aclk,
    SR,
    load_enable_reg_d_reg_0,
    wrack_reg_10,
    bus2ip_wrce,
    rdack_reg_10,
    rst_ip2bus_rdack,
    dummy_local_reg_rdack,
    Q,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[16]_0 ,
    \ram_clk_config_reg[0][0]_0 ,
    s_axi_wdata,
    E,
    \ram_clk_config_reg[0][31]_0 ,
    \ram_clk_config_reg[0][31]_1 ,
    \clkout0_reg_reg[14]_1 ,
    \ram_clk_config_reg[2][31]_0 ,
    \ram_clk_config_reg[2][31]_1 ,
    \ram_clk_config_reg[5][31]_0 ,
    \load_enable_reg_reg[0]_0 ,
    \interrupt_enable_reg_reg[15]_1 ,
    \ram_clk_config_reg[1][0]_0 ,
    \ram_clk_config_reg[3][0]_0 ,
    \ram_clk_config_reg[4][31]_0 ,
    \ram_clk_config_reg[6][31]_0 ,
    \ram_clk_config_reg[7][31]_0 ,
    \ram_clk_config_reg[8][0]_0 ,
    \ram_clk_config_reg[9][31]_0 ,
    \ram_clk_config_reg[10][31]_0 ,
    \ram_clk_config_reg[11][31]_0 ,
    \ram_clk_config_reg[12][0]_0 ,
    \ram_clk_config_reg[13][31]_0 ,
    \ram_clk_config_reg[14][31]_0 ,
    \ram_clk_config_reg[15][0]_1 ,
    \ram_clk_config_reg[16][31]_0 ,
    \ram_clk_config_reg[17][31]_0 ,
    \ram_clk_config_reg[18][0]_0 ,
    \ram_clk_config_reg[19][0]_1 ,
    \ram_clk_config_reg[20][31]_0 ,
    \ram_clk_config_reg[21][31]_0 ,
    \ram_clk_config_reg[22][31]_0 ,
    \ram_clk_config_reg[23][0]_1 ,
    \ram_clk_config_reg[24][31]_0 ,
    \ram_clk_config_reg[25][31]_0 ,
    \ram_clk_config_reg[26][31]_0 ,
    \ram_clk_config_reg[27][31]_0 ,
    \ram_clk_config_reg[28][0]_0 ,
    \ram_clk_config_reg[29][31]_0 ,
    \ram_clk_config_reg[30][31]_0 ,
    \ram_clk_config_reg[31][31]_0 );
  output clk_out1;
  output plle4_adv_inst;
  output [1:0]config_reg;
  output IP2Bus_WrAck;
  output ip2bus_rdack_int1;
  output [13:0]D;
  output [15:0]\load_enable_reg_reg[13]_0 ;
  output \bus2ip_addr_i_reg[6] ;
  output \bus2ip_addr_i_reg[5] ;
  output \bus2ip_addr_i_reg[5]_0 ;
  output \bus2ip_addr_i_reg[5]_1 ;
  output \bus2ip_addr_i_reg[4] ;
  output \bus2ip_addr_i_reg[2] ;
  output \ram_clk_config_reg[28][17]_0 ;
  output \clkout0_reg_reg[20]_0 ;
  output [17:0]\clkout0_reg_reg[14]_0 ;
  output [0:0]\ram_clk_config_reg[15][17]_0 ;
  output [0:0]\ram_clk_config_reg[14][17]_0 ;
  output [0:0]\ram_clk_config_reg[12][17]_0 ;
  output [0:0]\ram_clk_config_reg[25][17]_0 ;
  output [0:0]\ram_clk_config_reg[24][17]_0 ;
  output [0:0]\ram_clk_config_reg[31][17]_0 ;
  output [0:0]\ram_clk_config_reg[30][17]_0 ;
  output [0:0]\ram_clk_config_reg[29][17]_0 ;
  output \bus2ip_addr_i_reg[5]_2 ;
  output \bus2ip_addr_i_reg[5]_3 ;
  output \bus2ip_addr_i_reg[6]_0 ;
  output \bus2ip_addr_i_reg[6]_1 ;
  output \bus2ip_addr_i_reg[5]_4 ;
  output \bus2ip_addr_i_reg[5]_5 ;
  output \bus2ip_addr_i_reg[6]_2 ;
  output \bus2ip_addr_i_reg[6]_3 ;
  output \bus2ip_addr_i_reg[6]_4 ;
  output \bus2ip_addr_i_reg[6]_5 ;
  output \bus2ip_addr_i_reg[5]_6 ;
  output \bus2ip_addr_i_reg[5]_7 ;
  output \bus2ip_addr_i_reg[6]_6 ;
  output \bus2ip_addr_i_reg[6]_7 ;
  output \bus2ip_addr_i_reg[6]_8 ;
  output \ram_clk_config_reg[15][0]_0 ;
  output \ram_clk_config_reg[11][0]_0 ;
  output \bus2ip_addr_i_reg[4]_0 ;
  output \ram_clk_config_reg[27][0]_0 ;
  output \ram_clk_config_reg[31][0]_0 ;
  output \ram_clk_config_reg[19][0]_0 ;
  output \ram_clk_config_reg[23][0]_0 ;
  output [15:0]\interrupt_enable_reg_reg[15]_0 ;
  output SRDY;
  input clk_in1;
  input s_axi_aclk;
  input [0:0]SR;
  input load_enable_reg_d_reg_0;
  input wrack_reg_10;
  input [0:0]bus2ip_wrce;
  input rdack_reg_10;
  input rst_ip2bus_rdack;
  input dummy_local_reg_rdack;
  input [4:0]Q;
  input \s_axi_rdata_i_reg[16] ;
  input \s_axi_rdata_i_reg[16]_0 ;
  input \ram_clk_config_reg[0][0]_0 ;
  input [31:0]s_axi_wdata;
  input [0:0]E;
  input [0:0]\ram_clk_config_reg[0][31]_0 ;
  input [4:0]\ram_clk_config_reg[0][31]_1 ;
  input [0:0]\clkout0_reg_reg[14]_1 ;
  input [0:0]\ram_clk_config_reg[2][31]_0 ;
  input [31:0]\ram_clk_config_reg[2][31]_1 ;
  input [0:0]\ram_clk_config_reg[5][31]_0 ;
  input [0:0]\load_enable_reg_reg[0]_0 ;
  input [0:0]\interrupt_enable_reg_reg[15]_1 ;
  input [0:0]\ram_clk_config_reg[1][0]_0 ;
  input [0:0]\ram_clk_config_reg[3][0]_0 ;
  input [0:0]\ram_clk_config_reg[4][31]_0 ;
  input [0:0]\ram_clk_config_reg[6][31]_0 ;
  input [0:0]\ram_clk_config_reg[7][31]_0 ;
  input [0:0]\ram_clk_config_reg[8][0]_0 ;
  input [0:0]\ram_clk_config_reg[9][31]_0 ;
  input [0:0]\ram_clk_config_reg[10][31]_0 ;
  input [0:0]\ram_clk_config_reg[11][31]_0 ;
  input [0:0]\ram_clk_config_reg[12][0]_0 ;
  input [0:0]\ram_clk_config_reg[13][31]_0 ;
  input [0:0]\ram_clk_config_reg[14][31]_0 ;
  input [0:0]\ram_clk_config_reg[15][0]_1 ;
  input [0:0]\ram_clk_config_reg[16][31]_0 ;
  input [0:0]\ram_clk_config_reg[17][31]_0 ;
  input [0:0]\ram_clk_config_reg[18][0]_0 ;
  input [0:0]\ram_clk_config_reg[19][0]_1 ;
  input [0:0]\ram_clk_config_reg[20][31]_0 ;
  input [0:0]\ram_clk_config_reg[21][31]_0 ;
  input [0:0]\ram_clk_config_reg[22][31]_0 ;
  input [0:0]\ram_clk_config_reg[23][0]_1 ;
  input [0:0]\ram_clk_config_reg[24][31]_0 ;
  input [0:0]\ram_clk_config_reg[25][31]_0 ;
  input [0:0]\ram_clk_config_reg[26][31]_0 ;
  input [0:0]\ram_clk_config_reg[27][31]_0 ;
  input [0:0]\ram_clk_config_reg[28][0]_0 ;
  input [0:0]\ram_clk_config_reg[29][31]_0 ;
  input [0:0]\ram_clk_config_reg[30][31]_0 ;
  input [0:0]\ram_clk_config_reg[31][31]_0 ;

  wire [13:0]D;
  wire [0:0]E;
  wire IP2Bus_RdAck;
  wire IP2Bus_RdAck0;
  wire IP2Bus_WrAck;
  wire IP2Bus_WrAck0;
  wire [4:0]Q;
  wire RST_MMCM_PLL_i_1_n_0;
  wire [7:0]S2_CLKFBOUT_MULT;
  wire SEN;
  wire SEN0;
  wire [0:0]SR;
  wire SRDY;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[4] ;
  wire \bus2ip_addr_i_reg[4]_0 ;
  wire \bus2ip_addr_i_reg[5] ;
  wire \bus2ip_addr_i_reg[5]_0 ;
  wire \bus2ip_addr_i_reg[5]_1 ;
  wire \bus2ip_addr_i_reg[5]_2 ;
  wire \bus2ip_addr_i_reg[5]_3 ;
  wire \bus2ip_addr_i_reg[5]_4 ;
  wire \bus2ip_addr_i_reg[5]_5 ;
  wire \bus2ip_addr_i_reg[5]_6 ;
  wire \bus2ip_addr_i_reg[5]_7 ;
  wire \bus2ip_addr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[6]_0 ;
  wire \bus2ip_addr_i_reg[6]_1 ;
  wire \bus2ip_addr_i_reg[6]_2 ;
  wire \bus2ip_addr_i_reg[6]_3 ;
  wire \bus2ip_addr_i_reg[6]_4 ;
  wire \bus2ip_addr_i_reg[6]_5 ;
  wire \bus2ip_addr_i_reg[6]_6 ;
  wire \bus2ip_addr_i_reg[6]_7 ;
  wire \bus2ip_addr_i_reg[6]_8 ;
  wire [0:0]bus2ip_wrce;
  wire clk_in1;
  wire clk_out1;
  wire \clkfbout_reg_reg_n_0_[10] ;
  wire \clkfbout_reg_reg_n_0_[11] ;
  wire \clkfbout_reg_reg_n_0_[12] ;
  wire \clkfbout_reg_reg_n_0_[13] ;
  wire \clkfbout_reg_reg_n_0_[14] ;
  wire \clkfbout_reg_reg_n_0_[15] ;
  wire \clkfbout_reg_reg_n_0_[16] ;
  wire \clkfbout_reg_reg_n_0_[17] ;
  wire \clkfbout_reg_reg_n_0_[18] ;
  wire \clkfbout_reg_reg_n_0_[19] ;
  wire \clkfbout_reg_reg_n_0_[20] ;
  wire \clkfbout_reg_reg_n_0_[21] ;
  wire \clkfbout_reg_reg_n_0_[22] ;
  wire \clkfbout_reg_reg_n_0_[23] ;
  wire \clkfbout_reg_reg_n_0_[24] ;
  wire \clkfbout_reg_reg_n_0_[25] ;
  wire \clkfbout_reg_reg_n_0_[26] ;
  wire \clkfbout_reg_reg_n_0_[27] ;
  wire \clkfbout_reg_reg_n_0_[28] ;
  wire \clkfbout_reg_reg_n_0_[29] ;
  wire \clkfbout_reg_reg_n_0_[30] ;
  wire \clkfbout_reg_reg_n_0_[31] ;
  wire \clkfbout_reg_reg_n_0_[6] ;
  wire \clkfbout_reg_reg_n_0_[7] ;
  wire \clkfbout_reg_reg_n_0_[8] ;
  wire \clkfbout_reg_reg_n_0_[9] ;
  wire [17:0]\clkout0_reg_reg[14]_0 ;
  wire [0:0]\clkout0_reg_reg[14]_1 ;
  wire \clkout0_reg_reg[20]_0 ;
  wire [1:0]config_reg;
  wire [0:15]config_reg__0;
  wire [6:0]daddr;
  wire den;
  wire [15:0]din;
  wire [15:0]dout;
  wire drdy;
  wire dummy_local_reg_rdack;
  wire dwe;
  wire [15:0]\interrupt_enable_reg_reg[15]_0 ;
  wire [0:0]\interrupt_enable_reg_reg[15]_1 ;
  wire ip2bus_rdack_int1;
  wire load_enable_reg_actual;
  wire load_enable_reg_d_reg_0;
  wire [0:0]\load_enable_reg_reg[0]_0 ;
  wire [15:0]\load_enable_reg_reg[13]_0 ;
  wire [3:0]p_0_in;
  wire [11:7]p_2_in;
  wire [11:7]p_4_in;
  wire plle4_adv_inst;
  wire \ram_clk_config[0][0]_i_1_n_0 ;
  wire \ram_clk_config[0][10]_i_1_n_0 ;
  wire \ram_clk_config[0][11]_i_1_n_0 ;
  wire \ram_clk_config[0][12]_i_1_n_0 ;
  wire \ram_clk_config[0][13]_i_1_n_0 ;
  wire \ram_clk_config[0][14]_i_1_n_0 ;
  wire \ram_clk_config[0][15]_i_1_n_0 ;
  wire \ram_clk_config[0][16]_i_1_n_0 ;
  wire \ram_clk_config[0][17]_i_1_n_0 ;
  wire \ram_clk_config[0][18]_i_1_n_0 ;
  wire \ram_clk_config[0][19]_i_1_n_0 ;
  wire \ram_clk_config[0][1]_i_1_n_0 ;
  wire \ram_clk_config[0][20]_i_1_n_0 ;
  wire \ram_clk_config[0][21]_i_1_n_0 ;
  wire \ram_clk_config[0][22]_i_1_n_0 ;
  wire \ram_clk_config[0][23]_i_1_n_0 ;
  wire \ram_clk_config[0][24]_i_1_n_0 ;
  wire \ram_clk_config[0][25]_i_1_n_0 ;
  wire \ram_clk_config[0][26]_i_1_n_0 ;
  wire \ram_clk_config[0][26]_i_2_n_0 ;
  wire \ram_clk_config[0][26]_i_3_n_0 ;
  wire \ram_clk_config[0][2]_i_1_n_0 ;
  wire \ram_clk_config[0][3]_i_1_n_0 ;
  wire \ram_clk_config[0][4]_i_1_n_0 ;
  wire \ram_clk_config[0][5]_i_1_n_0 ;
  wire \ram_clk_config[0][6]_i_1_n_0 ;
  wire \ram_clk_config[0][7]_i_1_n_0 ;
  wire \ram_clk_config[0][8]_i_1_n_0 ;
  wire \ram_clk_config[0][9]_i_1_n_0 ;
  wire \ram_clk_config[2][18]_i_3_n_0 ;
  wire \ram_clk_config_reg[0][0]_0 ;
  wire [0:0]\ram_clk_config_reg[0][31]_0 ;
  wire [4:0]\ram_clk_config_reg[0][31]_1 ;
  wire [0:0]\ram_clk_config_reg[10][31]_0 ;
  wire [31:0]\ram_clk_config_reg[10]_7 ;
  wire \ram_clk_config_reg[11][0]_0 ;
  wire [0:0]\ram_clk_config_reg[11][31]_0 ;
  wire [31:0]\ram_clk_config_reg[11]_8 ;
  wire [0:0]\ram_clk_config_reg[12][0]_0 ;
  wire [0:0]\ram_clk_config_reg[12][17]_0 ;
  wire [31:0]\ram_clk_config_reg[12]_9 ;
  wire [0:0]\ram_clk_config_reg[13][31]_0 ;
  wire [31:0]\ram_clk_config_reg[13]_10 ;
  wire [0:0]\ram_clk_config_reg[14][17]_0 ;
  wire [0:0]\ram_clk_config_reg[14][31]_0 ;
  wire [31:0]\ram_clk_config_reg[14]_11 ;
  wire \ram_clk_config_reg[15][0]_0 ;
  wire [0:0]\ram_clk_config_reg[15][0]_1 ;
  wire [0:0]\ram_clk_config_reg[15][17]_0 ;
  wire [31:0]\ram_clk_config_reg[15]_12 ;
  wire [0:0]\ram_clk_config_reg[16][31]_0 ;
  wire [31:0]\ram_clk_config_reg[16]_13 ;
  wire [0:0]\ram_clk_config_reg[17][31]_0 ;
  wire [31:0]\ram_clk_config_reg[17]_14 ;
  wire [0:0]\ram_clk_config_reg[18][0]_0 ;
  wire [31:0]\ram_clk_config_reg[18]_15 ;
  wire \ram_clk_config_reg[19][0]_0 ;
  wire [0:0]\ram_clk_config_reg[19][0]_1 ;
  wire [31:0]\ram_clk_config_reg[19]_16 ;
  wire [0:0]\ram_clk_config_reg[1][0]_0 ;
  wire [31:0]\ram_clk_config_reg[1]_0 ;
  wire [0:0]\ram_clk_config_reg[20][31]_0 ;
  wire [31:0]\ram_clk_config_reg[20]_17 ;
  wire [0:0]\ram_clk_config_reg[21][31]_0 ;
  wire [31:0]\ram_clk_config_reg[21]_18 ;
  wire [0:0]\ram_clk_config_reg[22][31]_0 ;
  wire [31:0]\ram_clk_config_reg[22]_19 ;
  wire \ram_clk_config_reg[23][0]_0 ;
  wire [0:0]\ram_clk_config_reg[23][0]_1 ;
  wire [31:0]\ram_clk_config_reg[23]_20 ;
  wire [0:0]\ram_clk_config_reg[24][17]_0 ;
  wire [0:0]\ram_clk_config_reg[24][31]_0 ;
  wire [31:0]\ram_clk_config_reg[24]_21 ;
  wire [0:0]\ram_clk_config_reg[25][17]_0 ;
  wire [0:0]\ram_clk_config_reg[25][31]_0 ;
  wire [31:0]\ram_clk_config_reg[25]_22 ;
  wire [0:0]\ram_clk_config_reg[26][31]_0 ;
  wire [31:0]\ram_clk_config_reg[26]_23 ;
  wire \ram_clk_config_reg[27][0]_0 ;
  wire [0:0]\ram_clk_config_reg[27][31]_0 ;
  wire [31:0]\ram_clk_config_reg[27]_24 ;
  wire [0:0]\ram_clk_config_reg[28][0]_0 ;
  wire \ram_clk_config_reg[28][17]_0 ;
  wire [31:0]\ram_clk_config_reg[28]_25 ;
  wire [0:0]\ram_clk_config_reg[29][17]_0 ;
  wire [0:0]\ram_clk_config_reg[29][31]_0 ;
  wire [31:0]\ram_clk_config_reg[29]_26 ;
  wire [0:0]\ram_clk_config_reg[2][31]_0 ;
  wire [31:0]\ram_clk_config_reg[2][31]_1 ;
  wire [0:0]\ram_clk_config_reg[30][17]_0 ;
  wire [0:0]\ram_clk_config_reg[30][31]_0 ;
  wire [31:0]\ram_clk_config_reg[30]_27 ;
  wire \ram_clk_config_reg[31][0]_0 ;
  wire [0:0]\ram_clk_config_reg[31][17]_0 ;
  wire [0:0]\ram_clk_config_reg[31][31]_0 ;
  wire [31:0]\ram_clk_config_reg[31]_28 ;
  wire [0:0]\ram_clk_config_reg[3][0]_0 ;
  wire [31:0]\ram_clk_config_reg[3]_1 ;
  wire [0:0]\ram_clk_config_reg[4][31]_0 ;
  wire [31:0]\ram_clk_config_reg[4]_2 ;
  wire [0:0]\ram_clk_config_reg[5][31]_0 ;
  wire [0:0]\ram_clk_config_reg[6][31]_0 ;
  wire [31:0]\ram_clk_config_reg[6]_3 ;
  wire [0:0]\ram_clk_config_reg[7][31]_0 ;
  wire [31:0]\ram_clk_config_reg[7]_4 ;
  wire [0:0]\ram_clk_config_reg[8][0]_0 ;
  wire [31:0]\ram_clk_config_reg[8]_5 ;
  wire [0:0]\ram_clk_config_reg[9][31]_0 ;
  wire [31:0]\ram_clk_config_reg[9]_6 ;
  wire \ram_clk_config_reg_n_0_[0][0] ;
  wire \ram_clk_config_reg_n_0_[0][16] ;
  wire \ram_clk_config_reg_n_0_[0][17] ;
  wire \ram_clk_config_reg_n_0_[0][18] ;
  wire \ram_clk_config_reg_n_0_[0][19] ;
  wire \ram_clk_config_reg_n_0_[0][1] ;
  wire \ram_clk_config_reg_n_0_[0][20] ;
  wire \ram_clk_config_reg_n_0_[0][21] ;
  wire \ram_clk_config_reg_n_0_[0][22] ;
  wire \ram_clk_config_reg_n_0_[0][23] ;
  wire \ram_clk_config_reg_n_0_[0][24] ;
  wire \ram_clk_config_reg_n_0_[0][25] ;
  wire \ram_clk_config_reg_n_0_[0][26] ;
  wire \ram_clk_config_reg_n_0_[0][27] ;
  wire \ram_clk_config_reg_n_0_[0][28] ;
  wire \ram_clk_config_reg_n_0_[0][29] ;
  wire \ram_clk_config_reg_n_0_[0][30] ;
  wire \ram_clk_config_reg_n_0_[0][31] ;
  wire \ram_clk_config_reg_n_0_[0][7] ;
  wire \ram_clk_config_reg_n_0_[2][0] ;
  wire \ram_clk_config_reg_n_0_[2][10] ;
  wire \ram_clk_config_reg_n_0_[2][11] ;
  wire \ram_clk_config_reg_n_0_[2][12] ;
  wire \ram_clk_config_reg_n_0_[2][13] ;
  wire \ram_clk_config_reg_n_0_[2][14] ;
  wire \ram_clk_config_reg_n_0_[2][15] ;
  wire \ram_clk_config_reg_n_0_[2][16] ;
  wire \ram_clk_config_reg_n_0_[2][17] ;
  wire \ram_clk_config_reg_n_0_[2][18] ;
  wire \ram_clk_config_reg_n_0_[2][19] ;
  wire \ram_clk_config_reg_n_0_[2][1] ;
  wire \ram_clk_config_reg_n_0_[2][20] ;
  wire \ram_clk_config_reg_n_0_[2][21] ;
  wire \ram_clk_config_reg_n_0_[2][22] ;
  wire \ram_clk_config_reg_n_0_[2][23] ;
  wire \ram_clk_config_reg_n_0_[2][24] ;
  wire \ram_clk_config_reg_n_0_[2][25] ;
  wire \ram_clk_config_reg_n_0_[2][26] ;
  wire \ram_clk_config_reg_n_0_[2][27] ;
  wire \ram_clk_config_reg_n_0_[2][28] ;
  wire \ram_clk_config_reg_n_0_[2][29] ;
  wire \ram_clk_config_reg_n_0_[2][2] ;
  wire \ram_clk_config_reg_n_0_[2][30] ;
  wire \ram_clk_config_reg_n_0_[2][31] ;
  wire \ram_clk_config_reg_n_0_[2][3] ;
  wire \ram_clk_config_reg_n_0_[2][4] ;
  wire \ram_clk_config_reg_n_0_[2][5] ;
  wire \ram_clk_config_reg_n_0_[2][6] ;
  wire \ram_clk_config_reg_n_0_[2][7] ;
  wire \ram_clk_config_reg_n_0_[2][8] ;
  wire \ram_clk_config_reg_n_0_[2][9] ;
  wire \ram_clk_config_reg_n_0_[5][0] ;
  wire \ram_clk_config_reg_n_0_[5][10] ;
  wire \ram_clk_config_reg_n_0_[5][11] ;
  wire \ram_clk_config_reg_n_0_[5][12] ;
  wire \ram_clk_config_reg_n_0_[5][13] ;
  wire \ram_clk_config_reg_n_0_[5][14] ;
  wire \ram_clk_config_reg_n_0_[5][15] ;
  wire \ram_clk_config_reg_n_0_[5][16] ;
  wire \ram_clk_config_reg_n_0_[5][17] ;
  wire \ram_clk_config_reg_n_0_[5][18] ;
  wire \ram_clk_config_reg_n_0_[5][19] ;
  wire \ram_clk_config_reg_n_0_[5][1] ;
  wire \ram_clk_config_reg_n_0_[5][20] ;
  wire \ram_clk_config_reg_n_0_[5][21] ;
  wire \ram_clk_config_reg_n_0_[5][22] ;
  wire \ram_clk_config_reg_n_0_[5][23] ;
  wire \ram_clk_config_reg_n_0_[5][24] ;
  wire \ram_clk_config_reg_n_0_[5][25] ;
  wire \ram_clk_config_reg_n_0_[5][26] ;
  wire \ram_clk_config_reg_n_0_[5][27] ;
  wire \ram_clk_config_reg_n_0_[5][28] ;
  wire \ram_clk_config_reg_n_0_[5][29] ;
  wire \ram_clk_config_reg_n_0_[5][30] ;
  wire \ram_clk_config_reg_n_0_[5][31] ;
  wire \ram_clk_config_reg_n_0_[5][7] ;
  wire \ram_clk_config_reg_n_0_[5][8] ;
  wire \ram_clk_config_reg_n_0_[5][9] ;
  wire rdack_reg_1;
  wire rdack_reg_10;
  wire rdack_reg_2;
  wire reset;
  wire rst_ip2bus_rdack;
  wire s_axi_aclk;
  wire \s_axi_rdata_i[0]_i_16_n_0 ;
  wire \s_axi_rdata_i[0]_i_17_n_0 ;
  wire \s_axi_rdata_i[10]_i_10_n_0 ;
  wire \s_axi_rdata_i[10]_i_11_n_0 ;
  wire \s_axi_rdata_i[10]_i_12_n_0 ;
  wire \s_axi_rdata_i[10]_i_13_n_0 ;
  wire \s_axi_rdata_i[10]_i_14_n_0 ;
  wire \s_axi_rdata_i[10]_i_15_n_0 ;
  wire \s_axi_rdata_i[10]_i_8_n_0 ;
  wire \s_axi_rdata_i[10]_i_9_n_0 ;
  wire \s_axi_rdata_i[11]_i_10_n_0 ;
  wire \s_axi_rdata_i[11]_i_11_n_0 ;
  wire \s_axi_rdata_i[11]_i_12_n_0 ;
  wire \s_axi_rdata_i[11]_i_13_n_0 ;
  wire \s_axi_rdata_i[11]_i_14_n_0 ;
  wire \s_axi_rdata_i[11]_i_7_n_0 ;
  wire \s_axi_rdata_i[11]_i_8_n_0 ;
  wire \s_axi_rdata_i[11]_i_9_n_0 ;
  wire \s_axi_rdata_i[12]_i_10_n_0 ;
  wire \s_axi_rdata_i[12]_i_11_n_0 ;
  wire \s_axi_rdata_i[12]_i_12_n_0 ;
  wire \s_axi_rdata_i[12]_i_13_n_0 ;
  wire \s_axi_rdata_i[12]_i_14_n_0 ;
  wire \s_axi_rdata_i[12]_i_7_n_0 ;
  wire \s_axi_rdata_i[12]_i_8_n_0 ;
  wire \s_axi_rdata_i[12]_i_9_n_0 ;
  wire \s_axi_rdata_i[13]_i_10_n_0 ;
  wire \s_axi_rdata_i[13]_i_11_n_0 ;
  wire \s_axi_rdata_i[13]_i_12_n_0 ;
  wire \s_axi_rdata_i[13]_i_13_n_0 ;
  wire \s_axi_rdata_i[13]_i_14_n_0 ;
  wire \s_axi_rdata_i[13]_i_15_n_0 ;
  wire \s_axi_rdata_i[13]_i_16_n_0 ;
  wire \s_axi_rdata_i[13]_i_9_n_0 ;
  wire \s_axi_rdata_i[14]_i_10_n_0 ;
  wire \s_axi_rdata_i[14]_i_11_n_0 ;
  wire \s_axi_rdata_i[14]_i_12_n_0 ;
  wire \s_axi_rdata_i[14]_i_13_n_0 ;
  wire \s_axi_rdata_i[14]_i_14_n_0 ;
  wire \s_axi_rdata_i[14]_i_7_n_0 ;
  wire \s_axi_rdata_i[14]_i_8_n_0 ;
  wire \s_axi_rdata_i[14]_i_9_n_0 ;
  wire \s_axi_rdata_i[15]_i_11_n_0 ;
  wire \s_axi_rdata_i[15]_i_12_n_0 ;
  wire \s_axi_rdata_i[15]_i_13_n_0 ;
  wire \s_axi_rdata_i[15]_i_14_n_0 ;
  wire \s_axi_rdata_i[15]_i_15_n_0 ;
  wire \s_axi_rdata_i[15]_i_16_n_0 ;
  wire \s_axi_rdata_i[15]_i_17_n_0 ;
  wire \s_axi_rdata_i[15]_i_18_n_0 ;
  wire \s_axi_rdata_i[16]_i_10_n_0 ;
  wire \s_axi_rdata_i[16]_i_11_n_0 ;
  wire \s_axi_rdata_i[16]_i_12_n_0 ;
  wire \s_axi_rdata_i[16]_i_13_n_0 ;
  wire \s_axi_rdata_i[16]_i_14_n_0 ;
  wire \s_axi_rdata_i[16]_i_15_n_0 ;
  wire \s_axi_rdata_i[16]_i_8_n_0 ;
  wire \s_axi_rdata_i[16]_i_9_n_0 ;
  wire \s_axi_rdata_i[17]_i_12_n_0 ;
  wire \s_axi_rdata_i[17]_i_13_n_0 ;
  wire \s_axi_rdata_i[17]_i_14_n_0 ;
  wire \s_axi_rdata_i[17]_i_4_n_0 ;
  wire \s_axi_rdata_i[17]_i_5_n_0 ;
  wire \s_axi_rdata_i[18]_i_10_n_0 ;
  wire \s_axi_rdata_i[18]_i_11_n_0 ;
  wire \s_axi_rdata_i[18]_i_12_n_0 ;
  wire \s_axi_rdata_i[18]_i_13_n_0 ;
  wire \s_axi_rdata_i[18]_i_14_n_0 ;
  wire \s_axi_rdata_i[18]_i_15_n_0 ;
  wire \s_axi_rdata_i[18]_i_8_n_0 ;
  wire \s_axi_rdata_i[18]_i_9_n_0 ;
  wire \s_axi_rdata_i[19]_i_10_n_0 ;
  wire \s_axi_rdata_i[19]_i_11_n_0 ;
  wire \s_axi_rdata_i[19]_i_12_n_0 ;
  wire \s_axi_rdata_i[19]_i_13_n_0 ;
  wire \s_axi_rdata_i[19]_i_14_n_0 ;
  wire \s_axi_rdata_i[19]_i_15_n_0 ;
  wire \s_axi_rdata_i[19]_i_8_n_0 ;
  wire \s_axi_rdata_i[19]_i_9_n_0 ;
  wire \s_axi_rdata_i[1]_i_10_n_0 ;
  wire \s_axi_rdata_i[1]_i_11_n_0 ;
  wire \s_axi_rdata_i[1]_i_12_n_0 ;
  wire \s_axi_rdata_i[1]_i_13_n_0 ;
  wire \s_axi_rdata_i[1]_i_14_n_0 ;
  wire \s_axi_rdata_i[1]_i_15_n_0 ;
  wire \s_axi_rdata_i[1]_i_8_n_0 ;
  wire \s_axi_rdata_i[1]_i_9_n_0 ;
  wire \s_axi_rdata_i[20]_i_10_n_0 ;
  wire \s_axi_rdata_i[20]_i_11_n_0 ;
  wire \s_axi_rdata_i[20]_i_12_n_0 ;
  wire \s_axi_rdata_i[20]_i_13_n_0 ;
  wire \s_axi_rdata_i[20]_i_14_n_0 ;
  wire \s_axi_rdata_i[20]_i_15_n_0 ;
  wire \s_axi_rdata_i[20]_i_8_n_0 ;
  wire \s_axi_rdata_i[20]_i_9_n_0 ;
  wire \s_axi_rdata_i[21]_i_10_n_0 ;
  wire \s_axi_rdata_i[21]_i_11_n_0 ;
  wire \s_axi_rdata_i[21]_i_12_n_0 ;
  wire \s_axi_rdata_i[21]_i_13_n_0 ;
  wire \s_axi_rdata_i[21]_i_14_n_0 ;
  wire \s_axi_rdata_i[21]_i_15_n_0 ;
  wire \s_axi_rdata_i[21]_i_8_n_0 ;
  wire \s_axi_rdata_i[21]_i_9_n_0 ;
  wire \s_axi_rdata_i[22]_i_10_n_0 ;
  wire \s_axi_rdata_i[22]_i_11_n_0 ;
  wire \s_axi_rdata_i[22]_i_12_n_0 ;
  wire \s_axi_rdata_i[22]_i_13_n_0 ;
  wire \s_axi_rdata_i[22]_i_14_n_0 ;
  wire \s_axi_rdata_i[22]_i_15_n_0 ;
  wire \s_axi_rdata_i[22]_i_8_n_0 ;
  wire \s_axi_rdata_i[22]_i_9_n_0 ;
  wire \s_axi_rdata_i[23]_i_10_n_0 ;
  wire \s_axi_rdata_i[23]_i_11_n_0 ;
  wire \s_axi_rdata_i[23]_i_12_n_0 ;
  wire \s_axi_rdata_i[23]_i_13_n_0 ;
  wire \s_axi_rdata_i[23]_i_14_n_0 ;
  wire \s_axi_rdata_i[23]_i_2_n_0 ;
  wire \s_axi_rdata_i[23]_i_4_n_0 ;
  wire \s_axi_rdata_i[23]_i_5_n_0 ;
  wire \s_axi_rdata_i[23]_i_9_n_0 ;
  wire \s_axi_rdata_i[24]_i_10_n_0 ;
  wire \s_axi_rdata_i[24]_i_11_n_0 ;
  wire \s_axi_rdata_i[24]_i_12_n_0 ;
  wire \s_axi_rdata_i[24]_i_13_n_0 ;
  wire \s_axi_rdata_i[24]_i_14_n_0 ;
  wire \s_axi_rdata_i[24]_i_15_n_0 ;
  wire \s_axi_rdata_i[24]_i_8_n_0 ;
  wire \s_axi_rdata_i[24]_i_9_n_0 ;
  wire \s_axi_rdata_i[25]_i_10_n_0 ;
  wire \s_axi_rdata_i[25]_i_11_n_0 ;
  wire \s_axi_rdata_i[25]_i_12_n_0 ;
  wire \s_axi_rdata_i[25]_i_13_n_0 ;
  wire \s_axi_rdata_i[25]_i_14_n_0 ;
  wire \s_axi_rdata_i[25]_i_15_n_0 ;
  wire \s_axi_rdata_i[25]_i_8_n_0 ;
  wire \s_axi_rdata_i[25]_i_9_n_0 ;
  wire \s_axi_rdata_i[26]_i_10_n_0 ;
  wire \s_axi_rdata_i[26]_i_11_n_0 ;
  wire \s_axi_rdata_i[26]_i_12_n_0 ;
  wire \s_axi_rdata_i[26]_i_13_n_0 ;
  wire \s_axi_rdata_i[26]_i_14_n_0 ;
  wire \s_axi_rdata_i[26]_i_15_n_0 ;
  wire \s_axi_rdata_i[26]_i_8_n_0 ;
  wire \s_axi_rdata_i[26]_i_9_n_0 ;
  wire \s_axi_rdata_i[27]_i_10_n_0 ;
  wire \s_axi_rdata_i[27]_i_11_n_0 ;
  wire \s_axi_rdata_i[27]_i_12_n_0 ;
  wire \s_axi_rdata_i[27]_i_13_n_0 ;
  wire \s_axi_rdata_i[27]_i_14_n_0 ;
  wire \s_axi_rdata_i[27]_i_15_n_0 ;
  wire \s_axi_rdata_i[27]_i_8_n_0 ;
  wire \s_axi_rdata_i[27]_i_9_n_0 ;
  wire \s_axi_rdata_i[28]_i_10_n_0 ;
  wire \s_axi_rdata_i[28]_i_11_n_0 ;
  wire \s_axi_rdata_i[28]_i_12_n_0 ;
  wire \s_axi_rdata_i[28]_i_13_n_0 ;
  wire \s_axi_rdata_i[28]_i_14_n_0 ;
  wire \s_axi_rdata_i[28]_i_15_n_0 ;
  wire \s_axi_rdata_i[28]_i_8_n_0 ;
  wire \s_axi_rdata_i[28]_i_9_n_0 ;
  wire \s_axi_rdata_i[29]_i_10_n_0 ;
  wire \s_axi_rdata_i[29]_i_11_n_0 ;
  wire \s_axi_rdata_i[29]_i_12_n_0 ;
  wire \s_axi_rdata_i[29]_i_13_n_0 ;
  wire \s_axi_rdata_i[29]_i_14_n_0 ;
  wire \s_axi_rdata_i[29]_i_15_n_0 ;
  wire \s_axi_rdata_i[29]_i_8_n_0 ;
  wire \s_axi_rdata_i[29]_i_9_n_0 ;
  wire \s_axi_rdata_i[2]_i_10_n_0 ;
  wire \s_axi_rdata_i[2]_i_11_n_0 ;
  wire \s_axi_rdata_i[2]_i_12_n_0 ;
  wire \s_axi_rdata_i[2]_i_13_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_6_n_0 ;
  wire \s_axi_rdata_i[2]_i_7_n_0 ;
  wire \s_axi_rdata_i[2]_i_8_n_0 ;
  wire \s_axi_rdata_i[2]_i_9_n_0 ;
  wire \s_axi_rdata_i[30]_i_10_n_0 ;
  wire \s_axi_rdata_i[30]_i_11_n_0 ;
  wire \s_axi_rdata_i[30]_i_12_n_0 ;
  wire \s_axi_rdata_i[30]_i_13_n_0 ;
  wire \s_axi_rdata_i[30]_i_14_n_0 ;
  wire \s_axi_rdata_i[30]_i_15_n_0 ;
  wire \s_axi_rdata_i[30]_i_8_n_0 ;
  wire \s_axi_rdata_i[30]_i_9_n_0 ;
  wire \s_axi_rdata_i[31]_i_18_n_0 ;
  wire \s_axi_rdata_i[31]_i_19_n_0 ;
  wire \s_axi_rdata_i[31]_i_20_n_0 ;
  wire \s_axi_rdata_i[31]_i_21_n_0 ;
  wire \s_axi_rdata_i[31]_i_22_n_0 ;
  wire \s_axi_rdata_i[31]_i_23_n_0 ;
  wire \s_axi_rdata_i[31]_i_24_n_0 ;
  wire \s_axi_rdata_i[31]_i_25_n_0 ;
  wire \s_axi_rdata_i[31]_i_2_n_0 ;
  wire \s_axi_rdata_i[31]_i_5_n_0 ;
  wire \s_axi_rdata_i[3]_i_10_n_0 ;
  wire \s_axi_rdata_i[3]_i_11_n_0 ;
  wire \s_axi_rdata_i[3]_i_12_n_0 ;
  wire \s_axi_rdata_i[3]_i_13_n_0 ;
  wire \s_axi_rdata_i[3]_i_14_n_0 ;
  wire \s_axi_rdata_i[3]_i_7_n_0 ;
  wire \s_axi_rdata_i[3]_i_8_n_0 ;
  wire \s_axi_rdata_i[3]_i_9_n_0 ;
  wire \s_axi_rdata_i[4]_i_10_n_0 ;
  wire \s_axi_rdata_i[4]_i_11_n_0 ;
  wire \s_axi_rdata_i[4]_i_12_n_0 ;
  wire \s_axi_rdata_i[4]_i_13_n_0 ;
  wire \s_axi_rdata_i[4]_i_14_n_0 ;
  wire \s_axi_rdata_i[4]_i_7_n_0 ;
  wire \s_axi_rdata_i[4]_i_8_n_0 ;
  wire \s_axi_rdata_i[4]_i_9_n_0 ;
  wire \s_axi_rdata_i[5]_i_10_n_0 ;
  wire \s_axi_rdata_i[5]_i_11_n_0 ;
  wire \s_axi_rdata_i[5]_i_12_n_0 ;
  wire \s_axi_rdata_i[5]_i_13_n_0 ;
  wire \s_axi_rdata_i[5]_i_14_n_0 ;
  wire \s_axi_rdata_i[5]_i_7_n_0 ;
  wire \s_axi_rdata_i[5]_i_8_n_0 ;
  wire \s_axi_rdata_i[5]_i_9_n_0 ;
  wire \s_axi_rdata_i[6]_i_10_n_0 ;
  wire \s_axi_rdata_i[6]_i_11_n_0 ;
  wire \s_axi_rdata_i[6]_i_12_n_0 ;
  wire \s_axi_rdata_i[6]_i_13_n_0 ;
  wire \s_axi_rdata_i[6]_i_14_n_0 ;
  wire \s_axi_rdata_i[6]_i_7_n_0 ;
  wire \s_axi_rdata_i[6]_i_8_n_0 ;
  wire \s_axi_rdata_i[6]_i_9_n_0 ;
  wire \s_axi_rdata_i[7]_i_10_n_0 ;
  wire \s_axi_rdata_i[7]_i_11_n_0 ;
  wire \s_axi_rdata_i[7]_i_12_n_0 ;
  wire \s_axi_rdata_i[7]_i_13_n_0 ;
  wire \s_axi_rdata_i[7]_i_14_n_0 ;
  wire \s_axi_rdata_i[7]_i_7_n_0 ;
  wire \s_axi_rdata_i[7]_i_8_n_0 ;
  wire \s_axi_rdata_i[7]_i_9_n_0 ;
  wire \s_axi_rdata_i[8]_i_10_n_0 ;
  wire \s_axi_rdata_i[8]_i_11_n_0 ;
  wire \s_axi_rdata_i[8]_i_12_n_0 ;
  wire \s_axi_rdata_i[8]_i_13_n_0 ;
  wire \s_axi_rdata_i[8]_i_14_n_0 ;
  wire \s_axi_rdata_i[8]_i_15_n_0 ;
  wire \s_axi_rdata_i[8]_i_8_n_0 ;
  wire \s_axi_rdata_i[8]_i_9_n_0 ;
  wire \s_axi_rdata_i[9]_i_10_n_0 ;
  wire \s_axi_rdata_i[9]_i_11_n_0 ;
  wire \s_axi_rdata_i[9]_i_12_n_0 ;
  wire \s_axi_rdata_i[9]_i_13_n_0 ;
  wire \s_axi_rdata_i[9]_i_14_n_0 ;
  wire \s_axi_rdata_i[9]_i_7_n_0 ;
  wire \s_axi_rdata_i[9]_i_8_n_0 ;
  wire \s_axi_rdata_i[9]_i_9_n_0 ;
  wire \s_axi_rdata_i_reg[10]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[10]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[10]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[10]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[10]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[11]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[11]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[11]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[11]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[12]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[12]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[12]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[12]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[13]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[13]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[13]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[13]_i_8_n_0 ;
  wire \s_axi_rdata_i_reg[14]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[14]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[14]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[14]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[15]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[15]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[15]_i_8_n_0 ;
  wire \s_axi_rdata_i_reg[15]_i_9_n_0 ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[16]_0 ;
  wire \s_axi_rdata_i_reg[16]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[16]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[16]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[16]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[16]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[16]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[17]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[18]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[18]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[18]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[18]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[19]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[19]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[19]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[19]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[19]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[19]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[1]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[1]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[1]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[1]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[20]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[20]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[20]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[20]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[20]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[20]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[21]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[21]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[21]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[21]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[21]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[21]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[22]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[22]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[22]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[22]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[22]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[22]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[23]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[23]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[23]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[23]_i_8_n_0 ;
  wire \s_axi_rdata_i_reg[24]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[24]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[24]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[24]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[24]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[24]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[25]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[25]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[25]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[25]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[25]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[25]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[26]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[26]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[26]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[26]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[26]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[26]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[27]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[27]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[27]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[27]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[27]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[27]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[28]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[28]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[28]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[28]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[28]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[28]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[29]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[29]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[29]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[29]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[29]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[29]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[2]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[2]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[30]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[30]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[30]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[30]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[30]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[30]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[31]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[31]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[3]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[3]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[3]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[3]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[4]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[4]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[4]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[4]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[6]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[6]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[8]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[8]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[8]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[8]_i_6_n_0 ;
  wire \s_axi_rdata_i_reg[8]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[9]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[9]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[9]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[9]_i_6_n_0 ;
  wire [31:0]s_axi_wdata;
  wire wrack_reg_1;
  wire wrack_reg_10;
  wire wrack_reg_2;

  LUT2 #(
    .INIT(4'h2)) 
    IP2Bus_RdAck_i_1
       (.I0(rdack_reg_1),
        .I1(rdack_reg_2),
        .O(IP2Bus_RdAck0));
  FDRE IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck0),
        .Q(IP2Bus_RdAck),
        .R(wrack_reg_10));
  LUT2 #(
    .INIT(4'h2)) 
    IP2Bus_WrAck_i_1
       (.I0(wrack_reg_1),
        .I1(wrack_reg_2),
        .O(IP2Bus_WrAck0));
  FDRE IP2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_WrAck0),
        .Q(IP2Bus_WrAck),
        .R(wrack_reg_10));
  LUT5 #(
    .INIT(32'hFFEF0006)) 
    RST_MMCM_PLL_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(reset),
        .O(RST_MMCM_PLL_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    SEN_i_1
       (.I0(config_reg[0]),
        .I1(load_enable_reg_actual),
        .O(SEN0));
  FDRE SEN_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SEN0),
        .Q(SEN),
        .R(SR));
  rfdc_ex_clk_wiz_adc1_0_clk_wiz clk_inst
       (.DADDR({daddr[6],daddr[4:0]}),
        .DEN(den),
        .DI(din),
        .DO({dout[15:9],dout[6:5],dout[3:0]}),
        .DWE(dwe),
        .clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .drdy(drdy),
        .plle4_adv_inst_0(plle4_adv_inst),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[21]),
        .Q(\clkfbout_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[20]),
        .Q(\clkfbout_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[19]),
        .Q(\clkfbout_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[18]),
        .Q(\clkfbout_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(\clkfbout_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(\clkfbout_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(\clkfbout_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(\clkfbout_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(\clkfbout_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clkfbout_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(\clkfbout_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\clkfbout_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\clkfbout_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\clkfbout_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\clkfbout_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\clkfbout_reg_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\clkfbout_reg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\clkfbout_reg_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\clkfbout_reg_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\clkfbout_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\clkfbout_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clkfbout_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\clkfbout_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clkfbout_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\clkfbout_reg_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[25]),
        .Q(\clkfbout_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[24]),
        .Q(\clkfbout_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[23]),
        .Q(\clkfbout_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkfbout_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[22]),
        .Q(\clkfbout_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[17]),
        .Q(\clkout0_reg_reg[14]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[16]),
        .Q(\clkout0_reg_reg[14]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\clkout0_reg_reg[14]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\clkout0_reg_reg[14]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\clkout0_reg_reg[14]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\clkout0_reg_reg[14]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\clkout0_reg_reg[14]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\clkout0_reg_reg[14]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\clkout0_reg_reg[14]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\clkout0_reg_reg[14]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\clkout0_reg_reg[14]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\clkout0_reg_reg[14]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\clkout0_reg_reg[14]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\clkout0_reg_reg[14]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\clkout0_reg_reg[14]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clkout0_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\clkout0_reg_reg[14]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\clkout0_reg_reg[14]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkout0_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(\clkout0_reg_reg[14]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\clkout0_reg_reg[14]_0 [0]),
        .R(1'b0));
  FDRE \interrupt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\interrupt_enable_reg_reg[15]_0 [0]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\interrupt_enable_reg_reg[15]_0 [10]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\interrupt_enable_reg_reg[15]_0 [11]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\interrupt_enable_reg_reg[15]_0 [12]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\interrupt_enable_reg_reg[15]_0 [13]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\interrupt_enable_reg_reg[15]_0 [14]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\interrupt_enable_reg_reg[15]_0 [15]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\interrupt_enable_reg_reg[15]_0 [1]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\interrupt_enable_reg_reg[15]_0 [2]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\interrupt_enable_reg_reg[15]_0 [3]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\interrupt_enable_reg_reg[15]_0 [4]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\interrupt_enable_reg_reg[15]_0 [5]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\interrupt_enable_reg_reg[15]_0 [6]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\interrupt_enable_reg_reg[15]_0 [7]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\interrupt_enable_reg_reg[15]_0 [8]),
        .R(SR));
  FDRE \interrupt_enable_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\interrupt_enable_reg_reg[15]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\interrupt_enable_reg_reg[15]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    ip2bus_rdack_i_1
       (.I0(IP2Bus_RdAck),
        .I1(rst_ip2bus_rdack),
        .I2(dummy_local_reg_rdack),
        .O(ip2bus_rdack_int1));
  FDRE load_enable_reg_actual_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(config_reg[0]),
        .Q(load_enable_reg_actual),
        .R(SR));
  FDRE load_enable_reg_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(load_enable_reg_d_reg_0),
        .Q(config_reg[0]),
        .R(SR));
  FDRE \load_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(config_reg__0[0]),
        .R(SR));
  FDRE \load_enable_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(config_reg__0[10]),
        .R(SR));
  FDRE \load_enable_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(config_reg__0[11]),
        .R(SR));
  FDRE \load_enable_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(config_reg__0[12]),
        .R(SR));
  FDRE \load_enable_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\load_enable_reg_reg[13]_0 [15]),
        .R(SR));
  FDRE \load_enable_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\load_enable_reg_reg[13]_0 [14]),
        .R(SR));
  FDRE \load_enable_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(config_reg__0[15]),
        .R(SR));
  FDRE \load_enable_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\load_enable_reg_reg[13]_0 [13]),
        .R(SR));
  FDRE \load_enable_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\load_enable_reg_reg[13]_0 [12]),
        .R(SR));
  FDRE \load_enable_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\load_enable_reg_reg[13]_0 [11]),
        .R(SR));
  FDRE \load_enable_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\load_enable_reg_reg[13]_0 [10]),
        .R(SR));
  FDRE \load_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(config_reg__0[1]),
        .R(SR));
  FDRE \load_enable_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\load_enable_reg_reg[13]_0 [9]),
        .R(SR));
  FDRE \load_enable_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\load_enable_reg_reg[13]_0 [8]),
        .R(SR));
  FDRE \load_enable_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\load_enable_reg_reg[13]_0 [7]),
        .R(SR));
  FDRE \load_enable_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\load_enable_reg_reg[13]_0 [6]),
        .R(SR));
  FDRE \load_enable_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\load_enable_reg_reg[13]_0 [5]),
        .R(SR));
  FDRE \load_enable_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\load_enable_reg_reg[13]_0 [4]),
        .R(SR));
  FDRE \load_enable_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\load_enable_reg_reg[13]_0 [3]),
        .R(SR));
  FDRE \load_enable_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\load_enable_reg_reg[13]_0 [2]),
        .R(SR));
  FDRE \load_enable_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\load_enable_reg_reg[13]_0 [1]),
        .R(SR));
  FDRE \load_enable_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\load_enable_reg_reg[13]_0 [0]),
        .R(SR));
  FDRE \load_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(config_reg__0[2]),
        .R(SR));
  FDRE \load_enable_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(config_reg[1]),
        .R(SR));
  FDRE \load_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(config_reg__0[3]),
        .R(SR));
  FDRE \load_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(config_reg__0[4]),
        .R(SR));
  FDRE \load_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(config_reg__0[5]),
        .R(SR));
  FDRE \load_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(config_reg__0[6]),
        .R(SR));
  FDRE \load_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(config_reg__0[7]),
        .R(SR));
  FDRE \load_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(config_reg__0[8]),
        .R(SR));
  FDRE \load_enable_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\load_enable_reg_reg[0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(config_reg__0[9]),
        .R(SR));
  rfdc_ex_clk_wiz_adc1_0_pll_drp pll_drp_inst
       (.DADDR({daddr[6],daddr[4:0]}),
        .DEN(den),
        .DI(din),
        .DO({dout[15:9],dout[6:5],dout[3:0]}),
        .DWE(dwe),
        .Q({S2_CLKFBOUT_MULT,\ram_clk_config_reg_n_0_[0][7] ,p_4_in,\ram_clk_config_reg_n_0_[0][1] ,\ram_clk_config_reg_n_0_[0][0] }),
        .RST_MMCM_PLL_reg_0(RST_MMCM_PLL_i_1_n_0),
        .SEN(SEN),
        .SR(SR),
        .SRDY(SRDY),
        .SRDY_reg_0(plle4_adv_inst),
        .config_reg(config_reg[1]),
        .drdy(drdy),
        .out(p_0_in),
        .\ram_reg[12][5]_0 ({\ram_clk_config_reg_n_0_[2][7] ,\ram_clk_config_reg_n_0_[2][6] ,\ram_clk_config_reg_n_0_[2][5] ,\ram_clk_config_reg_n_0_[2][4] ,\ram_clk_config_reg_n_0_[2][3] ,\ram_clk_config_reg_n_0_[2][2] ,\ram_clk_config_reg_n_0_[2][1] ,\ram_clk_config_reg_n_0_[2][0] }),
        .\ram_reg[14][5]_0 ({\ram_clk_config_reg_n_0_[5][7] ,p_2_in,\ram_clk_config_reg_n_0_[5][1] ,\ram_clk_config_reg_n_0_[5][0] }),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][0]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[31] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[0]),
        .O(\ram_clk_config[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][10]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[21] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[10]),
        .O(\ram_clk_config[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][11]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[20] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[11]),
        .O(\ram_clk_config[0][11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][12]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[19] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[12]),
        .O(\ram_clk_config[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][13]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[18] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[13]),
        .O(\ram_clk_config[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][14]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[17] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[14]),
        .O(\ram_clk_config[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][15]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[16] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[15]),
        .O(\ram_clk_config[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][16]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[15] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[16]),
        .O(\ram_clk_config[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][17]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[14] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[17]),
        .O(\ram_clk_config[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][18]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[13] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[18]),
        .O(\ram_clk_config[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][19]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[12] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[19]),
        .O(\ram_clk_config[0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][1]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[30] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[1]),
        .O(\ram_clk_config[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][20]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[11] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[20]),
        .O(\ram_clk_config[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][21]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[10] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[21]),
        .O(\ram_clk_config[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][22]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[9] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[22]),
        .O(\ram_clk_config[0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][23]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[8] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[23]),
        .O(\ram_clk_config[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][24]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[7] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[24]),
        .O(\ram_clk_config[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][25]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[6] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[25]),
        .O(\ram_clk_config[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][26]_i_1 
       (.I0(\ram_clk_config[0][26]_i_2_n_0 ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[26]),
        .O(\ram_clk_config[0][26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ram_clk_config[0][26]_i_2 
       (.I0(\clkfbout_reg_reg_n_0_[8] ),
        .I1(\clkfbout_reg_reg_n_0_[10] ),
        .I2(\clkfbout_reg_reg_n_0_[15] ),
        .I3(\clkfbout_reg_reg_n_0_[14] ),
        .I4(\ram_clk_config[0][26]_i_3_n_0 ),
        .O(\ram_clk_config[0][26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ram_clk_config[0][26]_i_3 
       (.I0(\clkfbout_reg_reg_n_0_[12] ),
        .I1(\clkfbout_reg_reg_n_0_[6] ),
        .I2(\clkfbout_reg_reg_n_0_[11] ),
        .I3(\clkfbout_reg_reg_n_0_[9] ),
        .I4(\clkfbout_reg_reg_n_0_[13] ),
        .I5(\clkfbout_reg_reg_n_0_[7] ),
        .O(\ram_clk_config[0][26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][2]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[29] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[2]),
        .O(\ram_clk_config[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][3]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[28] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[3]),
        .O(\ram_clk_config[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][4]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[27] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[4]),
        .O(\ram_clk_config[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][5]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[26] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[5]),
        .O(\ram_clk_config[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][6]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[25] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[6]),
        .O(\ram_clk_config[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][7]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[24] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[7]),
        .O(\ram_clk_config[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][8]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[23] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[8]),
        .O(\ram_clk_config[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[0][9]_i_1 
       (.I0(\clkfbout_reg_reg_n_0_[22] ),
        .I1(\ram_clk_config_reg[0][0]_0 ),
        .I2(s_axi_wdata[9]),
        .O(\ram_clk_config[0][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ram_clk_config[2][18]_i_2 
       (.I0(\clkout0_reg_reg[14]_0 [11]),
        .I1(\clkout0_reg_reg[14]_0 [13]),
        .I2(\clkout0_reg_reg[14]_0 [8]),
        .I3(\clkout0_reg_reg[14]_0 [9]),
        .I4(\ram_clk_config[2][18]_i_3_n_0 ),
        .O(\clkout0_reg_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ram_clk_config[2][18]_i_3 
       (.I0(\clkout0_reg_reg[14]_0 [14]),
        .I1(\clkout0_reg_reg[14]_0 [16]),
        .I2(\clkout0_reg_reg[14]_0 [17]),
        .I3(\clkout0_reg_reg[14]_0 [15]),
        .I4(\clkout0_reg_reg[14]_0 [10]),
        .I5(\clkout0_reg_reg[14]_0 [12]),
        .O(\ram_clk_config[2][18]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][0]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][10]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][11]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][12]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][13]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][14]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][15]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][16]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][17]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][18]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][19]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][19] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][1]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][1] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][20]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][21]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][22]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][23]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][24]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][25]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][26]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config_reg[0][31]_1 [0]),
        .Q(\ram_clk_config_reg_n_0_[0][27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config_reg[0][31]_1 [1]),
        .Q(\ram_clk_config_reg_n_0_[0][28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config_reg[0][31]_1 [2]),
        .Q(\ram_clk_config_reg_n_0_[0][29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][2]_i_1_n_0 ),
        .Q(p_4_in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config_reg[0][31]_1 [3]),
        .Q(\ram_clk_config_reg_n_0_[0][30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config_reg[0][31]_1 [4]),
        .Q(\ram_clk_config_reg_n_0_[0][31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][3]_i_1_n_0 ),
        .Q(p_4_in[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][4]_i_1_n_0 ),
        .Q(p_4_in[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][5]_i_1_n_0 ),
        .Q(p_4_in[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][6]_i_1_n_0 ),
        .Q(p_4_in[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][7]_i_1_n_0 ),
        .Q(\ram_clk_config_reg_n_0_[0][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][8]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[0][31]_0 ),
        .D(\ram_clk_config[0][9]_i_1_n_0 ),
        .Q(S2_CLKFBOUT_MULT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[10]_7 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[10]_7 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[10]_7 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[10]_7 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[10]_7 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[10][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[10]_7 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[10][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[10]_7 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[10]_7 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[10]_7 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[10]_7 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[10]_7 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[10]_7 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[10]_7 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[10]_7 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[10]_7 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[10]_7 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[10]_7 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[10]_7 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[10]_7 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[10]_7 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[10]_7 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[10]_7 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[10]_7 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[10]_7 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[10]_7 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[10]_7 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[10][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[10]_7 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[10]_7 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[10][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[10]_7 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[10][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[10]_7 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[10][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[10]_7 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[10][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[10][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[10]_7 [9]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[11][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[11]_8 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[11]_8 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[11]_8 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[11]_8 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[11]_8 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[11]_8 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[11]_8 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[11]_8 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[11]_8 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[11]_8 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[11]_8 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[11]_8 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[11]_8 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[11]_8 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[11]_8 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[11]_8 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[11]_8 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[11]_8 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[11]_8 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[11]_8 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[11]_8 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[11]_8 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[11]_8 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[11]_8 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[11]_8 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[11]_8 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[11]_8 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[11]_8 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[11]_8 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[11]_8 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[11]_8 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[11][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[11][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[11]_8 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[12]_9 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[12]_9 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[12]_9 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[12]_9 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[12]_9 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[12]_9 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[12]_9 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[12]_9 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[12][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[12]_9 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[12]_9 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[12]_9 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[12]_9 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[12]_9 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[12]_9 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[12]_9 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[12]_9 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[12]_9 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[12]_9 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[12]_9 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[12]_9 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[12]_9 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[12]_9 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[12]_9 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[12]_9 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[12]_9 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[12]_9 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[12]_9 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[12]_9 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[12]_9 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[12]_9 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[12][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[12][0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[12]_9 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[13]_10 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[13]_10 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[13]_10 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[13]_10 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[13]_10 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[13][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[13]_10 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[13][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[13]_10 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[13]_10 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[13]_10 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[13]_10 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[13]_10 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[13]_10 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[13]_10 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[13]_10 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[13]_10 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[13]_10 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[13]_10 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[13]_10 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[13]_10 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[13]_10 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[13]_10 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[13]_10 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[13]_10 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[13]_10 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[13]_10 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[13]_10 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[13][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[13]_10 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[13]_10 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[13][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[13]_10 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[13][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[13]_10 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[13][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[13]_10 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[13][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[13][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[13]_10 [9]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[14][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[14]_11 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[14]_11 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[14]_11 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[14]_11 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[14]_11 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[14]_11 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[14]_11 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[14]_11 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[14][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[14]_11 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[14]_11 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[14]_11 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[14]_11 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[14]_11 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[14]_11 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[14]_11 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[14]_11 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[14]_11 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[14]_11 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[14]_11 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[14]_11 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[14]_11 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[14]_11 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[14]_11 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[14]_11 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[14]_11 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[14]_11 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[14]_11 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[14]_11 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[14]_11 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[14]_11 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[14][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[14][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[14]_11 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[15]_12 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[15]_12 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[15]_12 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[15]_12 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[15]_12 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[15]_12 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[15]_12 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[15]_12 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[15][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[15]_12 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[15]_12 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[15]_12 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[15]_12 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[15]_12 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[15]_12 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[15]_12 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[15]_12 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[15]_12 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[15]_12 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[15]_12 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[15]_12 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[15]_12 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[15]_12 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[15]_12 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[15]_12 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[15]_12 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[15]_12 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[15]_12 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[15]_12 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[15]_12 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[15]_12 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[15][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[15][0]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[15]_12 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[16]_13 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[16]_13 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[16]_13 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[16]_13 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[16]_13 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[16][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[16]_13 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[16][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[16]_13 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[16]_13 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[16]_13 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[16]_13 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[16]_13 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[16]_13 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[16]_13 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[16]_13 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[16]_13 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[16]_13 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[16]_13 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[16]_13 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[16]_13 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[16]_13 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[16]_13 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[16]_13 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[16]_13 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[16]_13 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[16]_13 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[16]_13 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[16][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[16]_13 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[16]_13 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[16][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[16]_13 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[16][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[16]_13 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[16][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[16]_13 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[16][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[16][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[16]_13 [9]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[17][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[17]_14 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[17]_14 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[17]_14 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[17]_14 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[17]_14 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[17]_14 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[17]_14 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[17]_14 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[17]_14 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[17]_14 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[17]_14 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[17]_14 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[17]_14 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[17]_14 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[17]_14 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[17]_14 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[17]_14 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[17]_14 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[17]_14 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[17]_14 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[17]_14 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[17]_14 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[17]_14 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[17]_14 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[17]_14 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[17]_14 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[17]_14 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[17]_14 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[17]_14 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[17]_14 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[17]_14 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[17][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[17][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[17]_14 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[18]_15 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[18]_15 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[18]_15 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[18]_15 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[18]_15 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[18]_15 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[18]_15 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[18]_15 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[18]_15 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[18]_15 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[18]_15 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[18]_15 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[18]_15 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[18]_15 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[18]_15 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[18]_15 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[18]_15 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[18]_15 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[18]_15 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[18]_15 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[18]_15 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[18]_15 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[18]_15 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[18]_15 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[18]_15 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[18]_15 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[18]_15 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[18]_15 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[18]_15 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[18]_15 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[18]_15 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[18][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[18][0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[18]_15 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[19]_16 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[19]_16 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[19]_16 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[19]_16 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[19]_16 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[19][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[19]_16 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[19][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[19]_16 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[19]_16 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[19]_16 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[19]_16 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[19]_16 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[19]_16 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[19]_16 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[19]_16 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[19]_16 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[19]_16 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[19]_16 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[19]_16 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[19]_16 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[19]_16 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[19]_16 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[19]_16 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[19]_16 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[19]_16 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[19]_16 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[19]_16 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[19][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[19]_16 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[19]_16 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[19][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[19]_16 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[19][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[19]_16 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[19][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[19]_16 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[19][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[19][0]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[19]_16 [9]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[1]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[1]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[1]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[1]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[1]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[1]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[1]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[1]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[1]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[1]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[1]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[1]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[1]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[1]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[1]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[1]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[1]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[1]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[1]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[1]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[1]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[1]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[1]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[1]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[1]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[1]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[1]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[1]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[1]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[1]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[1]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[1][0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[1]_0 [9]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[20][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[20]_17 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[20]_17 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[20]_17 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[20]_17 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[20]_17 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[20]_17 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[20]_17 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[20]_17 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[20]_17 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[20]_17 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[20]_17 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[20]_17 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[20]_17 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[20]_17 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[20]_17 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[20]_17 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[20]_17 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[20]_17 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[20]_17 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[20]_17 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[20]_17 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[20]_17 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[20]_17 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[20]_17 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[20]_17 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[20]_17 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[20]_17 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[20]_17 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[20]_17 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[20]_17 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[20]_17 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[20][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[20][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[20]_17 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[21]_18 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[21]_18 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[21]_18 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[21]_18 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[21]_18 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[21]_18 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[21]_18 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[21]_18 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[21]_18 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[21]_18 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[21]_18 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[21]_18 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[21]_18 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[21]_18 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[21]_18 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[21]_18 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[21]_18 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[21]_18 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[21]_18 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[21]_18 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[21]_18 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[21]_18 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[21]_18 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[21]_18 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[21]_18 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[21]_18 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[21]_18 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[21]_18 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[21]_18 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[21]_18 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[21]_18 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[21][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[21][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[21]_18 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[22]_19 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[22]_19 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[22]_19 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[22]_19 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[22]_19 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[22][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[22]_19 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[22][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[22]_19 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[22]_19 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[22]_19 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[22]_19 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[22]_19 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[22]_19 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[22]_19 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[22]_19 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[22]_19 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[22]_19 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[22]_19 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[22]_19 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[22]_19 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[22]_19 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[22]_19 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[22]_19 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[22]_19 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[22]_19 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[22]_19 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[22]_19 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[22][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[22]_19 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[22]_19 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[22][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[22]_19 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[22][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[22]_19 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[22][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[22]_19 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[22][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[22][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[22]_19 [9]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[23]_20 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[23]_20 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[23]_20 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[23]_20 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[23]_20 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[23]_20 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[23]_20 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[23]_20 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[23]_20 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[23]_20 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[23]_20 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[23]_20 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[23]_20 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[23]_20 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[23]_20 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[23]_20 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[23]_20 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[23]_20 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[23]_20 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[23]_20 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[23]_20 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[23]_20 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[23]_20 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[23]_20 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[23]_20 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[23]_20 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[23]_20 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[23]_20 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[23]_20 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[23]_20 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[23]_20 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[23][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[23][0]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[23]_20 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[24]_21 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[24]_21 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[24]_21 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[24]_21 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[24]_21 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[24]_21 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[24]_21 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[24]_21 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[24][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[24]_21 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[24]_21 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[24]_21 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[24]_21 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[24]_21 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[24]_21 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[24]_21 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[24]_21 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[24]_21 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[24]_21 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[24]_21 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[24]_21 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[24]_21 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[24]_21 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[24]_21 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[24]_21 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[24]_21 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[24]_21 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[24]_21 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[24]_21 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[24]_21 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[24]_21 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[24][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[24][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[24]_21 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[25]_22 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[25]_22 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[25]_22 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[25]_22 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[25]_22 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[25]_22 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[25]_22 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[25]_22 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[25][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[25]_22 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[25]_22 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[25]_22 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[25]_22 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[25]_22 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[25]_22 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[25]_22 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[25]_22 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[25]_22 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[25]_22 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[25]_22 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[25]_22 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[25]_22 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[25]_22 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[25]_22 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[25]_22 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[25]_22 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[25]_22 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[25]_22 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[25]_22 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[25]_22 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[25]_22 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[25][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[25][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[25]_22 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[26]_23 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[26]_23 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[26]_23 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[26]_23 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[26]_23 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[26]_23 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[26]_23 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[26]_23 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[26]_23 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[26]_23 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[26]_23 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[26]_23 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[26]_23 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[26]_23 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[26]_23 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[26]_23 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[26]_23 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[26]_23 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[26]_23 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[26]_23 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[26]_23 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[26]_23 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[26]_23 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[26]_23 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[26]_23 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[26]_23 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[26]_23 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[26]_23 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[26]_23 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[26]_23 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[26]_23 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[26][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[26][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[26]_23 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[27]_24 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[27]_24 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[27]_24 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[27]_24 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[27]_24 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[27]_24 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[27]_24 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[27]_24 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[27]_24 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[27]_24 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[27]_24 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[27]_24 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[27]_24 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[27]_24 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[27]_24 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[27]_24 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[27]_24 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[27]_24 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[27]_24 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[27]_24 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[27]_24 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[27]_24 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[27]_24 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[27]_24 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[27]_24 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[27]_24 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[27]_24 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[27]_24 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[27]_24 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[27]_24 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[27]_24 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[27][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[27][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[27]_24 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[28]_25 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[28]_25 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[28]_25 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[28]_25 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[28]_25 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[28]_25 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[28]_25 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[28]_25 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[28]_25 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[28]_25 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[28]_25 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[28]_25 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[28]_25 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[28]_25 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[28]_25 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[28]_25 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[28]_25 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[28]_25 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[28]_25 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[28]_25 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[28]_25 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[28]_25 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[28]_25 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[28]_25 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[28]_25 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[28]_25 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[28]_25 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[28]_25 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[28]_25 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[28]_25 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[28]_25 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[28][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[28][0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[28]_25 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[29]_26 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[29]_26 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[29]_26 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[29]_26 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[29]_26 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[29]_26 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[29]_26 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[29]_26 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[29][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[29]_26 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[29]_26 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[29]_26 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[29]_26 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[29]_26 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[29]_26 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[29]_26 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[29]_26 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[29]_26 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[29]_26 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[29]_26 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[29]_26 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[29]_26 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[29]_26 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[29]_26 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[29]_26 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[29]_26 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[29]_26 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[29]_26 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[29]_26 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[29]_26 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[29]_26 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[29][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[29][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[29]_26 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [0]),
        .Q(\ram_clk_config_reg_n_0_[2][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [10]),
        .Q(\ram_clk_config_reg_n_0_[2][10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [11]),
        .Q(\ram_clk_config_reg_n_0_[2][11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [12]),
        .Q(\ram_clk_config_reg_n_0_[2][12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [13]),
        .Q(\ram_clk_config_reg_n_0_[2][13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [14]),
        .Q(\ram_clk_config_reg_n_0_[2][14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [15]),
        .Q(\ram_clk_config_reg_n_0_[2][15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [16]),
        .Q(\ram_clk_config_reg_n_0_[2][16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [17]),
        .Q(\ram_clk_config_reg_n_0_[2][17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [18]),
        .Q(\ram_clk_config_reg_n_0_[2][18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [19]),
        .Q(\ram_clk_config_reg_n_0_[2][19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [1]),
        .Q(\ram_clk_config_reg_n_0_[2][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [20]),
        .Q(\ram_clk_config_reg_n_0_[2][20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [21]),
        .Q(\ram_clk_config_reg_n_0_[2][21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [22]),
        .Q(\ram_clk_config_reg_n_0_[2][22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [23]),
        .Q(\ram_clk_config_reg_n_0_[2][23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [24]),
        .Q(\ram_clk_config_reg_n_0_[2][24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [25]),
        .Q(\ram_clk_config_reg_n_0_[2][25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [26]),
        .Q(\ram_clk_config_reg_n_0_[2][26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [27]),
        .Q(\ram_clk_config_reg_n_0_[2][27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [28]),
        .Q(\ram_clk_config_reg_n_0_[2][28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [29]),
        .Q(\ram_clk_config_reg_n_0_[2][29] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[2][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [2]),
        .Q(\ram_clk_config_reg_n_0_[2][2] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [30]),
        .Q(\ram_clk_config_reg_n_0_[2][30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [31]),
        .Q(\ram_clk_config_reg_n_0_[2][31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [3]),
        .Q(\ram_clk_config_reg_n_0_[2][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [4]),
        .Q(\ram_clk_config_reg_n_0_[2][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [5]),
        .Q(\ram_clk_config_reg_n_0_[2][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [6]),
        .Q(\ram_clk_config_reg_n_0_[2][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [7]),
        .Q(\ram_clk_config_reg_n_0_[2][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [8]),
        .Q(\ram_clk_config_reg_n_0_[2][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[2][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[2][31]_0 ),
        .D(\ram_clk_config_reg[2][31]_1 [9]),
        .Q(\ram_clk_config_reg_n_0_[2][9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[30]_27 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[30]_27 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[30]_27 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[30]_27 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[30]_27 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[30]_27 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[30]_27 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[30]_27 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[30][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[30]_27 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[30]_27 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[30]_27 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[30]_27 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[30]_27 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[30]_27 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[30]_27 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[30]_27 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[30]_27 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[30]_27 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[30]_27 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[30]_27 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[30]_27 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[30]_27 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[30]_27 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[30]_27 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[30]_27 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[30]_27 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[30]_27 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[30]_27 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[30]_27 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[30]_27 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[30][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[30][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[30]_27 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[31]_28 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[31]_28 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[31]_28 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[31]_28 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[31]_28 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[31]_28 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[31]_28 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[31]_28 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[31][17]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[31]_28 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[31]_28 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[31]_28 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[31]_28 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[31]_28 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[31]_28 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[31]_28 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[31]_28 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[31]_28 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[31]_28 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[31]_28 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[31]_28 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[31]_28 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[31]_28 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[31]_28 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[31]_28 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[31]_28 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[31]_28 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[31]_28 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[31]_28 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[31]_28 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[31]_28 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[31][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[31][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[31]_28 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[3]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[3]_1 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[3]_1 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[3]_1 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[3]_1 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[3]_1 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[3]_1 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[3]_1 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[3]_1 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[3]_1 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[3]_1 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[3]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[3]_1 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[3]_1 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[3]_1 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[3]_1 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[3]_1 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[3]_1 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[3]_1 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[3]_1 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[3]_1 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[3]_1 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[3]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[3]_1 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[3]_1 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[3]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[3]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[3]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[3]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[3]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[3]_1 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[3][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[3][0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[3]_1 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[4]_2 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[4]_2 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[4]_2 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[4]_2 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[4]_2 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[4][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[4]_2 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[4][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[4]_2 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[4]_2 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[4]_2 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[4]_2 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[4]_2 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[4]_2 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[4]_2 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[4]_2 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[4]_2 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[4]_2 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[4]_2 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[4]_2 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[4]_2 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[4]_2 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[4]_2 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[4]_2 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[4]_2 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[4]_2 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[4]_2 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[4]_2 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[4][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[4]_2 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[4]_2 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[4][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[4]_2 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[4][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[4]_2 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[4][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[4]_2 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[4][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[4][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[4]_2 [9]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[5][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg_n_0_[5][0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg_n_0_[5][10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg_n_0_[5][11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg_n_0_[5][12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg_n_0_[5][13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg_n_0_[5][14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg_n_0_[5][15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg_n_0_[5][16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg_n_0_[5][17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg_n_0_[5][18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg_n_0_[5][19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg_n_0_[5][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg_n_0_[5][20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg_n_0_[5][21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg_n_0_[5][22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg_n_0_[5][23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg_n_0_[5][24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg_n_0_[5][25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg_n_0_[5][26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg_n_0_[5][27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg_n_0_[5][28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg_n_0_[5][29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(p_2_in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg_n_0_[5][30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg_n_0_[5][31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(p_2_in[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(p_2_in[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(p_2_in[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(p_2_in[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg_n_0_[5][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg_n_0_[5][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[5][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[5][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg_n_0_[5][9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[6]_3 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[6]_3 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[6]_3 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[6]_3 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[6]_3 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[6]_3 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[6]_3 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[6]_3 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[6]_3 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[6]_3 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[6]_3 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[6]_3 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[6]_3 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[6]_3 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[6]_3 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[6]_3 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[6]_3 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[6]_3 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[6]_3 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[6]_3 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[6]_3 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[6]_3 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[6]_3 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[6]_3 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[6]_3 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[6]_3 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[6]_3 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[6]_3 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[6]_3 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[6]_3 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[6]_3 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[6][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[6][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[6]_3 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[7]_4 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[7]_4 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[7]_4 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[7]_4 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[7]_4 [13]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[7][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[7]_4 [14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[7][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[7]_4 [15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[7]_4 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[7]_4 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[7]_4 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[7]_4 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[7]_4 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[7]_4 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[7]_4 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[7]_4 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[7]_4 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[7]_4 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[7]_4 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[7]_4 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[7]_4 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[7]_4 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[7]_4 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[7]_4 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[7]_4 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[7]_4 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[7]_4 [3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[7][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[7]_4 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[7]_4 [5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[7][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[7]_4 [6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[7][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[7]_4 [7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[7][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[7]_4 [8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[7][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[7][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[7]_4 [9]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ram_clk_config_reg[8][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[8]_5 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[8]_5 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[8]_5 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[8]_5 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[8]_5 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[8]_5 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[8]_5 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[8]_5 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[8]_5 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[8]_5 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[8]_5 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[8]_5 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[8]_5 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[8]_5 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[8]_5 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[8]_5 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[8]_5 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[8]_5 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[8]_5 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[8]_5 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[8]_5 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[8]_5 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[8]_5 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[8]_5 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[8]_5 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[8]_5 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[8]_5 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[8]_5 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[8]_5 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[8]_5 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[8]_5 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[8][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[8][0]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[8]_5 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][0] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\ram_clk_config_reg[9]_6 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][10] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\ram_clk_config_reg[9]_6 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][11] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\ram_clk_config_reg[9]_6 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][12] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\ram_clk_config_reg[9]_6 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][13] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\ram_clk_config_reg[9]_6 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][14] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\ram_clk_config_reg[9]_6 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][15] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\ram_clk_config_reg[9]_6 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][16] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\ram_clk_config_reg[9]_6 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][17] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\ram_clk_config_reg[9]_6 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][18] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\ram_clk_config_reg[9]_6 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][19] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\ram_clk_config_reg[9]_6 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][1] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\ram_clk_config_reg[9]_6 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][20] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\ram_clk_config_reg[9]_6 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][21] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\ram_clk_config_reg[9]_6 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][22] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\ram_clk_config_reg[9]_6 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][23] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\ram_clk_config_reg[9]_6 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][24] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\ram_clk_config_reg[9]_6 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][25] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\ram_clk_config_reg[9]_6 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][26] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\ram_clk_config_reg[9]_6 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][27] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\ram_clk_config_reg[9]_6 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][28] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\ram_clk_config_reg[9]_6 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][29] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\ram_clk_config_reg[9]_6 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][2] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\ram_clk_config_reg[9]_6 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][30] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\ram_clk_config_reg[9]_6 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][31] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\ram_clk_config_reg[9]_6 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][3] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\ram_clk_config_reg[9]_6 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][4] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\ram_clk_config_reg[9]_6 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][5] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\ram_clk_config_reg[9]_6 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][6] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\ram_clk_config_reg[9]_6 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][7] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\ram_clk_config_reg[9]_6 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][8] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\ram_clk_config_reg[9]_6 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ram_clk_config_reg[9][9] 
       (.C(s_axi_aclk),
        .CE(\ram_clk_config_reg[9][31]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\ram_clk_config_reg[9]_6 [9]),
        .R(SR));
  FDRE rdack_reg_1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdack_reg_10),
        .Q(rdack_reg_1),
        .R(wrack_reg_10));
  FDRE rdack_reg_2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdack_reg_1),
        .Q(rdack_reg_2),
        .R(wrack_reg_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_12 
       (.I0(\ram_clk_config_reg[27]_24 [0]),
        .I1(\ram_clk_config_reg[26]_23 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [0]),
        .O(\ram_clk_config_reg[27][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_13 
       (.I0(\ram_clk_config_reg[31]_28 [0]),
        .I1(\ram_clk_config_reg[30]_27 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [0]),
        .O(\ram_clk_config_reg[31][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_14 
       (.I0(\ram_clk_config_reg[19]_16 [0]),
        .I1(\ram_clk_config_reg[18]_15 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [0]),
        .O(\ram_clk_config_reg[19][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_15 
       (.I0(\ram_clk_config_reg[23]_20 [0]),
        .I1(\ram_clk_config_reg[22]_19 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [0]),
        .O(\ram_clk_config_reg[23][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_16 
       (.I0(\ram_clk_config_reg[3]_1 [0]),
        .I1(\ram_clk_config_reg_n_0_[2][0] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][0] ),
        .O(\s_axi_rdata_i[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_17 
       (.I0(\ram_clk_config_reg[7]_4 [0]),
        .I1(\ram_clk_config_reg[6]_3 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][0] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [0]),
        .O(\s_axi_rdata_i[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_18 
       (.I0(\ram_clk_config_reg[11]_8 [0]),
        .I1(\ram_clk_config_reg[10]_7 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [0]),
        .O(\ram_clk_config_reg[11][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_19 
       (.I0(\ram_clk_config_reg[15]_12 [0]),
        .I1(\ram_clk_config_reg[14]_11 [0]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [0]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [0]),
        .O(\ram_clk_config_reg[15][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_10 
       (.I0(\ram_clk_config_reg[19]_16 [10]),
        .I1(\ram_clk_config_reg[18]_15 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [10]),
        .O(\s_axi_rdata_i[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_11 
       (.I0(\ram_clk_config_reg[23]_20 [10]),
        .I1(\ram_clk_config_reg[22]_19 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [10]),
        .O(\s_axi_rdata_i[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [10]),
        .I1(\ram_clk_config_reg_n_0_[2][10] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [10]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[2]),
        .O(\s_axi_rdata_i[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [10]),
        .I1(\ram_clk_config_reg[6]_3 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][10] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [10]),
        .O(\s_axi_rdata_i[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [10]),
        .I1(\ram_clk_config_reg[10]_7 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [10]),
        .O(\s_axi_rdata_i[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [10]),
        .I1(\ram_clk_config_reg[14]_11 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [10]),
        .O(\s_axi_rdata_i[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFEECFEEFCEECCEE)) 
    \s_axi_rdata_i[10]_i_2 
       (.I0(\s_axi_rdata_i_reg[10]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[16] ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\s_axi_rdata_i_reg[10]_i_4_n_0 ),
        .I5(\s_axi_rdata_i_reg[10]_i_5_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_8 
       (.I0(\ram_clk_config_reg[27]_24 [10]),
        .I1(\ram_clk_config_reg[26]_23 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [10]),
        .O(\s_axi_rdata_i[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[10]_i_9 
       (.I0(\ram_clk_config_reg[31]_28 [10]),
        .I1(\ram_clk_config_reg[30]_27 [10]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [10]),
        .O(\s_axi_rdata_i[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [11]),
        .I1(\ram_clk_config_reg[22]_19 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [11]),
        .O(\s_axi_rdata_i[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [11]),
        .I1(\ram_clk_config_reg[10]_7 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [11]),
        .O(\s_axi_rdata_i[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [11]),
        .I1(\ram_clk_config_reg[14]_11 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [11]),
        .O(\s_axi_rdata_i[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [11]),
        .I1(\ram_clk_config_reg_n_0_[2][11] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [11]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[3]),
        .O(\s_axi_rdata_i[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [11]),
        .I1(\ram_clk_config_reg[6]_3 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][11] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [11]),
        .O(\s_axi_rdata_i[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_2 
       (.I0(\s_axi_rdata_i_reg[11]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[11]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[11]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[11]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [11]),
        .I1(\ram_clk_config_reg[26]_23 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [11]),
        .O(\s_axi_rdata_i[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [11]),
        .I1(\ram_clk_config_reg[30]_27 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [11]),
        .O(\s_axi_rdata_i[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[11]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [11]),
        .I1(\ram_clk_config_reg[18]_15 [11]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [11]),
        .O(\s_axi_rdata_i[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [12]),
        .I1(\ram_clk_config_reg[22]_19 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [12]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [12]),
        .O(\s_axi_rdata_i[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [12]),
        .I1(\ram_clk_config_reg[10]_7 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [12]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [12]),
        .O(\s_axi_rdata_i[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [12]),
        .I1(\ram_clk_config_reg[14]_11 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [12]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [12]),
        .O(\s_axi_rdata_i[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [12]),
        .I1(\ram_clk_config_reg_n_0_[2][12] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [12]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[4]),
        .O(\s_axi_rdata_i[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [12]),
        .I1(\ram_clk_config_reg[6]_3 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][12] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [12]),
        .O(\s_axi_rdata_i[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_2 
       (.I0(\s_axi_rdata_i_reg[12]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[12]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[12]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[12]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [12]),
        .I1(\ram_clk_config_reg[26]_23 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [12]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [12]),
        .O(\s_axi_rdata_i[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [12]),
        .I1(\ram_clk_config_reg[30]_27 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [12]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [12]),
        .O(\s_axi_rdata_i[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[12]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [12]),
        .I1(\ram_clk_config_reg[18]_15 [12]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [12]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [12]),
        .O(\s_axi_rdata_i[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_10 
       (.I0(\ram_clk_config_reg[7]_4 [13]),
        .I1(\ram_clk_config_reg[6]_3 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][13] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [13]),
        .O(\s_axi_rdata_i[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [13]),
        .I1(\ram_clk_config_reg[10]_7 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [13]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [13]),
        .O(\s_axi_rdata_i[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [13]),
        .I1(\ram_clk_config_reg[14]_11 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [13]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [13]),
        .O(\s_axi_rdata_i[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_13 
       (.I0(\ram_clk_config_reg[19]_16 [13]),
        .I1(\ram_clk_config_reg[18]_15 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [13]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [13]),
        .O(\s_axi_rdata_i[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_14 
       (.I0(\ram_clk_config_reg[23]_20 [13]),
        .I1(\ram_clk_config_reg[22]_19 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [13]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [13]),
        .O(\s_axi_rdata_i[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_15 
       (.I0(\ram_clk_config_reg[27]_24 [13]),
        .I1(\ram_clk_config_reg[26]_23 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [13]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [13]),
        .O(\s_axi_rdata_i[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_16 
       (.I0(\ram_clk_config_reg[31]_28 [13]),
        .I1(\ram_clk_config_reg[30]_27 [13]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [13]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [13]),
        .O(\s_axi_rdata_i[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[13]_i_9 
       (.I0(\ram_clk_config_reg[3]_1 [13]),
        .I1(\ram_clk_config_reg_n_0_[2][13] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [13]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[5]),
        .O(\s_axi_rdata_i[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [14]),
        .I1(\ram_clk_config_reg[22]_19 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [14]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [14]),
        .O(\s_axi_rdata_i[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [14]),
        .I1(\ram_clk_config_reg[10]_7 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [14]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [14]),
        .O(\s_axi_rdata_i[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [14]),
        .I1(\ram_clk_config_reg[14]_11 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [14]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [14]),
        .O(\s_axi_rdata_i[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [14]),
        .I1(\ram_clk_config_reg_n_0_[2][14] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [14]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[6]),
        .O(\s_axi_rdata_i[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [14]),
        .I1(\ram_clk_config_reg[6]_3 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][14] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [14]),
        .O(\s_axi_rdata_i[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_2 
       (.I0(\s_axi_rdata_i_reg[14]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[14]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[14]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[14]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [14]),
        .I1(\ram_clk_config_reg[26]_23 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [14]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [14]),
        .O(\s_axi_rdata_i[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [14]),
        .I1(\ram_clk_config_reg[30]_27 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [14]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [14]),
        .O(\s_axi_rdata_i[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[14]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [14]),
        .I1(\ram_clk_config_reg[18]_15 [14]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [14]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [14]),
        .O(\s_axi_rdata_i[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_11 
       (.I0(\ram_clk_config_reg[27]_24 [15]),
        .I1(\ram_clk_config_reg[26]_23 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [15]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [15]),
        .O(\s_axi_rdata_i[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_12 
       (.I0(\ram_clk_config_reg[31]_28 [15]),
        .I1(\ram_clk_config_reg[30]_27 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [15]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [15]),
        .O(\s_axi_rdata_i[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_13 
       (.I0(\ram_clk_config_reg[19]_16 [15]),
        .I1(\ram_clk_config_reg[18]_15 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [15]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [15]),
        .O(\s_axi_rdata_i[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_14 
       (.I0(\ram_clk_config_reg[23]_20 [15]),
        .I1(\ram_clk_config_reg[22]_19 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [15]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [15]),
        .O(\s_axi_rdata_i[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_15 
       (.I0(\ram_clk_config_reg[11]_8 [15]),
        .I1(\ram_clk_config_reg[10]_7 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [15]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [15]),
        .O(\s_axi_rdata_i[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_16 
       (.I0(\ram_clk_config_reg[15]_12 [15]),
        .I1(\ram_clk_config_reg[14]_11 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [15]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [15]),
        .O(\s_axi_rdata_i[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_17 
       (.I0(\ram_clk_config_reg[3]_1 [15]),
        .I1(\ram_clk_config_reg_n_0_[2][15] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [15]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[7]),
        .O(\s_axi_rdata_i[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_18 
       (.I0(\ram_clk_config_reg[7]_4 [15]),
        .I1(\ram_clk_config_reg[6]_3 [15]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][15] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [15]),
        .O(\s_axi_rdata_i[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[15]_i_3 
       (.I0(\s_axi_rdata_i_reg[15]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[15]_i_7_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[15]_i_8_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[15]_i_9_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\s_axi_rdata_i_reg[16]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[16]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[15]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [16]),
        .I1(\ram_clk_config_reg[26]_23 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [16]),
        .O(\s_axi_rdata_i[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [16]),
        .I1(\ram_clk_config_reg[30]_27 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [16]),
        .O(\s_axi_rdata_i[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [16]),
        .I1(\ram_clk_config_reg_n_0_[2][16] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][16] ),
        .O(\s_axi_rdata_i[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [16]),
        .I1(\ram_clk_config_reg[6]_3 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][16] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [16]),
        .O(\s_axi_rdata_i[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [16]),
        .I1(\ram_clk_config_reg[10]_7 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [16]),
        .O(\s_axi_rdata_i[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [16]),
        .I1(\ram_clk_config_reg[14]_11 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [16]),
        .O(\s_axi_rdata_i[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [16]),
        .I1(\ram_clk_config_reg[18]_15 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [16]),
        .O(\s_axi_rdata_i[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[16]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [16]),
        .I1(\ram_clk_config_reg[22]_19 [16]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [16]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [16]),
        .O(\s_axi_rdata_i[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABBABBBBABBBB)) 
    \s_axi_rdata_i[17]_i_10 
       (.I0(\s_axi_rdata_i[17]_i_14_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\ram_clk_config_reg[8]_5 [17]),
        .I5(\ram_clk_config_reg[10]_7 [17]),
        .O(\bus2ip_addr_i_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[17]_i_12 
       (.I0(\ram_clk_config_reg[19]_16 [17]),
        .I1(\ram_clk_config_reg[18]_15 [17]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [17]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [17]),
        .O(\s_axi_rdata_i[17]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[17]_i_13 
       (.I0(\ram_clk_config_reg[23]_20 [17]),
        .I1(\ram_clk_config_reg[22]_19 [17]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [17]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [17]),
        .O(\s_axi_rdata_i[17]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCC000C44CCCC0C44)) 
    \s_axi_rdata_i[17]_i_14 
       (.I0(\ram_clk_config_reg[9]_6 [17]),
        .I1(Q[0]),
        .I2(\ram_clk_config_reg[11]_8 [17]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\ram_clk_config_reg[13]_10 [17]),
        .O(\s_axi_rdata_i[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \s_axi_rdata_i[17]_i_2 
       (.I0(\s_axi_rdata_i[17]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\s_axi_rdata_i[17]_i_5_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\s_axi_rdata_i_reg[17]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[17]_i_4 
       (.I0(\ram_clk_config_reg[7]_4 [17]),
        .I1(\ram_clk_config_reg[6]_3 [17]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][17] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [17]),
        .O(\s_axi_rdata_i[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[17]_i_5 
       (.I0(\ram_clk_config_reg[3]_1 [17]),
        .I1(\ram_clk_config_reg_n_0_[2][17] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [17]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][17] ),
        .O(\s_axi_rdata_i[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C2C2000002C20)) 
    \s_axi_rdata_i[17]_i_8 
       (.I0(\ram_clk_config_reg[28]_25 [17]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\ram_clk_config_reg[26]_23 [17]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[27]_24 [17]),
        .O(\ram_clk_config_reg[28][17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [18]),
        .I1(\ram_clk_config_reg[26]_23 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [18]),
        .O(\s_axi_rdata_i[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [18]),
        .I1(\ram_clk_config_reg[30]_27 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [18]),
        .O(\s_axi_rdata_i[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [18]),
        .I1(\ram_clk_config_reg_n_0_[2][18] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][18] ),
        .O(\s_axi_rdata_i[18]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [18]),
        .I1(\ram_clk_config_reg[6]_3 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][18] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [18]),
        .O(\s_axi_rdata_i[18]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [18]),
        .I1(\ram_clk_config_reg[10]_7 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [18]),
        .O(\s_axi_rdata_i[18]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [18]),
        .I1(\ram_clk_config_reg[14]_11 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [18]),
        .O(\s_axi_rdata_i[18]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [18]),
        .I1(\ram_clk_config_reg[18]_15 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [18]),
        .O(\s_axi_rdata_i[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[18]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [18]),
        .I1(\ram_clk_config_reg[22]_19 [18]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [18]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [18]),
        .O(\s_axi_rdata_i[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\s_axi_rdata_i_reg[19]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[19]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[12]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [19]),
        .I1(\ram_clk_config_reg[26]_23 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [19]),
        .O(\s_axi_rdata_i[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [19]),
        .I1(\ram_clk_config_reg[30]_27 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [19]),
        .O(\s_axi_rdata_i[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [19]),
        .I1(\ram_clk_config_reg_n_0_[2][19] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][19] ),
        .O(\s_axi_rdata_i[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [19]),
        .I1(\ram_clk_config_reg[6]_3 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][19] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [19]),
        .O(\s_axi_rdata_i[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [19]),
        .I1(\ram_clk_config_reg[10]_7 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [19]),
        .O(\s_axi_rdata_i[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [19]),
        .I1(\ram_clk_config_reg[14]_11 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [19]),
        .O(\s_axi_rdata_i[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [19]),
        .I1(\ram_clk_config_reg[18]_15 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [19]),
        .O(\s_axi_rdata_i[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[19]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [19]),
        .I1(\ram_clk_config_reg[22]_19 [19]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [19]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [19]),
        .O(\s_axi_rdata_i[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_10 
       (.I0(\ram_clk_config_reg[19]_16 [1]),
        .I1(\ram_clk_config_reg[18]_15 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [1]),
        .O(\s_axi_rdata_i[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_11 
       (.I0(\ram_clk_config_reg[23]_20 [1]),
        .I1(\ram_clk_config_reg[22]_19 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [1]),
        .O(\s_axi_rdata_i[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_12 
       (.I0(\ram_clk_config_reg[11]_8 [1]),
        .I1(\ram_clk_config_reg[10]_7 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [1]),
        .O(\s_axi_rdata_i[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_13 
       (.I0(\ram_clk_config_reg[15]_12 [1]),
        .I1(\ram_clk_config_reg[14]_11 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [1]),
        .O(\s_axi_rdata_i[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_14 
       (.I0(\ram_clk_config_reg[3]_1 [1]),
        .I1(\ram_clk_config_reg_n_0_[2][1] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][1] ),
        .O(\s_axi_rdata_i[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_15 
       (.I0(\ram_clk_config_reg[7]_4 [1]),
        .I1(\ram_clk_config_reg[6]_3 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][1] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [1]),
        .O(\s_axi_rdata_i[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h55330F0055330FFF)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\s_axi_rdata_i_reg[1]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[1]_i_5_n_0 ),
        .I2(\s_axi_rdata_i_reg[1]_i_6_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\s_axi_rdata_i_reg[1]_i_7_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_8 
       (.I0(\ram_clk_config_reg[27]_24 [1]),
        .I1(\ram_clk_config_reg[26]_23 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [1]),
        .O(\s_axi_rdata_i[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_9 
       (.I0(\ram_clk_config_reg[31]_28 [1]),
        .I1(\ram_clk_config_reg[30]_27 [1]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [1]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [1]),
        .O(\s_axi_rdata_i[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\s_axi_rdata_i_reg[20]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[20]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[11]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [20]),
        .I1(\ram_clk_config_reg[26]_23 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [20]),
        .O(\s_axi_rdata_i[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [20]),
        .I1(\ram_clk_config_reg[30]_27 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [20]),
        .O(\s_axi_rdata_i[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [20]),
        .I1(\ram_clk_config_reg_n_0_[2][20] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][20] ),
        .O(\s_axi_rdata_i[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [20]),
        .I1(\ram_clk_config_reg[6]_3 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][20] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [20]),
        .O(\s_axi_rdata_i[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [20]),
        .I1(\ram_clk_config_reg[10]_7 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [20]),
        .O(\s_axi_rdata_i[20]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [20]),
        .I1(\ram_clk_config_reg[14]_11 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [20]),
        .O(\s_axi_rdata_i[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [20]),
        .I1(\ram_clk_config_reg[18]_15 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [20]),
        .O(\s_axi_rdata_i[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[20]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [20]),
        .I1(\ram_clk_config_reg[22]_19 [20]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [20]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [20]),
        .O(\s_axi_rdata_i[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\s_axi_rdata_i_reg[21]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[21]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[10]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [21]),
        .I1(\ram_clk_config_reg[26]_23 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [21]),
        .O(\s_axi_rdata_i[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [21]),
        .I1(\ram_clk_config_reg[30]_27 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [21]),
        .O(\s_axi_rdata_i[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [21]),
        .I1(\ram_clk_config_reg_n_0_[2][21] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][21] ),
        .O(\s_axi_rdata_i[21]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [21]),
        .I1(\ram_clk_config_reg[6]_3 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][21] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [21]),
        .O(\s_axi_rdata_i[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [21]),
        .I1(\ram_clk_config_reg[10]_7 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [21]),
        .O(\s_axi_rdata_i[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [21]),
        .I1(\ram_clk_config_reg[14]_11 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [21]),
        .O(\s_axi_rdata_i[21]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [21]),
        .I1(\ram_clk_config_reg[18]_15 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [21]),
        .O(\s_axi_rdata_i[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[21]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [21]),
        .I1(\ram_clk_config_reg[22]_19 [21]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [21]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [21]),
        .O(\s_axi_rdata_i[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\s_axi_rdata_i_reg[22]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[22]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[9]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [22]),
        .I1(\ram_clk_config_reg[26]_23 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [22]),
        .O(\s_axi_rdata_i[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [22]),
        .I1(\ram_clk_config_reg[30]_27 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [22]),
        .O(\s_axi_rdata_i[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [22]),
        .I1(\ram_clk_config_reg_n_0_[2][22] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][22] ),
        .O(\s_axi_rdata_i[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [22]),
        .I1(\ram_clk_config_reg[6]_3 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][22] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [22]),
        .O(\s_axi_rdata_i[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [22]),
        .I1(\ram_clk_config_reg[10]_7 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [22]),
        .O(\s_axi_rdata_i[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [22]),
        .I1(\ram_clk_config_reg[14]_11 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [22]),
        .O(\s_axi_rdata_i[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [22]),
        .I1(\ram_clk_config_reg[18]_15 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [22]),
        .O(\s_axi_rdata_i[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[22]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [22]),
        .I1(\ram_clk_config_reg[22]_19 [22]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [22]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [22]),
        .O(\s_axi_rdata_i[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEA00EA)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\s_axi_rdata_i[23]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[23]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[8]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_10 
       (.I0(\ram_clk_config_reg[15]_12 [23]),
        .I1(\ram_clk_config_reg[14]_11 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [23]),
        .O(\s_axi_rdata_i[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_11 
       (.I0(\ram_clk_config_reg[19]_16 [23]),
        .I1(\ram_clk_config_reg[18]_15 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [23]),
        .O(\s_axi_rdata_i[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_12 
       (.I0(\ram_clk_config_reg[23]_20 [23]),
        .I1(\ram_clk_config_reg[22]_19 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [23]),
        .O(\s_axi_rdata_i[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_13 
       (.I0(\ram_clk_config_reg[27]_24 [23]),
        .I1(\ram_clk_config_reg[26]_23 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [23]),
        .O(\s_axi_rdata_i[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_14 
       (.I0(\ram_clk_config_reg[31]_28 [23]),
        .I1(\ram_clk_config_reg[30]_27 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [23]),
        .O(\s_axi_rdata_i[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \s_axi_rdata_i[23]_i_2 
       (.I0(\s_axi_rdata_i[23]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\s_axi_rdata_i[23]_i_5_n_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[23]_i_6_n_0 ),
        .O(\s_axi_rdata_i[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_4 
       (.I0(\ram_clk_config_reg[7]_4 [23]),
        .I1(\ram_clk_config_reg[6]_3 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][23] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [23]),
        .O(\s_axi_rdata_i[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_5 
       (.I0(\ram_clk_config_reg[3]_1 [23]),
        .I1(\ram_clk_config_reg_n_0_[2][23] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][23] ),
        .O(\s_axi_rdata_i[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[23]_i_9 
       (.I0(\ram_clk_config_reg[11]_8 [23]),
        .I1(\ram_clk_config_reg[10]_7 [23]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [23]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [23]),
        .O(\s_axi_rdata_i[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(\s_axi_rdata_i_reg[24]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[24]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[7]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [24]),
        .I1(\ram_clk_config_reg[26]_23 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [24]),
        .O(\s_axi_rdata_i[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [24]),
        .I1(\ram_clk_config_reg[30]_27 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [24]),
        .O(\s_axi_rdata_i[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [24]),
        .I1(\ram_clk_config_reg_n_0_[2][24] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][24] ),
        .O(\s_axi_rdata_i[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [24]),
        .I1(\ram_clk_config_reg[6]_3 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][24] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [24]),
        .O(\s_axi_rdata_i[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [24]),
        .I1(\ram_clk_config_reg[10]_7 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [24]),
        .O(\s_axi_rdata_i[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [24]),
        .I1(\ram_clk_config_reg[14]_11 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [24]),
        .O(\s_axi_rdata_i[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [24]),
        .I1(\ram_clk_config_reg[18]_15 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [24]),
        .O(\s_axi_rdata_i[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[24]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [24]),
        .I1(\ram_clk_config_reg[22]_19 [24]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [24]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [24]),
        .O(\s_axi_rdata_i[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(\s_axi_rdata_i_reg[25]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[25]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[6]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [25]),
        .I1(\ram_clk_config_reg[26]_23 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [25]),
        .O(\s_axi_rdata_i[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [25]),
        .I1(\ram_clk_config_reg[30]_27 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [25]),
        .O(\s_axi_rdata_i[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [25]),
        .I1(\ram_clk_config_reg_n_0_[2][25] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][25] ),
        .O(\s_axi_rdata_i[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [25]),
        .I1(\ram_clk_config_reg[6]_3 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][25] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [25]),
        .O(\s_axi_rdata_i[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [25]),
        .I1(\ram_clk_config_reg[10]_7 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [25]),
        .O(\s_axi_rdata_i[25]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [25]),
        .I1(\ram_clk_config_reg[14]_11 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [25]),
        .O(\s_axi_rdata_i[25]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [25]),
        .I1(\ram_clk_config_reg[18]_15 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [25]),
        .O(\s_axi_rdata_i[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[25]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [25]),
        .I1(\ram_clk_config_reg[22]_19 [25]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [25]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [25]),
        .O(\s_axi_rdata_i[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(\s_axi_rdata_i_reg[26]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[26]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[5]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [26]),
        .I1(\ram_clk_config_reg[26]_23 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [26]),
        .O(\s_axi_rdata_i[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [26]),
        .I1(\ram_clk_config_reg[30]_27 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [26]),
        .O(\s_axi_rdata_i[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [26]),
        .I1(\ram_clk_config_reg_n_0_[2][26] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][26] ),
        .O(\s_axi_rdata_i[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [26]),
        .I1(\ram_clk_config_reg[6]_3 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][26] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [26]),
        .O(\s_axi_rdata_i[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [26]),
        .I1(\ram_clk_config_reg[10]_7 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [26]),
        .O(\s_axi_rdata_i[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [26]),
        .I1(\ram_clk_config_reg[14]_11 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [26]),
        .O(\s_axi_rdata_i[26]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [26]),
        .I1(\ram_clk_config_reg[18]_15 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [26]),
        .O(\s_axi_rdata_i[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[26]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [26]),
        .I1(\ram_clk_config_reg[22]_19 [26]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [26]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [26]),
        .O(\s_axi_rdata_i[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(\s_axi_rdata_i_reg[27]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[27]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[4]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [27]),
        .I1(\ram_clk_config_reg[26]_23 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [27]),
        .O(\s_axi_rdata_i[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [27]),
        .I1(\ram_clk_config_reg[30]_27 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [27]),
        .O(\s_axi_rdata_i[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [27]),
        .I1(\ram_clk_config_reg_n_0_[2][27] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][27] ),
        .O(\s_axi_rdata_i[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [27]),
        .I1(\ram_clk_config_reg[6]_3 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][27] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [27]),
        .O(\s_axi_rdata_i[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [27]),
        .I1(\ram_clk_config_reg[10]_7 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [27]),
        .O(\s_axi_rdata_i[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [27]),
        .I1(\ram_clk_config_reg[14]_11 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [27]),
        .O(\s_axi_rdata_i[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [27]),
        .I1(\ram_clk_config_reg[18]_15 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [27]),
        .O(\s_axi_rdata_i[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[27]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [27]),
        .I1(\ram_clk_config_reg[22]_19 [27]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [27]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [27]),
        .O(\s_axi_rdata_i[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(\s_axi_rdata_i_reg[28]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[28]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[3]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [28]),
        .I1(\ram_clk_config_reg[26]_23 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [28]),
        .O(\s_axi_rdata_i[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [28]),
        .I1(\ram_clk_config_reg[30]_27 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [28]),
        .O(\s_axi_rdata_i[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [28]),
        .I1(\ram_clk_config_reg_n_0_[2][28] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][28] ),
        .O(\s_axi_rdata_i[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [28]),
        .I1(\ram_clk_config_reg[6]_3 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][28] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [28]),
        .O(\s_axi_rdata_i[28]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [28]),
        .I1(\ram_clk_config_reg[10]_7 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [28]),
        .O(\s_axi_rdata_i[28]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [28]),
        .I1(\ram_clk_config_reg[14]_11 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [28]),
        .O(\s_axi_rdata_i[28]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [28]),
        .I1(\ram_clk_config_reg[18]_15 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [28]),
        .O(\s_axi_rdata_i[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[28]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [28]),
        .I1(\ram_clk_config_reg[22]_19 [28]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [28]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [28]),
        .O(\s_axi_rdata_i[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(\s_axi_rdata_i_reg[29]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[29]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[2]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [29]),
        .I1(\ram_clk_config_reg[26]_23 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [29]),
        .O(\s_axi_rdata_i[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [29]),
        .I1(\ram_clk_config_reg[30]_27 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [29]),
        .O(\s_axi_rdata_i[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [29]),
        .I1(\ram_clk_config_reg_n_0_[2][29] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][29] ),
        .O(\s_axi_rdata_i[29]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [29]),
        .I1(\ram_clk_config_reg[6]_3 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][29] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [29]),
        .O(\s_axi_rdata_i[29]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [29]),
        .I1(\ram_clk_config_reg[10]_7 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [29]),
        .O(\s_axi_rdata_i[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [29]),
        .I1(\ram_clk_config_reg[14]_11 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [29]),
        .O(\s_axi_rdata_i[29]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [29]),
        .I1(\ram_clk_config_reg[18]_15 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [29]),
        .O(\s_axi_rdata_i[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[29]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [29]),
        .I1(\ram_clk_config_reg[22]_19 [29]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [29]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [29]),
        .O(\s_axi_rdata_i[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_10 
       (.I0(\ram_clk_config_reg[3]_1 [2]),
        .I1(\ram_clk_config_reg_n_0_[2][2] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [2]),
        .I4(Q[0]),
        .I5(p_4_in[7]),
        .O(\s_axi_rdata_i[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_11 
       (.I0(\ram_clk_config_reg[7]_4 [2]),
        .I1(\ram_clk_config_reg[6]_3 [2]),
        .I2(Q[1]),
        .I3(p_2_in[7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [2]),
        .O(\s_axi_rdata_i[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_12 
       (.I0(\ram_clk_config_reg[11]_8 [2]),
        .I1(\ram_clk_config_reg[10]_7 [2]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [2]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [2]),
        .O(\s_axi_rdata_i[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_13 
       (.I0(\ram_clk_config_reg[15]_12 [2]),
        .I1(\ram_clk_config_reg[14]_11 [2]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [2]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [2]),
        .O(\s_axi_rdata_i[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F5C505C)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(\s_axi_rdata_i[2]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[2]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\s_axi_rdata_i_reg[2]_i_5_n_0 ),
        .I5(\s_axi_rdata_i_reg[16] ),
        .O(\bus2ip_addr_i_reg[6] ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\s_axi_rdata_i[2]_i_6_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_7_n_0 ),
        .I2(Q[3]),
        .I3(\s_axi_rdata_i[2]_i_8_n_0 ),
        .I4(Q[2]),
        .I5(\s_axi_rdata_i[2]_i_9_n_0 ),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_6 
       (.I0(\ram_clk_config_reg[31]_28 [2]),
        .I1(\ram_clk_config_reg[30]_27 [2]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [2]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [2]),
        .O(\s_axi_rdata_i[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [2]),
        .I1(\ram_clk_config_reg[26]_23 [2]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [2]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [2]),
        .O(\s_axi_rdata_i[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [2]),
        .I1(\ram_clk_config_reg[18]_15 [2]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [2]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [2]),
        .O(\s_axi_rdata_i[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [2]),
        .I1(\ram_clk_config_reg[22]_19 [2]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [2]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [2]),
        .O(\s_axi_rdata_i[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(\s_axi_rdata_i_reg[30]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\s_axi_rdata_i_reg[30]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(config_reg__0[1]),
        .I5(\s_axi_rdata_i_reg[16]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_10 
       (.I0(\ram_clk_config_reg[27]_24 [30]),
        .I1(\ram_clk_config_reg[26]_23 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [30]),
        .O(\s_axi_rdata_i[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_11 
       (.I0(\ram_clk_config_reg[31]_28 [30]),
        .I1(\ram_clk_config_reg[30]_27 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [30]),
        .O(\s_axi_rdata_i[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_12 
       (.I0(\ram_clk_config_reg[3]_1 [30]),
        .I1(\ram_clk_config_reg_n_0_[2][30] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][30] ),
        .O(\s_axi_rdata_i[30]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_13 
       (.I0(\ram_clk_config_reg[7]_4 [30]),
        .I1(\ram_clk_config_reg[6]_3 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][30] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [30]),
        .O(\s_axi_rdata_i[30]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_14 
       (.I0(\ram_clk_config_reg[11]_8 [30]),
        .I1(\ram_clk_config_reg[10]_7 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [30]),
        .O(\s_axi_rdata_i[30]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_15 
       (.I0(\ram_clk_config_reg[15]_12 [30]),
        .I1(\ram_clk_config_reg[14]_11 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [30]),
        .O(\s_axi_rdata_i[30]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_8 
       (.I0(\ram_clk_config_reg[19]_16 [30]),
        .I1(\ram_clk_config_reg[18]_15 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [30]),
        .O(\s_axi_rdata_i[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[30]_i_9 
       (.I0(\ram_clk_config_reg[23]_20 [30]),
        .I1(\ram_clk_config_reg[22]_19 [30]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [30]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [30]),
        .O(\s_axi_rdata_i[30]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2202)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[16]_0 ),
        .I2(\s_axi_rdata_i_reg[16] ),
        .I3(config_reg__0[0]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_18 
       (.I0(\ram_clk_config_reg[31]_28 [31]),
        .I1(\ram_clk_config_reg[30]_27 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [31]),
        .O(\s_axi_rdata_i[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_19 
       (.I0(\ram_clk_config_reg[27]_24 [31]),
        .I1(\ram_clk_config_reg[26]_23 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [31]),
        .O(\s_axi_rdata_i[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDCDFDFDCDCDC)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(\s_axi_rdata_i[31]_i_5_n_0 ),
        .I1(\s_axi_rdata_i_reg[16] ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\s_axi_rdata_i_reg[31]_i_6_n_0 ),
        .I5(\s_axi_rdata_i_reg[31]_i_7_n_0 ),
        .O(\s_axi_rdata_i[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_20 
       (.I0(\ram_clk_config_reg[23]_20 [31]),
        .I1(\ram_clk_config_reg[22]_19 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [31]),
        .O(\s_axi_rdata_i[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_21 
       (.I0(\ram_clk_config_reg[19]_16 [31]),
        .I1(\ram_clk_config_reg[18]_15 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [31]),
        .O(\s_axi_rdata_i[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_22 
       (.I0(\ram_clk_config_reg[11]_8 [31]),
        .I1(\ram_clk_config_reg[10]_7 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [31]),
        .O(\s_axi_rdata_i[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_23 
       (.I0(\ram_clk_config_reg[15]_12 [31]),
        .I1(\ram_clk_config_reg[14]_11 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [31]),
        .O(\s_axi_rdata_i[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_24 
       (.I0(\ram_clk_config_reg[3]_1 [31]),
        .I1(\ram_clk_config_reg_n_0_[2][31] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [31]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][31] ),
        .O(\s_axi_rdata_i[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[31]_i_25 
       (.I0(\ram_clk_config_reg[7]_4 [31]),
        .I1(\ram_clk_config_reg[6]_3 [31]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][31] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [31]),
        .O(\s_axi_rdata_i[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata_i[31]_i_5 
       (.I0(\s_axi_rdata_i[31]_i_18_n_0 ),
        .I1(\s_axi_rdata_i[31]_i_19_n_0 ),
        .I2(Q[3]),
        .I3(\s_axi_rdata_i[31]_i_20_n_0 ),
        .I4(Q[2]),
        .I5(\s_axi_rdata_i[31]_i_21_n_0 ),
        .O(\s_axi_rdata_i[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [3]),
        .I1(\ram_clk_config_reg[22]_19 [3]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [3]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [3]),
        .O(\s_axi_rdata_i[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [3]),
        .I1(\ram_clk_config_reg[10]_7 [3]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [3]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [3]),
        .O(\s_axi_rdata_i[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [3]),
        .I1(\ram_clk_config_reg[14]_11 [3]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [3]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [3]),
        .O(\s_axi_rdata_i[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [3]),
        .I1(\ram_clk_config_reg_n_0_[2][3] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [3]),
        .I4(Q[0]),
        .I5(p_4_in[8]),
        .O(\s_axi_rdata_i[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [3]),
        .I1(\ram_clk_config_reg[6]_3 [3]),
        .I2(Q[1]),
        .I3(p_2_in[8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [3]),
        .O(\s_axi_rdata_i[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\s_axi_rdata_i_reg[3]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[3]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[3]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[3]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [3]),
        .I1(\ram_clk_config_reg[26]_23 [3]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [3]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [3]),
        .O(\s_axi_rdata_i[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [3]),
        .I1(\ram_clk_config_reg[30]_27 [3]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [3]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [3]),
        .O(\s_axi_rdata_i[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [3]),
        .I1(\ram_clk_config_reg[18]_15 [3]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [3]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [3]),
        .O(\s_axi_rdata_i[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [4]),
        .I1(\ram_clk_config_reg[22]_19 [4]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [4]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [4]),
        .O(\s_axi_rdata_i[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [4]),
        .I1(\ram_clk_config_reg[10]_7 [4]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [4]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [4]),
        .O(\s_axi_rdata_i[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [4]),
        .I1(\ram_clk_config_reg[14]_11 [4]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [4]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [4]),
        .O(\s_axi_rdata_i[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [4]),
        .I1(\ram_clk_config_reg_n_0_[2][4] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [4]),
        .I4(Q[0]),
        .I5(p_4_in[9]),
        .O(\s_axi_rdata_i[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [4]),
        .I1(\ram_clk_config_reg[6]_3 [4]),
        .I2(Q[1]),
        .I3(p_2_in[9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [4]),
        .O(\s_axi_rdata_i[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\s_axi_rdata_i_reg[4]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[4]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[4]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[4]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [4]),
        .I1(\ram_clk_config_reg[26]_23 [4]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [4]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [4]),
        .O(\s_axi_rdata_i[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [4]),
        .I1(\ram_clk_config_reg[30]_27 [4]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [4]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [4]),
        .O(\s_axi_rdata_i[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[4]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [4]),
        .I1(\ram_clk_config_reg[18]_15 [4]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [4]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [4]),
        .O(\s_axi_rdata_i[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [5]),
        .I1(\ram_clk_config_reg[22]_19 [5]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [5]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [5]),
        .O(\s_axi_rdata_i[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [5]),
        .I1(\ram_clk_config_reg[10]_7 [5]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [5]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [5]),
        .O(\s_axi_rdata_i[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [5]),
        .I1(\ram_clk_config_reg[14]_11 [5]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [5]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [5]),
        .O(\s_axi_rdata_i[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [5]),
        .I1(\ram_clk_config_reg_n_0_[2][5] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [5]),
        .I4(Q[0]),
        .I5(p_4_in[10]),
        .O(\s_axi_rdata_i[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [5]),
        .I1(\ram_clk_config_reg[6]_3 [5]),
        .I2(Q[1]),
        .I3(p_2_in[10]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [5]),
        .O(\s_axi_rdata_i[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(\s_axi_rdata_i_reg[5]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[5]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[5]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[5]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [5]),
        .I1(\ram_clk_config_reg[26]_23 [5]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [5]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [5]),
        .O(\s_axi_rdata_i[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [5]),
        .I1(\ram_clk_config_reg[30]_27 [5]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [5]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [5]),
        .O(\s_axi_rdata_i[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[5]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [5]),
        .I1(\ram_clk_config_reg[18]_15 [5]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [5]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [5]),
        .O(\s_axi_rdata_i[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [6]),
        .I1(\ram_clk_config_reg[22]_19 [6]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [6]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [6]),
        .O(\s_axi_rdata_i[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_11 
       (.I0(\ram_clk_config_reg[3]_1 [6]),
        .I1(\ram_clk_config_reg_n_0_[2][6] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [6]),
        .I4(Q[0]),
        .I5(p_4_in[11]),
        .O(\s_axi_rdata_i[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_12 
       (.I0(\ram_clk_config_reg[7]_4 [6]),
        .I1(\ram_clk_config_reg[6]_3 [6]),
        .I2(Q[1]),
        .I3(p_2_in[11]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [6]),
        .O(\s_axi_rdata_i[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_13 
       (.I0(\ram_clk_config_reg[11]_8 [6]),
        .I1(\ram_clk_config_reg[10]_7 [6]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [6]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [6]),
        .O(\s_axi_rdata_i[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_14 
       (.I0(\ram_clk_config_reg[15]_12 [6]),
        .I1(\ram_clk_config_reg[14]_11 [6]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [6]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [6]),
        .O(\s_axi_rdata_i[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \s_axi_rdata_i[6]_i_4 
       (.I0(\s_axi_rdata_i[6]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[6]_i_8_n_0 ),
        .I2(Q[3]),
        .I3(\s_axi_rdata_i[6]_i_9_n_0 ),
        .I4(Q[2]),
        .I5(\s_axi_rdata_i[6]_i_10_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_7 
       (.I0(\ram_clk_config_reg[31]_28 [6]),
        .I1(\ram_clk_config_reg[30]_27 [6]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [6]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [6]),
        .O(\s_axi_rdata_i[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_8 
       (.I0(\ram_clk_config_reg[27]_24 [6]),
        .I1(\ram_clk_config_reg[26]_23 [6]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [6]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [6]),
        .O(\s_axi_rdata_i[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[6]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [6]),
        .I1(\ram_clk_config_reg[18]_15 [6]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [6]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [6]),
        .O(\s_axi_rdata_i[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [7]),
        .I1(\ram_clk_config_reg[22]_19 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [7]),
        .O(\s_axi_rdata_i[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [7]),
        .I1(\ram_clk_config_reg[10]_7 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [7]),
        .O(\s_axi_rdata_i[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [7]),
        .I1(\ram_clk_config_reg[14]_11 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [7]),
        .O(\s_axi_rdata_i[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [7]),
        .I1(\ram_clk_config_reg_n_0_[2][7] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg_n_0_[0][7] ),
        .O(\s_axi_rdata_i[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [7]),
        .I1(\ram_clk_config_reg[6]_3 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][7] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [7]),
        .O(\s_axi_rdata_i[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_2 
       (.I0(\s_axi_rdata_i_reg[7]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[7]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[7]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[7]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [7]),
        .I1(\ram_clk_config_reg[26]_23 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [7]),
        .O(\s_axi_rdata_i[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [7]),
        .I1(\ram_clk_config_reg[30]_27 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [7]),
        .O(\s_axi_rdata_i[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[7]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [7]),
        .I1(\ram_clk_config_reg[18]_15 [7]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [7]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [7]),
        .O(\s_axi_rdata_i[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_10 
       (.I0(\ram_clk_config_reg[3]_1 [8]),
        .I1(\ram_clk_config_reg_n_0_[2][8] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [8]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[0]),
        .O(\s_axi_rdata_i[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_11 
       (.I0(\ram_clk_config_reg[7]_4 [8]),
        .I1(\ram_clk_config_reg[6]_3 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][8] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [8]),
        .O(\s_axi_rdata_i[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_12 
       (.I0(\ram_clk_config_reg[19]_16 [8]),
        .I1(\ram_clk_config_reg[18]_15 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [8]),
        .O(\s_axi_rdata_i[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_13 
       (.I0(\ram_clk_config_reg[23]_20 [8]),
        .I1(\ram_clk_config_reg[22]_19 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [8]),
        .O(\s_axi_rdata_i[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_14 
       (.I0(\ram_clk_config_reg[27]_24 [8]),
        .I1(\ram_clk_config_reg[26]_23 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [8]),
        .O(\s_axi_rdata_i[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_15 
       (.I0(\ram_clk_config_reg[31]_28 [8]),
        .I1(\ram_clk_config_reg[30]_27 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [8]),
        .O(\s_axi_rdata_i[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAACFAAC0)) 
    \s_axi_rdata_i[8]_i_2 
       (.I0(\s_axi_rdata_i_reg[8]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[8]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\s_axi_rdata_i_reg[8]_i_5_n_0 ),
        .I5(\s_axi_rdata_i_reg[16] ),
        .O(\bus2ip_addr_i_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_8 
       (.I0(\ram_clk_config_reg[11]_8 [8]),
        .I1(\ram_clk_config_reg[10]_7 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [8]),
        .O(\s_axi_rdata_i[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_9 
       (.I0(\ram_clk_config_reg[15]_12 [8]),
        .I1(\ram_clk_config_reg[14]_11 [8]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [8]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [8]),
        .O(\s_axi_rdata_i[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_10 
       (.I0(\ram_clk_config_reg[23]_20 [9]),
        .I1(\ram_clk_config_reg[22]_19 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[21]_18 [9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[20]_17 [9]),
        .O(\s_axi_rdata_i[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_11 
       (.I0(\ram_clk_config_reg[11]_8 [9]),
        .I1(\ram_clk_config_reg[10]_7 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[9]_6 [9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[8]_5 [9]),
        .O(\s_axi_rdata_i[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_12 
       (.I0(\ram_clk_config_reg[15]_12 [9]),
        .I1(\ram_clk_config_reg[14]_11 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[13]_10 [9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[12]_9 [9]),
        .O(\s_axi_rdata_i[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_13 
       (.I0(\ram_clk_config_reg[3]_1 [9]),
        .I1(\ram_clk_config_reg_n_0_[2][9] ),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[1]_0 [9]),
        .I4(Q[0]),
        .I5(S2_CLKFBOUT_MULT[1]),
        .O(\s_axi_rdata_i[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_14 
       (.I0(\ram_clk_config_reg[7]_4 [9]),
        .I1(\ram_clk_config_reg[6]_3 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg_n_0_[5][9] ),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[4]_2 [9]),
        .O(\s_axi_rdata_i[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_2 
       (.I0(\s_axi_rdata_i_reg[9]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[9]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\s_axi_rdata_i_reg[9]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\s_axi_rdata_i_reg[9]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[6]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_7 
       (.I0(\ram_clk_config_reg[27]_24 [9]),
        .I1(\ram_clk_config_reg[26]_23 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[25]_22 [9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[24]_21 [9]),
        .O(\s_axi_rdata_i[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_8 
       (.I0(\ram_clk_config_reg[31]_28 [9]),
        .I1(\ram_clk_config_reg[30]_27 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[29]_26 [9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[28]_25 [9]),
        .O(\s_axi_rdata_i[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_9 
       (.I0(\ram_clk_config_reg[19]_16 [9]),
        .I1(\ram_clk_config_reg[18]_15 [9]),
        .I2(Q[1]),
        .I3(\ram_clk_config_reg[17]_14 [9]),
        .I4(Q[0]),
        .I5(\ram_clk_config_reg[16]_13 [9]),
        .O(\s_axi_rdata_i[9]_i_9_n_0 ));
  MUXF7 \s_axi_rdata_i_reg[0]_i_9 
       (.I0(\s_axi_rdata_i[0]_i_16_n_0 ),
        .I1(\s_axi_rdata_i[0]_i_17_n_0 ),
        .O(\bus2ip_addr_i_reg[4]_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[10]_i_3 
       (.I0(\s_axi_rdata_i_reg[10]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[10]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[10]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[10]_i_4 
       (.I0(\s_axi_rdata_i[10]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[10]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[10]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[10]_i_5 
       (.I0(\s_axi_rdata_i[10]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[10]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[10]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[10]_i_6 
       (.I0(\s_axi_rdata_i[10]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[10]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[10]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[10]_i_7 
       (.I0(\s_axi_rdata_i[10]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[10]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[10]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[11]_i_3 
       (.I0(\s_axi_rdata_i[11]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[11]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[11]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[11]_i_4 
       (.I0(\s_axi_rdata_i[11]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[11]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[11]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[11]_i_5 
       (.I0(\s_axi_rdata_i[11]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[11]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[11]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[11]_i_6 
       (.I0(\s_axi_rdata_i[11]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[11]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[11]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[12]_i_3 
       (.I0(\s_axi_rdata_i[12]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[12]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[12]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[12]_i_4 
       (.I0(\s_axi_rdata_i[12]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[12]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[12]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[12]_i_5 
       (.I0(\s_axi_rdata_i[12]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[12]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[12]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[12]_i_6 
       (.I0(\s_axi_rdata_i[12]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[12]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[12]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[13]_i_3 
       (.I0(\s_axi_rdata_i_reg[13]_i_5_n_0 ),
        .I1(\s_axi_rdata_i_reg[13]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_4 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[13]_i_4 
       (.I0(\s_axi_rdata_i_reg[13]_i_7_n_0 ),
        .I1(\s_axi_rdata_i_reg[13]_i_8_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_5 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[13]_i_5 
       (.I0(\s_axi_rdata_i[13]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[13]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[13]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[13]_i_6 
       (.I0(\s_axi_rdata_i[13]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[13]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[13]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[13]_i_7 
       (.I0(\s_axi_rdata_i[13]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[13]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[13]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[13]_i_8 
       (.I0(\s_axi_rdata_i[13]_i_15_n_0 ),
        .I1(\s_axi_rdata_i[13]_i_16_n_0 ),
        .O(\s_axi_rdata_i_reg[13]_i_8_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[14]_i_3 
       (.I0(\s_axi_rdata_i[14]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[14]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[14]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[14]_i_4 
       (.I0(\s_axi_rdata_i[14]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[14]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[14]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[14]_i_5 
       (.I0(\s_axi_rdata_i[14]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[14]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[14]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[14]_i_6 
       (.I0(\s_axi_rdata_i[14]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[14]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[14]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[15]_i_6 
       (.I0(\s_axi_rdata_i[15]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[15]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[15]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[15]_i_7 
       (.I0(\s_axi_rdata_i[15]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[15]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[15]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[15]_i_8 
       (.I0(\s_axi_rdata_i[15]_i_15_n_0 ),
        .I1(\s_axi_rdata_i[15]_i_16_n_0 ),
        .O(\s_axi_rdata_i_reg[15]_i_8_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[15]_i_9 
       (.I0(\s_axi_rdata_i[15]_i_17_n_0 ),
        .I1(\s_axi_rdata_i[15]_i_18_n_0 ),
        .O(\s_axi_rdata_i_reg[15]_i_9_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[16]_i_2 
       (.I0(\s_axi_rdata_i_reg[16]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[16]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[16]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[16]_i_3 
       (.I0(\s_axi_rdata_i_reg[16]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[16]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[16]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[16]_i_4 
       (.I0(\s_axi_rdata_i[16]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[16]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[16]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[16]_i_5 
       (.I0(\s_axi_rdata_i[16]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[16]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[16]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[16]_i_6 
       (.I0(\s_axi_rdata_i[16]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[16]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[16]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[16]_i_7 
       (.I0(\s_axi_rdata_i[16]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[16]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[16]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[17]_i_6 
       (.I0(\s_axi_rdata_i[17]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[17]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[17]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[18]_i_2 
       (.I0(\s_axi_rdata_i_reg[18]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[18]_i_5_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_2 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[18]_i_3 
       (.I0(\s_axi_rdata_i_reg[18]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[18]_i_7_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_3 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[18]_i_4 
       (.I0(\s_axi_rdata_i[18]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[18]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[18]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[18]_i_5 
       (.I0(\s_axi_rdata_i[18]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[18]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[18]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[18]_i_6 
       (.I0(\s_axi_rdata_i[18]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[18]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[18]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[18]_i_7 
       (.I0(\s_axi_rdata_i[18]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[18]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[18]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[19]_i_2 
       (.I0(\s_axi_rdata_i_reg[19]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[19]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[19]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[19]_i_3 
       (.I0(\s_axi_rdata_i_reg[19]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[19]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[19]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[19]_i_4 
       (.I0(\s_axi_rdata_i[19]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[19]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[19]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[19]_i_5 
       (.I0(\s_axi_rdata_i[19]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[19]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[19]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[19]_i_6 
       (.I0(\s_axi_rdata_i[19]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[19]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[19]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[19]_i_7 
       (.I0(\s_axi_rdata_i[19]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[19]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[19]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[1]_i_4 
       (.I0(\s_axi_rdata_i[1]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[1]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[1]_i_5 
       (.I0(\s_axi_rdata_i[1]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[1]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[1]_i_6 
       (.I0(\s_axi_rdata_i[1]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[1]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[1]_i_7 
       (.I0(\s_axi_rdata_i[1]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[1]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[20]_i_2 
       (.I0(\s_axi_rdata_i_reg[20]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[20]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[20]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[20]_i_3 
       (.I0(\s_axi_rdata_i_reg[20]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[20]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[20]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[20]_i_4 
       (.I0(\s_axi_rdata_i[20]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[20]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[20]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[20]_i_5 
       (.I0(\s_axi_rdata_i[20]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[20]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[20]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[20]_i_6 
       (.I0(\s_axi_rdata_i[20]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[20]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[20]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[20]_i_7 
       (.I0(\s_axi_rdata_i[20]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[20]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[20]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[21]_i_2 
       (.I0(\s_axi_rdata_i_reg[21]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[21]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[21]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[21]_i_3 
       (.I0(\s_axi_rdata_i_reg[21]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[21]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[21]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[21]_i_4 
       (.I0(\s_axi_rdata_i[21]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[21]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[21]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[21]_i_5 
       (.I0(\s_axi_rdata_i[21]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[21]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[21]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[21]_i_6 
       (.I0(\s_axi_rdata_i[21]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[21]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[21]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[21]_i_7 
       (.I0(\s_axi_rdata_i[21]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[21]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[21]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[22]_i_2 
       (.I0(\s_axi_rdata_i_reg[22]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[22]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[22]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[22]_i_3 
       (.I0(\s_axi_rdata_i_reg[22]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[22]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[22]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[22]_i_4 
       (.I0(\s_axi_rdata_i[22]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[22]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[22]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[22]_i_5 
       (.I0(\s_axi_rdata_i[22]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[22]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[22]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[22]_i_6 
       (.I0(\s_axi_rdata_i[22]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[22]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[22]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[22]_i_7 
       (.I0(\s_axi_rdata_i[22]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[22]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[22]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[23]_i_3 
       (.I0(\s_axi_rdata_i_reg[23]_i_7_n_0 ),
        .I1(\s_axi_rdata_i_reg[23]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[23]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[23]_i_6 
       (.I0(\s_axi_rdata_i[23]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[23]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[23]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[23]_i_7 
       (.I0(\s_axi_rdata_i[23]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[23]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[23]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[23]_i_8 
       (.I0(\s_axi_rdata_i[23]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[23]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[23]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[24]_i_2 
       (.I0(\s_axi_rdata_i_reg[24]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[24]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[24]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[24]_i_3 
       (.I0(\s_axi_rdata_i_reg[24]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[24]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[24]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[24]_i_4 
       (.I0(\s_axi_rdata_i[24]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[24]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[24]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[24]_i_5 
       (.I0(\s_axi_rdata_i[24]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[24]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[24]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[24]_i_6 
       (.I0(\s_axi_rdata_i[24]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[24]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[24]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[24]_i_7 
       (.I0(\s_axi_rdata_i[24]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[24]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[24]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[25]_i_2 
       (.I0(\s_axi_rdata_i_reg[25]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[25]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[25]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[25]_i_3 
       (.I0(\s_axi_rdata_i_reg[25]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[25]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[25]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[25]_i_4 
       (.I0(\s_axi_rdata_i[25]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[25]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[25]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[25]_i_5 
       (.I0(\s_axi_rdata_i[25]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[25]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[25]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[25]_i_6 
       (.I0(\s_axi_rdata_i[25]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[25]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[25]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[25]_i_7 
       (.I0(\s_axi_rdata_i[25]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[25]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[25]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[26]_i_2 
       (.I0(\s_axi_rdata_i_reg[26]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[26]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[26]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[26]_i_3 
       (.I0(\s_axi_rdata_i_reg[26]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[26]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[26]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[26]_i_4 
       (.I0(\s_axi_rdata_i[26]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[26]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[26]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[26]_i_5 
       (.I0(\s_axi_rdata_i[26]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[26]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[26]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[26]_i_6 
       (.I0(\s_axi_rdata_i[26]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[26]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[26]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[26]_i_7 
       (.I0(\s_axi_rdata_i[26]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[26]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[26]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[27]_i_2 
       (.I0(\s_axi_rdata_i_reg[27]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[27]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[27]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[27]_i_3 
       (.I0(\s_axi_rdata_i_reg[27]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[27]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[27]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[27]_i_4 
       (.I0(\s_axi_rdata_i[27]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[27]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[27]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[27]_i_5 
       (.I0(\s_axi_rdata_i[27]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[27]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[27]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[27]_i_6 
       (.I0(\s_axi_rdata_i[27]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[27]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[27]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[27]_i_7 
       (.I0(\s_axi_rdata_i[27]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[27]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[27]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[28]_i_2 
       (.I0(\s_axi_rdata_i_reg[28]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[28]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[28]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[28]_i_3 
       (.I0(\s_axi_rdata_i_reg[28]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[28]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[28]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[28]_i_4 
       (.I0(\s_axi_rdata_i[28]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[28]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[28]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[28]_i_5 
       (.I0(\s_axi_rdata_i[28]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[28]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[28]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[28]_i_6 
       (.I0(\s_axi_rdata_i[28]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[28]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[28]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[28]_i_7 
       (.I0(\s_axi_rdata_i[28]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[28]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[28]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[29]_i_2 
       (.I0(\s_axi_rdata_i_reg[29]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[29]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[29]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[29]_i_3 
       (.I0(\s_axi_rdata_i_reg[29]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[29]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[29]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[29]_i_4 
       (.I0(\s_axi_rdata_i[29]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[29]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[29]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[29]_i_5 
       (.I0(\s_axi_rdata_i[29]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[29]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[29]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[29]_i_6 
       (.I0(\s_axi_rdata_i[29]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[29]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[29]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[29]_i_7 
       (.I0(\s_axi_rdata_i[29]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[29]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[29]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[2]_i_4 
       (.I0(\s_axi_rdata_i[2]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[2]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[2]_i_5 
       (.I0(\s_axi_rdata_i[2]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[2]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[30]_i_2 
       (.I0(\s_axi_rdata_i_reg[30]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[30]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[30]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \s_axi_rdata_i_reg[30]_i_3 
       (.I0(\s_axi_rdata_i_reg[30]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[30]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[30]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[30]_i_4 
       (.I0(\s_axi_rdata_i[30]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[30]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[30]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[30]_i_5 
       (.I0(\s_axi_rdata_i[30]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[30]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[30]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[30]_i_6 
       (.I0(\s_axi_rdata_i[30]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[30]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[30]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[30]_i_7 
       (.I0(\s_axi_rdata_i[30]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[30]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[30]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[31]_i_6 
       (.I0(\s_axi_rdata_i[31]_i_22_n_0 ),
        .I1(\s_axi_rdata_i[31]_i_23_n_0 ),
        .O(\s_axi_rdata_i_reg[31]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[31]_i_7 
       (.I0(\s_axi_rdata_i[31]_i_24_n_0 ),
        .I1(\s_axi_rdata_i[31]_i_25_n_0 ),
        .O(\s_axi_rdata_i_reg[31]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[3]_i_3 
       (.I0(\s_axi_rdata_i[3]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[3]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[3]_i_4 
       (.I0(\s_axi_rdata_i[3]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[3]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[3]_i_5 
       (.I0(\s_axi_rdata_i[3]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[3]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[3]_i_6 
       (.I0(\s_axi_rdata_i[3]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[3]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[4]_i_3 
       (.I0(\s_axi_rdata_i[4]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[4]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[4]_i_4 
       (.I0(\s_axi_rdata_i[4]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[4]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[4]_i_5 
       (.I0(\s_axi_rdata_i[4]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[4]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[4]_i_6 
       (.I0(\s_axi_rdata_i[4]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[4]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[5]_i_3 
       (.I0(\s_axi_rdata_i[5]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[5]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[5]_i_4 
       (.I0(\s_axi_rdata_i[5]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[5]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[5]_i_5 
       (.I0(\s_axi_rdata_i[5]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[5]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[5]_i_6 
       (.I0(\s_axi_rdata_i[5]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[5]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[6]_i_3 
       (.I0(\s_axi_rdata_i_reg[6]_i_5_n_0 ),
        .I1(\s_axi_rdata_i_reg[6]_i_6_n_0 ),
        .O(\bus2ip_addr_i_reg[5]_6 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[6]_i_5 
       (.I0(\s_axi_rdata_i[6]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[6]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[6]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[6]_i_6 
       (.I0(\s_axi_rdata_i[6]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[6]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[6]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[7]_i_3 
       (.I0(\s_axi_rdata_i[7]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[7]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[7]_i_4 
       (.I0(\s_axi_rdata_i[7]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[7]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[7]_i_5 
       (.I0(\s_axi_rdata_i[7]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[7]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[7]_i_6 
       (.I0(\s_axi_rdata_i[7]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[7]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \s_axi_rdata_i_reg[8]_i_3 
       (.I0(\s_axi_rdata_i_reg[8]_i_6_n_0 ),
        .I1(\s_axi_rdata_i_reg[8]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[8]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \s_axi_rdata_i_reg[8]_i_4 
       (.I0(\s_axi_rdata_i[8]_i_8_n_0 ),
        .I1(\s_axi_rdata_i[8]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[8]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[8]_i_5 
       (.I0(\s_axi_rdata_i[8]_i_10_n_0 ),
        .I1(\s_axi_rdata_i[8]_i_11_n_0 ),
        .O(\s_axi_rdata_i_reg[8]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[8]_i_6 
       (.I0(\s_axi_rdata_i[8]_i_12_n_0 ),
        .I1(\s_axi_rdata_i[8]_i_13_n_0 ),
        .O(\s_axi_rdata_i_reg[8]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[8]_i_7 
       (.I0(\s_axi_rdata_i[8]_i_14_n_0 ),
        .I1(\s_axi_rdata_i[8]_i_15_n_0 ),
        .O(\s_axi_rdata_i_reg[8]_i_7_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[9]_i_3 
       (.I0(\s_axi_rdata_i[9]_i_7_n_0 ),
        .I1(\s_axi_rdata_i[9]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[9]_i_3_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[9]_i_4 
       (.I0(\s_axi_rdata_i[9]_i_9_n_0 ),
        .I1(\s_axi_rdata_i[9]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[9]_i_4_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[9]_i_5 
       (.I0(\s_axi_rdata_i[9]_i_11_n_0 ),
        .I1(\s_axi_rdata_i[9]_i_12_n_0 ),
        .O(\s_axi_rdata_i_reg[9]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \s_axi_rdata_i_reg[9]_i_6 
       (.I0(\s_axi_rdata_i[9]_i_13_n_0 ),
        .I1(\s_axi_rdata_i[9]_i_14_n_0 ),
        .O(\s_axi_rdata_i_reg[9]_i_6_n_0 ),
        .S(Q[2]));
  FDRE wrack_reg_1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce),
        .Q(wrack_reg_1),
        .R(wrack_reg_10));
  FDRE wrack_reg_2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrack_reg_1),
        .Q(wrack_reg_2),
        .R(wrack_reg_10));
endmodule

module rfdc_ex_clk_wiz_adc1_0_pll_drp
   (out,
    SRDY,
    DWE,
    DEN,
    reset,
    DI,
    DADDR,
    s_axi_aclk,
    RST_MMCM_PLL_reg_0,
    SEN,
    drdy,
    DO,
    Q,
    SR,
    \ram_reg[14][5]_0 ,
    \ram_reg[12][5]_0 ,
    config_reg,
    SRDY_reg_0);
  output [3:0]out;
  output SRDY;
  output DWE;
  output DEN;
  output reset;
  output [15:0]DI;
  output [5:0]DADDR;
  input s_axi_aclk;
  input RST_MMCM_PLL_reg_0;
  input SEN;
  input drdy;
  input [12:0]DO;
  input [15:0]Q;
  input [0:0]SR;
  input [7:0]\ram_reg[14][5]_0 ;
  input [7:0]\ram_reg[12][5]_0 ;
  input [0:0]config_reg;
  input SRDY_reg_0;

  wire [5:0]DADDR;
  wire \DADDR[6]_i_1_n_0 ;
  wire \DADDR[6]_i_2_n_0 ;
  wire DEN;
  wire [15:0]DI;
  wire \DI[0]_i_1_n_0 ;
  wire \DI[10]_i_1_n_0 ;
  wire \DI[11]_i_1_n_0 ;
  wire \DI[12]_i_1_n_0 ;
  wire \DI[13]_i_1_n_0 ;
  wire \DI[14]_i_1_n_0 ;
  wire \DI[15]_i_1_n_0 ;
  wire \DI[15]_i_2_n_0 ;
  wire \DI[15]_i_3_n_0 ;
  wire \DI[1]_i_1_n_0 ;
  wire \DI[2]_i_1_n_0 ;
  wire \DI[3]_i_1_n_0 ;
  wire \DI[4]_i_1_n_0 ;
  wire \DI[5]_i_1_n_0 ;
  wire \DI[6]_i_1_n_0 ;
  wire \DI[7]_i_1_n_0 ;
  wire \DI[8]_i_1_n_0 ;
  wire \DI[9]_i_1_n_0 ;
  wire [12:0]DO;
  wire DWE;
  wire [15:0]Q;
  wire RST_MMCM_PLL_reg_0;
  wire SEN;
  wire [0:0]SR;
  wire SRDY;
  wire SRDY_reg_0;
  wire [0:0]config_reg;
  (* DONT_TOUCH *) wire [3:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[1]_i_4_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire drdy;
  wire [0:0]high_time;
  wire [5:0]low_time;
  wire next_den;
  wire next_dwe;
  wire [3:2]next_ram_addr;
  wire next_srdy;
  wire [3:0]next_state;
  wire no_count;
  wire [15:8]p_10_in;
  wire [15:4]p_11_in;
  wire [6:0]p_2_in;
  wire [7:6]p_3_in;
  wire [13:0]p_4_in;
  wire [9:0]p_7_in;
  wire [14:0]p_8_in;
  wire [14:0]p_9_in;
  wire \ram[12][0]_i_1_n_0 ;
  wire \ram[12][1]_i_1_n_0 ;
  wire \ram[12][2]_i_1_n_0 ;
  wire \ram[12][2]_i_2_n_0 ;
  wire \ram[12][3]_i_1_n_0 ;
  wire \ram[12][4]_i_1_n_0 ;
  wire \ram[12][4]_i_2_n_0 ;
  wire \ram[12][4]_i_3_n_0 ;
  wire \ram[12][5]_i_1_n_0 ;
  wire \ram[12][5]_i_2_n_0 ;
  wire \ram[12][5]_i_3_n_0 ;
  wire \ram[12][5]_i_4_n_0 ;
  wire \ram[12][6]_i_1_n_0 ;
  wire \ram[13][6]_i_1_n_0 ;
  wire \ram[13][7]_i_1_n_0 ;
  wire \ram[13][7]_i_2_n_0 ;
  wire \ram[14][2]_i_2_n_0 ;
  wire \ram[14][4]_i_2_n_0 ;
  wire \ram[14][4]_i_3_n_0 ;
  wire \ram[14][5]_i_2_n_0 ;
  wire \ram[14][5]_i_3_n_0 ;
  wire \ram[14][5]_i_4_n_0 ;
  wire \ram[15][7]_i_2_n_0 ;
  wire \ram[16][13]_i_2_n_0 ;
  wire \ram[16][2]_i_2_n_0 ;
  wire \ram[16][4]_i_2_n_0 ;
  wire \ram[16][4]_i_3_n_0 ;
  wire \ram[16][5]_i_2_n_0 ;
  wire \ram[16][5]_i_3_n_0 ;
  wire \ram[16][5]_i_4_n_0 ;
  wire \ram[17][1]_i_2_n_0 ;
  wire \ram[17][2]_i_2_n_0 ;
  wire \ram[17][3]_i_2_n_0 ;
  wire \ram[17][3]_i_3_n_0 ;
  wire \ram[17][4]_i_2_n_0 ;
  wire \ram[17][4]_i_3_n_0 ;
  wire \ram[17][5]_i_2_n_0 ;
  wire \ram[17][6]_i_2_n_0 ;
  wire \ram[18][6]_i_2_n_0 ;
  wire \ram[18][7]_i_2_n_0 ;
  wire \ram[19][8]_i_2_n_0 ;
  wire \ram[19][9]_i_2_n_0 ;
  wire \ram[20][0]_i_2_n_0 ;
  wire \ram[20][10]_i_2_n_0 ;
  wire \ram[20][11]_i_2_n_0 ;
  wire \ram[20][12]_i_2_n_0 ;
  wire \ram[20][12]_i_3_n_0 ;
  wire \ram[20][13]_i_2_n_0 ;
  wire \ram[20][13]_i_3_n_0 ;
  wire \ram[20][14]_i_2_n_0 ;
  wire \ram[20][14]_i_3_n_0 ;
  wire \ram[20][1]_i_2_n_0 ;
  wire \ram[20][2]_i_2_n_0 ;
  wire \ram[20][3]_i_2_n_0 ;
  wire \ram[20][4]_i_2_n_0 ;
  wire \ram[20][5]_i_2_n_0 ;
  wire \ram[20][6]_i_2_n_0 ;
  wire \ram[20][7]_i_2_n_0 ;
  wire \ram[20][8]_i_2_n_0 ;
  wire \ram[20][9]_i_2_n_0 ;
  wire \ram[21][0]_i_2_n_0 ;
  wire \ram[21][10]_i_2_n_0 ;
  wire \ram[21][10]_i_3_n_0 ;
  wire \ram[21][11]_i_2_n_0 ;
  wire \ram[21][11]_i_3_n_0 ;
  wire \ram[21][12]_i_2_n_0 ;
  wire \ram[21][12]_i_3_n_0 ;
  wire \ram[21][13]_i_2_n_0 ;
  wire \ram[21][13]_i_3_n_0 ;
  wire \ram[21][14]_i_10_n_0 ;
  wire \ram[21][14]_i_11_n_0 ;
  wire \ram[21][14]_i_12_n_0 ;
  wire \ram[21][14]_i_2_n_0 ;
  wire \ram[21][14]_i_3_n_0 ;
  wire \ram[21][14]_i_5_n_0 ;
  wire \ram[21][14]_i_6_n_0 ;
  wire \ram[21][14]_i_7_n_0 ;
  wire \ram[21][14]_i_8_n_0 ;
  wire \ram[21][14]_i_9_n_0 ;
  wire \ram[21][1]_i_2_n_0 ;
  wire \ram[21][2]_i_2_n_0 ;
  wire \ram[21][2]_i_3_n_0 ;
  wire \ram[21][3]_i_2_n_0 ;
  wire \ram[21][3]_i_3_n_0 ;
  wire \ram[21][4]_i_2_n_0 ;
  wire \ram[21][4]_i_3_n_0 ;
  wire \ram[21][5]_i_2_n_0 ;
  wire \ram[21][5]_i_3_n_0 ;
  wire \ram[21][6]_i_2_n_0 ;
  wire \ram[21][6]_i_3_n_0 ;
  wire \ram[21][7]_i_2_n_0 ;
  wire \ram[21][7]_i_3_n_0 ;
  wire \ram[21][8]_i_2_n_0 ;
  wire \ram[21][8]_i_3_n_0 ;
  wire \ram[21][9]_i_2_n_0 ;
  wire \ram[21][9]_i_3_n_0 ;
  wire \ram[22][12]_i_2_n_0 ;
  wire \ram[22][12]_i_3_n_0 ;
  wire \ram[22][15]_i_2_n_0 ;
  wire \ram[22][15]_i_3_n_0 ;
  wire \ram[23][11]_i_2_n_0 ;
  wire \ram[23][12]_i_2_n_0 ;
  wire \ram[23][12]_i_3_n_0 ;
  wire \ram[23][15]_i_10_n_0 ;
  wire \ram[23][15]_i_11_n_0 ;
  wire \ram[23][15]_i_12_n_0 ;
  wire \ram[23][15]_i_2_n_0 ;
  wire \ram[23][15]_i_3_n_0 ;
  wire \ram[23][15]_i_5_n_0 ;
  wire \ram[23][15]_i_6_n_0 ;
  wire \ram[23][15]_i_7_n_0 ;
  wire \ram[23][15]_i_8_n_0 ;
  wire \ram[23][15]_i_9_n_0 ;
  wire \ram[23][4]_i_2_n_0 ;
  wire \ram[23][7]_i_2_n_0 ;
  wire \ram[23][8]_i_2_n_0 ;
  wire [5:0]ram_addr;
  wire \ram_addr[0]_i_1_n_0 ;
  wire \ram_addr[1]_i_1_n_0 ;
  wire \ram_addr[3]_i_1_n_0 ;
  wire \ram_addr[3]_i_3_n_0 ;
  wire \ram_addr[4]_i_1_n_0 ;
  wire \ram_addr[5]_i_1_n_0 ;
  wire \ram_addr[5]_i_2_n_0 ;
  wire [38:0]ram_do;
  wire \ram_do[0]_i_1_n_0 ;
  wire \ram_do[0]_i_2_n_0 ;
  wire \ram_do[0]_i_3_n_0 ;
  wire \ram_do[0]_i_4_n_0 ;
  wire \ram_do[10]_i_1_n_0 ;
  wire \ram_do[10]_i_2_n_0 ;
  wire \ram_do[10]_i_3_n_0 ;
  wire \ram_do[10]_i_4_n_0 ;
  wire \ram_do[11]_i_1_n_0 ;
  wire \ram_do[11]_i_2_n_0 ;
  wire \ram_do[11]_i_3_n_0 ;
  wire \ram_do[11]_i_4_n_0 ;
  wire \ram_do[12]_i_1_n_0 ;
  wire \ram_do[12]_i_2_n_0 ;
  wire \ram_do[12]_i_3_n_0 ;
  wire \ram_do[13]_i_1_n_0 ;
  wire \ram_do[13]_i_2_n_0 ;
  wire \ram_do[14]_i_1_n_0 ;
  wire \ram_do[14]_i_2_n_0 ;
  wire \ram_do[15]_i_1_n_0 ;
  wire \ram_do[15]_i_2_n_0 ;
  wire \ram_do[15]_i_3_n_0 ;
  wire \ram_do[1]_i_1_n_0 ;
  wire \ram_do[1]_i_2_n_0 ;
  wire \ram_do[1]_i_3_n_0 ;
  wire \ram_do[1]_i_4_n_0 ;
  wire \ram_do[25]_i_1_n_0 ;
  wire \ram_do[26]_i_1_n_0 ;
  wire \ram_do[27]_i_1_n_0 ;
  wire \ram_do[28]_i_1_n_0 ;
  wire \ram_do[29]_i_1_n_0 ;
  wire \ram_do[2]_i_1_n_0 ;
  wire \ram_do[2]_i_2_n_0 ;
  wire \ram_do[2]_i_3_n_0 ;
  wire \ram_do[2]_i_4_n_0 ;
  wire \ram_do[30]_i_1_n_0 ;
  wire \ram_do[31]_i_1_n_0 ;
  wire \ram_do[32]_i_1_n_0 ;
  wire \ram_do[33]_i_1_n_0 ;
  wire \ram_do[34]_i_1_n_0 ;
  wire \ram_do[35]_i_1_n_0 ;
  wire \ram_do[36]_i_1_n_0 ;
  wire \ram_do[38]_i_1_n_0 ;
  wire \ram_do[3]_i_1_n_0 ;
  wire \ram_do[3]_i_2_n_0 ;
  wire \ram_do[3]_i_3_n_0 ;
  wire \ram_do[3]_i_4_n_0 ;
  wire \ram_do[4]_i_1_n_0 ;
  wire \ram_do[4]_i_2_n_0 ;
  wire \ram_do[4]_i_3_n_0 ;
  wire \ram_do[4]_i_4_n_0 ;
  wire \ram_do[5]_i_1_n_0 ;
  wire \ram_do[5]_i_2_n_0 ;
  wire \ram_do[5]_i_3_n_0 ;
  wire \ram_do[5]_i_4_n_0 ;
  wire \ram_do[6]_i_2_n_0 ;
  wire \ram_do[6]_i_3_n_0 ;
  wire \ram_do[6]_i_4_n_0 ;
  wire \ram_do[6]_i_5_n_0 ;
  wire \ram_do[7]_i_1_n_0 ;
  wire \ram_do[7]_i_2_n_0 ;
  wire \ram_do[7]_i_3_n_0 ;
  wire \ram_do[7]_i_4_n_0 ;
  wire \ram_do[7]_i_5_n_0 ;
  wire \ram_do[8]_i_1_n_0 ;
  wire \ram_do[8]_i_2_n_0 ;
  wire \ram_do[8]_i_3_n_0 ;
  wire \ram_do[8]_i_4_n_0 ;
  wire \ram_do[9]_i_1_n_0 ;
  wire \ram_do[9]_i_2_n_0 ;
  wire \ram_do[9]_i_3_n_0 ;
  wire \ram_do[9]_i_4_n_0 ;
  wire \ram_do_reg[6]_i_1_n_0 ;
  wire [7:0]\ram_reg[12][5]_0 ;
  wire [11:0]\ram_reg[12]_40 ;
  wire [7:6]\ram_reg[13]_39 ;
  wire [7:0]\ram_reg[14][5]_0 ;
  wire [11:0]\ram_reg[14]_38 ;
  wire [7:6]\ram_reg[15]_37 ;
  wire [13:0]\ram_reg[16]_36 ;
  wire [11:0]\ram_reg[17]_35 ;
  wire [7:6]\ram_reg[18]_34 ;
  wire [9:0]\ram_reg[19]_33 ;
  wire [14:0]\ram_reg[20]_32 ;
  wire \ram_reg[21][14]_i_4_n_10 ;
  wire \ram_reg[21][14]_i_4_n_11 ;
  wire \ram_reg[21][14]_i_4_n_12 ;
  wire \ram_reg[21][14]_i_4_n_13 ;
  wire \ram_reg[21][14]_i_4_n_14 ;
  wire \ram_reg[21][14]_i_4_n_3 ;
  wire \ram_reg[21][14]_i_4_n_4 ;
  wire \ram_reg[21][14]_i_4_n_5 ;
  wire \ram_reg[21][14]_i_4_n_6 ;
  wire \ram_reg[21][14]_i_4_n_7 ;
  wire [14:0]\ram_reg[21]_31 ;
  wire [15:8]\ram_reg[22]_30 ;
  wire \ram_reg[23][15]_i_4_n_10 ;
  wire \ram_reg[23][15]_i_4_n_11 ;
  wire \ram_reg[23][15]_i_4_n_12 ;
  wire \ram_reg[23][15]_i_4_n_13 ;
  wire \ram_reg[23][15]_i_4_n_14 ;
  wire \ram_reg[23][15]_i_4_n_15 ;
  wire \ram_reg[23][15]_i_4_n_3 ;
  wire \ram_reg[23][15]_i_4_n_4 ;
  wire \ram_reg[23][15]_i_4_n_5 ;
  wire \ram_reg[23][15]_i_4_n_6 ;
  wire \ram_reg[23][15]_i_4_n_7 ;
  wire [15:4]\ram_reg[23]_29 ;
  wire reset;
  wire s_axi_aclk;
  wire [4:0]state_count;
  wire \state_count[0]_i_1_n_0 ;
  wire \state_count[1]_i_1_n_0 ;
  wire \state_count[2]_i_1_n_0 ;
  wire \state_count[3]_i_1_n_0 ;
  wire \state_count[4]_i_1_n_0 ;
  wire \state_count[4]_i_2_n_0 ;
  wire w_edge;
  wire [7:5]\NLW_ram_reg[21][14]_i_4_CO_UNCONNECTED ;
  wire [7:0]\NLW_ram_reg[21][14]_i_4_O_UNCONNECTED ;
  wire [7:5]\NLW_ram_reg[23][15]_i_4_CO_UNCONNECTED ;
  wire [7:6]\NLW_ram_reg[23][15]_i_4_O_UNCONNECTED ;

  assign out[3:0] = current_state;
  LUT4 #(
    .INIT(16'h0010)) 
    \DADDR[6]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\DADDR[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \DADDR[6]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(\DADDR[6]_i_2_n_0 ));
  FDRE \DADDR_reg[0] 
       (.C(s_axi_aclk),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(ram_do[32]),
        .Q(DADDR[0]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[1] 
       (.C(s_axi_aclk),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(ram_do[33]),
        .Q(DADDR[1]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[2] 
       (.C(s_axi_aclk),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(ram_do[34]),
        .Q(DADDR[2]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[3] 
       (.C(s_axi_aclk),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(ram_do[35]),
        .Q(DADDR[3]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[4] 
       (.C(s_axi_aclk),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(ram_do[36]),
        .Q(DADDR[4]),
        .R(\DADDR[6]_i_1_n_0 ));
  FDRE \DADDR_reg[6] 
       (.C(s_axi_aclk),
        .CE(\DADDR[6]_i_2_n_0 ),
        .D(ram_do[38]),
        .Q(DADDR[5]),
        .R(\DADDR[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    DEN_i_1
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(next_den));
  FDRE DEN_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_den),
        .Q(DEN),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[0]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[0]),
        .I2(current_state[0]),
        .I3(ram_do[0]),
        .I4(DI[0]),
        .O(\DI[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[10]_i_1 
       (.I0(ram_do[26]),
        .I1(DO[7]),
        .I2(current_state[0]),
        .I3(ram_do[10]),
        .I4(DI[10]),
        .O(\DI[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[11]_i_1 
       (.I0(ram_do[27]),
        .I1(DO[8]),
        .I2(current_state[0]),
        .I3(ram_do[11]),
        .I4(DI[11]),
        .O(\DI[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[12]_i_1 
       (.I0(ram_do[28]),
        .I1(DO[9]),
        .I2(current_state[0]),
        .I3(ram_do[12]),
        .I4(DI[12]),
        .O(\DI[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[13]_i_1 
       (.I0(ram_do[29]),
        .I1(DO[10]),
        .I2(current_state[0]),
        .I3(ram_do[13]),
        .I4(DI[13]),
        .O(\DI[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[14]_i_1 
       (.I0(ram_do[30]),
        .I1(DO[11]),
        .I2(current_state[0]),
        .I3(ram_do[14]),
        .I4(DI[14]),
        .O(\DI[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \DI[15]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .O(\DI[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A4)) 
    \DI[15]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(\DI[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[15]_i_3 
       (.I0(ram_do[31]),
        .I1(DO[12]),
        .I2(current_state[0]),
        .I3(ram_do[15]),
        .I4(DI[15]),
        .O(\DI[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[1]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[1]),
        .I2(current_state[0]),
        .I3(ram_do[1]),
        .I4(DI[1]),
        .O(\DI[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[2]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[2]),
        .I2(current_state[0]),
        .I3(ram_do[2]),
        .I4(DI[2]),
        .O(\DI[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[3]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[3]),
        .I2(current_state[0]),
        .I3(ram_do[3]),
        .I4(DI[3]),
        .O(\DI[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \DI[4]_i_1 
       (.I0(DI[4]),
        .I1(ram_do[4]),
        .I2(current_state[0]),
        .O(\DI[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[5]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[4]),
        .I2(current_state[0]),
        .I3(ram_do[5]),
        .I4(DI[5]),
        .O(\DI[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[6]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[5]),
        .I2(current_state[0]),
        .I3(ram_do[6]),
        .I4(DI[6]),
        .O(\DI[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \DI[7]_i_1 
       (.I0(DI[7]),
        .I1(ram_do[7]),
        .I2(current_state[0]),
        .O(\DI[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \DI[8]_i_1 
       (.I0(DI[8]),
        .I1(ram_do[8]),
        .I2(current_state[0]),
        .O(\DI[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F808)) 
    \DI[9]_i_1 
       (.I0(ram_do[25]),
        .I1(DO[6]),
        .I2(current_state[0]),
        .I3(ram_do[9]),
        .I4(DI[9]),
        .O(\DI[9]_i_1_n_0 ));
  FDRE \DI_reg[0] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[0]_i_1_n_0 ),
        .Q(DI[0]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[10] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[10]_i_1_n_0 ),
        .Q(DI[10]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[11] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[11]_i_1_n_0 ),
        .Q(DI[11]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[12] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[12]_i_1_n_0 ),
        .Q(DI[12]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[13] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[13]_i_1_n_0 ),
        .Q(DI[13]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[14] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[14]_i_1_n_0 ),
        .Q(DI[14]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[15] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[15]_i_3_n_0 ),
        .Q(DI[15]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[1] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[1]_i_1_n_0 ),
        .Q(DI[1]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[2] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[2]_i_1_n_0 ),
        .Q(DI[2]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[3] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[3]_i_1_n_0 ),
        .Q(DI[3]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[4] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[4]_i_1_n_0 ),
        .Q(DI[4]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[5] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[5]_i_1_n_0 ),
        .Q(DI[5]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[6] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[6]_i_1_n_0 ),
        .Q(DI[6]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[7] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[7]_i_1_n_0 ),
        .Q(DI[7]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[8] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[8]_i_1_n_0 ),
        .Q(DI[8]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[9] 
       (.C(s_axi_aclk),
        .CE(\DI[15]_i_2_n_0 ),
        .D(\DI[9]_i_1_n_0 ),
        .Q(DI[9]),
        .R(\DI[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    DWE_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .O(next_dwe));
  FDRE DWE_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_dwe),
        .Q(DWE),
        .R(1'b0));
  FDRE RST_MMCM_PLL_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(RST_MMCM_PLL_reg_0),
        .Q(reset),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    SRDY_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(SRDY_reg_0),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .O(next_srdy));
  FDRE SRDY_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_srdy),
        .Q(SRDY),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFDFF0000)) 
    \current_state[0]_i_1 
       (.I0(drdy),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(\current_state[0]_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h03034444FFCCFFFF)) 
    \current_state[0]_i_2 
       (.I0(drdy),
        .I1(current_state[2]),
        .I2(SEN),
        .I3(SRDY_reg_0),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03BBFF00)) 
    \current_state[1]_i_2 
       (.I0(drdy),
        .I1(current_state[2]),
        .I2(SEN),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \current_state[1]_i_3 
       (.I0(drdy),
        .I1(\current_state[1]_i_4_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .O(\current_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_state[1]_i_4 
       (.I0(state_count[1]),
        .I1(state_count[4]),
        .I2(state_count[0]),
        .I3(state_count[2]),
        .I4(state_count[3]),
        .O(\current_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0338003830303030)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(SEN),
        .I5(current_state[0]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \current_state[2]_i_2 
       (.I0(drdy),
        .I1(state_count[3]),
        .I2(state_count[2]),
        .I3(state_count[0]),
        .I4(state_count[4]),
        .I5(state_count[1]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3000040C)) 
    \current_state[3]_i_2 
       (.I0(drdy),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(next_state[3]));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .S(SR));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  MUXF7 \current_state_reg[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(\current_state[1]_i_3_n_0 ),
        .O(next_state[1]),
        .S(current_state[3]));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "RESTART:0001,WAIT_LOCK:0010,WAIT_SEN:0011,ADDRESS:0100,WAIT_A_DRDY:0101,BITMASK:0110,BITSET:0111,WRITE:1000,WAIT_DRDY:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \ram[12][0]_i_1 
       (.I0(\ram_reg[12][5]_0 [0]),
        .I1(\ram_reg[12][5]_0 [1]),
        .I2(\ram[13][7]_i_2_n_0 ),
        .O(\ram[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h5AAA5AAB)) 
    \ram[12][1]_i_1 
       (.I0(\ram_reg[12][5]_0 [2]),
        .I1(\ram[12][2]_i_2_n_0 ),
        .I2(\ram_reg[12][5]_0 [1]),
        .I3(\ram_reg[12][5]_0 [0]),
        .I4(\ram_reg[12][5]_0 [3]),
        .O(\ram[12][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h5AAAAAAB)) 
    \ram[12][2]_i_1 
       (.I0(\ram_reg[12][5]_0 [3]),
        .I1(\ram[12][2]_i_2_n_0 ),
        .I2(\ram_reg[12][5]_0 [1]),
        .I3(\ram_reg[12][5]_0 [0]),
        .I4(\ram_reg[12][5]_0 [2]),
        .O(\ram[12][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ram[12][2]_i_2 
       (.I0(\ram_reg[12][5]_0 [5]),
        .I1(\ram_reg[12][5]_0 [4]),
        .I2(\ram_reg[12][5]_0 [7]),
        .I3(\ram_reg[12][5]_0 [6]),
        .O(\ram[12][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAA9AAF9AAA9AAA)) 
    \ram[12][3]_i_1 
       (.I0(\ram_reg[12][5]_0 [4]),
        .I1(\ram[12][4]_i_2_n_0 ),
        .I2(\ram_reg[12][5]_0 [3]),
        .I3(\ram_reg[12][5]_0 [2]),
        .I4(\ram_reg[12][5]_0 [5]),
        .I5(\ram[12][4]_i_3_n_0 ),
        .O(\ram[12][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAF9AAAAAAA)) 
    \ram[12][4]_i_1 
       (.I0(\ram_reg[12][5]_0 [5]),
        .I1(\ram[12][4]_i_2_n_0 ),
        .I2(\ram_reg[12][5]_0 [3]),
        .I3(\ram_reg[12][5]_0 [2]),
        .I4(\ram_reg[12][5]_0 [4]),
        .I5(\ram[12][4]_i_3_n_0 ),
        .O(\ram[12][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ram[12][4]_i_2 
       (.I0(\ram_reg[12][5]_0 [0]),
        .I1(\ram_reg[12][5]_0 [1]),
        .O(\ram[12][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ram[12][4]_i_3 
       (.I0(\ram_reg[12][5]_0 [1]),
        .I1(\ram_reg[12][5]_0 [0]),
        .I2(\ram_reg[12][5]_0 [7]),
        .I3(\ram_reg[12][5]_0 [6]),
        .O(\ram[12][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A9AFF9A9A9A9A)) 
    \ram[12][5]_i_1 
       (.I0(\ram_reg[12][5]_0 [6]),
        .I1(\ram[12][5]_i_2_n_0 ),
        .I2(\ram_reg[12][5]_0 [5]),
        .I3(\ram[12][5]_i_3_n_0 ),
        .I4(\ram_reg[12][5]_0 [7]),
        .I5(\ram[12][5]_i_4_n_0 ),
        .O(\ram[12][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ram[12][5]_i_2 
       (.I0(\ram_reg[12][5]_0 [3]),
        .I1(\ram_reg[12][5]_0 [1]),
        .I2(\ram_reg[12][5]_0 [0]),
        .I3(\ram_reg[12][5]_0 [2]),
        .I4(\ram_reg[12][5]_0 [4]),
        .O(\ram[12][5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ram[12][5]_i_3 
       (.I0(\ram_reg[12][5]_0 [2]),
        .I1(\ram_reg[12][5]_0 [3]),
        .O(\ram[12][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ram[12][5]_i_4 
       (.I0(\ram_reg[12][5]_0 [1]),
        .I1(\ram_reg[12][5]_0 [0]),
        .I2(\ram_reg[12][5]_0 [5]),
        .I3(\ram_reg[12][5]_0 [4]),
        .O(\ram[12][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ram[12][6]_i_1 
       (.I0(\ram_reg[12][5]_0 [1]),
        .I1(\ram[13][7]_i_2_n_0 ),
        .O(\ram[12][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ram[13][6]_i_1 
       (.I0(\ram_reg[12][5]_0 [1]),
        .I1(\ram_reg[12][5]_0 [0]),
        .I2(\ram[13][7]_i_2_n_0 ),
        .O(\ram[13][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ram[13][7]_i_1 
       (.I0(\ram[13][7]_i_2_n_0 ),
        .I1(\ram_reg[12][5]_0 [1]),
        .I2(\ram_reg[12][5]_0 [0]),
        .O(\ram[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ram[13][7]_i_2 
       (.I0(\ram_reg[12][5]_0 [6]),
        .I1(\ram_reg[12][5]_0 [7]),
        .I2(\ram_reg[12][5]_0 [4]),
        .I3(\ram_reg[12][5]_0 [5]),
        .I4(\ram_reg[12][5]_0 [3]),
        .I5(\ram_reg[12][5]_0 [2]),
        .O(\ram[13][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \ram[14][0]_i_1 
       (.I0(\ram_reg[14][5]_0 [0]),
        .I1(\ram_reg[14][5]_0 [1]),
        .I2(\ram[15][7]_i_2_n_0 ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h5AAA5AAB)) 
    \ram[14][1]_i_1 
       (.I0(\ram_reg[14][5]_0 [2]),
        .I1(\ram[14][2]_i_2_n_0 ),
        .I2(\ram_reg[14][5]_0 [1]),
        .I3(\ram_reg[14][5]_0 [0]),
        .I4(\ram_reg[14][5]_0 [3]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h5AAAAAAB)) 
    \ram[14][2]_i_1 
       (.I0(\ram_reg[14][5]_0 [3]),
        .I1(\ram[14][2]_i_2_n_0 ),
        .I2(\ram_reg[14][5]_0 [1]),
        .I3(\ram_reg[14][5]_0 [0]),
        .I4(\ram_reg[14][5]_0 [2]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ram[14][2]_i_2 
       (.I0(\ram_reg[14][5]_0 [5]),
        .I1(\ram_reg[14][5]_0 [4]),
        .I2(\ram_reg[14][5]_0 [7]),
        .I3(\ram_reg[14][5]_0 [6]),
        .O(\ram[14][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAA9AAF9AAA9AAA)) 
    \ram[14][3]_i_1 
       (.I0(\ram_reg[14][5]_0 [4]),
        .I1(\ram[14][4]_i_2_n_0 ),
        .I2(\ram_reg[14][5]_0 [3]),
        .I3(\ram_reg[14][5]_0 [2]),
        .I4(\ram_reg[14][5]_0 [5]),
        .I5(\ram[14][4]_i_3_n_0 ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h9AAAAAAF9AAAAAAA)) 
    \ram[14][4]_i_1 
       (.I0(\ram_reg[14][5]_0 [5]),
        .I1(\ram[14][4]_i_2_n_0 ),
        .I2(\ram_reg[14][5]_0 [3]),
        .I3(\ram_reg[14][5]_0 [2]),
        .I4(\ram_reg[14][5]_0 [4]),
        .I5(\ram[14][4]_i_3_n_0 ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ram[14][4]_i_2 
       (.I0(\ram_reg[14][5]_0 [0]),
        .I1(\ram_reg[14][5]_0 [1]),
        .O(\ram[14][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ram[14][4]_i_3 
       (.I0(\ram_reg[14][5]_0 [1]),
        .I1(\ram_reg[14][5]_0 [0]),
        .I2(\ram_reg[14][5]_0 [7]),
        .I3(\ram_reg[14][5]_0 [6]),
        .O(\ram[14][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A9AFF9A9A9A9A)) 
    \ram[14][5]_i_1 
       (.I0(\ram_reg[14][5]_0 [6]),
        .I1(\ram[14][5]_i_2_n_0 ),
        .I2(\ram_reg[14][5]_0 [5]),
        .I3(\ram[14][5]_i_3_n_0 ),
        .I4(\ram_reg[14][5]_0 [7]),
        .I5(\ram[14][5]_i_4_n_0 ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ram[14][5]_i_2 
       (.I0(\ram_reg[14][5]_0 [3]),
        .I1(\ram_reg[14][5]_0 [1]),
        .I2(\ram_reg[14][5]_0 [0]),
        .I3(\ram_reg[14][5]_0 [2]),
        .I4(\ram_reg[14][5]_0 [4]),
        .O(\ram[14][5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ram[14][5]_i_3 
       (.I0(\ram_reg[14][5]_0 [2]),
        .I1(\ram_reg[14][5]_0 [3]),
        .O(\ram[14][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ram[14][5]_i_4 
       (.I0(\ram_reg[14][5]_0 [1]),
        .I1(\ram_reg[14][5]_0 [0]),
        .I2(\ram_reg[14][5]_0 [5]),
        .I3(\ram_reg[14][5]_0 [4]),
        .O(\ram[14][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ram[14][6]_i_1 
       (.I0(\ram_reg[14][5]_0 [1]),
        .I1(\ram[15][7]_i_2_n_0 ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ram[15][6]_i_1 
       (.I0(\ram_reg[14][5]_0 [1]),
        .I1(\ram_reg[14][5]_0 [0]),
        .I2(\ram[15][7]_i_2_n_0 ),
        .O(p_3_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ram[15][7]_i_1 
       (.I0(\ram[15][7]_i_2_n_0 ),
        .I1(\ram_reg[14][5]_0 [1]),
        .I2(\ram_reg[14][5]_0 [0]),
        .O(p_3_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ram[15][7]_i_2 
       (.I0(\ram_reg[14][5]_0 [6]),
        .I1(\ram_reg[14][5]_0 [7]),
        .I2(\ram_reg[14][5]_0 [4]),
        .I3(\ram_reg[14][5]_0 [5]),
        .I4(\ram_reg[14][5]_0 [3]),
        .I5(\ram_reg[14][5]_0 [2]),
        .O(\ram[15][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \ram[16][0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\ram[16][13]_i_2_n_0 ),
        .O(p_4_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ram[16][12]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ram[16][13]_i_2_n_0 ),
        .O(p_4_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ram[16][13]_i_1 
       (.I0(\ram[16][13]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_4_in[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ram[16][13]_i_2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\ram[16][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h5AAA5AAB)) 
    \ram[16][1]_i_1 
       (.I0(Q[2]),
        .I1(\ram[16][2]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(p_4_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h5AAAAAAB)) 
    \ram[16][2]_i_1 
       (.I0(Q[3]),
        .I1(\ram[16][2]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(p_4_in[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ram[16][2]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\ram[16][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAA9AAF9AAA9AAA)) 
    \ram[16][3]_i_1 
       (.I0(Q[4]),
        .I1(\ram[16][4]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(\ram[16][4]_i_3_n_0 ),
        .O(p_4_in[3]));
  LUT6 #(
    .INIT(64'h9AAAAAAF9AAAAAAA)) 
    \ram[16][4]_i_1 
       (.I0(Q[5]),
        .I1(\ram[16][4]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\ram[16][4]_i_3_n_0 ),
        .O(p_4_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ram[16][4]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\ram[16][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ram[16][4]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\ram[16][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A9AFF9A9A9A9A)) 
    \ram[16][5]_i_1 
       (.I0(Q[6]),
        .I1(\ram[16][5]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(\ram[16][5]_i_3_n_0 ),
        .I4(Q[7]),
        .I5(\ram[16][5]_i_4_n_0 ),
        .O(p_4_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ram[16][5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\ram[16][5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ram[16][5]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\ram[16][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ram[16][5]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\ram[16][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ram[16][6]_i_1 
       (.I0(Q[1]),
        .I1(\ram[16][13]_i_2_n_0 ),
        .O(p_4_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6762)) 
    \ram[17][0]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[14]),
        .I3(\ram[17][6]_i_2_n_0 ),
        .O(low_time[0]));
  LUT5 #(
    .INIT(32'h787B7848)) 
    \ram[17][1]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(Q[14]),
        .I4(\ram[17][1]_i_2_n_0 ),
        .O(low_time[1]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0001)) 
    \ram[17][1]_i_2 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(Q[15]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\ram[17][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F807F8F7F807080)) 
    \ram[17][2]_i_1 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[11]),
        .I4(Q[14]),
        .I5(\ram[17][2]_i_2_n_0 ),
        .O(low_time[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \ram[17][2]_i_2 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(\ram[17][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F807F8F7F807080)) 
    \ram[17][3]_i_1 
       (.I0(\ram[17][3]_i_2_n_0 ),
        .I1(Q[11]),
        .I2(Q[8]),
        .I3(Q[12]),
        .I4(Q[14]),
        .I5(\ram[17][3]_i_3_n_0 ),
        .O(low_time[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram[17][3]_i_2 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\ram[17][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \ram[17][3]_i_3 
       (.I0(Q[13]),
        .I1(Q[11]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[15]),
        .I5(Q[12]),
        .O(\ram[17][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \ram[17][4]_i_1 
       (.I0(\ram[17][4]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(Q[14]),
        .I3(\ram[17][4]_i_3_n_0 ),
        .I4(Q[13]),
        .O(low_time[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ram[17][4]_i_2 
       (.I0(Q[13]),
        .I1(Q[11]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[12]),
        .O(\ram[17][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ram[17][4]_i_3 
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[15]),
        .I4(Q[12]),
        .O(\ram[17][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \ram[17][5]_i_1 
       (.I0(\ram[17][5]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[18][6]_i_2_n_0 ),
        .I3(Q[14]),
        .O(low_time[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \ram[17][5]_i_2 
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[11]),
        .I5(Q[13]),
        .O(\ram[17][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[17][6]_i_1 
       (.I0(Q[9]),
        .I1(Q[14]),
        .I2(\ram[17][6]_i_2_n_0 ),
        .O(high_time));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0001)) 
    \ram[17][6]_i_2 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(Q[15]),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(\ram[17][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ram[18][6]_i_1 
       (.I0(Q[14]),
        .I1(\ram[18][6]_i_2_n_0 ),
        .I2(Q[8]),
        .O(no_count));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ram[18][6]_i_2 
       (.I0(Q[12]),
        .I1(Q[15]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[11]),
        .I5(Q[13]),
        .O(\ram[18][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ram[18][7]_i_1 
       (.I0(Q[14]),
        .I1(\ram[18][7]_i_2_n_0 ),
        .I2(Q[8]),
        .O(w_edge));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ram[18][7]_i_2 
       (.I0(Q[12]),
        .I1(Q[15]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[11]),
        .I5(Q[13]),
        .O(\ram[18][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][0]_i_1 
       (.I0(\ram[21][2]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[19][8]_i_2_n_0 ),
        .O(p_7_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][1]_i_1 
       (.I0(\ram[21][3]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[19][9]_i_2_n_0 ),
        .O(p_7_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][2]_i_1 
       (.I0(\ram[21][4]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][10]_i_2_n_0 ),
        .O(p_7_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][3]_i_1 
       (.I0(\ram[21][5]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][11]_i_2_n_0 ),
        .O(p_7_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][4]_i_1 
       (.I0(\ram[21][6]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][12]_i_2_n_0 ),
        .O(p_7_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][5]_i_1 
       (.I0(\ram[21][7]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][13]_i_2_n_0 ),
        .O(p_7_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][6]_i_1 
       (.I0(\ram[21][8]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][14]_i_2_n_0 ),
        .O(p_7_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][7]_i_1 
       (.I0(\ram[21][9]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][10]_i_2_n_0 ),
        .O(p_7_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][8]_i_1 
       (.I0(\ram[19][8]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][11]_i_2_n_0 ),
        .O(p_7_in[8]));
  LUT6 #(
    .INIT(64'h42C5290A42C43109)) 
    \ram[19][8]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[19][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[19][9]_i_1 
       (.I0(\ram[19][9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][12]_i_2_n_0 ),
        .O(p_7_in[9]));
  LUT6 #(
    .INIT(64'h737331E79F9C8EB8)) 
    \ram[19][9]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[19][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][0]_i_1 
       (.I0(\ram[20][0]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][8]_i_2_n_0 ),
        .O(p_8_in[0]));
  LUT6 #(
    .INIT(64'hCF677C18CFDC7BF7)) 
    \ram[20][0]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_11 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][10]_i_1 
       (.I0(\ram[20][10]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][13]_i_2_n_0 ),
        .O(p_8_in[10]));
  LUT6 #(
    .INIT(64'h650800A0651AAA75)) 
    \ram[20][10]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_12 ),
        .I2(\ram_reg[21][14]_i_4_n_14 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][11]_i_1 
       (.I0(\ram[20][11]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][14]_i_2_n_0 ),
        .O(p_8_in[11]));
  LUT6 #(
    .INIT(64'h33BBDDEE9E57E3F9)) 
    \ram[20][11]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][12]_i_1 
       (.I0(\ram[20][12]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][12]_i_3_n_0 ),
        .O(p_8_in[12]));
  LUT6 #(
    .INIT(64'h333319F7DFDEC63D)) 
    \ram[20][12]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[20][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCE70CE73E3199EE7)) 
    \ram[20][12]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][13]_i_1 
       (.I0(\ram[20][13]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][13]_i_3_n_0 ),
        .O(p_8_in[13]));
  LUT6 #(
    .INIT(64'h6B6B5A5AB5D6A5B5)) 
    \ram[20][13]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACAC561A6A6B94C6)) 
    \ram[20][13]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[20][13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][14]_i_1 
       (.I0(\ram[20][14]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][14]_i_3_n_0 ),
        .O(p_8_in[14]));
  LUT6 #(
    .INIT(64'hEF3AEF39D6BDDE77)) 
    \ram[20][14]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBCEF5AF7BCEF39CE)) 
    \ram[20][14]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][1]_i_1 
       (.I0(\ram[20][1]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[20][9]_i_2_n_0 ),
        .O(p_8_in[1]));
  LUT6 #(
    .INIT(64'hAD6AD695AD6B5AD6)) 
    \ram[20][1]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][2]_i_1 
       (.I0(\ram[20][2]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][0]_i_2_n_0 ),
        .O(p_8_in[2]));
  LUT6 #(
    .INIT(64'hBCEB5AF7BCE779DE)) 
    \ram[20][2]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][3]_i_1 
       (.I0(\ram[20][3]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][1]_i_2_n_0 ),
        .O(p_8_in[3]));
  LUT6 #(
    .INIT(64'hACAC52186A6BB5D6)) 
    \ram[20][3]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[20][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][4]_i_1 
       (.I0(\ram[20][4]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][2]_i_2_n_0 ),
        .O(p_8_in[4]));
  LUT6 #(
    .INIT(64'h229954221148AD46)) 
    \ram[20][4]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][5]_i_1 
       (.I0(\ram[20][5]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][3]_i_2_n_0 ),
        .O(p_8_in[5]));
  LUT6 #(
    .INIT(64'h3939F3EF1C7BC68E)) 
    \ram[20][5]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][6]_i_1 
       (.I0(\ram[20][6]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][4]_i_2_n_0 ),
        .O(p_8_in[6]));
  LUT6 #(
    .INIT(64'h0D600D6A94815AD4)) 
    \ram[20][6]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][7]_i_1 
       (.I0(\ram[20][7]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][5]_i_2_n_0 ),
        .O(p_8_in[7]));
  LUT6 #(
    .INIT(64'h99EB99EF5A777BDE)) 
    \ram[20][7]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[20][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][8]_i_1 
       (.I0(\ram[20][8]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][6]_i_2_n_0 ),
        .O(p_8_in[8]));
  LUT6 #(
    .INIT(64'h398CC367397BCE9E)) 
    \ram[20][8]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_11 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[20][9]_i_1 
       (.I0(\ram[20][9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][7]_i_2_n_0 ),
        .O(p_8_in[9]));
  LUT6 #(
    .INIT(64'hB1A95A52B1AC6B18)) 
    \ram[20][9]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[20][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][0]_i_1 
       (.I0(\ram[21][0]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][8]_i_2_n_0 ),
        .O(p_9_in[0]));
  LUT6 #(
    .INIT(64'hF3F36BE7BDBCDE3B)) 
    \ram[21][0]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][10]_i_1 
       (.I0(\ram[21][10]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][10]_i_3_n_0 ),
        .O(p_9_in[10]));
  LUT6 #(
    .INIT(64'h66BB11AA9C46A3D5)) 
    \ram[21][10]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA56A56B4A56B58C6)) 
    \ram[21][10]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][11]_i_1 
       (.I0(\ram[21][11]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][11]_i_3_n_0 ),
        .O(p_9_in[11]));
  LUT6 #(
    .INIT(64'h0A0A545085862935)) 
    \ram[21][11]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2162216294851884)) 
    \ram[21][11]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][12]_i_1 
       (.I0(\ram[21][12]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][12]_i_3_n_0 ),
        .O(p_9_in[12]));
  LUT6 #(
    .INIT(64'h8E7C8E7BC731DEE3)) 
    \ram[21][12]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3998CFC73973CEDC)) 
    \ram[21][12]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_11 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][13]_i_1 
       (.I0(\ram[21][13]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][13]_i_3_n_0 ),
        .O(p_9_in[13]));
  LUT6 #(
    .INIT(64'h4358435A252096B5)) 
    \ram[21][13]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h29480404294B52D6)) 
    \ram[21][13]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][14]_i_1 
       (.I0(\ram[21][14]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][14]_i_3_n_0 ),
        .O(p_9_in[14]));
  LUT4 #(
    .INIT(16'h3996)) 
    \ram[21][14]_i_10 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[9]),
        .I3(Q[10]),
        .O(\ram[21][14]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \ram[21][14]_i_11 
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(Q[9]),
        .O(\ram[21][14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ram[21][14]_i_12 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .O(\ram[21][14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE6D6E6DE7A9D7BF7)) 
    \ram[21][14]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_11 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9DEF9DEF4AF7739C)) 
    \ram[21][14]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h557FAA80)) 
    \ram[21][14]_i_5 
       (.I0(Q[12]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[13]),
        .O(\ram[21][14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA95)) 
    \ram[21][14]_i_6 
       (.I0(Q[12]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .O(\ram[21][14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ram[21][14]_i_7 
       (.I0(Q[10]),
        .I1(Q[9]),
        .O(\ram[21][14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA6A6A666696969)) 
    \ram[21][14]_i_8 
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(Q[12]),
        .O(\ram[21][14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h699A9A9A)) 
    \ram[21][14]_i_9 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[9]),
        .O(\ram[21][14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][1]_i_1 
       (.I0(\ram[21][1]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][9]_i_2_n_0 ),
        .O(p_9_in[1]));
  LUT6 #(
    .INIT(64'h9595A9AD5A63D21A)) 
    \ram[21][1]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][2]_i_1 
       (.I0(\ram[21][2]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][2]_i_3_n_0 ),
        .O(p_9_in[2]));
  LUT6 #(
    .INIT(64'h885588A856221142)) 
    \ram[21][2]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h14140A0CA9A1526B)) 
    \ram[21][2]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][3]_i_1 
       (.I0(\ram[21][3]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][3]_i_3_n_0 ),
        .O(p_9_in[3]));
  LUT6 #(
    .INIT(64'hDA4F0DF8F87F1F85)) 
    \ram[21][3]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_11 ),
        .I2(\ram_reg[21][14]_i_4_n_14 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1C1C8EBDF9F763C7)) 
    \ram[21][3]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][4]_i_1 
       (.I0(\ram[21][4]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][4]_i_3_n_0 ),
        .O(p_9_in[4]));
  LUT6 #(
    .INIT(64'hA5201010A52D4B5A)) 
    \ram[21][4]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h86B04A4086B52D6A)) 
    \ram[21][4]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][5]_i_1 
       (.I0(\ram[21][5]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][5]_i_3_n_0 ),
        .O(p_9_in[5]));
  LUT6 #(
    .INIT(64'h77BD2BDE77BDCE73)) 
    \ram[21][5]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCABDDFF573EBF)) 
    \ram[21][5]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][6]_i_1 
       (.I0(\ram[21][6]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][6]_i_3_n_0 ),
        .O(p_9_in[6]));
  LUT6 #(
    .INIT(64'h6733BE8C67EEBD7B)) 
    \ram[21][6]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_11 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9C9CC63DE1E733CF)) 
    \ram[21][6]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_10 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][7]_i_1 
       (.I0(\ram[21][7]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][7]_i_3_n_0 ),
        .O(p_9_in[7]));
  LUT6 #(
    .INIT(64'hD6B56B4AD6B5AD6B)) 
    \ram[21][7]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_11 ),
        .I5(\ram_reg[21][14]_i_4_n_10 ),
        .O(\ram[21][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h58D458D6AD29358C)) 
    \ram[21][7]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][8]_i_1 
       (.I0(\ram[21][8]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][8]_i_3_n_0 ),
        .O(p_9_in[8]));
  LUT6 #(
    .INIT(64'hDEADDEBC757B73EF)) 
    \ram[21][8]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_11 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_12 ),
        .O(\ram[21][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7799DDEEB753E9FD)) 
    \ram[21][8]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_13 ),
        .I4(\ram_reg[21][14]_i_4_n_12 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[21][9]_i_1 
       (.I0(\ram[21][9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[21][9]_i_3_n_0 ),
        .O(p_9_in[9]));
  LUT6 #(
    .INIT(64'hD635D635295A8C6B)) 
    \ram[21][9]_i_2 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_13 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_10 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44DDAA46AB68D19D)) 
    \ram[21][9]_i_3 
       (.I0(\ram_reg[23][15]_i_4_n_15 ),
        .I1(\ram_reg[21][14]_i_4_n_14 ),
        .I2(\ram_reg[21][14]_i_4_n_10 ),
        .I3(\ram_reg[21][14]_i_4_n_12 ),
        .I4(\ram_reg[21][14]_i_4_n_13 ),
        .I5(\ram_reg[21][14]_i_4_n_11 ),
        .O(\ram[21][9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[22][11]_i_1 
       (.I0(\ram[23][15]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[22][15]_i_2_n_0 ),
        .O(p_10_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[22][12]_i_1 
       (.I0(\ram[22][12]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[22][12]_i_3_n_0 ),
        .O(p_10_in[12]));
  LUT6 #(
    .INIT(64'h5FB35FB4CE47B72D)) 
    \ram[22][12]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_12 ),
        .I4(\ram_reg[23][15]_i_4_n_10 ),
        .I5(\ram_reg[23][15]_i_4_n_11 ),
        .O(\ram[22][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7B7B799F7B7BFCEF)) 
    \ram[22][12]_i_3 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_10 ),
        .I4(\ram_reg[23][15]_i_4_n_11 ),
        .I5(\ram_reg[23][15]_i_4_n_12 ),
        .O(\ram[22][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[22][15]_i_1 
       (.I0(\ram[22][15]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[22][15]_i_3_n_0 ),
        .O(p_10_in[15]));
  LUT6 #(
    .INIT(64'hB8CCB87D89538F6B)) 
    \ram[22][15]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_11 ),
        .I4(\ram_reg[23][15]_i_4_n_10 ),
        .I5(\ram_reg[23][15]_i_4_n_12 ),
        .O(\ram[22][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE6D73B9EE6D4E6B5)) 
    \ram[22][15]_i_3 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_12 ),
        .I4(\ram_reg[23][15]_i_4_n_11 ),
        .I5(\ram_reg[23][15]_i_4_n_10 ),
        .O(\ram[22][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[22][8]_i_1 
       (.I0(\ram[23][12]_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\ram[22][12]_i_2_n_0 ),
        .O(p_10_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[23][11]_i_1 
       (.I0(\ram[23][11]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[23][15]_i_2_n_0 ),
        .O(p_11_in[11]));
  LUT6 #(
    .INIT(64'h9B5CEE7B9B539AD6)) 
    \ram[23][11]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_12 ),
        .I4(\ram_reg[23][15]_i_4_n_11 ),
        .I5(\ram_reg[23][15]_i_4_n_10 ),
        .O(\ram[23][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[23][12]_i_1 
       (.I0(\ram[23][12]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[23][12]_i_3_n_0 ),
        .O(p_11_in[12]));
  LUT6 #(
    .INIT(64'hB6B6F7F99865CEEA)) 
    \ram[23][12]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_12 ),
        .I3(\ram_reg[23][15]_i_4_n_10 ),
        .I4(\ram_reg[23][15]_i_4_n_13 ),
        .I5(\ram_reg[23][15]_i_4_n_11 ),
        .O(\ram[23][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF3FD66673F8F)) 
    \ram[23][12]_i_3 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_10 ),
        .I3(\ram_reg[23][15]_i_4_n_12 ),
        .I4(\ram_reg[23][15]_i_4_n_11 ),
        .I5(\ram_reg[23][15]_i_4_n_13 ),
        .O(\ram[23][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[23][15]_i_1 
       (.I0(\ram[23][15]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[23][15]_i_3_n_0 ),
        .O(p_11_in[15]));
  LUT4 #(
    .INIT(16'h3996)) 
    \ram[23][15]_i_10 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[9]),
        .I3(Q[10]),
        .O(\ram[23][15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \ram[23][15]_i_11 
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(Q[9]),
        .O(\ram[23][15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ram[23][15]_i_12 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .O(\ram[23][15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h719813A771FA1ED6)) 
    \ram[23][15]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_11 ),
        .I4(\ram_reg[23][15]_i_4_n_12 ),
        .I5(\ram_reg[23][15]_i_4_n_10 ),
        .O(\ram[23][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCD77CDCDAE3DA96B)) 
    \ram[23][15]_i_3 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_11 ),
        .I4(\ram_reg[23][15]_i_4_n_10 ),
        .I5(\ram_reg[23][15]_i_4_n_12 ),
        .O(\ram[23][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h557FAA80)) 
    \ram[23][15]_i_5 
       (.I0(Q[12]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[13]),
        .O(\ram[23][15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA95)) 
    \ram[23][15]_i_6 
       (.I0(Q[12]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .O(\ram[23][15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ram[23][15]_i_7 
       (.I0(Q[10]),
        .I1(Q[9]),
        .O(\ram[23][15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA6A6A666696969)) 
    \ram[23][15]_i_8 
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(Q[12]),
        .O(\ram[23][15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h699A9A9A)) 
    \ram[23][15]_i_9 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[9]),
        .O(\ram[23][15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[23][4]_i_1 
       (.I0(\ram[23][4]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[23][8]_i_2_n_0 ),
        .O(p_11_in[4]));
  LUT6 #(
    .INIT(64'h7ECF7ED2391DDCB5)) 
    \ram[23][4]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_12 ),
        .I4(\ram_reg[23][15]_i_4_n_10 ),
        .I5(\ram_reg[23][15]_i_4_n_11 ),
        .O(\ram[23][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[23][7]_i_1 
       (.I0(\ram[23][7]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[23][11]_i_2_n_0 ),
        .O(p_11_in[7]));
  LUT6 #(
    .INIT(64'hE227314EE23DF5AD)) 
    \ram[23][7]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_12 ),
        .I4(\ram_reg[23][15]_i_4_n_11 ),
        .I5(\ram_reg[23][15]_i_4_n_10 ),
        .O(\ram[23][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram[23][8]_i_1 
       (.I0(\ram[23][8]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\ram[23][12]_i_2_n_0 ),
        .O(p_11_in[8]));
  LUT6 #(
    .INIT(64'hEDE7ED7FEDF1EEBF)) 
    \ram[23][8]_i_2 
       (.I0(Q[9]),
        .I1(\ram_reg[23][15]_i_4_n_14 ),
        .I2(\ram_reg[23][15]_i_4_n_13 ),
        .I3(\ram_reg[23][15]_i_4_n_11 ),
        .I4(\ram_reg[23][15]_i_4_n_10 ),
        .I5(\ram_reg[23][15]_i_4_n_12 ),
        .O(\ram[23][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addr[0]_i_1 
       (.I0(ram_addr[0]),
        .O(\ram_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addr[1]_i_1 
       (.I0(ram_addr[0]),
        .I1(ram_addr[1]),
        .O(\ram_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08A8A808A808A808)) 
    \ram_addr[2]_i_1 
       (.I0(current_state[1]),
        .I1(config_reg),
        .I2(current_state[2]),
        .I3(ram_addr[2]),
        .I4(ram_addr[1]),
        .I5(ram_addr[0]),
        .O(next_ram_addr[2]));
  LUT5 #(
    .INIT(32'h40444004)) 
    \ram_addr[3]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(SEN),
        .O(\ram_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08A8A808A808A808)) 
    \ram_addr[3]_i_2 
       (.I0(current_state[1]),
        .I1(config_reg),
        .I2(current_state[2]),
        .I3(ram_addr[3]),
        .I4(ram_addr[2]),
        .I5(\ram_addr[3]_i_3_n_0 ),
        .O(next_ram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_addr[3]_i_3 
       (.I0(ram_addr[1]),
        .I1(ram_addr[0]),
        .O(\ram_addr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ram_addr[4]_i_1 
       (.I0(ram_addr[2]),
        .I1(ram_addr[0]),
        .I2(ram_addr[1]),
        .I3(ram_addr[3]),
        .I4(ram_addr[4]),
        .O(\ram_addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000B0)) 
    \ram_addr[5]_i_1 
       (.I0(SEN),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .O(\ram_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ram_addr[5]_i_2 
       (.I0(ram_addr[3]),
        .I1(ram_addr[1]),
        .I2(ram_addr[0]),
        .I3(ram_addr[2]),
        .I4(ram_addr[4]),
        .I5(ram_addr[5]),
        .O(\ram_addr[5]_i_2_n_0 ));
  FDRE \ram_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\ram_addr[3]_i_1_n_0 ),
        .D(\ram_addr[0]_i_1_n_0 ),
        .Q(ram_addr[0]),
        .R(\ram_addr[5]_i_1_n_0 ));
  FDRE \ram_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\ram_addr[3]_i_1_n_0 ),
        .D(\ram_addr[1]_i_1_n_0 ),
        .Q(ram_addr[1]),
        .R(\ram_addr[5]_i_1_n_0 ));
  FDRE \ram_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\ram_addr[3]_i_1_n_0 ),
        .D(next_ram_addr[2]),
        .Q(ram_addr[2]),
        .R(1'b0));
  FDRE \ram_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\ram_addr[3]_i_1_n_0 ),
        .D(next_ram_addr[3]),
        .Q(ram_addr[3]),
        .R(1'b0));
  FDRE \ram_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\ram_addr[3]_i_1_n_0 ),
        .D(\ram_addr[4]_i_1_n_0 ),
        .Q(ram_addr[4]),
        .R(\ram_addr[5]_i_1_n_0 ));
  FDRE \ram_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\ram_addr[3]_i_1_n_0 ),
        .D(\ram_addr[5]_i_2_n_0 ),
        .Q(ram_addr[5]),
        .R(\ram_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[0]_i_1 
       (.I0(\ram_do[0]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[0]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[0]_i_4_n_0 ),
        .O(\ram_do[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0000F0A00FC0F0)) 
    \ram_do[0]_i_2 
       (.I0(\ram_reg[14]_38 [0]),
        .I1(\ram_reg[12]_40 [0]),
        .I2(ram_addr[3]),
        .I3(ram_addr[2]),
        .I4(ram_addr[1]),
        .I5(ram_addr[0]),
        .O(\ram_do[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[0]_i_3 
       (.I0(\ram_reg[20]_32 [0]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [0]),
        .I3(ram_addr[1]),
        .O(\ram_do[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[0]_i_4 
       (.I0(\ram_reg[19]_33 [0]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [0]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [0]),
        .O(\ram_do[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[10]_i_1 
       (.I0(\ram_do[10]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[10]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[10]_i_4_n_0 ),
        .O(\ram_do[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02A2028202220202)) 
    \ram_do[10]_i_2 
       (.I0(ram_addr[3]),
        .I1(ram_addr[1]),
        .I2(ram_addr[2]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[12]_40 [10]),
        .I5(\ram_reg[14]_38 [10]),
        .O(\ram_do[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[10]_i_3 
       (.I0(\ram_reg[20]_32 [10]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [10]),
        .I3(ram_addr[1]),
        .O(\ram_do[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[10]_i_4 
       (.I0(\ram_reg[16]_36 [10]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[17]_35 [10]),
        .I3(ram_addr[1]),
        .O(\ram_do[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[11]_i_1 
       (.I0(\ram_do[11]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[11]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[11]_i_4_n_0 ),
        .O(\ram_do[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22222222A2AAA222)) 
    \ram_do[11]_i_2 
       (.I0(ram_addr[3]),
        .I1(ram_addr[2]),
        .I2(\ram_reg[14]_38 [11]),
        .I3(ram_addr[1]),
        .I4(\ram_reg[12]_40 [11]),
        .I5(ram_addr[0]),
        .O(\ram_do[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[11]_i_3 
       (.I0(\ram_reg[23]_29 [11]),
        .I1(\ram_reg[22]_30 [11]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[21]_31 [11]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[20]_32 [11]),
        .O(\ram_do[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[11]_i_4 
       (.I0(\ram_reg[16]_36 [11]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[17]_35 [11]),
        .I3(ram_addr[1]),
        .O(\ram_do[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h40664022)) 
    \ram_do[12]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(\ram_do[12]_i_2_n_0 ),
        .I3(ram_addr[2]),
        .I4(\ram_do[12]_i_3_n_0 ),
        .O(\ram_do[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[12]_i_2 
       (.I0(\ram_reg[23]_29 [12]),
        .I1(\ram_reg[22]_30 [12]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[21]_31 [12]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[20]_32 [12]),
        .O(\ram_do[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ram_do[12]_i_3 
       (.I0(ram_addr[0]),
        .I1(\ram_reg[16]_36 [12]),
        .I2(ram_addr[1]),
        .O(\ram_do[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF831800008318)) 
    \ram_do[13]_i_1 
       (.I0(ram_addr[0]),
        .I1(ram_addr[1]),
        .I2(ram_addr[2]),
        .I3(ram_addr[3]),
        .I4(ram_addr[4]),
        .I5(\ram_do[13]_i_2_n_0 ),
        .O(\ram_do[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AFC0A0)) 
    \ram_do[13]_i_2 
       (.I0(\ram_reg[20]_32 [13]),
        .I1(\ram_reg[21]_31 [13]),
        .I2(\ram_do[15]_i_2_n_0 ),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [13]),
        .I5(ram_addr[1]),
        .O(\ram_do[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F80005800800058)) 
    \ram_do[14]_i_1 
       (.I0(ram_addr[1]),
        .I1(ram_addr[0]),
        .I2(ram_addr[3]),
        .I3(ram_addr[4]),
        .I4(ram_addr[2]),
        .I5(\ram_do[14]_i_2_n_0 ),
        .O(\ram_do[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[14]_i_2 
       (.I0(\ram_reg[20]_32 [14]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [14]),
        .I3(ram_addr[1]),
        .O(\ram_do[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \ram_do[15]_i_1 
       (.I0(ram_addr[1]),
        .I1(\ram_reg[22]_30 [15]),
        .I2(ram_addr[0]),
        .I3(\ram_reg[23]_29 [15]),
        .I4(\ram_do[15]_i_2_n_0 ),
        .I5(\ram_do[15]_i_3_n_0 ),
        .O(\ram_do[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \ram_do[15]_i_2 
       (.I0(ram_addr[4]),
        .I1(ram_addr[2]),
        .I2(ram_addr[3]),
        .O(\ram_do[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ram_do[15]_i_3 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .O(\ram_do[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[1]_i_1 
       (.I0(\ram_do[1]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[1]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[1]_i_4_n_0 ),
        .O(\ram_do[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A00088FF)) 
    \ram_do[1]_i_2 
       (.I0(ram_addr[2]),
        .I1(\ram_reg[12]_40 [1]),
        .I2(\ram_reg[14]_38 [1]),
        .I3(ram_addr[3]),
        .I4(ram_addr[1]),
        .I5(ram_addr[0]),
        .O(\ram_do[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[1]_i_3 
       (.I0(\ram_reg[20]_32 [1]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [1]),
        .I3(ram_addr[1]),
        .O(\ram_do[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[1]_i_4 
       (.I0(\ram_reg[19]_33 [1]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [1]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [1]),
        .O(\ram_do[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h42000000)) 
    \ram_do[25]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[0]),
        .I4(ram_addr[1]),
        .O(\ram_do[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \ram_do[26]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[1]),
        .I3(ram_addr[0]),
        .O(\ram_do[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h30005000)) 
    \ram_do[27]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[0]),
        .I3(ram_addr[1]),
        .I4(ram_addr[2]),
        .O(\ram_do[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h0B0C3203)) 
    \ram_do[28]_i_1 
       (.I0(ram_addr[1]),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(ram_addr[0]),
        .I4(ram_addr[2]),
        .O(\ram_do[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h36000000)) 
    \ram_do[29]_i_1 
       (.I0(ram_addr[2]),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(ram_addr[1]),
        .I4(ram_addr[0]),
        .O(\ram_do[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[2]_i_1 
       (.I0(\ram_do[2]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[2]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[2]_i_4_n_0 ),
        .O(\ram_do[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00008A8000000000)) 
    \ram_do[2]_i_2 
       (.I0(ram_addr[3]),
        .I1(\ram_reg[14]_38 [2]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[12]_40 [2]),
        .I4(ram_addr[0]),
        .I5(ram_addr[2]),
        .O(\ram_do[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[2]_i_3 
       (.I0(\ram_reg[20]_32 [2]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [2]),
        .I3(ram_addr[1]),
        .O(\ram_do[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[2]_i_4 
       (.I0(\ram_reg[19]_33 [2]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [2]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [2]),
        .O(\ram_do[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h56000014)) 
    \ram_do[30]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[1]),
        .I4(ram_addr[0]),
        .O(\ram_do[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h35631456)) 
    \ram_do[31]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[1]),
        .I4(ram_addr[0]),
        .O(\ram_do[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h63211442)) 
    \ram_do[32]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[1]),
        .I4(ram_addr[0]),
        .O(\ram_do[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h63634214)) 
    \ram_do[33]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[0]),
        .I4(ram_addr[1]),
        .O(\ram_do[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h42561414)) 
    \ram_do[34]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[0]),
        .I4(ram_addr[1]),
        .O(\ram_do[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h7763636B)) 
    \ram_do[35]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[0]),
        .I4(ram_addr[1]),
        .O(\ram_do[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h1546)) 
    \ram_do[36]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[1]),
        .I3(ram_addr[2]),
        .O(\ram_do[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4200)) 
    \ram_do[38]_i_1 
       (.I0(ram_addr[3]),
        .I1(ram_addr[4]),
        .I2(ram_addr[2]),
        .I3(ram_addr[1]),
        .O(\ram_do[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[3]_i_1 
       (.I0(\ram_do[3]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[3]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[3]_i_4_n_0 ),
        .O(\ram_do[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000FF0A000C000)) 
    \ram_do[3]_i_2 
       (.I0(\ram_reg[14]_38 [3]),
        .I1(\ram_reg[12]_40 [3]),
        .I2(ram_addr[3]),
        .I3(ram_addr[2]),
        .I4(ram_addr[1]),
        .I5(ram_addr[0]),
        .O(\ram_do[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[3]_i_3 
       (.I0(\ram_reg[20]_32 [3]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [3]),
        .I3(ram_addr[1]),
        .O(\ram_do[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[3]_i_4 
       (.I0(\ram_reg[19]_33 [3]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [3]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [3]),
        .O(\ram_do[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[4]_i_1 
       (.I0(\ram_do[4]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[4]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[4]_i_4_n_0 ),
        .O(\ram_do[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0A0000000C000)) 
    \ram_do[4]_i_2 
       (.I0(\ram_reg[14]_38 [4]),
        .I1(\ram_reg[12]_40 [4]),
        .I2(ram_addr[3]),
        .I3(ram_addr[2]),
        .I4(ram_addr[0]),
        .I5(ram_addr[1]),
        .O(\ram_do[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[4]_i_3 
       (.I0(\ram_reg[23]_29 [4]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[21]_31 [4]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[20]_32 [4]),
        .O(\ram_do[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[4]_i_4 
       (.I0(\ram_reg[19]_33 [4]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [4]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [4]),
        .O(\ram_do[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[5]_i_1 
       (.I0(\ram_do[5]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[5]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[5]_i_4_n_0 ),
        .O(\ram_do[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00A00000F0C000)) 
    \ram_do[5]_i_2 
       (.I0(\ram_reg[14]_38 [5]),
        .I1(\ram_reg[12]_40 [5]),
        .I2(ram_addr[3]),
        .I3(ram_addr[2]),
        .I4(ram_addr[0]),
        .I5(ram_addr[1]),
        .O(\ram_do[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[5]_i_3 
       (.I0(\ram_reg[20]_32 [5]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [5]),
        .I3(ram_addr[1]),
        .O(\ram_do[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[5]_i_4 
       (.I0(\ram_reg[19]_33 [5]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [5]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [5]),
        .O(\ram_do[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ram_do[6]_i_2 
       (.I0(\ram_reg[20]_32 [6]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [6]),
        .I3(ram_addr[1]),
        .I4(\ram_do[15]_i_2_n_0 ),
        .I5(\ram_do[6]_i_4_n_0 ),
        .O(\ram_do[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5150C4340100C434)) 
    \ram_do[6]_i_3 
       (.I0(ram_addr[4]),
        .I1(ram_addr[1]),
        .I2(ram_addr[2]),
        .I3(ram_addr[0]),
        .I4(ram_addr[3]),
        .I5(\ram_do[6]_i_5_n_0 ),
        .O(\ram_do[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[6]_i_4 
       (.I0(\ram_reg[19]_33 [6]),
        .I1(\ram_reg[18]_34 [6]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[17]_35 [6]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[16]_36 [6]),
        .O(\ram_do[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[6]_i_5 
       (.I0(\ram_reg[15]_37 [6]),
        .I1(\ram_reg[14]_38 [6]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[13]_39 [6]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[12]_40 [6]),
        .O(\ram_do[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \ram_do[7]_i_1 
       (.I0(\ram_do[7]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[7]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[7]_i_4_n_0 ),
        .O(\ram_do[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5544000111000001)) 
    \ram_do[7]_i_2 
       (.I0(ram_addr[4]),
        .I1(ram_addr[2]),
        .I2(ram_addr[1]),
        .I3(ram_addr[0]),
        .I4(ram_addr[3]),
        .I5(\ram_do[7]_i_5_n_0 ),
        .O(\ram_do[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[7]_i_3 
       (.I0(\ram_reg[23]_29 [7]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[21]_31 [7]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[20]_32 [7]),
        .O(\ram_do[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[7]_i_4 
       (.I0(\ram_reg[19]_33 [7]),
        .I1(\ram_reg[18]_34 [7]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[17]_35 [7]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[16]_36 [7]),
        .O(\ram_do[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[7]_i_5 
       (.I0(\ram_reg[15]_37 [7]),
        .I1(\ram_reg[14]_38 [7]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[13]_39 [7]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[12]_40 [7]),
        .O(\ram_do[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[8]_i_1 
       (.I0(\ram_do[8]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[8]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[8]_i_4_n_0 ),
        .O(\ram_do[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A28082802280028)) 
    \ram_do[8]_i_2 
       (.I0(ram_addr[3]),
        .I1(ram_addr[1]),
        .I2(ram_addr[0]),
        .I3(ram_addr[2]),
        .I4(\ram_reg[12]_40 [8]),
        .I5(\ram_reg[14]_38 [8]),
        .O(\ram_do[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_do[8]_i_3 
       (.I0(\ram_reg[23]_29 [8]),
        .I1(\ram_reg[22]_30 [8]),
        .I2(ram_addr[1]),
        .I3(\ram_reg[21]_31 [8]),
        .I4(ram_addr[0]),
        .I5(\ram_reg[20]_32 [8]),
        .O(\ram_do[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[8]_i_4 
       (.I0(\ram_reg[19]_33 [8]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [8]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [8]),
        .O(\ram_do[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \ram_do[9]_i_1 
       (.I0(\ram_do[9]_i_2_n_0 ),
        .I1(ram_addr[3]),
        .I2(ram_addr[4]),
        .I3(\ram_do[9]_i_3_n_0 ),
        .I4(ram_addr[2]),
        .I5(\ram_do[9]_i_4_n_0 ),
        .O(\ram_do[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0F00AC000000)) 
    \ram_do[9]_i_2 
       (.I0(\ram_reg[14]_38 [9]),
        .I1(\ram_reg[12]_40 [9]),
        .I2(ram_addr[1]),
        .I3(ram_addr[3]),
        .I4(ram_addr[2]),
        .I5(ram_addr[0]),
        .O(\ram_do[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ram_do[9]_i_3 
       (.I0(\ram_reg[20]_32 [9]),
        .I1(ram_addr[0]),
        .I2(\ram_reg[21]_31 [9]),
        .I3(ram_addr[1]),
        .O(\ram_do[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \ram_do[9]_i_4 
       (.I0(\ram_reg[19]_33 [9]),
        .I1(ram_addr[1]),
        .I2(\ram_reg[17]_35 [9]),
        .I3(ram_addr[0]),
        .I4(\ram_reg[16]_36 [9]),
        .O(\ram_do[9]_i_4_n_0 ));
  FDRE \ram_do_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[0]_i_1_n_0 ),
        .Q(ram_do[0]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[10]_i_1_n_0 ),
        .Q(ram_do[10]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[11]_i_1_n_0 ),
        .Q(ram_do[11]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[12]_i_1_n_0 ),
        .Q(ram_do[12]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[13]_i_1_n_0 ),
        .Q(ram_do[13]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[14]_i_1_n_0 ),
        .Q(ram_do[14]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[15]_i_1_n_0 ),
        .Q(ram_do[15]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[1]_i_1_n_0 ),
        .Q(ram_do[1]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[25]_i_1_n_0 ),
        .Q(ram_do[25]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[26]_i_1_n_0 ),
        .Q(ram_do[26]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[27]_i_1_n_0 ),
        .Q(ram_do[27]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[28]_i_1_n_0 ),
        .Q(ram_do[28]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[29]_i_1_n_0 ),
        .Q(ram_do[29]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[2]_i_1_n_0 ),
        .Q(ram_do[2]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[30]_i_1_n_0 ),
        .Q(ram_do[30]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[31]_i_1_n_0 ),
        .Q(ram_do[31]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[32] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[32]_i_1_n_0 ),
        .Q(ram_do[32]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[33] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[33]_i_1_n_0 ),
        .Q(ram_do[33]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[34] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[34]_i_1_n_0 ),
        .Q(ram_do[34]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[35] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[35]_i_1_n_0 ),
        .Q(ram_do[35]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[36] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[36]_i_1_n_0 ),
        .Q(ram_do[36]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[38] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[38]_i_1_n_0 ),
        .Q(ram_do[38]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[3]_i_1_n_0 ),
        .Q(ram_do[3]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[4]_i_1_n_0 ),
        .Q(ram_do[4]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[5]_i_1_n_0 ),
        .Q(ram_do[5]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do_reg[6]_i_1_n_0 ),
        .Q(ram_do[6]),
        .R(ram_addr[5]));
  MUXF7 \ram_do_reg[6]_i_1 
       (.I0(\ram_do[6]_i_2_n_0 ),
        .I1(\ram_do[6]_i_3_n_0 ),
        .O(\ram_do_reg[6]_i_1_n_0 ),
        .S(\ram_do[15]_i_3_n_0 ));
  FDRE \ram_do_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[7]_i_1_n_0 ),
        .Q(ram_do[7]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[8]_i_1_n_0 ),
        .Q(ram_do[8]),
        .R(ram_addr[5]));
  FDRE \ram_do_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ram_do[9]_i_1_n_0 ),
        .Q(ram_do[9]),
        .R(ram_addr[5]));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][0]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][10] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[12][5]_0 [5]),
        .Q(\ram_reg[12]_40 [10]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[12][5]_0 [6]),
        .Q(\ram_reg[12]_40 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][1]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][2]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][3]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][4]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][5]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[12][6]_i_1_n_0 ),
        .Q(\ram_reg[12]_40 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[12][5]_0 [2]),
        .Q(\ram_reg[12]_40 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[12][5]_0 [3]),
        .Q(\ram_reg[12]_40 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[12][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[12][5]_0 [4]),
        .Q(\ram_reg[12]_40 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[13][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[13][6]_i_1_n_0 ),
        .Q(\ram_reg[13]_39 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[13][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram[13][7]_i_1_n_0 ),
        .Q(\ram_reg[13]_39 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[0]),
        .Q(\ram_reg[14]_38 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][10] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[14][5]_0 [5]),
        .Q(\ram_reg[14]_38 [10]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[14][5]_0 [6]),
        .Q(\ram_reg[14]_38 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[1]),
        .Q(\ram_reg[14]_38 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[2]),
        .Q(\ram_reg[14]_38 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[3]),
        .Q(\ram_reg[14]_38 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[4]),
        .Q(\ram_reg[14]_38 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[5]),
        .Q(\ram_reg[14]_38 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_2_in[6]),
        .Q(\ram_reg[14]_38 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[14][5]_0 [2]),
        .Q(\ram_reg[14]_38 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[14][5]_0 [3]),
        .Q(\ram_reg[14]_38 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[14][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(\ram_reg[14][5]_0 [4]),
        .Q(\ram_reg[14]_38 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[15][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_3_in[6]),
        .Q(\ram_reg[15]_37 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[15][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_3_in[7]),
        .Q(\ram_reg[15]_37 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[0]),
        .Q(\ram_reg[16]_36 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][10] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[5]),
        .Q(\ram_reg[16]_36 [10]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[6]),
        .Q(\ram_reg[16]_36 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][12] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[12]),
        .Q(\ram_reg[16]_36 [12]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][13] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[13]),
        .Q(\ram_reg[16]_36 [13]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[1]),
        .Q(\ram_reg[16]_36 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[2]),
        .Q(\ram_reg[16]_36 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[3]),
        .Q(\ram_reg[16]_36 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[4]),
        .Q(\ram_reg[16]_36 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[5]),
        .Q(\ram_reg[16]_36 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_4_in[6]),
        .Q(\ram_reg[16]_36 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[2]),
        .Q(\ram_reg[16]_36 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[3]),
        .Q(\ram_reg[16]_36 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[16][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[4]),
        .Q(\ram_reg[16]_36 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(low_time[0]),
        .Q(\ram_reg[17]_35 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][10] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[13]),
        .Q(\ram_reg[17]_35 [10]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[14]),
        .Q(\ram_reg[17]_35 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(low_time[1]),
        .Q(\ram_reg[17]_35 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(low_time[2]),
        .Q(\ram_reg[17]_35 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(low_time[3]),
        .Q(\ram_reg[17]_35 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(low_time[4]),
        .Q(\ram_reg[17]_35 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(low_time[5]),
        .Q(\ram_reg[17]_35 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(high_time),
        .Q(\ram_reg[17]_35 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[10]),
        .Q(\ram_reg[17]_35 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[11]),
        .Q(\ram_reg[17]_35 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[17][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(Q[12]),
        .Q(\ram_reg[17]_35 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[18][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(no_count),
        .Q(\ram_reg[18]_34 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[18][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(w_edge),
        .Q(\ram_reg[18]_34 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[0]),
        .Q(\ram_reg[19]_33 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[1]),
        .Q(\ram_reg[19]_33 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[2]),
        .Q(\ram_reg[19]_33 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[3]),
        .Q(\ram_reg[19]_33 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[4]),
        .Q(\ram_reg[19]_33 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[5]),
        .Q(\ram_reg[19]_33 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[6]),
        .Q(\ram_reg[19]_33 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[7]),
        .Q(\ram_reg[19]_33 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[8]),
        .Q(\ram_reg[19]_33 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[19][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_7_in[9]),
        .Q(\ram_reg[19]_33 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[0]),
        .Q(\ram_reg[20]_32 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][10] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[10]),
        .Q(\ram_reg[20]_32 [10]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[11]),
        .Q(\ram_reg[20]_32 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][12] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[12]),
        .Q(\ram_reg[20]_32 [12]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][13] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[13]),
        .Q(\ram_reg[20]_32 [13]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][14] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[14]),
        .Q(\ram_reg[20]_32 [14]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[1]),
        .Q(\ram_reg[20]_32 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[2]),
        .Q(\ram_reg[20]_32 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[3]),
        .Q(\ram_reg[20]_32 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[4]),
        .Q(\ram_reg[20]_32 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[5]),
        .Q(\ram_reg[20]_32 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[6]),
        .Q(\ram_reg[20]_32 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[7]),
        .Q(\ram_reg[20]_32 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[8]),
        .Q(\ram_reg[20]_32 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[20][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_8_in[9]),
        .Q(\ram_reg[20]_32 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][0] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[0]),
        .Q(\ram_reg[21]_31 [0]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][10] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[10]),
        .Q(\ram_reg[21]_31 [10]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[11]),
        .Q(\ram_reg[21]_31 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][12] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[12]),
        .Q(\ram_reg[21]_31 [12]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][13] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[13]),
        .Q(\ram_reg[21]_31 [13]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][14] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[14]),
        .Q(\ram_reg[21]_31 [14]),
        .R(1'b0));
  CARRY8 \ram_reg[21][14]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_ram_reg[21][14]_i_4_CO_UNCONNECTED [7:5],\ram_reg[21][14]_i_4_n_3 ,\ram_reg[21][14]_i_4_n_4 ,\ram_reg[21][14]_i_4_n_5 ,\ram_reg[21][14]_i_4_n_6 ,\ram_reg[21][14]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,\ram[21][14]_i_5_n_0 ,\ram[21][14]_i_6_n_0 ,Q[9],\ram[21][14]_i_7_n_0 ,1'b0}),
        .O({\NLW_ram_reg[21][14]_i_4_O_UNCONNECTED [7:6],\ram_reg[21][14]_i_4_n_10 ,\ram_reg[21][14]_i_4_n_11 ,\ram_reg[21][14]_i_4_n_12 ,\ram_reg[21][14]_i_4_n_13 ,\ram_reg[21][14]_i_4_n_14 ,\NLW_ram_reg[21][14]_i_4_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\ram[21][14]_i_8_n_0 ,\ram[21][14]_i_9_n_0 ,\ram[21][14]_i_10_n_0 ,\ram[21][14]_i_11_n_0 ,\ram[21][14]_i_12_n_0 ,Q[9]}));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][1] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[1]),
        .Q(\ram_reg[21]_31 [1]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][2] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[2]),
        .Q(\ram_reg[21]_31 [2]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][3] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[3]),
        .Q(\ram_reg[21]_31 [3]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[4]),
        .Q(\ram_reg[21]_31 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][5] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[5]),
        .Q(\ram_reg[21]_31 [5]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][6] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[6]),
        .Q(\ram_reg[21]_31 [6]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[7]),
        .Q(\ram_reg[21]_31 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[8]),
        .Q(\ram_reg[21]_31 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[21][9] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_9_in[9]),
        .Q(\ram_reg[21]_31 [9]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[22][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_10_in[11]),
        .Q(\ram_reg[22]_30 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[22][12] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_10_in[12]),
        .Q(\ram_reg[22]_30 [12]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[22][15] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_10_in[15]),
        .Q(\ram_reg[22]_30 [15]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[22][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_10_in[8]),
        .Q(\ram_reg[22]_30 [8]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[23][11] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_11_in[11]),
        .Q(\ram_reg[23]_29 [11]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[23][12] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_11_in[12]),
        .Q(\ram_reg[23]_29 [12]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[23][15] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_11_in[15]),
        .Q(\ram_reg[23]_29 [15]),
        .R(1'b0));
  CARRY8 \ram_reg[23][15]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_ram_reg[23][15]_i_4_CO_UNCONNECTED [7:5],\ram_reg[23][15]_i_4_n_3 ,\ram_reg[23][15]_i_4_n_4 ,\ram_reg[23][15]_i_4_n_5 ,\ram_reg[23][15]_i_4_n_6 ,\ram_reg[23][15]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,\ram[23][15]_i_5_n_0 ,\ram[23][15]_i_6_n_0 ,Q[9],\ram[23][15]_i_7_n_0 ,1'b0}),
        .O({\NLW_ram_reg[23][15]_i_4_O_UNCONNECTED [7:6],\ram_reg[23][15]_i_4_n_10 ,\ram_reg[23][15]_i_4_n_11 ,\ram_reg[23][15]_i_4_n_12 ,\ram_reg[23][15]_i_4_n_13 ,\ram_reg[23][15]_i_4_n_14 ,\ram_reg[23][15]_i_4_n_15 }),
        .S({1'b0,1'b0,\ram[23][15]_i_8_n_0 ,\ram[23][15]_i_9_n_0 ,\ram[23][15]_i_10_n_0 ,\ram[23][15]_i_11_n_0 ,\ram[23][15]_i_12_n_0 ,Q[9]}));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[23][4] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_11_in[4]),
        .Q(\ram_reg[23]_29 [4]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[23][7] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_11_in[7]),
        .Q(\ram_reg[23]_29 [7]),
        .R(1'b0));
  (* RAM_STYLE = "distributed" *) 
  FDRE \ram_reg[23][8] 
       (.C(s_axi_aclk),
        .CE(SEN),
        .D(p_11_in[8]),
        .Q(\ram_reg[23]_29 [8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \state_count[0]_i_1 
       (.I0(current_state[3]),
        .I1(state_count[0]),
        .O(\state_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \state_count[1]_i_1 
       (.I0(current_state[3]),
        .I1(state_count[1]),
        .I2(state_count[0]),
        .O(\state_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEEEB)) 
    \state_count[2]_i_1 
       (.I0(current_state[1]),
        .I1(state_count[2]),
        .I2(state_count[0]),
        .I3(state_count[1]),
        .O(\state_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEEEB)) 
    \state_count[3]_i_1 
       (.I0(current_state[1]),
        .I1(state_count[3]),
        .I2(state_count[1]),
        .I3(state_count[0]),
        .I4(state_count[2]),
        .O(\state_count[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \state_count[4]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\state_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \state_count[4]_i_2 
       (.I0(current_state[3]),
        .I1(state_count[4]),
        .I2(state_count[2]),
        .I3(state_count[0]),
        .I4(state_count[1]),
        .I5(state_count[3]),
        .O(\state_count[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\state_count[4]_i_1_n_0 ),
        .D(\state_count[0]_i_1_n_0 ),
        .Q(state_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\state_count[4]_i_1_n_0 ),
        .D(\state_count[1]_i_1_n_0 ),
        .Q(state_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\state_count[4]_i_1_n_0 ),
        .D(\state_count[2]_i_1_n_0 ),
        .Q(state_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\state_count[4]_i_1_n_0 ),
        .D(\state_count[3]_i_1_n_0 ),
        .Q(state_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\state_count[4]_i_1_n_0 ),
        .D(\state_count[4]_i_2_n_0 ),
        .Q(state_count[4]),
        .R(1'b0));
endmodule

module rfdc_ex_clk_wiz_adc1_0_slave_attachment
   (SR,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_arready,
    E,
    rst_reg_0,
    Q,
    \bus2ip_addr_i_reg[9]_0 ,
    wrack_reg_10,
    \bus2ip_addr_i_reg[2]_0 ,
    \bus2ip_addr_i_reg[2]_1 ,
    \bus2ip_addr_i_reg[2]_2 ,
    \bus2ip_addr_i_reg[3]_0 ,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[4]_0 ,
    \bus2ip_addr_i_reg[4]_1 ,
    \bus2ip_addr_i_reg[4]_2 ,
    \bus2ip_addr_i_reg[3]_1 ,
    \bus2ip_addr_i_reg[2]_3 ,
    \bus2ip_addr_i_reg[3]_2 ,
    \bus2ip_addr_i_reg[3]_3 ,
    \bus2ip_addr_i_reg[3]_4 ,
    \bus2ip_addr_i_reg[3]_5 ,
    \bus2ip_addr_i_reg[3]_6 ,
    \bus2ip_addr_i_reg[2]_4 ,
    \bus2ip_addr_i_reg[3]_7 ,
    \bus2ip_addr_i_reg[4]_3 ,
    \bus2ip_addr_i_reg[3]_8 ,
    \bus2ip_addr_i_reg[2]_5 ,
    \bus2ip_addr_i_reg[3]_9 ,
    \bus2ip_addr_i_reg[5]_1 ,
    \bus2ip_addr_i_reg[6]_0 ,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \bus2ip_addr_i_reg[8]_0 ,
    bus2ip_wrce,
    \s_axi_wdata[31] ,
    \bus2ip_addr_i_reg[1]_0 ,
    \s_axi_wdata[31]_0 ,
    rdack_reg_10,
    rst_ip2bus_rdack0,
    bus2ip_rdce,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    reset_trig0,
    sw_rst_cond,
    dummy_local_reg_rdack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_wrack0,
    dummy_local_reg_wrack_d10,
    \bus2ip_addr_i_reg[3]_10 ,
    \bus2ip_addr_i_reg[2]_6 ,
    \bus2ip_addr_i_reg[2]_7 ,
    \bus2ip_addr_i_reg[4]_4 ,
    \bus2ip_addr_i_reg[3]_11 ,
    \bus2ip_addr_i_reg[6]_1 ,
    \bus2ip_addr_i_reg[3]_12 ,
    \bus2ip_addr_i_reg[4]_5 ,
    \bus2ip_addr_i_reg[5]_2 ,
    s_axi_wdata_0_sp_1,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    ip2bus_wrack,
    ip2bus_rdack,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    \current_state_reg[1] ,
    \s_axi_rdata_i_reg[15]_0 ,
    \s_axi_rdata_i_reg[18]_0 ,
    \s_axi_rdata_i_reg[15]_1 ,
    \s_axi_rdata_i_reg[14]_0 ,
    \s_axi_rdata_i_reg[12]_0 ,
    \s_axi_rdata_i_reg[11]_0 ,
    \s_axi_rdata_i_reg[10]_0 ,
    \s_axi_rdata_i_reg[9]_0 ,
    \s_axi_rdata_i_reg[8]_0 ,
    \s_axi_rdata_i_reg[7]_0 ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[4]_0 ,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[1]_0 ,
    SRDY,
    \s_axi_rdata_i_reg[6]_0 ,
    \s_axi_rdata_i_reg[6]_1 ,
    \s_axi_rdata_i_reg[13]_0 ,
    \s_axi_rdata_i_reg[13]_1 ,
    \s_axi_rdata_i_reg[17]_0 ,
    \s_axi_rdata_i_reg[18]_1 ,
    \s_axi_rdata_i_reg[18]_2 ,
    config_reg,
    load_enable_reg_d_reg,
    s_axi_wdata,
    \ram_clk_config_reg[2][17] ,
    \ram_clk_config_reg[2][18] ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[17]_1 ,
    \s_axi_rdata_i_reg[17]_2 ,
    \s_axi_rdata_i[17]_i_3_0 ,
    \s_axi_rdata_i[17]_i_3_1 ,
    \s_axi_rdata_i[17]_i_3_2 ,
    \s_axi_rdata_i[17]_i_3_3 ,
    \s_axi_rdata_i[17]_i_3_4 ,
    \s_axi_rdata_i[0]_i_3 ,
    \s_axi_rdata_i[0]_i_3_0 ,
    \s_axi_rdata_i[17]_i_3_5 ,
    \s_axi_rdata_i[17]_i_11_0 ,
    \s_axi_rdata_i[17]_i_11_1 ,
    rst_ip2bus_rdack_d1,
    dummy_local_reg_wrack,
    wrack,
    IP2Bus_WrAck,
    sw_rst_cond_d1,
    s_axi_wstrb,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    s_axi_bready,
    s_axi_rready,
    \s_axi_rdata_i[0]_i_3_1 ,
    \s_axi_rdata_i[0]_i_3_2 ,
    \s_axi_rdata_i[0]_i_3_3 ,
    \s_axi_rdata_i[0]_i_3_4 ,
    s_axi_araddr,
    s_axi_awaddr,
    D);
  output [0:0]SR;
  output [0:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_arready;
  output [0:0]E;
  output rst_reg_0;
  output [4:0]Q;
  output [0:0]\bus2ip_addr_i_reg[9]_0 ;
  output wrack_reg_10;
  output [0:0]\bus2ip_addr_i_reg[2]_0 ;
  output [0:0]\bus2ip_addr_i_reg[2]_1 ;
  output [0:0]\bus2ip_addr_i_reg[2]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_0 ;
  output [0:0]\bus2ip_addr_i_reg[5]_0 ;
  output [0:0]\bus2ip_addr_i_reg[4]_0 ;
  output [0:0]\bus2ip_addr_i_reg[4]_1 ;
  output [0:0]\bus2ip_addr_i_reg[4]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_1 ;
  output [0:0]\bus2ip_addr_i_reg[2]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_2 ;
  output [0:0]\bus2ip_addr_i_reg[3]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_5 ;
  output [0:0]\bus2ip_addr_i_reg[3]_6 ;
  output [0:0]\bus2ip_addr_i_reg[2]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_7 ;
  output [0:0]\bus2ip_addr_i_reg[4]_3 ;
  output [0:0]\bus2ip_addr_i_reg[3]_8 ;
  output [0:0]\bus2ip_addr_i_reg[2]_5 ;
  output [0:0]\bus2ip_addr_i_reg[3]_9 ;
  output [0:0]\bus2ip_addr_i_reg[5]_1 ;
  output [0:0]\bus2ip_addr_i_reg[6]_0 ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  output [0:0]Bus_RNW_reg_reg;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output \bus2ip_addr_i_reg[8]_0 ;
  output [0:0]bus2ip_wrce;
  output [4:0]\s_axi_wdata[31] ;
  output \bus2ip_addr_i_reg[1]_0 ;
  output [31:0]\s_axi_wdata[31]_0 ;
  output rdack_reg_10;
  output rst_ip2bus_rdack0;
  output [0:0]bus2ip_rdce;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output reset_trig0;
  output sw_rst_cond;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_wrack0;
  output dummy_local_reg_wrack_d10;
  output [0:0]\bus2ip_addr_i_reg[3]_10 ;
  output [0:0]\bus2ip_addr_i_reg[2]_6 ;
  output [0:0]\bus2ip_addr_i_reg[2]_7 ;
  output [0:0]\bus2ip_addr_i_reg[4]_4 ;
  output [0:0]\bus2ip_addr_i_reg[3]_11 ;
  output [0:0]\bus2ip_addr_i_reg[6]_1 ;
  output [0:0]\bus2ip_addr_i_reg[3]_12 ;
  output [0:0]\bus2ip_addr_i_reg[4]_5 ;
  output [0:0]\bus2ip_addr_i_reg[5]_2 ;
  output s_axi_wdata_0_sp_1;
  output [0:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input ip2bus_wrack;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input \current_state_reg[1] ;
  input [15:0]\s_axi_rdata_i_reg[15]_0 ;
  input [16:0]\s_axi_rdata_i_reg[18]_0 ;
  input \s_axi_rdata_i_reg[15]_1 ;
  input \s_axi_rdata_i_reg[14]_0 ;
  input \s_axi_rdata_i_reg[12]_0 ;
  input \s_axi_rdata_i_reg[11]_0 ;
  input \s_axi_rdata_i_reg[10]_0 ;
  input \s_axi_rdata_i_reg[9]_0 ;
  input \s_axi_rdata_i_reg[8]_0 ;
  input \s_axi_rdata_i_reg[7]_0 ;
  input \s_axi_rdata_i_reg[5]_0 ;
  input \s_axi_rdata_i_reg[4]_0 ;
  input \s_axi_rdata_i_reg[3]_0 ;
  input \s_axi_rdata_i_reg[2]_0 ;
  input \s_axi_rdata_i_reg[1]_0 ;
  input SRDY;
  input \s_axi_rdata_i_reg[6]_0 ;
  input \s_axi_rdata_i_reg[6]_1 ;
  input \s_axi_rdata_i_reg[13]_0 ;
  input \s_axi_rdata_i_reg[13]_1 ;
  input \s_axi_rdata_i_reg[17]_0 ;
  input \s_axi_rdata_i_reg[18]_1 ;
  input \s_axi_rdata_i_reg[18]_2 ;
  input [0:0]config_reg;
  input load_enable_reg_d_reg;
  input [31:0]s_axi_wdata;
  input [17:0]\ram_clk_config_reg[2][17] ;
  input \ram_clk_config_reg[2][18] ;
  input \s_axi_rdata_i_reg[0]_0 ;
  input \s_axi_rdata_i_reg[17]_1 ;
  input \s_axi_rdata_i_reg[17]_2 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_0 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_1 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_2 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_3 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_4 ;
  input \s_axi_rdata_i[0]_i_3 ;
  input \s_axi_rdata_i[0]_i_3_0 ;
  input [0:0]\s_axi_rdata_i[17]_i_3_5 ;
  input [0:0]\s_axi_rdata_i[17]_i_11_0 ;
  input [0:0]\s_axi_rdata_i[17]_i_11_1 ;
  input rst_ip2bus_rdack_d1;
  input dummy_local_reg_wrack;
  input wrack;
  input IP2Bus_WrAck;
  input sw_rst_cond_d1;
  input [3:0]s_axi_wstrb;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input s_axi_bready;
  input s_axi_rready;
  input \s_axi_rdata_i[0]_i_3_1 ;
  input \s_axi_rdata_i[0]_i_3_2 ;
  input \s_axi_rdata_i[0]_i_3_3 ;
  input \s_axi_rdata_i[0]_i_3_4 ;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;
  input [13:0]D;

  wire [0:0]Bus_RNW_reg_reg;
  wire [13:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ;
  wire [13:31]IP2Bus_Data;
  wire IP2Bus_WrAck;
  wire I_DECODER_n_48;
  wire [4:0]Q;
  wire [0:0]SR;
  wire SRDY;
  wire [10:0]bus2ip_addr;
  wire \bus2ip_addr_i[0]_i_1_n_0 ;
  wire \bus2ip_addr_i[10]_i_1_n_0 ;
  wire \bus2ip_addr_i[10]_i_2_n_0 ;
  wire \bus2ip_addr_i[1]_i_1_n_0 ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[9]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg[1]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_6 ;
  wire [0:0]\bus2ip_addr_i_reg[2]_7 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_10 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_11 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_12 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_6 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_7 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_8 ;
  wire [0:0]\bus2ip_addr_i_reg[3]_9 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_3 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_4 ;
  wire [0:0]\bus2ip_addr_i_reg[4]_5 ;
  wire [0:0]\bus2ip_addr_i_reg[5]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[5]_1 ;
  wire [0:0]\bus2ip_addr_i_reg[5]_2 ;
  wire [0:0]\bus2ip_addr_i_reg[6]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[6]_1 ;
  wire \bus2ip_addr_i_reg[8]_0 ;
  wire [0:0]\bus2ip_addr_i_reg[9]_0 ;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]bus2ip_wrce;
  wire \clkfbout_reg[6]_i_2_n_0 ;
  wire \clkfbout_reg[6]_i_3_n_0 ;
  wire \clkout0_reg[14]_i_2_n_0 ;
  wire [0:0]config_reg;
  wire \current_state_reg[1] ;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire load_enable_reg_d_i_2_n_0;
  wire load_enable_reg_d_reg;
  wire [0:0]p_1_in;
  wire [6:0]plusOp;
  wire \ram_clk_config[0][31]_i_3_n_0 ;
  wire \ram_clk_config[0][31]_i_4_n_0 ;
  wire \ram_clk_config[0][31]_i_6_n_0 ;
  wire \ram_clk_config[11][31]_i_2_n_0 ;
  wire \ram_clk_config[1][31]_i_2_n_0 ;
  wire \ram_clk_config[2][31]_i_3_n_0 ;
  wire \ram_clk_config[2][31]_i_4_n_0 ;
  wire \ram_clk_config[3][31]_i_2_n_0 ;
  wire [17:0]\ram_clk_config_reg[2][17] ;
  wire \ram_clk_config_reg[2][18] ;
  wire rdack_reg_10;
  wire reset_trig0;
  wire rst_i_1_n_0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire rst_reg_0;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_10_n_0 ;
  wire \s_axi_rdata_i[0]_i_3 ;
  wire \s_axi_rdata_i[0]_i_3_0 ;
  wire \s_axi_rdata_i[0]_i_3_1 ;
  wire \s_axi_rdata_i[0]_i_3_2 ;
  wire \s_axi_rdata_i[0]_i_3_3 ;
  wire \s_axi_rdata_i[0]_i_3_4 ;
  wire \s_axi_rdata_i[0]_i_6_n_0 ;
  wire \s_axi_rdata_i[0]_i_7_n_0 ;
  wire [0:0]\s_axi_rdata_i[17]_i_11_0 ;
  wire [0:0]\s_axi_rdata_i[17]_i_11_1 ;
  wire \s_axi_rdata_i[17]_i_11_n_0 ;
  wire \s_axi_rdata_i[17]_i_15_n_0 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_0 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_1 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_2 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_3 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_4 ;
  wire [0:0]\s_axi_rdata_i[17]_i_3_5 ;
  wire \s_axi_rdata_i[17]_i_3_n_0 ;
  wire \s_axi_rdata_i[17]_i_7_n_0 ;
  wire \s_axi_rdata_i[17]_i_9_n_0 ;
  wire \s_axi_rdata_i[31]_i_15_n_0 ;
  wire \s_axi_rdata_i[31]_i_16_n_0 ;
  wire \s_axi_rdata_i[31]_i_17_n_0 ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[10]_0 ;
  wire \s_axi_rdata_i_reg[11]_0 ;
  wire \s_axi_rdata_i_reg[12]_0 ;
  wire \s_axi_rdata_i_reg[13]_0 ;
  wire \s_axi_rdata_i_reg[13]_1 ;
  wire \s_axi_rdata_i_reg[14]_0 ;
  wire [15:0]\s_axi_rdata_i_reg[15]_0 ;
  wire \s_axi_rdata_i_reg[15]_1 ;
  wire \s_axi_rdata_i_reg[17]_0 ;
  wire \s_axi_rdata_i_reg[17]_1 ;
  wire \s_axi_rdata_i_reg[17]_2 ;
  wire [16:0]\s_axi_rdata_i_reg[18]_0 ;
  wire \s_axi_rdata_i_reg[18]_1 ;
  wire \s_axi_rdata_i_reg[18]_2 ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[4]_0 ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire \s_axi_rdata_i_reg[6]_1 ;
  wire \s_axi_rdata_i_reg[7]_0 ;
  wire \s_axi_rdata_i_reg[8]_0 ;
  wire \s_axi_rdata_i_reg[9]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [31:0]s_axi_wdata;
  wire [4:0]\s_axi_wdata[31] ;
  wire [31:0]\s_axi_wdata[31]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_i_2_n_0;
  wire timeout;
  wire wrack;
  wire wrack_reg_10;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'h44444F444F444F44)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(ip2bus_rdack),
        .I3(timeout),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88888888888888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[3]_i_4_n_0 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axi_rresp_i),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(s_axi_bresp_i),
        .I5(\FSM_onehot_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2 
       (.I0(timeout),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(timeout),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1_n_0 ));
  rfdc_ex_clk_wiz_adc1_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .D({IP2Bus_Data[13],IP2Bus_Data[14],IP2Bus_Data[16],IP2Bus_Data[17],IP2Bus_Data[18],IP2Bus_Data[19],IP2Bus_Data[20],IP2Bus_Data[21],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (timeout),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0 (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .Q(start2),
        .SRDY(SRDY),
        .\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg[2]_0 ),
        .\bus2ip_addr_i_reg[2]_0 (\bus2ip_addr_i_reg[2]_1 ),
        .\bus2ip_addr_i_reg[2]_1 (\bus2ip_addr_i_reg[2]_2 ),
        .\bus2ip_addr_i_reg[2]_2 (\bus2ip_addr_i_reg[2]_3 ),
        .\bus2ip_addr_i_reg[2]_3 (\bus2ip_addr_i_reg[2]_4 ),
        .\bus2ip_addr_i_reg[2]_4 (\bus2ip_addr_i_reg[2]_5 ),
        .\bus2ip_addr_i_reg[2]_5 (\bus2ip_addr_i_reg[2]_6 ),
        .\bus2ip_addr_i_reg[2]_6 (\bus2ip_addr_i_reg[2]_7 ),
        .\bus2ip_addr_i_reg[3] (\bus2ip_addr_i_reg[3]_0 ),
        .\bus2ip_addr_i_reg[3]_0 (\bus2ip_addr_i_reg[3]_1 ),
        .\bus2ip_addr_i_reg[3]_1 (\bus2ip_addr_i_reg[3]_2 ),
        .\bus2ip_addr_i_reg[3]_10 (\bus2ip_addr_i_reg[3]_11 ),
        .\bus2ip_addr_i_reg[3]_11 (\bus2ip_addr_i_reg[3]_12 ),
        .\bus2ip_addr_i_reg[3]_2 (\bus2ip_addr_i_reg[3]_3 ),
        .\bus2ip_addr_i_reg[3]_3 (\bus2ip_addr_i_reg[3]_4 ),
        .\bus2ip_addr_i_reg[3]_4 (\bus2ip_addr_i_reg[3]_5 ),
        .\bus2ip_addr_i_reg[3]_5 (\bus2ip_addr_i_reg[3]_6 ),
        .\bus2ip_addr_i_reg[3]_6 (\bus2ip_addr_i_reg[3]_7 ),
        .\bus2ip_addr_i_reg[3]_7 (\bus2ip_addr_i_reg[3]_8 ),
        .\bus2ip_addr_i_reg[3]_8 (\bus2ip_addr_i_reg[3]_9 ),
        .\bus2ip_addr_i_reg[3]_9 (\bus2ip_addr_i_reg[3]_10 ),
        .\bus2ip_addr_i_reg[4] (\bus2ip_addr_i_reg[4]_0 ),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4]_1 ),
        .\bus2ip_addr_i_reg[4]_1 (\bus2ip_addr_i_reg[4]_2 ),
        .\bus2ip_addr_i_reg[4]_2 (\bus2ip_addr_i_reg[4]_3 ),
        .\bus2ip_addr_i_reg[4]_3 (\bus2ip_addr_i_reg[4]_4 ),
        .\bus2ip_addr_i_reg[4]_4 (\bus2ip_addr_i_reg[4]_5 ),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5]_0 ),
        .\bus2ip_addr_i_reg[5]_0 (\bus2ip_addr_i_reg[5]_1 ),
        .\bus2ip_addr_i_reg[5]_1 (I_DECODER_n_48),
        .\bus2ip_addr_i_reg[5]_2 (\bus2ip_addr_i_reg[5]_2 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6]_0 ),
        .\bus2ip_addr_i_reg[6]_0 (\bus2ip_addr_i_reg[6]_1 ),
        .\bus2ip_addr_i_reg[8] (\bus2ip_addr_i_reg[8]_0 ),
        .\bus2ip_addr_i_reg[9] (\bus2ip_addr_i_reg[9]_0 ),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_wrce(bus2ip_wrce),
        .\clkfbout_reg_reg[6] (\clkfbout_reg[6]_i_2_n_0 ),
        .\clkfbout_reg_reg[6]_0 (\clkfbout_reg[6]_i_3_n_0 ),
        .\clkout0_reg_reg[14] (rst_reg_0),
        .\clkout0_reg_reg[14]_0 (\clkout0_reg[14]_i_2_n_0 ),
        .config_reg(config_reg),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .\interrupt_enable_reg_reg[15] ({bus2ip_addr[10:7],Q}),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_error_reg(bus2ip_rnw_i_reg_n_0),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .ip2bus_wrack_reg(sw_rst_cond_d1_i_2_n_0),
        .load_enable_reg_d_reg(load_enable_reg_d_reg),
        .\load_enable_reg_reg[0] (load_enable_reg_d_i_2_n_0),
        .\ram_clk_config_reg[0][31] (\ram_clk_config[0][31]_i_4_n_0 ),
        .\ram_clk_config_reg[17][31] (\ram_clk_config[11][31]_i_2_n_0 ),
        .\ram_clk_config_reg[26][31] (\ram_clk_config[0][31]_i_3_n_0 ),
        .\ram_clk_config_reg[27][31] (\ram_clk_config[3][31]_i_2_n_0 ),
        .\ram_clk_config_reg[31][31] (\ram_clk_config[1][31]_i_2_n_0 ),
        .rdack_reg_10(rdack_reg_10),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i[0]_i_6_n_0 ),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i[0]_i_7_n_0 ),
        .\s_axi_rdata_i_reg[0]_1 (\s_axi_rdata_i_reg[0]_0 ),
        .\s_axi_rdata_i_reg[0]_2 (\s_axi_rdata_i[0]_i_10_n_0 ),
        .\s_axi_rdata_i_reg[10] (\s_axi_rdata_i_reg[10]_0 ),
        .\s_axi_rdata_i_reg[11] (\s_axi_rdata_i_reg[11]_0 ),
        .\s_axi_rdata_i_reg[12] (\s_axi_rdata_i_reg[12]_0 ),
        .\s_axi_rdata_i_reg[13] (\s_axi_rdata_i_reg[13]_0 ),
        .\s_axi_rdata_i_reg[13]_0 (\s_axi_rdata_i_reg[13]_1 ),
        .\s_axi_rdata_i_reg[14] (\s_axi_rdata_i_reg[14]_0 ),
        .\s_axi_rdata_i_reg[15] (\s_axi_rdata_i_reg[15]_0 ),
        .\s_axi_rdata_i_reg[15]_0 (\s_axi_rdata_i_reg[15]_1 ),
        .\s_axi_rdata_i_reg[15]_1 (\s_axi_rdata_i[31]_i_15_n_0 ),
        .\s_axi_rdata_i_reg[15]_2 (\s_axi_rdata_i[31]_i_16_n_0 ),
        .\s_axi_rdata_i_reg[15]_3 (\s_axi_rdata_i[31]_i_17_n_0 ),
        .\s_axi_rdata_i_reg[17] (\s_axi_rdata_i_reg[17]_0 ),
        .\s_axi_rdata_i_reg[17]_0 (\s_axi_rdata_i[17]_i_3_n_0 ),
        .\s_axi_rdata_i_reg[18] (\s_axi_rdata_i_reg[18]_0 ),
        .\s_axi_rdata_i_reg[18]_0 (\s_axi_rdata_i_reg[18]_1 ),
        .\s_axi_rdata_i_reg[18]_1 (\s_axi_rdata_i_reg[18]_2 ),
        .\s_axi_rdata_i_reg[1] (\s_axi_rdata_i_reg[1]_0 ),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[3] (\s_axi_rdata_i_reg[3]_0 ),
        .\s_axi_rdata_i_reg[4] (\s_axi_rdata_i_reg[4]_0 ),
        .\s_axi_rdata_i_reg[5] (\s_axi_rdata_i_reg[5]_0 ),
        .\s_axi_rdata_i_reg[6] (\s_axi_rdata_i_reg[6]_0 ),
        .\s_axi_rdata_i_reg[6]_0 (\s_axi_rdata_i_reg[6]_1 ),
        .\s_axi_rdata_i_reg[7] (\s_axi_rdata_i_reg[7]_0 ),
        .\s_axi_rdata_i_reg[8] (\s_axi_rdata_i_reg[8]_0 ),
        .\s_axi_rdata_i_reg[9] (\s_axi_rdata_i_reg[9]_0 ),
        .s_axi_wdata(s_axi_wdata[0]),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wstrb(s_axi_wstrb),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[10]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[10]_i_2 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[10]),
        .O(\bus2ip_addr_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[7]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[8]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[9]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[9]),
        .O(\bus2ip_addr_i[9]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[0]_i_1_n_0 ),
        .Q(bus2ip_addr[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[10]_i_2_n_0 ),
        .Q(bus2ip_addr[10]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[1]_i_1_n_0 ),
        .Q(bus2ip_addr[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[7]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_1_n_0 ),
        .Q(bus2ip_addr[8]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[9]_i_1_n_0 ),
        .Q(bus2ip_addr[9]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clkfbout_reg[6]_i_2 
       (.I0(bus2ip_addr[7]),
        .I1(bus2ip_addr[10]),
        .I2(I_DECODER_n_48),
        .I3(bus2ip_addr[0]),
        .I4(bus2ip_addr[1]),
        .I5(bus2ip_addr[8]),
        .O(\clkfbout_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \clkfbout_reg[6]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\clkfbout_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \clkout0_reg[14]_i_2 
       (.I0(bus2ip_addr[8]),
        .I1(\s_axi_rdata_i[31]_i_17_n_0 ),
        .I2(I_DECODER_n_48),
        .I3(bus2ip_addr[10]),
        .I4(bus2ip_addr[7]),
        .I5(bus2ip_addr[9]),
        .O(\clkout0_reg[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[3]_i_1 
       (.I0(SR),
        .I1(\current_state_reg[1] ),
        .O(rst_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    load_enable_reg_d_i_2
       (.I0(bus2ip_addr[1]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[7]),
        .I3(bus2ip_addr[10]),
        .I4(\s_axi_rdata_i[31]_i_15_n_0 ),
        .O(load_enable_reg_d_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \ram_clk_config[0][27]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\bus2ip_addr_i_reg[1]_0 ),
        .O(\s_axi_wdata[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_clk_config[0][28]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\bus2ip_addr_i_reg[1]_0 ),
        .O(\s_axi_wdata[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_clk_config[0][29]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\bus2ip_addr_i_reg[1]_0 ),
        .O(\s_axi_wdata[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_clk_config[0][30]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\bus2ip_addr_i_reg[1]_0 ),
        .O(\s_axi_wdata[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_clk_config[0][31]_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(\bus2ip_addr_i_reg[1]_0 ),
        .O(\s_axi_wdata[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ram_clk_config[0][31]_i_3 
       (.I0(\clkfbout_reg[6]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bus2ip_addr[9]),
        .O(\ram_clk_config[0][31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \ram_clk_config[0][31]_i_4 
       (.I0(\s_axi_rdata_i[31]_i_15_n_0 ),
        .I1(bus2ip_addr[10]),
        .I2(bus2ip_addr[7]),
        .I3(bus2ip_addr[8]),
        .I4(bus2ip_addr[0]),
        .I5(bus2ip_addr[1]),
        .O(\ram_clk_config[0][31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \ram_clk_config[0][31]_i_5 
       (.I0(\ram_clk_config[0][31]_i_6_n_0 ),
        .I1(bus2ip_addr[1]),
        .I2(bus2ip_addr[0]),
        .I3(bus2ip_addr[9]),
        .I4(\clkfbout_reg[6]_i_3_n_0 ),
        .O(\bus2ip_addr_i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ram_clk_config[0][31]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(bus2ip_addr[7]),
        .I3(bus2ip_addr[10]),
        .I4(bus2ip_addr[8]),
        .O(\ram_clk_config[0][31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_clk_config[11][31]_i_2 
       (.I0(Q[0]),
        .I1(load_enable_reg_d_i_2_n_0),
        .O(\ram_clk_config[11][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \ram_clk_config[1][31]_i_2 
       (.I0(load_enable_reg_d_i_2_n_0),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(bus2ip_addr[9]),
        .I4(\clkfbout_reg[6]_i_2_n_0 ),
        .O(\ram_clk_config[1][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [0]),
        .O(\s_axi_wdata[31]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [10]),
        .O(\s_axi_wdata[31]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [11]),
        .O(\s_axi_wdata[31]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [12]),
        .O(\s_axi_wdata[31]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [13]),
        .O(\s_axi_wdata[31]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [14]),
        .O(\s_axi_wdata[31]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][15]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [15]),
        .O(\s_axi_wdata[31]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][16]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [16]),
        .O(\s_axi_wdata[31]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][17]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [17]),
        .O(\s_axi_wdata[31]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][18]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][18] ),
        .O(\s_axi_wdata[31]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][19]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [1]),
        .O(\s_axi_wdata[31]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][20]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][21]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][22]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][23]_i_1 
       (.I0(s_axi_wdata[23]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][24]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][25]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][26]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][27]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][28]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][29]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [2]),
        .O(\s_axi_wdata[31]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][30]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_clk_config[2][31]_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .O(\s_axi_wdata[31]_0 [31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \ram_clk_config[2][31]_i_3 
       (.I0(\ram_clk_config[0][31]_i_6_n_0 ),
        .I1(bus2ip_addr[1]),
        .I2(bus2ip_addr[0]),
        .I3(bus2ip_addr[9]),
        .I4(Q[0]),
        .I5(\ram_clk_config[2][31]_i_4_n_0 ),
        .O(\ram_clk_config[2][31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ram_clk_config[2][31]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\ram_clk_config[2][31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [3]),
        .O(\s_axi_wdata[31]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [4]),
        .O(\s_axi_wdata[31]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [5]),
        .O(\s_axi_wdata[31]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [6]),
        .O(\s_axi_wdata[31]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [7]),
        .O(\s_axi_wdata[31]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [8]),
        .O(\s_axi_wdata[31]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ram_clk_config[2][9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\ram_clk_config[2][31]_i_3_n_0 ),
        .I2(\ram_clk_config_reg[2][17] [9]),
        .O(\s_axi_wdata[31]_0 [9]));
  LUT4 #(
    .INIT(16'h0040)) 
    \ram_clk_config[3][31]_i_2 
       (.I0(load_enable_reg_d_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ram_clk_config[3][31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_arready_INST_0
       (.I0(timeout),
        .I1(ip2bus_rdack),
        .O(s_axi_arready));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(p_1_in),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555FD550000FC00)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(ip2bus_wrack),
        .I2(timeout),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \s_axi_rdata_i[0]_i_10 
       (.I0(\s_axi_rdata_i[0]_i_3_1 ),
        .I1(Q[2]),
        .I2(\s_axi_rdata_i[0]_i_3_2 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\s_axi_rdata_i[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \s_axi_rdata_i[0]_i_6 
       (.I0(\s_axi_rdata_i[0]_i_3_3 ),
        .I1(Q[2]),
        .I2(\s_axi_rdata_i[0]_i_3_4 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\s_axi_rdata_i[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDDDFFFDF)) 
    \s_axi_rdata_i[0]_i_7 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\s_axi_rdata_i[0]_i_3 ),
        .I3(Q[2]),
        .I4(\s_axi_rdata_i[0]_i_3_0 ),
        .O(\s_axi_rdata_i[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \s_axi_rdata_i[17]_i_11 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\s_axi_rdata_i[17]_i_3_5 ),
        .I4(\s_axi_rdata_i[17]_i_15_n_0 ),
        .O(\s_axi_rdata_i[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    \s_axi_rdata_i[17]_i_15 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\s_axi_rdata_i[17]_i_11_0 ),
        .I4(Q[0]),
        .I5(\s_axi_rdata_i[17]_i_11_1 ),
        .O(\s_axi_rdata_i[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE000000FE00)) 
    \s_axi_rdata_i[17]_i_3 
       (.I0(\s_axi_rdata_i[17]_i_7_n_0 ),
        .I1(\s_axi_rdata_i_reg[17]_1 ),
        .I2(\s_axi_rdata_i[17]_i_9_n_0 ),
        .I3(Q[3]),
        .I4(\s_axi_rdata_i_reg[17]_2 ),
        .I5(\s_axi_rdata_i[17]_i_11_n_0 ),
        .O(\s_axi_rdata_i[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F33333333333B3B)) 
    \s_axi_rdata_i[17]_i_7 
       (.I0(\s_axi_rdata_i[17]_i_3_3 ),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(\s_axi_rdata_i[17]_i_3_4 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\s_axi_rdata_i[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA80A080AA8000800)) 
    \s_axi_rdata_i[17]_i_9 
       (.I0(Q[0]),
        .I1(\s_axi_rdata_i[17]_i_3_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\s_axi_rdata_i[17]_i_3_1 ),
        .I5(\s_axi_rdata_i[17]_i_3_2 ),
        .O(\s_axi_rdata_i[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \s_axi_rdata_i[31]_i_15 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(bus2ip_addr[9]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\s_axi_rdata_i[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[31]_i_16 
       (.I0(bus2ip_addr[7]),
        .I1(bus2ip_addr[10]),
        .O(\s_axi_rdata_i[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[31]_i_17 
       (.I0(bus2ip_addr[0]),
        .I1(bus2ip_addr[1]),
        .O(\s_axi_rdata_i[31]_i_17_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[31]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[21]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[20]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[19]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[18]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[17]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[16]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[0]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[14]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[13]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[1]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[30]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[2]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[3]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[4]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[5]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[6]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[7]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[8]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[9]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[10]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[11]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[29]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[12]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[13]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[28]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[27]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[26]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[25]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[24]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[23]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[22]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(p_1_in),
        .Q(s_axi_rresp),
        .R(SR));
  LUT6 #(
    .INIT(64'h7775555533300000)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(\state_reg_n_0_[1] ),
        .I2(timeout),
        .I3(ip2bus_rdack),
        .I4(\state_reg_n_0_[0] ),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_wready_INST_0
       (.I0(timeout),
        .I1(ip2bus_wrack),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBFCBBFCBBFCBB30)) 
    \state[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[0] ),
        .I4(timeout),
        .I5(ip2bus_wrack),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAFFCAFFCA0FC)) 
    \state[1]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(ip2bus_rdack),
        .I5(timeout),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    sw_rst_cond_d1_i_2
       (.I0(s_axi_wstrb[0]),
        .I1(bus2ip_rnw_i_reg_n_0),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[1]),
        .O(sw_rst_cond_d1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    wrack_reg_1_i_1
       (.I0(rst_reg_0),
        .I1(\ram_clk_config[0][31]_i_3_n_0 ),
        .O(wrack_reg_10));
endmodule

module rfdc_ex_clk_wiz_adc1_0_soft_reset
   (sw_rst_cond_d1,
    wrack,
    \RESET_FLOPS[15].RST_FLOPS_0 ,
    bus2ip_reset_active_high,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0);
  output sw_rst_cond_d1;
  output wrack;
  output \RESET_FLOPS[15].RST_FLOPS_0 ;
  input bus2ip_reset_active_high;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;

  wire FF_WRACK_i_1_n_0;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire bus2ip_reset_active_high;
  wire [1:15]flop_q_chain;
  wire reset_trig0;
  wire s_axi_aclk;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .I1(flop_q_chain[15]),
        .O(FF_WRACK_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(bus2ip_reset_active_high));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[11]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[10]),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[12]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[11]),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[13]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[12]),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[14]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[13]),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[15]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[14]),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[15]),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[4]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[5]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[4]),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[6]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[5]),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[7]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[6]),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[8]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[7]),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[9]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[8]),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[10]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[9]),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_active_high));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_active_high));
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
