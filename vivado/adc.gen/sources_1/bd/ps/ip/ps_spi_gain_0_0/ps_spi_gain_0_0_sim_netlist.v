// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Nov 10 20:08:18 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_spi_gain_0_0/ps_spi_gain_0_0_sim_netlist.v
// Design      : ps_spi_gain_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_spi_gain_0_0,spi_gain,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_gain,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_spi_gain_0_0
   (clk,
    resetn,
    axi_in,
    axi_out,
    spi_clk,
    spi_in,
    spi_out,
    spi_sel);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [15:0]axi_in;
  output [15:0]axi_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_spi_gain_0_0_spi_clk, INSERT_VIP 0" *) output spi_clk;
  input spi_in;
  output spi_out;
  output [2:0]spi_sel;

  wire [15:0]axi_in;
  wire [15:0]axi_out;
  wire clk;
  wire resetn;
  wire spi_clk;
  wire spi_in;
  wire spi_out;
  wire [2:0]spi_sel;

  ps_spi_gain_0_0_spi_gain inst
       (.axi_in(axi_in),
        .axi_out(axi_out),
        .clk(clk),
        .resetn(resetn),
        .spi_clk(spi_clk),
        .spi_in(spi_in),
        .spi_out(spi_out),
        .spi_sel(spi_sel));
endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_spi_gain_0_0_ila_2
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
    probe20);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [2:0]probe2;
  input [2:0]probe3;
  input [7:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [2:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [3:0]probe12;
  input [14:0]probe13;
  input [7:0]probe14;
  input [0:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;
  input [0:0]probe18;
  input [0:0]probe19;
  input [2:0]probe20;


endmodule

(* ORIG_REF_NAME = "spi_gain" *) (* keep_hierarchy = "soft" *) 
module ps_spi_gain_0_0_spi_gain
   (clk,
    resetn,
    axi_in,
    axi_out,
    spi_clk,
    spi_in,
    spi_out,
    spi_sel);
  input clk;
  input resetn;
  input [15:0]axi_in;
  output [15:0]axi_out;
  output spi_clk;
  input spi_in;
  output spi_out;
  output [2:0]spi_sel;

  (* MARK_DEBUG *) wire [15:0]axi_out;
  wire [7:1]axi_out0_in;
  (* MARK_DEBUG *) wire busy;
  wire clk;
  (* MARK_DEBUG *) wire [3:0]counter;
  (* MARK_DEBUG *) wire curr_clk;
  wire curr_clk0;
  wire curr_clk2_out;
  wire curr_in;
  (* MARK_DEBUG *) wire curr_out;
  wire curr_out0_out;
  (* MARK_DEBUG *) wire curr_rd;
  wire curr_rd6_out;
  (* MARK_DEBUG *) wire [2:0]curr_sel;
  (* MARK_DEBUG *) wire [7:0]delay;
  wire [7:0]p_1_in__0;
  (* MARK_DEBUG *) wire prev_start;
  wire prev_start8_out;
  (* MARK_DEBUG *) wire [2:0]req_adr;
  (* MARK_DEBUG *) wire [7:0]req_data;
  (* MARK_DEBUG *) wire req_read;
  (* MARK_DEBUG *) wire [2:0]req_sel;
  (* MARK_DEBUG *) wire req_start;
  wire resetn;
  (* MARK_DEBUG *) wire [14:0]shift_data;
  (* MARK_DEBUG *) wire spi_clk;
  wire \spi_gain.axi_out[0]_i_1_n_0 ;
  wire \spi_gain.axi_out[0]_i_2_n_0 ;
  wire \spi_gain.axi_out[15]_i_1_n_0 ;
  wire \spi_gain.axi_out[7]_i_1_n_0 ;
  wire \spi_gain.busy_i_1_n_0 ;
  wire \spi_gain.busy_i_2_n_0 ;
  wire \spi_gain.counter[0]_i_1_n_0 ;
  wire \spi_gain.counter[1]_i_1_n_0 ;
  wire \spi_gain.counter[2]_i_1_n_0 ;
  wire \spi_gain.counter[3]_i_1_n_0 ;
  wire \spi_gain.counter[3]_i_2_n_0 ;
  wire \spi_gain.counter[3]_i_3_n_0 ;
  wire \spi_gain.curr_sel[0]_i_1_n_0 ;
  wire \spi_gain.curr_sel[1]_i_1_n_0 ;
  wire \spi_gain.curr_sel[2]_i_1_n_0 ;
  wire \spi_gain.delay[4]_i_1_n_0 ;
  wire \spi_gain.delay[4]_i_2_n_0 ;
  wire \spi_gain.delay[7]_i_1_n_0 ;
  wire \spi_gain.delay[7]_i_3_n_0 ;
  wire \spi_gain.delay[7]_i_4_n_0 ;
  wire \spi_gain.delay[7]_i_5_n_0 ;
  wire \spi_gain.shift_data[0]_i_1_n_0 ;
  wire \spi_gain.shift_data[10]_i_1_n_0 ;
  wire \spi_gain.shift_data[11]_i_1_n_0 ;
  wire \spi_gain.shift_data[12]_i_1_n_0 ;
  wire \spi_gain.shift_data[13]_i_1_n_0 ;
  wire \spi_gain.shift_data[14]_i_1_n_0 ;
  wire \spi_gain.shift_data[1]_i_1_n_0 ;
  wire \spi_gain.shift_data[2]_i_1_n_0 ;
  wire \spi_gain.shift_data[3]_i_1_n_0 ;
  wire \spi_gain.shift_data[4]_i_1_n_0 ;
  wire \spi_gain.shift_data[5]_i_1_n_0 ;
  wire \spi_gain.shift_data[6]_i_1_n_0 ;
  wire \spi_gain.shift_data[7]_i_1_n_0 ;
  wire \spi_gain.shift_data[8]_i_1_n_0 ;
  wire \spi_gain.shift_data[9]_i_1_n_0 ;
  wire \spi_gain.spi_clk_i_1_n_0 ;
  wire \spi_gain.spi_in_1_reg_n_0 ;
  wire \spi_gain.spi_in_2_i_1_n_0 ;
  wire \spi_gain.spi_out_i_1_n_0 ;
  wire \spi_gain.spi_sel[0]_i_1_n_0 ;
  wire \spi_gain.spi_sel[1]_i_1_n_0 ;
  wire \spi_gain.spi_sel[2]_i_1_n_0 ;
  wire \spi_gain.start_i_1_n_0 ;
  wire spi_in;
  wire spi_in_1;
  wire spi_in_2;
  (* MARK_DEBUG *) wire spi_out;
  (* MARK_DEBUG *) wire [2:0]spi_sel;
  (* MARK_DEBUG *) wire start;
  (* MARK_DEBUG *) wire toggle_clk;

  assign req_adr = axi_in[10:8];
  assign req_data = axi_in[7:0];
  assign req_read = axi_in[14];
  assign req_sel = axi_in[13:11];
  assign req_start = axi_in[15];
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(axi_out[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(axi_out[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(axi_out[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(axi_out[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(axi_out[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(axi_out[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(axi_out[8]));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_spi_gain_0_0_ila_2 ila_i
       (.clk(clk),
        .probe0(req_start),
        .probe1(req_read),
        .probe10(curr_out),
        .probe11(curr_rd),
        .probe12(counter),
        .probe13(shift_data),
        .probe14(delay),
        .probe15(toggle_clk),
        .probe16({req_start,req_read,req_sel,req_adr,req_data}),
        .probe17(axi_out),
        .probe18(spi_clk),
        .probe19(spi_out),
        .probe2(req_sel),
        .probe20(spi_sel),
        .probe3(req_adr),
        .probe4(req_data),
        .probe5(prev_start),
        .probe6(start),
        .probe7(busy),
        .probe8(curr_sel),
        .probe9(curr_clk));
  LUT6 #(
    .INIT(64'h00000000BAAA8AAA)) 
    \spi_gain.axi_out[0]_i_1 
       (.I0(axi_out[0]),
        .I1(curr_clk),
        .I2(curr_rd),
        .I3(toggle_clk),
        .I4(curr_in),
        .I5(\spi_gain.axi_out[0]_i_2_n_0 ),
        .O(\spi_gain.axi_out[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \spi_gain.axi_out[0]_i_2 
       (.I0(start),
        .I1(resetn),
        .O(\spi_gain.axi_out[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[15]_i_1 
       (.I0(resetn),
        .I1(busy),
        .O(\spi_gain.axi_out[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[1]_i_1 
       (.I0(resetn),
        .I1(axi_out[0]),
        .O(axi_out0_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[2]_i_1 
       (.I0(resetn),
        .I1(axi_out[1]),
        .O(axi_out0_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[3]_i_1 
       (.I0(resetn),
        .I1(axi_out[2]),
        .O(axi_out0_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[4]_i_1 
       (.I0(resetn),
        .I1(axi_out[3]),
        .O(axi_out0_in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[5]_i_1 
       (.I0(resetn),
        .I1(axi_out[4]),
        .O(axi_out0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[6]_i_1 
       (.I0(resetn),
        .I1(axi_out[5]),
        .O(axi_out0_in[6]));
  LUT4 #(
    .INIT(16'h40FF)) 
    \spi_gain.axi_out[7]_i_1 
       (.I0(curr_clk),
        .I1(curr_rd),
        .I2(toggle_clk),
        .I3(resetn),
        .O(\spi_gain.axi_out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.axi_out[7]_i_2 
       (.I0(resetn),
        .I1(axi_out[6]),
        .O(axi_out0_in[7]));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.axi_out[0]_i_1_n_0 ),
        .Q(axi_out[0]),
        .R(1'b0));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.axi_out[15]_i_1_n_0 ),
        .Q(axi_out[15]),
        .R(1'b0));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[1] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[1]),
        .Q(axi_out[1]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[2] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[2]),
        .Q(axi_out[2]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[3] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[3]),
        .Q(axi_out[3]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[4] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[4]),
        .Q(axi_out[4]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[5] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[5]),
        .Q(axi_out[5]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[6] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[6]),
        .Q(axi_out[6]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.axi_out_reg[7] 
       (.C(clk),
        .CE(\spi_gain.axi_out[7]_i_1_n_0 ),
        .D(axi_out0_in[7]),
        .Q(axi_out[7]),
        .R(\spi_gain.counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF0000AAAA0000)) 
    \spi_gain.busy_i_1 
       (.I0(start),
        .I1(\spi_gain.busy_i_2_n_0 ),
        .I2(toggle_clk),
        .I3(curr_clk),
        .I4(resetn),
        .I5(busy),
        .O(\spi_gain.busy_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_gain.busy_i_2 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(\spi_gain.busy_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.busy_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.busy_i_1_n_0 ),
        .Q(busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888888822222220)) 
    \spi_gain.counter[0]_i_1 
       (.I0(resetn),
        .I1(\spi_gain.counter[3]_i_3_n_0 ),
        .I2(counter[3]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(\spi_gain.counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00AA0000A8)) 
    \spi_gain.counter[1]_i_1 
       (.I0(resetn),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\spi_gain.counter[3]_i_3_n_0 ),
        .I5(counter[0]),
        .O(\spi_gain.counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA80002AAA80000)) 
    \spi_gain.counter[2]_i_1 
       (.I0(resetn),
        .I1(counter[0]),
        .I2(\spi_gain.counter[3]_i_3_n_0 ),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[3]),
        .O(\spi_gain.counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.counter[3]_i_1 
       (.I0(resetn),
        .I1(start),
        .O(\spi_gain.counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \spi_gain.counter[3]_i_2 
       (.I0(counter[0]),
        .I1(\spi_gain.counter[3]_i_3_n_0 ),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(resetn),
        .O(\spi_gain.counter[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \spi_gain.counter[3]_i_3 
       (.I0(curr_clk),
        .I1(toggle_clk),
        .O(\spi_gain.counter[3]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .S(\spi_gain.counter[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .S(\spi_gain.counter[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .S(\spi_gain.counter[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.counter[3]_i_2_n_0 ),
        .Q(counter[3]),
        .S(\spi_gain.counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA208)) 
    \spi_gain.curr_clk_i_1 
       (.I0(resetn),
        .I1(toggle_clk),
        .I2(start),
        .I3(curr_clk),
        .O(curr_clk2_out));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.curr_clk_reg 
       (.C(clk),
        .CE(1'b1),
        .D(curr_clk2_out),
        .Q(curr_clk),
        .R(1'b0));
  FDRE \spi_gain.curr_in_reg 
       (.C(clk),
        .CE(1'b1),
        .D(spi_in_2),
        .Q(curr_in),
        .R(\spi_gain.spi_in_2_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080B0B0B0808080)) 
    \spi_gain.curr_out_i_1 
       (.I0(req_read),
        .I1(start),
        .I2(resetn),
        .I3(curr_out),
        .I4(\spi_gain.counter[3]_i_3_n_0 ),
        .I5(shift_data[14]),
        .O(curr_out0_out));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.curr_out_reg 
       (.C(clk),
        .CE(1'b1),
        .D(curr_out0_out),
        .Q(curr_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB080)) 
    \spi_gain.curr_rd_i_1 
       (.I0(req_read),
        .I1(start),
        .I2(resetn),
        .I3(curr_rd),
        .O(curr_rd6_out));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.curr_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(curr_rd6_out),
        .Q(curr_rd),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_gain.curr_sel[0]_i_1 
       (.I0(req_sel[0]),
        .I1(start),
        .I2(curr_sel[0]),
        .O(\spi_gain.curr_sel[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_gain.curr_sel[1]_i_1 
       (.I0(req_sel[1]),
        .I1(start),
        .I2(curr_sel[1]),
        .O(\spi_gain.curr_sel[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_gain.curr_sel[2]_i_1 
       (.I0(req_sel[2]),
        .I1(start),
        .I2(curr_sel[2]),
        .O(\spi_gain.curr_sel[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.curr_sel_reg[0] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.curr_sel[0]_i_1_n_0 ),
        .Q(curr_sel[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.curr_sel_reg[1] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.curr_sel[1]_i_1_n_0 ),
        .Q(curr_sel[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.curr_sel_reg[2] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.curr_sel[2]_i_1_n_0 ),
        .Q(curr_sel[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFD0000)) 
    \spi_gain.delay[0]_i_1 
       (.I0(\spi_gain.delay[7]_i_3_n_0 ),
        .I1(delay[3]),
        .I2(delay[2]),
        .I3(delay[1]),
        .I4(resetn),
        .I5(delay[0]),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'h8282828282828082)) 
    \spi_gain.delay[1]_i_1 
       (.I0(resetn),
        .I1(delay[1]),
        .I2(delay[0]),
        .I3(\spi_gain.delay[7]_i_3_n_0 ),
        .I4(delay[3]),
        .I5(delay[2]),
        .O(p_1_in__0[1]));
  LUT5 #(
    .INIT(32'h88820000)) 
    \spi_gain.delay[2]_i_1 
       (.I0(resetn),
        .I1(delay[2]),
        .I2(delay[0]),
        .I3(delay[1]),
        .I4(busy),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hCCCCCCC000000004)) 
    \spi_gain.delay[3]_i_1 
       (.I0(\spi_gain.delay[7]_i_3_n_0 ),
        .I1(resetn),
        .I2(delay[2]),
        .I3(delay[0]),
        .I4(delay[1]),
        .I5(delay[3]),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \spi_gain.delay[4]_i_1 
       (.I0(delay[2]),
        .I1(delay[3]),
        .I2(delay[0]),
        .I3(delay[1]),
        .I4(\spi_gain.delay[7]_i_3_n_0 ),
        .I5(\spi_gain.axi_out[15]_i_1_n_0 ),
        .O(\spi_gain.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \spi_gain.delay[4]_i_2 
       (.I0(delay[0]),
        .I1(delay[1]),
        .I2(delay[2]),
        .I3(delay[3]),
        .I4(delay[4]),
        .I5(\spi_gain.axi_out[15]_i_1_n_0 ),
        .O(\spi_gain.delay[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000F00000E000)) 
    \spi_gain.delay[5]_i_1 
       (.I0(delay[7]),
        .I1(delay[6]),
        .I2(resetn),
        .I3(\spi_gain.delay[7]_i_5_n_0 ),
        .I4(delay[4]),
        .I5(delay[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hCCCCC0CC00000800)) 
    \spi_gain.delay[6]_i_1 
       (.I0(delay[7]),
        .I1(resetn),
        .I2(delay[4]),
        .I3(\spi_gain.delay[7]_i_5_n_0 ),
        .I4(delay[5]),
        .I5(delay[6]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'h00080008AAAAAAA2)) 
    \spi_gain.delay[7]_i_1 
       (.I0(resetn),
        .I1(\spi_gain.delay[7]_i_3_n_0 ),
        .I2(\spi_gain.delay[7]_i_4_n_0 ),
        .I3(delay[1]),
        .I4(delay[0]),
        .I5(busy),
        .O(\spi_gain.delay[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB000000000000)) 
    \spi_gain.delay[7]_i_2 
       (.I0(delay[4]),
        .I1(\spi_gain.delay[7]_i_5_n_0 ),
        .I2(delay[5]),
        .I3(delay[6]),
        .I4(delay[7]),
        .I5(resetn),
        .O(p_1_in__0[7]));
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_gain.delay[7]_i_3 
       (.I0(delay[5]),
        .I1(delay[6]),
        .I2(delay[4]),
        .I3(delay[7]),
        .O(\spi_gain.delay[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_gain.delay[7]_i_4 
       (.I0(delay[3]),
        .I1(delay[2]),
        .O(\spi_gain.delay[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_gain.delay[7]_i_5 
       (.I0(delay[0]),
        .I1(delay[1]),
        .I2(delay[2]),
        .I3(delay[3]),
        .O(\spi_gain.delay[7]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(delay[0]),
        .R(\spi_gain.delay[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(delay[1]),
        .R(\spi_gain.delay[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(delay[2]),
        .S(\spi_gain.delay[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[3]),
        .Q(delay[3]),
        .R(\spi_gain.delay[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.delay[4]_i_2_n_0 ),
        .Q(delay[4]),
        .S(\spi_gain.delay[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.delay_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[5]),
        .Q(delay[5]),
        .R(\spi_gain.delay[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.delay_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[6]),
        .Q(delay[6]),
        .R(\spi_gain.delay[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.delay_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[7]),
        .Q(delay[7]),
        .R(\spi_gain.delay[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_gain.prev_start_i_1 
       (.I0(resetn),
        .I1(req_start),
        .O(prev_start8_out));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.prev_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(prev_start8_out),
        .Q(prev_start),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCCC0AAA)) 
    \spi_gain.shift_data[0]_i_1 
       (.I0(shift_data[0]),
        .I1(req_data[0]),
        .I2(curr_clk),
        .I3(toggle_clk),
        .I4(start),
        .O(\spi_gain.shift_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[10]_i_1 
       (.I0(req_adr[2]),
        .I1(start),
        .I2(shift_data[10]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[9]),
        .O(\spi_gain.shift_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000CAAA)) 
    \spi_gain.shift_data[11]_i_1 
       (.I0(shift_data[11]),
        .I1(shift_data[10]),
        .I2(toggle_clk),
        .I3(curr_clk),
        .I4(start),
        .O(\spi_gain.shift_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000CAAA)) 
    \spi_gain.shift_data[12]_i_1 
       (.I0(shift_data[12]),
        .I1(shift_data[11]),
        .I2(toggle_clk),
        .I3(curr_clk),
        .I4(start),
        .O(\spi_gain.shift_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000CAAA)) 
    \spi_gain.shift_data[13]_i_1 
       (.I0(shift_data[13]),
        .I1(shift_data[12]),
        .I2(toggle_clk),
        .I3(curr_clk),
        .I4(start),
        .O(\spi_gain.shift_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000CAAA)) 
    \spi_gain.shift_data[14]_i_1 
       (.I0(shift_data[14]),
        .I1(shift_data[13]),
        .I2(toggle_clk),
        .I3(curr_clk),
        .I4(start),
        .O(\spi_gain.shift_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[1]_i_1 
       (.I0(req_data[1]),
        .I1(start),
        .I2(shift_data[1]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[0]),
        .O(\spi_gain.shift_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[2]_i_1 
       (.I0(req_data[2]),
        .I1(start),
        .I2(shift_data[2]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[1]),
        .O(\spi_gain.shift_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[3]_i_1 
       (.I0(req_data[3]),
        .I1(start),
        .I2(shift_data[3]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[2]),
        .O(\spi_gain.shift_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[4]_i_1 
       (.I0(req_data[4]),
        .I1(start),
        .I2(shift_data[4]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[3]),
        .O(\spi_gain.shift_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[5]_i_1 
       (.I0(req_data[5]),
        .I1(start),
        .I2(shift_data[5]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[4]),
        .O(\spi_gain.shift_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[6]_i_1 
       (.I0(req_data[6]),
        .I1(start),
        .I2(shift_data[6]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[5]),
        .O(\spi_gain.shift_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[7]_i_1 
       (.I0(req_data[7]),
        .I1(start),
        .I2(shift_data[7]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[6]),
        .O(\spi_gain.shift_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[8]_i_1 
       (.I0(req_adr[0]),
        .I1(start),
        .I2(shift_data[8]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[7]),
        .O(\spi_gain.shift_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B888B8B8B8)) 
    \spi_gain.shift_data[9]_i_1 
       (.I0(req_adr[1]),
        .I1(start),
        .I2(shift_data[9]),
        .I3(curr_clk),
        .I4(toggle_clk),
        .I5(shift_data[8]),
        .O(\spi_gain.shift_data[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[0] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[0]_i_1_n_0 ),
        .Q(shift_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[10] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[10]_i_1_n_0 ),
        .Q(shift_data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[11] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[11]_i_1_n_0 ),
        .Q(shift_data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[12] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[12]_i_1_n_0 ),
        .Q(shift_data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[13] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[13]_i_1_n_0 ),
        .Q(shift_data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[14] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[14]_i_1_n_0 ),
        .Q(shift_data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[1] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[1]_i_1_n_0 ),
        .Q(shift_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[2] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[2]_i_1_n_0 ),
        .Q(shift_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[3] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[3]_i_1_n_0 ),
        .Q(shift_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[4] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[4]_i_1_n_0 ),
        .Q(shift_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[5] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[5]_i_1_n_0 ),
        .Q(shift_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[6] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[6]_i_1_n_0 ),
        .Q(shift_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[7] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[7]_i_1_n_0 ),
        .Q(shift_data[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[8] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[8]_i_1_n_0 ),
        .Q(shift_data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \spi_gain.shift_data_reg[9] 
       (.C(clk),
        .CE(resetn),
        .D(\spi_gain.shift_data[9]_i_1_n_0 ),
        .Q(shift_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_gain.spi_clk_i_1 
       (.I0(resetn),
        .O(\spi_gain.spi_clk_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_gain.spi_clk_i_2 
       (.I0(curr_clk),
        .O(curr_clk0));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.spi_clk_reg 
       (.C(clk),
        .CE(1'b1),
        .D(curr_clk0),
        .Q(spi_clk),
        .S(\spi_gain.spi_clk_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \spi_gain.spi_in_1_i_1 
       (.I0(spi_in),
        .I1(curr_rd),
        .I2(resetn),
        .O(spi_in_1));
  FDRE \spi_gain.spi_in_1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(spi_in_1),
        .Q(\spi_gain.spi_in_1_reg_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \spi_gain.spi_in_2_i_1 
       (.I0(resetn),
        .I1(curr_rd),
        .O(\spi_gain.spi_in_2_i_1_n_0 ));
  FDRE \spi_gain.spi_in_2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.spi_in_1_reg_n_0 ),
        .Q(spi_in_2),
        .R(\spi_gain.spi_in_2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_gain.spi_out_i_1 
       (.I0(curr_out),
        .O(\spi_gain.spi_out_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \spi_gain.spi_out_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.spi_out_i_1_n_0 ),
        .Q(spi_out),
        .S(\spi_gain.spi_clk_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \spi_gain.spi_sel[0]_i_1 
       (.I0(curr_sel[0]),
        .I1(busy),
        .I2(resetn),
        .O(\spi_gain.spi_sel[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \spi_gain.spi_sel[1]_i_1 
       (.I0(curr_sel[1]),
        .I1(busy),
        .I2(resetn),
        .O(\spi_gain.spi_sel[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \spi_gain.spi_sel[2]_i_1 
       (.I0(curr_sel[2]),
        .I1(busy),
        .I2(resetn),
        .O(\spi_gain.spi_sel[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_sel_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.spi_sel[0]_i_1_n_0 ),
        .Q(spi_sel[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_sel_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.spi_sel[1]_i_1_n_0 ),
        .Q(spi_sel[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.spi_sel_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.spi_sel[2]_i_1_n_0 ),
        .Q(spi_sel[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \spi_gain.start_i_1 
       (.I0(prev_start),
        .I1(resetn),
        .I2(req_start),
        .O(\spi_gain.start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.start_i_1_n_0 ),
        .Q(start),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \spi_gain.toggle_clk_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_gain.delay[4]_i_1_n_0 ),
        .Q(toggle_clk),
        .R(1'b0));
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
