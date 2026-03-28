// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Mar 25 19:15:54 2026
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
    adc_start,
    adc_stop,
    sim_start,
    adc_active,
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
  output adc_start;
  output adc_stop;
  output sim_start;
  input adc_active;
  input sim_active;
  output config_low_wr;
  output config_high_wr;
  output [7:0]config_adr;
  output [31:0]config_data;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;

  wire adc_active;
  wire adc_start;
  wire adc_stop;
  wire [10:0]address;
  wire [12:0]bram_adr_in;
  wire [10:0]bram_adr_out;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_high_wr;
  wire config_low_wr;
  wire [31:0]data_in;
  wire [31:0]data_out;
  wire resetn;
  wire sim_active;
  wire [1:0]sim_channel;
  wire [31:0]sim_data;
  wire sim_high_wr;
  wire sim_low_wr;
  wire sim_start;
  wire [3:0]wr_en;

  ps_adc_control_0_0_adc_control inst
       (.adc_active(adc_active),
        .adc_start(adc_start),
        .adc_stop(adc_stop),
        .address(address),
        .bram_adr_in({bram_adr_in[12:2],1'b0,1'b0}),
        .bram_adr_out(bram_adr_out),
        .clk(clk),
        .config_adr(config_adr),
        .config_data(config_data),
        .config_high_wr(config_high_wr),
        .config_low_wr(config_low_wr),
        .data_in(data_in),
        .data_out(data_out),
        .resetn(resetn),
        .sim_active(sim_active),
        .sim_channel(sim_channel),
        .sim_data(sim_data),
        .sim_high_wr(sim_high_wr),
        .sim_low_wr(sim_low_wr),
        .sim_start(sim_start),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "adc_control" *) (* keep_hierarchy = "soft" *) 
module ps_adc_control_0_0_adc_control
   (clk,
    resetn,
    bram_adr_in,
    bram_adr_out,
    address,
    data_in,
    wr_en,
    data_out,
    adc_start,
    adc_stop,
    sim_start,
    adc_active,
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
  output adc_start;
  output adc_stop;
  output sim_start;
  input adc_active;
  input sim_active;
  output config_low_wr;
  output config_high_wr;
  output [7:0]config_adr;
  output [31:0]config_data;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;

  (* MARK_DEBUG *) wire adc_active;
  wire \adc_control.adc_start_i_1_n_0 ;
  wire \adc_control.adc_stop_i_1_n_0 ;
  wire \adc_control.address[0]_i_1_n_0 ;
  wire \adc_control.address[0]_i_2_n_0 ;
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
  wire \adc_control.address[5]_i_2_n_0 ;
  wire \adc_control.address[6]_i_1_n_0 ;
  wire \adc_control.address[7]_i_1_n_0 ;
  wire \adc_control.address[8]_i_1_n_0 ;
  wire \adc_control.address[9]_i_1_n_0 ;
  wire \adc_control.address[9]_i_2_n_0 ;
  wire \adc_control.cdata[31]_i_1_n_0 ;
  wire \adc_control.cdata[31]_i_2_n_0 ;
  wire \adc_control.cmd_start_i_1_n_0 ;
  wire \adc_control.config_adr[7]_i_1_n_0 ;
  wire \adc_control.config_adr[7]_i_3_n_0 ;
  wire \adc_control.config_data[31]_i_1_n_0 ;
  wire \adc_control.config_high_wr_i_1_n_0 ;
  wire \adc_control.config_low_wr_i_1_n_0 ;
  wire \adc_control.config_low_wr_i_2_n_0 ;
  wire \adc_control.config_wr_count[0]_i_1_n_0 ;
  wire \adc_control.config_wr_count[1]_i_1_n_0 ;
  wire \adc_control.config_wr_count[2]_i_1_n_0 ;
  wire \adc_control.config_wr_count[3]_i_1_n_0 ;
  wire \adc_control.config_wr_count[3]_i_2_n_0 ;
  wire \adc_control.config_wr_count[4]_i_1_n_0 ;
  wire \adc_control.config_wr_count[4]_i_2_n_0 ;
  wire \adc_control.config_wr_count[5]_i_1_n_0 ;
  wire \adc_control.config_wr_count[5]_i_2_n_0 ;
  wire \adc_control.config_wr_count[6]_i_1_n_0 ;
  wire \adc_control.config_wr_count[7]_i_1_n_0 ;
  wire \adc_control.config_wr_count[7]_i_2_n_0 ;
  wire \adc_control.config_wr_count[7]_i_3_n_0 ;
  wire \adc_control.config_wr_done_i_1_n_0 ;
  wire \adc_control.config_wr_pend_i_1_n_0 ;
  wire \adc_control.config_wr_start_i_1_n_0 ;
  wire \adc_control.data_out[0]_i_1_n_0 ;
  wire \adc_control.data_out[1]_i_1_n_0 ;
  wire \adc_control.data_out[2]_i_1_n_0 ;
  wire \adc_control.data_out[3]_i_1_n_0 ;
  wire \adc_control.data_out[3]_i_2_n_0 ;
  wire \adc_control.data_out[4]_i_1_n_0 ;
  wire \adc_control.data_out[5]_i_1_n_0 ;
  wire \adc_control.data_out[6]_i_1_n_0 ;
  wire \adc_control.data_out[7]_i_1_n_0 ;
  wire \adc_control.data_out[7]_i_2_n_0 ;
  wire \adc_control.data_out[8]_i_1_n_0 ;
  wire \adc_control.data_out[9]_i_1_n_0 ;
  wire \adc_control.pdata[0]_i_1_n_0 ;
  wire \adc_control.pdata[10]_i_1_n_0 ;
  wire \adc_control.pdata[11]_i_1_n_0 ;
  wire \adc_control.pdata[12]_i_1_n_0 ;
  wire \adc_control.pdata[13]_i_1_n_0 ;
  wire \adc_control.pdata[14]_i_1_n_0 ;
  wire \adc_control.pdata[15]_i_1_n_0 ;
  wire \adc_control.pdata[16]_i_1_n_0 ;
  wire \adc_control.pdata[17]_i_1_n_0 ;
  wire \adc_control.pdata[18]_i_1_n_0 ;
  wire \adc_control.pdata[19]_i_1_n_0 ;
  wire \adc_control.pdata[1]_i_1_n_0 ;
  wire \adc_control.pdata[20]_i_1_n_0 ;
  wire \adc_control.pdata[21]_i_1_n_0 ;
  wire \adc_control.pdata[22]_i_1_n_0 ;
  wire \adc_control.pdata[23]_i_1_n_0 ;
  wire \adc_control.pdata[24]_i_1_n_0 ;
  wire \adc_control.pdata[25]_i_1_n_0 ;
  wire \adc_control.pdata[26]_i_1_n_0 ;
  wire \adc_control.pdata[27]_i_1_n_0 ;
  wire \adc_control.pdata[28]_i_1_n_0 ;
  wire \adc_control.pdata[29]_i_1_n_0 ;
  wire \adc_control.pdata[2]_i_1_n_0 ;
  wire \adc_control.pdata[30]_i_1_n_0 ;
  wire \adc_control.pdata[31]_i_10_n_0 ;
  wire \adc_control.pdata[31]_i_11_n_0 ;
  wire \adc_control.pdata[31]_i_12_n_0 ;
  wire \adc_control.pdata[31]_i_13_n_0 ;
  wire \adc_control.pdata[31]_i_14_n_0 ;
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
  wire \adc_control.pdata[31]_i_25_n_0 ;
  wire \adc_control.pdata[31]_i_26_n_0 ;
  wire \adc_control.pdata[31]_i_27_n_0 ;
  wire \adc_control.pdata[31]_i_2_n_0 ;
  wire \adc_control.pdata[31]_i_3_n_0 ;
  wire \adc_control.pdata[31]_i_4_n_0 ;
  wire \adc_control.pdata[31]_i_5_n_0 ;
  wire \adc_control.pdata[31]_i_6_n_0 ;
  wire \adc_control.pdata[31]_i_8_n_0 ;
  wire \adc_control.pdata[31]_i_9_n_0 ;
  wire \adc_control.pdata[3]_i_1_n_0 ;
  wire \adc_control.pdata[4]_i_1_n_0 ;
  wire \adc_control.pdata[5]_i_1_n_0 ;
  wire \adc_control.pdata[6]_i_1_n_0 ;
  wire \adc_control.pdata[7]_i_1_n_0 ;
  wire \adc_control.pdata[8]_i_1_n_0 ;
  wire \adc_control.pdata[9]_i_1_n_0 ;
  wire \adc_control.pdata_reg[31]_i_15_n_0 ;
  wire \adc_control.pdata_reg[31]_i_15_n_1 ;
  wire \adc_control.pdata_reg[31]_i_15_n_2 ;
  wire \adc_control.pdata_reg[31]_i_15_n_3 ;
  wire \adc_control.pdata_reg[31]_i_15_n_4 ;
  wire \adc_control.pdata_reg[31]_i_15_n_5 ;
  wire \adc_control.pdata_reg[31]_i_15_n_6 ;
  wire \adc_control.pdata_reg[31]_i_15_n_7 ;
  wire \adc_control.pdata_reg[31]_i_7_n_5 ;
  wire \adc_control.pdata_reg[31]_i_7_n_6 ;
  wire \adc_control.pdata_reg[31]_i_7_n_7 ;
  wire \adc_control.sim_data[0]_i_1_n_0 ;
  wire \adc_control.sim_data[10]_i_1_n_0 ;
  wire \adc_control.sim_data[11]_i_1_n_0 ;
  wire \adc_control.sim_data[12]_i_1_n_0 ;
  wire \adc_control.sim_data[13]_i_1_n_0 ;
  wire \adc_control.sim_data[14]_i_1_n_0 ;
  wire \adc_control.sim_data[15]_i_1_n_0 ;
  wire \adc_control.sim_data[16]_i_1_n_0 ;
  wire \adc_control.sim_data[17]_i_1_n_0 ;
  wire \adc_control.sim_data[18]_i_1_n_0 ;
  wire \adc_control.sim_data[19]_i_1_n_0 ;
  wire \adc_control.sim_data[1]_i_1_n_0 ;
  wire \adc_control.sim_data[20]_i_1_n_0 ;
  wire \adc_control.sim_data[21]_i_1_n_0 ;
  wire \adc_control.sim_data[22]_i_1_n_0 ;
  wire \adc_control.sim_data[23]_i_1_n_0 ;
  wire \adc_control.sim_data[24]_i_1_n_0 ;
  wire \adc_control.sim_data[25]_i_1_n_0 ;
  wire \adc_control.sim_data[26]_i_1_n_0 ;
  wire \adc_control.sim_data[27]_i_1_n_0 ;
  wire \adc_control.sim_data[28]_i_1_n_0 ;
  wire \adc_control.sim_data[29]_i_1_n_0 ;
  wire \adc_control.sim_data[2]_i_1_n_0 ;
  wire \adc_control.sim_data[30]_i_1_n_0 ;
  wire \adc_control.sim_data[31]_i_1_n_0 ;
  wire \adc_control.sim_data[31]_i_2_n_0 ;
  wire \adc_control.sim_data[3]_i_1_n_0 ;
  wire \adc_control.sim_data[4]_i_1_n_0 ;
  wire \adc_control.sim_data[5]_i_1_n_0 ;
  wire \adc_control.sim_data[6]_i_1_n_0 ;
  wire \adc_control.sim_data[7]_i_1_n_0 ;
  wire \adc_control.sim_data[8]_i_1_n_0 ;
  wire \adc_control.sim_data[9]_i_1_n_0 ;
  wire \adc_control.sim_high_wr_i_1_n_0 ;
  wire \adc_control.sim_low_wr_i_2_n_0 ;
  wire \adc_control.sim_low_wr_i_3_n_0 ;
  wire \adc_control.sim_low_wr_i_4_n_0 ;
  wire \adc_control.sim_start_i_1_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_3_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_4_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_5_n_0 ;
  wire \adc_control.sim_wr_count[10]_i_6_n_0 ;
  wire \adc_control.sim_wr_count[2]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[3]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[4]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[6]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[6]_i_3_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_10_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_11_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_12_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_3_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_4_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_5_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_6_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_7_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_8_n_0 ;
  wire \adc_control.sim_wr_count[7]_i_9_n_0 ;
  wire \adc_control.sim_wr_count[8]_i_2_n_0 ;
  wire \adc_control.sim_wr_count[9]_i_2_n_0 ;
  wire \adc_control.sim_wr_count_reg[10]_i_2_n_6 ;
  wire \adc_control.sim_wr_count_reg[10]_i_2_n_7 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_0 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_1 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_2 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_3 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_4 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_5 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_6 ;
  wire \adc_control.sim_wr_count_reg[7]_i_2_n_7 ;
  wire \adc_control.sim_wr_done_i_1_n_0 ;
  wire \adc_control.sim_wr_pend_i_1_n_0 ;
  wire \adc_control.sim_wr_pend_i_2_n_0 ;
  wire \adc_control.sim_wr_start_i_1_n_0 ;
  wire \adc_control.sim_wr_start_i_2_n_0 ;
  wire \adc_control.sim_wr_start_i_3_n_0 ;
  wire \adc_control.wr_en_reg0 ;
  (* MARK_DEBUG *) wire adc_start;
  (* MARK_DEBUG *) wire adc_stop;
  (* MARK_DEBUG *) wire [10:0]address;
  wire [12:0]bram_adr_in;
  (* MARK_DEBUG *) wire [31:0]cdata;
  wire clk;
  (* MARK_DEBUG *) wire cmd_start;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_high_wr;
  wire config_low_wr;
  wire [7:0]config_wr_count;
  wire config_wr_done;
  wire config_wr_pend;
  wire config_wr_start;
  (* MARK_DEBUG *) wire [31:0]data_in;
  (* MARK_DEBUG *) wire [31:0]data_out;
  wire [10:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  (* MARK_DEBUG *) wire [10:0]padr;
  (* MARK_DEBUG *) wire [31:0]pdata;
  (* MARK_DEBUG *) wire resetn;
  (* MARK_DEBUG *) wire sim_active;
  (* MARK_DEBUG *) wire [1:0]sim_channel;
  (* MARK_DEBUG *) wire [31:0]sim_data;
  (* MARK_DEBUG *) wire sim_high_wr;
  (* MARK_DEBUG *) wire sim_low_wr;
  wire sim_low_wr2_out;
  (* MARK_DEBUG *) wire sim_start;
  (* MARK_DEBUG *) wire [10:0]sim_wr_count;
  wire [10:0]sim_wr_count__0;
  (* MARK_DEBUG *) wire sim_wr_done;
  (* MARK_DEBUG *) wire sim_wr_pend;
  (* MARK_DEBUG *) wire sim_wr_start;
  (* MARK_DEBUG *) wire [3:0]wr_en;
  wire [7:0]\NLW_adc_control.pdata_reg[31]_i_15_O_UNCONNECTED ;
  wire [7:3]\NLW_adc_control.pdata_reg[31]_i_7_CO_UNCONNECTED ;
  wire [7:0]\NLW_adc_control.pdata_reg[31]_i_7_O_UNCONNECTED ;
  wire [7:2]\NLW_adc_control.sim_wr_count_reg[10]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_adc_control.sim_wr_count_reg[10]_i_2_O_UNCONNECTED ;

  assign bram_adr_out[10:0] = bram_adr_in[12:2];
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \adc_control.adc_start_i_1 
       (.I0(adc_start),
        .I1(cdata[0]),
        .I2(cdata[1]),
        .I3(cdata[2]),
        .I4(\adc_control.sim_wr_start_i_3_n_0 ),
        .O(\adc_control.adc_start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.adc_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.adc_start_i_1_n_0 ),
        .Q(adc_start),
        .R(\adc_control.sim_wr_start_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \adc_control.adc_stop_i_1 
       (.I0(adc_stop),
        .I1(cdata[0]),
        .I2(cdata[2]),
        .I3(cdata[1]),
        .I4(\adc_control.sim_wr_start_i_3_n_0 ),
        .O(\adc_control.adc_stop_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.adc_stop_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.adc_stop_i_1_n_0 ),
        .Q(adc_stop),
        .R(\adc_control.sim_wr_start_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555550155555555)) 
    \adc_control.address[0]_i_1 
       (.I0(cmd_start),
        .I1(address[0]),
        .I2(\adc_control.address[0]_i_2_n_0 ),
        .I3(config_wr_done),
        .I4(sim_wr_done),
        .I5(resetn),
        .O(\adc_control.address[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_control.address[0]_i_2 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(config_wr_pend),
        .I3(config_wr_start),
        .O(\adc_control.address[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \adc_control.address[10]_i_1 
       (.I0(\adc_control.address[10]_i_2_n_0 ),
        .I1(address[9]),
        .I2(address[10]),
        .I3(\adc_control.address[10]_i_3_n_0 ),
        .O(\adc_control.address[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \adc_control.address[10]_i_2 
       (.I0(address[8]),
        .I1(address[7]),
        .I2(\adc_control.address[9]_i_2_n_0 ),
        .I3(address[6]),
        .O(\adc_control.address[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \adc_control.address[10]_i_3 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(config_wr_pend),
        .I3(config_wr_start),
        .I4(\adc_control.address[10]_i_4_n_0 ),
        .I5(cmd_start),
        .O(\adc_control.address[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \adc_control.address[10]_i_4 
       (.I0(config_wr_done),
        .I1(sim_wr_done),
        .I2(resetn),
        .O(\adc_control.address[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBEAA)) 
    \adc_control.address[1]_i_1 
       (.I0(cmd_start),
        .I1(address[0]),
        .I2(address[1]),
        .I3(\adc_control.address[1]_i_2_n_0 ),
        .O(\adc_control.address[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \adc_control.address[1]_i_2 
       (.I0(resetn),
        .I1(\adc_control.data_out[3]_i_2_n_0 ),
        .I2(config_wr_start),
        .I3(config_wr_pend),
        .I4(sim_wr_pend),
        .I5(sim_wr_start),
        .O(\adc_control.address[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \adc_control.address[2]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[0]),
        .I2(address[1]),
        .I3(address[2]),
        .O(\adc_control.address[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \adc_control.address[3]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .I4(address[3]),
        .O(\adc_control.address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \adc_control.address[4]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[3]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[2]),
        .I5(address[4]),
        .O(\adc_control.address[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \adc_control.address[5]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(\adc_control.address[5]_i_2_n_0 ),
        .I2(address[5]),
        .O(\adc_control.address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \adc_control.address[5]_i_2 
       (.I0(address[3]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .I4(address[4]),
        .O(\adc_control.address[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \adc_control.address[6]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(\adc_control.address[9]_i_2_n_0 ),
        .I2(address[6]),
        .O(\adc_control.address[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA208)) 
    \adc_control.address[7]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[6]),
        .I2(\adc_control.address[9]_i_2_n_0 ),
        .I3(address[7]),
        .O(\adc_control.address[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \adc_control.address[8]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[6]),
        .I2(\adc_control.address[9]_i_2_n_0 ),
        .I3(address[7]),
        .I4(address[8]),
        .O(\adc_control.address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \adc_control.address[9]_i_1 
       (.I0(\adc_control.address[10]_i_3_n_0 ),
        .I1(address[9]),
        .I2(address[8]),
        .I3(address[7]),
        .I4(\adc_control.address[9]_i_2_n_0 ),
        .I5(address[6]),
        .O(\adc_control.address[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \adc_control.address[9]_i_2 
       (.I0(address[4]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[3]),
        .I5(address[5]),
        .O(\adc_control.address[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[10]_i_1_n_0 ),
        .Q(address[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[1]_i_1_n_0 ),
        .Q(address[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[3]_i_1_n_0 ),
        .Q(address[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[4]_i_1_n_0 ),
        .Q(address[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[5]_i_1_n_0 ),
        .Q(address[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[6]_i_1_n_0 ),
        .Q(address[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[7]_i_1_n_0 ),
        .Q(address[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[8]_i_1_n_0 ),
        .Q(address[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[0] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(cdata[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[10] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[10]),
        .Q(cdata[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[11] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[11]),
        .Q(cdata[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[12] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[12]),
        .Q(cdata[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[13] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[13]),
        .Q(cdata[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[14] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[14]),
        .Q(cdata[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[15] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[15]),
        .Q(cdata[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[16] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[16]),
        .Q(cdata[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[17] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[17]),
        .Q(cdata[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[18] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[18]),
        .Q(cdata[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[19] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[19]),
        .Q(cdata[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[1] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(cdata[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[20] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[20]),
        .Q(cdata[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[21] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[21]),
        .Q(cdata[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[22] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[22]),
        .Q(cdata[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[23] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[23]),
        .Q(cdata[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[24] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[24]),
        .Q(cdata[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[25] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[25]),
        .Q(cdata[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[26] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[26]),
        .Q(cdata[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[27] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[27]),
        .Q(cdata[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[28] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[28]),
        .Q(cdata[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[29] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[29]),
        .Q(cdata[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[2] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(cdata[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[30] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[30]),
        .Q(cdata[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[31] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[31]),
        .Q(cdata[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[3] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(cdata[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[4] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(cdata[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[5] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(cdata[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[6] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(cdata[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[7] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(cdata[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[8] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[8]),
        .Q(cdata[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[9] 
       (.C(clk),
        .CE(\adc_control.cdata[31]_i_1_n_0 ),
        .D(data_in[9]),
        .Q(cdata[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.cmd_start_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .O(\adc_control.cmd_start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.cmd_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.cmd_start_i_1_n_0 ),
        .Q(cmd_start),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.config_adr[0]_i_1 
       (.I0(config_adr[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \adc_control.config_adr[1]_i_1 
       (.I0(config_adr[0]),
        .I1(config_adr[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \adc_control.config_adr[2]_i_1 
       (.I0(config_adr[2]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \adc_control.config_adr[3]_i_1 
       (.I0(config_adr[3]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \adc_control.config_adr[4]_i_1 
       (.I0(config_adr[4]),
        .I1(config_adr[2]),
        .I2(config_adr[1]),
        .I3(config_adr[0]),
        .I4(config_adr[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \adc_control.config_adr[5]_i_1 
       (.I0(config_adr[5]),
        .I1(config_adr[3]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(config_adr[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \adc_control.config_adr[6]_i_1 
       (.I0(config_adr[6]),
        .I1(\adc_control.config_adr[7]_i_3_n_0 ),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hFFFF01FF)) 
    \adc_control.config_adr[7]_i_1 
       (.I0(config_wr_count[7]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(config_wr_pend),
        .I4(cmd_start),
        .O(\adc_control.config_adr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \adc_control.config_adr[7]_i_2 
       (.I0(config_adr[7]),
        .I1(\adc_control.config_adr[7]_i_3_n_0 ),
        .I2(config_adr[6]),
        .O(p_0_in__1[7]));
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
        .D(p_0_in__1[0]),
        .Q(config_adr[0]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(config_adr[1]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(config_adr[2]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(config_adr[3]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(config_adr[4]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(config_adr[5]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(config_adr[6]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  FDSE \adc_control.config_adr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(config_adr[7]),
        .S(\adc_control.config_adr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \adc_control.config_data[31]_i_1 
       (.I0(config_wr_count[7]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(config_wr_pend),
        .I4(cmd_start),
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
    .INIT(64'hFE00FE00FE000000)) 
    \adc_control.config_high_wr_i_1 
       (.I0(config_wr_count[7]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(config_wr_pend),
        .I4(cdata[8]),
        .I5(config_high_wr),
        .O(\adc_control.config_high_wr_i_1_n_0 ));
  FDRE \adc_control.config_high_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_high_wr_i_1_n_0 ),
        .Q(config_high_wr),
        .R(cmd_start));
  LUT6 #(
    .INIT(64'hFE000000FE00FE00)) 
    \adc_control.config_low_wr_i_1 
       (.I0(config_wr_count[7]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(config_wr_pend),
        .I4(config_low_wr),
        .I5(cdata[8]),
        .O(\adc_control.config_low_wr_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_control.config_low_wr_i_2 
       (.I0(config_wr_count[5]),
        .I1(config_wr_count[3]),
        .I2(config_wr_count[1]),
        .I3(config_wr_count[0]),
        .I4(config_wr_count[2]),
        .I5(config_wr_count[4]),
        .O(\adc_control.config_low_wr_i_2_n_0 ));
  FDRE \adc_control.config_low_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_low_wr_i_1_n_0 ),
        .Q(config_low_wr),
        .R(cmd_start));
  LUT5 #(
    .INIT(32'hFF005454)) 
    \adc_control.config_wr_count[0]_i_1 
       (.I0(config_wr_count[0]),
        .I1(config_wr_pend),
        .I2(config_wr_start),
        .I3(cdata[16]),
        .I4(cmd_start),
        .O(\adc_control.config_wr_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC3AAC3AA00)) 
    \adc_control.config_wr_count[1]_i_1 
       (.I0(cdata[17]),
        .I1(config_wr_count[1]),
        .I2(config_wr_count[0]),
        .I3(cmd_start),
        .I4(config_wr_pend),
        .I5(config_wr_start),
        .O(\adc_control.config_wr_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88F88888888)) 
    \adc_control.config_wr_count[2]_i_1 
       (.I0(cdata[18]),
        .I1(cmd_start),
        .I2(config_wr_count[2]),
        .I3(config_wr_count[0]),
        .I4(config_wr_count[1]),
        .I5(\adc_control.config_wr_count[7]_i_3_n_0 ),
        .O(\adc_control.config_wr_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC3AAC3AA00)) 
    \adc_control.config_wr_count[3]_i_1 
       (.I0(cdata[19]),
        .I1(config_wr_count[3]),
        .I2(\adc_control.config_wr_count[3]_i_2_n_0 ),
        .I3(cmd_start),
        .I4(config_wr_pend),
        .I5(config_wr_start),
        .O(\adc_control.config_wr_count[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \adc_control.config_wr_count[3]_i_2 
       (.I0(config_wr_count[2]),
        .I1(config_wr_count[0]),
        .I2(config_wr_count[1]),
        .O(\adc_control.config_wr_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC3AAC3AA00)) 
    \adc_control.config_wr_count[4]_i_1 
       (.I0(cdata[20]),
        .I1(config_wr_count[4]),
        .I2(\adc_control.config_wr_count[4]_i_2_n_0 ),
        .I3(cmd_start),
        .I4(config_wr_pend),
        .I5(config_wr_start),
        .O(\adc_control.config_wr_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.config_wr_count[4]_i_2 
       (.I0(config_wr_count[3]),
        .I1(config_wr_count[1]),
        .I2(config_wr_count[0]),
        .I3(config_wr_count[2]),
        .O(\adc_control.config_wr_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC3AAC3AA00)) 
    \adc_control.config_wr_count[5]_i_1 
       (.I0(cdata[21]),
        .I1(config_wr_count[5]),
        .I2(\adc_control.config_wr_count[5]_i_2_n_0 ),
        .I3(cmd_start),
        .I4(config_wr_pend),
        .I5(config_wr_start),
        .O(\adc_control.config_wr_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.config_wr_count[5]_i_2 
       (.I0(config_wr_count[4]),
        .I1(config_wr_count[2]),
        .I2(config_wr_count[0]),
        .I3(config_wr_count[1]),
        .I4(config_wr_count[3]),
        .O(\adc_control.config_wr_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC3AAC3AA00)) 
    \adc_control.config_wr_count[6]_i_1 
       (.I0(cdata[22]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(cmd_start),
        .I4(config_wr_pend),
        .I5(config_wr_start),
        .O(\adc_control.config_wr_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FEFF)) 
    \adc_control.config_wr_count[7]_i_1 
       (.I0(config_wr_count[7]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(config_wr_pend),
        .I4(config_wr_start),
        .I5(cmd_start),
        .O(\adc_control.config_wr_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88F88888888)) 
    \adc_control.config_wr_count[7]_i_2 
       (.I0(cdata[23]),
        .I1(cmd_start),
        .I2(config_wr_count[7]),
        .I3(\adc_control.config_low_wr_i_2_n_0 ),
        .I4(config_wr_count[6]),
        .I5(\adc_control.config_wr_count[7]_i_3_n_0 ),
        .O(\adc_control.config_wr_count[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \adc_control.config_wr_count[7]_i_3 
       (.I0(cmd_start),
        .I1(config_wr_pend),
        .I2(config_wr_start),
        .O(\adc_control.config_wr_count[7]_i_3_n_0 ));
  FDRE \adc_control.config_wr_count_reg[0] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[0]_i_1_n_0 ),
        .Q(config_wr_count[0]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[1] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[1]_i_1_n_0 ),
        .Q(config_wr_count[1]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[2] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[2]_i_1_n_0 ),
        .Q(config_wr_count[2]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[3] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[3]_i_1_n_0 ),
        .Q(config_wr_count[3]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[4] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[4]_i_1_n_0 ),
        .Q(config_wr_count[4]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[5] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[5]_i_1_n_0 ),
        .Q(config_wr_count[5]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[6] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[6]_i_1_n_0 ),
        .Q(config_wr_count[6]),
        .R(1'b0));
  FDRE \adc_control.config_wr_count_reg[7] 
       (.C(clk),
        .CE(\adc_control.config_wr_count[7]_i_1_n_0 ),
        .D(\adc_control.config_wr_count[7]_i_2_n_0 ),
        .Q(config_wr_count[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \adc_control.config_wr_done_i_1 
       (.I0(config_wr_count[7]),
        .I1(config_wr_count[6]),
        .I2(\adc_control.config_low_wr_i_2_n_0 ),
        .I3(config_wr_start),
        .I4(config_wr_pend),
        .I5(config_wr_done),
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
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \adc_control.config_wr_start_i_1 
       (.I0(\adc_control.sim_wr_start_i_3_n_0 ),
        .I1(cdata[0]),
        .I2(cdata[2]),
        .I3(cdata[1]),
        .I4(config_wr_start),
        .O(\adc_control.config_wr_start_i_1_n_0 ));
  FDRE \adc_control.config_wr_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.config_wr_start_i_1_n_0 ),
        .Q(config_wr_start),
        .R(\adc_control.sim_wr_start_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h02A8)) 
    \adc_control.data_out[0]_i_1 
       (.I0(resetn),
        .I1(config_wr_done),
        .I2(sim_wr_done),
        .I3(data_out[0]),
        .O(\adc_control.data_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222A8880)) 
    \adc_control.data_out[1]_i_1 
       (.I0(resetn),
        .I1(data_out[0]),
        .I2(sim_wr_done),
        .I3(config_wr_done),
        .I4(data_out[1]),
        .O(\adc_control.data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222AAAAA88800000)) 
    \adc_control.data_out[2]_i_1 
       (.I0(resetn),
        .I1(data_out[1]),
        .I2(config_wr_done),
        .I3(sim_wr_done),
        .I4(data_out[0]),
        .I5(data_out[2]),
        .O(\adc_control.data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \adc_control.data_out[3]_i_1 
       (.I0(resetn),
        .I1(data_out[2]),
        .I2(data_out[0]),
        .I3(\adc_control.data_out[3]_i_2_n_0 ),
        .I4(data_out[1]),
        .I5(data_out[3]),
        .O(\adc_control.data_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \adc_control.data_out[3]_i_2 
       (.I0(sim_wr_done),
        .I1(config_wr_done),
        .O(\adc_control.data_out[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \adc_control.data_out[4]_i_1 
       (.I0(resetn),
        .I1(\adc_control.data_out[7]_i_2_n_0 ),
        .I2(data_out[4]),
        .O(\adc_control.data_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA208)) 
    \adc_control.data_out[5]_i_1 
       (.I0(resetn),
        .I1(data_out[4]),
        .I2(\adc_control.data_out[7]_i_2_n_0 ),
        .I3(data_out[5]),
        .O(\adc_control.data_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \adc_control.data_out[6]_i_1 
       (.I0(resetn),
        .I1(data_out[4]),
        .I2(\adc_control.data_out[7]_i_2_n_0 ),
        .I3(data_out[5]),
        .I4(data_out[6]),
        .O(\adc_control.data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \adc_control.data_out[7]_i_1 
       (.I0(data_out[6]),
        .I1(data_out[5]),
        .I2(\adc_control.data_out[7]_i_2_n_0 ),
        .I3(data_out[4]),
        .I4(resetn),
        .I5(data_out[7]),
        .O(\adc_control.data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    \adc_control.data_out[7]_i_2 
       (.I0(data_out[2]),
        .I1(data_out[0]),
        .I2(sim_wr_done),
        .I3(config_wr_done),
        .I4(data_out[1]),
        .I5(data_out[3]),
        .O(\adc_control.data_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE000200)) 
    \adc_control.data_out[8]_i_1 
       (.I0(data_out[8]),
        .I1(sim_wr_done),
        .I2(config_wr_done),
        .I3(resetn),
        .I4(adc_active),
        .O(\adc_control.data_out[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000200)) 
    \adc_control.data_out[9]_i_1 
       (.I0(data_out[9]),
        .I1(sim_wr_done),
        .I2(config_wr_done),
        .I3(resetn),
        .I4(sim_active),
        .O(\adc_control.data_out[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[10]),
        .Q(data_out[10]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[11]),
        .Q(data_out[11]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[12]),
        .Q(data_out[12]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[13]),
        .Q(data_out[13]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[14]),
        .Q(data_out[14]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[15]),
        .Q(data_out[15]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[16]),
        .Q(data_out[16]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[17]),
        .Q(data_out[17]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[18]),
        .Q(data_out[18]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[19]),
        .Q(data_out[19]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[20]),
        .Q(data_out[20]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[21]),
        .Q(data_out[21]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[22]),
        .Q(data_out[22]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[23]),
        .Q(data_out[23]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[24]),
        .Q(data_out[24]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[25]),
        .Q(data_out[25]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[26]),
        .Q(data_out[26]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[27]),
        .Q(data_out[27]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[28]),
        .Q(data_out[28]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[29]),
        .Q(data_out[29]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[30]),
        .Q(data_out[30]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(data_out[31]),
        .Q(data_out[31]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[7]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[8]_i_1_n_0 ),
        .Q(data_out[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[9]_i_1_n_0 ),
        .Q(data_out[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(address[0]),
        .Q(padr[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(address[10]),
        .Q(padr[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(address[1]),
        .Q(padr[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(address[2]),
        .Q(padr[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(address[3]),
        .Q(padr[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(address[4]),
        .Q(padr[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(address[5]),
        .Q(padr[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(address[6]),
        .Q(padr[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(address[7]),
        .Q(padr[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(address[8]),
        .Q(padr[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.padr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(address[9]),
        .Q(padr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[0]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[0]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[0]),
        .O(\adc_control.pdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[10]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[10]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[10]),
        .O(\adc_control.pdata[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[11]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[11]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[11]),
        .O(\adc_control.pdata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[12]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[12]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[12]),
        .O(\adc_control.pdata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[13]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[13]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[13]),
        .O(\adc_control.pdata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[14]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[14]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[14]),
        .O(\adc_control.pdata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[15]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[15]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[15]),
        .O(\adc_control.pdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[16]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[16]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[16]),
        .O(\adc_control.pdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[17]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[17]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[17]),
        .O(\adc_control.pdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[18]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[18]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[18]),
        .O(\adc_control.pdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[19]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[19]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[19]),
        .O(\adc_control.pdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[1]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[1]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[1]),
        .O(\adc_control.pdata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[20]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[20]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[20]),
        .O(\adc_control.pdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[21]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[21]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[21]),
        .O(\adc_control.pdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[22]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[22]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[22]),
        .O(\adc_control.pdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[23]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[23]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[23]),
        .O(\adc_control.pdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[24]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[24]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[24]),
        .O(\adc_control.pdata[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[25]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[25]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[25]),
        .O(\adc_control.pdata[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[26]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[26]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[26]),
        .O(\adc_control.pdata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[27]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[27]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[27]),
        .O(\adc_control.pdata[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[28]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[28]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[28]),
        .O(\adc_control.pdata[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[29]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[29]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[29]),
        .O(\adc_control.pdata[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[2]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[2]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[2]),
        .O(\adc_control.pdata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[30]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[30]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[30]),
        .O(\adc_control.pdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[31]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[31]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[31]),
        .O(\adc_control.pdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.pdata[31]_i_10 
       (.I0(cdata[31]),
        .I1(cdata[10]),
        .I2(cdata[20]),
        .I3(cdata[0]),
        .O(\adc_control.pdata[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adc_control.pdata[31]_i_11 
       (.I0(cdata[2]),
        .I1(cdata[1]),
        .O(\adc_control.pdata[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.pdata[31]_i_12 
       (.I0(cdata[30]),
        .I1(cdata[15]),
        .I2(cdata[29]),
        .I3(cdata[12]),
        .O(\adc_control.pdata[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.pdata[31]_i_13 
       (.I0(cdata[23]),
        .I1(cdata[13]),
        .I2(cdata[14]),
        .I3(cdata[9]),
        .O(\adc_control.pdata[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.pdata[31]_i_14 
       (.I0(cdata[24]),
        .I1(cdata[26]),
        .I2(cdata[28]),
        .I3(cdata[8]),
        .O(\adc_control.pdata[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \adc_control.pdata[31]_i_16 
       (.I0(cdata[30]),
        .I1(pdata[30]),
        .I2(pdata[31]),
        .I3(cdata[31]),
        .O(\adc_control.pdata[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_17 
       (.I0(pdata[28]),
        .I1(cdata[28]),
        .I2(pdata[29]),
        .I3(cdata[29]),
        .I4(cdata[27]),
        .I5(pdata[27]),
        .O(\adc_control.pdata[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_18 
       (.I0(cdata[25]),
        .I1(pdata[25]),
        .I2(pdata[24]),
        .I3(cdata[24]),
        .I4(pdata[26]),
        .I5(cdata[26]),
        .O(\adc_control.pdata[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.pdata[31]_i_19 
       (.I0(cdata[16]),
        .I1(cdata[17]),
        .I2(cdata[1]),
        .I3(cdata[2]),
        .O(\adc_control.pdata[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF55D5)) 
    \adc_control.pdata[31]_i_2 
       (.I0(resetn),
        .I1(\adc_control.pdata[31]_i_4_n_0 ),
        .I2(\adc_control.sim_wr_start_i_3_n_0 ),
        .I3(\adc_control.pdata[31]_i_5_n_0 ),
        .I4(\adc_control.pdata[31]_i_6_n_0 ),
        .I5(\adc_control.pdata_reg[31]_i_7_n_5 ),
        .O(\adc_control.pdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_20 
       (.I0(cdata[21]),
        .I1(pdata[21]),
        .I2(pdata[22]),
        .I3(cdata[22]),
        .I4(pdata[23]),
        .I5(cdata[23]),
        .O(\adc_control.pdata[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_21 
       (.I0(cdata[18]),
        .I1(pdata[18]),
        .I2(pdata[19]),
        .I3(cdata[19]),
        .I4(pdata[20]),
        .I5(cdata[20]),
        .O(\adc_control.pdata[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_22 
       (.I0(pdata[16]),
        .I1(cdata[16]),
        .I2(pdata[17]),
        .I3(cdata[17]),
        .I4(cdata[15]),
        .I5(pdata[15]),
        .O(\adc_control.pdata[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_23 
       (.I0(pdata[14]),
        .I1(cdata[14]),
        .I2(pdata[12]),
        .I3(cdata[12]),
        .I4(cdata[13]),
        .I5(pdata[13]),
        .O(\adc_control.pdata[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_24 
       (.I0(pdata[10]),
        .I1(cdata[10]),
        .I2(pdata[11]),
        .I3(cdata[11]),
        .I4(cdata[9]),
        .I5(pdata[9]),
        .O(\adc_control.pdata[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_25 
       (.I0(pdata[8]),
        .I1(cdata[8]),
        .I2(pdata[6]),
        .I3(cdata[6]),
        .I4(pdata[7]),
        .I5(cdata[7]),
        .O(\adc_control.pdata[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_26 
       (.I0(pdata[3]),
        .I1(cdata[3]),
        .I2(pdata[5]),
        .I3(cdata[5]),
        .I4(cdata[4]),
        .I5(pdata[4]),
        .O(\adc_control.pdata[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.pdata[31]_i_27 
       (.I0(pdata[0]),
        .I1(cdata[0]),
        .I2(pdata[2]),
        .I3(cdata[2]),
        .I4(cdata[1]),
        .I5(pdata[1]),
        .O(\adc_control.pdata[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h01FF01FFFFFF01FF)) 
    \adc_control.pdata[31]_i_3 
       (.I0(sim_wr_pend),
        .I1(cmd_start),
        .I2(\adc_control.pdata_reg[31]_i_7_n_5 ),
        .I3(resetn),
        .I4(\adc_control.pdata[31]_i_4_n_0 ),
        .I5(\adc_control.pdata[31]_i_8_n_0 ),
        .O(\adc_control.pdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \adc_control.pdata[31]_i_4 
       (.I0(cdata[11]),
        .I1(cdata[21]),
        .I2(cdata[22]),
        .I3(\adc_control.pdata[31]_i_9_n_0 ),
        .I4(\adc_control.pdata[31]_i_10_n_0 ),
        .O(\adc_control.pdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_control.pdata[31]_i_5 
       (.I0(cdata[16]),
        .I1(cdata[17]),
        .I2(\adc_control.pdata[31]_i_11_n_0 ),
        .I3(\adc_control.pdata[31]_i_12_n_0 ),
        .I4(\adc_control.pdata[31]_i_13_n_0 ),
        .I5(\adc_control.pdata[31]_i_14_n_0 ),
        .O(\adc_control.pdata[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adc_control.pdata[31]_i_6 
       (.I0(sim_wr_pend),
        .I1(cmd_start),
        .O(\adc_control.pdata[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \adc_control.pdata[31]_i_8 
       (.I0(\adc_control.pdata[31]_i_14_n_0 ),
        .I1(\adc_control.pdata[31]_i_13_n_0 ),
        .I2(\adc_control.pdata[31]_i_12_n_0 ),
        .I3(\adc_control.pdata[31]_i_19_n_0 ),
        .I4(\adc_control.sim_wr_start_i_3_n_0 ),
        .O(\adc_control.pdata[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.pdata[31]_i_9 
       (.I0(cdata[27]),
        .I1(cdata[18]),
        .I2(cdata[25]),
        .I3(cdata[19]),
        .O(\adc_control.pdata[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[3]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[3]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[3]),
        .O(\adc_control.pdata[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[4]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[4]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[4]),
        .O(\adc_control.pdata[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[5]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[5]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[5]),
        .O(\adc_control.pdata[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[6]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[6]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[6]),
        .O(\adc_control.pdata[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[7]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[7]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[7]),
        .O(\adc_control.pdata[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[8]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[8]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[8]),
        .O(\adc_control.pdata[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \adc_control.pdata[9]_i_1 
       (.I0(\adc_control.pdata[31]_i_2_n_0 ),
        .I1(data_in[9]),
        .I2(\adc_control.pdata[31]_i_3_n_0 ),
        .I3(pdata[9]),
        .O(\adc_control.pdata[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[0]_i_1_n_0 ),
        .Q(pdata[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[10]_i_1_n_0 ),
        .Q(pdata[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[11]_i_1_n_0 ),
        .Q(pdata[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[12]_i_1_n_0 ),
        .Q(pdata[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[13]_i_1_n_0 ),
        .Q(pdata[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[14]_i_1_n_0 ),
        .Q(pdata[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[15]_i_1_n_0 ),
        .Q(pdata[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[16]_i_1_n_0 ),
        .Q(pdata[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[17]_i_1_n_0 ),
        .Q(pdata[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[18]_i_1_n_0 ),
        .Q(pdata[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[19]_i_1_n_0 ),
        .Q(pdata[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[1]_i_1_n_0 ),
        .Q(pdata[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[20]_i_1_n_0 ),
        .Q(pdata[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[21]_i_1_n_0 ),
        .Q(pdata[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[22]_i_1_n_0 ),
        .Q(pdata[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[23]_i_1_n_0 ),
        .Q(pdata[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[24]_i_1_n_0 ),
        .Q(pdata[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[25]_i_1_n_0 ),
        .Q(pdata[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[26]_i_1_n_0 ),
        .Q(pdata[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[27]_i_1_n_0 ),
        .Q(pdata[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[28]_i_1_n_0 ),
        .Q(pdata[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[29]_i_1_n_0 ),
        .Q(pdata[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[2]_i_1_n_0 ),
        .Q(pdata[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[30]_i_1_n_0 ),
        .Q(pdata[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[31]_i_1_n_0 ),
        .Q(pdata[31]),
        .R(1'b0));
  CARRY8 \adc_control.pdata_reg[31]_i_15 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\adc_control.pdata_reg[31]_i_15_n_0 ,\adc_control.pdata_reg[31]_i_15_n_1 ,\adc_control.pdata_reg[31]_i_15_n_2 ,\adc_control.pdata_reg[31]_i_15_n_3 ,\adc_control.pdata_reg[31]_i_15_n_4 ,\adc_control.pdata_reg[31]_i_15_n_5 ,\adc_control.pdata_reg[31]_i_15_n_6 ,\adc_control.pdata_reg[31]_i_15_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_adc_control.pdata_reg[31]_i_15_O_UNCONNECTED [7:0]),
        .S({\adc_control.pdata[31]_i_20_n_0 ,\adc_control.pdata[31]_i_21_n_0 ,\adc_control.pdata[31]_i_22_n_0 ,\adc_control.pdata[31]_i_23_n_0 ,\adc_control.pdata[31]_i_24_n_0 ,\adc_control.pdata[31]_i_25_n_0 ,\adc_control.pdata[31]_i_26_n_0 ,\adc_control.pdata[31]_i_27_n_0 }));
  CARRY8 \adc_control.pdata_reg[31]_i_7 
       (.CI(\adc_control.pdata_reg[31]_i_15_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_adc_control.pdata_reg[31]_i_7_CO_UNCONNECTED [7:3],\adc_control.pdata_reg[31]_i_7_n_5 ,\adc_control.pdata_reg[31]_i_7_n_6 ,\adc_control.pdata_reg[31]_i_7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_adc_control.pdata_reg[31]_i_7_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\adc_control.pdata[31]_i_16_n_0 ,\adc_control.pdata[31]_i_17_n_0 ,\adc_control.pdata[31]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[3]_i_1_n_0 ),
        .Q(pdata[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[4]_i_1_n_0 ),
        .Q(pdata[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[5]_i_1_n_0 ),
        .Q(pdata[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[6]_i_1_n_0 ),
        .Q(pdata[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[7]_i_1_n_0 ),
        .Q(pdata[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[8]_i_1_n_0 ),
        .Q(pdata[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.pdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.pdata[9]_i_1_n_0 ),
        .Q(pdata[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_channel_reg[0] 
       (.C(clk),
        .CE(cmd_start),
        .D(cdata[8]),
        .Q(sim_channel[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_channel_reg[1] 
       (.C(clk),
        .CE(cmd_start),
        .D(cdata[9]),
        .Q(sim_channel[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[0]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[0]),
        .I4(sim_data[0]),
        .O(\adc_control.sim_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[10]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[10]),
        .I4(sim_data[10]),
        .O(\adc_control.sim_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[11]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[11]),
        .I4(sim_data[11]),
        .O(\adc_control.sim_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[12]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[12]),
        .I4(sim_data[12]),
        .O(\adc_control.sim_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[13]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[13]),
        .I4(sim_data[13]),
        .O(\adc_control.sim_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[14]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[14]),
        .I4(sim_data[14]),
        .O(\adc_control.sim_data[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[15]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[15]),
        .I4(sim_data[15]),
        .O(\adc_control.sim_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[16]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[16]),
        .I4(sim_data[16]),
        .O(\adc_control.sim_data[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[17]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[17]),
        .I4(sim_data[17]),
        .O(\adc_control.sim_data[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[18]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[18]),
        .I4(sim_data[18]),
        .O(\adc_control.sim_data[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[19]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[19]),
        .I4(sim_data[19]),
        .O(\adc_control.sim_data[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[1]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[1]),
        .I4(sim_data[1]),
        .O(\adc_control.sim_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[20]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[20]),
        .I4(sim_data[20]),
        .O(\adc_control.sim_data[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[21]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[21]),
        .I4(sim_data[21]),
        .O(\adc_control.sim_data[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[22]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[22]),
        .I4(sim_data[22]),
        .O(\adc_control.sim_data[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[23]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[23]),
        .I4(sim_data[23]),
        .O(\adc_control.sim_data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[24]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[24]),
        .I4(sim_data[24]),
        .O(\adc_control.sim_data[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[25]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[25]),
        .I4(sim_data[25]),
        .O(\adc_control.sim_data[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[26]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[26]),
        .I4(sim_data[26]),
        .O(\adc_control.sim_data[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[27]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[27]),
        .I4(sim_data[27]),
        .O(\adc_control.sim_data[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[28]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[28]),
        .I4(sim_data[28]),
        .O(\adc_control.sim_data[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[29]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[29]),
        .I4(sim_data[29]),
        .O(\adc_control.sim_data[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[2]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[2]),
        .I4(sim_data[2]),
        .O(\adc_control.sim_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[30]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[30]),
        .I4(sim_data[30]),
        .O(\adc_control.sim_data[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \adc_control.sim_data[31]_i_1 
       (.I0(sim_wr_start),
        .I1(cmd_start),
        .I2(sim_wr_pend),
        .O(\adc_control.sim_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[31]_i_2 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[31]),
        .I4(sim_data[31]),
        .O(\adc_control.sim_data[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[3]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[3]),
        .I4(sim_data[3]),
        .O(\adc_control.sim_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[4]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[4]),
        .I4(sim_data[4]),
        .O(\adc_control.sim_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[5]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[5]),
        .I4(sim_data[5]),
        .O(\adc_control.sim_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[6]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[6]),
        .I4(sim_data[6]),
        .O(\adc_control.sim_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[7]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[7]),
        .I4(sim_data[7]),
        .O(\adc_control.sim_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[8]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[8]),
        .I4(sim_data[8]),
        .O(\adc_control.sim_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0400)) 
    \adc_control.sim_data[9]_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(cmd_start),
        .I3(data_in[9]),
        .I4(sim_data[9]),
        .O(\adc_control.sim_data[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[0] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[0]_i_1_n_0 ),
        .Q(sim_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[10] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[10]_i_1_n_0 ),
        .Q(sim_data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[11] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[11]_i_1_n_0 ),
        .Q(sim_data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[12] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[12]_i_1_n_0 ),
        .Q(sim_data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[13] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[13]_i_1_n_0 ),
        .Q(sim_data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[14] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[14]_i_1_n_0 ),
        .Q(sim_data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[15] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[15]_i_1_n_0 ),
        .Q(sim_data[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[16] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[16]_i_1_n_0 ),
        .Q(sim_data[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[17] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[17]_i_1_n_0 ),
        .Q(sim_data[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[18] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[18]_i_1_n_0 ),
        .Q(sim_data[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[19] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[19]_i_1_n_0 ),
        .Q(sim_data[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[1] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[1]_i_1_n_0 ),
        .Q(sim_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[20] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[20]_i_1_n_0 ),
        .Q(sim_data[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[21] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[21]_i_1_n_0 ),
        .Q(sim_data[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[22] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[22]_i_1_n_0 ),
        .Q(sim_data[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[23] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[23]_i_1_n_0 ),
        .Q(sim_data[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[24] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[24]_i_1_n_0 ),
        .Q(sim_data[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[25] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[25]_i_1_n_0 ),
        .Q(sim_data[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[26] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[26]_i_1_n_0 ),
        .Q(sim_data[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[27] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[27]_i_1_n_0 ),
        .Q(sim_data[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[28] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[28]_i_1_n_0 ),
        .Q(sim_data[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[29] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[29]_i_1_n_0 ),
        .Q(sim_data[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[2] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[2]_i_1_n_0 ),
        .Q(sim_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[30] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[30]_i_1_n_0 ),
        .Q(sim_data[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[31] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[31]_i_2_n_0 ),
        .Q(sim_data[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[3] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[3]_i_1_n_0 ),
        .Q(sim_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[4] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[4]_i_1_n_0 ),
        .Q(sim_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[5] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[5]_i_1_n_0 ),
        .Q(sim_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[6] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[6]_i_1_n_0 ),
        .Q(sim_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[7] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[7]_i_1_n_0 ),
        .Q(sim_data[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[8] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[8]_i_1_n_0 ),
        .Q(sim_data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_data_reg[9] 
       (.C(clk),
        .CE(\adc_control.sim_data[31]_i_1_n_0 ),
        .D(\adc_control.sim_data[9]_i_1_n_0 ),
        .Q(sim_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2220)) 
    \adc_control.sim_high_wr_i_1 
       (.I0(sim_wr_pend),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(sim_high_wr),
        .I3(cdata[10]),
        .O(\adc_control.sim_high_wr_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_high_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_high_wr_i_1_n_0 ),
        .Q(sim_high_wr),
        .R(cmd_start));
  LUT4 #(
    .INIT(16'h2022)) 
    \adc_control.sim_low_wr_i_1 
       (.I0(sim_wr_pend),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(sim_low_wr),
        .I3(cdata[10]),
        .O(sim_low_wr2_out));
  LUT5 #(
    .INIT(32'h00000001)) 
    \adc_control.sim_low_wr_i_2 
       (.I0(sim_wr_count[5]),
        .I1(sim_wr_count[2]),
        .I2(sim_wr_count[7]),
        .I3(\adc_control.sim_low_wr_i_3_n_0 ),
        .I4(\adc_control.sim_low_wr_i_4_n_0 ),
        .O(\adc_control.sim_low_wr_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.sim_low_wr_i_3 
       (.I0(sim_wr_count[0]),
        .I1(sim_wr_count[9]),
        .I2(sim_wr_count[6]),
        .I3(sim_wr_count[8]),
        .O(\adc_control.sim_low_wr_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.sim_low_wr_i_4 
       (.I0(sim_wr_count[3]),
        .I1(sim_wr_count[4]),
        .I2(sim_wr_count[1]),
        .I3(sim_wr_count[10]),
        .O(\adc_control.sim_low_wr_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_low_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(sim_low_wr2_out),
        .Q(sim_low_wr),
        .R(cmd_start));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \adc_control.sim_start_i_1 
       (.I0(sim_start),
        .I1(cdata[2]),
        .I2(cdata[1]),
        .I3(cdata[0]),
        .I4(\adc_control.sim_wr_start_i_3_n_0 ),
        .O(\adc_control.sim_start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_start_i_1_n_0 ),
        .Q(sim_start),
        .R(\adc_control.sim_wr_start_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E0FFE0FFE000E0)) 
    \adc_control.sim_wr_count[0]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[0]),
        .I3(cmd_start),
        .I4(cdata[16]),
        .I5(cdata[17]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hFFA800A800A8FFA8)) 
    \adc_control.sim_wr_count[10]_i_1 
       (.I0(sim_wr_count__0[10]),
        .I1(sim_wr_pend),
        .I2(sim_wr_start),
        .I3(cmd_start),
        .I4(\adc_control.sim_wr_count[10]_i_3_n_0 ),
        .I5(cdata[27]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \adc_control.sim_wr_count[10]_i_3 
       (.I0(cdata[25]),
        .I1(cdata[22]),
        .I2(\adc_control.sim_wr_count[6]_i_3_n_0 ),
        .I3(cdata[23]),
        .I4(cdata[24]),
        .I5(cdata[26]),
        .O(\adc_control.sim_wr_count[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[10]_i_4 
       (.I0(sim_wr_count[9]),
        .I1(sim_wr_count[10]),
        .O(\adc_control.sim_wr_count[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[10]_i_5 
       (.I0(sim_wr_count[8]),
        .I1(sim_wr_count[9]),
        .O(\adc_control.sim_wr_count[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[10]_i_6 
       (.I0(sim_wr_count[7]),
        .I1(sim_wr_count[8]),
        .O(\adc_control.sim_wr_count[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F4F444F444F444)) 
    \adc_control.sim_wr_count[1]_i_1 
       (.I0(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I1(sim_wr_count__0[1]),
        .I2(cmd_start),
        .I3(cdata[18]),
        .I4(cdata[17]),
        .I5(cdata[16]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hFFE000E000E0FFE0)) 
    \adc_control.sim_wr_count[2]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[2]),
        .I3(cmd_start),
        .I4(cdata[19]),
        .I5(\adc_control.sim_wr_count[2]_i_2_n_0 ),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h7F)) 
    \adc_control.sim_wr_count[2]_i_2 
       (.I0(cdata[16]),
        .I1(cdata[17]),
        .I2(cdata[18]),
        .O(\adc_control.sim_wr_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE000E000E0FFE0)) 
    \adc_control.sim_wr_count[3]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[3]),
        .I3(cmd_start),
        .I4(cdata[20]),
        .I5(\adc_control.sim_wr_count[3]_i_2_n_0 ),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \adc_control.sim_wr_count[3]_i_2 
       (.I0(cdata[18]),
        .I1(cdata[17]),
        .I2(cdata[16]),
        .I3(cdata[19]),
        .O(\adc_control.sim_wr_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE000E000E0FFE0)) 
    \adc_control.sim_wr_count[4]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[4]),
        .I3(cmd_start),
        .I4(cdata[21]),
        .I5(\adc_control.sim_wr_count[4]_i_2_n_0 ),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \adc_control.sim_wr_count[4]_i_2 
       (.I0(cdata[19]),
        .I1(cdata[16]),
        .I2(cdata[17]),
        .I3(cdata[18]),
        .I4(cdata[20]),
        .O(\adc_control.sim_wr_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFE0E0E0E0)) 
    \adc_control.sim_wr_count[5]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[5]),
        .I3(\adc_control.sim_wr_count[6]_i_3_n_0 ),
        .I4(cdata[22]),
        .I5(cmd_start),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF4F444F44444F444)) 
    \adc_control.sim_wr_count[6]_i_1 
       (.I0(\adc_control.sim_wr_count[6]_i_2_n_0 ),
        .I1(sim_wr_count__0[6]),
        .I2(cmd_start),
        .I3(cdata[22]),
        .I4(\adc_control.sim_wr_count[6]_i_3_n_0 ),
        .I5(cdata[23]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'hAB)) 
    \adc_control.sim_wr_count[6]_i_2 
       (.I0(cmd_start),
        .I1(sim_wr_start),
        .I2(sim_wr_pend),
        .O(\adc_control.sim_wr_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \adc_control.sim_wr_count[6]_i_3 
       (.I0(cdata[20]),
        .I1(cdata[18]),
        .I2(cdata[17]),
        .I3(cdata[16]),
        .I4(cdata[19]),
        .I5(cdata[21]),
        .O(\adc_control.sim_wr_count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFE0E0E0E0)) 
    \adc_control.sim_wr_count[7]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[7]),
        .I3(cdata[24]),
        .I4(\adc_control.sim_wr_count[7]_i_3_n_0 ),
        .I5(cmd_start),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'hD2)) 
    \adc_control.sim_wr_count[7]_i_10 
       (.I0(sim_wr_pend),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(sim_wr_count[2]),
        .O(\adc_control.sim_wr_count[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \adc_control.sim_wr_count[7]_i_11 
       (.I0(sim_wr_pend),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(sim_wr_count[1]),
        .O(\adc_control.sim_wr_count[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \adc_control.sim_wr_count[7]_i_12 
       (.I0(sim_wr_pend),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .I2(sim_wr_count[0]),
        .O(\adc_control.sim_wr_count[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \adc_control.sim_wr_count[7]_i_3 
       (.I0(cdata[23]),
        .I1(\adc_control.sim_wr_count[6]_i_3_n_0 ),
        .I2(cdata[22]),
        .O(\adc_control.sim_wr_count[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \adc_control.sim_wr_count[7]_i_4 
       (.I0(sim_wr_pend),
        .I1(\adc_control.sim_low_wr_i_2_n_0 ),
        .O(\adc_control.sim_wr_count[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[7]_i_5 
       (.I0(sim_wr_count[6]),
        .I1(sim_wr_count[7]),
        .O(\adc_control.sim_wr_count[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[7]_i_6 
       (.I0(sim_wr_count[5]),
        .I1(sim_wr_count[6]),
        .O(\adc_control.sim_wr_count[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[7]_i_7 
       (.I0(sim_wr_count[4]),
        .I1(sim_wr_count[5]),
        .O(\adc_control.sim_wr_count[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[7]_i_8 
       (.I0(sim_wr_count[3]),
        .I1(sim_wr_count[4]),
        .O(\adc_control.sim_wr_count[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \adc_control.sim_wr_count[7]_i_9 
       (.I0(sim_wr_count[2]),
        .I1(sim_wr_count[3]),
        .O(\adc_control.sim_wr_count[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFE0E0E0E0)) 
    \adc_control.sim_wr_count[8]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[8]),
        .I3(cdata[25]),
        .I4(\adc_control.sim_wr_count[8]_i_2_n_0 ),
        .I5(cmd_start),
        .O(p_0_in__0[8]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \adc_control.sim_wr_count[8]_i_2 
       (.I0(cdata[22]),
        .I1(\adc_control.sim_wr_count[6]_i_3_n_0 ),
        .I2(cdata[23]),
        .I3(cdata[24]),
        .O(\adc_control.sim_wr_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFE0E0E0E0)) 
    \adc_control.sim_wr_count[9]_i_1 
       (.I0(sim_wr_start),
        .I1(sim_wr_pend),
        .I2(sim_wr_count__0[9]),
        .I3(cdata[26]),
        .I4(\adc_control.sim_wr_count[9]_i_2_n_0 ),
        .I5(cmd_start),
        .O(p_0_in__0[9]));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \adc_control.sim_wr_count[9]_i_2 
       (.I0(cdata[24]),
        .I1(cdata[23]),
        .I2(\adc_control.sim_wr_count[6]_i_3_n_0 ),
        .I3(cdata[22]),
        .I4(cdata[25]),
        .O(\adc_control.sim_wr_count[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(sim_wr_count[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(sim_wr_count[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \adc_control.sim_wr_count_reg[10]_i_2 
       (.CI(\adc_control.sim_wr_count_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_adc_control.sim_wr_count_reg[10]_i_2_CO_UNCONNECTED [7:2],\adc_control.sim_wr_count_reg[10]_i_2_n_6 ,\adc_control.sim_wr_count_reg[10]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sim_wr_count[8:7]}),
        .O({\NLW_adc_control.sim_wr_count_reg[10]_i_2_O_UNCONNECTED [7:3],sim_wr_count__0[10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\adc_control.sim_wr_count[10]_i_4_n_0 ,\adc_control.sim_wr_count[10]_i_5_n_0 ,\adc_control.sim_wr_count[10]_i_6_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(sim_wr_count[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(sim_wr_count[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(sim_wr_count[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(sim_wr_count[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(sim_wr_count[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(sim_wr_count[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(sim_wr_count[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \adc_control.sim_wr_count_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\adc_control.sim_wr_count_reg[7]_i_2_n_0 ,\adc_control.sim_wr_count_reg[7]_i_2_n_1 ,\adc_control.sim_wr_count_reg[7]_i_2_n_2 ,\adc_control.sim_wr_count_reg[7]_i_2_n_3 ,\adc_control.sim_wr_count_reg[7]_i_2_n_4 ,\adc_control.sim_wr_count_reg[7]_i_2_n_5 ,\adc_control.sim_wr_count_reg[7]_i_2_n_6 ,\adc_control.sim_wr_count_reg[7]_i_2_n_7 }),
        .DI({sim_wr_count[6:2],\adc_control.sim_wr_count[7]_i_4_n_0 ,sim_wr_count[1:0]}),
        .O(sim_wr_count__0[7:0]),
        .S({\adc_control.sim_wr_count[7]_i_5_n_0 ,\adc_control.sim_wr_count[7]_i_6_n_0 ,\adc_control.sim_wr_count[7]_i_7_n_0 ,\adc_control.sim_wr_count[7]_i_8_n_0 ,\adc_control.sim_wr_count[7]_i_9_n_0 ,\adc_control.sim_wr_count[7]_i_10_n_0 ,\adc_control.sim_wr_count[7]_i_11_n_0 ,\adc_control.sim_wr_count[7]_i_12_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(sim_wr_count[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(sim_wr_count[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00A8)) 
    \adc_control.sim_wr_done_i_1 
       (.I0(\adc_control.sim_low_wr_i_2_n_0 ),
        .I1(sim_wr_pend),
        .I2(sim_wr_start),
        .I3(sim_wr_done),
        .O(\adc_control.sim_wr_done_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_wr_done_i_1_n_0 ),
        .Q(sim_wr_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.sim_wr_pend_i_1 
       (.I0(resetn),
        .O(\adc_control.sim_wr_pend_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \adc_control.sim_wr_pend_i_2 
       (.I0(sim_wr_start),
        .I1(sim_wr_done),
        .I2(sim_wr_pend),
        .O(\adc_control.sim_wr_pend_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_pend_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_wr_pend_i_2_n_0 ),
        .Q(sim_wr_pend),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.sim_wr_start_i_1 
       (.I0(cmd_start),
        .O(\adc_control.sim_wr_start_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \adc_control.sim_wr_start_i_2 
       (.I0(sim_wr_start),
        .I1(cdata[2]),
        .I2(cdata[1]),
        .I3(cdata[0]),
        .I4(\adc_control.sim_wr_start_i_3_n_0 ),
        .O(\adc_control.sim_wr_start_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \adc_control.sim_wr_start_i_3 
       (.I0(cdata[4]),
        .I1(cdata[3]),
        .I2(cdata[7]),
        .I3(cdata[6]),
        .I4(cdata[5]),
        .O(\adc_control.sim_wr_start_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_wr_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_wr_start_i_2_n_0 ),
        .Q(sim_wr_start),
        .R(\adc_control.sim_wr_start_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adc_control.wr_en[3]_i_1 
       (.I0(config_wr_done),
        .I1(sim_wr_done),
        .O(\adc_control.wr_en_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en_reg0 ),
        .Q(wr_en[0]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en_reg0 ),
        .Q(wr_en[1]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en_reg0 ),
        .Q(wr_en[2]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en_reg0 ),
        .Q(wr_en[3]),
        .R(\adc_control.sim_wr_pend_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "ila_4,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_adc_control_0_0_ila_4 ila_4_i
       (.clk(clk),
        .probe0(resetn),
        .probe1(data_in),
        .probe10(sim_channel),
        .probe11(sim_data),
        .probe12(adc_start),
        .probe13(adc_stop),
        .probe14(sim_start),
        .probe15(adc_active),
        .probe16(sim_active),
        .probe17(cmd_start),
        .probe18(sim_wr_start),
        .probe19(sim_wr_pend),
        .probe2(address),
        .probe20(sim_wr_done),
        .probe21(sim_wr_count),
        .probe3(padr),
        .probe4(wr_en),
        .probe5(data_out),
        .probe6(cdata),
        .probe7(pdata),
        .probe8(sim_low_wr),
        .probe9(sim_high_wr));
endmodule

(* CHECK_LICENSE_TYPE = "ila_4,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_4" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_adc_control_0_0_ila_4
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15,
    probe16,
    probe17,
    probe18,
    probe19,
    probe20,
    probe21);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [10:0]probe2;
  input [10:0]probe3;
  input [3:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [31:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [1:0]probe10;
  input [31:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [0:0]probe19;
  input [0:0]probe20;
  input [10:0]probe21;


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
