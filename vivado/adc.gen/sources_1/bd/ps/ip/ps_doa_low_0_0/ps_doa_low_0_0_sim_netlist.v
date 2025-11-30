// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov 30 15:00:41 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_low_0_0/ps_doa_low_0_0_sim_netlist.v
// Design      : ps_doa_low_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module cordic_atan2_16_HD7
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
module cordic_sqrt_16_HD6
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
module mult_16_16_HD5
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

(* CHECK_LICENSE_TYPE = "ps_doa_low_0_0,doa_low,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "doa_low,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_doa_low_0_0
   (clk,
    reset,
    fifo_valid,
    fifo_data,
    valid,
    freq,
    env_N,
    phase_N,
    env_E,
    phase_E,
    env_W,
    phase_W);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input fifo_valid;
  input [47:0]fifo_data;
  output valid;
  output [31:0]freq;
  output [15:0]env_N;
  output [19:0]phase_N;
  output [15:0]env_E;
  output [19:0]phase_E;
  output [15:0]env_W;
  output [19:0]phase_W;

  wire clk;
  wire [15:0]env_E;
  wire [15:0]env_N;
  wire [15:0]env_W;
  wire [47:0]fifo_data;
  wire fifo_valid;
  wire [31:0]freq;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire reset;
  wire valid;

  ps_doa_low_0_0_doa_low inst
       (.clk(clk),
        .env_E(env_E),
        .env_N(env_N),
        .env_W(env_W),
        .fifo_data(fifo_data),
        .fifo_valid(fifo_valid),
        .freq(freq),
        .phase_E(phase_E),
        .phase_N(phase_N),
        .phase_W(phase_W),
        .reset(reset),
        .valid(valid));
endmodule

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_cordic_atan2_16
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
module ps_doa_low_0_0_cordic_sqrt_16
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

(* ORIG_REF_NAME = "doa_low" *) (* keep_hierarchy = "soft" *) 
module ps_doa_low_0_0_doa_low
   (clk,
    reset,
    fifo_valid,
    fifo_data,
    valid,
    freq,
    env_N,
    phase_N,
    env_E,
    phase_E,
    env_W,
    phase_W);
  input clk;
  input reset;
  input fifo_valid;
  input [47:0]fifo_data;
  output valid;
  output [31:0]freq;
  output [15:0]env_N;
  output [19:0]phase_N;
  output [15:0]env_E;
  output [19:0]phase_E;
  output [15:0]env_W;
  output [19:0]phase_W;

  (* MARK_DEBUG *) wire [15:0]E;
  (* MARK_DEBUG *) wire [15:0]N;
  (* MARK_DEBUG *) wire [15:0]W;
  wire clk;
  (* MARK_DEBUG *) wire [15:0]counter;
  wire [0:0]counter__0;
  wire \deci_low.counter[7]_i_2_n_0 ;
  wire \deci_low.counter_reg[15]_i_1_n_1 ;
  wire \deci_low.counter_reg[15]_i_1_n_2 ;
  wire \deci_low.counter_reg[15]_i_1_n_3 ;
  wire \deci_low.counter_reg[15]_i_1_n_4 ;
  wire \deci_low.counter_reg[15]_i_1_n_5 ;
  wire \deci_low.counter_reg[15]_i_1_n_6 ;
  wire \deci_low.counter_reg[15]_i_1_n_7 ;
  wire \deci_low.counter_reg[7]_i_1_n_0 ;
  wire \deci_low.counter_reg[7]_i_1_n_1 ;
  wire \deci_low.counter_reg[7]_i_1_n_2 ;
  wire \deci_low.counter_reg[7]_i_1_n_3 ;
  wire \deci_low.counter_reg[7]_i_1_n_4 ;
  wire \deci_low.counter_reg[7]_i_1_n_5 ;
  wire \deci_low.counter_reg[7]_i_1_n_6 ;
  wire \deci_low.counter_reg[7]_i_1_n_7 ;
  wire \deci_low.diffE[15]_i_2_n_0 ;
  wire \deci_low.diffE[15]_i_3_n_0 ;
  wire \deci_low.diffE[15]_i_4_n_0 ;
  wire \deci_low.diffE[15]_i_5_n_0 ;
  wire \deci_low.diffE[15]_i_6_n_0 ;
  wire \deci_low.diffE[15]_i_7_n_0 ;
  wire \deci_low.diffE[15]_i_8_n_0 ;
  wire \deci_low.diffE[15]_i_9_n_0 ;
  wire \deci_low.diffE[19]_i_2_n_0 ;
  wire \deci_low.diffE[19]_i_3_n_0 ;
  wire \deci_low.diffE[19]_i_4_n_0 ;
  wire \deci_low.diffE[19]_i_5_n_0 ;
  wire \deci_low.diffE[7]_i_2_n_0 ;
  wire \deci_low.diffE[7]_i_3_n_0 ;
  wire \deci_low.diffE[7]_i_4_n_0 ;
  wire \deci_low.diffE[7]_i_5_n_0 ;
  wire \deci_low.diffE[7]_i_6_n_0 ;
  wire \deci_low.diffE[7]_i_7_n_0 ;
  wire \deci_low.diffE[7]_i_8_n_0 ;
  wire \deci_low.diffE[7]_i_9_n_0 ;
  wire \deci_low.diffE_reg[15]_i_1_n_0 ;
  wire \deci_low.diffE_reg[15]_i_1_n_1 ;
  wire \deci_low.diffE_reg[15]_i_1_n_2 ;
  wire \deci_low.diffE_reg[15]_i_1_n_3 ;
  wire \deci_low.diffE_reg[15]_i_1_n_4 ;
  wire \deci_low.diffE_reg[15]_i_1_n_5 ;
  wire \deci_low.diffE_reg[15]_i_1_n_6 ;
  wire \deci_low.diffE_reg[15]_i_1_n_7 ;
  wire \deci_low.diffE_reg[19]_i_1_n_5 ;
  wire \deci_low.diffE_reg[19]_i_1_n_6 ;
  wire \deci_low.diffE_reg[19]_i_1_n_7 ;
  wire \deci_low.diffE_reg[7]_i_1_n_0 ;
  wire \deci_low.diffE_reg[7]_i_1_n_1 ;
  wire \deci_low.diffE_reg[7]_i_1_n_2 ;
  wire \deci_low.diffE_reg[7]_i_1_n_3 ;
  wire \deci_low.diffE_reg[7]_i_1_n_4 ;
  wire \deci_low.diffE_reg[7]_i_1_n_5 ;
  wire \deci_low.diffE_reg[7]_i_1_n_6 ;
  wire \deci_low.diffE_reg[7]_i_1_n_7 ;
  wire \deci_low.diffN[15]_i_2_n_0 ;
  wire \deci_low.diffN[15]_i_3_n_0 ;
  wire \deci_low.diffN[15]_i_4_n_0 ;
  wire \deci_low.diffN[15]_i_5_n_0 ;
  wire \deci_low.diffN[15]_i_6_n_0 ;
  wire \deci_low.diffN[15]_i_7_n_0 ;
  wire \deci_low.diffN[15]_i_8_n_0 ;
  wire \deci_low.diffN[15]_i_9_n_0 ;
  wire \deci_low.diffN[19]_i_2_n_0 ;
  wire \deci_low.diffN[19]_i_3_n_0 ;
  wire \deci_low.diffN[19]_i_4_n_0 ;
  wire \deci_low.diffN[19]_i_5_n_0 ;
  wire \deci_low.diffN[7]_i_2_n_0 ;
  wire \deci_low.diffN[7]_i_3_n_0 ;
  wire \deci_low.diffN[7]_i_4_n_0 ;
  wire \deci_low.diffN[7]_i_5_n_0 ;
  wire \deci_low.diffN[7]_i_6_n_0 ;
  wire \deci_low.diffN[7]_i_7_n_0 ;
  wire \deci_low.diffN[7]_i_8_n_0 ;
  wire \deci_low.diffN[7]_i_9_n_0 ;
  wire \deci_low.diffN_reg[15]_i_1_n_0 ;
  wire \deci_low.diffN_reg[15]_i_1_n_1 ;
  wire \deci_low.diffN_reg[15]_i_1_n_2 ;
  wire \deci_low.diffN_reg[15]_i_1_n_3 ;
  wire \deci_low.diffN_reg[15]_i_1_n_4 ;
  wire \deci_low.diffN_reg[15]_i_1_n_5 ;
  wire \deci_low.diffN_reg[15]_i_1_n_6 ;
  wire \deci_low.diffN_reg[15]_i_1_n_7 ;
  wire \deci_low.diffN_reg[19]_i_1_n_5 ;
  wire \deci_low.diffN_reg[19]_i_1_n_6 ;
  wire \deci_low.diffN_reg[19]_i_1_n_7 ;
  wire \deci_low.diffN_reg[7]_i_1_n_0 ;
  wire \deci_low.diffN_reg[7]_i_1_n_1 ;
  wire \deci_low.diffN_reg[7]_i_1_n_2 ;
  wire \deci_low.diffN_reg[7]_i_1_n_3 ;
  wire \deci_low.diffN_reg[7]_i_1_n_4 ;
  wire \deci_low.diffN_reg[7]_i_1_n_5 ;
  wire \deci_low.diffN_reg[7]_i_1_n_6 ;
  wire \deci_low.diffN_reg[7]_i_1_n_7 ;
  wire \deci_low.diffW[15]_i_2_n_0 ;
  wire \deci_low.diffW[15]_i_3_n_0 ;
  wire \deci_low.diffW[15]_i_4_n_0 ;
  wire \deci_low.diffW[15]_i_5_n_0 ;
  wire \deci_low.diffW[15]_i_6_n_0 ;
  wire \deci_low.diffW[15]_i_7_n_0 ;
  wire \deci_low.diffW[15]_i_8_n_0 ;
  wire \deci_low.diffW[15]_i_9_n_0 ;
  wire \deci_low.diffW[19]_i_2_n_0 ;
  wire \deci_low.diffW[19]_i_3_n_0 ;
  wire \deci_low.diffW[19]_i_4_n_0 ;
  wire \deci_low.diffW[19]_i_5_n_0 ;
  wire \deci_low.diffW[7]_i_2_n_0 ;
  wire \deci_low.diffW[7]_i_3_n_0 ;
  wire \deci_low.diffW[7]_i_4_n_0 ;
  wire \deci_low.diffW[7]_i_5_n_0 ;
  wire \deci_low.diffW[7]_i_6_n_0 ;
  wire \deci_low.diffW[7]_i_7_n_0 ;
  wire \deci_low.diffW[7]_i_8_n_0 ;
  wire \deci_low.diffW[7]_i_9_n_0 ;
  wire \deci_low.diffW_reg[15]_i_1_n_0 ;
  wire \deci_low.diffW_reg[15]_i_1_n_1 ;
  wire \deci_low.diffW_reg[15]_i_1_n_2 ;
  wire \deci_low.diffW_reg[15]_i_1_n_3 ;
  wire \deci_low.diffW_reg[15]_i_1_n_4 ;
  wire \deci_low.diffW_reg[15]_i_1_n_5 ;
  wire \deci_low.diffW_reg[15]_i_1_n_6 ;
  wire \deci_low.diffW_reg[15]_i_1_n_7 ;
  wire \deci_low.diffW_reg[19]_i_1_n_5 ;
  wire \deci_low.diffW_reg[19]_i_1_n_6 ;
  wire \deci_low.diffW_reg[19]_i_1_n_7 ;
  wire \deci_low.diffW_reg[7]_i_1_n_0 ;
  wire \deci_low.diffW_reg[7]_i_1_n_1 ;
  wire \deci_low.diffW_reg[7]_i_1_n_2 ;
  wire \deci_low.diffW_reg[7]_i_1_n_3 ;
  wire \deci_low.diffW_reg[7]_i_1_n_4 ;
  wire \deci_low.diffW_reg[7]_i_1_n_5 ;
  wire \deci_low.diffW_reg[7]_i_1_n_6 ;
  wire \deci_low.diffW_reg[7]_i_1_n_7 ;
  wire \deci_low.freq[27]_i_1_n_0 ;
  wire \deci_low.mul_i_1_n_0 ;
  wire \deci_low.phase_sum[15]_i_10_n_0 ;
  wire \deci_low.phase_sum[15]_i_11_n_0 ;
  wire \deci_low.phase_sum[15]_i_12_n_0 ;
  wire \deci_low.phase_sum[15]_i_13_n_0 ;
  wire \deci_low.phase_sum[15]_i_14_n_0 ;
  wire \deci_low.phase_sum[15]_i_15_n_0 ;
  wire \deci_low.phase_sum[15]_i_16_n_0 ;
  wire \deci_low.phase_sum[15]_i_17_n_0 ;
  wire \deci_low.phase_sum[15]_i_2_n_0 ;
  wire \deci_low.phase_sum[15]_i_3_n_0 ;
  wire \deci_low.phase_sum[15]_i_4_n_0 ;
  wire \deci_low.phase_sum[15]_i_5_n_0 ;
  wire \deci_low.phase_sum[15]_i_6_n_0 ;
  wire \deci_low.phase_sum[15]_i_7_n_0 ;
  wire \deci_low.phase_sum[15]_i_8_n_0 ;
  wire \deci_low.phase_sum[15]_i_9_n_0 ;
  wire \deci_low.phase_sum[21]_i_10_n_0 ;
  wire \deci_low.phase_sum[21]_i_11_n_0 ;
  wire \deci_low.phase_sum[21]_i_3_n_0 ;
  wire \deci_low.phase_sum[21]_i_4_n_0 ;
  wire \deci_low.phase_sum[21]_i_5_n_0 ;
  wire \deci_low.phase_sum[21]_i_6_n_0 ;
  wire \deci_low.phase_sum[21]_i_7_n_0 ;
  wire \deci_low.phase_sum[21]_i_8_n_0 ;
  wire \deci_low.phase_sum[21]_i_9_n_0 ;
  wire \deci_low.phase_sum[7]_i_10_n_0 ;
  wire \deci_low.phase_sum[7]_i_11_n_0 ;
  wire \deci_low.phase_sum[7]_i_12_n_0 ;
  wire \deci_low.phase_sum[7]_i_13_n_0 ;
  wire \deci_low.phase_sum[7]_i_14_n_0 ;
  wire \deci_low.phase_sum[7]_i_15_n_0 ;
  wire \deci_low.phase_sum[7]_i_16_n_0 ;
  wire \deci_low.phase_sum[7]_i_2_n_0 ;
  wire \deci_low.phase_sum[7]_i_3_n_0 ;
  wire \deci_low.phase_sum[7]_i_4_n_0 ;
  wire \deci_low.phase_sum[7]_i_5_n_0 ;
  wire \deci_low.phase_sum[7]_i_6_n_0 ;
  wire \deci_low.phase_sum[7]_i_7_n_0 ;
  wire \deci_low.phase_sum[7]_i_8_n_0 ;
  wire \deci_low.phase_sum[7]_i_9_n_0 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_0 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_1 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_2 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_3 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_4 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_5 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_6 ;
  wire \deci_low.phase_sum_reg[15]_i_1_n_7 ;
  wire \deci_low.phase_sum_reg[21]_i_2_n_3 ;
  wire \deci_low.phase_sum_reg[21]_i_2_n_4 ;
  wire \deci_low.phase_sum_reg[21]_i_2_n_5 ;
  wire \deci_low.phase_sum_reg[21]_i_2_n_6 ;
  wire \deci_low.phase_sum_reg[21]_i_2_n_7 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_0 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_1 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_2 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_3 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_4 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_5 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_6 ;
  wire \deci_low.phase_sum_reg[7]_i_1_n_7 ;
  wire [19:0]diffE;
  wire [19:0]diffE02_out;
  wire [19:0]diffN;
  wire [19:0]diffN04_out;
  wire [19:0]diffW;
  wire [19:0]diffW00_out;
  wire [15:0]envE;
  wire [15:0]envN;
  wire [15:0]envW;
  (* MARK_DEBUG *) wire [15:0]env_E;
  (* MARK_DEBUG *) wire [15:0]env_N;
  (* MARK_DEBUG *) wire [15:0]env_W;
  (* MARK_DEBUG *) wire [47:0]fifo_data;
  (* MARK_DEBUG *) wire fifo_valid;
  wire fir_doa_low_re_N_i_i_1_n_0;
  (* MARK_DEBUG *) wire [39:0]fir_im_E;
  (* MARK_DEBUG *) wire [39:0]fir_im_N;
  (* MARK_DEBUG *) wire [39:0]fir_im_W;
  (* MARK_DEBUG *) wire [39:0]fir_re_E;
  (* MARK_DEBUG *) wire [39:0]fir_re_N;
  (* MARK_DEBUG *) wire [39:0]fir_re_W;
  wire [47:20]fp;
  (* MARK_DEBUG *) wire [31:0]freq;
  wire mul;
  wire p_0_in__0;
  wire [15:0]p_1_in;
  wire [19:0]phaseE;
  wire [19:0]phaseN;
  wire [19:0]phaseW;
  (* MARK_DEBUG *) wire [19:0]phase_E;
  (* MARK_DEBUG *) wire [19:0]phase_N;
  (* MARK_DEBUG *) wire [19:0]phase_W;
  wire [21:0]phase_sum;
  wire [21:0]phase_sum0;
  wire [19:0]prevE;
  wire [19:0]prevN;
  wire [19:0]prevW;
  wire reset;
  (* MARK_DEBUG *) wire valid;
  wire validE;
  wire validN;
  wire validW;
  wire [7:7]\NLW_deci_low.counter_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_deci_low.diffE_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_low.diffE_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_deci_low.diffN_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_low.diffN_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_deci_low.diffW_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_low.diffW_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:5]\NLW_deci_low.phase_sum_reg[21]_i_2_CO_UNCONNECTED ;
  wire [7:6]\NLW_deci_low.phase_sum_reg[21]_i_2_O_UNCONNECTED ;
  wire [49:0]NLW_doa_freq_P_UNCONNECTED;
  wire NLW_fir_doa_low_im_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_im_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_im_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_re_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_re_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_re_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED;

  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[16]),
        .Q(E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[26]),
        .Q(E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[27]),
        .Q(E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[28]),
        .Q(E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[29]),
        .Q(E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[30]),
        .Q(E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[31]),
        .Q(E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[17]),
        .Q(E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[18]),
        .Q(E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[19]),
        .Q(E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[20]),
        .Q(E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[21]),
        .Q(E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[22]),
        .Q(E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[23]),
        .Q(E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[24]),
        .Q(E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[25]),
        .Q(E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[0]),
        .Q(N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[10]),
        .Q(N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[11]),
        .Q(N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[12]),
        .Q(N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[13]),
        .Q(N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[14]),
        .Q(N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[15]),
        .Q(N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[1]),
        .Q(N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[2]),
        .Q(N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[3]),
        .Q(N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[4]),
        .Q(N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[5]),
        .Q(N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[6]),
        .Q(N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[7]),
        .Q(N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[8]),
        .Q(N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[9]),
        .Q(N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[32]),
        .Q(W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[42]),
        .Q(W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[43]),
        .Q(W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[44]),
        .Q(W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[45]),
        .Q(W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[46]),
        .Q(W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[47]),
        .Q(W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[33]),
        .Q(W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[34]),
        .Q(W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[35]),
        .Q(W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[36]),
        .Q(W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[37]),
        .Q(W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[38]),
        .Q(W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[39]),
        .Q(W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[40]),
        .Q(W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[41]),
        .Q(W[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.counter[7]_i_2 
       (.I0(counter[0]),
        .O(\deci_low.counter[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(counter__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.counter_reg[15]_i_1 
       (.CI(\deci_low.counter_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.counter_reg[15]_i_1_CO_UNCONNECTED [7],\deci_low.counter_reg[15]_i_1_n_1 ,\deci_low.counter_reg[15]_i_1_n_2 ,\deci_low.counter_reg[15]_i_1_n_3 ,\deci_low.counter_reg[15]_i_1_n_4 ,\deci_low.counter_reg[15]_i_1_n_5 ,\deci_low.counter_reg[15]_i_1_n_6 ,\deci_low.counter_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[15:8]),
        .S(counter[15:8]));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(counter__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.counter_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\deci_low.counter_reg[7]_i_1_n_0 ,\deci_low.counter_reg[7]_i_1_n_1 ,\deci_low.counter_reg[7]_i_1_n_2 ,\deci_low.counter_reg[7]_i_1_n_3 ,\deci_low.counter_reg[7]_i_1_n_4 ,\deci_low.counter_reg[7]_i_1_n_5 ,\deci_low.counter_reg[7]_i_1_n_6 ,\deci_low.counter_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter[0]}),
        .O(p_1_in[7:0]),
        .S({counter[7:1],\deci_low.counter[7]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(counter__0));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_2 
       (.I0(phase_E[15]),
        .I1(prevE[15]),
        .O(\deci_low.diffE[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_3 
       (.I0(phase_E[14]),
        .I1(prevE[14]),
        .O(\deci_low.diffE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_4 
       (.I0(phase_E[13]),
        .I1(prevE[13]),
        .O(\deci_low.diffE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_5 
       (.I0(phase_E[12]),
        .I1(prevE[12]),
        .O(\deci_low.diffE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_6 
       (.I0(phase_E[11]),
        .I1(prevE[11]),
        .O(\deci_low.diffE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_7 
       (.I0(phase_E[10]),
        .I1(prevE[10]),
        .O(\deci_low.diffE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_8 
       (.I0(phase_E[9]),
        .I1(prevE[9]),
        .O(\deci_low.diffE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[15]_i_9 
       (.I0(phase_E[8]),
        .I1(prevE[8]),
        .O(\deci_low.diffE[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[19]_i_2 
       (.I0(phase_E[19]),
        .I1(prevE[19]),
        .O(\deci_low.diffE[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[19]_i_3 
       (.I0(phase_E[18]),
        .I1(prevE[18]),
        .O(\deci_low.diffE[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[19]_i_4 
       (.I0(phase_E[17]),
        .I1(prevE[17]),
        .O(\deci_low.diffE[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[19]_i_5 
       (.I0(phase_E[16]),
        .I1(prevE[16]),
        .O(\deci_low.diffE[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_2 
       (.I0(phase_E[7]),
        .I1(prevE[7]),
        .O(\deci_low.diffE[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_3 
       (.I0(phase_E[6]),
        .I1(prevE[6]),
        .O(\deci_low.diffE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_4 
       (.I0(phase_E[5]),
        .I1(prevE[5]),
        .O(\deci_low.diffE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_5 
       (.I0(phase_E[4]),
        .I1(prevE[4]),
        .O(\deci_low.diffE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_6 
       (.I0(phase_E[3]),
        .I1(prevE[3]),
        .O(\deci_low.diffE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_7 
       (.I0(phase_E[2]),
        .I1(prevE[2]),
        .O(\deci_low.diffE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_8 
       (.I0(phase_E[1]),
        .I1(prevE[1]),
        .O(\deci_low.diffE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffE[7]_i_9 
       (.I0(phase_E[0]),
        .I1(prevE[0]),
        .O(\deci_low.diffE[7]_i_9_n_0 ));
  FDRE \deci_low.diffE_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[0]),
        .Q(diffE[0]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[10]),
        .Q(diffE[10]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[11]),
        .Q(diffE[11]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[12]),
        .Q(diffE[12]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[13]),
        .Q(diffE[13]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[14]),
        .Q(diffE[14]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[15]),
        .Q(diffE[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffE_reg[15]_i_1 
       (.CI(\deci_low.diffE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.diffE_reg[15]_i_1_n_0 ,\deci_low.diffE_reg[15]_i_1_n_1 ,\deci_low.diffE_reg[15]_i_1_n_2 ,\deci_low.diffE_reg[15]_i_1_n_3 ,\deci_low.diffE_reg[15]_i_1_n_4 ,\deci_low.diffE_reg[15]_i_1_n_5 ,\deci_low.diffE_reg[15]_i_1_n_6 ,\deci_low.diffE_reg[15]_i_1_n_7 }),
        .DI(phase_E[15:8]),
        .O(diffE02_out[15:8]),
        .S({\deci_low.diffE[15]_i_2_n_0 ,\deci_low.diffE[15]_i_3_n_0 ,\deci_low.diffE[15]_i_4_n_0 ,\deci_low.diffE[15]_i_5_n_0 ,\deci_low.diffE[15]_i_6_n_0 ,\deci_low.diffE[15]_i_7_n_0 ,\deci_low.diffE[15]_i_8_n_0 ,\deci_low.diffE[15]_i_9_n_0 }));
  FDRE \deci_low.diffE_reg[16] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[16]),
        .Q(diffE[16]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[17] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[17]),
        .Q(diffE[17]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[18] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[18]),
        .Q(diffE[18]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[19] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[19]),
        .Q(diffE[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffE_reg[19]_i_1 
       (.CI(\deci_low.diffE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.diffE_reg[19]_i_1_CO_UNCONNECTED [7:3],\deci_low.diffE_reg[19]_i_1_n_5 ,\deci_low.diffE_reg[19]_i_1_n_6 ,\deci_low.diffE_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_E[18:16]}),
        .O({\NLW_deci_low.diffE_reg[19]_i_1_O_UNCONNECTED [7:4],diffE02_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_low.diffE[19]_i_2_n_0 ,\deci_low.diffE[19]_i_3_n_0 ,\deci_low.diffE[19]_i_4_n_0 ,\deci_low.diffE[19]_i_5_n_0 }));
  FDRE \deci_low.diffE_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[1]),
        .Q(diffE[1]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[2]),
        .Q(diffE[2]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[3]),
        .Q(diffE[3]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[4]),
        .Q(diffE[4]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[5]),
        .Q(diffE[5]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[6]),
        .Q(diffE[6]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[7]),
        .Q(diffE[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffE_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\deci_low.diffE_reg[7]_i_1_n_0 ,\deci_low.diffE_reg[7]_i_1_n_1 ,\deci_low.diffE_reg[7]_i_1_n_2 ,\deci_low.diffE_reg[7]_i_1_n_3 ,\deci_low.diffE_reg[7]_i_1_n_4 ,\deci_low.diffE_reg[7]_i_1_n_5 ,\deci_low.diffE_reg[7]_i_1_n_6 ,\deci_low.diffE_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(diffE02_out[7:0]),
        .S({\deci_low.diffE[7]_i_2_n_0 ,\deci_low.diffE[7]_i_3_n_0 ,\deci_low.diffE[7]_i_4_n_0 ,\deci_low.diffE[7]_i_5_n_0 ,\deci_low.diffE[7]_i_6_n_0 ,\deci_low.diffE[7]_i_7_n_0 ,\deci_low.diffE[7]_i_8_n_0 ,\deci_low.diffE[7]_i_9_n_0 }));
  FDRE \deci_low.diffE_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[8]),
        .Q(diffE[8]),
        .R(1'b0));
  FDRE \deci_low.diffE_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffE02_out[9]),
        .Q(diffE[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_2 
       (.I0(phase_N[15]),
        .I1(prevN[15]),
        .O(\deci_low.diffN[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_3 
       (.I0(phase_N[14]),
        .I1(prevN[14]),
        .O(\deci_low.diffN[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_4 
       (.I0(phase_N[13]),
        .I1(prevN[13]),
        .O(\deci_low.diffN[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_5 
       (.I0(phase_N[12]),
        .I1(prevN[12]),
        .O(\deci_low.diffN[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_6 
       (.I0(phase_N[11]),
        .I1(prevN[11]),
        .O(\deci_low.diffN[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_7 
       (.I0(phase_N[10]),
        .I1(prevN[10]),
        .O(\deci_low.diffN[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_8 
       (.I0(phase_N[9]),
        .I1(prevN[9]),
        .O(\deci_low.diffN[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[15]_i_9 
       (.I0(phase_N[8]),
        .I1(prevN[8]),
        .O(\deci_low.diffN[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[19]_i_2 
       (.I0(phase_N[19]),
        .I1(prevN[19]),
        .O(\deci_low.diffN[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[19]_i_3 
       (.I0(phase_N[18]),
        .I1(prevN[18]),
        .O(\deci_low.diffN[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[19]_i_4 
       (.I0(phase_N[17]),
        .I1(prevN[17]),
        .O(\deci_low.diffN[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[19]_i_5 
       (.I0(phase_N[16]),
        .I1(prevN[16]),
        .O(\deci_low.diffN[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_2 
       (.I0(phase_N[7]),
        .I1(prevN[7]),
        .O(\deci_low.diffN[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_3 
       (.I0(phase_N[6]),
        .I1(prevN[6]),
        .O(\deci_low.diffN[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_4 
       (.I0(phase_N[5]),
        .I1(prevN[5]),
        .O(\deci_low.diffN[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_5 
       (.I0(phase_N[4]),
        .I1(prevN[4]),
        .O(\deci_low.diffN[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_6 
       (.I0(phase_N[3]),
        .I1(prevN[3]),
        .O(\deci_low.diffN[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_7 
       (.I0(phase_N[2]),
        .I1(prevN[2]),
        .O(\deci_low.diffN[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_8 
       (.I0(phase_N[1]),
        .I1(prevN[1]),
        .O(\deci_low.diffN[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffN[7]_i_9 
       (.I0(phase_N[0]),
        .I1(prevN[0]),
        .O(\deci_low.diffN[7]_i_9_n_0 ));
  FDRE \deci_low.diffN_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[0]),
        .Q(diffN[0]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[10]),
        .Q(diffN[10]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[11]),
        .Q(diffN[11]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[12]),
        .Q(diffN[12]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[13]),
        .Q(diffN[13]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[14]),
        .Q(diffN[14]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[15]),
        .Q(diffN[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffN_reg[15]_i_1 
       (.CI(\deci_low.diffN_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.diffN_reg[15]_i_1_n_0 ,\deci_low.diffN_reg[15]_i_1_n_1 ,\deci_low.diffN_reg[15]_i_1_n_2 ,\deci_low.diffN_reg[15]_i_1_n_3 ,\deci_low.diffN_reg[15]_i_1_n_4 ,\deci_low.diffN_reg[15]_i_1_n_5 ,\deci_low.diffN_reg[15]_i_1_n_6 ,\deci_low.diffN_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(diffN04_out[15:8]),
        .S({\deci_low.diffN[15]_i_2_n_0 ,\deci_low.diffN[15]_i_3_n_0 ,\deci_low.diffN[15]_i_4_n_0 ,\deci_low.diffN[15]_i_5_n_0 ,\deci_low.diffN[15]_i_6_n_0 ,\deci_low.diffN[15]_i_7_n_0 ,\deci_low.diffN[15]_i_8_n_0 ,\deci_low.diffN[15]_i_9_n_0 }));
  FDRE \deci_low.diffN_reg[16] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[16]),
        .Q(diffN[16]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[17] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[17]),
        .Q(diffN[17]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[18] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[18]),
        .Q(diffN[18]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[19] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[19]),
        .Q(diffN[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffN_reg[19]_i_1 
       (.CI(\deci_low.diffN_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.diffN_reg[19]_i_1_CO_UNCONNECTED [7:3],\deci_low.diffN_reg[19]_i_1_n_5 ,\deci_low.diffN_reg[19]_i_1_n_6 ,\deci_low.diffN_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_deci_low.diffN_reg[19]_i_1_O_UNCONNECTED [7:4],diffN04_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_low.diffN[19]_i_2_n_0 ,\deci_low.diffN[19]_i_3_n_0 ,\deci_low.diffN[19]_i_4_n_0 ,\deci_low.diffN[19]_i_5_n_0 }));
  FDRE \deci_low.diffN_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[1]),
        .Q(diffN[1]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[2]),
        .Q(diffN[2]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[3]),
        .Q(diffN[3]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[4]),
        .Q(diffN[4]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[5]),
        .Q(diffN[5]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[6]),
        .Q(diffN[6]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[7]),
        .Q(diffN[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffN_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\deci_low.diffN_reg[7]_i_1_n_0 ,\deci_low.diffN_reg[7]_i_1_n_1 ,\deci_low.diffN_reg[7]_i_1_n_2 ,\deci_low.diffN_reg[7]_i_1_n_3 ,\deci_low.diffN_reg[7]_i_1_n_4 ,\deci_low.diffN_reg[7]_i_1_n_5 ,\deci_low.diffN_reg[7]_i_1_n_6 ,\deci_low.diffN_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(diffN04_out[7:0]),
        .S({\deci_low.diffN[7]_i_2_n_0 ,\deci_low.diffN[7]_i_3_n_0 ,\deci_low.diffN[7]_i_4_n_0 ,\deci_low.diffN[7]_i_5_n_0 ,\deci_low.diffN[7]_i_6_n_0 ,\deci_low.diffN[7]_i_7_n_0 ,\deci_low.diffN[7]_i_8_n_0 ,\deci_low.diffN[7]_i_9_n_0 }));
  FDRE \deci_low.diffN_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[8]),
        .Q(diffN[8]),
        .R(1'b0));
  FDRE \deci_low.diffN_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffN04_out[9]),
        .Q(diffN[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_2 
       (.I0(phase_W[15]),
        .I1(prevW[15]),
        .O(\deci_low.diffW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_3 
       (.I0(phase_W[14]),
        .I1(prevW[14]),
        .O(\deci_low.diffW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_4 
       (.I0(phase_W[13]),
        .I1(prevW[13]),
        .O(\deci_low.diffW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_5 
       (.I0(phase_W[12]),
        .I1(prevW[12]),
        .O(\deci_low.diffW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_6 
       (.I0(phase_W[11]),
        .I1(prevW[11]),
        .O(\deci_low.diffW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_7 
       (.I0(phase_W[10]),
        .I1(prevW[10]),
        .O(\deci_low.diffW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_8 
       (.I0(phase_W[9]),
        .I1(prevW[9]),
        .O(\deci_low.diffW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[15]_i_9 
       (.I0(phase_W[8]),
        .I1(prevW[8]),
        .O(\deci_low.diffW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[19]_i_2 
       (.I0(phase_W[19]),
        .I1(prevW[19]),
        .O(\deci_low.diffW[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[19]_i_3 
       (.I0(phase_W[18]),
        .I1(prevW[18]),
        .O(\deci_low.diffW[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[19]_i_4 
       (.I0(phase_W[17]),
        .I1(prevW[17]),
        .O(\deci_low.diffW[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[19]_i_5 
       (.I0(phase_W[16]),
        .I1(prevW[16]),
        .O(\deci_low.diffW[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_2 
       (.I0(phase_W[7]),
        .I1(prevW[7]),
        .O(\deci_low.diffW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_3 
       (.I0(phase_W[6]),
        .I1(prevW[6]),
        .O(\deci_low.diffW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_4 
       (.I0(phase_W[5]),
        .I1(prevW[5]),
        .O(\deci_low.diffW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_5 
       (.I0(phase_W[4]),
        .I1(prevW[4]),
        .O(\deci_low.diffW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_6 
       (.I0(phase_W[3]),
        .I1(prevW[3]),
        .O(\deci_low.diffW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_7 
       (.I0(phase_W[2]),
        .I1(prevW[2]),
        .O(\deci_low.diffW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_8 
       (.I0(phase_W[1]),
        .I1(prevW[1]),
        .O(\deci_low.diffW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \deci_low.diffW[7]_i_9 
       (.I0(phase_W[0]),
        .I1(prevW[0]),
        .O(\deci_low.diffW[7]_i_9_n_0 ));
  FDRE \deci_low.diffW_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[0]),
        .Q(diffW[0]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[10]),
        .Q(diffW[10]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[11]),
        .Q(diffW[11]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[12]),
        .Q(diffW[12]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[13]),
        .Q(diffW[13]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[14]),
        .Q(diffW[14]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[15]),
        .Q(diffW[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffW_reg[15]_i_1 
       (.CI(\deci_low.diffW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.diffW_reg[15]_i_1_n_0 ,\deci_low.diffW_reg[15]_i_1_n_1 ,\deci_low.diffW_reg[15]_i_1_n_2 ,\deci_low.diffW_reg[15]_i_1_n_3 ,\deci_low.diffW_reg[15]_i_1_n_4 ,\deci_low.diffW_reg[15]_i_1_n_5 ,\deci_low.diffW_reg[15]_i_1_n_6 ,\deci_low.diffW_reg[15]_i_1_n_7 }),
        .DI(phase_W[15:8]),
        .O(diffW00_out[15:8]),
        .S({\deci_low.diffW[15]_i_2_n_0 ,\deci_low.diffW[15]_i_3_n_0 ,\deci_low.diffW[15]_i_4_n_0 ,\deci_low.diffW[15]_i_5_n_0 ,\deci_low.diffW[15]_i_6_n_0 ,\deci_low.diffW[15]_i_7_n_0 ,\deci_low.diffW[15]_i_8_n_0 ,\deci_low.diffW[15]_i_9_n_0 }));
  FDRE \deci_low.diffW_reg[16] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[16]),
        .Q(diffW[16]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[17] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[17]),
        .Q(diffW[17]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[18] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[18]),
        .Q(diffW[18]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[19] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[19]),
        .Q(diffW[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffW_reg[19]_i_1 
       (.CI(\deci_low.diffW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.diffW_reg[19]_i_1_CO_UNCONNECTED [7:3],\deci_low.diffW_reg[19]_i_1_n_5 ,\deci_low.diffW_reg[19]_i_1_n_6 ,\deci_low.diffW_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_W[18:16]}),
        .O({\NLW_deci_low.diffW_reg[19]_i_1_O_UNCONNECTED [7:4],diffW00_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_low.diffW[19]_i_2_n_0 ,\deci_low.diffW[19]_i_3_n_0 ,\deci_low.diffW[19]_i_4_n_0 ,\deci_low.diffW[19]_i_5_n_0 }));
  FDRE \deci_low.diffW_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[1]),
        .Q(diffW[1]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[2]),
        .Q(diffW[2]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[3]),
        .Q(diffW[3]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[4]),
        .Q(diffW[4]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[5]),
        .Q(diffW[5]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[6]),
        .Q(diffW[6]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[7]),
        .Q(diffW[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.diffW_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\deci_low.diffW_reg[7]_i_1_n_0 ,\deci_low.diffW_reg[7]_i_1_n_1 ,\deci_low.diffW_reg[7]_i_1_n_2 ,\deci_low.diffW_reg[7]_i_1_n_3 ,\deci_low.diffW_reg[7]_i_1_n_4 ,\deci_low.diffW_reg[7]_i_1_n_5 ,\deci_low.diffW_reg[7]_i_1_n_6 ,\deci_low.diffW_reg[7]_i_1_n_7 }),
        .DI(phase_W[7:0]),
        .O(diffW00_out[7:0]),
        .S({\deci_low.diffW[7]_i_2_n_0 ,\deci_low.diffW[7]_i_3_n_0 ,\deci_low.diffW[7]_i_4_n_0 ,\deci_low.diffW[7]_i_5_n_0 ,\deci_low.diffW[7]_i_6_n_0 ,\deci_low.diffW[7]_i_7_n_0 ,\deci_low.diffW[7]_i_8_n_0 ,\deci_low.diffW[7]_i_9_n_0 }));
  FDRE \deci_low.diffW_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[8]),
        .Q(diffW[8]),
        .R(1'b0));
  FDRE \deci_low.diffW_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(diffW00_out[9]),
        .Q(diffW[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[0] 
       (.C(clk),
        .CE(mul),
        .D(envE[0]),
        .Q(env_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[10] 
       (.C(clk),
        .CE(mul),
        .D(envE[10]),
        .Q(env_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[11] 
       (.C(clk),
        .CE(mul),
        .D(envE[11]),
        .Q(env_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[12] 
       (.C(clk),
        .CE(mul),
        .D(envE[12]),
        .Q(env_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[13] 
       (.C(clk),
        .CE(mul),
        .D(envE[13]),
        .Q(env_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[14] 
       (.C(clk),
        .CE(mul),
        .D(envE[14]),
        .Q(env_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[15] 
       (.C(clk),
        .CE(mul),
        .D(envE[15]),
        .Q(env_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[1] 
       (.C(clk),
        .CE(mul),
        .D(envE[1]),
        .Q(env_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[2] 
       (.C(clk),
        .CE(mul),
        .D(envE[2]),
        .Q(env_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[3] 
       (.C(clk),
        .CE(mul),
        .D(envE[3]),
        .Q(env_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[4] 
       (.C(clk),
        .CE(mul),
        .D(envE[4]),
        .Q(env_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[5] 
       (.C(clk),
        .CE(mul),
        .D(envE[5]),
        .Q(env_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[6] 
       (.C(clk),
        .CE(mul),
        .D(envE[6]),
        .Q(env_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[7] 
       (.C(clk),
        .CE(mul),
        .D(envE[7]),
        .Q(env_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[8] 
       (.C(clk),
        .CE(mul),
        .D(envE[8]),
        .Q(env_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_E_reg[9] 
       (.C(clk),
        .CE(mul),
        .D(envE[9]),
        .Q(env_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[0] 
       (.C(clk),
        .CE(mul),
        .D(envN[0]),
        .Q(env_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[10] 
       (.C(clk),
        .CE(mul),
        .D(envN[10]),
        .Q(env_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[11] 
       (.C(clk),
        .CE(mul),
        .D(envN[11]),
        .Q(env_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[12] 
       (.C(clk),
        .CE(mul),
        .D(envN[12]),
        .Q(env_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[13] 
       (.C(clk),
        .CE(mul),
        .D(envN[13]),
        .Q(env_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[14] 
       (.C(clk),
        .CE(mul),
        .D(envN[14]),
        .Q(env_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[15] 
       (.C(clk),
        .CE(mul),
        .D(envN[15]),
        .Q(env_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[1] 
       (.C(clk),
        .CE(mul),
        .D(envN[1]),
        .Q(env_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[2] 
       (.C(clk),
        .CE(mul),
        .D(envN[2]),
        .Q(env_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[3] 
       (.C(clk),
        .CE(mul),
        .D(envN[3]),
        .Q(env_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[4] 
       (.C(clk),
        .CE(mul),
        .D(envN[4]),
        .Q(env_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[5] 
       (.C(clk),
        .CE(mul),
        .D(envN[5]),
        .Q(env_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[6] 
       (.C(clk),
        .CE(mul),
        .D(envN[6]),
        .Q(env_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[7] 
       (.C(clk),
        .CE(mul),
        .D(envN[7]),
        .Q(env_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[8] 
       (.C(clk),
        .CE(mul),
        .D(envN[8]),
        .Q(env_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_N_reg[9] 
       (.C(clk),
        .CE(mul),
        .D(envN[9]),
        .Q(env_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[0] 
       (.C(clk),
        .CE(mul),
        .D(envW[0]),
        .Q(env_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[10] 
       (.C(clk),
        .CE(mul),
        .D(envW[10]),
        .Q(env_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[11] 
       (.C(clk),
        .CE(mul),
        .D(envW[11]),
        .Q(env_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[12] 
       (.C(clk),
        .CE(mul),
        .D(envW[12]),
        .Q(env_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[13] 
       (.C(clk),
        .CE(mul),
        .D(envW[13]),
        .Q(env_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[14] 
       (.C(clk),
        .CE(mul),
        .D(envW[14]),
        .Q(env_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[15] 
       (.C(clk),
        .CE(mul),
        .D(envW[15]),
        .Q(env_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[1] 
       (.C(clk),
        .CE(mul),
        .D(envW[1]),
        .Q(env_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[2] 
       (.C(clk),
        .CE(mul),
        .D(envW[2]),
        .Q(env_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[3] 
       (.C(clk),
        .CE(mul),
        .D(envW[3]),
        .Q(env_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[4] 
       (.C(clk),
        .CE(mul),
        .D(envW[4]),
        .Q(env_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[5] 
       (.C(clk),
        .CE(mul),
        .D(envW[5]),
        .Q(env_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[6] 
       (.C(clk),
        .CE(mul),
        .D(envW[6]),
        .Q(env_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[7] 
       (.C(clk),
        .CE(mul),
        .D(envW[7]),
        .Q(env_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[8] 
       (.C(clk),
        .CE(mul),
        .D(envW[8]),
        .Q(env_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.env_W_reg[9] 
       (.C(clk),
        .CE(mul),
        .D(envW[9]),
        .Q(env_W[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.freq[27]_i_1 
       (.I0(mul),
        .O(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[20]),
        .Q(freq[0]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[30]),
        .Q(freq[10]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[31]),
        .Q(freq[11]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[32]),
        .Q(freq[12]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[33]),
        .Q(freq[13]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[34]),
        .Q(freq[14]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[35]),
        .Q(freq[15]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[36]),
        .Q(freq[16]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[37]),
        .Q(freq[17]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[38]),
        .Q(freq[18]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[39]),
        .Q(freq[19]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[21]),
        .Q(freq[1]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[40]),
        .Q(freq[20]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[41]),
        .Q(freq[21]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[42]),
        .Q(freq[22]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[43]),
        .Q(freq[23]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[44]),
        .Q(freq[24]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[45]),
        .Q(freq[25]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[46]),
        .Q(freq[26]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[47]),
        .Q(freq[27]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[22]),
        .Q(freq[2]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[23]),
        .Q(freq[3]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[24]),
        .Q(freq[4]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[25]),
        .Q(freq[5]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[26]),
        .Q(freq[6]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[27]),
        .Q(freq[7]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[28]),
        .Q(freq[8]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \deci_low.freq_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(fp[29]),
        .Q(freq[9]),
        .R(\deci_low.freq[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \deci_low.mul_i_1 
       (.I0(validN),
        .I1(validE),
        .I2(validW),
        .O(\deci_low.mul_i_1_n_0 ));
  FDRE \deci_low.mul_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_low.mul_i_1_n_0 ),
        .Q(mul),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[0] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[0]),
        .Q(phase_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[10] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[10]),
        .Q(phase_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[11] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[11]),
        .Q(phase_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[12] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[12]),
        .Q(phase_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[13] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[13]),
        .Q(phase_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[14] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[14]),
        .Q(phase_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[15] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[15]),
        .Q(phase_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[16] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[16]),
        .Q(phase_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[17] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[17]),
        .Q(phase_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[18] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[18]),
        .Q(phase_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[19] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[19]),
        .Q(phase_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[1] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[1]),
        .Q(phase_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[2] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[2]),
        .Q(phase_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[3] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[3]),
        .Q(phase_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[4] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[4]),
        .Q(phase_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[5] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[5]),
        .Q(phase_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[6] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[6]),
        .Q(phase_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[7] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[7]),
        .Q(phase_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[8] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[8]),
        .Q(phase_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_E_reg[9] 
       (.C(clk),
        .CE(mul),
        .D(phaseE[9]),
        .Q(phase_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[0] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[0]),
        .Q(phase_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[10] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[10]),
        .Q(phase_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[11] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[11]),
        .Q(phase_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[12] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[12]),
        .Q(phase_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[13] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[13]),
        .Q(phase_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[14] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[14]),
        .Q(phase_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[15] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[15]),
        .Q(phase_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[16] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[16]),
        .Q(phase_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[17] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[17]),
        .Q(phase_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[18] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[18]),
        .Q(phase_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[19] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[19]),
        .Q(phase_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[1] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[1]),
        .Q(phase_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[2] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[2]),
        .Q(phase_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[3] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[3]),
        .Q(phase_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[4] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[4]),
        .Q(phase_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[5] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[5]),
        .Q(phase_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[6] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[6]),
        .Q(phase_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[7] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[7]),
        .Q(phase_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[8] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[8]),
        .Q(phase_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_N_reg[9] 
       (.C(clk),
        .CE(mul),
        .D(phaseN[9]),
        .Q(phase_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[0] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[0]),
        .Q(phase_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[10] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[10]),
        .Q(phase_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[11] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[11]),
        .Q(phase_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[12] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[12]),
        .Q(phase_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[13] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[13]),
        .Q(phase_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[14] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[14]),
        .Q(phase_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[15] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[15]),
        .Q(phase_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[16] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[16]),
        .Q(phase_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[17] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[17]),
        .Q(phase_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[18] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[18]),
        .Q(phase_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[19] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[19]),
        .Q(phase_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[1] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[1]),
        .Q(phase_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[2] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[2]),
        .Q(phase_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[3] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[3]),
        .Q(phase_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[4] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[4]),
        .Q(phase_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[5] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[5]),
        .Q(phase_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[6] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[6]),
        .Q(phase_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[7] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[7]),
        .Q(phase_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[8] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[8]),
        .Q(phase_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.phase_W_reg[9] 
       (.C(clk),
        .CE(mul),
        .D(phaseW[9]),
        .Q(phase_W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_10 
       (.I0(diffN[14]),
        .I1(diffW[14]),
        .I2(diffE[14]),
        .I3(diffW[15]),
        .I4(diffE[15]),
        .I5(diffN[15]),
        .O(\deci_low.phase_sum[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_11 
       (.I0(diffN[13]),
        .I1(diffW[13]),
        .I2(diffE[13]),
        .I3(diffW[14]),
        .I4(diffE[14]),
        .I5(diffN[14]),
        .O(\deci_low.phase_sum[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_12 
       (.I0(diffN[12]),
        .I1(diffW[12]),
        .I2(diffE[12]),
        .I3(diffW[13]),
        .I4(diffE[13]),
        .I5(diffN[13]),
        .O(\deci_low.phase_sum[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_13 
       (.I0(diffN[11]),
        .I1(diffW[11]),
        .I2(diffE[11]),
        .I3(diffW[12]),
        .I4(diffE[12]),
        .I5(diffN[12]),
        .O(\deci_low.phase_sum[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_14 
       (.I0(diffN[10]),
        .I1(diffW[10]),
        .I2(diffE[10]),
        .I3(diffW[11]),
        .I4(diffE[11]),
        .I5(diffN[11]),
        .O(\deci_low.phase_sum[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_15 
       (.I0(diffN[9]),
        .I1(diffW[9]),
        .I2(diffE[9]),
        .I3(diffW[10]),
        .I4(diffE[10]),
        .I5(diffN[10]),
        .O(\deci_low.phase_sum[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_16 
       (.I0(diffN[8]),
        .I1(diffW[8]),
        .I2(diffE[8]),
        .I3(diffW[9]),
        .I4(diffE[9]),
        .I5(diffN[9]),
        .O(\deci_low.phase_sum[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[15]_i_17 
       (.I0(diffN[7]),
        .I1(diffW[7]),
        .I2(diffE[7]),
        .I3(diffW[8]),
        .I4(diffE[8]),
        .I5(diffN[8]),
        .O(\deci_low.phase_sum[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_2 
       (.I0(diffE[14]),
        .I1(diffW[14]),
        .I2(diffN[14]),
        .O(\deci_low.phase_sum[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_3 
       (.I0(diffE[13]),
        .I1(diffW[13]),
        .I2(diffN[13]),
        .O(\deci_low.phase_sum[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_4 
       (.I0(diffE[12]),
        .I1(diffW[12]),
        .I2(diffN[12]),
        .O(\deci_low.phase_sum[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_5 
       (.I0(diffE[11]),
        .I1(diffW[11]),
        .I2(diffN[11]),
        .O(\deci_low.phase_sum[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_6 
       (.I0(diffE[10]),
        .I1(diffW[10]),
        .I2(diffN[10]),
        .O(\deci_low.phase_sum[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_7 
       (.I0(diffE[9]),
        .I1(diffW[9]),
        .I2(diffN[9]),
        .O(\deci_low.phase_sum[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_8 
       (.I0(diffE[8]),
        .I1(diffW[8]),
        .I2(diffN[8]),
        .O(\deci_low.phase_sum[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[15]_i_9 
       (.I0(diffE[7]),
        .I1(diffW[7]),
        .I2(diffN[7]),
        .O(\deci_low.phase_sum[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \deci_low.phase_sum[21]_i_1 
       (.I0(validW),
        .I1(validE),
        .I2(validN),
        .O(p_0_in__0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[21]_i_10 
       (.I0(diffN[16]),
        .I1(diffW[16]),
        .I2(diffE[16]),
        .I3(diffW[17]),
        .I4(diffE[17]),
        .I5(diffN[17]),
        .O(\deci_low.phase_sum[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[21]_i_11 
       (.I0(diffN[15]),
        .I1(diffW[15]),
        .I2(diffE[15]),
        .I3(diffW[16]),
        .I4(diffE[16]),
        .I5(diffN[16]),
        .O(\deci_low.phase_sum[21]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[21]_i_3 
       (.I0(diffE[18]),
        .I1(diffW[18]),
        .I2(diffN[18]),
        .O(\deci_low.phase_sum[21]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[21]_i_4 
       (.I0(diffE[17]),
        .I1(diffW[17]),
        .I2(diffN[17]),
        .O(\deci_low.phase_sum[21]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[21]_i_5 
       (.I0(diffE[16]),
        .I1(diffW[16]),
        .I2(diffN[16]),
        .O(\deci_low.phase_sum[21]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[21]_i_6 
       (.I0(diffE[15]),
        .I1(diffW[15]),
        .I2(diffN[15]),
        .O(\deci_low.phase_sum[21]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[21]_i_7 
       (.I0(diffE[19]),
        .I1(diffW[19]),
        .I2(diffN[19]),
        .O(\deci_low.phase_sum[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[21]_i_8 
       (.I0(diffN[18]),
        .I1(diffW[18]),
        .I2(diffE[18]),
        .I3(diffW[19]),
        .I4(diffE[19]),
        .I5(diffN[19]),
        .O(\deci_low.phase_sum[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[21]_i_9 
       (.I0(diffN[17]),
        .I1(diffW[17]),
        .I2(diffE[17]),
        .I3(diffW[18]),
        .I4(diffE[18]),
        .I5(diffN[18]),
        .O(\deci_low.phase_sum[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_10 
       (.I0(diffN[5]),
        .I1(diffW[5]),
        .I2(diffE[5]),
        .I3(diffW[6]),
        .I4(diffE[6]),
        .I5(diffN[6]),
        .O(\deci_low.phase_sum[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_11 
       (.I0(diffN[4]),
        .I1(diffW[4]),
        .I2(diffE[4]),
        .I3(diffW[5]),
        .I4(diffE[5]),
        .I5(diffN[5]),
        .O(\deci_low.phase_sum[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_12 
       (.I0(diffN[3]),
        .I1(diffW[3]),
        .I2(diffE[3]),
        .I3(diffW[4]),
        .I4(diffE[4]),
        .I5(diffN[4]),
        .O(\deci_low.phase_sum[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_13 
       (.I0(diffN[2]),
        .I1(diffW[2]),
        .I2(diffE[2]),
        .I3(diffW[3]),
        .I4(diffE[3]),
        .I5(diffN[3]),
        .O(\deci_low.phase_sum[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_14 
       (.I0(diffN[1]),
        .I1(diffW[1]),
        .I2(diffE[1]),
        .I3(diffW[2]),
        .I4(diffE[2]),
        .I5(diffN[2]),
        .O(\deci_low.phase_sum[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_15 
       (.I0(diffN[0]),
        .I1(diffW[0]),
        .I2(diffE[0]),
        .I3(diffW[1]),
        .I4(diffE[1]),
        .I5(diffN[1]),
        .O(\deci_low.phase_sum[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \deci_low.phase_sum[7]_i_16 
       (.I0(diffN[0]),
        .I1(diffE[0]),
        .I2(diffW[0]),
        .O(\deci_low.phase_sum[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_2 
       (.I0(diffE[6]),
        .I1(diffW[6]),
        .I2(diffN[6]),
        .O(\deci_low.phase_sum[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_3 
       (.I0(diffE[5]),
        .I1(diffW[5]),
        .I2(diffN[5]),
        .O(\deci_low.phase_sum[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_4 
       (.I0(diffE[4]),
        .I1(diffW[4]),
        .I2(diffN[4]),
        .O(\deci_low.phase_sum[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_5 
       (.I0(diffE[3]),
        .I1(diffW[3]),
        .I2(diffN[3]),
        .O(\deci_low.phase_sum[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_6 
       (.I0(diffE[2]),
        .I1(diffW[2]),
        .I2(diffN[2]),
        .O(\deci_low.phase_sum[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_7 
       (.I0(diffE[1]),
        .I1(diffW[1]),
        .I2(diffN[1]),
        .O(\deci_low.phase_sum[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \deci_low.phase_sum[7]_i_8 
       (.I0(diffE[0]),
        .I1(diffW[0]),
        .I2(diffN[0]),
        .O(\deci_low.phase_sum[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \deci_low.phase_sum[7]_i_9 
       (.I0(diffN[6]),
        .I1(diffW[6]),
        .I2(diffE[6]),
        .I3(diffW[7]),
        .I4(diffE[7]),
        .I5(diffN[7]),
        .O(\deci_low.phase_sum[7]_i_9_n_0 ));
  FDRE \deci_low.phase_sum_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[0]),
        .Q(phase_sum[0]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[10]),
        .Q(phase_sum[10]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[11]),
        .Q(phase_sum[11]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[12]),
        .Q(phase_sum[12]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[13]),
        .Q(phase_sum[13]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[14]),
        .Q(phase_sum[14]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[15]),
        .Q(phase_sum[15]),
        .R(p_0_in__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.phase_sum_reg[15]_i_1 
       (.CI(\deci_low.phase_sum_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_low.phase_sum_reg[15]_i_1_n_0 ,\deci_low.phase_sum_reg[15]_i_1_n_1 ,\deci_low.phase_sum_reg[15]_i_1_n_2 ,\deci_low.phase_sum_reg[15]_i_1_n_3 ,\deci_low.phase_sum_reg[15]_i_1_n_4 ,\deci_low.phase_sum_reg[15]_i_1_n_5 ,\deci_low.phase_sum_reg[15]_i_1_n_6 ,\deci_low.phase_sum_reg[15]_i_1_n_7 }),
        .DI({\deci_low.phase_sum[15]_i_2_n_0 ,\deci_low.phase_sum[15]_i_3_n_0 ,\deci_low.phase_sum[15]_i_4_n_0 ,\deci_low.phase_sum[15]_i_5_n_0 ,\deci_low.phase_sum[15]_i_6_n_0 ,\deci_low.phase_sum[15]_i_7_n_0 ,\deci_low.phase_sum[15]_i_8_n_0 ,\deci_low.phase_sum[15]_i_9_n_0 }),
        .O(phase_sum0[15:8]),
        .S({\deci_low.phase_sum[15]_i_10_n_0 ,\deci_low.phase_sum[15]_i_11_n_0 ,\deci_low.phase_sum[15]_i_12_n_0 ,\deci_low.phase_sum[15]_i_13_n_0 ,\deci_low.phase_sum[15]_i_14_n_0 ,\deci_low.phase_sum[15]_i_15_n_0 ,\deci_low.phase_sum[15]_i_16_n_0 ,\deci_low.phase_sum[15]_i_17_n_0 }));
  FDRE \deci_low.phase_sum_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[16]),
        .Q(phase_sum[16]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[17]),
        .Q(phase_sum[17]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[18]),
        .Q(phase_sum[18]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[19]),
        .Q(phase_sum[19]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[1]),
        .Q(phase_sum[1]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[20]),
        .Q(phase_sum[20]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[21]),
        .Q(phase_sum[21]),
        .R(p_0_in__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.phase_sum_reg[21]_i_2 
       (.CI(\deci_low.phase_sum_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_low.phase_sum_reg[21]_i_2_CO_UNCONNECTED [7:5],\deci_low.phase_sum_reg[21]_i_2_n_3 ,\deci_low.phase_sum_reg[21]_i_2_n_4 ,\deci_low.phase_sum_reg[21]_i_2_n_5 ,\deci_low.phase_sum_reg[21]_i_2_n_6 ,\deci_low.phase_sum_reg[21]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\deci_low.phase_sum[21]_i_3_n_0 ,\deci_low.phase_sum[21]_i_4_n_0 ,\deci_low.phase_sum[21]_i_5_n_0 ,\deci_low.phase_sum[21]_i_6_n_0 }),
        .O({\NLW_deci_low.phase_sum_reg[21]_i_2_O_UNCONNECTED [7:6],phase_sum0[21:16]}),
        .S({1'b0,1'b0,1'b0,\deci_low.phase_sum[21]_i_7_n_0 ,\deci_low.phase_sum[21]_i_8_n_0 ,\deci_low.phase_sum[21]_i_9_n_0 ,\deci_low.phase_sum[21]_i_10_n_0 ,\deci_low.phase_sum[21]_i_11_n_0 }));
  FDRE \deci_low.phase_sum_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[2]),
        .Q(phase_sum[2]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[3]),
        .Q(phase_sum[3]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[4]),
        .Q(phase_sum[4]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[5]),
        .Q(phase_sum[5]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[6]),
        .Q(phase_sum[6]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[7]),
        .Q(phase_sum[7]),
        .R(p_0_in__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_low.phase_sum_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\deci_low.phase_sum_reg[7]_i_1_n_0 ,\deci_low.phase_sum_reg[7]_i_1_n_1 ,\deci_low.phase_sum_reg[7]_i_1_n_2 ,\deci_low.phase_sum_reg[7]_i_1_n_3 ,\deci_low.phase_sum_reg[7]_i_1_n_4 ,\deci_low.phase_sum_reg[7]_i_1_n_5 ,\deci_low.phase_sum_reg[7]_i_1_n_6 ,\deci_low.phase_sum_reg[7]_i_1_n_7 }),
        .DI({\deci_low.phase_sum[7]_i_2_n_0 ,\deci_low.phase_sum[7]_i_3_n_0 ,\deci_low.phase_sum[7]_i_4_n_0 ,\deci_low.phase_sum[7]_i_5_n_0 ,\deci_low.phase_sum[7]_i_6_n_0 ,\deci_low.phase_sum[7]_i_7_n_0 ,\deci_low.phase_sum[7]_i_8_n_0 ,1'b0}),
        .O(phase_sum0[7:0]),
        .S({\deci_low.phase_sum[7]_i_9_n_0 ,\deci_low.phase_sum[7]_i_10_n_0 ,\deci_low.phase_sum[7]_i_11_n_0 ,\deci_low.phase_sum[7]_i_12_n_0 ,\deci_low.phase_sum[7]_i_13_n_0 ,\deci_low.phase_sum[7]_i_14_n_0 ,\deci_low.phase_sum[7]_i_15_n_0 ,\deci_low.phase_sum[7]_i_16_n_0 }));
  FDRE \deci_low.phase_sum_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[8]),
        .Q(phase_sum[8]),
        .R(p_0_in__0));
  FDRE \deci_low.phase_sum_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_sum0[9]),
        .Q(phase_sum[9]),
        .R(p_0_in__0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_low.prevE[19]_i_1 
       (.I0(fifo_valid),
        .O(counter__0));
  FDRE \deci_low.prevE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[0]),
        .Q(prevE[0]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[10]),
        .Q(prevE[10]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[11]),
        .Q(prevE[11]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[12]),
        .Q(prevE[12]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[13]),
        .Q(prevE[13]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[14]),
        .Q(prevE[14]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[15]),
        .Q(prevE[15]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[16]),
        .Q(prevE[16]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[17]),
        .Q(prevE[17]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[18]),
        .Q(prevE[18]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[19]),
        .Q(prevE[19]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[1]),
        .Q(prevE[1]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[2]),
        .Q(prevE[2]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[3]),
        .Q(prevE[3]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[4]),
        .Q(prevE[4]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[5]),
        .Q(prevE[5]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[6]),
        .Q(prevE[6]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[7]),
        .Q(prevE[7]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[8]),
        .Q(prevE[8]),
        .R(counter__0));
  FDRE \deci_low.prevE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_E[9]),
        .Q(prevE[9]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[0]),
        .Q(prevN[0]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[10]),
        .Q(prevN[10]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[11]),
        .Q(prevN[11]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[12]),
        .Q(prevN[12]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[13]),
        .Q(prevN[13]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[14]),
        .Q(prevN[14]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[15]),
        .Q(prevN[15]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[16]),
        .Q(prevN[16]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[17]),
        .Q(prevN[17]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[18]),
        .Q(prevN[18]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[19]),
        .Q(prevN[19]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[1]),
        .Q(prevN[1]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[2]),
        .Q(prevN[2]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[3]),
        .Q(prevN[3]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[4]),
        .Q(prevN[4]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[5]),
        .Q(prevN[5]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[6]),
        .Q(prevN[6]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[7]),
        .Q(prevN[7]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[8]),
        .Q(prevN[8]),
        .R(counter__0));
  FDRE \deci_low.prevN_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_N[9]),
        .Q(prevN[9]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[0]),
        .Q(prevW[0]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[10]),
        .Q(prevW[10]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[11]),
        .Q(prevW[11]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[12]),
        .Q(prevW[12]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[13]),
        .Q(prevW[13]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[14]),
        .Q(prevW[14]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[15]),
        .Q(prevW[15]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[16]),
        .Q(prevW[16]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[17]),
        .Q(prevW[17]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[18]),
        .Q(prevW[18]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[19]),
        .Q(prevW[19]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[1]),
        .Q(prevW[1]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[2]),
        .Q(prevW[2]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[3]),
        .Q(prevW[3]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[4]),
        .Q(prevW[4]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[5]),
        .Q(prevW[5]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[6]),
        .Q(prevW[6]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[7]),
        .Q(prevW[7]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[8]),
        .Q(prevW[8]),
        .R(counter__0));
  FDRE \deci_low.prevW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phase_W[9]),
        .Q(prevW[9]),
        .R(counter__0));
  (* KEEP = "yes" *) 
  FDRE \deci_low.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(mul),
        .Q(valid),
        .R(1'b0));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2 doa_E_i
       (.active(fifo_valid),
        .clk(clk),
        .env(envE),
        .im(fir_im_E[38:15]),
        .phase(phaseE),
        .re(fir_re_E[38:15]),
        .valid(validE));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1 doa_N_i
       (.active(fifo_valid),
        .clk(clk),
        .env(envN),
        .im(fir_im_N[38:15]),
        .phase(phaseN),
        .re(fir_re_N[38:15]),
        .valid(validN));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_doa_low_0_0_morlet_to_phase_env doa_W_i
       (.active(fifo_valid),
        .clk(clk),
        .env(envW),
        .im(fir_im_W[38:15]),
        .phase(phaseW),
        .re(fir_re_W[38:15]),
        .valid(validW));
  (* CHECK_LICENSE_TYPE = "mult_s500,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_doa_low_0_0_mult_s500 doa_freq
       (.A(phase_sum),
        .CLK(clk),
        .P({NLW_doa_freq_P_UNCONNECTED[49:48],fp,NLW_doa_freq_P_UNCONNECTED[19:0]}));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_im fir_doa_low_im_E_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_E),
        .m_axis_data_tvalid(NLW_fir_doa_low_im_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_im fir_doa_low_im_N_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_N),
        .m_axis_data_tvalid(NLW_fir_doa_low_im_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_im_HD3 fir_doa_low_im_W_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_W),
        .m_axis_data_tvalid(NLW_fir_doa_low_im_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_re fir_doa_low_re_E_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_E),
        .m_axis_data_tvalid(NLW_fir_doa_low_re_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_re fir_doa_low_re_N_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_N),
        .m_axis_data_tvalid(NLW_fir_doa_low_re_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  LUT1 #(
    .INIT(2'h1)) 
    fir_doa_low_re_N_i_i_1
       (.I0(reset),
        .O(fir_doa_low_re_N_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_re_HD4 fir_doa_low_re_W_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_W),
        .m_axis_data_tvalid(NLW_fir_doa_low_re_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(freq[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(freq[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(freq[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(freq[28]));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_doa_low_0_0_ila_0 ila_0_i
       (.clk(clk),
        .probe0(fifo_valid),
        .probe1(fifo_data[15:0]),
        .probe10(E),
        .probe11(fir_re_E[38:23]),
        .probe12(fir_im_E[38:23]),
        .probe13(env_E),
        .probe14(phase_E),
        .probe15(W),
        .probe16(fir_re_W[38:23]),
        .probe17(fir_im_W[38:23]),
        .probe18(env_W),
        .probe19(phase_W),
        .probe2(valid),
        .probe3(counter),
        .probe4(freq),
        .probe5(N),
        .probe6(fir_re_N[38:23]),
        .probe7(fir_im_N[38:23]),
        .probe8(env_N),
        .probe9(phase_N));
endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_im" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_im
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_im" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_im_HD3
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_re" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_re
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_re" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_re_HD4
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_doa_low_0_0_ila_0
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
    probe19);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [15:0]probe1;
  input [0:0]probe2;
  input [15:0]probe3;
  input [31:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [19:0]probe9;
  input [15:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;
  input [15:0]probe13;
  input [19:0]probe14;
  input [15:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;
  input [15:0]probe18;
  input [19:0]probe19;


endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_doa_low_0_0_morlet_to_phase_env
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
  wire atan2_valid;
  wire clk;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
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
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire sqrt_valid;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(active),
        .D(lenv[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(active),
        .D(lenv[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(active),
        .D(lenv[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(active),
        .D(lenv[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(active),
        .D(lenv[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(active),
        .D(lenv[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(active),
        .D(lenv[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(active),
        .D(lenv[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(active),
        .D(lenv[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(active),
        .D(lenv[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(active),
        .D(lenv[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(active),
        .D(lenv[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(active),
        .D(lenv[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(active),
        .D(lenv[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(active),
        .D(lenv[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(active),
        .D(lenv[9]),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(active),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(active),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(active),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(active),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(active),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(active),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(active),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(active),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(active),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(active),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(active),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(active),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(active),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(active),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(active),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(active),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(active),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(active),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(active),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(active),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(active),
        .I1(atan2_valid),
        .I2(sqrt_valid),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  mult_16_16_HD5 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_doa_low_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_sqrt_16_HD6 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(sqrt_valid),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_atan2_16_HD7 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(atan2_valid),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_doa_low_0_0_morlet_to_phase_env__xdcDup__1
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
  wire atan2_valid;
  wire clk;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
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
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire sqrt_valid;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(active),
        .D(lenv[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(active),
        .D(lenv[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(active),
        .D(lenv[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(active),
        .D(lenv[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(active),
        .D(lenv[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(active),
        .D(lenv[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(active),
        .D(lenv[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(active),
        .D(lenv[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(active),
        .D(lenv[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(active),
        .D(lenv[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(active),
        .D(lenv[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(active),
        .D(lenv[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(active),
        .D(lenv[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(active),
        .D(lenv[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(active),
        .D(lenv[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(active),
        .D(lenv[9]),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(active),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(active),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(active),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(active),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(active),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(active),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(active),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(active),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(active),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(active),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(active),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(active),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(active),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(active),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(active),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(active),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(active),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(active),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(active),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(active),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(active),
        .I1(atan2_valid),
        .I2(sqrt_valid),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_doa_low_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_doa_low_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(sqrt_valid),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(atan2_valid),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_doa_low_0_0_morlet_to_phase_env__xdcDup__2
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
  wire atan2_valid;
  wire clk;
  wire [15:0]env;
  wire [23:0]im;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
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
  wire [31:0]p2;
  wire [19:0]phase;
  wire [23:0]re;
  wire [31:0]re2;
  wire sqrt_valid;
  wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(active),
        .D(lenv[0]),
        .Q(env[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(active),
        .D(lenv[10]),
        .Q(env[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(active),
        .D(lenv[11]),
        .Q(env[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(active),
        .D(lenv[12]),
        .Q(env[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(active),
        .D(lenv[13]),
        .Q(env[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(active),
        .D(lenv[14]),
        .Q(env[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(active),
        .D(lenv[15]),
        .Q(env[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(active),
        .D(lenv[1]),
        .Q(env[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(active),
        .D(lenv[2]),
        .Q(env[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(active),
        .D(lenv[3]),
        .Q(env[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(active),
        .D(lenv[4]),
        .Q(env[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(active),
        .D(lenv[5]),
        .Q(env[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(active),
        .D(lenv[6]),
        .Q(env[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(active),
        .D(lenv[7]),
        .Q(env[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(active),
        .D(lenv[8]),
        .Q(env[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(active),
        .D(lenv[9]),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(active),
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
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(active),
        .D(lphase[0]),
        .Q(phase[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(active),
        .D(lphase[10]),
        .Q(phase[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(active),
        .D(lphase[11]),
        .Q(phase[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(active),
        .D(lphase[12]),
        .Q(phase[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(active),
        .D(lphase[13]),
        .Q(phase[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(active),
        .D(lphase[14]),
        .Q(phase[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(active),
        .D(lphase[15]),
        .Q(phase[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(active),
        .D(lphase[16]),
        .Q(phase[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(active),
        .D(lphase[17]),
        .Q(phase[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(active),
        .D(lphase[18]),
        .Q(phase[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(active),
        .D(lphase[19]),
        .Q(phase[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(active),
        .D(lphase[1]),
        .Q(phase[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(active),
        .D(lphase[2]),
        .Q(phase[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(active),
        .D(lphase[3]),
        .Q(phase[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(active),
        .D(lphase[4]),
        .Q(phase[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(active),
        .D(lphase[5]),
        .Q(phase[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(active),
        .D(lphase[6]),
        .Q(phase[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(active),
        .D(lphase[7]),
        .Q(phase[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(active),
        .D(lphase[8]),
        .Q(phase[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(active),
        .D(lphase[9]),
        .Q(phase[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(active),
        .I1(atan2_valid),
        .I2(sqrt_valid),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_doa_low_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_doa_low_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(sqrt_valid),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(atan2_valid),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_16_16" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_doa_low_0_0_mult_16_16
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

(* CHECK_LICENSE_TYPE = "mult_s500,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_s500" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_doa_low_0_0_mult_s500
   (CLK,
    A,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [21:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [49:0]P;


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
