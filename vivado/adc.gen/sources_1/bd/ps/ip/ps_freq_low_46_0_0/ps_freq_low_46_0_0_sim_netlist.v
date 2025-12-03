// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Dec  3 22:18:46 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_freq_low_46_0_0/ps_freq_low_46_0_0_sim_netlist.v
// Design      : ps_freq_low_46_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module cordic_atan2_16_HD8
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
module cordic_sqrt_16_HD7
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

(* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_1" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ila_1_HD5
   (clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [4:0]probe1;
  input [19:0]probe10;
  input [0:0]probe11;
  input [23:0]probe2;
  input [23:0]probe3;
  input [31:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [15:0]probe7;
  input [23:0]probe8;
  input [15:0]probe9;


endmodule

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_16_16" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module mult_16_16_HD6
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

(* CHECK_LICENSE_TYPE = "ps_freq_low_46_0_0,freq_low_46,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "freq_low_46,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_freq_low_46_0_0
   (clk,
    reset,
    fifo_valid,
    fifo_data,
    valid,
    env_N,
    phase_N,
    diff_N,
    env_E,
    phase_E,
    diff_E,
    env_W,
    phase_W,
    diff_W);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input fifo_valid;
  input [47:0]fifo_data;
  output valid;
  output [15:0]env_N;
  output [19:0]phase_N;
  output [19:0]diff_N;
  output [15:0]env_E;
  output [19:0]phase_E;
  output [19:0]diff_E;
  output [15:0]env_W;
  output [19:0]phase_W;
  output [19:0]diff_W;

  wire clk;
  wire [19:0]diff_E;
  wire [19:0]diff_N;
  wire [19:0]diff_W;
  wire [15:0]env_E;
  wire [15:0]env_N;
  wire [15:0]env_W;
  wire [47:0]fifo_data;
  wire fifo_valid;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire reset;
  wire valid;

  ps_freq_low_46_0_0_freq_low_46 inst
       (.clk(clk),
        .diff_E(diff_E),
        .diff_N(diff_N),
        .diff_W(diff_W),
        .env_E(env_E),
        .env_N(env_N),
        .env_W(env_W),
        .fifo_data(fifo_data),
        .fifo_valid(fifo_valid),
        .phase_E(phase_E),
        .phase_N(phase_N),
        .phase_W(phase_W),
        .reset(reset),
        .valid(valid));
endmodule

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_cordic_atan2_16
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
module ps_freq_low_46_0_0_cordic_sqrt_16
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

(* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_im" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_fir_doa_low_im
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
module ps_freq_low_46_0_0_fir_doa_low_im_HD3
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
module ps_freq_low_46_0_0_fir_doa_low_re
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
module ps_freq_low_46_0_0_fir_doa_low_re_HD4
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

(* ORIG_REF_NAME = "freq_low_46" *) (* keep_hierarchy = "soft" *) 
module ps_freq_low_46_0_0_freq_low_46
   (clk,
    reset,
    fifo_valid,
    fifo_data,
    valid,
    env_N,
    phase_N,
    diff_N,
    env_E,
    phase_E,
    diff_E,
    env_W,
    phase_W,
    diff_W);
  input clk;
  input reset;
  input fifo_valid;
  input [47:0]fifo_data;
  output valid;
  output [15:0]env_N;
  output [19:0]phase_N;
  output [19:0]diff_N;
  output [15:0]env_E;
  output [19:0]phase_E;
  output [19:0]diff_E;
  output [15:0]env_W;
  output [19:0]phase_W;
  output [19:0]diff_W;

  (* MARK_DEBUG *) wire [15:0]E;
  (* MARK_DEBUG *) wire [15:0]N;
  (* MARK_DEBUG *) wire [15:0]W;
  wire clk;
  (* MARK_DEBUG *) wire [6:0]curr_delay;
  wire [19:0]diffE;
  wire [19:0]diffE01_out;
  wire [19:0]diffN;
  wire diffN0;
  wire [19:0]diffN02_out;
  wire [19:0]diffW;
  wire [19:0]diffW00_out;
  wire [19:0]diff_E;
  wire [19:0]diff_N;
  wire [19:0]diff_W;
  (* MARK_DEBUG *) wire [15:0]envE;
  (* MARK_DEBUG *) wire [15:0]envN;
  (* MARK_DEBUG *) wire [15:0]envW;
  wire [15:0]env_E;
  wire [15:0]env_N;
  wire [15:0]env_W;
  (* MARK_DEBUG *) wire [47:0]fifo_data;
  (* MARK_DEBUG *) wire fifo_valid;
  wire fir_freq_low_re_N_i_i_1_n_0;
  (* MARK_DEBUG *) wire [39:0]fir_im_E;
  (* MARK_DEBUG *) wire [39:0]fir_im_N;
  (* MARK_DEBUG *) wire [39:0]fir_im_W;
  (* MARK_DEBUG *) wire [39:0]fir_re_E;
  (* MARK_DEBUG *) wire [39:0]fir_re_N;
  (* MARK_DEBUG *) wire [39:0]fir_re_W;
  wire \freq_low_46.curr_delay[0]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[0]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[1]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[1]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[2]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[2]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[2]_i_3_n_0 ;
  wire \freq_low_46.curr_delay[2]_i_4_n_0 ;
  wire \freq_low_46.curr_delay[3]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[3]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[3]_i_3_n_0 ;
  wire \freq_low_46.curr_delay[4]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[4]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[5]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[5]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[5]_i_3_n_0 ;
  wire \freq_low_46.curr_delay[5]_i_4_n_0 ;
  wire \freq_low_46.curr_delay[6]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[6]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[6]_i_3_n_0 ;
  wire \freq_low_46.curr_delay[6]_i_4_n_0 ;
  wire \freq_low_46.curr_delay[6]_i_5_n_0 ;
  wire \freq_low_46.curr_delay[6]_i_6_n_0 ;
  wire \freq_low_46.diffE[15]_i_2_n_0 ;
  wire \freq_low_46.diffE[15]_i_3_n_0 ;
  wire \freq_low_46.diffE[15]_i_4_n_0 ;
  wire \freq_low_46.diffE[15]_i_5_n_0 ;
  wire \freq_low_46.diffE[15]_i_6_n_0 ;
  wire \freq_low_46.diffE[15]_i_7_n_0 ;
  wire \freq_low_46.diffE[15]_i_8_n_0 ;
  wire \freq_low_46.diffE[15]_i_9_n_0 ;
  wire \freq_low_46.diffE[19]_i_2_n_0 ;
  wire \freq_low_46.diffE[19]_i_3_n_0 ;
  wire \freq_low_46.diffE[19]_i_4_n_0 ;
  wire \freq_low_46.diffE[19]_i_5_n_0 ;
  wire \freq_low_46.diffE[7]_i_2_n_0 ;
  wire \freq_low_46.diffE[7]_i_3_n_0 ;
  wire \freq_low_46.diffE[7]_i_4_n_0 ;
  wire \freq_low_46.diffE[7]_i_5_n_0 ;
  wire \freq_low_46.diffE[7]_i_6_n_0 ;
  wire \freq_low_46.diffE[7]_i_7_n_0 ;
  wire \freq_low_46.diffE[7]_i_8_n_0 ;
  wire \freq_low_46.diffE[7]_i_9_n_0 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_0 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_1 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_2 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_3 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_4 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_5 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_6 ;
  wire \freq_low_46.diffE_reg[15]_i_1_n_7 ;
  wire \freq_low_46.diffE_reg[19]_i_1_n_5 ;
  wire \freq_low_46.diffE_reg[19]_i_1_n_6 ;
  wire \freq_low_46.diffE_reg[19]_i_1_n_7 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_0 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_1 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_2 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_3 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_4 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_5 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_6 ;
  wire \freq_low_46.diffE_reg[7]_i_1_n_7 ;
  wire \freq_low_46.diffN[15]_i_2_n_0 ;
  wire \freq_low_46.diffN[15]_i_3_n_0 ;
  wire \freq_low_46.diffN[15]_i_4_n_0 ;
  wire \freq_low_46.diffN[15]_i_5_n_0 ;
  wire \freq_low_46.diffN[15]_i_6_n_0 ;
  wire \freq_low_46.diffN[15]_i_7_n_0 ;
  wire \freq_low_46.diffN[15]_i_8_n_0 ;
  wire \freq_low_46.diffN[15]_i_9_n_0 ;
  wire \freq_low_46.diffN[19]_i_2_n_0 ;
  wire \freq_low_46.diffN[19]_i_3_n_0 ;
  wire \freq_low_46.diffN[19]_i_4_n_0 ;
  wire \freq_low_46.diffN[19]_i_5_n_0 ;
  wire \freq_low_46.diffN[7]_i_2_n_0 ;
  wire \freq_low_46.diffN[7]_i_3_n_0 ;
  wire \freq_low_46.diffN[7]_i_4_n_0 ;
  wire \freq_low_46.diffN[7]_i_5_n_0 ;
  wire \freq_low_46.diffN[7]_i_6_n_0 ;
  wire \freq_low_46.diffN[7]_i_7_n_0 ;
  wire \freq_low_46.diffN[7]_i_8_n_0 ;
  wire \freq_low_46.diffN[7]_i_9_n_0 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_0 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_1 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_2 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_3 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_4 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_5 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_6 ;
  wire \freq_low_46.diffN_reg[15]_i_1_n_7 ;
  wire \freq_low_46.diffN_reg[19]_i_1_n_5 ;
  wire \freq_low_46.diffN_reg[19]_i_1_n_6 ;
  wire \freq_low_46.diffN_reg[19]_i_1_n_7 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_0 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_1 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_2 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_3 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_4 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_5 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_6 ;
  wire \freq_low_46.diffN_reg[7]_i_1_n_7 ;
  wire \freq_low_46.diffW[15]_i_2_n_0 ;
  wire \freq_low_46.diffW[15]_i_3_n_0 ;
  wire \freq_low_46.diffW[15]_i_4_n_0 ;
  wire \freq_low_46.diffW[15]_i_5_n_0 ;
  wire \freq_low_46.diffW[15]_i_6_n_0 ;
  wire \freq_low_46.diffW[15]_i_7_n_0 ;
  wire \freq_low_46.diffW[15]_i_8_n_0 ;
  wire \freq_low_46.diffW[15]_i_9_n_0 ;
  wire \freq_low_46.diffW[19]_i_2_n_0 ;
  wire \freq_low_46.diffW[19]_i_3_n_0 ;
  wire \freq_low_46.diffW[19]_i_4_n_0 ;
  wire \freq_low_46.diffW[19]_i_5_n_0 ;
  wire \freq_low_46.diffW[7]_i_2_n_0 ;
  wire \freq_low_46.diffW[7]_i_3_n_0 ;
  wire \freq_low_46.diffW[7]_i_4_n_0 ;
  wire \freq_low_46.diffW[7]_i_5_n_0 ;
  wire \freq_low_46.diffW[7]_i_6_n_0 ;
  wire \freq_low_46.diffW[7]_i_7_n_0 ;
  wire \freq_low_46.diffW[7]_i_8_n_0 ;
  wire \freq_low_46.diffW[7]_i_9_n_0 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_0 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_1 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_2 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_3 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_4 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_5 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_6 ;
  wire \freq_low_46.diffW_reg[15]_i_1_n_7 ;
  wire \freq_low_46.diffW_reg[19]_i_1_n_5 ;
  wire \freq_low_46.diffW_reg[19]_i_1_n_6 ;
  wire \freq_low_46.diffW_reg[19]_i_1_n_7 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_0 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_1 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_2 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_3 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_4 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_5 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_6 ;
  wire \freq_low_46.diffW_reg[7]_i_1_n_7 ;
  wire \freq_low_46.morlet_active_i_1_n_0 ;
  wire \freq_low_46.start_delay[0]_i_1_n_0 ;
  wire \freq_low_46.start_delay[1]_i_1_n_0 ;
  wire \freq_low_46.start_delay[2]_i_1_n_0 ;
  wire \freq_low_46.start_delay[3]_i_1_n_0 ;
  wire \freq_low_46.start_delay[4]_i_1_n_0 ;
  wire \freq_low_46.start_delay[5]_i_1_n_0 ;
  wire \freq_low_46.start_delay[5]_i_2_n_0 ;
  wire \freq_low_46.start_delay[6]_i_1_n_0 ;
  wire \freq_low_46.start_delay[6]_i_2_n_0 ;
  wire \freq_low_46.start_delay[6]_i_3_n_0 ;
  wire \freq_low_46.start_delay[6]_i_4_n_0 ;
  wire \freq_low_46.start_delay[6]_i_5_n_0 ;
  (* MARK_DEBUG *) wire morlet_active;
  (* MARK_DEBUG *) wire [19:0]phaseE;
  (* MARK_DEBUG *) wire [19:0]phaseN;
  (* MARK_DEBUG *) wire [19:0]phaseW;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire [19:0]prevE;
  wire [19:0]prevN;
  wire [19:0]prevW;
  wire reset;
  (* MARK_DEBUG *) wire [6:0]start_delay;
  (* MARK_DEBUG *) wire valid;
  (* MARK_DEBUG *) wire validE;
  (* MARK_DEBUG *) wire validN;
  (* MARK_DEBUG *) wire validW;
  wire NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED;
  wire [7:3]\NLW_freq_low_46.diffE_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_freq_low_46.diffE_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_freq_low_46.diffN_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_freq_low_46.diffN_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_freq_low_46.diffW_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_freq_low_46.diffW_reg[19]_i_1_O_UNCONNECTED ;

  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_im fir_freq_low_im_E_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_E),
        .m_axis_data_tvalid(NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_im fir_freq_low_im_N_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_N),
        .m_axis_data_tvalid(NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_im_HD3 fir_freq_low_im_W_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_W),
        .m_axis_data_tvalid(NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_re fir_freq_low_re_E_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_E),
        .m_axis_data_tvalid(NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_re fir_freq_low_re_N_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_N),
        .m_axis_data_tvalid(NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  LUT1 #(
    .INIT(2'h1)) 
    fir_freq_low_re_N_i_i_1
       (.I0(reset),
        .O(fir_freq_low_re_N_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_re_HD4 fir_freq_low_re_W_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_W),
        .m_axis_data_tvalid(NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2 freq_E_i
       (.active(morlet_active),
        .clk(clk),
        .env(envE),
        .im(fir_im_E[36:13]),
        .phase(phaseE),
        .re(fir_re_E[36:13]),
        .valid(validE));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1 freq_N_i
       (.active(morlet_active),
        .clk(clk),
        .env(envN),
        .im(fir_im_N[36:13]),
        .phase(phaseN),
        .re(fir_re_N[36:13]),
        .valid(validN));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_freq_low_46_0_0_morlet_to_phase_env freq_W_i
       (.active(morlet_active),
        .clk(clk),
        .env(envW),
        .im(fir_im_W[36:13]),
        .phase(phaseW),
        .re(fir_re_W[36:13]),
        .valid(validW));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[16]),
        .Q(E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[26]),
        .Q(E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[27]),
        .Q(E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[28]),
        .Q(E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[29]),
        .Q(E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[30]),
        .Q(E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[31]),
        .Q(E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[17]),
        .Q(E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[18]),
        .Q(E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[19]),
        .Q(E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[20]),
        .Q(E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[21]),
        .Q(E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[22]),
        .Q(E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[23]),
        .Q(E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[24]),
        .Q(E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.E_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[25]),
        .Q(E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[0]),
        .Q(N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[10]),
        .Q(N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[11]),
        .Q(N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[12]),
        .Q(N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[13]),
        .Q(N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[14]),
        .Q(N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[15]),
        .Q(N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[1]),
        .Q(N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[2]),
        .Q(N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[3]),
        .Q(N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[4]),
        .Q(N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[5]),
        .Q(N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[6]),
        .Q(N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[7]),
        .Q(N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[8]),
        .Q(N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.N_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[9]),
        .Q(N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[32]),
        .Q(W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[42]),
        .Q(W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[43]),
        .Q(W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[44]),
        .Q(W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[45]),
        .Q(W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[46]),
        .Q(W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[47]),
        .Q(W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[33]),
        .Q(W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[34]),
        .Q(W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[35]),
        .Q(W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[36]),
        .Q(W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[37]),
        .Q(W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[38]),
        .Q(W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[39]),
        .Q(W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[40]),
        .Q(W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.W_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[41]),
        .Q(W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h20D020D0FFD0FDF2)) 
    \freq_low_46.curr_delay[0]_i_1 
       (.I0(start_delay[0]),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I2(fifo_valid),
        .I3(curr_delay[0]),
        .I4(\freq_low_46.curr_delay[1]_i_2_n_0 ),
        .I5(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .O(\freq_low_46.curr_delay[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \freq_low_46.curr_delay[0]_i_2 
       (.I0(start_delay[5]),
        .I1(start_delay[4]),
        .I2(start_delay[3]),
        .I3(start_delay[1]),
        .I4(start_delay[2]),
        .I5(start_delay[6]),
        .O(\freq_low_46.curr_delay[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2F13FF012213030)) 
    \freq_low_46.curr_delay[1]_i_1 
       (.I0(\freq_low_46.curr_delay[1]_i_2_n_0 ),
        .I1(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .I2(curr_delay[1]),
        .I3(curr_delay[0]),
        .I4(\freq_low_46.curr_delay[2]_i_3_n_0 ),
        .I5(fifo_valid),
        .O(\freq_low_46.curr_delay[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \freq_low_46.curr_delay[1]_i_2 
       (.I0(curr_delay[1]),
        .I1(curr_delay[0]),
        .I2(curr_delay[2]),
        .I3(\freq_low_46.curr_delay[3]_i_2_n_0 ),
        .O(\freq_low_46.curr_delay[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000C2CC)) 
    \freq_low_46.curr_delay[2]_i_1 
       (.I0(\freq_low_46.curr_delay[3]_i_2_n_0 ),
        .I1(curr_delay[2]),
        .I2(\freq_low_46.curr_delay[2]_i_2_n_0 ),
        .I3(\freq_low_46.curr_delay[2]_i_3_n_0 ),
        .I4(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .I5(\freq_low_46.curr_delay[2]_i_4_n_0 ),
        .O(\freq_low_46.curr_delay[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \freq_low_46.curr_delay[2]_i_2 
       (.I0(curr_delay[1]),
        .I1(curr_delay[0]),
        .O(\freq_low_46.curr_delay[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \freq_low_46.curr_delay[2]_i_3 
       (.I0(start_delay[0]),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .O(\freq_low_46.curr_delay[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22A2AAAA88080000)) 
    \freq_low_46.curr_delay[2]_i_4 
       (.I0(fifo_valid),
        .I1(curr_delay[0]),
        .I2(start_delay[0]),
        .I3(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I4(curr_delay[1]),
        .I5(curr_delay[2]),
        .O(\freq_low_46.curr_delay[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h04FFFF4004400440)) 
    \freq_low_46.curr_delay[3]_i_1 
       (.I0(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .I1(\freq_low_46.curr_delay[3]_i_2_n_0 ),
        .I2(\freq_low_46.curr_delay[3]_i_3_n_0 ),
        .I3(curr_delay[3]),
        .I4(\freq_low_46.curr_delay[6]_i_2_n_0 ),
        .I5(fifo_valid),
        .O(\freq_low_46.curr_delay[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_low_46.curr_delay[3]_i_2 
       (.I0(curr_delay[3]),
        .I1(curr_delay[4]),
        .I2(curr_delay[5]),
        .I3(curr_delay[6]),
        .O(\freq_low_46.curr_delay[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \freq_low_46.curr_delay[3]_i_3 
       (.I0(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I1(start_delay[0]),
        .I2(curr_delay[1]),
        .I3(curr_delay[0]),
        .I4(curr_delay[2]),
        .O(\freq_low_46.curr_delay[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1FF1F1F111111111)) 
    \freq_low_46.curr_delay[4]_i_1 
       (.I0(\freq_low_46.curr_delay[4]_i_2_n_0 ),
        .I1(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .I2(curr_delay[4]),
        .I3(curr_delay[3]),
        .I4(\freq_low_46.curr_delay[6]_i_2_n_0 ),
        .I5(fifo_valid),
        .O(\freq_low_46.curr_delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555565599999999)) 
    \freq_low_46.curr_delay[4]_i_2 
       (.I0(curr_delay[4]),
        .I1(curr_delay[3]),
        .I2(\freq_low_46.curr_delay[6]_i_6_n_0 ),
        .I3(start_delay[0]),
        .I4(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I5(\freq_low_46.curr_delay[3]_i_2_n_0 ),
        .O(\freq_low_46.curr_delay[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50FFFF4050405040)) 
    \freq_low_46.curr_delay[5]_i_1 
       (.I0(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .I1(curr_delay[6]),
        .I2(\freq_low_46.curr_delay[5]_i_2_n_0 ),
        .I3(curr_delay[5]),
        .I4(\freq_low_46.curr_delay[5]_i_3_n_0 ),
        .I5(fifo_valid),
        .O(\freq_low_46.curr_delay[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000004)) 
    \freq_low_46.curr_delay[5]_i_2 
       (.I0(\freq_low_46.curr_delay[6]_i_6_n_0 ),
        .I1(start_delay[0]),
        .I2(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I3(curr_delay[3]),
        .I4(curr_delay[4]),
        .I5(curr_delay[5]),
        .O(\freq_low_46.curr_delay[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2000000)) 
    \freq_low_46.curr_delay[5]_i_3 
       (.I0(curr_delay[0]),
        .I1(start_delay[0]),
        .I2(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I3(curr_delay[1]),
        .I4(curr_delay[2]),
        .I5(\freq_low_46.curr_delay[5]_i_4_n_0 ),
        .O(\freq_low_46.curr_delay[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \freq_low_46.curr_delay[5]_i_4 
       (.I0(curr_delay[4]),
        .I1(curr_delay[3]),
        .O(\freq_low_46.curr_delay[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0FF20202020)) 
    \freq_low_46.curr_delay[6]_i_1 
       (.I0(\freq_low_46.curr_delay[6]_i_2_n_0 ),
        .I1(\freq_low_46.curr_delay[6]_i_3_n_0 ),
        .I2(fifo_valid),
        .I3(\freq_low_46.curr_delay[6]_i_4_n_0 ),
        .I4(\freq_low_46.curr_delay[6]_i_5_n_0 ),
        .I5(curr_delay[6]),
        .O(\freq_low_46.curr_delay[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80880000)) 
    \freq_low_46.curr_delay[6]_i_2 
       (.I0(curr_delay[2]),
        .I1(curr_delay[1]),
        .I2(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I3(start_delay[0]),
        .I4(curr_delay[0]),
        .O(\freq_low_46.curr_delay[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \freq_low_46.curr_delay[6]_i_3 
       (.I0(curr_delay[3]),
        .I1(curr_delay[4]),
        .I2(curr_delay[5]),
        .O(\freq_low_46.curr_delay[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \freq_low_46.curr_delay[6]_i_4 
       (.I0(fifo_valid),
        .I1(\freq_low_46.start_delay[6]_i_3_n_0 ),
        .I2(start_delay[3]),
        .I3(start_delay[5]),
        .I4(start_delay[4]),
        .O(\freq_low_46.curr_delay[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \freq_low_46.curr_delay[6]_i_5 
       (.I0(\freq_low_46.curr_delay[6]_i_6_n_0 ),
        .I1(start_delay[0]),
        .I2(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I3(curr_delay[4]),
        .I4(curr_delay[3]),
        .I5(curr_delay[5]),
        .O(\freq_low_46.curr_delay[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \freq_low_46.curr_delay[6]_i_6 
       (.I0(curr_delay[2]),
        .I1(curr_delay[0]),
        .I2(curr_delay[1]),
        .O(\freq_low_46.curr_delay[6]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[0]_i_1_n_0 ),
        .Q(curr_delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[1]_i_1_n_0 ),
        .Q(curr_delay[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[2]_i_1_n_0 ),
        .Q(curr_delay[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[3]_i_1_n_0 ),
        .Q(curr_delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[4]_i_1_n_0 ),
        .Q(curr_delay[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[5]_i_1_n_0 ),
        .Q(curr_delay[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.curr_delay_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.curr_delay[6]_i_1_n_0 ),
        .Q(curr_delay[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_2 
       (.I0(phase_E[15]),
        .I1(prevE[15]),
        .O(\freq_low_46.diffE[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_3 
       (.I0(phase_E[14]),
        .I1(prevE[14]),
        .O(\freq_low_46.diffE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_4 
       (.I0(phase_E[13]),
        .I1(prevE[13]),
        .O(\freq_low_46.diffE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_5 
       (.I0(phase_E[12]),
        .I1(prevE[12]),
        .O(\freq_low_46.diffE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_6 
       (.I0(phase_E[11]),
        .I1(prevE[11]),
        .O(\freq_low_46.diffE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_7 
       (.I0(phase_E[10]),
        .I1(prevE[10]),
        .O(\freq_low_46.diffE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_8 
       (.I0(phase_E[9]),
        .I1(prevE[9]),
        .O(\freq_low_46.diffE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[15]_i_9 
       (.I0(phase_E[8]),
        .I1(prevE[8]),
        .O(\freq_low_46.diffE[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[19]_i_2 
       (.I0(phase_E[19]),
        .I1(prevE[19]),
        .O(\freq_low_46.diffE[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[19]_i_3 
       (.I0(phase_E[18]),
        .I1(prevE[18]),
        .O(\freq_low_46.diffE[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[19]_i_4 
       (.I0(phase_E[17]),
        .I1(prevE[17]),
        .O(\freq_low_46.diffE[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[19]_i_5 
       (.I0(phase_E[16]),
        .I1(prevE[16]),
        .O(\freq_low_46.diffE[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_2 
       (.I0(phase_E[7]),
        .I1(prevE[7]),
        .O(\freq_low_46.diffE[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_3 
       (.I0(phase_E[6]),
        .I1(prevE[6]),
        .O(\freq_low_46.diffE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_4 
       (.I0(phase_E[5]),
        .I1(prevE[5]),
        .O(\freq_low_46.diffE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_5 
       (.I0(phase_E[4]),
        .I1(prevE[4]),
        .O(\freq_low_46.diffE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_6 
       (.I0(phase_E[3]),
        .I1(prevE[3]),
        .O(\freq_low_46.diffE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_7 
       (.I0(phase_E[2]),
        .I1(prevE[2]),
        .O(\freq_low_46.diffE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_8 
       (.I0(phase_E[1]),
        .I1(prevE[1]),
        .O(\freq_low_46.diffE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffE[7]_i_9 
       (.I0(phase_E[0]),
        .I1(prevE[0]),
        .O(\freq_low_46.diffE[7]_i_9_n_0 ));
  FDRE \freq_low_46.diffE_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[0]),
        .Q(diffE[0]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[10]),
        .Q(diffE[10]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[11]),
        .Q(diffE[11]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[12]),
        .Q(diffE[12]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[13]),
        .Q(diffE[13]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[14]),
        .Q(diffE[14]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[15]),
        .Q(diffE[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffE_reg[15]_i_1 
       (.CI(\freq_low_46.diffE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diffE_reg[15]_i_1_n_0 ,\freq_low_46.diffE_reg[15]_i_1_n_1 ,\freq_low_46.diffE_reg[15]_i_1_n_2 ,\freq_low_46.diffE_reg[15]_i_1_n_3 ,\freq_low_46.diffE_reg[15]_i_1_n_4 ,\freq_low_46.diffE_reg[15]_i_1_n_5 ,\freq_low_46.diffE_reg[15]_i_1_n_6 ,\freq_low_46.diffE_reg[15]_i_1_n_7 }),
        .DI(phase_E[15:8]),
        .O(diffE01_out[15:8]),
        .S({\freq_low_46.diffE[15]_i_2_n_0 ,\freq_low_46.diffE[15]_i_3_n_0 ,\freq_low_46.diffE[15]_i_4_n_0 ,\freq_low_46.diffE[15]_i_5_n_0 ,\freq_low_46.diffE[15]_i_6_n_0 ,\freq_low_46.diffE[15]_i_7_n_0 ,\freq_low_46.diffE[15]_i_8_n_0 ,\freq_low_46.diffE[15]_i_9_n_0 }));
  FDRE \freq_low_46.diffE_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[16]),
        .Q(diffE[16]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[17]),
        .Q(diffE[17]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[18]),
        .Q(diffE[18]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[19]),
        .Q(diffE[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffE_reg[19]_i_1 
       (.CI(\freq_low_46.diffE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.diffE_reg[19]_i_1_CO_UNCONNECTED [7:3],\freq_low_46.diffE_reg[19]_i_1_n_5 ,\freq_low_46.diffE_reg[19]_i_1_n_6 ,\freq_low_46.diffE_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_E[18:16]}),
        .O({\NLW_freq_low_46.diffE_reg[19]_i_1_O_UNCONNECTED [7:4],diffE01_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\freq_low_46.diffE[19]_i_2_n_0 ,\freq_low_46.diffE[19]_i_3_n_0 ,\freq_low_46.diffE[19]_i_4_n_0 ,\freq_low_46.diffE[19]_i_5_n_0 }));
  FDRE \freq_low_46.diffE_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[1]),
        .Q(diffE[1]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[2]),
        .Q(diffE[2]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[3]),
        .Q(diffE[3]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[4]),
        .Q(diffE[4]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[5]),
        .Q(diffE[5]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[6]),
        .Q(diffE[6]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[7]),
        .Q(diffE[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffE_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diffE_reg[7]_i_1_n_0 ,\freq_low_46.diffE_reg[7]_i_1_n_1 ,\freq_low_46.diffE_reg[7]_i_1_n_2 ,\freq_low_46.diffE_reg[7]_i_1_n_3 ,\freq_low_46.diffE_reg[7]_i_1_n_4 ,\freq_low_46.diffE_reg[7]_i_1_n_5 ,\freq_low_46.diffE_reg[7]_i_1_n_6 ,\freq_low_46.diffE_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(diffE01_out[7:0]),
        .S({\freq_low_46.diffE[7]_i_2_n_0 ,\freq_low_46.diffE[7]_i_3_n_0 ,\freq_low_46.diffE[7]_i_4_n_0 ,\freq_low_46.diffE[7]_i_5_n_0 ,\freq_low_46.diffE[7]_i_6_n_0 ,\freq_low_46.diffE[7]_i_7_n_0 ,\freq_low_46.diffE[7]_i_8_n_0 ,\freq_low_46.diffE[7]_i_9_n_0 }));
  FDRE \freq_low_46.diffE_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[8]),
        .Q(diffE[8]),
        .R(1'b0));
  FDRE \freq_low_46.diffE_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE01_out[9]),
        .Q(diffE[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_2 
       (.I0(phase_N[15]),
        .I1(prevN[15]),
        .O(\freq_low_46.diffN[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_3 
       (.I0(phase_N[14]),
        .I1(prevN[14]),
        .O(\freq_low_46.diffN[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_4 
       (.I0(phase_N[13]),
        .I1(prevN[13]),
        .O(\freq_low_46.diffN[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_5 
       (.I0(phase_N[12]),
        .I1(prevN[12]),
        .O(\freq_low_46.diffN[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_6 
       (.I0(phase_N[11]),
        .I1(prevN[11]),
        .O(\freq_low_46.diffN[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_7 
       (.I0(phase_N[10]),
        .I1(prevN[10]),
        .O(\freq_low_46.diffN[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_8 
       (.I0(phase_N[9]),
        .I1(prevN[9]),
        .O(\freq_low_46.diffN[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[15]_i_9 
       (.I0(phase_N[8]),
        .I1(prevN[8]),
        .O(\freq_low_46.diffN[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[19]_i_2 
       (.I0(phase_N[19]),
        .I1(prevN[19]),
        .O(\freq_low_46.diffN[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[19]_i_3 
       (.I0(phase_N[18]),
        .I1(prevN[18]),
        .O(\freq_low_46.diffN[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[19]_i_4 
       (.I0(phase_N[17]),
        .I1(prevN[17]),
        .O(\freq_low_46.diffN[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[19]_i_5 
       (.I0(phase_N[16]),
        .I1(prevN[16]),
        .O(\freq_low_46.diffN[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_2 
       (.I0(phase_N[7]),
        .I1(prevN[7]),
        .O(\freq_low_46.diffN[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_3 
       (.I0(phase_N[6]),
        .I1(prevN[6]),
        .O(\freq_low_46.diffN[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_4 
       (.I0(phase_N[5]),
        .I1(prevN[5]),
        .O(\freq_low_46.diffN[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_5 
       (.I0(phase_N[4]),
        .I1(prevN[4]),
        .O(\freq_low_46.diffN[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_6 
       (.I0(phase_N[3]),
        .I1(prevN[3]),
        .O(\freq_low_46.diffN[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_7 
       (.I0(phase_N[2]),
        .I1(prevN[2]),
        .O(\freq_low_46.diffN[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_8 
       (.I0(phase_N[1]),
        .I1(prevN[1]),
        .O(\freq_low_46.diffN[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffN[7]_i_9 
       (.I0(phase_N[0]),
        .I1(prevN[0]),
        .O(\freq_low_46.diffN[7]_i_9_n_0 ));
  FDRE \freq_low_46.diffN_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[0]),
        .Q(diffN[0]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[10]),
        .Q(diffN[10]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[11]),
        .Q(diffN[11]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[12]),
        .Q(diffN[12]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[13]),
        .Q(diffN[13]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[14]),
        .Q(diffN[14]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[15]),
        .Q(diffN[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffN_reg[15]_i_1 
       (.CI(\freq_low_46.diffN_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diffN_reg[15]_i_1_n_0 ,\freq_low_46.diffN_reg[15]_i_1_n_1 ,\freq_low_46.diffN_reg[15]_i_1_n_2 ,\freq_low_46.diffN_reg[15]_i_1_n_3 ,\freq_low_46.diffN_reg[15]_i_1_n_4 ,\freq_low_46.diffN_reg[15]_i_1_n_5 ,\freq_low_46.diffN_reg[15]_i_1_n_6 ,\freq_low_46.diffN_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(diffN02_out[15:8]),
        .S({\freq_low_46.diffN[15]_i_2_n_0 ,\freq_low_46.diffN[15]_i_3_n_0 ,\freq_low_46.diffN[15]_i_4_n_0 ,\freq_low_46.diffN[15]_i_5_n_0 ,\freq_low_46.diffN[15]_i_6_n_0 ,\freq_low_46.diffN[15]_i_7_n_0 ,\freq_low_46.diffN[15]_i_8_n_0 ,\freq_low_46.diffN[15]_i_9_n_0 }));
  FDRE \freq_low_46.diffN_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[16]),
        .Q(diffN[16]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[17]),
        .Q(diffN[17]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[18]),
        .Q(diffN[18]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[19]),
        .Q(diffN[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffN_reg[19]_i_1 
       (.CI(\freq_low_46.diffN_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.diffN_reg[19]_i_1_CO_UNCONNECTED [7:3],\freq_low_46.diffN_reg[19]_i_1_n_5 ,\freq_low_46.diffN_reg[19]_i_1_n_6 ,\freq_low_46.diffN_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_freq_low_46.diffN_reg[19]_i_1_O_UNCONNECTED [7:4],diffN02_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\freq_low_46.diffN[19]_i_2_n_0 ,\freq_low_46.diffN[19]_i_3_n_0 ,\freq_low_46.diffN[19]_i_4_n_0 ,\freq_low_46.diffN[19]_i_5_n_0 }));
  FDRE \freq_low_46.diffN_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[1]),
        .Q(diffN[1]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[2]),
        .Q(diffN[2]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[3]),
        .Q(diffN[3]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[4]),
        .Q(diffN[4]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[5]),
        .Q(diffN[5]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[6]),
        .Q(diffN[6]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[7]),
        .Q(diffN[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffN_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diffN_reg[7]_i_1_n_0 ,\freq_low_46.diffN_reg[7]_i_1_n_1 ,\freq_low_46.diffN_reg[7]_i_1_n_2 ,\freq_low_46.diffN_reg[7]_i_1_n_3 ,\freq_low_46.diffN_reg[7]_i_1_n_4 ,\freq_low_46.diffN_reg[7]_i_1_n_5 ,\freq_low_46.diffN_reg[7]_i_1_n_6 ,\freq_low_46.diffN_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(diffN02_out[7:0]),
        .S({\freq_low_46.diffN[7]_i_2_n_0 ,\freq_low_46.diffN[7]_i_3_n_0 ,\freq_low_46.diffN[7]_i_4_n_0 ,\freq_low_46.diffN[7]_i_5_n_0 ,\freq_low_46.diffN[7]_i_6_n_0 ,\freq_low_46.diffN[7]_i_7_n_0 ,\freq_low_46.diffN[7]_i_8_n_0 ,\freq_low_46.diffN[7]_i_9_n_0 }));
  FDRE \freq_low_46.diffN_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[8]),
        .Q(diffN[8]),
        .R(1'b0));
  FDRE \freq_low_46.diffN_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN02_out[9]),
        .Q(diffN[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_2 
       (.I0(phase_W[15]),
        .I1(prevW[15]),
        .O(\freq_low_46.diffW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_3 
       (.I0(phase_W[14]),
        .I1(prevW[14]),
        .O(\freq_low_46.diffW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_4 
       (.I0(phase_W[13]),
        .I1(prevW[13]),
        .O(\freq_low_46.diffW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_5 
       (.I0(phase_W[12]),
        .I1(prevW[12]),
        .O(\freq_low_46.diffW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_6 
       (.I0(phase_W[11]),
        .I1(prevW[11]),
        .O(\freq_low_46.diffW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_7 
       (.I0(phase_W[10]),
        .I1(prevW[10]),
        .O(\freq_low_46.diffW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_8 
       (.I0(phase_W[9]),
        .I1(prevW[9]),
        .O(\freq_low_46.diffW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[15]_i_9 
       (.I0(phase_W[8]),
        .I1(prevW[8]),
        .O(\freq_low_46.diffW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[19]_i_2 
       (.I0(phase_W[19]),
        .I1(prevW[19]),
        .O(\freq_low_46.diffW[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[19]_i_3 
       (.I0(phase_W[18]),
        .I1(prevW[18]),
        .O(\freq_low_46.diffW[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[19]_i_4 
       (.I0(phase_W[17]),
        .I1(prevW[17]),
        .O(\freq_low_46.diffW[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[19]_i_5 
       (.I0(phase_W[16]),
        .I1(prevW[16]),
        .O(\freq_low_46.diffW[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_2 
       (.I0(phase_W[7]),
        .I1(prevW[7]),
        .O(\freq_low_46.diffW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_3 
       (.I0(phase_W[6]),
        .I1(prevW[6]),
        .O(\freq_low_46.diffW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_4 
       (.I0(phase_W[5]),
        .I1(prevW[5]),
        .O(\freq_low_46.diffW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_5 
       (.I0(phase_W[4]),
        .I1(prevW[4]),
        .O(\freq_low_46.diffW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_6 
       (.I0(phase_W[3]),
        .I1(prevW[3]),
        .O(\freq_low_46.diffW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_7 
       (.I0(phase_W[2]),
        .I1(prevW[2]),
        .O(\freq_low_46.diffW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_8 
       (.I0(phase_W[1]),
        .I1(prevW[1]),
        .O(\freq_low_46.diffW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diffW[7]_i_9 
       (.I0(phase_W[0]),
        .I1(prevW[0]),
        .O(\freq_low_46.diffW[7]_i_9_n_0 ));
  FDRE \freq_low_46.diffW_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[0]),
        .Q(diffW[0]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[10]),
        .Q(diffW[10]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[11]),
        .Q(diffW[11]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[12]),
        .Q(diffW[12]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[13]),
        .Q(diffW[13]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[14]),
        .Q(diffW[14]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[15]),
        .Q(diffW[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffW_reg[15]_i_1 
       (.CI(\freq_low_46.diffW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diffW_reg[15]_i_1_n_0 ,\freq_low_46.diffW_reg[15]_i_1_n_1 ,\freq_low_46.diffW_reg[15]_i_1_n_2 ,\freq_low_46.diffW_reg[15]_i_1_n_3 ,\freq_low_46.diffW_reg[15]_i_1_n_4 ,\freq_low_46.diffW_reg[15]_i_1_n_5 ,\freq_low_46.diffW_reg[15]_i_1_n_6 ,\freq_low_46.diffW_reg[15]_i_1_n_7 }),
        .DI(phase_W[15:8]),
        .O(diffW00_out[15:8]),
        .S({\freq_low_46.diffW[15]_i_2_n_0 ,\freq_low_46.diffW[15]_i_3_n_0 ,\freq_low_46.diffW[15]_i_4_n_0 ,\freq_low_46.diffW[15]_i_5_n_0 ,\freq_low_46.diffW[15]_i_6_n_0 ,\freq_low_46.diffW[15]_i_7_n_0 ,\freq_low_46.diffW[15]_i_8_n_0 ,\freq_low_46.diffW[15]_i_9_n_0 }));
  FDRE \freq_low_46.diffW_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[16]),
        .Q(diffW[16]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[17]),
        .Q(diffW[17]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[18]),
        .Q(diffW[18]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[19]),
        .Q(diffW[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffW_reg[19]_i_1 
       (.CI(\freq_low_46.diffW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.diffW_reg[19]_i_1_CO_UNCONNECTED [7:3],\freq_low_46.diffW_reg[19]_i_1_n_5 ,\freq_low_46.diffW_reg[19]_i_1_n_6 ,\freq_low_46.diffW_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_W[18:16]}),
        .O({\NLW_freq_low_46.diffW_reg[19]_i_1_O_UNCONNECTED [7:4],diffW00_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\freq_low_46.diffW[19]_i_2_n_0 ,\freq_low_46.diffW[19]_i_3_n_0 ,\freq_low_46.diffW[19]_i_4_n_0 ,\freq_low_46.diffW[19]_i_5_n_0 }));
  FDRE \freq_low_46.diffW_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[1]),
        .Q(diffW[1]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[2]),
        .Q(diffW[2]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[3]),
        .Q(diffW[3]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[4]),
        .Q(diffW[4]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[5]),
        .Q(diffW[5]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[6]),
        .Q(diffW[6]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[7]),
        .Q(diffW[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diffW_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diffW_reg[7]_i_1_n_0 ,\freq_low_46.diffW_reg[7]_i_1_n_1 ,\freq_low_46.diffW_reg[7]_i_1_n_2 ,\freq_low_46.diffW_reg[7]_i_1_n_3 ,\freq_low_46.diffW_reg[7]_i_1_n_4 ,\freq_low_46.diffW_reg[7]_i_1_n_5 ,\freq_low_46.diffW_reg[7]_i_1_n_6 ,\freq_low_46.diffW_reg[7]_i_1_n_7 }),
        .DI(phase_W[7:0]),
        .O(diffW00_out[7:0]),
        .S({\freq_low_46.diffW[7]_i_2_n_0 ,\freq_low_46.diffW[7]_i_3_n_0 ,\freq_low_46.diffW[7]_i_4_n_0 ,\freq_low_46.diffW[7]_i_5_n_0 ,\freq_low_46.diffW[7]_i_6_n_0 ,\freq_low_46.diffW[7]_i_7_n_0 ,\freq_low_46.diffW[7]_i_8_n_0 ,\freq_low_46.diffW[7]_i_9_n_0 }));
  FDRE \freq_low_46.diffW_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[8]),
        .Q(diffW[8]),
        .R(1'b0));
  FDRE \freq_low_46.diffW_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW00_out[9]),
        .Q(diffW[9]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[0]),
        .Q(diff_E[0]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[10]),
        .Q(diff_E[10]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[11]),
        .Q(diff_E[11]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[12]),
        .Q(diff_E[12]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[13]),
        .Q(diff_E[13]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[14]),
        .Q(diff_E[14]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[15]),
        .Q(diff_E[15]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[16]),
        .Q(diff_E[16]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[17]),
        .Q(diff_E[17]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[18]),
        .Q(diff_E[18]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[19]),
        .Q(diff_E[19]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[1]),
        .Q(diff_E[1]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[2]),
        .Q(diff_E[2]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[3]),
        .Q(diff_E[3]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[4]),
        .Q(diff_E[4]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[5]),
        .Q(diff_E[5]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[6]),
        .Q(diff_E[6]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[7]),
        .Q(diff_E[7]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[8]),
        .Q(diff_E[8]),
        .R(1'b0));
  FDRE \freq_low_46.diff_E_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(diffE[9]),
        .Q(diff_E[9]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[0]),
        .Q(diff_N[0]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[10]),
        .Q(diff_N[10]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[11]),
        .Q(diff_N[11]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[12]),
        .Q(diff_N[12]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[13]),
        .Q(diff_N[13]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[14]),
        .Q(diff_N[14]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[15]),
        .Q(diff_N[15]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[16]),
        .Q(diff_N[16]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[17]),
        .Q(diff_N[17]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[18]),
        .Q(diff_N[18]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[19]),
        .Q(diff_N[19]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[1]),
        .Q(diff_N[1]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[2]),
        .Q(diff_N[2]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[3]),
        .Q(diff_N[3]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[4]),
        .Q(diff_N[4]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[5]),
        .Q(diff_N[5]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[6]),
        .Q(diff_N[6]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[7]),
        .Q(diff_N[7]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[8]),
        .Q(diff_N[8]),
        .R(1'b0));
  FDRE \freq_low_46.diff_N_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(diffN[9]),
        .Q(diff_N[9]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[0]),
        .Q(diff_W[0]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[10]),
        .Q(diff_W[10]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[11]),
        .Q(diff_W[11]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[12]),
        .Q(diff_W[12]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[13]),
        .Q(diff_W[13]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[14]),
        .Q(diff_W[14]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[15]),
        .Q(diff_W[15]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[16]),
        .Q(diff_W[16]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[17]),
        .Q(diff_W[17]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[18]),
        .Q(diff_W[18]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[19]),
        .Q(diff_W[19]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[1]),
        .Q(diff_W[1]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[2]),
        .Q(diff_W[2]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[3]),
        .Q(diff_W[3]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[4]),
        .Q(diff_W[4]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[5]),
        .Q(diff_W[5]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[6]),
        .Q(diff_W[6]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[7]),
        .Q(diff_W[7]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[8]),
        .Q(diff_W[8]),
        .R(1'b0));
  FDRE \freq_low_46.diff_W_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(diffW[9]),
        .Q(diff_W[9]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[0]),
        .Q(env_E[0]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[10]),
        .Q(env_E[10]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[11]),
        .Q(env_E[11]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[12]),
        .Q(env_E[12]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[13]),
        .Q(env_E[13]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[14]),
        .Q(env_E[14]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[15]),
        .Q(env_E[15]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[1]),
        .Q(env_E[1]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[2]),
        .Q(env_E[2]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[3]),
        .Q(env_E[3]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[4]),
        .Q(env_E[4]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[5]),
        .Q(env_E[5]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[6]),
        .Q(env_E[6]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[7]),
        .Q(env_E[7]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[8]),
        .Q(env_E[8]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(envE[9]),
        .Q(env_E[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \freq_low_46.env_N[15]_i_1 
       (.I0(validN),
        .I1(validE),
        .I2(validW),
        .O(diffN0));
  FDRE \freq_low_46.env_N_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[0]),
        .Q(env_N[0]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[10]),
        .Q(env_N[10]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[11]),
        .Q(env_N[11]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[12]),
        .Q(env_N[12]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[13]),
        .Q(env_N[13]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[14]),
        .Q(env_N[14]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[15]),
        .Q(env_N[15]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[1]),
        .Q(env_N[1]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[2]),
        .Q(env_N[2]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[3]),
        .Q(env_N[3]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[4]),
        .Q(env_N[4]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[5]),
        .Q(env_N[5]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[6]),
        .Q(env_N[6]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[7]),
        .Q(env_N[7]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[8]),
        .Q(env_N[8]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(envN[9]),
        .Q(env_N[9]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[0]),
        .Q(env_W[0]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[10]),
        .Q(env_W[10]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[11]),
        .Q(env_W[11]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[12]),
        .Q(env_W[12]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[13]),
        .Q(env_W[13]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[14]),
        .Q(env_W[14]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[15]),
        .Q(env_W[15]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[1]),
        .Q(env_W[1]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[2]),
        .Q(env_W[2]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[3]),
        .Q(env_W[3]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[4]),
        .Q(env_W[4]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[5]),
        .Q(env_W[5]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[6]),
        .Q(env_W[6]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[7]),
        .Q(env_W[7]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[8]),
        .Q(env_W[8]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(envW[9]),
        .Q(env_W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \freq_low_46.morlet_active_i_1 
       (.I0(curr_delay[1]),
        .I1(curr_delay[0]),
        .I2(curr_delay[2]),
        .I3(\freq_low_46.curr_delay[3]_i_2_n_0 ),
        .I4(fifo_valid),
        .I5(\freq_low_46.curr_delay[2]_i_3_n_0 ),
        .O(\freq_low_46.morlet_active_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.morlet_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.morlet_active_i_1_n_0 ),
        .Q(morlet_active),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[0]),
        .Q(phase_E[0]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[10]),
        .Q(phase_E[10]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[11]),
        .Q(phase_E[11]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[12]),
        .Q(phase_E[12]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[13]),
        .Q(phase_E[13]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[14]),
        .Q(phase_E[14]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[15]),
        .Q(phase_E[15]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[16]),
        .Q(phase_E[16]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[17]),
        .Q(phase_E[17]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[18]),
        .Q(phase_E[18]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[19]),
        .Q(phase_E[19]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[1]),
        .Q(phase_E[1]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[2]),
        .Q(phase_E[2]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[3]),
        .Q(phase_E[3]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[4]),
        .Q(phase_E[4]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[5]),
        .Q(phase_E[5]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[6]),
        .Q(phase_E[6]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[7]),
        .Q(phase_E[7]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[8]),
        .Q(phase_E[8]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseE[9]),
        .Q(phase_E[9]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[0]),
        .Q(phase_N[0]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[10]),
        .Q(phase_N[10]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[11]),
        .Q(phase_N[11]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[12]),
        .Q(phase_N[12]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[13]),
        .Q(phase_N[13]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[14]),
        .Q(phase_N[14]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[15]),
        .Q(phase_N[15]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[16]),
        .Q(phase_N[16]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[17]),
        .Q(phase_N[17]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[18]),
        .Q(phase_N[18]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[19]),
        .Q(phase_N[19]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[1]),
        .Q(phase_N[1]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[2]),
        .Q(phase_N[2]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[3]),
        .Q(phase_N[3]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[4]),
        .Q(phase_N[4]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[5]),
        .Q(phase_N[5]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[6]),
        .Q(phase_N[6]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[7]),
        .Q(phase_N[7]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[8]),
        .Q(phase_N[8]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseN[9]),
        .Q(phase_N[9]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[0]),
        .Q(phase_W[0]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[10]),
        .Q(phase_W[10]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[11]),
        .Q(phase_W[11]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[12]),
        .Q(phase_W[12]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[13]),
        .Q(phase_W[13]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[14]),
        .Q(phase_W[14]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[15]),
        .Q(phase_W[15]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[16]),
        .Q(phase_W[16]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[17]),
        .Q(phase_W[17]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[18]),
        .Q(phase_W[18]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[19]),
        .Q(phase_W[19]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[1]),
        .Q(phase_W[1]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[2]),
        .Q(phase_W[2]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[3]),
        .Q(phase_W[3]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[4]),
        .Q(phase_W[4]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[5]),
        .Q(phase_W[5]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[6]),
        .Q(phase_W[6]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[7]),
        .Q(phase_W[7]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[8]),
        .Q(phase_W[8]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(phaseW[9]),
        .Q(phase_W[9]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[0]),
        .Q(prevE[0]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[10]),
        .Q(prevE[10]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[11]),
        .Q(prevE[11]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[12]),
        .Q(prevE[12]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[13]),
        .Q(prevE[13]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[14]),
        .Q(prevE[14]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[15]),
        .Q(prevE[15]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[16]),
        .Q(prevE[16]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[17]),
        .Q(prevE[17]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[18]),
        .Q(prevE[18]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[19]),
        .Q(prevE[19]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[1]),
        .Q(prevE[1]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[2]),
        .Q(prevE[2]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[3]),
        .Q(prevE[3]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[4]),
        .Q(prevE[4]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[5]),
        .Q(prevE[5]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[6]),
        .Q(prevE[6]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[7]),
        .Q(prevE[7]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[8]),
        .Q(prevE[8]),
        .R(1'b0));
  FDRE \freq_low_46.prevE_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_E[9]),
        .Q(prevE[9]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[0]),
        .Q(prevN[0]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[10]),
        .Q(prevN[10]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[11]),
        .Q(prevN[11]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[12]),
        .Q(prevN[12]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[13]),
        .Q(prevN[13]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[14]),
        .Q(prevN[14]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[15]),
        .Q(prevN[15]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[16]),
        .Q(prevN[16]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[17]),
        .Q(prevN[17]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[18]),
        .Q(prevN[18]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[19]),
        .Q(prevN[19]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[1]),
        .Q(prevN[1]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[2]),
        .Q(prevN[2]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[3]),
        .Q(prevN[3]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[4]),
        .Q(prevN[4]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[5]),
        .Q(prevN[5]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[6]),
        .Q(prevN[6]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[7]),
        .Q(prevN[7]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[8]),
        .Q(prevN[8]),
        .R(1'b0));
  FDRE \freq_low_46.prevN_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_N[9]),
        .Q(prevN[9]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[0] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[0]),
        .Q(prevW[0]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[10] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[10]),
        .Q(prevW[10]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[11] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[11]),
        .Q(prevW[11]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[12] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[12]),
        .Q(prevW[12]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[13] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[13]),
        .Q(prevW[13]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[14] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[14]),
        .Q(prevW[14]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[15] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[15]),
        .Q(prevW[15]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[16] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[16]),
        .Q(prevW[16]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[17] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[17]),
        .Q(prevW[17]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[18] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[18]),
        .Q(prevW[18]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[19] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[19]),
        .Q(prevW[19]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[1] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[1]),
        .Q(prevW[1]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[2] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[2]),
        .Q(prevW[2]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[3] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[3]),
        .Q(prevW[3]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[4] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[4]),
        .Q(prevW[4]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[5] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[5]),
        .Q(prevW[5]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[6] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[6]),
        .Q(prevW[6]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[7] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[7]),
        .Q(prevW[7]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[8] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[8]),
        .Q(prevW[8]),
        .R(1'b0));
  FDRE \freq_low_46.prevW_reg[9] 
       (.C(clk),
        .CE(diffN0),
        .D(phase_W[9]),
        .Q(prevW[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2220FFFF2222FFFF)) 
    \freq_low_46.start_delay[0]_i_1 
       (.I0(\freq_low_46.start_delay[6]_i_4_n_0 ),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I2(start_delay[2]),
        .I3(start_delay[1]),
        .I4(start_delay[0]),
        .I5(fifo_valid),
        .O(\freq_low_46.start_delay[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h75AA)) 
    \freq_low_46.start_delay[1]_i_1 
       (.I0(start_delay[0]),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I2(\freq_low_46.start_delay[6]_i_4_n_0 ),
        .I3(start_delay[1]),
        .O(\freq_low_46.start_delay[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5D80)) 
    \freq_low_46.start_delay[2]_i_1 
       (.I0(start_delay[0]),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I2(start_delay[1]),
        .I3(start_delay[2]),
        .O(\freq_low_46.start_delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h75A8FD20FD20FD20)) 
    \freq_low_46.start_delay[3]_i_1 
       (.I0(start_delay[0]),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I2(\freq_low_46.start_delay[6]_i_4_n_0 ),
        .I3(start_delay[3]),
        .I4(start_delay[2]),
        .I5(start_delay[1]),
        .O(\freq_low_46.start_delay[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20FDFD20FD20FD20)) 
    \freq_low_46.start_delay[4]_i_1 
       (.I0(start_delay[0]),
        .I1(\freq_low_46.curr_delay[0]_i_2_n_0 ),
        .I2(\freq_low_46.start_delay[6]_i_4_n_0 ),
        .I3(start_delay[4]),
        .I4(\freq_low_46.start_delay[5]_i_2_n_0 ),
        .I5(start_delay[3]),
        .O(\freq_low_46.start_delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \freq_low_46.start_delay[5]_i_1 
       (.I0(\freq_low_46.start_delay[6]_i_4_n_0 ),
        .I1(\freq_low_46.curr_delay[2]_i_3_n_0 ),
        .I2(start_delay[5]),
        .I3(start_delay[3]),
        .I4(\freq_low_46.start_delay[5]_i_2_n_0 ),
        .I5(start_delay[4]),
        .O(\freq_low_46.start_delay[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \freq_low_46.start_delay[5]_i_2 
       (.I0(start_delay[1]),
        .I1(start_delay[0]),
        .I2(start_delay[2]),
        .O(\freq_low_46.start_delay[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_low_46.start_delay[6]_i_1 
       (.I0(fifo_valid),
        .I1(\freq_low_46.start_delay[6]_i_3_n_0 ),
        .I2(start_delay[3]),
        .I3(start_delay[5]),
        .I4(start_delay[4]),
        .O(\freq_low_46.start_delay[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F03CB0F0F0)) 
    \freq_low_46.start_delay[6]_i_2 
       (.I0(\freq_low_46.start_delay[6]_i_4_n_0 ),
        .I1(start_delay[0]),
        .I2(start_delay[6]),
        .I3(start_delay[2]),
        .I4(start_delay[1]),
        .I5(\freq_low_46.start_delay[6]_i_5_n_0 ),
        .O(\freq_low_46.start_delay[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_low_46.start_delay[6]_i_3 
       (.I0(start_delay[1]),
        .I1(start_delay[0]),
        .I2(start_delay[2]),
        .I3(start_delay[6]),
        .O(\freq_low_46.start_delay[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_low_46.start_delay[6]_i_4 
       (.I0(fifo_valid),
        .I1(\freq_low_46.curr_delay[3]_i_2_n_0 ),
        .I2(curr_delay[2]),
        .I3(curr_delay[0]),
        .I4(curr_delay[1]),
        .O(\freq_low_46.start_delay[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \freq_low_46.start_delay[6]_i_5 
       (.I0(start_delay[3]),
        .I1(start_delay[4]),
        .I2(start_delay[5]),
        .O(\freq_low_46.start_delay[6]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[0]_i_1_n_0 ),
        .Q(start_delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[1]_i_1_n_0 ),
        .Q(start_delay[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[2]_i_1_n_0 ),
        .Q(start_delay[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[3]_i_1_n_0 ),
        .Q(start_delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[4]_i_1_n_0 ),
        .Q(start_delay[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[5]_i_1_n_0 ),
        .Q(start_delay[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.start_delay_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[6]_i_1_n_0 ),
        .D(\freq_low_46.start_delay[6]_i_2_n_0 ),
        .Q(start_delay[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(diffN0),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_ila_0 ila_0_i
       (.clk(clk),
        .probe0(fifo_valid),
        .probe1(fifo_data[15:0]),
        .probe10(envN),
        .probe11(phaseN),
        .probe12(E),
        .probe13(fir_re_E[36:13]),
        .probe14(fir_im_E[36:13]),
        .probe15(validE),
        .probe16(envE),
        .probe17(phaseE),
        .probe18(W),
        .probe19(fir_re_W[36:13]),
        .probe2(start_delay),
        .probe20(fir_im_W[36:13]),
        .probe21(validW),
        .probe22(envW),
        .probe23(phaseW),
        .probe3(curr_delay),
        .probe4(morlet_active),
        .probe5(valid),
        .probe6(N),
        .probe7(fir_re_N[36:13]),
        .probe8(fir_im_N[36:13]),
        .probe9(validN));
endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_ila_0
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
    probe23);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [15:0]probe1;
  input [6:0]probe2;
  input [6:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [15:0]probe6;
  input [23:0]probe7;
  input [23:0]probe8;
  input [0:0]probe9;
  input [15:0]probe10;
  input [19:0]probe11;
  input [15:0]probe12;
  input [23:0]probe13;
  input [23:0]probe14;
  input [0:0]probe15;
  input [15:0]probe16;
  input [19:0]probe17;
  input [15:0]probe18;
  input [23:0]probe19;
  input [23:0]probe20;
  input [0:0]probe21;
  input [15:0]probe22;
  input [19:0]probe23;


endmodule

(* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_1" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_ila_1
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
    probe11);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [4:0]probe1;
  input [23:0]probe2;
  input [23:0]probe3;
  input [31:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [15:0]probe7;
  input [23:0]probe8;
  input [15:0]probe9;
  input [19:0]probe10;
  input [0:0]probe11;


endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) (* keep_hierarchy = "soft" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env
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

  (* MARK_DEBUG *) wire active;
  wire [15:0]amp_4;
  wire clk;
  (* MARK_DEBUG *) wire [4:0]delay;
  wire [4:0]delay0_in;
  (* MARK_DEBUG *) wire [15:0]env;
  (* MARK_DEBUG *) wire [23:0]im;
  (* MARK_DEBUG *) wire [31:0]im2;
  (* MARK_DEBUG *) wire [15:0]lenv;
  (* MARK_DEBUG *) wire [23:0]lphase;
  wire \morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[10]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[11]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[12]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[13]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[14]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.env[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[3]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[5]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[6]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[8]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[9]_i_1_n_0 ;
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
  wire \morlet_to_phase_env.phase[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[10]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[11]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[12]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[13]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[14]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[16]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[17]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[18]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[19]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[3]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[5]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[6]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[8]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[9]_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  (* MARK_DEBUG *) wire [31:0]p2;
  (* MARK_DEBUG *) wire [19:0]phase;
  (* MARK_DEBUG *) wire [23:0]re;
  (* MARK_DEBUG *) wire [31:0]re2;
  (* MARK_DEBUG *) wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ila_1_HD5 ila_1_i
       (.clk(clk),
        .probe0(active),
        .probe1(delay),
        .probe10(phase),
        .probe11(valid),
        .probe2(re),
        .probe3(im),
        .probe4(re2),
        .probe5(im2),
        .probe6(p2),
        .probe7(lenv),
        .probe8(lphase),
        .probe9(env));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[0]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[10]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[11]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[12]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[13]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[14]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[15]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(\morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[1]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[2]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[3]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[4]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[5]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[6]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[7]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[8]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_3_reg[9]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ));
  FDRE \morlet_to_phase_env.amp_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ),
        .Q(amp_4[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ),
        .Q(amp_4[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ),
        .Q(amp_4[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ),
        .Q(amp_4[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ),
        .Q(amp_4[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ),
        .Q(amp_4[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ),
        .Q(amp_4[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ),
        .Q(amp_4[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ),
        .Q(amp_4[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ),
        .Q(amp_4[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ),
        .Q(amp_4[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ),
        .Q(amp_4[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ),
        .Q(amp_4[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ),
        .Q(amp_4[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ),
        .Q(amp_4[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ),
        .Q(amp_4[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F0F0F0F0F0F0F0F)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(delay[1]),
        .I1(delay[2]),
        .I2(delay[0]),
        .I3(delay[4]),
        .I4(delay[3]),
        .I5(active),
        .O(delay0_in[0]));
  LUT6 #(
    .INIT(64'h55D5AAAAAAAA5555)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[1]));
  LUT6 #(
    .INIT(64'h552AFF00FF00AA55)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[2]));
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[2]),
        .I3(delay[1]),
        .I4(active),
        .O(delay0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(delay[2]),
        .I1(active),
        .I2(delay[3]),
        .I3(delay[4]),
        .I4(delay[0]),
        .I5(delay[1]),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0E1)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[0]),
        .Q(delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[1]),
        .Q(delay[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[2]),
        .Q(delay[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[3]),
        .Q(delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[4]),
        .Q(delay[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[0]_i_1 
       (.I0(env[0]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[0]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[10]_i_1 
       (.I0(env[10]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[10]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[11]_i_1 
       (.I0(env[11]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[11]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[12]_i_1 
       (.I0(env[12]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[12]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[13]_i_1 
       (.I0(env[13]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[13]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[14]_i_1 
       (.I0(env[14]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[14]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(env[15]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[15]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \morlet_to_phase_env.env[15]_i_2 
       (.I0(delay[3]),
        .I1(delay[4]),
        .I2(delay[2]),
        .I3(delay[0]),
        .I4(delay[1]),
        .I5(active),
        .O(\morlet_to_phase_env.env[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \morlet_to_phase_env.env[15]_i_3 
       (.I0(delay[2]),
        .I1(delay[1]),
        .I2(delay[0]),
        .I3(delay[4]),
        .I4(delay[3]),
        .I5(active),
        .O(\morlet_to_phase_env.env[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[1]_i_1 
       (.I0(env[1]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[1]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[2]_i_1 
       (.I0(env[2]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[2]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[3]_i_1 
       (.I0(env[3]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[3]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[4]_i_1 
       (.I0(env[4]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[4]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[5]_i_1 
       (.I0(env[5]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[5]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[6]_i_1 
       (.I0(env[6]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[6]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[7]_i_1 
       (.I0(env[7]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[7]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[8]_i_1 
       (.I0(env[8]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[8]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[9]_i_1 
       (.I0(env[9]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[9]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[0]_i_1_n_0 ),
        .Q(env[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[10]_i_1_n_0 ),
        .Q(env[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[11]_i_1_n_0 ),
        .Q(env[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[12]_i_1_n_0 ),
        .Q(env[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[13]_i_1_n_0 ),
        .Q(env[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .Q(env[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .Q(env[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[1]_i_1_n_0 ),
        .Q(env[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[2]_i_1_n_0 ),
        .Q(env[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[3]_i_1_n_0 ),
        .Q(env[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[4]_i_1_n_0 ),
        .Q(env[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[5]_i_1_n_0 ),
        .Q(env[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[6]_i_1_n_0 ),
        .Q(env[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[7]_i_1_n_0 ),
        .Q(env[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[8]_i_1_n_0 ),
        .Q(env[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[9]_i_1_n_0 ),
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[0]_i_1 
       (.I0(phase[0]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[0]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[10]_i_1 
       (.I0(phase[10]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[10]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[11]_i_1 
       (.I0(phase[11]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[11]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[12]_i_1 
       (.I0(phase[12]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[12]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[13]_i_1 
       (.I0(phase[13]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[13]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[14]_i_1 
       (.I0(phase[14]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[14]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[15]_i_1 
       (.I0(phase[15]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[15]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[16]_i_1 
       (.I0(phase[16]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[16]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[17]_i_1 
       (.I0(phase[17]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[17]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[18]_i_1 
       (.I0(phase[18]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[18]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[19]_i_1 
       (.I0(phase[19]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[19]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[1]_i_1 
       (.I0(phase[1]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[1]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[2]_i_1 
       (.I0(phase[2]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[2]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[3]_i_1 
       (.I0(phase[3]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[3]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[4]_i_1 
       (.I0(phase[4]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[4]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[5]_i_1 
       (.I0(phase[5]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[5]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[6]_i_1 
       (.I0(phase[6]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[6]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[7]_i_1 
       (.I0(phase[7]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[7]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[8]_i_1 
       (.I0(phase[8]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[8]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[9]_i_1 
       (.I0(phase[9]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[9]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[0]_i_1_n_0 ),
        .Q(phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[10]_i_1_n_0 ),
        .Q(phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[11]_i_1_n_0 ),
        .Q(phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[12]_i_1_n_0 ),
        .Q(phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[13]_i_1_n_0 ),
        .Q(phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[14]_i_1_n_0 ),
        .Q(phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[15]_i_1_n_0 ),
        .Q(phase[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[16]_i_1_n_0 ),
        .Q(phase[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[17]_i_1_n_0 ),
        .Q(phase[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[18]_i_1_n_0 ),
        .Q(phase[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[19]_i_1_n_0 ),
        .Q(phase[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[1]_i_1_n_0 ),
        .Q(phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[2]_i_1_n_0 ),
        .Q(phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[3]_i_1_n_0 ),
        .Q(phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[4]_i_1_n_0 ),
        .Q(phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[5]_i_1_n_0 ),
        .Q(phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[6]_i_1_n_0 ),
        .Q(phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[7]_i_1_n_0 ),
        .Q(phase[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[8]_i_1_n_0 ),
        .Q(phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[9]_i_1_n_0 ),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFEBA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(active),
        .I2(delay[2]),
        .I3(valid),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7333333333333330)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(delay[2]),
        .I1(active),
        .I2(delay[1]),
        .I3(delay[0]),
        .I4(delay[4]),
        .I5(delay[3]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  mult_16_16_HD6 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_sqrt_16_HD7 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_atan2_16_HD8 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata(lphase),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) (* keep_hierarchy = "soft" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1
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

  (* MARK_DEBUG *) wire active;
  wire [15:0]amp_4;
  wire clk;
  (* MARK_DEBUG *) wire [4:0]delay;
  wire [4:0]delay0_in;
  (* MARK_DEBUG *) wire [15:0]env;
  (* MARK_DEBUG *) wire [23:0]im;
  (* MARK_DEBUG *) wire [31:0]im2;
  (* MARK_DEBUG *) wire [15:0]lenv;
  (* MARK_DEBUG *) wire [23:0]lphase;
  wire \morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[10]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[11]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[12]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[13]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[14]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.env[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[3]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[5]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[6]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[8]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[9]_i_1_n_0 ;
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
  wire \morlet_to_phase_env.phase[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[10]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[11]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[12]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[13]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[14]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[16]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[17]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[18]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[19]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[3]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[5]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[6]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[8]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[9]_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  (* MARK_DEBUG *) wire [31:0]p2;
  (* MARK_DEBUG *) wire [19:0]phase;
  (* MARK_DEBUG *) wire [23:0]re;
  (* MARK_DEBUG *) wire [31:0]re2;
  (* MARK_DEBUG *) wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_ila_1 ila_1_i
       (.clk(clk),
        .probe0(active),
        .probe1(delay),
        .probe10(phase),
        .probe11(valid),
        .probe2(re),
        .probe3(im),
        .probe4(re2),
        .probe5(im2),
        .probe6(p2),
        .probe7(lenv),
        .probe8(lphase),
        .probe9(env));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[0]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[10]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[11]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[12]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[13]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[14]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[15]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(\morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[1]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[2]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[3]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[4]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[5]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[6]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[7]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[8]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_3_reg[9]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ));
  FDRE \morlet_to_phase_env.amp_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ),
        .Q(amp_4[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ),
        .Q(amp_4[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ),
        .Q(amp_4[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ),
        .Q(amp_4[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ),
        .Q(amp_4[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ),
        .Q(amp_4[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ),
        .Q(amp_4[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ),
        .Q(amp_4[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ),
        .Q(amp_4[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ),
        .Q(amp_4[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ),
        .Q(amp_4[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ),
        .Q(amp_4[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ),
        .Q(amp_4[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ),
        .Q(amp_4[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ),
        .Q(amp_4[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ),
        .Q(amp_4[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F0F0F0F0F0F0F0F)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(delay[1]),
        .I1(delay[2]),
        .I2(delay[0]),
        .I3(delay[4]),
        .I4(delay[3]),
        .I5(active),
        .O(delay0_in[0]));
  LUT6 #(
    .INIT(64'h55D5AAAAAAAA5555)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[1]));
  LUT6 #(
    .INIT(64'h552AFF00FF00AA55)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[2]));
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[2]),
        .I3(delay[1]),
        .I4(active),
        .O(delay0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(delay[2]),
        .I1(active),
        .I2(delay[3]),
        .I3(delay[4]),
        .I4(delay[0]),
        .I5(delay[1]),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0E1)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[0]),
        .Q(delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[1]),
        .Q(delay[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[2]),
        .Q(delay[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[3]),
        .Q(delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[4]),
        .Q(delay[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[0]_i_1 
       (.I0(env[0]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[0]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[10]_i_1 
       (.I0(env[10]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[10]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[11]_i_1 
       (.I0(env[11]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[11]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[12]_i_1 
       (.I0(env[12]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[12]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[13]_i_1 
       (.I0(env[13]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[13]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[14]_i_1 
       (.I0(env[14]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[14]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(env[15]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[15]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \morlet_to_phase_env.env[15]_i_2 
       (.I0(delay[3]),
        .I1(delay[4]),
        .I2(delay[2]),
        .I3(delay[0]),
        .I4(delay[1]),
        .I5(active),
        .O(\morlet_to_phase_env.env[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \morlet_to_phase_env.env[15]_i_3 
       (.I0(delay[2]),
        .I1(delay[1]),
        .I2(delay[0]),
        .I3(delay[4]),
        .I4(delay[3]),
        .I5(active),
        .O(\morlet_to_phase_env.env[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[1]_i_1 
       (.I0(env[1]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[1]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[2]_i_1 
       (.I0(env[2]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[2]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[3]_i_1 
       (.I0(env[3]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[3]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[4]_i_1 
       (.I0(env[4]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[4]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[5]_i_1 
       (.I0(env[5]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[5]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[6]_i_1 
       (.I0(env[6]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[6]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[7]_i_1 
       (.I0(env[7]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[7]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[8]_i_1 
       (.I0(env[8]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[8]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[9]_i_1 
       (.I0(env[9]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[9]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[0]_i_1_n_0 ),
        .Q(env[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[10]_i_1_n_0 ),
        .Q(env[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[11]_i_1_n_0 ),
        .Q(env[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[12]_i_1_n_0 ),
        .Q(env[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[13]_i_1_n_0 ),
        .Q(env[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .Q(env[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .Q(env[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[1]_i_1_n_0 ),
        .Q(env[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[2]_i_1_n_0 ),
        .Q(env[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[3]_i_1_n_0 ),
        .Q(env[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[4]_i_1_n_0 ),
        .Q(env[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[5]_i_1_n_0 ),
        .Q(env[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[6]_i_1_n_0 ),
        .Q(env[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[7]_i_1_n_0 ),
        .Q(env[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[8]_i_1_n_0 ),
        .Q(env[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[9]_i_1_n_0 ),
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[0]_i_1 
       (.I0(phase[0]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[0]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[10]_i_1 
       (.I0(phase[10]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[10]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[11]_i_1 
       (.I0(phase[11]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[11]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[12]_i_1 
       (.I0(phase[12]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[12]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[13]_i_1 
       (.I0(phase[13]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[13]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[14]_i_1 
       (.I0(phase[14]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[14]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[15]_i_1 
       (.I0(phase[15]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[15]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[16]_i_1 
       (.I0(phase[16]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[16]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[17]_i_1 
       (.I0(phase[17]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[17]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[18]_i_1 
       (.I0(phase[18]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[18]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[19]_i_1 
       (.I0(phase[19]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[19]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[1]_i_1 
       (.I0(phase[1]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[1]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[2]_i_1 
       (.I0(phase[2]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[2]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[3]_i_1 
       (.I0(phase[3]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[3]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[4]_i_1 
       (.I0(phase[4]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[4]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[5]_i_1 
       (.I0(phase[5]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[5]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[6]_i_1 
       (.I0(phase[6]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[6]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[7]_i_1 
       (.I0(phase[7]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[7]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[8]_i_1 
       (.I0(phase[8]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[8]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[9]_i_1 
       (.I0(phase[9]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[9]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[0]_i_1_n_0 ),
        .Q(phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[10]_i_1_n_0 ),
        .Q(phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[11]_i_1_n_0 ),
        .Q(phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[12]_i_1_n_0 ),
        .Q(phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[13]_i_1_n_0 ),
        .Q(phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[14]_i_1_n_0 ),
        .Q(phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[15]_i_1_n_0 ),
        .Q(phase[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[16]_i_1_n_0 ),
        .Q(phase[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[17]_i_1_n_0 ),
        .Q(phase[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[18]_i_1_n_0 ),
        .Q(phase[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[19]_i_1_n_0 ),
        .Q(phase[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[1]_i_1_n_0 ),
        .Q(phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[2]_i_1_n_0 ),
        .Q(phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[3]_i_1_n_0 ),
        .Q(phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[4]_i_1_n_0 ),
        .Q(phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[5]_i_1_n_0 ),
        .Q(phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[6]_i_1_n_0 ),
        .Q(phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[7]_i_1_n_0 ),
        .Q(phase[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[8]_i_1_n_0 ),
        .Q(phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[9]_i_1_n_0 ),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFEBA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(active),
        .I2(delay[2]),
        .I3(valid),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7333333333333330)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(delay[2]),
        .I1(active),
        .I2(delay[1]),
        .I3(delay[0]),
        .I4(delay[4]),
        .I5(delay[3]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata(lphase),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) (* keep_hierarchy = "soft" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2
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

  (* MARK_DEBUG *) wire active;
  wire [15:0]amp_4;
  wire clk;
  (* MARK_DEBUG *) wire [4:0]delay;
  wire [4:0]delay0_in;
  (* MARK_DEBUG *) wire [15:0]env;
  (* MARK_DEBUG *) wire [23:0]im;
  (* MARK_DEBUG *) wire [31:0]im2;
  (* MARK_DEBUG *) wire [15:0]lenv;
  (* MARK_DEBUG *) wire [23:0]lphase;
  wire \morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ;
  wire \morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[10]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[11]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[12]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[13]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[14]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.env[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.env[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[3]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[5]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[6]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[8]_i_1_n_0 ;
  wire \morlet_to_phase_env.env[9]_i_1_n_0 ;
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
  wire \morlet_to_phase_env.phase[0]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[10]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[11]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[12]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[13]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[14]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[16]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[17]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[18]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[19]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[1]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[2]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[3]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[5]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[6]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[8]_i_1_n_0 ;
  wire \morlet_to_phase_env.phase[9]_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  (* MARK_DEBUG *) wire [31:0]p2;
  (* MARK_DEBUG *) wire [19:0]phase;
  (* MARK_DEBUG *) wire [23:0]re;
  (* MARK_DEBUG *) wire [31:0]re2;
  (* MARK_DEBUG *) wire valid;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_ila_1 ila_1_i
       (.clk(clk),
        .probe0(active),
        .probe1(delay),
        .probe10(phase),
        .probe11(valid),
        .probe2(re),
        .probe3(im),
        .probe4(re2),
        .probe5(im2),
        .probe6(p2),
        .probe7(lenv),
        .probe8(lphase),
        .probe9(env));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[0]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[10]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[11]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[12]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[13]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[14]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[15]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(\morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[1]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[2]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[3]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[4]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[5]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[6]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[7]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[8]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_3_reg[9]_srl3 " *) 
  SRL16E \morlet_to_phase_env.amp_3_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ));
  FDRE \morlet_to_phase_env.amp_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[0]_srl3_n_0 ),
        .Q(amp_4[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[10]_srl3_n_0 ),
        .Q(amp_4[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[11]_srl3_n_0 ),
        .Q(amp_4[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[12]_srl3_n_0 ),
        .Q(amp_4[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[13]_srl3_n_0 ),
        .Q(amp_4[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[14]_srl3_n_0 ),
        .Q(amp_4[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[15]_srl3_n_0 ),
        .Q(amp_4[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[1]_srl3_n_0 ),
        .Q(amp_4[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[2]_srl3_n_0 ),
        .Q(amp_4[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[3]_srl3_n_0 ),
        .Q(amp_4[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[4]_srl3_n_0 ),
        .Q(amp_4[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[5]_srl3_n_0 ),
        .Q(amp_4[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[6]_srl3_n_0 ),
        .Q(amp_4[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[7]_srl3_n_0 ),
        .Q(amp_4[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[8]_srl3_n_0 ),
        .Q(amp_4[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_3_reg[9]_srl3_n_0 ),
        .Q(amp_4[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F0F0F0F0F0F0F0F)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(delay[1]),
        .I1(delay[2]),
        .I2(delay[0]),
        .I3(delay[4]),
        .I4(delay[3]),
        .I5(active),
        .O(delay0_in[0]));
  LUT6 #(
    .INIT(64'h55D5AAAAAAAA5555)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[1]));
  LUT6 #(
    .INIT(64'h552AFF00FF00AA55)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[2]));
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[2]),
        .I3(delay[1]),
        .I4(active),
        .O(delay0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(delay[2]),
        .I1(active),
        .I2(delay[3]),
        .I3(delay[4]),
        .I4(delay[0]),
        .I5(delay[1]),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0E1)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(delay[0]),
        .I1(delay[3]),
        .I2(delay[4]),
        .I3(delay[2]),
        .I4(delay[1]),
        .I5(active),
        .O(delay0_in[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[0]),
        .Q(delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[1]),
        .Q(delay[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[2]),
        .Q(delay[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[3]),
        .Q(delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(delay0_in[4]),
        .Q(delay[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[0]_i_1 
       (.I0(env[0]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[0]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[10]_i_1 
       (.I0(env[10]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[10]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[11]_i_1 
       (.I0(env[11]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[11]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[12]_i_1 
       (.I0(env[12]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[12]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[13]_i_1 
       (.I0(env[13]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[13]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[14]_i_1 
       (.I0(env[14]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[14]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(env[15]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[15]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000000)) 
    \morlet_to_phase_env.env[15]_i_2 
       (.I0(delay[3]),
        .I1(delay[4]),
        .I2(delay[2]),
        .I3(delay[0]),
        .I4(delay[1]),
        .I5(active),
        .O(\morlet_to_phase_env.env[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \morlet_to_phase_env.env[15]_i_3 
       (.I0(delay[2]),
        .I1(delay[1]),
        .I2(delay[0]),
        .I3(delay[4]),
        .I4(delay[3]),
        .I5(active),
        .O(\morlet_to_phase_env.env[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[1]_i_1 
       (.I0(env[1]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[1]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[2]_i_1 
       (.I0(env[2]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[2]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[3]_i_1 
       (.I0(env[3]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[3]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[4]_i_1 
       (.I0(env[4]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[4]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[5]_i_1 
       (.I0(env[5]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[5]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[6]_i_1 
       (.I0(env[6]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[6]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[7]_i_1 
       (.I0(env[7]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[7]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[8]_i_1 
       (.I0(env[8]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[8]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.env[9]_i_1 
       (.I0(env[9]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(amp_4[9]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.env[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[0]_i_1_n_0 ),
        .Q(env[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[10]_i_1_n_0 ),
        .Q(env[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[11]_i_1_n_0 ),
        .Q(env[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[12]_i_1_n_0 ),
        .Q(env[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[13]_i_1_n_0 ),
        .Q(env[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .Q(env[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .Q(env[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[1]_i_1_n_0 ),
        .Q(env[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[2]_i_1_n_0 ),
        .Q(env[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[3]_i_1_n_0 ),
        .Q(env[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[4]_i_1_n_0 ),
        .Q(env[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[5]_i_1_n_0 ),
        .Q(env[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[6]_i_1_n_0 ),
        .Q(env[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[7]_i_1_n_0 ),
        .Q(env[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[8]_i_1_n_0 ),
        .Q(env[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.env[9]_i_1_n_0 ),
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_15 ),
        .Q(p2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_13 ),
        .Q(p2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_12 ),
        .Q(p2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_11 ),
        .Q(p2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_10 ),
        .Q(p2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_9 ),
        .Q(p2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_15 ),
        .Q(p2[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ),
        .Q(p2[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ),
        .Q(p2[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ),
        .Q(p2[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_14 ),
        .Q(p2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ),
        .Q(p2[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ),
        .Q(p2[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ),
        .Q(p2[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_15 ),
        .Q(p2[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ),
        .Q(p2[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ),
        .Q(p2[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ),
        .Q(p2[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ),
        .Q(p2[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ),
        .Q(p2[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_13 ),
        .Q(p2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ),
        .Q(p2[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_12 ),
        .Q(p2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_11 ),
        .Q(p2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_10 ),
        .Q(p2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[7]_i_1_n_9 ),
        .Q(p2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
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
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_15 ),
        .Q(p2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_reg[15]_i_1_n_14 ),
        .Q(p2[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[0]_i_1 
       (.I0(phase[0]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[0]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[10]_i_1 
       (.I0(phase[10]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[10]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[11]_i_1 
       (.I0(phase[11]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[11]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[12]_i_1 
       (.I0(phase[12]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[12]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[13]_i_1 
       (.I0(phase[13]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[13]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[14]_i_1 
       (.I0(phase[14]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[14]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[15]_i_1 
       (.I0(phase[15]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[15]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[16]_i_1 
       (.I0(phase[16]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[16]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[17]_i_1 
       (.I0(phase[17]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[17]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[18]_i_1 
       (.I0(phase[18]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[18]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[19]_i_1 
       (.I0(phase[19]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[19]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[1]_i_1 
       (.I0(phase[1]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[1]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[2]_i_1 
       (.I0(phase[2]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[2]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[3]_i_1 
       (.I0(phase[3]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[3]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[4]_i_1 
       (.I0(phase[4]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[4]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[5]_i_1 
       (.I0(phase[5]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[5]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[6]_i_1 
       (.I0(phase[6]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[6]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[7]_i_1 
       (.I0(phase[7]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[7]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[8]_i_1 
       (.I0(phase[8]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[8]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \morlet_to_phase_env.phase[9]_i_1 
       (.I0(phase[9]),
        .I1(\morlet_to_phase_env.env[15]_i_2_n_0 ),
        .I2(lphase[9]),
        .I3(\morlet_to_phase_env.env[15]_i_3_n_0 ),
        .O(\morlet_to_phase_env.phase[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[0]_i_1_n_0 ),
        .Q(phase[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[10]_i_1_n_0 ),
        .Q(phase[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[11]_i_1_n_0 ),
        .Q(phase[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[12]_i_1_n_0 ),
        .Q(phase[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[13]_i_1_n_0 ),
        .Q(phase[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[14]_i_1_n_0 ),
        .Q(phase[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[15]_i_1_n_0 ),
        .Q(phase[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[16]_i_1_n_0 ),
        .Q(phase[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[17]_i_1_n_0 ),
        .Q(phase[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[18]_i_1_n_0 ),
        .Q(phase[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[19]_i_1_n_0 ),
        .Q(phase[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[1]_i_1_n_0 ),
        .Q(phase[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[2]_i_1_n_0 ),
        .Q(phase[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[3]_i_1_n_0 ),
        .Q(phase[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[4]_i_1_n_0 ),
        .Q(phase[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[5]_i_1_n_0 ),
        .Q(phase[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[6]_i_1_n_0 ),
        .Q(phase[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[7]_i_1_n_0 ),
        .Q(phase[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[8]_i_1_n_0 ),
        .Q(phase[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.phase[9]_i_1_n_0 ),
        .Q(phase[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFEBA)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(active),
        .I2(delay[2]),
        .I3(valid),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7333333333333330)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(delay[2]),
        .I1(active),
        .I2(delay[1]),
        .I3(delay[0]),
        .I4(delay[4]),
        .I5(delay[3]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata(lphase),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_16_16" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_mult_16_16
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
