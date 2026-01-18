// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Jan 16 21:56:48 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_ana_0_0/ps_comp_ana_0_0_sim_netlist.v
// Design      : ps_comp_ana_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module cordic_atan2_16_HD6
   (aclk,
    m_axis_dout_tvalid,
    s_axis_cartesian_tvalid,
    m_axis_dout_tdata,
    s_axis_cartesian_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT:S_AXIS_PHASE:S_AXIS_CARTESIAN, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_CARTESIAN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CARTESIAN, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_cartesian_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [23:0]m_axis_dout_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TDATA" *) input [47:0]s_axis_cartesian_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_sqrt_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module cordic_sqrt_16_HD5
   (aclk,
    m_axis_dout_tvalid,
    s_axis_cartesian_tvalid,
    m_axis_dout_tdata,
    s_axis_cartesian_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT:S_AXIS_PHASE:S_AXIS_CARTESIAN, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_CARTESIAN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CARTESIAN, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_cartesian_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [15:0]m_axis_dout_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TDATA" *) input [31:0]s_axis_cartesian_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_16_16" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module mult_16_16_HD4
   (CLK,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;


endmodule

(* CHECK_LICENSE_TYPE = "ps_comp_ana_0_0,comp_ana,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "comp_ana,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_comp_ana_0_0
   (fifo_clk,
    fifo_active,
    fifo_re,
    fifo_im,
    fifo_burst,
    fifo_sample,
    fifo_size,
    fifo_freq,
    fifo_angle,
    clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_active;
  input [63:0]fifo_re;
  input [63:0]fifo_im;
  input fifo_burst;
  input [15:0]fifo_sample;
  input [8:0]fifo_size;
  input [19:0]fifo_freq;
  input [15:0]fifo_angle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk;
  wire fifo_active;
  wire [15:0]fifo_angle;
  wire fifo_burst;
  wire fifo_clk;
  wire [19:0]fifo_freq;
  wire [63:0]fifo_im;
  wire [63:0]fifo_re;
  wire [15:0]fifo_sample;
  wire [8:0]fifo_size;
  wire reset;

  ps_comp_ana_0_0_comp_ana inst
       (.clk(clk),
        .fifo_active(fifo_active),
        .fifo_angle(fifo_angle),
        .fifo_burst(fifo_burst),
        .fifo_clk(fifo_clk),
        .fifo_freq(fifo_freq),
        .fifo_im(fifo_im),
        .fifo_re(fifo_re),
        .fifo_sample(fifo_sample),
        .fifo_size(fifo_size),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "comp_ana" *) 
module ps_comp_ana_0_0_comp_ana
   (fifo_clk,
    fifo_active,
    fifo_re,
    fifo_im,
    fifo_burst,
    fifo_sample,
    fifo_size,
    fifo_freq,
    fifo_angle,
    clk,
    reset);
  input fifo_clk;
  input fifo_active;
  input [63:0]fifo_re;
  input [63:0]fifo_im;
  input fifo_burst;
  input [15:0]fifo_sample;
  input [8:0]fifo_size;
  input [19:0]fifo_freq;
  input [15:0]fifo_angle;
  input clk;
  input reset;

  (* MARK_DEBUG *) wire ana_empty;
  wire [60:0]ana_in_data;
  wire [60:16]ana_out_data;
  (* MARK_DEBUG *) wire ana_rd;
  (* MARK_DEBUG *) wire ana_trig;
  wire ana_wr;
  (* MARK_DEBUG *) wire [15:0]angle;
  wire clk;
  wire \comp_ana.ana_rd_reg0 ;
  wire \comp_ana.ana_trig_i_2_n_0 ;
  wire \comp_ana.ana_trig_i_3_n_0 ;
  wire \comp_ana.ana_trig_i_4_n_0 ;
  wire \comp_ana.ana_trig_i_5_n_0 ;
  wire \comp_ana.ana_trig_i_6_n_0 ;
  wire \comp_ana.ana_trig_i_7_n_0 ;
  wire \comp_ana.count[0]_i_1_n_0 ;
  wire \comp_ana.count[1]_i_1_n_0 ;
  wire \comp_ana.count[2]_i_1_n_0 ;
  wire \comp_ana.count[3]_i_1_n_0 ;
  wire \comp_ana.count[4]_i_1_n_0 ;
  wire \comp_ana.count[4]_i_2_n_0 ;
  wire \comp_ana.count[5]_i_1_n_0 ;
  wire \comp_ana.count[5]_i_2_n_0 ;
  wire \comp_ana.count[6]_i_1_n_0 ;
  wire \comp_ana.count[7]_i_1_n_0 ;
  wire \comp_ana.count[8]_i_1_n_0 ;
  wire \comp_ana.count[8]_i_2_n_0 ;
  wire \comp_ana.count[8]_i_3_n_0 ;
  wire \comp_ana.count[8]_i_4_n_0 ;
  wire \comp_ana.raw_delay[1]_i_1_n_0 ;
  wire \comp_ana.raw_delay[2]_i_1_n_0 ;
  wire \comp_ana.raw_delay[3]_i_1_n_0 ;
  wire \comp_ana.raw_delay[4]_i_1_n_0 ;
  wire \comp_ana.raw_delay[4]_i_2_n_0 ;
  wire [0:0]\comp_ana.raw_delay_reg0 ;
  wire \comp_ana.raw_rd_i_1_n_0 ;
  wire \comp_ana.raw_run_reg0 ;
  wire \comp_ana.raw_sample[7]_i_2_n_0 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_1 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_10 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_11 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_12 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_13 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_14 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_15 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_2 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_3 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_4 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_5 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_6 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_7 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_8 ;
  wire \comp_ana.raw_sample_reg[15]_i_2_n_9 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_0 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_1 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_10 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_11 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_12 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_13 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_14 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_15 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_2 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_3 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_4 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_5 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_6 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_7 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_8 ;
  wire \comp_ana.raw_sample_reg[7]_i_1_n_9 ;
  wire \comp_ana.run_i_1_n_0 ;
  (* MARK_DEBUG *) wire [8:0]count;
  (* MARK_DEBUG *) wire [15:0]curr_sample;
  (* MARK_DEBUG *) wire [15:0]env_0;
  (* MARK_DEBUG *) wire [15:0]env_1;
  (* MARK_DEBUG *) wire [15:0]env_2;
  (* MARK_DEBUG *) wire [15:0]env_3;
  wire fifo_active;
  wire [15:0]fifo_angle;
  wire fifo_burst;
  wire fifo_clk;
  wire [19:0]fifo_freq;
  wire [63:0]fifo_im;
  wire [63:0]fifo_re;
  wire [15:0]fifo_sample;
  wire [8:0]fifo_size;
  (* MARK_DEBUG *) wire [19:0]freq;
  (* MARK_DEBUG *) wire [15:0]im_0;
  (* MARK_DEBUG *) wire [15:0]im_1;
  (* MARK_DEBUG *) wire [15:0]im_2;
  (* MARK_DEBUG *) wire [15:0]im_3;
  wire p_0_in__0;
  (* MARK_DEBUG *) wire [19:0]phase_0;
  (* MARK_DEBUG *) wire [19:0]phase_1;
  (* MARK_DEBUG *) wire [19:0]phase_2;
  (* MARK_DEBUG *) wire [19:0]phase_3;
  (* MARK_DEBUG *) wire [4:0]raw_delay;
  (* MARK_DEBUG *) wire raw_empty;
  wire [127:0]raw_in_data;
  wire [127:0]raw_out_data;
  (* MARK_DEBUG *) wire raw_rd;
  (* MARK_DEBUG *) wire raw_run;
  (* MARK_DEBUG *) wire [15:0]raw_sample;
  wire [0:0]raw_sample__0;
  wire raw_wr;
  (* MARK_DEBUG *) wire [15:0]re_0;
  (* MARK_DEBUG *) wire [15:0]re_1;
  (* MARK_DEBUG *) wire [15:0]re_2;
  (* MARK_DEBUG *) wire [15:0]re_3;
  wire reset;
  (* MARK_DEBUG *) wire run;
  (* MARK_DEBUG *) wire [15:0]sample;
  (* MARK_DEBUG *) wire [8:0]size;
  (* MARK_DEBUG *) wire [3:0]valid;
  wire [7:7]\NLW_comp_ana.raw_sample_reg[15]_i_2_CO_UNCONNECTED ;
  wire NLW_fifo_ana_i_full_UNCONNECTED;
  wire NLW_fifo_ana_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_ana_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;

  FDRE \comp_ana.ana_in_data_reg[0] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[0]),
        .Q(ana_in_data[0]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[10] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[10]),
        .Q(ana_in_data[10]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[11] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[11]),
        .Q(ana_in_data[11]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[12] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[12]),
        .Q(ana_in_data[12]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[13] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[13]),
        .Q(ana_in_data[13]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[14] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[14]),
        .Q(ana_in_data[14]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[15] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[15]),
        .Q(ana_in_data[15]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[16] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[0]),
        .Q(ana_in_data[16]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[17] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[1]),
        .Q(ana_in_data[17]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[18] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[2]),
        .Q(ana_in_data[18]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[19] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[3]),
        .Q(ana_in_data[19]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[1] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[1]),
        .Q(ana_in_data[1]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[20] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[4]),
        .Q(ana_in_data[20]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[21] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[5]),
        .Q(ana_in_data[21]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[22] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[6]),
        .Q(ana_in_data[22]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[23] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[7]),
        .Q(ana_in_data[23]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[24] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_size[8]),
        .Q(ana_in_data[24]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[25] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[0]),
        .Q(ana_in_data[25]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[26] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[1]),
        .Q(ana_in_data[26]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[27] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[2]),
        .Q(ana_in_data[27]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[28] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[3]),
        .Q(ana_in_data[28]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[29] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[4]),
        .Q(ana_in_data[29]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[2] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[2]),
        .Q(ana_in_data[2]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[30] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[5]),
        .Q(ana_in_data[30]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[31] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[6]),
        .Q(ana_in_data[31]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[32] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[7]),
        .Q(ana_in_data[32]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[33] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[8]),
        .Q(ana_in_data[33]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[34] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[9]),
        .Q(ana_in_data[34]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[35] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[10]),
        .Q(ana_in_data[35]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[36] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[11]),
        .Q(ana_in_data[36]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[37] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[12]),
        .Q(ana_in_data[37]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[38] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[13]),
        .Q(ana_in_data[38]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[39] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[14]),
        .Q(ana_in_data[39]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[3] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[3]),
        .Q(ana_in_data[3]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[40] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[15]),
        .Q(ana_in_data[40]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[41] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[16]),
        .Q(ana_in_data[41]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[42] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[17]),
        .Q(ana_in_data[42]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[43] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[18]),
        .Q(ana_in_data[43]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[44] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_freq[19]),
        .Q(ana_in_data[44]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[45] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[0]),
        .Q(ana_in_data[45]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[46] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[1]),
        .Q(ana_in_data[46]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[47] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[2]),
        .Q(ana_in_data[47]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[48] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[3]),
        .Q(ana_in_data[48]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[49] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[4]),
        .Q(ana_in_data[49]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[4] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[4]),
        .Q(ana_in_data[4]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[50] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[5]),
        .Q(ana_in_data[50]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[51] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[6]),
        .Q(ana_in_data[51]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[52] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[7]),
        .Q(ana_in_data[52]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[53] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[8]),
        .Q(ana_in_data[53]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[54] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[9]),
        .Q(ana_in_data[54]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[55] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[10]),
        .Q(ana_in_data[55]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[56] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[11]),
        .Q(ana_in_data[56]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[57] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[12]),
        .Q(ana_in_data[57]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[58] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[13]),
        .Q(ana_in_data[58]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[59] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[14]),
        .Q(ana_in_data[59]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[5] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[5]),
        .Q(ana_in_data[5]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[60] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_angle[15]),
        .Q(ana_in_data[60]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[6] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[6]),
        .Q(ana_in_data[6]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[7] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[7]),
        .Q(ana_in_data[7]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[8] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[8]),
        .Q(ana_in_data[8]),
        .R(1'b0));
  FDRE \comp_ana.ana_in_data_reg[9] 
       (.C(fifo_clk),
        .CE(fifo_burst),
        .D(fifo_sample[9]),
        .Q(ana_in_data[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_ana.ana_rd_i_1 
       (.I0(ana_trig),
        .I1(ana_empty),
        .O(\comp_ana.ana_rd_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.ana_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.ana_rd_reg0 ),
        .Q(ana_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \comp_ana.ana_trig_i_1 
       (.I0(\comp_ana.ana_trig_i_2_n_0 ),
        .I1(\comp_ana.ana_trig_i_3_n_0 ),
        .I2(\comp_ana.ana_trig_i_4_n_0 ),
        .I3(\comp_ana.ana_trig_i_5_n_0 ),
        .I4(\comp_ana.ana_trig_i_6_n_0 ),
        .I5(\comp_ana.ana_trig_i_7_n_0 ),
        .O(p_0_in__0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \comp_ana.ana_trig_i_2 
       (.I0(curr_sample[12]),
        .I1(raw_sample[12]),
        .I2(raw_sample[14]),
        .I3(curr_sample[14]),
        .I4(raw_sample[13]),
        .I5(curr_sample[13]),
        .O(\comp_ana.ana_trig_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \comp_ana.ana_trig_i_3 
       (.I0(curr_sample[3]),
        .I1(raw_sample[3]),
        .I2(raw_sample[5]),
        .I3(curr_sample[5]),
        .I4(raw_sample[4]),
        .I5(curr_sample[4]),
        .O(\comp_ana.ana_trig_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \comp_ana.ana_trig_i_4 
       (.I0(curr_sample[0]),
        .I1(raw_sample[0]),
        .I2(raw_sample[2]),
        .I3(curr_sample[2]),
        .I4(raw_sample[1]),
        .I5(curr_sample[1]),
        .O(\comp_ana.ana_trig_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \comp_ana.ana_trig_i_5 
       (.I0(curr_sample[9]),
        .I1(raw_sample[9]),
        .I2(raw_sample[11]),
        .I3(curr_sample[11]),
        .I4(raw_sample[10]),
        .I5(curr_sample[10]),
        .O(\comp_ana.ana_trig_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \comp_ana.ana_trig_i_6 
       (.I0(curr_sample[6]),
        .I1(raw_sample[6]),
        .I2(raw_sample[8]),
        .I3(curr_sample[8]),
        .I4(raw_sample[7]),
        .I5(curr_sample[7]),
        .O(\comp_ana.ana_trig_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_ana.ana_trig_i_7 
       (.I0(raw_sample[15]),
        .I1(curr_sample[15]),
        .O(\comp_ana.ana_trig_i_7_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.ana_trig_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(ana_trig),
        .R(1'b0));
  FDRE \comp_ana.ana_wr_reg 
       (.C(fifo_clk),
        .CE(1'b1),
        .D(fifo_burst),
        .Q(ana_wr),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[0] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[45]),
        .Q(angle[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[10] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[55]),
        .Q(angle[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[11] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[56]),
        .Q(angle[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[12] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[57]),
        .Q(angle[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[13] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[58]),
        .Q(angle[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[14] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[59]),
        .Q(angle[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[15] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[60]),
        .Q(angle[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[1] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[46]),
        .Q(angle[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[2] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[47]),
        .Q(angle[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[3] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[48]),
        .Q(angle[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[4] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[49]),
        .Q(angle[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[5] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[50]),
        .Q(angle[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[6] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[51]),
        .Q(angle[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[7] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[52]),
        .Q(angle[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[8] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[53]),
        .Q(angle[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.angle_reg[9] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[54]),
        .Q(angle[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7545)) 
    \comp_ana.count[0]_i_1 
       (.I0(count[0]),
        .I1(ana_empty),
        .I2(ana_trig),
        .I3(ana_out_data[16]),
        .O(\comp_ana.count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF2020EF)) 
    \comp_ana.count[1]_i_1 
       (.I0(ana_out_data[17]),
        .I1(ana_empty),
        .I2(ana_trig),
        .I3(count[0]),
        .I4(count[1]),
        .O(\comp_ana.count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEF20202020EF)) 
    \comp_ana.count[2]_i_1 
       (.I0(ana_out_data[18]),
        .I1(ana_empty),
        .I2(ana_trig),
        .I3(count[1]),
        .I4(count[0]),
        .I5(count[2]),
        .O(\comp_ana.count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \comp_ana.count[3]_i_1 
       (.I0(ana_out_data[19]),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[3]),
        .I5(\comp_ana.count[8]_i_4_n_0 ),
        .O(\comp_ana.count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC3AAC3C3)) 
    \comp_ana.count[4]_i_1 
       (.I0(ana_out_data[20]),
        .I1(\comp_ana.count[4]_i_2_n_0 ),
        .I2(count[4]),
        .I3(ana_empty),
        .I4(ana_trig),
        .O(\comp_ana.count[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_ana.count[4]_i_2 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .O(\comp_ana.count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC3AAC3C3)) 
    \comp_ana.count[5]_i_1 
       (.I0(ana_out_data[21]),
        .I1(\comp_ana.count[5]_i_2_n_0 ),
        .I2(count[5]),
        .I3(ana_empty),
        .I4(ana_trig),
        .O(\comp_ana.count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_ana.count[5]_i_2 
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[4]),
        .O(\comp_ana.count[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC3AAC3C3)) 
    \comp_ana.count[6]_i_1 
       (.I0(ana_out_data[22]),
        .I1(\comp_ana.count[8]_i_3_n_0 ),
        .I2(count[6]),
        .I3(ana_empty),
        .I4(ana_trig),
        .O(\comp_ana.count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC03AAAAFC03FC03)) 
    \comp_ana.count[7]_i_1 
       (.I0(ana_out_data[23]),
        .I1(count[6]),
        .I2(\comp_ana.count[8]_i_3_n_0 ),
        .I3(count[7]),
        .I4(ana_empty),
        .I5(ana_trig),
        .O(\comp_ana.count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \comp_ana.count[8]_i_1 
       (.I0(count[8]),
        .I1(count[6]),
        .I2(\comp_ana.count[8]_i_3_n_0 ),
        .I3(count[7]),
        .I4(ana_trig),
        .I5(ana_empty),
        .O(\comp_ana.count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \comp_ana.count[8]_i_2 
       (.I0(ana_out_data[24]),
        .I1(count[7]),
        .I2(\comp_ana.count[8]_i_3_n_0 ),
        .I3(count[6]),
        .I4(count[8]),
        .I5(\comp_ana.count[8]_i_4_n_0 ),
        .O(\comp_ana.count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_ana.count[8]_i_3 
       (.I0(count[4]),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[3]),
        .I5(count[5]),
        .O(\comp_ana.count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \comp_ana.count[8]_i_4 
       (.I0(ana_empty),
        .I1(ana_trig),
        .O(\comp_ana.count[8]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[0] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[1] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[2] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[3] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[3]_i_1_n_0 ),
        .Q(count[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[4] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[4]_i_1_n_0 ),
        .Q(count[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[5] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[5]_i_1_n_0 ),
        .Q(count[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[6] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[6]_i_1_n_0 ),
        .Q(count[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[7] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[7]_i_1_n_0 ),
        .Q(count[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.count_reg[8] 
       (.C(clk),
        .CE(\comp_ana.count[8]_i_1_n_0 ),
        .D(\comp_ana.count[8]_i_2_n_0 ),
        .Q(count[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[0] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[25]),
        .Q(freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[10] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[35]),
        .Q(freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[11] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[36]),
        .Q(freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[12] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[37]),
        .Q(freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[13] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[38]),
        .Q(freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[14] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[39]),
        .Q(freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[15] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[40]),
        .Q(freq[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[16] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[41]),
        .Q(freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[17] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[42]),
        .Q(freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[18] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[43]),
        .Q(freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[19] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[44]),
        .Q(freq[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[1] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[26]),
        .Q(freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[2] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[27]),
        .Q(freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[3] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[28]),
        .Q(freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[4] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[29]),
        .Q(freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[5] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[30]),
        .Q(freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[6] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[31]),
        .Q(freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[7] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[32]),
        .Q(freq[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[8] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[33]),
        .Q(freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.freq_reg[9] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[34]),
        .Q(freq[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[64]),
        .Q(im_0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[74]),
        .Q(im_0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[75]),
        .Q(im_0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[76]),
        .Q(im_0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[77]),
        .Q(im_0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[78]),
        .Q(im_0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[79]),
        .Q(im_0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[65]),
        .Q(im_0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[66]),
        .Q(im_0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[67]),
        .Q(im_0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[68]),
        .Q(im_0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[69]),
        .Q(im_0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[70]),
        .Q(im_0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[71]),
        .Q(im_0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[72]),
        .Q(im_0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_0_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[73]),
        .Q(im_0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[80]),
        .Q(im_1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[90]),
        .Q(im_1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[91]),
        .Q(im_1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[92]),
        .Q(im_1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[93]),
        .Q(im_1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[94]),
        .Q(im_1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[95]),
        .Q(im_1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[81]),
        .Q(im_1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[82]),
        .Q(im_1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[83]),
        .Q(im_1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[84]),
        .Q(im_1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[85]),
        .Q(im_1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[86]),
        .Q(im_1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[87]),
        .Q(im_1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[88]),
        .Q(im_1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_1_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[89]),
        .Q(im_1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[96]),
        .Q(im_2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[106]),
        .Q(im_2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[107]),
        .Q(im_2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[108]),
        .Q(im_2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[109]),
        .Q(im_2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[110]),
        .Q(im_2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[111]),
        .Q(im_2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[97]),
        .Q(im_2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[98]),
        .Q(im_2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[99]),
        .Q(im_2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[100]),
        .Q(im_2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[101]),
        .Q(im_2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[102]),
        .Q(im_2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[103]),
        .Q(im_2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[104]),
        .Q(im_2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_2_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[105]),
        .Q(im_2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[112]),
        .Q(im_3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[122]),
        .Q(im_3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[123]),
        .Q(im_3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[124]),
        .Q(im_3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[125]),
        .Q(im_3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[126]),
        .Q(im_3[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[127]),
        .Q(im_3[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[113]),
        .Q(im_3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[114]),
        .Q(im_3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[115]),
        .Q(im_3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[116]),
        .Q(im_3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[117]),
        .Q(im_3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[118]),
        .Q(im_3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[119]),
        .Q(im_3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[120]),
        .Q(im_3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.im_3_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[121]),
        .Q(im_3[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_ana.raw_delay[0]_i_1 
       (.I0(raw_delay[0]),
        .O(\comp_ana.raw_delay_reg0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_ana.raw_delay[1]_i_1 
       (.I0(raw_delay[0]),
        .I1(raw_delay[1]),
        .O(\comp_ana.raw_delay[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_ana.raw_delay[2]_i_1 
       (.I0(raw_delay[1]),
        .I1(raw_delay[0]),
        .I2(raw_delay[2]),
        .O(\comp_ana.raw_delay[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_ana.raw_delay[3]_i_1 
       (.I0(raw_delay[2]),
        .I1(raw_delay[0]),
        .I2(raw_delay[1]),
        .I3(raw_delay[3]),
        .O(\comp_ana.raw_delay[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_ana.raw_delay[4]_i_1 
       (.I0(raw_delay[0]),
        .I1(raw_delay[3]),
        .I2(raw_delay[4]),
        .I3(raw_delay[1]),
        .I4(raw_delay[2]),
        .O(\comp_ana.raw_delay[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \comp_ana.raw_delay[4]_i_2 
       (.I0(raw_delay[3]),
        .I1(raw_delay[1]),
        .I2(raw_delay[0]),
        .I3(raw_delay[2]),
        .I4(raw_delay[4]),
        .O(\comp_ana.raw_delay[4]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_ana.raw_delay_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_delay[4]_i_1_n_0 ),
        .D(\comp_ana.raw_delay_reg0 ),
        .Q(raw_delay[0]),
        .S(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_ana.raw_delay_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_delay[4]_i_1_n_0 ),
        .D(\comp_ana.raw_delay[1]_i_1_n_0 ),
        .Q(raw_delay[1]),
        .S(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_ana.raw_delay_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_delay[4]_i_1_n_0 ),
        .D(\comp_ana.raw_delay[2]_i_1_n_0 ),
        .Q(raw_delay[2]),
        .S(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_ana.raw_delay_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_delay[4]_i_1_n_0 ),
        .D(\comp_ana.raw_delay[3]_i_1_n_0 ),
        .Q(raw_delay[3]),
        .S(raw_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_ana.raw_delay_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_delay[4]_i_1_n_0 ),
        .D(\comp_ana.raw_delay[4]_i_2_n_0 ),
        .Q(raw_delay[4]),
        .S(raw_empty));
  FDRE \comp_ana.raw_in_data_reg[0] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[0]),
        .Q(raw_in_data[0]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[100] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[36]),
        .Q(raw_in_data[100]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[101] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[37]),
        .Q(raw_in_data[101]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[102] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[38]),
        .Q(raw_in_data[102]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[103] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[39]),
        .Q(raw_in_data[103]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[104] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[40]),
        .Q(raw_in_data[104]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[105] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[41]),
        .Q(raw_in_data[105]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[106] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[42]),
        .Q(raw_in_data[106]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[107] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[43]),
        .Q(raw_in_data[107]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[108] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[44]),
        .Q(raw_in_data[108]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[109] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[45]),
        .Q(raw_in_data[109]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[10] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[10]),
        .Q(raw_in_data[10]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[110] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[46]),
        .Q(raw_in_data[110]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[111] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[47]),
        .Q(raw_in_data[111]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[112] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[48]),
        .Q(raw_in_data[112]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[113] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[49]),
        .Q(raw_in_data[113]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[114] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[50]),
        .Q(raw_in_data[114]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[115] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[51]),
        .Q(raw_in_data[115]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[116] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[52]),
        .Q(raw_in_data[116]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[117] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[53]),
        .Q(raw_in_data[117]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[118] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[54]),
        .Q(raw_in_data[118]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[119] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[55]),
        .Q(raw_in_data[119]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[11] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[11]),
        .Q(raw_in_data[11]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[120] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[56]),
        .Q(raw_in_data[120]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[121] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[57]),
        .Q(raw_in_data[121]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[122] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[58]),
        .Q(raw_in_data[122]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[123] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[59]),
        .Q(raw_in_data[123]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[124] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[60]),
        .Q(raw_in_data[124]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[125] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[61]),
        .Q(raw_in_data[125]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[126] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[62]),
        .Q(raw_in_data[126]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[127] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[63]),
        .Q(raw_in_data[127]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[12] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[12]),
        .Q(raw_in_data[12]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[13] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[13]),
        .Q(raw_in_data[13]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[14] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[14]),
        .Q(raw_in_data[14]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[15] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[15]),
        .Q(raw_in_data[15]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[16] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[16]),
        .Q(raw_in_data[16]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[17] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[17]),
        .Q(raw_in_data[17]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[18] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[18]),
        .Q(raw_in_data[18]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[19] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[19]),
        .Q(raw_in_data[19]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[1] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[1]),
        .Q(raw_in_data[1]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[20] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[20]),
        .Q(raw_in_data[20]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[21] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[21]),
        .Q(raw_in_data[21]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[22] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[22]),
        .Q(raw_in_data[22]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[23] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[23]),
        .Q(raw_in_data[23]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[24] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[24]),
        .Q(raw_in_data[24]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[25] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[25]),
        .Q(raw_in_data[25]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[26] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[26]),
        .Q(raw_in_data[26]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[27] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[27]),
        .Q(raw_in_data[27]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[28] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[28]),
        .Q(raw_in_data[28]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[29] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[29]),
        .Q(raw_in_data[29]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[2] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[2]),
        .Q(raw_in_data[2]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[30] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[30]),
        .Q(raw_in_data[30]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[31] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[31]),
        .Q(raw_in_data[31]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[32] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[32]),
        .Q(raw_in_data[32]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[33] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[33]),
        .Q(raw_in_data[33]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[34] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[34]),
        .Q(raw_in_data[34]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[35] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[35]),
        .Q(raw_in_data[35]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[36] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[36]),
        .Q(raw_in_data[36]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[37] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[37]),
        .Q(raw_in_data[37]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[38] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[38]),
        .Q(raw_in_data[38]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[39] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[39]),
        .Q(raw_in_data[39]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[3] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[3]),
        .Q(raw_in_data[3]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[40] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[40]),
        .Q(raw_in_data[40]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[41] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[41]),
        .Q(raw_in_data[41]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[42] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[42]),
        .Q(raw_in_data[42]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[43] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[43]),
        .Q(raw_in_data[43]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[44] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[44]),
        .Q(raw_in_data[44]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[45] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[45]),
        .Q(raw_in_data[45]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[46] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[46]),
        .Q(raw_in_data[46]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[47] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[47]),
        .Q(raw_in_data[47]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[48] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[48]),
        .Q(raw_in_data[48]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[49] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[49]),
        .Q(raw_in_data[49]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[4] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[4]),
        .Q(raw_in_data[4]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[50] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[50]),
        .Q(raw_in_data[50]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[51] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[51]),
        .Q(raw_in_data[51]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[52] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[52]),
        .Q(raw_in_data[52]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[53] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[53]),
        .Q(raw_in_data[53]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[54] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[54]),
        .Q(raw_in_data[54]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[55] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[55]),
        .Q(raw_in_data[55]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[56] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[56]),
        .Q(raw_in_data[56]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[57] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[57]),
        .Q(raw_in_data[57]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[58] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[58]),
        .Q(raw_in_data[58]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[59] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[59]),
        .Q(raw_in_data[59]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[5] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[5]),
        .Q(raw_in_data[5]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[60] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[60]),
        .Q(raw_in_data[60]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[61] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[61]),
        .Q(raw_in_data[61]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[62] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[62]),
        .Q(raw_in_data[62]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[63] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[63]),
        .Q(raw_in_data[63]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[64] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[0]),
        .Q(raw_in_data[64]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[65] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[1]),
        .Q(raw_in_data[65]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[66] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[2]),
        .Q(raw_in_data[66]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[67] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[3]),
        .Q(raw_in_data[67]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[68] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[4]),
        .Q(raw_in_data[68]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[69] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[5]),
        .Q(raw_in_data[69]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[6] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[6]),
        .Q(raw_in_data[6]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[70] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[6]),
        .Q(raw_in_data[70]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[71] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[7]),
        .Q(raw_in_data[71]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[72] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[8]),
        .Q(raw_in_data[72]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[73] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[9]),
        .Q(raw_in_data[73]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[74] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[10]),
        .Q(raw_in_data[74]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[75] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[11]),
        .Q(raw_in_data[75]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[76] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[12]),
        .Q(raw_in_data[76]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[77] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[13]),
        .Q(raw_in_data[77]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[78] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[14]),
        .Q(raw_in_data[78]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[79] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[15]),
        .Q(raw_in_data[79]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[7] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[7]),
        .Q(raw_in_data[7]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[80] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[16]),
        .Q(raw_in_data[80]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[81] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[17]),
        .Q(raw_in_data[81]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[82] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[18]),
        .Q(raw_in_data[82]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[83] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[19]),
        .Q(raw_in_data[83]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[84] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[20]),
        .Q(raw_in_data[84]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[85] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[21]),
        .Q(raw_in_data[85]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[86] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[22]),
        .Q(raw_in_data[86]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[87] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[23]),
        .Q(raw_in_data[87]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[88] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[24]),
        .Q(raw_in_data[88]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[89] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[25]),
        .Q(raw_in_data[89]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[8] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[8]),
        .Q(raw_in_data[8]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[90] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[26]),
        .Q(raw_in_data[90]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[91] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[27]),
        .Q(raw_in_data[91]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[92] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[28]),
        .Q(raw_in_data[92]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[93] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[29]),
        .Q(raw_in_data[93]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[94] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[30]),
        .Q(raw_in_data[94]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[95] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[31]),
        .Q(raw_in_data[95]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[96] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[32]),
        .Q(raw_in_data[96]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[97] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[33]),
        .Q(raw_in_data[97]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[98] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[34]),
        .Q(raw_in_data[98]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[99] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_im[35]),
        .Q(raw_in_data[99]),
        .R(1'b0));
  FDRE \comp_ana.raw_in_data_reg[9] 
       (.C(fifo_clk),
        .CE(fifo_active),
        .D(fifo_re[9]),
        .Q(raw_in_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_ana.raw_rd_i_1 
       (.I0(raw_empty),
        .I1(raw_delay[2]),
        .I2(raw_delay[1]),
        .I3(raw_delay[4]),
        .I4(raw_delay[3]),
        .I5(raw_delay[0]),
        .O(\comp_ana.raw_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_rd_i_1_n_0 ),
        .Q(raw_rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_ana.raw_run_i_1 
       (.I0(raw_rd),
        .I1(raw_empty),
        .O(\comp_ana.raw_run_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_run_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_run_reg0 ),
        .Q(raw_run),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_ana.raw_sample[15]_i_1 
       (.I0(valid[0]),
        .O(raw_sample__0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_ana.raw_sample[7]_i_2 
       (.I0(raw_sample[0]),
        .O(\comp_ana.raw_sample[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_15 ),
        .Q(raw_sample[0]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_13 ),
        .Q(raw_sample[10]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_12 ),
        .Q(raw_sample[11]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_11 ),
        .Q(raw_sample[12]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_10 ),
        .Q(raw_sample[13]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_9 ),
        .Q(raw_sample[14]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_8 ),
        .Q(raw_sample[15]),
        .R(raw_sample__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_ana.raw_sample_reg[15]_i_2 
       (.CI(\comp_ana.raw_sample_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_comp_ana.raw_sample_reg[15]_i_2_CO_UNCONNECTED [7],\comp_ana.raw_sample_reg[15]_i_2_n_1 ,\comp_ana.raw_sample_reg[15]_i_2_n_2 ,\comp_ana.raw_sample_reg[15]_i_2_n_3 ,\comp_ana.raw_sample_reg[15]_i_2_n_4 ,\comp_ana.raw_sample_reg[15]_i_2_n_5 ,\comp_ana.raw_sample_reg[15]_i_2_n_6 ,\comp_ana.raw_sample_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\comp_ana.raw_sample_reg[15]_i_2_n_8 ,\comp_ana.raw_sample_reg[15]_i_2_n_9 ,\comp_ana.raw_sample_reg[15]_i_2_n_10 ,\comp_ana.raw_sample_reg[15]_i_2_n_11 ,\comp_ana.raw_sample_reg[15]_i_2_n_12 ,\comp_ana.raw_sample_reg[15]_i_2_n_13 ,\comp_ana.raw_sample_reg[15]_i_2_n_14 ,\comp_ana.raw_sample_reg[15]_i_2_n_15 }),
        .S(raw_sample[15:8]));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_14 ),
        .Q(raw_sample[1]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_13 ),
        .Q(raw_sample[2]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_12 ),
        .Q(raw_sample[3]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_11 ),
        .Q(raw_sample[4]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_10 ),
        .Q(raw_sample[5]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_9 ),
        .Q(raw_sample[6]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[7]_i_1_n_8 ),
        .Q(raw_sample[7]),
        .R(raw_sample__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \comp_ana.raw_sample_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\comp_ana.raw_sample_reg[7]_i_1_n_0 ,\comp_ana.raw_sample_reg[7]_i_1_n_1 ,\comp_ana.raw_sample_reg[7]_i_1_n_2 ,\comp_ana.raw_sample_reg[7]_i_1_n_3 ,\comp_ana.raw_sample_reg[7]_i_1_n_4 ,\comp_ana.raw_sample_reg[7]_i_1_n_5 ,\comp_ana.raw_sample_reg[7]_i_1_n_6 ,\comp_ana.raw_sample_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,raw_sample[0]}),
        .O({\comp_ana.raw_sample_reg[7]_i_1_n_8 ,\comp_ana.raw_sample_reg[7]_i_1_n_9 ,\comp_ana.raw_sample_reg[7]_i_1_n_10 ,\comp_ana.raw_sample_reg[7]_i_1_n_11 ,\comp_ana.raw_sample_reg[7]_i_1_n_12 ,\comp_ana.raw_sample_reg[7]_i_1_n_13 ,\comp_ana.raw_sample_reg[7]_i_1_n_14 ,\comp_ana.raw_sample_reg[7]_i_1_n_15 }),
        .S({raw_sample[7:1],\comp_ana.raw_sample[7]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_15 ),
        .Q(raw_sample[8]),
        .R(raw_sample__0));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.raw_sample_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.raw_sample_reg[15]_i_2_n_14 ),
        .Q(raw_sample[9]),
        .R(raw_sample__0));
  FDRE \comp_ana.raw_wr_reg 
       (.C(fifo_clk),
        .CE(1'b1),
        .D(fifo_active),
        .Q(raw_wr),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[0]),
        .Q(re_0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[10]),
        .Q(re_0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[11]),
        .Q(re_0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[12]),
        .Q(re_0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[13]),
        .Q(re_0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[14]),
        .Q(re_0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[15]),
        .Q(re_0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[1]),
        .Q(re_0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[2]),
        .Q(re_0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[3]),
        .Q(re_0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[4]),
        .Q(re_0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[5]),
        .Q(re_0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[6]),
        .Q(re_0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[7]),
        .Q(re_0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[8]),
        .Q(re_0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_0_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[9]),
        .Q(re_0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[16]),
        .Q(re_1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[26]),
        .Q(re_1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[27]),
        .Q(re_1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[28]),
        .Q(re_1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[29]),
        .Q(re_1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[30]),
        .Q(re_1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[31]),
        .Q(re_1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[17]),
        .Q(re_1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[18]),
        .Q(re_1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[19]),
        .Q(re_1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[20]),
        .Q(re_1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[21]),
        .Q(re_1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[22]),
        .Q(re_1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[23]),
        .Q(re_1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[24]),
        .Q(re_1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_1_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[25]),
        .Q(re_1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[32]),
        .Q(re_2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[42]),
        .Q(re_2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[43]),
        .Q(re_2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[44]),
        .Q(re_2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[45]),
        .Q(re_2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[46]),
        .Q(re_2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[47]),
        .Q(re_2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[33]),
        .Q(re_2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[34]),
        .Q(re_2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[35]),
        .Q(re_2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[36]),
        .Q(re_2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[37]),
        .Q(re_2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[38]),
        .Q(re_2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[39]),
        .Q(re_2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[40]),
        .Q(re_2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_2_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[41]),
        .Q(re_2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[0] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[48]),
        .Q(re_3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[10] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[58]),
        .Q(re_3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[11] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[59]),
        .Q(re_3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[12] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[60]),
        .Q(re_3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[13] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[61]),
        .Q(re_3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[14] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[62]),
        .Q(re_3[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[15] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[63]),
        .Q(re_3[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[1] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[49]),
        .Q(re_3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[2] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[50]),
        .Q(re_3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[3] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[51]),
        .Q(re_3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[4] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[52]),
        .Q(re_3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[5] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[53]),
        .Q(re_3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[6] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[54]),
        .Q(re_3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[7] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[55]),
        .Q(re_3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[8] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[56]),
        .Q(re_3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.re_3_reg[9] 
       (.C(clk),
        .CE(\comp_ana.raw_run_reg0 ),
        .D(raw_out_data[57]),
        .Q(re_3[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \comp_ana.run_i_1 
       (.I0(run),
        .I1(count[7]),
        .I2(\comp_ana.count[8]_i_3_n_0 ),
        .I3(count[6]),
        .I4(count[8]),
        .I5(\comp_ana.ana_rd_reg0 ),
        .O(\comp_ana.run_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_ana.run_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_ana.run_i_1_n_0 ),
        .Q(run),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[0] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[0]),
        .Q(sample[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[10] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[10]),
        .Q(sample[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[11] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[11]),
        .Q(sample[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[12] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[12]),
        .Q(sample[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[13] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[13]),
        .Q(sample[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[14] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[14]),
        .Q(sample[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[15] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[15]),
        .Q(sample[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[1] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[1]),
        .Q(sample[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[2] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[2]),
        .Q(sample[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[3] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[3]),
        .Q(sample[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[4] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[4]),
        .Q(sample[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[5] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[5]),
        .Q(sample[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[6] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[6]),
        .Q(sample[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[7] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[7]),
        .Q(sample[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[8] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[8]),
        .Q(sample[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.sample_reg[9] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(curr_sample[9]),
        .Q(sample[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[0] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[16]),
        .Q(size[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[1] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[17]),
        .Q(size[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[2] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[18]),
        .Q(size[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[3] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[19]),
        .Q(size[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[4] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[20]),
        .Q(size[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[5] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[21]),
        .Q(size[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[6] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[22]),
        .Q(size[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[7] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[23]),
        .Q(size[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_ana.size_reg[8] 
       (.C(clk),
        .CE(\comp_ana.ana_rd_reg0 ),
        .D(ana_out_data[24]),
        .Q(size[8]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fifo_comp_ana,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_ana_0_0_fifo_comp_ana fifo_ana_i
       (.din(ana_in_data),
        .dout({ana_out_data,curr_sample}),
        .empty(ana_empty),
        .full(NLW_fifo_ana_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(ana_rd),
        .rd_rst_busy(NLW_fifo_ana_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(ana_wr),
        .wr_rst_busy(NLW_fifo_ana_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_comp_raw,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_ana_0_0_fifo_comp_raw fifo_raw_i
       (.din(raw_in_data),
        .dout(raw_out_data),
        .empty(raw_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(raw_rd),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(raw_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_ana_0_0_ila_1 ila_i
       (.clk(clk),
        .probe0(raw_rd),
        .probe1(raw_empty),
        .probe10(sample),
        .probe11(size),
        .probe12(count),
        .probe13(freq),
        .probe14(angle),
        .probe15(re_0),
        .probe16(re_1),
        .probe17(re_2),
        .probe18(re_3),
        .probe19(im_0),
        .probe2(raw_delay),
        .probe20(im_1),
        .probe21(im_2),
        .probe22(im_3),
        .probe23(valid),
        .probe24(env_0),
        .probe25(env_1),
        .probe26(env_2),
        .probe27(env_3),
        .probe28(phase_0),
        .probe29(phase_1),
        .probe3(raw_sample),
        .probe30(phase_2),
        .probe31(phase_3),
        .probe4(raw_run),
        .probe5(ana_rd),
        .probe6(ana_empty),
        .probe7(curr_sample),
        .probe8(ana_trig),
        .probe9(run));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1 phase_env_i_0
       (.active(raw_run),
        .clk(clk),
        .env(env_0),
        .im({im_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phase(phase_0),
        .re({re_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .valid(valid[0]));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2 phase_env_i_1
       (.active(raw_run),
        .clk(clk),
        .env(env_1),
        .im({im_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phase(phase_1),
        .re({re_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .valid(valid[1]));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3 phase_env_i_2
       (.active(raw_run),
        .clk(clk),
        .env(env_2),
        .im({im_2,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phase(phase_2),
        .re({re_2,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .valid(valid[2]));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_ana_0_0_morlet_to_phase_env phase_env_i_3
       (.active(raw_run),
        .clk(clk),
        .env(env_3),
        .im({im_3,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phase(phase_3),
        .re({re_3,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .valid(valid[3]));
endmodule

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module ps_comp_ana_0_0_cordic_atan2_16
   (aclk,
    s_axis_cartesian_tvalid,
    s_axis_cartesian_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT:S_AXIS_PHASE:S_AXIS_CARTESIAN, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_CARTESIAN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CARTESIAN, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_cartesian_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TDATA" *) input [47:0]s_axis_cartesian_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [23:0]m_axis_dout_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_sqrt_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module ps_comp_ana_0_0_cordic_sqrt_16
   (aclk,
    s_axis_cartesian_tvalid,
    s_axis_cartesian_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT:S_AXIS_PHASE:S_AXIS_CARTESIAN, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_CARTESIAN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CARTESIAN, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_cartesian_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TDATA" *) input [31:0]s_axis_cartesian_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [15:0]m_axis_dout_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_comp_ana,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_comp_ana" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_ana_0_0_fifo_comp_ana
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [60:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [60:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_comp_raw,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_comp_raw" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_ana_0_0_fifo_comp_raw
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [127:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [127:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_1" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_ana_0_0_ila_1
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
    probe21,
    probe22,
    probe23,
    probe24,
    probe25,
    probe26,
    probe27,
    probe28,
    probe29,
    probe30,
    probe31);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [4:0]probe2;
  input [15:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [15:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [15:0]probe10;
  input [8:0]probe11;
  input [8:0]probe12;
  input [19:0]probe13;
  input [15:0]probe14;
  input [15:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;
  input [15:0]probe18;
  input [15:0]probe19;
  input [15:0]probe20;
  input [15:0]probe21;
  input [15:0]probe22;
  input [3:0]probe23;
  input [15:0]probe24;
  input [15:0]probe25;
  input [15:0]probe26;
  input [15:0]probe27;
  input [19:0]probe28;
  input [19:0]probe29;
  input [19:0]probe30;
  input [19:0]probe31;


endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_comp_ana_0_0_morlet_to_phase_env
   (clk,
    active,
    re,
    im,
    valid,
    env,
    phase);
  input clk;
  input active;
  input [23:0]re;
  input [23:0]im;
  output valid;
  output [15:0]env;
  output [19:0]phase;

  wire active;
  wire [15:0]amp_4;
  wire clk;
  wire delay0;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.delay[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_2_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  wire \morlet_to_phase_env.valid_i_3_n_0 ;
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_3/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(amp_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(active),
        .O(delay0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_2 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay[4]_i_2_n_0 ),
        .I2(delay0),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(active),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.delay[4]_i_2_n_0 ));
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[0]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[1]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[2]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[3]_i_2_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55555555D5555554)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [3]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
        .I5(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[9]),
        .Q(env[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ),
        .Q(p2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O({\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[15]_i_2_n_0 ,\morlet_to_phase_env.p2[15]_i_3_n_0 ,\morlet_to_phase_env.p2[15]_i_4_n_0 ,\morlet_to_phase_env.p2[15]_i_5_n_0 ,\morlet_to_phase_env.p2[15]_i_6_n_0 ,\morlet_to_phase_env.p2[15]_i_7_n_0 ,\morlet_to_phase_env.p2[15]_i_8_n_0 ,\morlet_to_phase_env.p2[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ),
        .Q(p2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[23]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O({\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[23]_i_2_n_0 ,\morlet_to_phase_env.p2[23]_i_3_n_0 ,\morlet_to_phase_env.p2[23]_i_4_n_0 ,\morlet_to_phase_env.p2[23]_i_5_n_0 ,\morlet_to_phase_env.p2[23]_i_6_n_0 ,\morlet_to_phase_env.p2[23]_i_7_n_0 ,\morlet_to_phase_env.p2[23]_i_8_n_0 ,\morlet_to_phase_env.p2[23]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ),
        .Q(p2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[31]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_reg[31]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O({\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[31]_i_2_n_0 ,\morlet_to_phase_env.p2[31]_i_3_n_0 ,\morlet_to_phase_env.p2[31]_i_4_n_0 ,\morlet_to_phase_env.p2[31]_i_5_n_0 ,\morlet_to_phase_env.p2[31]_i_6_n_0 ,\morlet_to_phase_env.p2[31]_i_7_n_0 ,\morlet_to_phase_env.p2[31]_i_8_n_0 ,\morlet_to_phase_env.p2[31]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ),
        .Q(p2[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O({\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[7]_i_2_n_0 ,\morlet_to_phase_env.p2[7]_i_3_n_0 ,\morlet_to_phase_env.p2[7]_i_4_n_0 ,\morlet_to_phase_env.p2[7]_i_5_n_0 ,\morlet_to_phase_env.p2[7]_i_6_n_0 ,\morlet_to_phase_env.p2[7]_i_7_n_0 ,\morlet_to_phase_env.p2[7]_i_8_n_0 ,\morlet_to_phase_env.p2[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(valid),
        .I2(\morlet_to_phase_env.valid_i_3_n_0 ),
        .I3(active),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [4]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \morlet_to_phase_env.valid_i_3 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .O(\morlet_to_phase_env.valid_i_3_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  mult_16_16_HD4 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_sqrt_16_HD5 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_atan2_16_HD6 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__1
   (clk,
    active,
    re,
    im,
    valid,
    env,
    phase);
  input clk;
  input active;
  input [23:0]re;
  input [23:0]im;
  output valid;
  output [15:0]env;
  output [19:0]phase;

  wire active;
  wire [15:0]amp_4;
  wire clk;
  wire delay0;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.delay[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_2_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  wire \morlet_to_phase_env.valid_i_3_n_0 ;
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_0/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(amp_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(active),
        .O(delay0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_2 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay[4]_i_2_n_0 ),
        .I2(delay0),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(active),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.delay[4]_i_2_n_0 ));
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[0]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[1]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[2]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[3]_i_2_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55555555D5555554)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [3]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
        .I5(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[9]),
        .Q(env[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ),
        .Q(p2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O({\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[15]_i_2_n_0 ,\morlet_to_phase_env.p2[15]_i_3_n_0 ,\morlet_to_phase_env.p2[15]_i_4_n_0 ,\morlet_to_phase_env.p2[15]_i_5_n_0 ,\morlet_to_phase_env.p2[15]_i_6_n_0 ,\morlet_to_phase_env.p2[15]_i_7_n_0 ,\morlet_to_phase_env.p2[15]_i_8_n_0 ,\morlet_to_phase_env.p2[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ),
        .Q(p2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[23]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O({\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[23]_i_2_n_0 ,\morlet_to_phase_env.p2[23]_i_3_n_0 ,\morlet_to_phase_env.p2[23]_i_4_n_0 ,\morlet_to_phase_env.p2[23]_i_5_n_0 ,\morlet_to_phase_env.p2[23]_i_6_n_0 ,\morlet_to_phase_env.p2[23]_i_7_n_0 ,\morlet_to_phase_env.p2[23]_i_8_n_0 ,\morlet_to_phase_env.p2[23]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ),
        .Q(p2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[31]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_reg[31]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O({\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[31]_i_2_n_0 ,\morlet_to_phase_env.p2[31]_i_3_n_0 ,\morlet_to_phase_env.p2[31]_i_4_n_0 ,\morlet_to_phase_env.p2[31]_i_5_n_0 ,\morlet_to_phase_env.p2[31]_i_6_n_0 ,\morlet_to_phase_env.p2[31]_i_7_n_0 ,\morlet_to_phase_env.p2[31]_i_8_n_0 ,\morlet_to_phase_env.p2[31]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ),
        .Q(p2[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O({\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[7]_i_2_n_0 ,\morlet_to_phase_env.p2[7]_i_3_n_0 ,\morlet_to_phase_env.p2[7]_i_4_n_0 ,\morlet_to_phase_env.p2[7]_i_5_n_0 ,\morlet_to_phase_env.p2[7]_i_6_n_0 ,\morlet_to_phase_env.p2[7]_i_7_n_0 ,\morlet_to_phase_env.p2[7]_i_8_n_0 ,\morlet_to_phase_env.p2[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(valid),
        .I2(\morlet_to_phase_env.valid_i_3_n_0 ),
        .I3(active),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [4]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \morlet_to_phase_env.valid_i_3 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .O(\morlet_to_phase_env.valid_i_3_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_comp_ana_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_comp_ana_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__2
   (clk,
    active,
    re,
    im,
    valid,
    env,
    phase);
  input clk;
  input active;
  input [23:0]re;
  input [23:0]im;
  output valid;
  output [15:0]env;
  output [19:0]phase;

  wire active;
  wire [15:0]amp_4;
  wire clk;
  wire delay0;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.delay[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_2_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  wire \morlet_to_phase_env.valid_i_3_n_0 ;
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_1/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(amp_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(active),
        .O(delay0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_2 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay[4]_i_2_n_0 ),
        .I2(delay0),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(active),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.delay[4]_i_2_n_0 ));
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[0]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[1]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[2]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[3]_i_2_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55555555D5555554)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [3]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
        .I5(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[9]),
        .Q(env[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ),
        .Q(p2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O({\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[15]_i_2_n_0 ,\morlet_to_phase_env.p2[15]_i_3_n_0 ,\morlet_to_phase_env.p2[15]_i_4_n_0 ,\morlet_to_phase_env.p2[15]_i_5_n_0 ,\morlet_to_phase_env.p2[15]_i_6_n_0 ,\morlet_to_phase_env.p2[15]_i_7_n_0 ,\morlet_to_phase_env.p2[15]_i_8_n_0 ,\morlet_to_phase_env.p2[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ),
        .Q(p2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[23]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O({\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[23]_i_2_n_0 ,\morlet_to_phase_env.p2[23]_i_3_n_0 ,\morlet_to_phase_env.p2[23]_i_4_n_0 ,\morlet_to_phase_env.p2[23]_i_5_n_0 ,\morlet_to_phase_env.p2[23]_i_6_n_0 ,\morlet_to_phase_env.p2[23]_i_7_n_0 ,\morlet_to_phase_env.p2[23]_i_8_n_0 ,\morlet_to_phase_env.p2[23]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ),
        .Q(p2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[31]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_reg[31]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O({\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[31]_i_2_n_0 ,\morlet_to_phase_env.p2[31]_i_3_n_0 ,\morlet_to_phase_env.p2[31]_i_4_n_0 ,\morlet_to_phase_env.p2[31]_i_5_n_0 ,\morlet_to_phase_env.p2[31]_i_6_n_0 ,\morlet_to_phase_env.p2[31]_i_7_n_0 ,\morlet_to_phase_env.p2[31]_i_8_n_0 ,\morlet_to_phase_env.p2[31]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ),
        .Q(p2[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O({\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[7]_i_2_n_0 ,\morlet_to_phase_env.p2[7]_i_3_n_0 ,\morlet_to_phase_env.p2[7]_i_4_n_0 ,\morlet_to_phase_env.p2[7]_i_5_n_0 ,\morlet_to_phase_env.p2[7]_i_6_n_0 ,\morlet_to_phase_env.p2[7]_i_7_n_0 ,\morlet_to_phase_env.p2[7]_i_8_n_0 ,\morlet_to_phase_env.p2[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(valid),
        .I2(\morlet_to_phase_env.valid_i_3_n_0 ),
        .I3(active),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [4]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \morlet_to_phase_env.valid_i_3 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .O(\morlet_to_phase_env.valid_i_3_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_comp_ana_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_comp_ana_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_comp_ana_0_0_morlet_to_phase_env__xdcDup__3
   (clk,
    active,
    re,
    im,
    valid,
    env,
    phase);
  input clk;
  input active;
  input [23:0]re;
  input [23:0]im;
  output valid;
  output [15:0]env;
  output [19:0]phase;

  wire active;
  wire [15:0]amp_4;
  wire clk;
  wire delay0;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.delay[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_2_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[23]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[31]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  wire \morlet_to_phase_env.valid_i_3_n_0 ;
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/phase_env_i_2/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(amp_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(active),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(active),
        .O(delay0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_2 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay[4]_i_2_n_0 ),
        .I2(delay0),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(active),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.delay[4]_i_2_n_0 ));
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[0]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[1]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[2]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(delay0),
        .D(\morlet_to_phase_env.delay[3]_i_2_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55555555D5555554)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(active),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [3]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
        .I5(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[9]),
        .Q(env[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[31]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ),
        .Q(p2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O({\morlet_to_phase_env.p2_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[15]_i_2_n_0 ,\morlet_to_phase_env.p2[15]_i_3_n_0 ,\morlet_to_phase_env.p2[15]_i_4_n_0 ,\morlet_to_phase_env.p2[15]_i_5_n_0 ,\morlet_to_phase_env.p2[15]_i_6_n_0 ,\morlet_to_phase_env.p2[15]_i_7_n_0 ,\morlet_to_phase_env.p2[15]_i_8_n_0 ,\morlet_to_phase_env.p2[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ),
        .Q(p2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[23]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O({\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[23]_i_2_n_0 ,\morlet_to_phase_env.p2[23]_i_3_n_0 ,\morlet_to_phase_env.p2[23]_i_4_n_0 ,\morlet_to_phase_env.p2[23]_i_5_n_0 ,\morlet_to_phase_env.p2[23]_i_6_n_0 ,\morlet_to_phase_env.p2[23]_i_7_n_0 ,\morlet_to_phase_env.p2[23]_i_8_n_0 ,\morlet_to_phase_env.p2[23]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ),
        .Q(p2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[31]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_reg[31]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O({\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[31]_i_2_n_0 ,\morlet_to_phase_env.p2[31]_i_3_n_0 ,\morlet_to_phase_env.p2[31]_i_4_n_0 ,\morlet_to_phase_env.p2[31]_i_5_n_0 ,\morlet_to_phase_env.p2[31]_i_6_n_0 ,\morlet_to_phase_env.p2[31]_i_7_n_0 ,\morlet_to_phase_env.p2[31]_i_8_n_0 ,\morlet_to_phase_env.p2[31]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ),
        .Q(p2[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O({\morlet_to_phase_env.p2_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2[7]_i_2_n_0 ,\morlet_to_phase_env.p2[7]_i_3_n_0 ,\morlet_to_phase_env.p2[7]_i_4_n_0 ,\morlet_to_phase_env.p2[7]_i_5_n_0 ,\morlet_to_phase_env.p2[7]_i_6_n_0 ,\morlet_to_phase_env.p2[7]_i_7_n_0 ,\morlet_to_phase_env.p2[7]_i_8_n_0 ,\morlet_to_phase_env.p2[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(valid),
        .I2(\morlet_to_phase_env.valid_i_3_n_0 ),
        .I3(active),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [4]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \morlet_to_phase_env.valid_i_3 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .O(\morlet_to_phase_env.valid_i_3_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_ana_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_comp_ana_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_comp_ana_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_16_16" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_comp_ana_0_0_mult_16_16
   (CLK,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;


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
