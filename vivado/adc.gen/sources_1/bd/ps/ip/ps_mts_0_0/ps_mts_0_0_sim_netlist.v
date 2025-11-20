// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Nov 19 21:46:54 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_sim_netlist.v
// Design      : ps_mts_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_mts_0_0,mts,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mts,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_mts_0_0
   (pl_clk,
    pl_sysref,
    sys_reset,
    axi_clk,
    axi_reset_in,
    axi_reset_out,
    axi_adc_active,
    axi_sim_active,
    axi_stop,
    deci_clk,
    deci_resetn,
    deci_stop_low,
    deci_stop_high,
    deci_adc_active,
    deci_sim_active,
    comp0_clk,
    comp0_reset,
    comp1_clk,
    comp1_reset,
    doa0_clk,
    doa0_reset,
    doa1_clk,
    doa1_reset,
    user_sysref_adc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0" *) input pl_clk;
  input pl_sysref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input sys_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input axi_clk;
  input axi_reset_in;
  output axi_reset_out;
  input axi_adc_active;
  input axi_sim_active;
  output axi_stop;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) output deci_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 deci_resetn RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output deci_resetn;
  input deci_stop_low;
  input deci_stop_high;
  output deci_adc_active;
  output deci_sim_active;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) output comp0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 comp1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) output comp1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 comp1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output comp1_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa0_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_clk, ASSOCIATED_RESET doa0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) output doa0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa0_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa0_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa1_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_clk, ASSOCIATED_RESET doa1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) output doa1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 doa1_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output doa1_reset;
  output user_sysref_adc;

  wire axi_adc_active;
  wire axi_clk;
  wire axi_reset_in;
  wire axi_reset_out;
  wire axi_sim_active;
  wire axi_stop;
  wire comp0_clk;
  wire comp0_reset;
  wire comp1_clk;
  wire comp1_reset;
  wire deci_adc_active;
  wire deci_clk;
  wire deci_resetn;
  wire deci_sim_active;
  wire deci_stop_high;
  wire deci_stop_low;
  wire doa0_clk;
  wire doa0_reset;
  wire doa1_clk;
  wire doa1_reset;
  wire pl_clk;
  wire pl_sysref;
  wire sys_reset;
  wire user_sysref_adc;

  ps_mts_0_0_mts inst
       (.axi_adc_active(axi_adc_active),
        .axi_clk(axi_clk),
        .axi_reset_in(axi_reset_in),
        .axi_reset_out(axi_reset_out),
        .axi_sim_active(axi_sim_active),
        .axi_stop(axi_stop),
        .comp0_clk(comp0_clk),
        .comp0_reset(comp0_reset),
        .comp1_clk(comp1_clk),
        .comp1_reset(comp1_reset),
        .deci_adc_active(deci_adc_active),
        .deci_clk(deci_clk),
        .deci_resetn(deci_resetn),
        .deci_sim_active(deci_sim_active),
        .deci_stop_high(deci_stop_high),
        .deci_stop_low(deci_stop_low),
        .doa0_clk(doa0_clk),
        .doa0_reset(doa0_reset),
        .doa1_clk(doa1_clk),
        .doa1_reset(doa1_reset),
        .pl_clk(pl_clk),
        .pl_sysref(pl_sysref),
        .sys_reset(sys_reset),
        .user_sysref_adc(user_sysref_adc));
endmodule

(* ORIG_REF_NAME = "clk_wiz_adc" *) 
module ps_mts_0_0_clk_wiz_adc
   (clk_out1,
    clk_out2,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  (* syn_isclock = "1" *) output clk_out2;
  output locked;
  input clk_in1;


endmodule

(* ORIG_REF_NAME = "clk_wiz_adc" *) 
module ps_mts_0_0_clk_wiz_adc_HD1
   (clk_in1,
    clk_out1,
    clk_out2,
    locked);
  input clk_in1;
  (* syn_isclock = "1" *) output clk_out1;
  (* syn_isclock = "1" *) output clk_out2;
  output locked;


endmodule

(* ORIG_REF_NAME = "clk_wiz_deci" *) 
module ps_mts_0_0_clk_wiz_deci
   (clk_out1,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  output locked;
  input clk_in1;


endmodule

(* ORIG_REF_NAME = "mts" *) 
module ps_mts_0_0_mts
   (pl_clk,
    pl_sysref,
    sys_reset,
    axi_clk,
    axi_reset_in,
    axi_reset_out,
    axi_adc_active,
    axi_sim_active,
    axi_stop,
    deci_clk,
    deci_resetn,
    deci_stop_low,
    deci_stop_high,
    deci_adc_active,
    deci_sim_active,
    comp0_clk,
    comp0_reset,
    comp1_clk,
    comp1_reset,
    doa0_clk,
    doa0_reset,
    doa1_clk,
    doa1_reset,
    user_sysref_adc);
  input pl_clk;
  input pl_sysref;
  input sys_reset;
  input axi_clk;
  input axi_reset_in;
  output axi_reset_out;
  input axi_adc_active;
  input axi_sim_active;
  output axi_stop;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DECI_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output deci_clk;
  output deci_resetn;
  input deci_stop_low;
  input deci_stop_high;
  output deci_adc_active;
  output deci_sim_active;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output comp0_clk;
  output comp0_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMP1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output comp1_clk;
  output comp1_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA0_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output doa0_clk;
  output doa0_reset;
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DOA1_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0" *) output doa1_clk;
  output doa1_reset;
  output user_sysref_adc;

  wire adc_active;
  wire axi_adc_active;
  wire axi_clk;
  wire axi_reset;
  (* async_reg = "true" *) wire axi_reset_1;
  (* async_reg = "true" *) wire axi_reset_2;
  wire axi_reset_in;
  wire axi_reset_out;
  wire axi_sim_active;
  wire axi_stop;
  wire axi_stop0;
  (* async_reg = "true" *) wire axi_stop_1;
  (* async_reg = "true" *) wire axi_stop_2;
  wire axi_stop_curr;
  wire axi_stop_prev;
  wire comp0_clk;
  wire comp0_reset;
  (* async_reg = "true" *) wire comp0_reset_1;
  (* async_reg = "true" *) wire comp0_reset_2;
  wire comp1_clk;
  wire comp1_reset;
  (* async_reg = "true" *) wire comp1_reset_1;
  (* async_reg = "true" *) wire comp1_reset_2;
  wire comp_locked;
  wire deci_adc_active;
  (* async_reg = "true" *) wire deci_adc_active_1;
  (* async_reg = "true" *) wire deci_adc_active_2;
  wire deci_clk;
  wire deci_locked;
  (* async_reg = "true" *) wire [3:0]deci_release_cnt;
  (* async_reg = "true" *) wire deci_reset_1;
  (* async_reg = "true" *) wire deci_reset_2;
  (* async_reg = "true" *) wire deci_reset_async;
  wire deci_resetn;
  wire deci_sim_active;
  (* async_reg = "true" *) wire deci_sim_active_1;
  (* async_reg = "true" *) wire deci_sim_active_2;
  wire deci_stop;
  wire deci_stop_count0;
  wire [0:0]deci_stop_count0__0;
  wire deci_stop_high;
  wire deci_stop_low;
  wire doa0_clk;
  wire doa0_reset;
  (* async_reg = "true" *) wire doa0_reset_1;
  (* async_reg = "true" *) wire doa0_reset_2;
  wire doa1_clk;
  wire doa1_reset;
  (* async_reg = "true" *) wire doa1_reset_1;
  (* async_reg = "true" *) wire doa1_reset_2;
  wire doa_locked;
  wire \mts.comp0_reset_1_reg0 ;
  wire \mts.deci_release_cnt[0]_i_1_n_0 ;
  wire \mts.deci_release_cnt[1]_i_1_n_0 ;
  wire \mts.deci_release_cnt[2]_i_1_n_0 ;
  wire \mts.deci_release_cnt[3]_i_1_n_0 ;
  wire \mts.deci_release_cnt[3]_i_2_n_0 ;
  wire \mts.deci_reset_async_i_1_n_0 ;
  wire \mts.deci_resetn_i_1_n_0 ;
  wire \mts.deci_stop_count[1]_i_1_n_0 ;
  wire \mts.deci_stop_count[2]_i_2_n_0 ;
  wire \mts.deci_stop_count[3]_i_1_n_0 ;
  wire [3:0]\mts.deci_stop_count_reg ;
  wire \mts.doa0_reset_1_reg0 ;
  wire pl_clk;
  wire pl_clk_buf;
  wire pl_sysref;
  wire rst_async;
  wire sel;
  wire sim_active;
  wire sys_reset;
  (* async_reg = "true" *) wire sysref_r;
  (* async_reg = "true" *) wire [2:0]sysref_sync;

  assign user_sysref_adc = sysref_sync[2];
  ps_mts_0_0_clk_wiz_adc clk_wiz_comp_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(comp0_clk),
        .clk_out2(comp1_clk),
        .locked(comp_locked));
  ps_mts_0_0_clk_wiz_deci clk_wiz_deci_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(deci_clk),
        .locked(deci_locked));
  ps_mts_0_0_clk_wiz_adc_HD1 clk_wiz_doa_i
       (.clk_in1(pl_clk_buf),
        .clk_out1(doa0_clk),
        .clk_out2(doa1_clk),
        .locked(doa_locked));
  FDRE \mts.adc_active_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_adc_active),
        .Q(adc_active),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.axi_reset_1_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(deci_reset_async),
        .Q(axi_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.axi_reset_2_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_reset_1),
        .Q(axi_reset_2),
        .R(1'b0));
  FDRE \mts.axi_reset_out_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_reset_2),
        .Q(axi_reset_out),
        .R(1'b0));
  FDRE \mts.axi_reset_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_reset_in),
        .Q(axi_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.axi_stop_1_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(deci_stop),
        .Q(axi_stop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.axi_stop_2_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_stop_1),
        .Q(axi_stop_2),
        .R(1'b0));
  FDRE \mts.axi_stop_curr_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_stop_2),
        .Q(axi_stop_curr),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \mts.axi_stop_i_1 
       (.I0(axi_stop_curr),
        .I1(axi_stop_prev),
        .O(axi_stop0));
  FDRE \mts.axi_stop_prev_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_stop_curr),
        .Q(axi_stop_prev),
        .R(1'b0));
  FDRE \mts.axi_stop_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_stop0),
        .Q(axi_stop),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.comp0_reset_1_i_1 
       (.I0(deci_reset_async),
        .I1(comp_locked),
        .O(\mts.comp0_reset_1_reg0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp0_reset_1_reg 
       (.C(comp0_clk),
        .CE(1'b1),
        .D(\mts.comp0_reset_1_reg0 ),
        .Q(comp0_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp0_reset_2_reg 
       (.C(comp0_clk),
        .CE(1'b1),
        .D(comp0_reset_1),
        .Q(comp0_reset_2),
        .R(1'b0));
  FDRE \mts.comp0_reset_reg 
       (.C(comp0_clk),
        .CE(1'b1),
        .D(comp0_reset_2),
        .Q(comp0_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp1_reset_1_reg 
       (.C(comp1_clk),
        .CE(1'b1),
        .D(\mts.comp0_reset_1_reg0 ),
        .Q(comp1_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.comp1_reset_2_reg 
       (.C(comp1_clk),
        .CE(1'b1),
        .D(comp1_reset_1),
        .Q(comp1_reset_2),
        .R(1'b0));
  FDRE \mts.comp1_reset_reg 
       (.C(comp1_clk),
        .CE(1'b1),
        .D(comp1_reset_2),
        .Q(comp1_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_adc_active_1_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(adc_active),
        .Q(deci_adc_active_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_adc_active_2_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_adc_active_1),
        .Q(deci_adc_active_2),
        .R(1'b0));
  FDRE \mts.deci_adc_active_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_adc_active_2),
        .Q(deci_adc_active),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000B333)) 
    \mts.deci_release_cnt[0]_i_1 
       (.I0(deci_release_cnt[1]),
        .I1(deci_release_cnt[0]),
        .I2(deci_release_cnt[2]),
        .I3(deci_release_cnt[3]),
        .I4(axi_reset),
        .O(\mts.deci_release_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000D5AA)) 
    \mts.deci_release_cnt[1]_i_1 
       (.I0(deci_release_cnt[1]),
        .I1(deci_release_cnt[3]),
        .I2(deci_release_cnt[2]),
        .I3(deci_release_cnt[0]),
        .I4(axi_reset),
        .O(\mts.deci_release_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA6A)) 
    \mts.deci_release_cnt[2]_i_1 
       (.I0(deci_release_cnt[2]),
        .I1(deci_release_cnt[0]),
        .I2(deci_release_cnt[1]),
        .I3(deci_release_cnt[3]),
        .I4(axi_reset),
        .O(\mts.deci_release_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mts.deci_release_cnt[3]_i_1 
       (.I0(axi_reset),
        .I1(deci_reset_async),
        .O(\mts.deci_release_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \mts.deci_release_cnt[3]_i_2 
       (.I0(deci_release_cnt[3]),
        .I1(deci_release_cnt[2]),
        .I2(deci_release_cnt[1]),
        .I3(deci_release_cnt[0]),
        .I4(axi_reset),
        .O(\mts.deci_release_cnt[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.deci_release_cnt[3]_i_3 
       (.I0(sys_reset),
        .I1(deci_locked),
        .O(rst_async));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[0] 
       (.C(deci_clk),
        .CE(\mts.deci_release_cnt[3]_i_1_n_0 ),
        .CLR(rst_async),
        .D(\mts.deci_release_cnt[0]_i_1_n_0 ),
        .Q(deci_release_cnt[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[1] 
       (.C(deci_clk),
        .CE(\mts.deci_release_cnt[3]_i_1_n_0 ),
        .CLR(rst_async),
        .D(\mts.deci_release_cnt[1]_i_1_n_0 ),
        .Q(deci_release_cnt[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[2] 
       (.C(deci_clk),
        .CE(\mts.deci_release_cnt[3]_i_1_n_0 ),
        .CLR(rst_async),
        .D(\mts.deci_release_cnt[2]_i_1_n_0 ),
        .Q(deci_release_cnt[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \mts.deci_release_cnt_reg[3] 
       (.C(deci_clk),
        .CE(\mts.deci_release_cnt[3]_i_1_n_0 ),
        .CLR(rst_async),
        .D(\mts.deci_release_cnt[3]_i_2_n_0 ),
        .Q(deci_release_cnt[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_reset_1_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_reset_async),
        .Q(deci_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_reset_2_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_reset_1),
        .Q(deci_reset_2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAAAAAA)) 
    \mts.deci_reset_async_i_1 
       (.I0(axi_reset),
        .I1(deci_release_cnt[1]),
        .I2(deci_release_cnt[0]),
        .I3(deci_release_cnt[2]),
        .I4(deci_release_cnt[3]),
        .I5(deci_reset_async),
        .O(\mts.deci_reset_async_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \mts.deci_reset_async_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(\mts.deci_reset_async_i_1_n_0 ),
        .PRE(rst_async),
        .Q(deci_reset_async));
  LUT1 #(
    .INIT(2'h1)) 
    \mts.deci_resetn_i_1 
       (.I0(deci_reset_2),
        .O(\mts.deci_resetn_i_1_n_0 ));
  FDRE \mts.deci_resetn_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(\mts.deci_resetn_i_1_n_0 ),
        .Q(deci_resetn),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_sim_active_1_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sim_active),
        .Q(deci_sim_active_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.deci_sim_active_2_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_sim_active_1),
        .Q(deci_sim_active_2),
        .R(1'b0));
  FDRE \mts.deci_sim_active_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(deci_sim_active_2),
        .Q(deci_sim_active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mts.deci_stop_count[0]_i_1 
       (.I0(\mts.deci_stop_count_reg [0]),
        .O(deci_stop_count0__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mts.deci_stop_count[1]_i_1 
       (.I0(\mts.deci_stop_count_reg [0]),
        .I1(\mts.deci_stop_count_reg [1]),
        .O(\mts.deci_stop_count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \mts.deci_stop_count[2]_i_1 
       (.I0(deci_stop_low),
        .I1(deci_stop_high),
        .I2(deci_resetn),
        .O(deci_stop_count0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \mts.deci_stop_count[2]_i_2 
       (.I0(\mts.deci_stop_count_reg [1]),
        .I1(\mts.deci_stop_count_reg [0]),
        .I2(\mts.deci_stop_count_reg [2]),
        .O(\mts.deci_stop_count[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \mts.deci_stop_count[3]_i_1 
       (.I0(\mts.deci_stop_count_reg [1]),
        .I1(\mts.deci_stop_count_reg [0]),
        .I2(\mts.deci_stop_count_reg [3]),
        .I3(\mts.deci_stop_count_reg [2]),
        .O(\mts.deci_stop_count[3]_i_1_n_0 ));
  FDSE \mts.deci_stop_count_reg[0] 
       (.C(deci_clk),
        .CE(sel),
        .D(deci_stop_count0__0),
        .Q(\mts.deci_stop_count_reg [0]),
        .S(deci_stop_count0));
  FDSE \mts.deci_stop_count_reg[1] 
       (.C(deci_clk),
        .CE(sel),
        .D(\mts.deci_stop_count[1]_i_1_n_0 ),
        .Q(\mts.deci_stop_count_reg [1]),
        .S(deci_stop_count0));
  FDSE \mts.deci_stop_count_reg[2] 
       (.C(deci_clk),
        .CE(sel),
        .D(\mts.deci_stop_count[2]_i_2_n_0 ),
        .Q(\mts.deci_stop_count_reg [2]),
        .S(deci_stop_count0));
  FDSE \mts.deci_stop_count_reg[3] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(\mts.deci_stop_count[3]_i_1_n_0 ),
        .Q(\mts.deci_stop_count_reg [3]),
        .S(deci_stop_count0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mts.deci_stop_i_1 
       (.I0(\mts.deci_stop_count_reg [1]),
        .I1(\mts.deci_stop_count_reg [0]),
        .I2(\mts.deci_stop_count_reg [3]),
        .I3(\mts.deci_stop_count_reg [2]),
        .O(sel));
  FDRE \mts.deci_stop_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sel),
        .Q(deci_stop),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \mts.doa0_reset_1_i_1 
       (.I0(deci_reset_async),
        .I1(doa_locked),
        .O(\mts.doa0_reset_1_reg0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa0_reset_1_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(\mts.doa0_reset_1_reg0 ),
        .Q(doa0_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa0_reset_2_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(doa0_reset_1),
        .Q(doa0_reset_2),
        .R(1'b0));
  FDRE \mts.doa0_reset_reg 
       (.C(doa0_clk),
        .CE(1'b1),
        .D(doa0_reset_2),
        .Q(doa0_reset),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa1_reset_1_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(\mts.doa0_reset_1_reg0 ),
        .Q(doa1_reset_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.doa1_reset_2_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(doa1_reset_1),
        .Q(doa1_reset_2),
        .R(1'b0));
  FDRE \mts.doa1_reset_reg 
       (.C(doa1_clk),
        .CE(1'b1),
        .D(doa1_reset_2),
        .Q(doa1_reset),
        .R(1'b0));
  FDRE \mts.sim_active_reg 
       (.C(axi_clk),
        .CE(1'b1),
        .D(axi_sim_active),
        .Q(sim_active),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_r_reg 
       (.C(deci_clk),
        .CE(1'b1),
        .D(pl_sysref),
        .Q(sysref_r),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[0] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sysref_r),
        .Q(sysref_sync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[1] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sysref_sync[0]),
        .Q(sysref_sync[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mts.sysref_sync_reg[2] 
       (.C(deci_clk),
        .CE(1'b1),
        .D(sysref_sync[1]),
        .Q(sysref_sync[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    p_clk_i
       (.CE(1'b1),
        .I(pl_clk),
        .O(pl_clk_buf));
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
