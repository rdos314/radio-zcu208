// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 22 00:03:58 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_adc_control_0_0/ps_adc_control_0_0_sim_netlist.v
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
    reset_out,
    stop_in,
    bram_adr_in,
    bram_adr_out,
    address,
    data_in,
    wr_en,
    data_out,
    adc_active,
    sim_active,
    sim_low_wr,
    sim_high_wr,
    sim_channel,
    sim_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_out RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_out;
  input stop_in;
  input [12:0]bram_adr_in;
  output [10:0]bram_adr_out;
  output [10:0]address;
  input [31:0]data_in;
  output [3:0]wr_en;
  output [31:0]data_out;
  output adc_active;
  output sim_active;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;

  wire adc_active;
  wire [10:0]address;
  wire [12:0]bram_adr_in;
  wire [10:0]bram_adr_out;
  wire clk;
  wire [31:0]data_in;
  wire [31:0]data_out;
  wire reset_out;
  wire resetn;
  wire sim_active;
  wire [1:0]sim_channel;
  wire [31:0]sim_data;
  wire sim_high_wr;
  wire sim_low_wr;
  wire stop_in;
  wire [3:0]wr_en;

  ps_adc_control_0_0_adc_control inst
       (.adc_active(adc_active),
        .address(address),
        .bram_adr_in({bram_adr_in[12:2],1'b0,1'b0}),
        .bram_adr_out(bram_adr_out),
        .clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .reset_out(reset_out),
        .resetn(resetn),
        .sim_active(sim_active),
        .sim_channel(sim_channel),
        .sim_data(sim_data),
        .sim_high_wr(sim_high_wr),
        .sim_low_wr(sim_low_wr),
        .stop_in(stop_in),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "adc_control" *) (* keep_hierarchy = "soft" *) 
module ps_adc_control_0_0_adc_control
   (clk,
    resetn,
    reset_out,
    stop_in,
    bram_adr_in,
    bram_adr_out,
    address,
    data_in,
    wr_en,
    data_out,
    adc_active,
    sim_active,
    sim_low_wr,
    sim_high_wr,
    sim_channel,
    sim_data);
  input clk;
  input resetn;
  output reset_out;
  input stop_in;
  input [12:0]bram_adr_in;
  output [10:0]bram_adr_out;
  output [10:0]address;
  input [31:0]data_in;
  output [3:0]wr_en;
  output [31:0]data_out;
  output adc_active;
  output sim_active;
  output sim_low_wr;
  output sim_high_wr;
  output [1:0]sim_channel;
  output [31:0]sim_data;

  (* MARK_DEBUG *) wire adc_active;
  wire \adc_control.adc_active_i_1_n_0 ;
  wire \adc_control.adc_active_i_2_n_0 ;
  wire \adc_control.address[0]_i_1_n_0 ;
  wire \adc_control.address[10]_i_1_n_0 ;
  wire \adc_control.address[10]_i_2_n_0 ;
  wire \adc_control.address[1]_i_1_n_0 ;
  wire \adc_control.address[2]_i_1_n_0 ;
  wire \adc_control.address[3]_i_1_n_0 ;
  wire \adc_control.address[4]_i_1_n_0 ;
  wire \adc_control.address[4]_i_2_n_0 ;
  wire \adc_control.address[5]_i_1_n_0 ;
  wire \adc_control.address[5]_i_2_n_0 ;
  wire \adc_control.address[6]_i_1_n_0 ;
  wire \adc_control.address[7]_i_1_n_0 ;
  wire \adc_control.address[8]_i_1_n_0 ;
  wire \adc_control.address[8]_i_2_n_0 ;
  wire \adc_control.address[9]_i_1_n_0 ;
  wire \adc_control.cdata_reg0 ;
  wire \adc_control.cmd_start_i_1_n_0 ;
  wire \adc_control.cmd_start_reg0 ;
  wire \adc_control.data0[0]_i_1_n_0 ;
  wire \adc_control.data0[10]_i_1_n_0 ;
  wire \adc_control.data0[11]_i_1_n_0 ;
  wire \adc_control.data0[12]_i_1_n_0 ;
  wire \adc_control.data0[13]_i_1_n_0 ;
  wire \adc_control.data0[14]_i_1_n_0 ;
  wire \adc_control.data0[15]_i_1_n_0 ;
  wire \adc_control.data0[16]_i_1_n_0 ;
  wire \adc_control.data0[17]_i_1_n_0 ;
  wire \adc_control.data0[18]_i_1_n_0 ;
  wire \adc_control.data0[19]_i_1_n_0 ;
  wire \adc_control.data0[1]_i_1_n_0 ;
  wire \adc_control.data0[20]_i_1_n_0 ;
  wire \adc_control.data0[21]_i_1_n_0 ;
  wire \adc_control.data0[22]_i_1_n_0 ;
  wire \adc_control.data0[23]_i_1_n_0 ;
  wire \adc_control.data0[24]_i_1_n_0 ;
  wire \adc_control.data0[25]_i_1_n_0 ;
  wire \adc_control.data0[26]_i_1_n_0 ;
  wire \adc_control.data0[27]_i_1_n_0 ;
  wire \adc_control.data0[28]_i_1_n_0 ;
  wire \adc_control.data0[29]_i_1_n_0 ;
  wire \adc_control.data0[2]_i_1_n_0 ;
  wire \adc_control.data0[30]_i_1_n_0 ;
  wire \adc_control.data0[31]_i_11_n_0 ;
  wire \adc_control.data0[31]_i_12_n_0 ;
  wire \adc_control.data0[31]_i_13_n_0 ;
  wire \adc_control.data0[31]_i_14_n_0 ;
  wire \adc_control.data0[31]_i_15_n_0 ;
  wire \adc_control.data0[31]_i_16_n_0 ;
  wire \adc_control.data0[31]_i_17_n_0 ;
  wire \adc_control.data0[31]_i_18_n_0 ;
  wire \adc_control.data0[31]_i_19_n_0 ;
  wire \adc_control.data0[31]_i_1_n_0 ;
  wire \adc_control.data0[31]_i_20_n_0 ;
  wire \adc_control.data0[31]_i_21_n_0 ;
  wire \adc_control.data0[31]_i_22_n_0 ;
  wire \adc_control.data0[31]_i_23_n_0 ;
  wire \adc_control.data0[31]_i_24_n_0 ;
  wire \adc_control.data0[31]_i_25_n_0 ;
  wire \adc_control.data0[31]_i_2_n_0 ;
  wire \adc_control.data0[31]_i_3_n_0 ;
  wire \adc_control.data0[31]_i_6_n_0 ;
  wire \adc_control.data0[31]_i_7_n_0 ;
  wire \adc_control.data0[31]_i_8_n_0 ;
  wire \adc_control.data0[31]_i_9_n_0 ;
  wire \adc_control.data0[3]_i_1_n_0 ;
  wire \adc_control.data0[4]_i_1_n_0 ;
  wire \adc_control.data0[5]_i_1_n_0 ;
  wire \adc_control.data0[6]_i_1_n_0 ;
  wire \adc_control.data0[7]_i_1_n_0 ;
  wire \adc_control.data0[8]_i_1_n_0 ;
  wire \adc_control.data0[9]_i_1_n_0 ;
  wire \adc_control.data0_reg[31]_i_10_n_0 ;
  wire \adc_control.data0_reg[31]_i_10_n_1 ;
  wire \adc_control.data0_reg[31]_i_10_n_2 ;
  wire \adc_control.data0_reg[31]_i_10_n_3 ;
  wire \adc_control.data0_reg[31]_i_10_n_4 ;
  wire \adc_control.data0_reg[31]_i_10_n_5 ;
  wire \adc_control.data0_reg[31]_i_10_n_6 ;
  wire \adc_control.data0_reg[31]_i_10_n_7 ;
  wire \adc_control.data0_reg[31]_i_5_n_5 ;
  wire \adc_control.data0_reg[31]_i_5_n_6 ;
  wire \adc_control.data0_reg[31]_i_5_n_7 ;
  wire \adc_control.data_out[0]_i_1_n_0 ;
  wire \adc_control.data_out[10]_i_1_n_0 ;
  wire \adc_control.data_out[11]_i_1_n_0 ;
  wire \adc_control.data_out[12]_i_1_n_0 ;
  wire \adc_control.data_out[13]_i_1_n_0 ;
  wire \adc_control.data_out[14]_i_1_n_0 ;
  wire \adc_control.data_out[15]_i_1_n_0 ;
  wire \adc_control.data_out[16]_i_1_n_0 ;
  wire \adc_control.data_out[17]_i_1_n_0 ;
  wire \adc_control.data_out[18]_i_1_n_0 ;
  wire \adc_control.data_out[19]_i_1_n_0 ;
  wire \adc_control.data_out[1]_i_1_n_0 ;
  wire \adc_control.data_out[20]_i_1_n_0 ;
  wire \adc_control.data_out[21]_i_1_n_0 ;
  wire \adc_control.data_out[22]_i_1_n_0 ;
  wire \adc_control.data_out[23]_i_1_n_0 ;
  wire \adc_control.data_out[24]_i_1_n_0 ;
  wire \adc_control.data_out[25]_i_1_n_0 ;
  wire \adc_control.data_out[26]_i_1_n_0 ;
  wire \adc_control.data_out[27]_i_1_n_0 ;
  wire \adc_control.data_out[28]_i_1_n_0 ;
  wire \adc_control.data_out[29]_i_1_n_0 ;
  wire \adc_control.data_out[2]_i_1_n_0 ;
  wire \adc_control.data_out[30]_i_1_n_0 ;
  wire \adc_control.data_out[31]_i_1_n_0 ;
  wire \adc_control.data_out[3]_i_1_n_0 ;
  wire \adc_control.data_out[4]_i_1_n_0 ;
  wire \adc_control.data_out[4]_i_2_n_0 ;
  wire \adc_control.data_out[5]_i_1_n_0 ;
  wire \adc_control.data_out[5]_i_2_n_0 ;
  wire \adc_control.data_out[6]_i_1_n_0 ;
  wire \adc_control.data_out[7]_i_1_n_0 ;
  wire \adc_control.data_out[7]_i_2_n_0 ;
  wire \adc_control.data_out[8]_i_1_n_0 ;
  wire \adc_control.data_out[9]_i_1_n_0 ;
  wire \adc_control.reset_out_i_1_n_0 ;
  wire \adc_control.reset_out_i_3_n_0 ;
  wire \adc_control.sim_active_i_1_n_0 ;
  wire \adc_control.sim_count[10]_i_3_n_0 ;
  wire \adc_control.sim_count[10]_i_4_n_0 ;
  wire \adc_control.sim_count[1]_i_4_n_0 ;
  wire \adc_control.sim_count[1]_i_5_n_0 ;
  wire \adc_control.sim_count[2]_i_2_n_0 ;
  wire \adc_control.sim_count[3]_i_2_n_0 ;
  wire \adc_control.sim_count[4]_i_2_n_0 ;
  wire \adc_control.sim_count[4]_i_3_n_0 ;
  wire \adc_control.sim_count[5]_i_2_n_0 ;
  wire \adc_control.sim_count[5]_i_3_n_0 ;
  wire \adc_control.sim_count[6]_i_2_n_0 ;
  wire \adc_control.sim_count[6]_i_3_n_0 ;
  wire \adc_control.sim_count[7]_i_2_n_0 ;
  wire \adc_control.sim_count[7]_i_3_n_0 ;
  wire \adc_control.sim_count[8]_i_2_n_0 ;
  wire \adc_control.sim_count[8]_i_3_n_0 ;
  wire \adc_control.sim_count[9]_i_2_n_0 ;
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
  wire \adc_control.sim_done_i_1_n_0 ;
  wire \adc_control.sim_high_wr_i_1_n_0 ;
  wire \adc_control.sim_pend_i_1_n_0 ;
  wire \adc_control.sim_pend_i_2_n_0 ;
  wire \adc_control.wr_en[3]_i_10_n_0 ;
  wire \adc_control.wr_en[3]_i_1_n_0 ;
  wire \adc_control.wr_en[3]_i_2_n_0 ;
  wire \adc_control.wr_en[3]_i_3_n_0 ;
  wire \adc_control.wr_en[3]_i_4_n_0 ;
  wire \adc_control.wr_en[3]_i_5_n_0 ;
  wire \adc_control.wr_en[3]_i_6_n_0 ;
  wire \adc_control.wr_en[3]_i_7_n_0 ;
  wire \adc_control.wr_en[3]_i_8_n_0 ;
  wire \adc_control.wr_en[3]_i_9_n_0 ;
  wire [11:2]adc_count;
  (* MARK_DEBUG *) wire [10:0]address;
  wire [12:0]bram_adr_in;
  (* MARK_DEBUG *) wire [31:0]cdata;
  wire clk;
  (* MARK_DEBUG *) wire cmd_start;
  (* MARK_DEBUG *) wire [31:0]data0;
  (* MARK_DEBUG *) wire [31:0]data_in;
  (* MARK_DEBUG *) wire [31:0]data_out;
  wire data_out1;
  wire p_0_in1_in__0;
  wire [10:0]p_0_in__0;
  (* MARK_DEBUG *) wire reset_out;
  (* MARK_DEBUG *) wire resetn;
  (* MARK_DEBUG *) wire sim_active;
  (* MARK_DEBUG *) wire [1:0]sim_channel;
  (* MARK_DEBUG *) wire [10:0]sim_count;
  (* MARK_DEBUG *) wire [31:0]sim_data;
  (* MARK_DEBUG *) wire sim_done;
  wire sim_done0;
  (* MARK_DEBUG *) wire sim_high_wr;
  (* MARK_DEBUG *) wire sim_low_wr;
  wire sim_low_wr3_out;
  (* MARK_DEBUG *) wire sim_pend;
  (* MARK_DEBUG *) wire stop_in;
  (* MARK_DEBUG *) wire [3:0]wr_en;
  wire [7:0]\NLW_adc_control.data0_reg[31]_i_10_O_UNCONNECTED ;
  wire [7:3]\NLW_adc_control.data0_reg[31]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_adc_control.data0_reg[31]_i_5_O_UNCONNECTED ;

  assign bram_adr_out[10:0] = bram_adr_in[12:2];
  LUT3 #(
    .INIT(8'h0D)) 
    \adc_control.adc_active_i_1 
       (.I0(resetn),
        .I1(stop_in),
        .I2(cmd_start),
        .O(\adc_control.adc_active_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFB0100)) 
    \adc_control.adc_active_i_2 
       (.I0(p_0_in1_in__0),
        .I1(data0[2]),
        .I2(data0[0]),
        .I3(data0[1]),
        .I4(adc_active),
        .O(\adc_control.adc_active_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.adc_active_reg 
       (.C(clk),
        .CE(cmd_start),
        .D(\adc_control.adc_active_i_2_n_0 ),
        .Q(adc_active),
        .R(\adc_control.adc_active_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \adc_control.address[0]_i_1 
       (.I0(resetn),
        .I1(sim_done),
        .I2(reset_out),
        .I3(address[0]),
        .I4(sim_pend),
        .O(\adc_control.address[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \adc_control.address[10]_i_1 
       (.I0(\adc_control.address[10]_i_2_n_0 ),
        .I1(address[9]),
        .I2(address[10]),
        .I3(sim_pend),
        .I4(\adc_control.wr_en[3]_i_2_n_0 ),
        .O(\adc_control.address[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \adc_control.address[10]_i_2 
       (.I0(address[8]),
        .I1(address[6]),
        .I2(\adc_control.address[8]_i_2_n_0 ),
        .I3(address[7]),
        .O(\adc_control.address[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006000)) 
    \adc_control.address[1]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(sim_pend),
        .I3(resetn),
        .I4(sim_done),
        .I5(reset_out),
        .O(\adc_control.address[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \adc_control.address[2]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(sim_pend),
        .I4(\adc_control.wr_en[3]_i_2_n_0 ),
        .O(\adc_control.address[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \adc_control.address[3]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(sim_pend),
        .I5(\adc_control.wr_en[3]_i_2_n_0 ),
        .O(\adc_control.address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006000)) 
    \adc_control.address[4]_i_1 
       (.I0(\adc_control.address[4]_i_2_n_0 ),
        .I1(address[4]),
        .I2(sim_pend),
        .I3(resetn),
        .I4(sim_done),
        .I5(reset_out),
        .O(\adc_control.address[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \adc_control.address[4]_i_2 
       (.I0(address[3]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .O(\adc_control.address[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006000)) 
    \adc_control.address[5]_i_1 
       (.I0(\adc_control.address[5]_i_2_n_0 ),
        .I1(address[5]),
        .I2(sim_pend),
        .I3(resetn),
        .I4(sim_done),
        .I5(reset_out),
        .O(\adc_control.address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \adc_control.address[5]_i_2 
       (.I0(address[4]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[3]),
        .O(\adc_control.address[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006000)) 
    \adc_control.address[6]_i_1 
       (.I0(\adc_control.address[8]_i_2_n_0 ),
        .I1(address[6]),
        .I2(sim_pend),
        .I3(resetn),
        .I4(sim_done),
        .I5(reset_out),
        .O(\adc_control.address[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \adc_control.address[7]_i_1 
       (.I0(\adc_control.address[8]_i_2_n_0 ),
        .I1(address[6]),
        .I2(address[7]),
        .I3(sim_pend),
        .I4(\adc_control.wr_en[3]_i_2_n_0 ),
        .O(\adc_control.address[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \adc_control.address[8]_i_1 
       (.I0(address[6]),
        .I1(\adc_control.address[8]_i_2_n_0 ),
        .I2(address[7]),
        .I3(address[8]),
        .I4(sim_pend),
        .I5(\adc_control.wr_en[3]_i_2_n_0 ),
        .O(\adc_control.address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \adc_control.address[8]_i_2 
       (.I0(address[5]),
        .I1(address[3]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[2]),
        .I5(address[4]),
        .O(\adc_control.address[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006000)) 
    \adc_control.address[9]_i_1 
       (.I0(\adc_control.address[10]_i_2_n_0 ),
        .I1(address[9]),
        .I2(sim_pend),
        .I3(resetn),
        .I4(sim_done),
        .I5(reset_out),
        .O(\adc_control.address[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[10]_i_1_n_0 ),
        .Q(address[10]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDSE \adc_control.address_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[1]_i_1_n_0 ),
        .Q(address[1]),
        .S(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[3]_i_1_n_0 ),
        .Q(address[3]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[4]_i_1_n_0 ),
        .Q(address[4]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[5]_i_1_n_0 ),
        .Q(address[5]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[6]_i_1_n_0 ),
        .Q(address[6]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[7]_i_1_n_0 ),
        .Q(address[7]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[8]_i_1_n_0 ),
        .Q(address[8]),
        .R(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.address_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.address[9]_i_1_n_0 ),
        .Q(address[9]),
        .R(cmd_start));
  LUT2 #(
    .INIT(4'h1)) 
    \adc_control.cdata[31]_i_1 
       (.I0(sim_done),
        .I1(sim_pend),
        .O(\adc_control.cdata_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[0] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[0]),
        .Q(cdata[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[10] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[10]),
        .Q(cdata[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[11] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[11]),
        .Q(cdata[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[12] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[12]),
        .Q(cdata[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[13] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[13]),
        .Q(cdata[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[14] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[14]),
        .Q(cdata[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[15] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[15]),
        .Q(cdata[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[16] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[16]),
        .Q(cdata[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[17] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[17]),
        .Q(cdata[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[18] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[18]),
        .Q(cdata[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[19] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[19]),
        .Q(cdata[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[1] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[1]),
        .Q(cdata[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[20] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[20]),
        .Q(cdata[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[21] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[21]),
        .Q(cdata[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[22] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[22]),
        .Q(cdata[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[23] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[23]),
        .Q(cdata[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[24] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[24]),
        .Q(cdata[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[25] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[25]),
        .Q(cdata[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[26] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[26]),
        .Q(cdata[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[27] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[27]),
        .Q(cdata[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[28] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[28]),
        .Q(cdata[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[29] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[29]),
        .Q(cdata[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[2] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[2]),
        .Q(cdata[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[30] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[30]),
        .Q(cdata[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[31] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[31]),
        .Q(cdata[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[3] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[3]),
        .Q(cdata[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[4] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[4]),
        .Q(cdata[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[5] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[5]),
        .Q(cdata[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[6] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[6]),
        .Q(cdata[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[7] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[7]),
        .Q(cdata[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[8] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[8]),
        .Q(cdata[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.cdata_reg[9] 
       (.C(clk),
        .CE(\adc_control.cdata_reg0 ),
        .D(data_in[9]),
        .Q(cdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \adc_control.cmd_start_i_1 
       (.I0(cmd_start),
        .I1(sim_pend),
        .I2(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I3(\adc_control.cmd_start_reg0 ),
        .O(\adc_control.cmd_start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.cmd_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.cmd_start_i_1_n_0 ),
        .Q(cmd_start),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[0]_i_1 
       (.I0(data0[0]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[0]),
        .O(\adc_control.data0[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[10]_i_1 
       (.I0(data0[10]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[10]),
        .O(\adc_control.data0[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[11]_i_1 
       (.I0(data0[11]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[11]),
        .O(\adc_control.data0[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[12]_i_1 
       (.I0(data0[12]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[12]),
        .O(\adc_control.data0[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[13]_i_1 
       (.I0(data0[13]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[13]),
        .O(\adc_control.data0[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[14]_i_1 
       (.I0(data0[14]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[14]),
        .O(\adc_control.data0[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[15]_i_1 
       (.I0(data0[15]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[15]),
        .O(\adc_control.data0[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[16]_i_1 
       (.I0(data0[16]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[16]),
        .O(\adc_control.data0[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[17]_i_1 
       (.I0(data0[17]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[17]),
        .O(\adc_control.data0[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[18]_i_1 
       (.I0(data0[18]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[18]),
        .O(\adc_control.data0[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[19]_i_1 
       (.I0(data0[19]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[19]),
        .O(\adc_control.data0[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[1]_i_1 
       (.I0(data0[1]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[1]),
        .O(\adc_control.data0[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[20]_i_1 
       (.I0(data0[20]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[20]),
        .O(\adc_control.data0[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[21]_i_1 
       (.I0(data0[21]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[21]),
        .O(\adc_control.data0[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[22]_i_1 
       (.I0(data0[22]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[22]),
        .O(\adc_control.data0[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[23]_i_1 
       (.I0(data0[23]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[23]),
        .O(\adc_control.data0[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[24]_i_1 
       (.I0(data0[24]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[24]),
        .O(\adc_control.data0[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[25]_i_1 
       (.I0(data0[25]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[25]),
        .O(\adc_control.data0[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[26]_i_1 
       (.I0(data0[26]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[26]),
        .O(\adc_control.data0[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[27]_i_1 
       (.I0(data0[27]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[27]),
        .O(\adc_control.data0[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[28]_i_1 
       (.I0(data0[28]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[28]),
        .O(\adc_control.data0[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[29]_i_1 
       (.I0(data0[29]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[29]),
        .O(\adc_control.data0[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[2]_i_1 
       (.I0(data0[2]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[2]),
        .O(\adc_control.data0[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[30]_i_1 
       (.I0(data0[30]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[30]),
        .O(\adc_control.data0[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_control.data0[31]_i_1 
       (.I0(\adc_control.cmd_start_reg0 ),
        .O(\adc_control.data0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \adc_control.data0[31]_i_11 
       (.I0(cdata[30]),
        .I1(data0[30]),
        .I2(cdata[31]),
        .I3(data0[31]),
        .O(\adc_control.data0[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_12 
       (.I0(cdata[27]),
        .I1(data0[27]),
        .I2(data0[29]),
        .I3(cdata[29]),
        .I4(data0[28]),
        .I5(cdata[28]),
        .O(\adc_control.data0[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_13 
       (.I0(cdata[24]),
        .I1(data0[24]),
        .I2(data0[26]),
        .I3(cdata[26]),
        .I4(data0[25]),
        .I5(cdata[25]),
        .O(\adc_control.data0[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.data0[31]_i_14 
       (.I0(cdata[21]),
        .I1(cdata[20]),
        .I2(cdata[23]),
        .I3(cdata[22]),
        .O(\adc_control.data0[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.data0[31]_i_15 
       (.I0(cdata[29]),
        .I1(cdata[28]),
        .I2(cdata[31]),
        .I3(cdata[30]),
        .O(\adc_control.data0[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.data0[31]_i_16 
       (.I0(cdata[5]),
        .I1(cdata[4]),
        .I2(cdata[7]),
        .I3(cdata[6]),
        .O(\adc_control.data0[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.data0[31]_i_17 
       (.I0(cdata[13]),
        .I1(cdata[12]),
        .I2(cdata[15]),
        .I3(cdata[14]),
        .O(\adc_control.data0[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_18 
       (.I0(cdata[21]),
        .I1(data0[21]),
        .I2(data0[23]),
        .I3(cdata[23]),
        .I4(data0[22]),
        .I5(cdata[22]),
        .O(\adc_control.data0[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_19 
       (.I0(cdata[18]),
        .I1(data0[18]),
        .I2(data0[20]),
        .I3(cdata[20]),
        .I4(data0[19]),
        .I5(cdata[19]),
        .O(\adc_control.data0[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \adc_control.data0[31]_i_2 
       (.I0(cmd_start),
        .I1(sim_pend),
        .O(\adc_control.data0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_20 
       (.I0(cdata[15]),
        .I1(data0[15]),
        .I2(data0[17]),
        .I3(cdata[17]),
        .I4(data0[16]),
        .I5(cdata[16]),
        .O(\adc_control.data0[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_21 
       (.I0(cdata[12]),
        .I1(data0[12]),
        .I2(data0[14]),
        .I3(cdata[14]),
        .I4(data0[13]),
        .I5(cdata[13]),
        .O(\adc_control.data0[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_22 
       (.I0(cdata[9]),
        .I1(data0[9]),
        .I2(data0[11]),
        .I3(cdata[11]),
        .I4(data0[10]),
        .I5(cdata[10]),
        .O(\adc_control.data0[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_23 
       (.I0(cdata[6]),
        .I1(data0[6]),
        .I2(data0[8]),
        .I3(cdata[8]),
        .I4(data0[7]),
        .I5(cdata[7]),
        .O(\adc_control.data0[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_24 
       (.I0(cdata[3]),
        .I1(data0[3]),
        .I2(data0[5]),
        .I3(cdata[5]),
        .I4(data0[4]),
        .I5(cdata[4]),
        .O(\adc_control.data0[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \adc_control.data0[31]_i_25 
       (.I0(cdata[0]),
        .I1(data0[0]),
        .I2(data0[2]),
        .I3(cdata[2]),
        .I4(data0[1]),
        .I5(cdata[1]),
        .O(\adc_control.data0[31]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[31]_i_3 
       (.I0(data0[31]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[31]),
        .O(\adc_control.data0[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \adc_control.data0[31]_i_4 
       (.I0(resetn),
        .I1(\adc_control.data0[31]_i_6_n_0 ),
        .I2(\adc_control.data0[31]_i_7_n_0 ),
        .I3(\adc_control.data0[31]_i_8_n_0 ),
        .I4(\adc_control.data0[31]_i_9_n_0 ),
        .O(\adc_control.cmd_start_reg0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.data0[31]_i_6 
       (.I0(cdata[18]),
        .I1(cdata[19]),
        .I2(cdata[16]),
        .I3(cdata[17]),
        .I4(\adc_control.data0[31]_i_14_n_0 ),
        .O(\adc_control.data0[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.data0[31]_i_7 
       (.I0(cdata[26]),
        .I1(cdata[27]),
        .I2(cdata[24]),
        .I3(cdata[25]),
        .I4(\adc_control.data0[31]_i_15_n_0 ),
        .O(\adc_control.data0[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.data0[31]_i_8 
       (.I0(cdata[2]),
        .I1(cdata[3]),
        .I2(cdata[0]),
        .I3(cdata[1]),
        .I4(\adc_control.data0[31]_i_16_n_0 ),
        .O(\adc_control.data0[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.data0[31]_i_9 
       (.I0(cdata[10]),
        .I1(cdata[11]),
        .I2(cdata[8]),
        .I3(cdata[9]),
        .I4(\adc_control.data0[31]_i_17_n_0 ),
        .O(\adc_control.data0[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[3]_i_1 
       (.I0(data0[3]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[3]),
        .O(\adc_control.data0[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[4]_i_1 
       (.I0(data0[4]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[4]),
        .O(\adc_control.data0[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[5]_i_1 
       (.I0(data0[5]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[5]),
        .O(\adc_control.data0[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[6]_i_1 
       (.I0(data0[6]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[6]),
        .O(\adc_control.data0[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[7]_i_1 
       (.I0(data0[7]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[7]),
        .O(\adc_control.data0[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[8]_i_1 
       (.I0(data0[8]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[8]),
        .O(\adc_control.data0[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \adc_control.data0[9]_i_1 
       (.I0(data0[9]),
        .I1(\adc_control.data0_reg[31]_i_5_n_5 ),
        .I2(cdata[9]),
        .O(\adc_control.data0[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[0] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[0]_i_1_n_0 ),
        .Q(data0[0]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[10] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[10]_i_1_n_0 ),
        .Q(data0[10]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[11] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[11]_i_1_n_0 ),
        .Q(data0[11]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[12] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[12]_i_1_n_0 ),
        .Q(data0[12]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[13] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[13]_i_1_n_0 ),
        .Q(data0[13]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[14] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[14]_i_1_n_0 ),
        .Q(data0[14]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[15] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[15]_i_1_n_0 ),
        .Q(data0[15]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[16] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[16]_i_1_n_0 ),
        .Q(data0[16]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[17] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[17]_i_1_n_0 ),
        .Q(data0[17]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[18] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[18]_i_1_n_0 ),
        .Q(data0[18]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[19] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[19]_i_1_n_0 ),
        .Q(data0[19]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[1] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[1]_i_1_n_0 ),
        .Q(data0[1]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[20] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[20]_i_1_n_0 ),
        .Q(data0[20]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[21] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[21]_i_1_n_0 ),
        .Q(data0[21]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[22] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[22]_i_1_n_0 ),
        .Q(data0[22]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[23] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[23]_i_1_n_0 ),
        .Q(data0[23]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[24] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[24]_i_1_n_0 ),
        .Q(data0[24]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[25] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[25]_i_1_n_0 ),
        .Q(data0[25]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[26] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[26]_i_1_n_0 ),
        .Q(data0[26]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[27] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[27]_i_1_n_0 ),
        .Q(data0[27]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[28] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[28]_i_1_n_0 ),
        .Q(data0[28]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[29] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[29]_i_1_n_0 ),
        .Q(data0[29]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[2] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[2]_i_1_n_0 ),
        .Q(data0[2]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[30] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[30]_i_1_n_0 ),
        .Q(data0[30]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[31] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[31]_i_3_n_0 ),
        .Q(data0[31]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  CARRY8 \adc_control.data0_reg[31]_i_10 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\adc_control.data0_reg[31]_i_10_n_0 ,\adc_control.data0_reg[31]_i_10_n_1 ,\adc_control.data0_reg[31]_i_10_n_2 ,\adc_control.data0_reg[31]_i_10_n_3 ,\adc_control.data0_reg[31]_i_10_n_4 ,\adc_control.data0_reg[31]_i_10_n_5 ,\adc_control.data0_reg[31]_i_10_n_6 ,\adc_control.data0_reg[31]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_adc_control.data0_reg[31]_i_10_O_UNCONNECTED [7:0]),
        .S({\adc_control.data0[31]_i_18_n_0 ,\adc_control.data0[31]_i_19_n_0 ,\adc_control.data0[31]_i_20_n_0 ,\adc_control.data0[31]_i_21_n_0 ,\adc_control.data0[31]_i_22_n_0 ,\adc_control.data0[31]_i_23_n_0 ,\adc_control.data0[31]_i_24_n_0 ,\adc_control.data0[31]_i_25_n_0 }));
  CARRY8 \adc_control.data0_reg[31]_i_5 
       (.CI(\adc_control.data0_reg[31]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_adc_control.data0_reg[31]_i_5_CO_UNCONNECTED [7:3],\adc_control.data0_reg[31]_i_5_n_5 ,\adc_control.data0_reg[31]_i_5_n_6 ,\adc_control.data0_reg[31]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_adc_control.data0_reg[31]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\adc_control.data0[31]_i_11_n_0 ,\adc_control.data0[31]_i_12_n_0 ,\adc_control.data0[31]_i_13_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[3] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[3]_i_1_n_0 ),
        .Q(data0[3]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[4] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[4]_i_1_n_0 ),
        .Q(data0[4]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[5] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[5]_i_1_n_0 ),
        .Q(data0[5]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[6] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[6]_i_1_n_0 ),
        .Q(data0[6]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[7] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[7]_i_1_n_0 ),
        .Q(data0[7]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[8] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[8]_i_1_n_0 ),
        .Q(data0[8]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data0_reg[9] 
       (.C(clk),
        .CE(\adc_control.data0[31]_i_2_n_0 ),
        .D(\adc_control.data0[9]_i_1_n_0 ),
        .Q(data0[9]),
        .R(\adc_control.data0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h56FF)) 
    \adc_control.data_out[0]_i_1 
       (.I0(data_out[0]),
        .I1(sim_done),
        .I2(reset_out),
        .I3(resetn),
        .O(\adc_control.data_out[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[10]_i_1 
       (.I0(resetn),
        .I1(data_out[10]),
        .O(\adc_control.data_out[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[11]_i_1 
       (.I0(resetn),
        .I1(data_out[11]),
        .O(\adc_control.data_out[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[12]_i_1 
       (.I0(resetn),
        .I1(data_out[12]),
        .O(\adc_control.data_out[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[13]_i_1 
       (.I0(resetn),
        .I1(data_out[13]),
        .O(\adc_control.data_out[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[14]_i_1 
       (.I0(resetn),
        .I1(data_out[14]),
        .O(\adc_control.data_out[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[15]_i_1 
       (.I0(resetn),
        .I1(data_out[15]),
        .O(\adc_control.data_out[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[16]_i_1 
       (.I0(resetn),
        .I1(data_out[16]),
        .O(\adc_control.data_out[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[17]_i_1 
       (.I0(resetn),
        .I1(data_out[17]),
        .O(\adc_control.data_out[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[18]_i_1 
       (.I0(resetn),
        .I1(data_out[18]),
        .O(\adc_control.data_out[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[19]_i_1 
       (.I0(resetn),
        .I1(data_out[19]),
        .O(\adc_control.data_out[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22288888)) 
    \adc_control.data_out[1]_i_1 
       (.I0(resetn),
        .I1(data_out[1]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(data_out[0]),
        .O(\adc_control.data_out[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[20]_i_1 
       (.I0(resetn),
        .I1(data_out[20]),
        .O(\adc_control.data_out[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[21]_i_1 
       (.I0(resetn),
        .I1(data_out[21]),
        .O(\adc_control.data_out[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[22]_i_1 
       (.I0(resetn),
        .I1(data_out[22]),
        .O(\adc_control.data_out[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[23]_i_1 
       (.I0(resetn),
        .I1(data_out[23]),
        .O(\adc_control.data_out[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[24]_i_1 
       (.I0(resetn),
        .I1(data_out[24]),
        .O(\adc_control.data_out[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[25]_i_1 
       (.I0(resetn),
        .I1(data_out[25]),
        .O(\adc_control.data_out[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[26]_i_1 
       (.I0(resetn),
        .I1(data_out[26]),
        .O(\adc_control.data_out[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[27]_i_1 
       (.I0(resetn),
        .I1(data_out[27]),
        .O(\adc_control.data_out[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[28]_i_1 
       (.I0(resetn),
        .I1(data_out[28]),
        .O(\adc_control.data_out[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[29]_i_1 
       (.I0(resetn),
        .I1(data_out[29]),
        .O(\adc_control.data_out[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2228888888888888)) 
    \adc_control.data_out[2]_i_1 
       (.I0(resetn),
        .I1(data_out[2]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(data_out[1]),
        .I5(data_out[0]),
        .O(\adc_control.data_out[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[30]_i_1 
       (.I0(resetn),
        .I1(data_out[30]),
        .O(\adc_control.data_out[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.data_out[31]_i_1 
       (.I0(resetn),
        .I1(data_out[31]),
        .O(\adc_control.data_out[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \adc_control.data_out[3]_i_1 
       (.I0(resetn),
        .I1(data_out[3]),
        .I2(data_out1),
        .I3(data_out[2]),
        .I4(data_out[0]),
        .I5(data_out[1]),
        .O(\adc_control.data_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adc_control.data_out[3]_i_2 
       (.I0(sim_done),
        .I1(reset_out),
        .O(data_out1));
  LUT5 #(
    .INIT(32'h22288888)) 
    \adc_control.data_out[4]_i_1 
       (.I0(resetn),
        .I1(data_out[4]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(\adc_control.data_out[4]_i_2_n_0 ),
        .O(\adc_control.data_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \adc_control.data_out[4]_i_2 
       (.I0(data_out[3]),
        .I1(data_out[1]),
        .I2(data_out[0]),
        .I3(data_out[2]),
        .O(\adc_control.data_out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h22288888)) 
    \adc_control.data_out[5]_i_1 
       (.I0(resetn),
        .I1(data_out[5]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(\adc_control.data_out[5]_i_2_n_0 ),
        .O(\adc_control.data_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \adc_control.data_out[5]_i_2 
       (.I0(data_out[4]),
        .I1(data_out[2]),
        .I2(data_out[0]),
        .I3(data_out[1]),
        .I4(data_out[3]),
        .O(\adc_control.data_out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h22288888)) 
    \adc_control.data_out[6]_i_1 
       (.I0(resetn),
        .I1(data_out[6]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(\adc_control.data_out[7]_i_2_n_0 ),
        .O(\adc_control.data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2228888888888888)) 
    \adc_control.data_out[7]_i_1 
       (.I0(resetn),
        .I1(data_out[7]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(data_out[6]),
        .I5(\adc_control.data_out[7]_i_2_n_0 ),
        .O(\adc_control.data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \adc_control.data_out[7]_i_2 
       (.I0(data_out[5]),
        .I1(data_out[3]),
        .I2(data_out[1]),
        .I3(data_out[0]),
        .I4(data_out[2]),
        .I5(data_out[4]),
        .O(\adc_control.data_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \adc_control.data_out[8]_i_1 
       (.I0(resetn),
        .I1(data_out[8]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(adc_active),
        .O(\adc_control.data_out[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \adc_control.data_out[9]_i_1 
       (.I0(resetn),
        .I1(data_out[9]),
        .I2(reset_out),
        .I3(sim_done),
        .I4(sim_active),
        .O(\adc_control.data_out[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[10]_i_1_n_0 ),
        .Q(data_out[10]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[11]_i_1_n_0 ),
        .Q(data_out[11]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[12]_i_1_n_0 ),
        .Q(data_out[12]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[13]_i_1_n_0 ),
        .Q(data_out[13]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[14]_i_1_n_0 ),
        .Q(data_out[14]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[15]_i_1_n_0 ),
        .Q(data_out[15]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[16]_i_1_n_0 ),
        .Q(data_out[16]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[17]_i_1_n_0 ),
        .Q(data_out[17]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[18]_i_1_n_0 ),
        .Q(data_out[18]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[19]_i_1_n_0 ),
        .Q(data_out[19]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[20]_i_1_n_0 ),
        .Q(data_out[20]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[21]_i_1_n_0 ),
        .Q(data_out[21]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[22]_i_1_n_0 ),
        .Q(data_out[22]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[23]_i_1_n_0 ),
        .Q(data_out[23]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[24]_i_1_n_0 ),
        .Q(data_out[24]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[25]_i_1_n_0 ),
        .Q(data_out[25]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[26]_i_1_n_0 ),
        .Q(data_out[26]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[27]_i_1_n_0 ),
        .Q(data_out[27]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[28]_i_1_n_0 ),
        .Q(data_out[28]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[29]_i_1_n_0 ),
        .Q(data_out[29]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[30]_i_1_n_0 ),
        .Q(data_out[30]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[31]_i_1_n_0 ),
        .Q(data_out[31]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[7]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[8]_i_1_n_0 ),
        .Q(data_out[8]),
        .R(stop_in));
  (* KEEP = "yes" *) 
  FDRE \adc_control.data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.data_out[9]_i_1_n_0 ),
        .Q(data_out[9]),
        .R(stop_in));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adc_control.reset_out_i_1 
       (.I0(reset_out),
        .I1(p_0_in1_in__0),
        .I2(\adc_control.reset_out_i_3_n_0 ),
        .I3(cmd_start),
        .I4(stop_in),
        .O(\adc_control.reset_out_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.reset_out_i_2 
       (.I0(data0[7]),
        .I1(data0[4]),
        .I2(data0[3]),
        .I3(data0[6]),
        .I4(data0[5]),
        .O(p_0_in1_in__0));
  LUT4 #(
    .INIT(16'hAFBA)) 
    \adc_control.reset_out_i_3 
       (.I0(reset_out),
        .I1(data0[0]),
        .I2(data0[2]),
        .I3(data0[1]),
        .O(\adc_control.reset_out_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.reset_out_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.reset_out_i_1_n_0 ),
        .Q(reset_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFE10EB00)) 
    \adc_control.sim_active_i_1 
       (.I0(p_0_in1_in__0),
        .I1(data0[2]),
        .I2(data0[0]),
        .I3(sim_active),
        .I4(data0[1]),
        .O(\adc_control.sim_active_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_active_reg 
       (.C(clk),
        .CE(cmd_start),
        .D(\adc_control.sim_active_i_1_n_0 ),
        .Q(sim_active),
        .R(\adc_control.adc_active_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_channel_reg[0] 
       (.C(clk),
        .CE(cmd_start),
        .D(data0[8]),
        .Q(sim_channel[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \adc_control.sim_channel_reg[1] 
       (.C(clk),
        .CE(cmd_start),
        .D(data0[9]),
        .Q(sim_channel[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h60606F606F606060)) 
    \adc_control.sim_count[0]_i_1 
       (.I0(data0[16]),
        .I1(data0[17]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(sim_done0),
        .I5(sim_count[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hB888B888B88888B8)) 
    \adc_control.sim_count[10]_i_1 
       (.I0(adc_count[11]),
        .I1(cmd_start),
        .I2(sim_pend),
        .I3(sim_count[10]),
        .I4(\adc_control.sim_count[10]_i_3_n_0 ),
        .I5(sim_count[9]),
        .O(p_0_in__0[10]));
  LUT3 #(
    .INIT(8'h78)) 
    \adc_control.sim_count[10]_i_2 
       (.I0(\adc_control.sim_count[9]_i_2_n_0 ),
        .I1(data0[26]),
        .I2(data0[27]),
        .O(adc_count[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adc_control.sim_count[10]_i_3 
       (.I0(sim_count[7]),
        .I1(sim_count[5]),
        .I2(\adc_control.sim_count[10]_i_4_n_0 ),
        .I3(sim_count[4]),
        .I4(sim_count[6]),
        .I5(sim_count[8]),
        .O(\adc_control.sim_count[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEF)) 
    \adc_control.sim_count[10]_i_4 
       (.I0(sim_count[2]),
        .I1(sim_count[0]),
        .I2(\adc_control.sim_count[1]_i_4_n_0 ),
        .I3(\adc_control.sim_count[1]_i_5_n_0 ),
        .I4(sim_count[1]),
        .I5(sim_count[3]),
        .O(\adc_control.sim_count[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB88888B8B888B888)) 
    \adc_control.sim_count[1]_i_1 
       (.I0(adc_count[2]),
        .I1(cmd_start),
        .I2(sim_pend),
        .I3(sim_count[1]),
        .I4(sim_count[0]),
        .I5(sim_done0),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \adc_control.sim_count[1]_i_2 
       (.I0(data0[16]),
        .I1(data0[17]),
        .I2(data0[18]),
        .O(adc_count[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.sim_count[1]_i_3 
       (.I0(sim_count[1]),
        .I1(sim_count[2]),
        .I2(sim_count[0]),
        .I3(\adc_control.sim_count[1]_i_4_n_0 ),
        .I4(\adc_control.sim_count[1]_i_5_n_0 ),
        .O(sim_done0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.sim_count[1]_i_4 
       (.I0(sim_count[8]),
        .I1(sim_count[7]),
        .I2(sim_count[10]),
        .I3(sim_count[9]),
        .O(\adc_control.sim_count[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.sim_count[1]_i_5 
       (.I0(sim_count[4]),
        .I1(sim_count[3]),
        .I2(sim_count[6]),
        .I3(sim_count[5]),
        .O(\adc_control.sim_count[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \adc_control.sim_count[2]_i_1 
       (.I0(data0[17]),
        .I1(data0[16]),
        .I2(data0[18]),
        .I3(data0[19]),
        .I4(cmd_start),
        .I5(\adc_control.sim_count[2]_i_2_n_0 ),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h88888828)) 
    \adc_control.sim_count[2]_i_2 
       (.I0(sim_pend),
        .I1(sim_count[2]),
        .I2(sim_done0),
        .I3(sim_count[0]),
        .I4(sim_count[1]),
        .O(\adc_control.sim_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888828888)) 
    \adc_control.sim_count[3]_i_2 
       (.I0(sim_pend),
        .I1(sim_count[3]),
        .I2(sim_count[1]),
        .I3(sim_count[0]),
        .I4(sim_done0),
        .I5(sim_count[2]),
        .O(\adc_control.sim_count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \adc_control.sim_count[3]_i_3 
       (.I0(data0[18]),
        .I1(data0[16]),
        .I2(data0[17]),
        .I3(data0[19]),
        .I4(data0[20]),
        .O(adc_count[4]));
  LUT5 #(
    .INIT(32'h60606F60)) 
    \adc_control.sim_count[4]_i_1 
       (.I0(\adc_control.sim_count[4]_i_2_n_0 ),
        .I1(data0[21]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(\adc_control.sim_count[4]_i_3_n_0 ),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \adc_control.sim_count[4]_i_2 
       (.I0(data0[20]),
        .I1(data0[18]),
        .I2(data0[16]),
        .I3(data0[17]),
        .I4(data0[19]),
        .O(\adc_control.sim_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFEFF)) 
    \adc_control.sim_count[4]_i_3 
       (.I0(sim_count[3]),
        .I1(sim_count[1]),
        .I2(sim_count[0]),
        .I3(sim_done0),
        .I4(sim_count[2]),
        .I5(sim_count[4]),
        .O(\adc_control.sim_count[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606060606F60)) 
    \adc_control.sim_count[5]_i_1 
       (.I0(\adc_control.sim_count[5]_i_2_n_0 ),
        .I1(data0[22]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(sim_count[5]),
        .I5(\adc_control.sim_count[5]_i_3_n_0 ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \adc_control.sim_count[5]_i_2 
       (.I0(data0[21]),
        .I1(data0[19]),
        .I2(data0[17]),
        .I3(data0[16]),
        .I4(data0[18]),
        .I5(data0[20]),
        .O(\adc_control.sim_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \adc_control.sim_count[5]_i_3 
       (.I0(sim_count[3]),
        .I1(sim_count[1]),
        .I2(sim_count[0]),
        .I3(sim_done0),
        .I4(sim_count[2]),
        .I5(sim_count[4]),
        .O(\adc_control.sim_count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606060606F60)) 
    \adc_control.sim_count[6]_i_1 
       (.I0(\adc_control.sim_count[6]_i_2_n_0 ),
        .I1(data0[23]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(sim_count[6]),
        .I5(\adc_control.sim_count[6]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \adc_control.sim_count[6]_i_2 
       (.I0(data0[22]),
        .I1(\adc_control.sim_count[5]_i_2_n_0 ),
        .O(\adc_control.sim_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \adc_control.sim_count[6]_i_3 
       (.I0(sim_count[4]),
        .I1(\adc_control.sim_count[10]_i_4_n_0 ),
        .I2(sim_count[5]),
        .O(\adc_control.sim_count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606060606F60)) 
    \adc_control.sim_count[7]_i_1 
       (.I0(\adc_control.sim_count[7]_i_2_n_0 ),
        .I1(data0[24]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(sim_count[7]),
        .I5(\adc_control.sim_count[7]_i_3_n_0 ),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \adc_control.sim_count[7]_i_2 
       (.I0(data0[23]),
        .I1(\adc_control.sim_count[5]_i_2_n_0 ),
        .I2(data0[22]),
        .O(\adc_control.sim_count[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.sim_count[7]_i_3 
       (.I0(sim_count[5]),
        .I1(\adc_control.sim_count[10]_i_4_n_0 ),
        .I2(sim_count[4]),
        .I3(sim_count[6]),
        .O(\adc_control.sim_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606060606F60)) 
    \adc_control.sim_count[8]_i_1 
       (.I0(\adc_control.sim_count[8]_i_2_n_0 ),
        .I1(data0[25]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(sim_count[8]),
        .I5(\adc_control.sim_count[8]_i_3_n_0 ),
        .O(p_0_in__0[8]));
  LUT4 #(
    .INIT(16'h8000)) 
    \adc_control.sim_count[8]_i_2 
       (.I0(data0[24]),
        .I1(data0[22]),
        .I2(\adc_control.sim_count[5]_i_2_n_0 ),
        .I3(data0[23]),
        .O(\adc_control.sim_count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.sim_count[8]_i_3 
       (.I0(sim_count[6]),
        .I1(sim_count[4]),
        .I2(\adc_control.sim_count[10]_i_4_n_0 ),
        .I3(sim_count[5]),
        .I4(sim_count[7]),
        .O(\adc_control.sim_count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606060606F60)) 
    \adc_control.sim_count[9]_i_1 
       (.I0(\adc_control.sim_count[9]_i_2_n_0 ),
        .I1(data0[26]),
        .I2(cmd_start),
        .I3(sim_pend),
        .I4(sim_count[9]),
        .I5(\adc_control.sim_count[10]_i_3_n_0 ),
        .O(p_0_in__0[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \adc_control.sim_count[9]_i_2 
       (.I0(data0[25]),
        .I1(data0[23]),
        .I2(\adc_control.sim_count[5]_i_2_n_0 ),
        .I3(data0[22]),
        .I4(data0[24]),
        .O(\adc_control.sim_count[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(sim_count[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(sim_count[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(sim_count[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(sim_count[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(sim_count[3]),
        .R(1'b0));
  MUXF7 \adc_control.sim_count_reg[3]_i_1 
       (.I0(\adc_control.sim_count[3]_i_2_n_0 ),
        .I1(adc_count[4]),
        .O(p_0_in__0[3]),
        .S(cmd_start));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(sim_count[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(sim_count[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(sim_count[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(sim_count[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(sim_count[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(sim_count[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[0]_i_1 
       (.I0(cmd_start),
        .I1(data_in[0]),
        .I2(sim_done0),
        .I3(sim_data[0]),
        .O(\adc_control.sim_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[10]_i_1 
       (.I0(cmd_start),
        .I1(data_in[10]),
        .I2(sim_done0),
        .I3(sim_data[10]),
        .O(\adc_control.sim_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[11]_i_1 
       (.I0(cmd_start),
        .I1(data_in[11]),
        .I2(sim_done0),
        .I3(sim_data[11]),
        .O(\adc_control.sim_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[12]_i_1 
       (.I0(cmd_start),
        .I1(data_in[12]),
        .I2(sim_done0),
        .I3(sim_data[12]),
        .O(\adc_control.sim_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[13]_i_1 
       (.I0(cmd_start),
        .I1(data_in[13]),
        .I2(sim_done0),
        .I3(sim_data[13]),
        .O(\adc_control.sim_data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[14]_i_1 
       (.I0(cmd_start),
        .I1(data_in[14]),
        .I2(sim_done0),
        .I3(sim_data[14]),
        .O(\adc_control.sim_data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[15]_i_1 
       (.I0(cmd_start),
        .I1(data_in[15]),
        .I2(sim_done0),
        .I3(sim_data[15]),
        .O(\adc_control.sim_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[16]_i_1 
       (.I0(cmd_start),
        .I1(data_in[16]),
        .I2(sim_done0),
        .I3(sim_data[16]),
        .O(\adc_control.sim_data[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[17]_i_1 
       (.I0(cmd_start),
        .I1(data_in[17]),
        .I2(sim_done0),
        .I3(sim_data[17]),
        .O(\adc_control.sim_data[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[18]_i_1 
       (.I0(cmd_start),
        .I1(data_in[18]),
        .I2(sim_done0),
        .I3(sim_data[18]),
        .O(\adc_control.sim_data[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[19]_i_1 
       (.I0(cmd_start),
        .I1(data_in[19]),
        .I2(sim_done0),
        .I3(sim_data[19]),
        .O(\adc_control.sim_data[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[1]_i_1 
       (.I0(cmd_start),
        .I1(data_in[1]),
        .I2(sim_done0),
        .I3(sim_data[1]),
        .O(\adc_control.sim_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[20]_i_1 
       (.I0(cmd_start),
        .I1(data_in[20]),
        .I2(sim_done0),
        .I3(sim_data[20]),
        .O(\adc_control.sim_data[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[21]_i_1 
       (.I0(cmd_start),
        .I1(data_in[21]),
        .I2(sim_done0),
        .I3(sim_data[21]),
        .O(\adc_control.sim_data[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[22]_i_1 
       (.I0(cmd_start),
        .I1(data_in[22]),
        .I2(sim_done0),
        .I3(sim_data[22]),
        .O(\adc_control.sim_data[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[23]_i_1 
       (.I0(cmd_start),
        .I1(data_in[23]),
        .I2(sim_done0),
        .I3(sim_data[23]),
        .O(\adc_control.sim_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[24]_i_1 
       (.I0(cmd_start),
        .I1(data_in[24]),
        .I2(sim_done0),
        .I3(sim_data[24]),
        .O(\adc_control.sim_data[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[25]_i_1 
       (.I0(cmd_start),
        .I1(data_in[25]),
        .I2(sim_done0),
        .I3(sim_data[25]),
        .O(\adc_control.sim_data[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[26]_i_1 
       (.I0(cmd_start),
        .I1(data_in[26]),
        .I2(sim_done0),
        .I3(sim_data[26]),
        .O(\adc_control.sim_data[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[27]_i_1 
       (.I0(cmd_start),
        .I1(data_in[27]),
        .I2(sim_done0),
        .I3(sim_data[27]),
        .O(\adc_control.sim_data[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[28]_i_1 
       (.I0(cmd_start),
        .I1(data_in[28]),
        .I2(sim_done0),
        .I3(sim_data[28]),
        .O(\adc_control.sim_data[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[29]_i_1 
       (.I0(cmd_start),
        .I1(data_in[29]),
        .I2(sim_done0),
        .I3(sim_data[29]),
        .O(\adc_control.sim_data[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[2]_i_1 
       (.I0(cmd_start),
        .I1(data_in[2]),
        .I2(sim_done0),
        .I3(sim_data[2]),
        .O(\adc_control.sim_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[30]_i_1 
       (.I0(cmd_start),
        .I1(data_in[30]),
        .I2(sim_done0),
        .I3(sim_data[30]),
        .O(\adc_control.sim_data[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adc_control.sim_data[31]_i_1 
       (.I0(cmd_start),
        .I1(sim_pend),
        .O(\adc_control.sim_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[31]_i_2 
       (.I0(cmd_start),
        .I1(data_in[31]),
        .I2(sim_done0),
        .I3(sim_data[31]),
        .O(\adc_control.sim_data[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[3]_i_1 
       (.I0(cmd_start),
        .I1(data_in[3]),
        .I2(sim_done0),
        .I3(sim_data[3]),
        .O(\adc_control.sim_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[4]_i_1 
       (.I0(cmd_start),
        .I1(data_in[4]),
        .I2(sim_done0),
        .I3(sim_data[4]),
        .O(\adc_control.sim_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[5]_i_1 
       (.I0(cmd_start),
        .I1(data_in[5]),
        .I2(sim_done0),
        .I3(sim_data[5]),
        .O(\adc_control.sim_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[6]_i_1 
       (.I0(cmd_start),
        .I1(data_in[6]),
        .I2(sim_done0),
        .I3(sim_data[6]),
        .O(\adc_control.sim_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[7]_i_1 
       (.I0(cmd_start),
        .I1(data_in[7]),
        .I2(sim_done0),
        .I3(sim_data[7]),
        .O(\adc_control.sim_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[8]_i_1 
       (.I0(cmd_start),
        .I1(data_in[8]),
        .I2(sim_done0),
        .I3(sim_data[8]),
        .O(\adc_control.sim_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \adc_control.sim_data[9]_i_1 
       (.I0(cmd_start),
        .I1(data_in[9]),
        .I2(sim_done0),
        .I3(sim_data[9]),
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
  LUT3 #(
    .INIT(8'h02)) 
    \adc_control.sim_done_i_1 
       (.I0(sim_pend),
        .I1(sim_done0),
        .I2(cmd_start),
        .O(\adc_control.sim_done_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_done_i_1_n_0 ),
        .Q(sim_done),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE000)) 
    \adc_control.sim_high_wr_i_1 
       (.I0(sim_high_wr),
        .I1(data0[10]),
        .I2(sim_pend),
        .I3(sim_done0),
        .O(\adc_control.sim_high_wr_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_high_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_high_wr_i_1_n_0 ),
        .Q(sim_high_wr),
        .R(cmd_start));
  LUT4 #(
    .INIT(16'h8808)) 
    \adc_control.sim_low_wr_i_1 
       (.I0(sim_done0),
        .I1(sim_pend),
        .I2(data0[10]),
        .I3(sim_low_wr),
        .O(sim_low_wr3_out));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_low_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(sim_low_wr3_out),
        .Q(sim_low_wr),
        .R(cmd_start));
  LUT5 #(
    .INIT(32'h888888A8)) 
    \adc_control.sim_pend_i_1 
       (.I0(\adc_control.sim_pend_i_2_n_0 ),
        .I1(cmd_start),
        .I2(resetn),
        .I3(stop_in),
        .I4(sim_done),
        .O(\adc_control.sim_pend_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \adc_control.sim_pend_i_2 
       (.I0(p_0_in1_in__0),
        .I1(data0[1]),
        .I2(data0[2]),
        .I3(data0[0]),
        .I4(cmd_start),
        .I5(sim_pend),
        .O(\adc_control.sim_pend_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.sim_pend_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.sim_pend_i_1_n_0 ),
        .Q(sim_pend),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \adc_control.wr_en[3]_i_1 
       (.I0(stop_in),
        .I1(resetn),
        .I2(\adc_control.wr_en[3]_i_3_n_0 ),
        .I3(\adc_control.wr_en[3]_i_4_n_0 ),
        .I4(\adc_control.wr_en[3]_i_5_n_0 ),
        .I5(\adc_control.wr_en[3]_i_6_n_0 ),
        .O(\adc_control.wr_en[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.wr_en[3]_i_10 
       (.I0(data_out[10]),
        .I1(data_out[11]),
        .I2(data_out[8]),
        .I3(data_out[9]),
        .O(\adc_control.wr_en[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \adc_control.wr_en[3]_i_2 
       (.I0(reset_out),
        .I1(sim_done),
        .I2(resetn),
        .O(\adc_control.wr_en[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.wr_en[3]_i_3 
       (.I0(data_out[21]),
        .I1(data_out[20]),
        .I2(data_out[23]),
        .I3(data_out[22]),
        .I4(\adc_control.wr_en[3]_i_7_n_0 ),
        .O(\adc_control.wr_en[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.wr_en[3]_i_4 
       (.I0(data_out[29]),
        .I1(data_out[28]),
        .I2(data_out[30]),
        .I3(data_out[31]),
        .I4(\adc_control.wr_en[3]_i_8_n_0 ),
        .O(\adc_control.wr_en[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.wr_en[3]_i_5 
       (.I0(data_out[5]),
        .I1(data_out[4]),
        .I2(data_out[7]),
        .I3(data_out[6]),
        .I4(\adc_control.wr_en[3]_i_9_n_0 ),
        .O(\adc_control.wr_en[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \adc_control.wr_en[3]_i_6 
       (.I0(data_out[13]),
        .I1(data_out[12]),
        .I2(data_out[15]),
        .I3(data_out[14]),
        .I4(\adc_control.wr_en[3]_i_10_n_0 ),
        .O(\adc_control.wr_en[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.wr_en[3]_i_7 
       (.I0(data_out[18]),
        .I1(data_out[19]),
        .I2(data_out[16]),
        .I3(data_out[17]),
        .O(\adc_control.wr_en[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc_control.wr_en[3]_i_8 
       (.I0(data_out[26]),
        .I1(data_out[27]),
        .I2(data_out[24]),
        .I3(data_out[25]),
        .O(\adc_control.wr_en[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adc_control.wr_en[3]_i_9 
       (.I0(data_out[2]),
        .I1(data_out[3]),
        .I2(data_out[0]),
        .I3(data_out[1]),
        .O(\adc_control.wr_en[3]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en[3]_i_2_n_0 ),
        .Q(wr_en[0]),
        .R(\adc_control.wr_en[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en[3]_i_2_n_0 ),
        .Q(wr_en[1]),
        .R(\adc_control.wr_en[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en[3]_i_2_n_0 ),
        .Q(wr_en[2]),
        .R(\adc_control.wr_en[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \adc_control.wr_en_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\adc_control.wr_en[3]_i_2_n_0 ),
        .Q(wr_en[3]),
        .R(\adc_control.wr_en[3]_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "ila_4,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_adc_control_0_0_ila_4 ila_4_i
       (.clk(clk),
        .probe0(resetn),
        .probe1(stop_in),
        .probe10(sim_high_wr),
        .probe11(sim_channel),
        .probe12(sim_data),
        .probe13(adc_active),
        .probe14(sim_active),
        .probe15(cmd_start),
        .probe16(sim_pend),
        .probe17(sim_done),
        .probe18(sim_count),
        .probe2(reset_out),
        .probe3(data_in),
        .probe4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,address}),
        .probe5(wr_en),
        .probe6(data_out),
        .probe7(cdata),
        .probe8(data0),
        .probe9(sim_low_wr));
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
    probe18);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [31:0]probe3;
  input [31:0]probe4;
  input [3:0]probe5;
  input [31:0]probe6;
  input [31:0]probe7;
  input [31:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [1:0]probe11;
  input [31:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [0:0]probe17;
  input [10:0]probe18;


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
