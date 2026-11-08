// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri May 15 18:56:53 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_adc_control_0_0/ps_adc_control_0_0_sim_netlist.v
// Design      : ps_adc_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_adc_control_0_0,adc_control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_control,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_adc_control_0_0
   (clk,
    resetn,
    bram_adr_in,
    bram_adr_out,
    address,
    data_in,
    wr_en,
    data_out,
    sim_start,
    sim_active,
    config_low_wr,
    config_high_wr,
    config_adr,
    config_data,
    sim_low_wr,
    sim_high_wr,
    sim_channel,
    sim_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [12:0]bram_adr_in;
  output [10:0]bram_adr_out;
  output [10:0]address;
  input [31:0]data_in;
  output [3:0]wr_en;
  output [31:0]data_out;
  output sim_start;
  input sim_active;
  output config_low_wr;
  output config_high_wr;
  output [7:0]config_adr;
  output [31:0]config_data;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;

  wire \<const0> ;
  wire [10:0]address;
  wire [12:0]bram_adr_in;
  wire [10:0]bram_adr_out;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_high_wr;
  wire config_low_wr;
  wire [31:0]data_in;
  wire [9:0]\^data_out ;
  wire resetn;
  wire sim_active;
  wire [1:0]sim_channel;
  wire [31:0]sim_data;
  wire sim_high_wr;
  wire sim_low_wr;
  wire sim_start;
  wire [3:0]wr_en;
  wire [31:8]NLW_inst_data_out_UNCONNECTED;

  assign data_out[31] = \<const0> ;
  assign data_out[30] = \<const0> ;
  assign data_out[29] = \<const0> ;
  assign data_out[28] = \<const0> ;
  assign data_out[27] = \<const0> ;
  assign data_out[26] = \<const0> ;
  assign data_out[25] = \<const0> ;
  assign data_out[24] = \<const0> ;
  assign data_out[23] = \<const0> ;
  assign data_out[22] = \<const0> ;
  assign data_out[21] = \<const0> ;
  assign data_out[20] = \<const0> ;
  assign data_out[19] = \<const0> ;
  assign data_out[18] = \<const0> ;
  assign data_out[17] = \<const0> ;
  assign data_out[16] = \<const0> ;
  assign data_out[15] = \<const0> ;
  assign data_out[14] = \<const0> ;
  assign data_out[13] = \<const0> ;
  assign data_out[12] = \<const0> ;
  assign data_out[11] = \<const0> ;
  assign data_out[10] = \<const0> ;
  assign data_out[9] = \^data_out [9];
  assign data_out[8] = \<const0> ;
  assign data_out[7:0] = \^data_out [7:0];
  GND GND
       (.G(\<const0> ));
  ps_adc_control_0_0_adc_control inst
       (.address(address),
        .bram_adr_in({bram_adr_in[12:2],1'b0,1'b0}),
        .bram_adr_out(bram_adr_out),
        .clk(clk),
        .config_adr(config_adr),
        .config_data(config_data),
        .config_high_wr(config_high_wr),
        .config_low_wr(config_low_wr),
        .data_in(data_in),
        .data_out({NLW_inst_data_out_UNCONNECTED[31:10],\^data_out }),
        .resetn(resetn),
        .sim_active(sim_active),
        .sim_channel(sim_channel),
        .sim_data(sim_data),
        .sim_high_wr(sim_high_wr),
        .sim_low_wr(sim_low_wr),
        .sim_start(sim_start),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "adc_control" *) 
module ps_adc_control_0_0_adc_control
   (clk,
    resetn,
    bram_adr_in,
    bram_adr_out,
    address,
    data_in,
    wr_en,
    data_out,
    sim_start,
    sim_active,
    config_low_wr,
    config_high_wr,
    config_adr,
    config_data,
    sim_low_wr,
    sim_high_wr,
    sim_channel,
    sim_data);
  input clk;
  input resetn;
  input [12:0]bram_adr_in;
  output [10:0]bram_adr_out;
  output [10:0]address;
  input [31:0]data_in;
  output [3:0]wr_en;
  output [31:0]data_out;
  output sim_start;
  input sim_active;
  output config_low_wr;
  output config_high_wr;
  output [7:0]config_adr;
  output [31:0]config_data;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;

  wire \<const0> ;
  wire \adc_control.address[0]_i_1_n_0 ;
  wire \adc_control.address[10]_i_1_n_0 ;
  wire \adc_control.address[10]_i_2_n_0 ;
  wire \adc_control.address[10]_i_3_n_0 ;
  wire \adc_control.address[10]_i_4_n_0 ;
  wire \adc_control.address[1]_i_1_n_0 ;
  wire \adc_control.address[1]_i_2_n_0 ;
  wire \adc_control.address[2]_i_1_n_0 ;
  wire \adc_control.address[3]_i_1_n_0 ;
  wire \adc_control.address[4]_i_1_n_0 ;
  wire \adc_control.address[5]_i_1_n_0 ;
  wire \adc_control.address[6]_i_1_n_0 ;
  wire \adc_control.address[6]_i_2_n_0 ;
  wire \adc_control.address[7]_i_1_n_0 ;
  wire \adc_control.address[8]_i_1_n_0 ;
  wire \adc_control.address[9]_i_1_n_0 ;
  wire \adc_control.address[9]_i_2_n_0 ;
  wire \adc_control.cdata[31]_i_1_n_0 ;
  wire \adc_control.cdata[31]_i_2_n_0 ;
  wire \adc_control.cdata_reg_n_0_[0] ;
  wire \adc_control.cdata_reg_n_0_[10] ;
  wire \adc_control.cdata_reg_n_0_[11] ;
  wire \adc_control.cdata_reg_n_0_[12] ;
  wire \adc_control.cdata_reg_n_0_[13] ;
  wire \adc_control.cdata_reg_n_0_[14] ;
  wire \adc_control.cdata_reg_n_0_[15] ;
  wire \adc_control.cdata_reg_n_0_[1] ;
  wire \adc_control.cdata_reg_n_0_[28] ;
  wire \adc_control.cdata_reg_n_0_[29] ;
  wire \adc_control.cdata_reg_n_0_[2] ;
  wire \adc_control.cdata_reg_n_0_[30] ;
  wire \adc_control.cdata_reg_n_0_[31] ;
  wire \adc_control.cdata_reg_n_0_[3] ;
  wire \adc_control.cdata_reg_n_0_[4] ;
  wire \adc_control.cdata_reg_n_0_[5] ;
  wire \adc_control.cdata_reg_n_0_[6] ;
  wire \adc_control.cdata_reg_n_0_[7] ;
  wire \adc_control.cdata_reg_n_0_[8] ;
  wire \adc_control.cdata_reg_n_0_[9] ;
  wire \adc_control.cmd_start_i_1_n_0 ;
  wire \adc_control.cmd_start_reg_n_0 ;
  wire \adc_control.config_adr[7]_i_1_n_0 ;
  wire \adc_control.config_adr[7]_i_3_n_0 ;
  wire \adc_control.config_data[31]_i_1_n_0 ;
  wire \adc_control.config_high_wr_i_1_n_0 ;
  wire \adc_control.config_low_wr_i_1_n_0 ;
  wire \adc_control.config_low_wr_i_2_n_0 ;
  wire \adc_control.config_wr_count[4]_i_2_n_0 ;
  wire \adc_control.config_wr_count[5]_i_2_n_0 ;
  wire \adc_control.config_wr_count[7]_i_1_n_0 ;
  wire \adc_control.config_wr_count[7]_i_2_n_0 ;
  wire [7:0]\adc_control.config_wr_count_reg ;
  wire \adc_control.config_wr_done_i_1_n_0 ;
  wire \adc_control.config_wr_pend_i_1_n_0 ;
  wire \adc_control.config_wr_start_i_1_n_0 ;
  wire \adc_control.config_wr_start_i_2_n_0 ;
  wire \adc_control.data_out[5]_i_2_n_0 ;
  wire \adc_control.data_out[7]_i_2_n_0 ;
  wire \adc_control.data_out[9]_i_1_n_0 ;
  wire \adc_control.pdata[31]_i_10_n_0 ;
  wire \adc_control.pdata[31]_i_11_n_0 ;
  wire \adc_control.pdata[31]_i_12_n_0 ;
  wire \adc_control.pdata[31]_i_14_n_0 ;
  wire \adc_control.pdata[31]_i_15_n_0 ;
  wire \adc_control.pdata[31]_i_16_n_0 ;
  wire \adc_control.pdata[31]_i_17_n_0 ;
  wire \adc_control.pdata[31]_i_18_n_0 ;
  wire \adc_control.pdata[31]_i_19_n_0 ;
  wire \adc_control.pdata[31]_i_1_n_0 ;
  wire \adc_control.pdata[31]_i_20_n_0 ;
  wire \adc_control.pdata[31]_i_21_n_0 ;
  wire \adc_control.pdata[31]_i_22_n_0 ;
  wire \adc_control.pdata[31]_i_23_n_0 ;
  wire \adc_control.pdata[31]_i_24_n_0 ;
  wire \adc_control.pdata[31]_i_2_n_0 ;
  wire \adc_control.pdata[31]_i_3_n_0 ;
  wire \adc_control.pdata[31]_i_4_n_0 ;
  wire \adc_control.pdata[31]_i_5_n_0 ;
  wire \adc_control.pdata[31]_i_7_n_0 ;
  wire \adc_control.pdata[31]_i_8_n_0 ;
  wire \adc_control.pdata[31]_i_9_n_0 ;
  wire \adc_control.pdata_reg[31]_i_13_n_0 ;
  wire \adc_control.pdata_reg[31]_i_13_n_1 ;
  wire \adc_control.pdata_reg[31]_i_13_n_2 ;
  wire \adc_control.pdata_reg[31]_i_13_n_3 ;
  wire \adc_control.pdata_reg[31]_i_13_n_4 ;
  wire \adc_control.pdata_reg[31]_i_13_n_5 ;
  wire \adc_control.pdata_reg[31]_i_13_n_6 ;
  wire \adc_control.pdata_reg[31]_i_13_n_7 ;
  wire \adc_control.pdata_reg[31]_i_6_n_5 ;
  wire \adc_control.pdata_reg[31]_i_6_n_6 ;
  wire \adc_control.pdata_reg[31]_i_6_n_7 ;
  wire \adc_control.sim_data[31]_i_1_n_0 ;
  wire \adc_control.sim_high_wr_i_1_n_0 ;
  wire \adc_control.sim_low_wr_i_1_n_0 ;
  wire \adc_control.sim_low_wr_i_2_n_0 ;
  wire \adc_control.sim_start_i_1_n_0 ;
  wire \adc_control.sim_start_i_2_n_0 ;
  wire \adc_control.sim_start_i_3_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_1_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_4_n_0 ;
  wire \adc_control.sim_wr_count[2]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[3]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[4]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[4]_i_3_n_0 ;
  wire \adc_control.sim_wr_count[5]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[6]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[8]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[9]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[9]_i_3_n_0 ;
  wire [10:0]\adc_control.sim_wr_count_reg ;
  wire \adc_control.sim_wr_done_i_1_n_0 ;
  wire \adc_control.sim_wr_pend_i_1_n_0 ;
  wire \adc_control.sim_wr_start_i_1_n_0 ;
  wire \adc_control.wr_en[0]_i_1_n_0 ;
  wire [10:0]address;
  wire [12:0]bram_adr_in;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_high_wr;
  wire config_low_wr;
  wire config_wr_done;
  wire config_wr_pend;
  wire config_wr_start;
  wire [31:0]data_in;
  wire [9:0]\^data_out ;
  wire [9:0]data_out0_out;
  wire [11:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire [10:0]padr;
  wire [31:0]pdata;
  wire resetn;
  wire sim_active;
  wire [1:0]sim_channel;
  wire [31:0]sim_data;
  wire sim_high_wr;
  wire sim_low_wr;
  wire sim_start;
  wire sim_wr_done;
  wire sim_wr_pend;
  wire sim_wr_start;
  wire [3:3]\^wr_en ;
  wire wr_en0;
  wire [7:0]\NLW_adc_control.pdata_reg[31]_i_13_O_UNCONNECTED ;
  wire [7:3]\NLW_adc_control.pdata_reg[31]_i_6_CO_UNCONNECTED ;
  wire [7:0]\NLW_adc_control.pdata_reg[31]_i_6_O_UNCONNECTED ;

  assign bram_adr_out[10:0] = bram_adr_in[12:2];
  assign data_out[31] = \<const0> ;
  assign data_out[30] = \<const0> ;
  assign data_out[29] = \<const0> ;
  assign data_out[28] = \<const0> ;
  assign data_out[27] = \<const0> ;
  assign data_out[26] = \<const0> ;
  assign data_out[25] = \<const0> ;
  assign data_out[24] = \<const0> ;
  assign data_out[23] = \<const0> ;
  assign data_out[22] = \<const0> ;
  assign data_out[21] = \<const0> ;
  assign data_out[20] = \<const0> ;
  assign data_out[19] = \<const0> ;
  assign data_out[18] = \<const0> ;
  assign data_out[17] = \<const0> ;
  assign data_out[16] = \<const0> ;
  assign data_out[15] = \<const0> ;
  assign data_out[14] = \<const0> ;
  assign data_out[13] = \<const0> ;
  assign data_out[12] = \<const0> ;
  assign data_out[11] = \<const0> ;
  assign data_out[10] = \<const0> ;
  assign data_out[9] = \^data_out [9];
  assign data_out[8] = \<const0> ;
  assign data_out[7:0] = \^data_out [7:0];
  assign wr_en[3] = \^wr_en [3];
  assign wr_en[2] = \^wr_en [3];
  assign wr_en[1] = \^wr_en [3];
  assign wr_en[0] = \^wr_en [3];
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000000FFF1FFFF)) 
    \adc_control.address[0]_i_1 
       (.I0(\adc_control.address[1]_i_2_n_0 ),
        .I1(address[0]),
        .I2(sim_wr_done),
        .I3(config_wr_done),
        .I4(resetn),
        .I5(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.address[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F800000)) 
    \adc_control.address[10]_i_1 
       (.I0(address[9]),
        .I1(\adc_control.address[10]_i_2_n_0 ),
        .I2(address[8]),
        .I3(address[10]),
        .I4(\adc_control.address[10]_i_3_n_0 ),
        .O(\adc_control.address[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \adc_control.address[10]_i_2 
       (.I0(address[7]),
        .I1(address[6]),
        .I2(\adc_control.address[6]_i_2_n_0 ),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[5]),
        .O(\adc_control.address[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \adc_control.address[10]_i_3 
       (.I0(\adc_control.cmd_start_reg_n_0 ),
        .I1(\adc_control.address[10]_i_4_n_0 ),
        .I2(config_wr_pend),
        .I3(config_wr_start),
        .I4(sim_wr_start),
        .I5(sim_wr_pend),
        .O(\adc_control.address[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \adc_control.address[10]_i_4 
       (.I0(sim_wr_done),
        .I1(config_wr_done),
        .I2(resetn),
        .O(\adc_control.address[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000060000)) 
    \adc_control.address[1]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(sim_wr_done),
        .I3(config_wr_done),
        .I4(resetn),
        .I5(\adc_control.address[1]_i_2_n_0 ),
        .O(\adc_control.address[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.address[1]_i_2 
       (.I0(sim_wr_pend),
        .I1(sim_wr_start),
        .I2(config_wr_start),
        .I3(config_wr_pend),
        .O(\adc_control.address[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \adc_control.address[2]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .O(\adc_control.address[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \adc_control.address[3]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[3]),
        .O(\adc_control.address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \adc_control.address[4]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[0]),
        .I5(address[1]),
        .O(\adc_control.address[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \adc_control.address[5]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[3]),
        .I2(address[4]),
        .I3(\adc_control.address[6]_i_2_n_0 ),
        .I4(address[5]),
        .O(\adc_control.address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \adc_control.address[6]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(\adc_control.address[6]_i_2_n_0 ),
        .I2(address[4]),
        .I3(address[3]),
        .I4(address[5]),
        .I5(address[6]),
        .O(\adc_control.address[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \adc_control.address[6]_i_2 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(address[2]),
        .O(\adc_control.address[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \adc_control.address[7]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(\adc_control.address[9]_i_2_n_0 ),
        .I2(address[6]),
        .I3(address[7]),
        .O(\adc_control.address[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \adc_control.address[8]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[7]),
        .I2(address[6]),
        .I3(\adc_control.address[9]_i_2_n_0 ),
        .I4(address[8]),
        .O(\adc_control.address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \adc_control.address[9]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[8]),
        .I2(\adc_control.address[9]_i_2_n_0 ),
        .I3(address[6]),
        .I4(address[7]),
        .I5(address[9]),
        .O(\adc_control.address[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \adc_control.address[9]_i_2 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(address[2]),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[5]),
        .O(\adc_control.address[9]_i_2_n_0 ));
  FDRE \adc_control.address_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(1'b0));
  FDRE \adc_control.address_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[10]_i_1_n_0 ),
        .Q(address[10]),
        .R(1'b0));
  FDSE \adc_control.address_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[1]_i_1_n_0 ),
        .Q(address[1]),
        .S(\adc_control.cmd_start_reg_n_0 ));
  FDRE \adc_control.address_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(1'b0));
  FDRE \adc_control.address_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[3]_i_1_n_0 ),
        .Q(address[3]),
        .R(1'b0));
  FDRE \adc_control.address_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[4]_i_1_n_0 ),
        .Q(address[4]),
        .R(1'b0));
  FDRE \adc_control.address_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[5]_i_1_n_0 ),
        .Q(address[5]),
        .R(1'b0));
  FDRE \adc_control.address_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[6]_i_1_n_0 ),
        .Q(address[6]),
        .R(1'b0));
  FDRE \adc_control.address_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[7]_i_1_n_0 ),
        .Q(address[7]),
        .R(1'b0));
  FDRE \adc_control.address_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[8]_i_1_n_0 ),
        .Q(address[8]),
        .R(1'b0));
  FDRE \adc_control.address_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[9]_i_1_n_0 ),
        .Q(address[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \adc_control.cdata[31]_i_1 
       (.I0(padr[9]),
        .I1(padr[6]),
        .I2(\adc_control.cdata[31]_i_2_n_0 ),
        .I3(padr[8]),
        .I4(padr[7]),
        .I5(padr[10]),
        .O(\adc_control.cdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \adc_control.cdata[31]_i_2 
       (.I0(padr[3]),
        .I1(padr[0]),
        .I2(padr[1]),
        .I3(padr[2]),
        .I4(padr[5]),
        .I5(padr[4]),
        .O(\adc_control.cdata[31]_i_2_n_0 ));
  FDRE \adc_control.cdata_reg[0] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(\adc_control.cdata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[10] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[10]),
        .Q(\adc_control.cdata_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[11] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[11]),
        .Q(\adc_control.cdata_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[12] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[12]),
        .Q(\adc_control.cdata_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[13] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[13]),
        .Q(\adc_control.cdata_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[14] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[14]),
        .Q(\adc_control.cdata_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[15] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[15]),
        .Q(\adc_control.cdata_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[16] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[16]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[17] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[17]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[18] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[18]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[19] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[19]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[1] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(\adc_control.cdata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[20] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[20]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[21] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[21]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[22] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[22]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[23] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[23]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[24] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[24]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[25] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[25]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[26] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[26]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[27] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[27]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[28] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[28]),
        .Q(\adc_control.cdata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[29] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[29]),
        .Q(\adc_control.cdata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[2] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(\adc_control.cdata_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[30] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[30]),
        .Q(\adc_control.cdata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[31] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[31]),
        .Q(\adc_control.cdata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[3] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(\adc_control.cdata_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[4] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(\adc_control.cdata_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[5] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(\adc_control.cdata_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[6] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(\adc_control.cdata_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[7] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(\adc_control.cdata_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[8] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[8]),
        .Q(\adc_control.cdata_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \adc_control.cdata_reg[9] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[9]),
        .Q(\adc_control.cdata_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040404040404040)) 
    \adc_control.cmd_start_i_1 
       (.I0(\adc_control.pdata_reg[31]_i_6_n_5 ),
        .I1(\adc_control.pdata[31]_i_7_n_0 ),
        .I2(resetn),
        .I3(\adc_control.pdata[31]_i_5_n_0 ),
        .I4(\adc_control.pdata[31]_i_4_n_0 ),
        .I5(\adc_control.pdata[31]_i_3_n_0 ),
        .O(\adc_control.cmd_start_i_1_n_0 ));
  FDRE \adc_control.cmd_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.cmd_start_i_1_n_0 ),
        .Q(\adc_control.cmd_start_reg_n_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.config_adr[0]_i_1 
       (.I0(config_adr[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \adc_control.config_adr[1]_i_1 
       (.I0(config_adr[0]),
        .I1(config_adr[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \adc_control.config_adr[2]_i_1 
       (.I0(config_adr[2]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \adc_control.config_adr[3]_i_1 
       (.I0(config_adr[3]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \adc_control.config_adr[4]_i_1 
       (.I0(config_adr[4]),
        .I1(config_adr[2]),
        .I2(config_adr[1]),
        .I3(config_adr[0]),
        .I4(config_adr[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \adc_control.config_adr[5]_i_1 
       (.I0(config_adr[5]),
        .I1(config_adr[3]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(config_adr[4]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \adc_control.config_adr[6]_i_1 
       (.I0(config_adr[6]),
        .I1(\adc_control.config_adr[7]_i_3_n_0 ),
        .O(p_0_in__2[6]));
  LUT5 #(
    .INIT(32'hFFFF5557)) 
    \adc_control.config_adr[7]_i_1 
       (.I0(config_wr_pend),
        .I1(\adc_control.config_wr_count_reg [7]),
        .I2(\adc_control.config_wr_count_reg [6]),
        .I3(\adc_control.config_low_wr_i_2_n_0 ),
        .I4(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.config_adr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \adc_control.config_adr[7]_i_2 
       (.I0(config_adr[7]),
        .I1(\adc_control.config_adr[7]_i_3_n_0 ),
        .I2(config_adr[6]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \adc_control.config_adr[7]_i_3 
       (.I0(config_adr[5]),
        .I1(config_adr[3]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(config_adr[4]),
        .O(\adc_control.config_adr[7]_i_3_n_0 ));
  FDSE \adc_control.config_adr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[0]),
        .Q(config_adr[0]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(config_adr[1]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[2]),
        .Q(config_adr[2]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(config_adr[3]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[4]),
        .Q(config_adr[4]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[5]),
        .Q(config_adr[5]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[6]),
        .Q(config_adr[6]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__2[7]),
        .Q(config_adr[7]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    \adc_control.config_data[31]_i_1 
       (.I0(config_wr_pend),
        .I1(\adc_control.config_wr_count_reg [7]),
        .I2(\adc_control.config_wr_count_reg [6]),
        .I3(\adc_control.config_low_wr_i_2_n_0 ),
        .I4(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.config_data[31]_i_1_n_0 ));
  FDRE \adc_control.config_data_reg[0] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(config_data[0]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[10] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[10]),
        .Q(config_data[10]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[11] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[11]),
        .Q(config_data[11]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[12] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[12]),
        .Q(config_data[12]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[13] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[13]),
        .Q(config_data[13]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[14] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[14]),
        .Q(config_data[14]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[15] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[15]),
        .Q(config_data[15]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[16] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[16]),
        .Q(config_data[16]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[17] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[17]),
        .Q(config_data[17]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[18] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[18]),
        .Q(config_data[18]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[19] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[19]),
        .Q(config_data[19]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[1] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(config_data[1]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[20] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[20]),
        .Q(config_data[20]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[21] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[21]),
        .Q(config_data[21]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[22] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[22]),
        .Q(config_data[22]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[23] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[23]),
        .Q(config_data[23]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[24] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[24]),
        .Q(config_data[24]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[25] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[25]),
        .Q(config_data[25]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[26] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[26]),
        .Q(config_data[26]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[27] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[27]),
        .Q(config_data[27]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[28] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[28]),
        .Q(config_data[28]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[29] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[29]),
        .Q(config_data[29]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[2] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(config_data[2]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[30] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[30]),
        .Q(config_data[30]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[31] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[31]),
        .Q(config_data[31]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[3] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(config_data[3]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[4] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(config_data[4]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[5] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(config_data[5]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[6] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(config_data[6]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[7] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(config_data[7]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[8] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[8]),
        .Q(config_data[8]),
        .R(1'b0));
  FDRE \adc_control.config_data_reg[9] 
       (.C(clk),
        .CE(\adc_control.config_data[31]_i_1_n_0 ),
        .D(data_in[9]),
        .Q(config_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA80000)) 
    \adc_control.config_high_wr_i_1 
       (.I0(config_wr_pend),
        .I1(\adc_control.config_wr_count_reg [7]),
        .I2(\adc_control.config_wr_count_reg [6]),
        .I3(\adc_control.config_low_wr_i_2_n_0 ),
        .I4(\adc_control.cdata_reg_n_0_[8] ),
        .I5(config_high_wr),
        .O(\adc_control.config_high_wr_i_1_n_0 ));
  FDRE \adc_control.config_high_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_high_wr_i_1_n_0 ),
        .Q(config_high_wr),
        .R(\adc_control.cmd_start_reg_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAA80000AAA8)) 
    \adc_control.config_low_wr_i_1 
       (.I0(config_wr_pend),
        .I1(\adc_control.config_wr_count_reg [7]),
        .I2(\adc_control.config_wr_count_reg [6]),
        .I3(\adc_control.config_low_wr_i_2_n_0 ),
        .I4(\adc_control.cdata_reg_n_0_[8] ),
        .I5(config_low_wr),
        .O(\adc_control.config_low_wr_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_control.config_low_wr_i_2 
       (.I0(\adc_control.config_wr_count_reg [3]),
        .I1(\adc_control.config_wr_count_reg [2]),
        .I2(\adc_control.config_wr_count_reg [0]),
        .I3(\adc_control.config_wr_count_reg [1]),
        .I4(\adc_control.config_wr_count_reg [4]),
        .I5(\adc_control.config_wr_count_reg [5]),
        .O(\adc_control.config_low_wr_i_2_n_0 ));
  FDRE \adc_control.config_low_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_low_wr_i_1_n_0 ),
        .Q(config_low_wr),
        .R(\adc_control.cmd_start_reg_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \adc_control.config_wr_count[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(\adc_control.cmd_start_reg_n_0 ),
        .I2(\adc_control.config_wr_count_reg [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \adc_control.config_wr_count[1]_i_1 
       (.I0(\adc_control.config_wr_count_reg [1]),
        .I1(\adc_control.config_wr_count_reg [0]),
        .I2(\adc_control.cmd_start_reg_n_0 ),
        .I3(p_0_in[1]),
        .O(p_0_in__1[1]));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \adc_control.config_wr_count[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(\adc_control.cmd_start_reg_n_0 ),
        .I2(\adc_control.config_wr_count_reg [2]),
        .I3(\adc_control.config_wr_count_reg [0]),
        .I4(\adc_control.config_wr_count_reg [1]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \adc_control.config_wr_count[3]_i_1 
       (.I0(\adc_control.config_wr_count_reg [1]),
        .I1(\adc_control.config_wr_count_reg [0]),
        .I2(\adc_control.config_wr_count_reg [2]),
        .I3(\adc_control.config_wr_count_reg [3]),
        .I4(\adc_control.cmd_start_reg_n_0 ),
        .I5(p_0_in[3]),
        .O(p_0_in__1[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \adc_control.config_wr_count[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(\adc_control.cmd_start_reg_n_0 ),
        .I2(\adc_control.config_wr_count_reg [4]),
        .I3(\adc_control.config_wr_count[4]_i_2_n_0 ),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.config_wr_count[4]_i_2 
       (.I0(\adc_control.config_wr_count_reg [3]),
        .I1(\adc_control.config_wr_count_reg [2]),
        .I2(\adc_control.config_wr_count_reg [0]),
        .I3(\adc_control.config_wr_count_reg [1]),
        .O(\adc_control.config_wr_count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \adc_control.config_wr_count[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(\adc_control.cmd_start_reg_n_0 ),
        .I2(\adc_control.config_wr_count_reg [5]),
        .I3(\adc_control.config_wr_count[5]_i_2_n_0 ),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.config_wr_count[5]_i_2 
       (.I0(\adc_control.config_wr_count_reg [4]),
        .I1(\adc_control.config_wr_count_reg [1]),
        .I2(\adc_control.config_wr_count_reg [0]),
        .I3(\adc_control.config_wr_count_reg [2]),
        .I4(\adc_control.config_wr_count_reg [3]),
        .O(\adc_control.config_wr_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \adc_control.config_wr_count[6]_i_1 
       (.I0(\adc_control.config_low_wr_i_2_n_0 ),
        .I1(\adc_control.config_wr_count_reg [6]),
        .I2(\adc_control.cmd_start_reg_n_0 ),
        .I3(p_0_in[6]),
        .O(p_0_in__1[6]));
  LUT3 #(
    .INIT(8'h01)) 
    \adc_control.config_wr_count[7]_i_1 
       (.I0(config_wr_start),
        .I1(config_wr_pend),
        .I2(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.config_wr_count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \adc_control.config_wr_count[7]_i_2 
       (.I0(config_wr_pend),
        .I1(\adc_control.config_wr_count_reg [7]),
        .I2(\adc_control.config_wr_count_reg [6]),
        .I3(\adc_control.config_low_wr_i_2_n_0 ),
        .I4(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.config_wr_count[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \adc_control.config_wr_count[7]_i_3 
       (.I0(\adc_control.config_wr_count_reg [7]),
        .I1(\adc_control.config_low_wr_i_2_n_0 ),
        .I2(\adc_control.config_wr_count_reg [6]),
        .I3(\adc_control.cmd_start_reg_n_0 ),
        .I4(p_0_in[7]),
        .O(p_0_in__1[7]));
  FDRE \adc_control.config_wr_count_reg[0] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\adc_control.config_wr_count_reg [0]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[1] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\adc_control.config_wr_count_reg [1]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[2] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\adc_control.config_wr_count_reg [2]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[3] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\adc_control.config_wr_count_reg [3]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[4] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\adc_control.config_wr_count_reg [4]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[5] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\adc_control.config_wr_count_reg [5]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[6] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(\adc_control.config_wr_count_reg [6]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  FDRE \adc_control.config_wr_count_reg[7] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(\adc_control.config_wr_count_reg [7]),
        .R(\adc_control.config_wr_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    \adc_control.config_wr_done_i_1 
       (.I0(config_wr_done),
        .I1(config_wr_pend),
        .I2(config_wr_start),
        .I3(\adc_control.config_wr_count_reg [7]),
        .I4(\adc_control.config_wr_count_reg [6]),
        .I5(\adc_control.config_low_wr_i_2_n_0 ),
        .O(\adc_control.config_wr_done_i_1_n_0 ));
  FDRE \adc_control.config_wr_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_wr_done_i_1_n_0 ),
        .Q(config_wr_done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDC)) 
    \adc_control.config_wr_pend_i_1 
       (.I0(config_wr_done),
        .I1(config_wr_start),
        .I2(config_wr_pend),
        .O(\adc_control.config_wr_pend_i_1_n_0 ));
  FDRE \adc_control.config_wr_pend_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_wr_pend_i_1_n_0 ),
        .Q(config_wr_pend),
        .R(\adc_control.wr_en[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \adc_control.config_wr_start_i_1 
       (.I0(\adc_control.cdata_reg_n_0_[0] ),
        .I1(\adc_control.cdata_reg_n_0_[1] ),
        .I2(\adc_control.cdata_reg_n_0_[2] ),
        .I3(\adc_control.cdata_reg_n_0_[3] ),
        .I4(\adc_control.config_wr_start_i_2_n_0 ),
        .I5(config_wr_start),
        .O(\adc_control.config_wr_start_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.config_wr_start_i_2 
       (.I0(\adc_control.cdata_reg_n_0_[7] ),
        .I1(\adc_control.cdata_reg_n_0_[6] ),
        .I2(\adc_control.cdata_reg_n_0_[5] ),
        .I3(\adc_control.cdata_reg_n_0_[4] ),
        .O(\adc_control.config_wr_start_i_2_n_0 ));
  FDRE \adc_control.config_wr_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_wr_start_i_1_n_0 ),
        .Q(config_wr_start),
        .R(\adc_control.sim_start_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \adc_control.data_out[0]_i_1 
       (.I0(resetn),
        .I1(\^data_out [0]),
        .O(data_out0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \adc_control.data_out[1]_i_1 
       (.I0(\^data_out [0]),
        .I1(resetn),
        .I2(\^data_out [1]),
        .O(data_out0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \adc_control.data_out[2]_i_1 
       (.I0(\^data_out [0]),
        .I1(\^data_out [1]),
        .I2(resetn),
        .I3(\^data_out [2]),
        .O(data_out0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \adc_control.data_out[3]_i_1 
       (.I0(\^data_out [1]),
        .I1(\^data_out [0]),
        .I2(\^data_out [2]),
        .I3(resetn),
        .I4(\^data_out [3]),
        .O(data_out0_out[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \adc_control.data_out[4]_i_1 
       (.I0(\^data_out [2]),
        .I1(\^data_out [0]),
        .I2(\^data_out [1]),
        .I3(\^data_out [3]),
        .I4(resetn),
        .I5(\^data_out [4]),
        .O(data_out0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \adc_control.data_out[5]_i_1 
       (.I0(\adc_control.data_out[5]_i_2_n_0 ),
        .I1(resetn),
        .I2(\^data_out [5]),
        .O(data_out0_out[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \adc_control.data_out[5]_i_2 
       (.I0(\^data_out [3]),
        .I1(\^data_out [1]),
        .I2(\^data_out [0]),
        .I3(\^data_out [2]),
        .I4(\^data_out [4]),
        .O(\adc_control.data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \adc_control.data_out[6]_i_1 
       (.I0(\adc_control.data_out[7]_i_2_n_0 ),
        .I1(\^data_out [6]),
        .I2(resetn),
        .O(data_out0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \adc_control.data_out[7]_i_1 
       (.I0(\^data_out [6]),
        .I1(\adc_control.data_out[7]_i_2_n_0 ),
        .I2(resetn),
        .I3(\^data_out [7]),
        .O(data_out0_out[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \adc_control.data_out[7]_i_2 
       (.I0(\^data_out [4]),
        .I1(\^data_out [2]),
        .I2(\^data_out [0]),
        .I3(\^data_out [1]),
        .I4(\^data_out [3]),
        .I5(\^data_out [5]),
        .O(\adc_control.data_out[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \adc_control.data_out[9]_i_1 
       (.I0(resetn),
        .I1(config_wr_done),
        .I2(sim_wr_done),
        .O(\adc_control.data_out[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[9]_i_2 
       (.I0(resetn),
        .I1(sim_active),
        .O(data_out0_out[9]));
  FDRE \adc_control.data_out_reg[0] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[0]),
        .Q(\^data_out [0]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[1] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[1]),
        .Q(\^data_out [1]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[2] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[2]),
        .Q(\^data_out [2]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[3] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[3]),
        .Q(\^data_out [3]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[4] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[4]),
        .Q(\^data_out [4]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[5] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[5]),
        .Q(\^data_out [5]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[6] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[6]),
        .Q(\^data_out [6]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[7] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[7]),
        .Q(\^data_out [7]),
        .R(1'b0));
  FDRE \adc_control.data_out_reg[9] 
       (.C(clk),
        .CE(\adc_control.data_out[9]_i_1_n_0 ),
        .D(data_out0_out[9]),
        .Q(\^data_out [9]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(address[0]),
        .Q(padr[0]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(address[10]),
        .Q(padr[10]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(address[1]),
        .Q(padr[1]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(address[2]),
        .Q(padr[2]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(address[3]),
        .Q(padr[3]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(address[4]),
        .Q(padr[4]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(address[5]),
        .Q(padr[5]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(address[6]),
        .Q(padr[6]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(address[7]),
        .Q(padr[7]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(address[8]),
        .Q(padr[8]),
        .R(1'b0));
  FDRE \adc_control.padr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(address[9]),
        .Q(padr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h80FF)) 
    \adc_control.pdata[31]_i_1 
       (.I0(\adc_control.pdata[31]_i_3_n_0 ),
        .I1(\adc_control.pdata[31]_i_4_n_0 ),
        .I2(\adc_control.pdata[31]_i_5_n_0 ),
        .I3(resetn),
        .O(\adc_control.pdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.pdata[31]_i_10 
       (.I0(\adc_control.cdata_reg_n_0_[30] ),
        .I1(p_0_in[8]),
        .I2(p_0_in[7]),
        .I3(p_0_in[6]),
        .O(\adc_control.pdata[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.pdata[31]_i_11 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\adc_control.cdata_reg_n_0_[15] ),
        .I3(\adc_control.cdata_reg_n_0_[12] ),
        .O(\adc_control.pdata[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.pdata[31]_i_12 
       (.I0(p_0_in[10]),
        .I1(p_0_in[9]),
        .I2(p_0_in[5]),
        .I3(p_0_in[2]),
        .O(\adc_control.pdata[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \adc_control.pdata[31]_i_14 
       (.I0(\adc_control.cdata_reg_n_0_[31] ),
        .I1(pdata[31]),
        .I2(pdata[30]),
        .I3(\adc_control.cdata_reg_n_0_[30] ),
        .O(\adc_control.pdata[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_15 
       (.I0(\adc_control.cdata_reg_n_0_[28] ),
        .I1(pdata[28]),
        .I2(pdata[27]),
        .I3(p_0_in[11]),
        .I4(pdata[29]),
        .I5(\adc_control.cdata_reg_n_0_[29] ),
        .O(\adc_control.pdata[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_16 
       (.I0(pdata[24]),
        .I1(p_0_in[8]),
        .I2(pdata[25]),
        .I3(p_0_in[9]),
        .I4(pdata[26]),
        .I5(p_0_in[10]),
        .O(\adc_control.pdata[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_17 
       (.I0(pdata[21]),
        .I1(p_0_in[5]),
        .I2(pdata[22]),
        .I3(p_0_in[6]),
        .I4(pdata[23]),
        .I5(p_0_in[7]),
        .O(\adc_control.pdata[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_18 
       (.I0(pdata[18]),
        .I1(p_0_in[2]),
        .I2(pdata[19]),
        .I3(p_0_in[3]),
        .I4(pdata[20]),
        .I5(p_0_in[4]),
        .O(\adc_control.pdata[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_19 
       (.I0(p_0_in[0]),
        .I1(pdata[16]),
        .I2(pdata[15]),
        .I3(\adc_control.cdata_reg_n_0_[15] ),
        .I4(pdata[17]),
        .I5(p_0_in[1]),
        .O(\adc_control.pdata[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \adc_control.pdata[31]_i_2 
       (.I0(\adc_control.pdata[31]_i_5_n_0 ),
        .I1(\adc_control.pdata[31]_i_4_n_0 ),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(\adc_control.pdata_reg[31]_i_6_n_5 ),
        .I4(\adc_control.pdata[31]_i_7_n_0 ),
        .O(\adc_control.pdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_20 
       (.I0(\adc_control.cdata_reg_n_0_[13] ),
        .I1(pdata[13]),
        .I2(pdata[12]),
        .I3(\adc_control.cdata_reg_n_0_[12] ),
        .I4(pdata[14]),
        .I5(\adc_control.cdata_reg_n_0_[14] ),
        .O(\adc_control.pdata[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_21 
       (.I0(pdata[11]),
        .I1(\adc_control.cdata_reg_n_0_[11] ),
        .I2(pdata[9]),
        .I3(\adc_control.cdata_reg_n_0_[9] ),
        .I4(pdata[10]),
        .I5(\adc_control.cdata_reg_n_0_[10] ),
        .O(\adc_control.pdata[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_22 
       (.I0(\adc_control.cdata_reg_n_0_[6] ),
        .I1(pdata[6]),
        .I2(pdata[8]),
        .I3(\adc_control.cdata_reg_n_0_[8] ),
        .I4(pdata[7]),
        .I5(\adc_control.cdata_reg_n_0_[7] ),
        .O(\adc_control.pdata[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_23 
       (.I0(\adc_control.cdata_reg_n_0_[4] ),
        .I1(pdata[4]),
        .I2(pdata[3]),
        .I3(\adc_control.cdata_reg_n_0_[3] ),
        .I4(pdata[5]),
        .I5(\adc_control.cdata_reg_n_0_[5] ),
        .O(\adc_control.pdata[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_24 
       (.I0(\adc_control.cdata_reg_n_0_[1] ),
        .I1(pdata[1]),
        .I2(pdata[0]),
        .I3(\adc_control.cdata_reg_n_0_[0] ),
        .I4(pdata[2]),
        .I5(\adc_control.cdata_reg_n_0_[2] ),
        .O(\adc_control.pdata[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \adc_control.pdata[31]_i_3 
       (.I0(\adc_control.config_wr_start_i_2_n_0 ),
        .I1(\adc_control.pdata[31]_i_8_n_0 ),
        .I2(\adc_control.pdata[31]_i_9_n_0 ),
        .I3(\adc_control.pdata[31]_i_10_n_0 ),
        .O(\adc_control.pdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \adc_control.pdata[31]_i_4 
       (.I0(\adc_control.cdata_reg_n_0_[9] ),
        .I1(\adc_control.cdata_reg_n_0_[10] ),
        .I2(\adc_control.cdata_reg_n_0_[0] ),
        .I3(\adc_control.cdata_reg_n_0_[8] ),
        .I4(\adc_control.pdata[31]_i_11_n_0 ),
        .O(\adc_control.pdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \adc_control.pdata[31]_i_5 
       (.I0(p_0_in[11]),
        .I1(\adc_control.cdata_reg_n_0_[28] ),
        .I2(\adc_control.cdata_reg_n_0_[29] ),
        .I3(\adc_control.cdata_reg_n_0_[31] ),
        .I4(\adc_control.pdata[31]_i_12_n_0 ),
        .O(\adc_control.pdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \adc_control.pdata[31]_i_7 
       (.I0(\adc_control.cmd_start_reg_n_0 ),
        .I1(sim_wr_pend),
        .O(\adc_control.pdata[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.pdata[31]_i_8 
       (.I0(\adc_control.cdata_reg_n_0_[2] ),
        .I1(\adc_control.cdata_reg_n_0_[1] ),
        .I2(\adc_control.cdata_reg_n_0_[11] ),
        .I3(\adc_control.cdata_reg_n_0_[3] ),
        .O(\adc_control.pdata[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.pdata[31]_i_9 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(\adc_control.cdata_reg_n_0_[14] ),
        .I3(\adc_control.cdata_reg_n_0_[13] ),
        .O(\adc_control.pdata[31]_i_9_n_0 ));
  FDRE \adc_control.pdata_reg[0] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[0]),
        .Q(pdata[0]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[10] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[10]),
        .Q(pdata[10]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[11] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[11]),
        .Q(pdata[11]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[12] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[12]),
        .Q(pdata[12]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[13] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[13]),
        .Q(pdata[13]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[14] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[14]),
        .Q(pdata[14]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[15] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[15]),
        .Q(pdata[15]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[16] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[16]),
        .Q(pdata[16]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[17] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[17]),
        .Q(pdata[17]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[18] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[18]),
        .Q(pdata[18]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[19] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[19]),
        .Q(pdata[19]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[1] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[1]),
        .Q(pdata[1]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[20] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[20]),
        .Q(pdata[20]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[21] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[21]),
        .Q(pdata[21]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[22] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[22]),
        .Q(pdata[22]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[23] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[23]),
        .Q(pdata[23]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[24] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[24]),
        .Q(pdata[24]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[25] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[25]),
        .Q(pdata[25]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[26] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[26]),
        .Q(pdata[26]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[27] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[27]),
        .Q(pdata[27]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[28] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[28]),
        .Q(pdata[28]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[29] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[29]),
        .Q(pdata[29]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[2] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[2]),
        .Q(pdata[2]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[30] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[30]),
        .Q(pdata[30]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[31] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[31]),
        .Q(pdata[31]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  CARRY8 \adc_control.pdata_reg[31]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\adc_control.pdata_reg[31]_i_13_n_0 ,\adc_control.pdata_reg[31]_i_13_n_1 ,\adc_control.pdata_reg[31]_i_13_n_2 ,\adc_control.pdata_reg[31]_i_13_n_3 ,\adc_control.pdata_reg[31]_i_13_n_4 ,\adc_control.pdata_reg[31]_i_13_n_5 ,\adc_control.pdata_reg[31]_i_13_n_6 ,\adc_control.pdata_reg[31]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_adc_control.pdata_reg[31]_i_13_O_UNCONNECTED [7:0]),
        .S({\adc_control.pdata[31]_i_17_n_0 ,\adc_control.pdata[31]_i_18_n_0 ,\adc_control.pdata[31]_i_19_n_0 ,\adc_control.pdata[31]_i_20_n_0 ,\adc_control.pdata[31]_i_21_n_0 ,\adc_control.pdata[31]_i_22_n_0 ,\adc_control.pdata[31]_i_23_n_0 ,\adc_control.pdata[31]_i_24_n_0 }));
  CARRY8 \adc_control.pdata_reg[31]_i_6 
       (.CI(\adc_control.pdata_reg[31]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_adc_control.pdata_reg[31]_i_6_CO_UNCONNECTED [7:3],\adc_control.pdata_reg[31]_i_6_n_5 ,\adc_control.pdata_reg[31]_i_6_n_6 ,\adc_control.pdata_reg[31]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_adc_control.pdata_reg[31]_i_6_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\adc_control.pdata[31]_i_14_n_0 ,\adc_control.pdata[31]_i_15_n_0 ,\adc_control.pdata[31]_i_16_n_0 }));
  FDRE \adc_control.pdata_reg[3] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[3]),
        .Q(pdata[3]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[4] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[4]),
        .Q(pdata[4]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[5] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[5]),
        .Q(pdata[5]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[6] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[6]),
        .Q(pdata[6]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[7] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[7]),
        .Q(pdata[7]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[8] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[8]),
        .Q(pdata[8]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.pdata_reg[9] 
       (.C(clk),
        .CE(\adc_control.pdata[31]_i_2_n_0 ),
        .D(data_in[9]),
        .Q(pdata[9]),
        .R(\adc_control.pdata[31]_i_1_n_0 ));
  FDRE \adc_control.sim_channel_reg[0] 
       (.C(clk),
        .CE(\adc_control.cmd_start_reg_n_0 ),
        .D(\adc_control.cdata_reg_n_0_[8] ),
        .Q(sim_channel[0]),
        .R(1'b0));
  FDRE \adc_control.sim_channel_reg[1] 
       (.C(clk),
        .CE(\adc_control.cmd_start_reg_n_0 ),
        .D(\adc_control.cdata_reg_n_0_[9] ),
        .Q(sim_channel[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00D0)) 
    \adc_control.sim_data[31]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(\adc_control.sim_wr_count_reg [10]),
        .I2(sim_wr_pend),
        .I3(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.sim_data[31]_i_1_n_0 ));
  FDRE \adc_control.sim_data_reg[0] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(sim_data[0]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[10] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[10]),
        .Q(sim_data[10]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[11] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[11]),
        .Q(sim_data[11]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[12] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[12]),
        .Q(sim_data[12]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[13] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[13]),
        .Q(sim_data[13]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[14] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[14]),
        .Q(sim_data[14]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[15] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[15]),
        .Q(sim_data[15]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[16] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[16]),
        .Q(sim_data[16]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[17] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[17]),
        .Q(sim_data[17]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[18] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[18]),
        .Q(sim_data[18]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[19] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[19]),
        .Q(sim_data[19]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[1] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(sim_data[1]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[20] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[20]),
        .Q(sim_data[20]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[21] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[21]),
        .Q(sim_data[21]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[22] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[22]),
        .Q(sim_data[22]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[23] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[23]),
        .Q(sim_data[23]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[24] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[24]),
        .Q(sim_data[24]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[25] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[25]),
        .Q(sim_data[25]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[26] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[26]),
        .Q(sim_data[26]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[27] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[27]),
        .Q(sim_data[27]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[28] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[28]),
        .Q(sim_data[28]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[29] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[29]),
        .Q(sim_data[29]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[2] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(sim_data[2]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[30] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[30]),
        .Q(sim_data[30]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[31] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[31]),
        .Q(sim_data[31]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[3] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(sim_data[3]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[4] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(sim_data[4]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[5] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(sim_data[5]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[6] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(sim_data[6]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[7] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(sim_data[7]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[8] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[8]),
        .Q(sim_data[8]),
        .R(1'b0));
  FDRE \adc_control.sim_data_reg[9] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(data_in[9]),
        .Q(sim_data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF300A200)) 
    \adc_control.sim_high_wr_i_1 
       (.I0(\adc_control.cdata_reg_n_0_[10] ),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(\adc_control.sim_wr_count_reg [10]),
        .I3(sim_wr_pend),
        .I4(sim_high_wr),
        .O(\adc_control.sim_high_wr_i_1_n_0 ));
  FDRE \adc_control.sim_high_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_high_wr_i_1_n_0 ),
        .Q(sim_high_wr),
        .R(\adc_control.cmd_start_reg_n_0 ));
  LUT5 #(
    .INIT(32'hF3005100)) 
    \adc_control.sim_low_wr_i_1 
       (.I0(\adc_control.cdata_reg_n_0_[10] ),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(\adc_control.sim_wr_count_reg [10]),
        .I3(sim_wr_pend),
        .I4(sim_low_wr),
        .O(\adc_control.sim_low_wr_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \adc_control.sim_low_wr_i_2 
       (.I0(\adc_control.sim_wr_count_reg [8]),
        .I1(\adc_control.sim_wr_count_reg [5]),
        .I2(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I3(\adc_control.sim_wr_count_reg [6]),
        .I4(\adc_control.sim_wr_count_reg [7]),
        .I5(\adc_control.sim_wr_count_reg [9]),
        .O(\adc_control.sim_low_wr_i_2_n_0 ));
  FDRE \adc_control.sim_low_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_low_wr_i_1_n_0 ),
        .Q(sim_low_wr),
        .R(\adc_control.cmd_start_reg_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.sim_start_i_1 
       (.I0(\adc_control.cmd_start_reg_n_0 ),
        .O(\adc_control.sim_start_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \adc_control.sim_start_i_2 
       (.I0(\adc_control.cdata_reg_n_0_[1] ),
        .I1(\adc_control.cdata_reg_n_0_[0] ),
        .I2(\adc_control.sim_start_i_3_n_0 ),
        .I3(sim_start),
        .O(\adc_control.sim_start_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \adc_control.sim_start_i_3 
       (.I0(\adc_control.cdata_reg_n_0_[3] ),
        .I1(\adc_control.cdata_reg_n_0_[2] ),
        .I2(\adc_control.cdata_reg_n_0_[4] ),
        .I3(\adc_control.cdata_reg_n_0_[5] ),
        .I4(\adc_control.cdata_reg_n_0_[6] ),
        .I5(\adc_control.cdata_reg_n_0_[7] ),
        .O(\adc_control.sim_start_i_3_n_0 ));
  FDRE \adc_control.sim_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_start_i_2_n_0 ),
        .Q(sim_start),
        .R(\adc_control.sim_start_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1DD1)) 
    \adc_control.sim_wr_count[0]_i_1 
       (.I0(\adc_control.sim_wr_count_reg [0]),
        .I1(\adc_control.cmd_start_reg_n_0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'h01)) 
    \adc_control.sim_wr_count[10]_i_1 
       (.I0(sim_wr_pend),
        .I1(\adc_control.cmd_start_reg_n_0 ),
        .I2(sim_wr_start),
        .O(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \adc_control.sim_wr_count[10]_i_2 
       (.I0(\adc_control.cmd_start_reg_n_0 ),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(\adc_control.sim_wr_count_reg [10]),
        .I3(sim_wr_pend),
        .O(\adc_control.sim_wr_count[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A006AFF6AFF6A00)) 
    \adc_control.sim_wr_count[10]_i_3 
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(\adc_control.sim_wr_count[10]_i_4_n_0 ),
        .I3(\adc_control.cmd_start_reg_n_0 ),
        .I4(\adc_control.sim_wr_count_reg [10]),
        .I5(\adc_control.sim_low_wr_i_2_n_0 ),
        .O(p_0_in__0[10]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \adc_control.sim_wr_count[10]_i_4 
       (.I0(p_0_in[9]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .I3(\adc_control.sim_wr_count[5]_i_2_n_0 ),
        .I4(p_0_in[8]),
        .O(\adc_control.sim_wr_count[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F0F099999999)) 
    \adc_control.sim_wr_count[1]_i_1 
       (.I0(\adc_control.sim_wr_count_reg [1]),
        .I1(\adc_control.sim_wr_count_reg [0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\adc_control.cmd_start_reg_n_0 ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h9F909F909F90909F)) 
    \adc_control.sim_wr_count[2]_i_1 
       (.I0(p_0_in[3]),
        .I1(\adc_control.sim_wr_count[2]_i_2_n_0 ),
        .I2(\adc_control.cmd_start_reg_n_0 ),
        .I3(\adc_control.sim_wr_count_reg [2]),
        .I4(\adc_control.sim_wr_count_reg [0]),
        .I5(\adc_control.sim_wr_count_reg [1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \adc_control.sim_wr_count[2]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(\adc_control.sim_wr_count[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9F90909F)) 
    \adc_control.sim_wr_count[3]_i_1 
       (.I0(p_0_in[4]),
        .I1(\adc_control.sim_wr_count[4]_i_3_n_0 ),
        .I2(\adc_control.cmd_start_reg_n_0 ),
        .I3(\adc_control.sim_wr_count[3]_i_2_n_0 ),
        .I4(\adc_control.sim_wr_count_reg [3]),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \adc_control.sim_wr_count[3]_i_2 
       (.I0(\adc_control.sim_wr_count_reg [1]),
        .I1(\adc_control.sim_wr_count_reg [0]),
        .I2(\adc_control.sim_wr_count_reg [2]),
        .O(\adc_control.sim_wr_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF0F0099999999)) 
    \adc_control.sim_wr_count[4]_i_1 
       (.I0(\adc_control.sim_wr_count[4]_i_2_n_0 ),
        .I1(\adc_control.sim_wr_count_reg [4]),
        .I2(\adc_control.sim_wr_count[4]_i_3_n_0 ),
        .I3(p_0_in[4]),
        .I4(p_0_in[5]),
        .I5(\adc_control.cmd_start_reg_n_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.sim_wr_count[4]_i_2 
       (.I0(\adc_control.sim_wr_count_reg [3]),
        .I1(\adc_control.sim_wr_count_reg [2]),
        .I2(\adc_control.sim_wr_count_reg [0]),
        .I3(\adc_control.sim_wr_count_reg [1]),
        .O(\adc_control.sim_wr_count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \adc_control.sim_wr_count[4]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .O(\adc_control.sim_wr_count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF00F9999)) 
    \adc_control.sim_wr_count[5]_i_1 
       (.I0(\adc_control.sim_wr_count_reg [5]),
        .I1(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I2(p_0_in[6]),
        .I3(\adc_control.sim_wr_count[5]_i_2_n_0 ),
        .I4(\adc_control.cmd_start_reg_n_0 ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \adc_control.sim_wr_count[5]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\adc_control.sim_wr_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h99999999FFF0000F)) 
    \adc_control.sim_wr_count[6]_i_1 
       (.I0(p_0_in[7]),
        .I1(\adc_control.sim_wr_count[7]_i_2_n_0 ),
        .I2(\adc_control.sim_wr_count_reg [5]),
        .I3(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I4(\adc_control.sim_wr_count_reg [6]),
        .I5(\adc_control.cmd_start_reg_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.sim_wr_count[6]_i_2 
       (.I0(\adc_control.sim_wr_count_reg [4]),
        .I1(\adc_control.sim_wr_count_reg [1]),
        .I2(\adc_control.sim_wr_count_reg [0]),
        .I3(\adc_control.sim_wr_count_reg [2]),
        .I4(\adc_control.sim_wr_count_reg [3]),
        .O(\adc_control.sim_wr_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9A009AFF9AFF9A00)) 
    \adc_control.sim_wr_count[7]_i_1 
       (.I0(p_0_in[8]),
        .I1(\adc_control.sim_wr_count[7]_i_2_n_0 ),
        .I2(p_0_in[7]),
        .I3(\adc_control.cmd_start_reg_n_0 ),
        .I4(\adc_control.sim_wr_count_reg [7]),
        .I5(\adc_control.sim_wr_count[8]_i_2_n_0 ),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \adc_control.sim_wr_count[7]_i_2 
       (.I0(\adc_control.sim_wr_count[4]_i_3_n_0 ),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[6]),
        .O(\adc_control.sim_wr_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F6F606F60)) 
    \adc_control.sim_wr_count[8]_i_1 
       (.I0(p_0_in[9]),
        .I1(\adc_control.sim_wr_count[9]_i_2_n_0 ),
        .I2(\adc_control.cmd_start_reg_n_0 ),
        .I3(\adc_control.sim_wr_count_reg [8]),
        .I4(\adc_control.sim_wr_count_reg [7]),
        .I5(\adc_control.sim_wr_count[8]_i_2_n_0 ),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \adc_control.sim_wr_count[8]_i_2 
       (.I0(\adc_control.sim_wr_count_reg [6]),
        .I1(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I2(\adc_control.sim_wr_count_reg [5]),
        .O(\adc_control.sim_wr_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A006AFF6AFF6A00)) 
    \adc_control.sim_wr_count[9]_i_1 
       (.I0(p_0_in[10]),
        .I1(\adc_control.sim_wr_count[9]_i_2_n_0 ),
        .I2(p_0_in[9]),
        .I3(\adc_control.cmd_start_reg_n_0 ),
        .I4(\adc_control.sim_wr_count_reg [9]),
        .I5(\adc_control.sim_wr_count[9]_i_3_n_0 ),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \adc_control.sim_wr_count[9]_i_2 
       (.I0(p_0_in[8]),
        .I1(\adc_control.sim_wr_count[4]_i_3_n_0 ),
        .I2(p_0_in[5]),
        .I3(p_0_in[4]),
        .I4(p_0_in[6]),
        .I5(p_0_in[7]),
        .O(\adc_control.sim_wr_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \adc_control.sim_wr_count[9]_i_3 
       (.I0(\adc_control.sim_wr_count_reg [7]),
        .I1(\adc_control.sim_wr_count_reg [6]),
        .I2(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I3(\adc_control.sim_wr_count_reg [5]),
        .I4(\adc_control.sim_wr_count_reg [8]),
        .O(\adc_control.sim_wr_count[9]_i_3_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[0] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\adc_control.sim_wr_count_reg [0]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[10] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[10]),
        .Q(\adc_control.sim_wr_count_reg [10]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[1] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\adc_control.sim_wr_count_reg [1]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[2] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\adc_control.sim_wr_count_reg [2]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[3] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\adc_control.sim_wr_count_reg [3]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[4] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\adc_control.sim_wr_count_reg [4]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[5] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\adc_control.sim_wr_count_reg [5]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[6] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\adc_control.sim_wr_count_reg [6]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[7] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\adc_control.sim_wr_count_reg [7]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[8] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(\adc_control.sim_wr_count_reg [8]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  FDRE \adc_control.sim_wr_count_reg[9] 
       (.C(clk),
        .CE(\adc_control.sim_wr_count[10]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(\adc_control.sim_wr_count_reg [9]),
        .R(\adc_control.sim_wr_count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04040400)) 
    \adc_control.sim_wr_done_i_1 
       (.I0(\adc_control.sim_wr_count_reg [10]),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(sim_wr_done),
        .I3(sim_wr_start),
        .I4(sim_wr_pend),
        .O(\adc_control.sim_wr_done_i_1_n_0 ));
  FDRE \adc_control.sim_wr_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_wr_done_i_1_n_0 ),
        .Q(sim_wr_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \adc_control.sim_wr_pend_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_done),
        .I2(sim_wr_pend),
        .O(\adc_control.sim_wr_pend_i_1_n_0 ));
  FDRE \adc_control.sim_wr_pend_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_wr_pend_i_1_n_0 ),
        .Q(sim_wr_pend),
        .R(\adc_control.wr_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \adc_control.sim_wr_start_i_1 
       (.I0(\adc_control.cdata_reg_n_0_[1] ),
        .I1(\adc_control.cdata_reg_n_0_[0] ),
        .I2(\adc_control.sim_start_i_3_n_0 ),
        .I3(sim_wr_start),
        .O(\adc_control.sim_wr_start_i_1_n_0 ));
  FDRE \adc_control.sim_wr_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_wr_start_i_1_n_0 ),
        .Q(sim_wr_start),
        .R(\adc_control.sim_start_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.wr_en[0]_i_1 
       (.I0(resetn),
        .O(\adc_control.wr_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \adc_control.wr_en[0]_i_2 
       (.I0(sim_wr_done),
        .I1(config_wr_done),
        .O(wr_en0));
  FDRE \adc_control.wr_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(wr_en0),
        .Q(\^wr_en ),
        .R(\adc_control.wr_en[0]_i_1_n_0 ));
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
