// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar  1 06:11:38 2026
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

(* CHECK_LICENSE_TYPE = "ps_freq_low_46_0_0,freq_low_46,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "freq_low_46,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_freq_low_46_0_0
   (fifo_clk,
    freq_wr,
    freq_in_N,
    freq_in_E,
    freq_in_W,
    clk,
    reset,
    ana_wr,
    env_N,
    env_E,
    env_W,
    phase_N,
    phase_E,
    phase_W,
    err_NE,
    err_EW,
    err_WN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input fifo_clk;
  input freq_wr;
  input [15:0]freq_in_N;
  input [15:0]freq_in_E;
  input [15:0]freq_in_W;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output ana_wr;
  output [15:0]env_N;
  output [15:0]env_E;
  output [15:0]env_W;
  output [19:0]phase_N;
  output [19:0]phase_E;
  output [19:0]phase_W;
  output [11:0]err_NE;
  output [11:0]err_EW;
  output [11:0]err_WN;

  wire \<const0> ;
  wire ana_wr;
  wire clk;
  wire [14:0]\^env_E ;
  wire [14:0]\^env_N ;
  wire [14:0]\^env_W ;
  wire [11:0]err_EW;
  wire [11:0]err_NE;
  wire [11:0]err_WN;
  wire fifo_clk;
  wire [15:0]freq_in_E;
  wire [15:0]freq_in_N;
  wire [15:0]freq_in_W;
  wire freq_wr;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire reset;
  wire [15:15]NLW_inst_env_E_UNCONNECTED;
  wire [15:15]NLW_inst_env_N_UNCONNECTED;
  wire [15:15]NLW_inst_env_W_UNCONNECTED;

  assign env_E[15] = \<const0> ;
  assign env_E[14:0] = \^env_E [14:0];
  assign env_N[15] = \<const0> ;
  assign env_N[14:0] = \^env_N [14:0];
  assign env_W[15] = \<const0> ;
  assign env_W[14:0] = \^env_W [14:0];
  GND GND
       (.G(\<const0> ));
  ps_freq_low_46_0_0_freq_low_46 inst
       (.ana_wr(ana_wr),
        .clk(clk),
        .env_E({NLW_inst_env_E_UNCONNECTED[15],\^env_E }),
        .env_N({NLW_inst_env_N_UNCONNECTED[15],\^env_N }),
        .env_W({NLW_inst_env_W_UNCONNECTED[15],\^env_W }),
        .err_EW(err_EW),
        .err_NE(err_NE),
        .err_WN(err_WN),
        .fifo_clk(fifo_clk),
        .freq_in_E(freq_in_E),
        .freq_in_N(freq_in_N),
        .freq_in_W(freq_in_W),
        .freq_wr(freq_wr),
        .phase_E(phase_E),
        .phase_N(phase_N),
        .phase_W(phase_W),
        .reset(reset));
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

(* CHECK_LICENSE_TYPE = "fifo_doa_low,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_doa_low" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_fifo_doa_low
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [47:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [47:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


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

(* ORIG_REF_NAME = "freq_low_46" *) 
module ps_freq_low_46_0_0_freq_low_46
   (fifo_clk,
    freq_wr,
    freq_in_N,
    freq_in_E,
    freq_in_W,
    clk,
    reset,
    ana_wr,
    env_N,
    env_E,
    env_W,
    phase_N,
    phase_E,
    phase_W,
    err_NE,
    err_EW,
    err_WN);
  input fifo_clk;
  input freq_wr;
  input [15:0]freq_in_N;
  input [15:0]freq_in_E;
  input [15:0]freq_in_W;
  input clk;
  input reset;
  output ana_wr;
  output [15:0]env_N;
  output [15:0]env_E;
  output [15:0]env_W;
  output [19:0]phase_N;
  output [19:0]phase_E;
  output [19:0]phase_W;
  output [11:0]err_NE;
  output [11:0]err_EW;
  output [11:0]err_WN;

  wire \<const0> ;
  wire [15:0]E;
  wire [15:0]N;
  wire [15:0]W;
  wire active0;
  wire ana_wr;
  wire clk;
  wire data0;
  wire [14:0]env;
  wire [14:0]\^env_E ;
  wire [14:0]\^env_N ;
  wire [14:0]\^env_W ;
  wire [14:0]env_out_E;
  wire [14:0]env_out_N;
  wire [14:0]env_out_W;
  wire [11:0]err_EW;
  wire [11:0]err_NE;
  wire [11:0]err_WN;
  wire fifo_clk;
  wire fir_freq_low_re_N_i_i_1_n_0;
  wire [36:13]fir_im_E;
  wire [36:13]fir_im_N;
  wire [36:13]fir_im_W;
  wire [36:13]fir_re_E;
  wire [36:13]fir_re_N;
  wire [36:13]fir_re_W;
  wire freq_E_i_n_1;
  wire freq_E_i_n_10;
  wire freq_E_i_n_11;
  wire freq_E_i_n_12;
  wire freq_E_i_n_13;
  wire freq_E_i_n_14;
  wire freq_E_i_n_15;
  wire freq_E_i_n_16;
  wire freq_E_i_n_17;
  wire freq_E_i_n_18;
  wire freq_E_i_n_19;
  wire freq_E_i_n_2;
  wire freq_E_i_n_20;
  wire freq_E_i_n_21;
  wire freq_E_i_n_22;
  wire freq_E_i_n_23;
  wire freq_E_i_n_24;
  wire freq_E_i_n_25;
  wire freq_E_i_n_26;
  wire freq_E_i_n_27;
  wire freq_E_i_n_28;
  wire freq_E_i_n_29;
  wire freq_E_i_n_3;
  wire freq_E_i_n_30;
  wire freq_E_i_n_31;
  wire freq_E_i_n_32;
  wire freq_E_i_n_33;
  wire freq_E_i_n_34;
  wire freq_E_i_n_35;
  wire freq_E_i_n_36;
  wire freq_E_i_n_37;
  wire freq_E_i_n_38;
  wire freq_E_i_n_39;
  wire freq_E_i_n_4;
  wire freq_E_i_n_40;
  wire freq_E_i_n_41;
  wire freq_E_i_n_42;
  wire freq_E_i_n_43;
  wire freq_E_i_n_44;
  wire freq_E_i_n_45;
  wire freq_E_i_n_46;
  wire freq_E_i_n_47;
  wire freq_E_i_n_48;
  wire freq_E_i_n_49;
  wire freq_E_i_n_5;
  wire freq_E_i_n_50;
  wire freq_E_i_n_51;
  wire freq_E_i_n_52;
  wire freq_E_i_n_53;
  wire freq_E_i_n_54;
  wire freq_E_i_n_55;
  wire freq_E_i_n_6;
  wire freq_E_i_n_7;
  wire freq_E_i_n_8;
  wire freq_E_i_n_9;
  wire freq_N_i_n_1;
  wire freq_N_i_n_2;
  wire freq_N_i_n_29;
  wire freq_N_i_n_3;
  wire freq_N_i_n_30;
  wire freq_N_i_n_31;
  wire freq_N_i_n_32;
  wire freq_N_i_n_33;
  wire freq_N_i_n_34;
  wire freq_N_i_n_35;
  wire freq_N_i_n_36;
  wire freq_N_i_n_37;
  wire freq_N_i_n_38;
  wire freq_N_i_n_39;
  wire freq_N_i_n_4;
  wire freq_N_i_n_40;
  wire freq_N_i_n_5;
  wire freq_N_i_n_6;
  wire freq_N_i_n_7;
  wire freq_N_i_n_8;
  wire freq_W_i_n_1;
  wire freq_W_i_n_10;
  wire freq_W_i_n_11;
  wire freq_W_i_n_12;
  wire freq_W_i_n_13;
  wire freq_W_i_n_14;
  wire freq_W_i_n_15;
  wire freq_W_i_n_16;
  wire freq_W_i_n_17;
  wire freq_W_i_n_18;
  wire freq_W_i_n_19;
  wire freq_W_i_n_2;
  wire freq_W_i_n_20;
  wire freq_W_i_n_21;
  wire freq_W_i_n_22;
  wire freq_W_i_n_23;
  wire freq_W_i_n_24;
  wire freq_W_i_n_25;
  wire freq_W_i_n_26;
  wire freq_W_i_n_27;
  wire freq_W_i_n_28;
  wire freq_W_i_n_29;
  wire freq_W_i_n_3;
  wire freq_W_i_n_30;
  wire freq_W_i_n_31;
  wire freq_W_i_n_32;
  wire freq_W_i_n_33;
  wire freq_W_i_n_34;
  wire freq_W_i_n_35;
  wire freq_W_i_n_36;
  wire freq_W_i_n_37;
  wire freq_W_i_n_38;
  wire freq_W_i_n_39;
  wire freq_W_i_n_4;
  wire freq_W_i_n_40;
  wire freq_W_i_n_41;
  wire freq_W_i_n_42;
  wire freq_W_i_n_43;
  wire freq_W_i_n_44;
  wire freq_W_i_n_45;
  wire freq_W_i_n_46;
  wire freq_W_i_n_47;
  wire freq_W_i_n_48;
  wire freq_W_i_n_49;
  wire freq_W_i_n_5;
  wire freq_W_i_n_50;
  wire freq_W_i_n_51;
  wire freq_W_i_n_52;
  wire freq_W_i_n_53;
  wire freq_W_i_n_54;
  wire freq_W_i_n_55;
  wire freq_W_i_n_6;
  wire freq_W_i_n_7;
  wire freq_W_i_n_8;
  wire freq_W_i_n_9;
  wire freq_fifo_empty;
  wire freq_fifo_rd;
  wire freq_fifo_valid;
  wire freq_fifo_valid0;
  wire freq_fifo_wr;
  wire [15:0]freq_in_E;
  wire [15:0]freq_in_N;
  wire [15:0]freq_in_W;
  wire [47:0]freq_in_data;
  wire \freq_low_46.curr_delay[0]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_10_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_11_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_12_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_13_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_14_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_4_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_5_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_7_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_8_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_9_n_0 ;
  wire [7:0]\freq_low_46.curr_delay_reg ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_10 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_11 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_12 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_13 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_14 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_15 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_2 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_3 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_4 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_5 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_6 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_7 ;
  wire \freq_low_46.curr_delay_reg[7]_i_3_n_9 ;
  wire \freq_low_46.freq_fifo_rd_i_1_n_0 ;
  wire \freq_low_46.freq_rd_delay[1]_i_1_n_0 ;
  wire \freq_low_46.freq_rd_delay[2]_i_1_n_0 ;
  wire \freq_low_46.freq_rd_delay[3]_i_1_n_0 ;
  wire \freq_low_46.freq_rd_delay[4]_i_1_n_0 ;
  wire \freq_low_46.freq_rd_delay[4]_i_2_n_0 ;
  wire [4:0]\freq_low_46.freq_rd_delay_reg ;
  wire \freq_low_46.morlet_active_i_1_n_0 ;
  wire \freq_low_46.morlet_active_reg_n_0 ;
  wire \freq_low_46.start_delay[0]_i_1_n_0 ;
  wire \freq_low_46.start_delay[7]_i_1_n_0 ;
  wire \freq_low_46.start_delay[7]_i_2_n_0 ;
  wire \freq_low_46.start_delay[7]_i_4_n_0 ;
  wire \freq_low_46.start_delay[7]_i_5_n_0 ;
  wire \freq_low_46.start_delay[7]_i_6_n_0 ;
  wire \freq_low_46.start_delay[7]_i_7_n_0 ;
  wire \freq_low_46.start_delay[7]_i_8_n_0 ;
  wire \freq_low_46.start_delay[7]_i_9_n_0 ;
  wire [7:0]\freq_low_46.start_delay_reg ;
  wire [47:0]freq_out_data;
  wire [0:0]freq_rd_delay0;
  wire freq_wr;
  wire [19:0]phase;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire phase_err_i_n_106;
  wire phase_err_i_n_107;
  wire phase_err_i_n_108;
  wire phase_err_i_n_109;
  wire phase_err_i_n_110;
  wire phase_err_i_n_111;
  wire phase_err_i_n_112;
  wire phase_err_i_n_113;
  wire phase_err_i_n_114;
  wire phase_err_i_n_115;
  wire phase_err_i_n_116;
  wire phase_err_i_n_117;
  wire phase_err_i_n_118;
  wire phase_err_i_n_119;
  wire phase_err_i_n_120;
  wire phase_err_i_n_121;
  wire phase_err_i_n_122;
  wire phase_err_i_n_123;
  wire phase_err_i_n_124;
  wire phase_err_i_n_125;
  wire phase_err_i_n_126;
  wire phase_err_i_n_127;
  wire phase_err_i_n_128;
  wire phase_err_i_n_129;
  wire phase_err_i_n_130;
  wire phase_err_i_n_131;
  wire phase_err_i_n_132;
  wire phase_err_i_n_133;
  wire phase_err_i_n_134;
  wire phase_err_i_n_135;
  wire phase_err_i_n_136;
  wire phase_err_i_n_137;
  wire phase_err_i_n_138;
  wire phase_err_i_n_139;
  wire phase_err_i_n_140;
  wire phase_err_i_n_141;
  wire [19:0]phase_out_E;
  wire [19:0]phase_out_N;
  wire [19:0]phase_out_W;
  wire reset;
  wire [7:1]start_delay0;
  wire valid;
  wire valid_E;
  wire valid_W;
  wire NLW_fifo_freq_i_full_UNCONNECTED;
  wire NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_freq_low_im_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_freq_low_im_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_freq_low_im_W_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_freq_low_re_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_freq_low_re_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_freq_low_re_W_i_m_axis_data_tdata_UNCONNECTED;
  wire [7:6]\NLW_freq_low_46.curr_delay_reg[7]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_freq_low_46.curr_delay_reg[7]_i_3_O_UNCONNECTED ;

  assign env_E[15] = \<const0> ;
  assign env_E[14:0] = \^env_E [14:0];
  assign env_N[15] = \<const0> ;
  assign env_N[14:0] = \^env_N [14:0];
  assign env_W[15] = \<const0> ;
  assign env_W[14:0] = \^env_W [14:0];
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "fifo_doa_low,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fifo_doa_low fifo_freq_i
       (.din(freq_in_data),
        .dout(freq_out_data),
        .empty(freq_fifo_empty),
        .full(NLW_fifo_freq_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(freq_fifo_rd),
        .rd_rst_busy(NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(freq_fifo_wr),
        .wr_rst_busy(NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_im fir_freq_low_im_E_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata({NLW_fir_freq_low_im_E_i_m_axis_data_tdata_UNCONNECTED[39:37],fir_im_E,NLW_fir_freq_low_im_E_i_m_axis_data_tdata_UNCONNECTED[12:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_im fir_freq_low_im_N_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata({NLW_fir_freq_low_im_N_i_m_axis_data_tdata_UNCONNECTED[39:37],fir_im_N,NLW_fir_freq_low_im_N_i_m_axis_data_tdata_UNCONNECTED[12:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_im_HD3 fir_freq_low_im_W_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata({NLW_fir_freq_low_im_W_i_m_axis_data_tdata_UNCONNECTED[39:37],fir_im_W,NLW_fir_freq_low_im_W_i_m_axis_data_tdata_UNCONNECTED[12:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_re fir_freq_low_re_E_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata({NLW_fir_freq_low_re_E_i_m_axis_data_tdata_UNCONNECTED[39:37],fir_re_E,NLW_fir_freq_low_re_E_i_m_axis_data_tdata_UNCONNECTED[12:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fir_doa_low_re fir_freq_low_re_N_i
       (.aclk(clk),
        .aresetn(fir_freq_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata({NLW_fir_freq_low_re_N_i_m_axis_data_tdata_UNCONNECTED[39:37],fir_re_N,NLW_fir_freq_low_re_N_i_m_axis_data_tdata_UNCONNECTED[12:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
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
        .m_axis_data_tdata({NLW_fir_freq_low_re_W_i_m_axis_data_tdata_UNCONNECTED[39:37],fir_re_W,NLW_fir_freq_low_re_W_i_m_axis_data_tdata_UNCONNECTED[12:0]}),
        .m_axis_data_tvalid(NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2 freq_E_i
       (.Q({freq_E_i_n_9,freq_E_i_n_10,freq_E_i_n_11,freq_E_i_n_12,freq_E_i_n_13,freq_E_i_n_14,freq_E_i_n_15,freq_E_i_n_16,freq_E_i_n_17,freq_E_i_n_18,freq_E_i_n_19,freq_E_i_n_20,freq_E_i_n_21,freq_E_i_n_22,freq_E_i_n_23,freq_E_i_n_24,freq_E_i_n_25,freq_E_i_n_26,freq_E_i_n_27,freq_E_i_n_28}),
        .S({freq_E_i_n_1,freq_E_i_n_2,freq_E_i_n_3,freq_E_i_n_4,freq_E_i_n_5,freq_E_i_n_6,freq_E_i_n_7,freq_E_i_n_8}),
        .clk(clk),
        .\morlet_to_phase_env.amp_1_reg[0]_0 (\freq_low_46.morlet_active_reg_n_0 ),
        .\morlet_to_phase_env.env_reg[14]_0 ({freq_E_i_n_41,freq_E_i_n_42,freq_E_i_n_43,freq_E_i_n_44,freq_E_i_n_45,freq_E_i_n_46,freq_E_i_n_47,freq_E_i_n_48,freq_E_i_n_49,freq_E_i_n_50,freq_E_i_n_51,freq_E_i_n_52,freq_E_i_n_53,freq_E_i_n_54,freq_E_i_n_55}),
        .\morlet_to_phase_env.phase_reg[15]_0 ({freq_E_i_n_29,freq_E_i_n_30,freq_E_i_n_31,freq_E_i_n_32,freq_E_i_n_33,freq_E_i_n_34,freq_E_i_n_35,freq_E_i_n_36}),
        .\morlet_to_phase_env.phase_reg[19]_0 ({freq_E_i_n_37,freq_E_i_n_38,freq_E_i_n_39,freq_E_i_n_40}),
        .\phase_err.raw_diff_EW_reg[19] ({freq_W_i_n_9,freq_W_i_n_10,freq_W_i_n_11,freq_W_i_n_12,freq_W_i_n_13,freq_W_i_n_14,freq_W_i_n_15,freq_W_i_n_16,freq_W_i_n_17,freq_W_i_n_18,freq_W_i_n_19,freq_W_i_n_20,freq_W_i_n_21,freq_W_i_n_22,freq_W_i_n_23,freq_W_i_n_24,freq_W_i_n_25,freq_W_i_n_26,freq_W_i_n_27,freq_W_i_n_28}),
        .s_axis_cartesian_tdata({fir_im_E,fir_re_E}),
        .valid_E(valid_E));
  ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1 freq_N_i
       (.Q(phase),
        .S({freq_N_i_n_1,freq_N_i_n_2,freq_N_i_n_3,freq_N_i_n_4,freq_N_i_n_5,freq_N_i_n_6,freq_N_i_n_7,freq_N_i_n_8}),
        .active0(active0),
        .clk(clk),
        .\morlet_to_phase_env.env_reg[14]_0 (env),
        .\morlet_to_phase_env.phase_reg[15]_0 ({freq_N_i_n_29,freq_N_i_n_30,freq_N_i_n_31,freq_N_i_n_32,freq_N_i_n_33,freq_N_i_n_34,freq_N_i_n_35,freq_N_i_n_36}),
        .\morlet_to_phase_env.phase_reg[19]_0 ({freq_N_i_n_37,freq_N_i_n_38,freq_N_i_n_39,freq_N_i_n_40}),
        .\morlet_to_phase_env.phase_reg[19]_1 (\freq_low_46.morlet_active_reg_n_0 ),
        .\phase_err.raw_diff_NE_reg[19] ({freq_E_i_n_9,freq_E_i_n_10,freq_E_i_n_11,freq_E_i_n_12,freq_E_i_n_13,freq_E_i_n_14,freq_E_i_n_15,freq_E_i_n_16,freq_E_i_n_17,freq_E_i_n_18,freq_E_i_n_19,freq_E_i_n_20,freq_E_i_n_21,freq_E_i_n_22,freq_E_i_n_23,freq_E_i_n_24,freq_E_i_n_25,freq_E_i_n_26,freq_E_i_n_27,freq_E_i_n_28}),
        .s_axis_cartesian_tdata({fir_im_N,fir_re_N}),
        .valid_E(valid_E),
        .valid_W(valid_W));
  ps_freq_low_46_0_0_morlet_to_phase_env freq_W_i
       (.Q({freq_W_i_n_9,freq_W_i_n_10,freq_W_i_n_11,freq_W_i_n_12,freq_W_i_n_13,freq_W_i_n_14,freq_W_i_n_15,freq_W_i_n_16,freq_W_i_n_17,freq_W_i_n_18,freq_W_i_n_19,freq_W_i_n_20,freq_W_i_n_21,freq_W_i_n_22,freq_W_i_n_23,freq_W_i_n_24,freq_W_i_n_25,freq_W_i_n_26,freq_W_i_n_27,freq_W_i_n_28}),
        .S({freq_W_i_n_1,freq_W_i_n_2,freq_W_i_n_3,freq_W_i_n_4,freq_W_i_n_5,freq_W_i_n_6,freq_W_i_n_7,freq_W_i_n_8}),
        .clk(clk),
        .\morlet_to_phase_env.env_reg[14]_0 ({freq_W_i_n_41,freq_W_i_n_42,freq_W_i_n_43,freq_W_i_n_44,freq_W_i_n_45,freq_W_i_n_46,freq_W_i_n_47,freq_W_i_n_48,freq_W_i_n_49,freq_W_i_n_50,freq_W_i_n_51,freq_W_i_n_52,freq_W_i_n_53,freq_W_i_n_54,freq_W_i_n_55}),
        .\morlet_to_phase_env.phase_reg[15]_0 ({freq_W_i_n_29,freq_W_i_n_30,freq_W_i_n_31,freq_W_i_n_32,freq_W_i_n_33,freq_W_i_n_34,freq_W_i_n_35,freq_W_i_n_36}),
        .\morlet_to_phase_env.phase_reg[19]_0 ({freq_W_i_n_37,freq_W_i_n_38,freq_W_i_n_39,freq_W_i_n_40}),
        .\morlet_to_phase_env.phase_reg[19]_1 (\freq_low_46.morlet_active_reg_n_0 ),
        .\phase_err.raw_diff_WN_reg[19] (phase),
        .s_axis_cartesian_tdata({fir_im_W,fir_re_W}),
        .valid_W(valid_W));
  FDRE \freq_low_46.E_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[16]),
        .Q(E[0]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[26]),
        .Q(E[10]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[27]),
        .Q(E[11]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[28]),
        .Q(E[12]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[29]),
        .Q(E[13]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[30]),
        .Q(E[14]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[31]),
        .Q(E[15]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[17]),
        .Q(E[1]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[18]),
        .Q(E[2]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[19]),
        .Q(E[3]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[20]),
        .Q(E[4]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[21]),
        .Q(E[5]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[22]),
        .Q(E[6]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[23]),
        .Q(E[7]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[24]),
        .Q(E[8]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[25]),
        .Q(E[9]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[0]),
        .Q(N[0]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[10]),
        .Q(N[10]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[11]),
        .Q(N[11]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[12]),
        .Q(N[12]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[13]),
        .Q(N[13]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[14]),
        .Q(N[14]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[15]),
        .Q(N[15]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[1]),
        .Q(N[1]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[2]),
        .Q(N[2]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[3]),
        .Q(N[3]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[4]),
        .Q(N[4]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[5]),
        .Q(N[5]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[6]),
        .Q(N[6]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[7]),
        .Q(N[7]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[8]),
        .Q(N[8]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[9]),
        .Q(N[9]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[32]),
        .Q(W[0]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[42]),
        .Q(W[10]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[43]),
        .Q(W[11]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[44]),
        .Q(W[12]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[45]),
        .Q(W[13]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[46]),
        .Q(W[14]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[47]),
        .Q(W[15]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[33]),
        .Q(W[1]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[34]),
        .Q(W[2]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[35]),
        .Q(W[3]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[36]),
        .Q(W[4]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[37]),
        .Q(W[5]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[38]),
        .Q(W[6]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[39]),
        .Q(W[7]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[40]),
        .Q(W[8]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_out_data[41]),
        .Q(W[9]),
        .R(1'b0));
  FDRE \freq_low_46.ana_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(valid),
        .Q(ana_wr),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \freq_low_46.curr_delay[0]_i_1 
       (.I0(\freq_low_46.curr_delay_reg [0]),
        .O(\freq_low_46.curr_delay[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \freq_low_46.curr_delay[7]_i_1 
       (.I0(\freq_low_46.start_delay_reg [0]),
        .I1(\freq_low_46.start_delay_reg [4]),
        .I2(\freq_low_46.start_delay_reg [3]),
        .I3(\freq_low_46.start_delay_reg [1]),
        .I4(\freq_low_46.curr_delay[7]_i_4_n_0 ),
        .O(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_10 
       (.I0(\freq_low_46.curr_delay_reg [3]),
        .I1(\freq_low_46.curr_delay_reg [4]),
        .O(\freq_low_46.curr_delay[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_11 
       (.I0(\freq_low_46.curr_delay_reg [2]),
        .I1(\freq_low_46.curr_delay_reg [3]),
        .O(\freq_low_46.curr_delay[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_12 
       (.I0(\freq_low_46.curr_delay_reg [1]),
        .I1(\freq_low_46.curr_delay_reg [2]),
        .O(\freq_low_46.curr_delay[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_13 
       (.I0(\freq_low_46.curr_delay_reg [1]),
        .I1(freq_fifo_valid),
        .O(\freq_low_46.curr_delay[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_low_46.curr_delay[7]_i_14 
       (.I0(\freq_low_46.curr_delay_reg [5]),
        .I1(\freq_low_46.curr_delay_reg [4]),
        .I2(\freq_low_46.curr_delay_reg [7]),
        .I3(\freq_low_46.curr_delay_reg [6]),
        .O(\freq_low_46.curr_delay[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h98)) 
    \freq_low_46.curr_delay[7]_i_2 
       (.I0(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I1(freq_fifo_valid),
        .I2(data0),
        .O(\freq_low_46.curr_delay[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_low_46.curr_delay[7]_i_4 
       (.I0(\freq_low_46.start_delay_reg [2]),
        .I1(\freq_low_46.start_delay_reg [7]),
        .I2(freq_fifo_valid),
        .I3(\freq_low_46.start_delay_reg [6]),
        .I4(\freq_low_46.start_delay_reg [5]),
        .O(\freq_low_46.curr_delay[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \freq_low_46.curr_delay[7]_i_5 
       (.I0(\freq_low_46.start_delay_reg [0]),
        .I1(\freq_low_46.start_delay_reg [2]),
        .I2(\freq_low_46.start_delay_reg [6]),
        .I3(\freq_low_46.start_delay_reg [5]),
        .I4(\freq_low_46.start_delay_reg [7]),
        .I5(\freq_low_46.start_delay[7]_i_4_n_0 ),
        .O(\freq_low_46.curr_delay[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_low_46.curr_delay[7]_i_6 
       (.I0(\freq_low_46.curr_delay_reg [2]),
        .I1(\freq_low_46.curr_delay_reg [3]),
        .I2(\freq_low_46.curr_delay_reg [0]),
        .I3(\freq_low_46.curr_delay_reg [1]),
        .I4(\freq_low_46.curr_delay[7]_i_14_n_0 ),
        .O(data0));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_7 
       (.I0(\freq_low_46.curr_delay_reg [6]),
        .I1(\freq_low_46.curr_delay_reg [7]),
        .O(\freq_low_46.curr_delay[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_8 
       (.I0(\freq_low_46.curr_delay_reg [5]),
        .I1(\freq_low_46.curr_delay_reg [6]),
        .O(\freq_low_46.curr_delay[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.curr_delay[7]_i_9 
       (.I0(\freq_low_46.curr_delay_reg [4]),
        .I1(\freq_low_46.curr_delay_reg [5]),
        .O(\freq_low_46.curr_delay[7]_i_9_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay[0]_i_1_n_0 ),
        .Q(\freq_low_46.curr_delay_reg [0]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_15 ),
        .Q(\freq_low_46.curr_delay_reg [1]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_14 ),
        .Q(\freq_low_46.curr_delay_reg [2]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_13 ),
        .Q(\freq_low_46.curr_delay_reg [3]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_12 ),
        .Q(\freq_low_46.curr_delay_reg [4]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_11 ),
        .Q(\freq_low_46.curr_delay_reg [5]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_10 ),
        .Q(\freq_low_46.curr_delay_reg [6]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.curr_delay_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.curr_delay[7]_i_2_n_0 ),
        .D(\freq_low_46.curr_delay_reg[7]_i_3_n_9 ),
        .Q(\freq_low_46.curr_delay_reg [7]),
        .R(\freq_low_46.curr_delay[7]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \freq_low_46.curr_delay_reg[7]_i_3 
       (.CI(\freq_low_46.curr_delay_reg [0]),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.curr_delay_reg[7]_i_3_CO_UNCONNECTED [7:6],\freq_low_46.curr_delay_reg[7]_i_3_n_2 ,\freq_low_46.curr_delay_reg[7]_i_3_n_3 ,\freq_low_46.curr_delay_reg[7]_i_3_n_4 ,\freq_low_46.curr_delay_reg[7]_i_3_n_5 ,\freq_low_46.curr_delay_reg[7]_i_3_n_6 ,\freq_low_46.curr_delay_reg[7]_i_3_n_7 }),
        .DI({1'b0,1'b0,\freq_low_46.curr_delay_reg [5:1],freq_fifo_valid}),
        .O({\NLW_freq_low_46.curr_delay_reg[7]_i_3_O_UNCONNECTED [7],\freq_low_46.curr_delay_reg[7]_i_3_n_9 ,\freq_low_46.curr_delay_reg[7]_i_3_n_10 ,\freq_low_46.curr_delay_reg[7]_i_3_n_11 ,\freq_low_46.curr_delay_reg[7]_i_3_n_12 ,\freq_low_46.curr_delay_reg[7]_i_3_n_13 ,\freq_low_46.curr_delay_reg[7]_i_3_n_14 ,\freq_low_46.curr_delay_reg[7]_i_3_n_15 }),
        .S({1'b0,\freq_low_46.curr_delay[7]_i_7_n_0 ,\freq_low_46.curr_delay[7]_i_8_n_0 ,\freq_low_46.curr_delay[7]_i_9_n_0 ,\freq_low_46.curr_delay[7]_i_10_n_0 ,\freq_low_46.curr_delay[7]_i_11_n_0 ,\freq_low_46.curr_delay[7]_i_12_n_0 ,\freq_low_46.curr_delay[7]_i_13_n_0 }));
  FDRE \freq_low_46.env_E_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[0]),
        .Q(\^env_E [0]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[10]),
        .Q(\^env_E [10]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[11]),
        .Q(\^env_E [11]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[12] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[12]),
        .Q(\^env_E [12]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[13] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[13]),
        .Q(\^env_E [13]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[14] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[14]),
        .Q(\^env_E [14]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[1]),
        .Q(\^env_E [1]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[2]),
        .Q(\^env_E [2]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[3]),
        .Q(\^env_E [3]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[4]),
        .Q(\^env_E [4]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[5]),
        .Q(\^env_E [5]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[6]),
        .Q(\^env_E [6]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[7]),
        .Q(\^env_E [7]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[8]),
        .Q(\^env_E [8]),
        .R(1'b0));
  FDRE \freq_low_46.env_E_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(env_out_E[9]),
        .Q(\^env_E [9]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[0]),
        .Q(\^env_N [0]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[10]),
        .Q(\^env_N [10]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[11]),
        .Q(\^env_N [11]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[12] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[12]),
        .Q(\^env_N [12]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[13] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[13]),
        .Q(\^env_N [13]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[14] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[14]),
        .Q(\^env_N [14]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[1]),
        .Q(\^env_N [1]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[2]),
        .Q(\^env_N [2]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[3]),
        .Q(\^env_N [3]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[4]),
        .Q(\^env_N [4]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[5]),
        .Q(\^env_N [5]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[6]),
        .Q(\^env_N [6]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[7]),
        .Q(\^env_N [7]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[8]),
        .Q(\^env_N [8]),
        .R(1'b0));
  FDRE \freq_low_46.env_N_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(env_out_N[9]),
        .Q(\^env_N [9]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[0]),
        .Q(\^env_W [0]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[10]),
        .Q(\^env_W [10]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[11]),
        .Q(\^env_W [11]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[12] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[12]),
        .Q(\^env_W [12]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[13] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[13]),
        .Q(\^env_W [13]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[14] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[14]),
        .Q(\^env_W [14]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[1]),
        .Q(\^env_W [1]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[2]),
        .Q(\^env_W [2]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[3]),
        .Q(\^env_W [3]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[4]),
        .Q(\^env_W [4]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[5]),
        .Q(\^env_W [5]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[6]),
        .Q(\^env_W [6]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[7]),
        .Q(\^env_W [7]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[8]),
        .Q(\^env_W [8]),
        .R(1'b0));
  FDRE \freq_low_46.env_W_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(env_out_W[9]),
        .Q(\^env_W [9]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_129),
        .Q(err_EW[0]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_119),
        .Q(err_EW[10]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_118),
        .Q(err_EW[11]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_128),
        .Q(err_EW[1]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_127),
        .Q(err_EW[2]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_126),
        .Q(err_EW[3]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_125),
        .Q(err_EW[4]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_124),
        .Q(err_EW[5]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_123),
        .Q(err_EW[6]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_122),
        .Q(err_EW[7]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_121),
        .Q(err_EW[8]),
        .R(1'b0));
  FDRE \freq_low_46.err_EW_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_120),
        .Q(err_EW[9]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_117),
        .Q(err_NE[0]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_107),
        .Q(err_NE[10]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_106),
        .Q(err_NE[11]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_116),
        .Q(err_NE[1]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_115),
        .Q(err_NE[2]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_114),
        .Q(err_NE[3]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_113),
        .Q(err_NE[4]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_112),
        .Q(err_NE[5]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_111),
        .Q(err_NE[6]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_110),
        .Q(err_NE[7]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_109),
        .Q(err_NE[8]),
        .R(1'b0));
  FDRE \freq_low_46.err_NE_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_108),
        .Q(err_NE[9]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_141),
        .Q(err_WN[0]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_131),
        .Q(err_WN[10]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_130),
        .Q(err_WN[11]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_140),
        .Q(err_WN[1]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_139),
        .Q(err_WN[2]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_138),
        .Q(err_WN[3]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_137),
        .Q(err_WN[4]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_136),
        .Q(err_WN[5]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_135),
        .Q(err_WN[6]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_134),
        .Q(err_WN[7]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_133),
        .Q(err_WN[8]),
        .R(1'b0));
  FDRE \freq_low_46.err_WN_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(phase_err_i_n_132),
        .Q(err_WN[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \freq_low_46.freq_fifo_rd_i_1 
       (.I0(freq_fifo_empty),
        .I1(\freq_low_46.freq_rd_delay_reg [4]),
        .I2(\freq_low_46.freq_rd_delay_reg [3]),
        .I3(\freq_low_46.freq_rd_delay_reg [1]),
        .I4(\freq_low_46.freq_rd_delay_reg [0]),
        .I5(\freq_low_46.freq_rd_delay_reg [2]),
        .O(\freq_low_46.freq_fifo_rd_i_1_n_0 ));
  FDRE \freq_low_46.freq_fifo_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.freq_fifo_rd_i_1_n_0 ),
        .Q(freq_fifo_rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \freq_low_46.freq_fifo_valid_i_1 
       (.I0(freq_fifo_rd),
        .I1(freq_fifo_empty),
        .O(freq_fifo_valid0));
  FDRE \freq_low_46.freq_fifo_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(freq_fifo_valid0),
        .Q(freq_fifo_valid),
        .R(1'b0));
  FDRE \freq_low_46.freq_fifo_wr_reg 
       (.C(fifo_clk),
        .CE(1'b1),
        .D(freq_wr),
        .Q(freq_fifo_wr),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[0] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[0]),
        .Q(freq_in_data[0]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[10] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[10]),
        .Q(freq_in_data[10]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[11] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[11]),
        .Q(freq_in_data[11]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[12] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[12]),
        .Q(freq_in_data[12]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[13] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[13]),
        .Q(freq_in_data[13]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[14] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[14]),
        .Q(freq_in_data[14]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[15] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[15]),
        .Q(freq_in_data[15]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[16] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[0]),
        .Q(freq_in_data[16]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[17] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[1]),
        .Q(freq_in_data[17]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[18] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[2]),
        .Q(freq_in_data[18]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[19] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[3]),
        .Q(freq_in_data[19]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[1] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[1]),
        .Q(freq_in_data[1]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[20] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[4]),
        .Q(freq_in_data[20]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[21] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[5]),
        .Q(freq_in_data[21]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[22] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[6]),
        .Q(freq_in_data[22]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[23] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[7]),
        .Q(freq_in_data[23]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[24] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[8]),
        .Q(freq_in_data[24]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[25] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[9]),
        .Q(freq_in_data[25]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[26] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[10]),
        .Q(freq_in_data[26]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[27] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[11]),
        .Q(freq_in_data[27]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[28] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[12]),
        .Q(freq_in_data[28]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[29] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[13]),
        .Q(freq_in_data[29]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[2] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[2]),
        .Q(freq_in_data[2]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[30] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[14]),
        .Q(freq_in_data[30]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[31] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_E[15]),
        .Q(freq_in_data[31]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[32] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[0]),
        .Q(freq_in_data[32]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[33] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[1]),
        .Q(freq_in_data[33]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[34] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[2]),
        .Q(freq_in_data[34]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[35] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[3]),
        .Q(freq_in_data[35]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[36] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[4]),
        .Q(freq_in_data[36]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[37] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[5]),
        .Q(freq_in_data[37]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[38] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[6]),
        .Q(freq_in_data[38]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[39] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[7]),
        .Q(freq_in_data[39]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[3] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[3]),
        .Q(freq_in_data[3]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[40] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[8]),
        .Q(freq_in_data[40]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[41] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[9]),
        .Q(freq_in_data[41]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[42] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[10]),
        .Q(freq_in_data[42]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[43] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[11]),
        .Q(freq_in_data[43]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[44] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[12]),
        .Q(freq_in_data[44]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[45] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[13]),
        .Q(freq_in_data[45]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[46] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[14]),
        .Q(freq_in_data[46]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[47] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_W[15]),
        .Q(freq_in_data[47]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[4] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[4]),
        .Q(freq_in_data[4]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[5] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[5]),
        .Q(freq_in_data[5]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[6] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[6]),
        .Q(freq_in_data[6]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[7] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[7]),
        .Q(freq_in_data[7]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[8] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[8]),
        .Q(freq_in_data[8]),
        .R(1'b0));
  FDRE \freq_low_46.freq_in_data_reg[9] 
       (.C(fifo_clk),
        .CE(freq_wr),
        .D(freq_in_N[9]),
        .Q(freq_in_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \freq_low_46.freq_rd_delay[0]_i_1 
       (.I0(\freq_low_46.freq_rd_delay_reg [0]),
        .O(freq_rd_delay0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.freq_rd_delay[1]_i_1 
       (.I0(\freq_low_46.freq_rd_delay_reg [0]),
        .I1(\freq_low_46.freq_rd_delay_reg [1]),
        .O(\freq_low_46.freq_rd_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \freq_low_46.freq_rd_delay[2]_i_1 
       (.I0(\freq_low_46.freq_rd_delay_reg [1]),
        .I1(\freq_low_46.freq_rd_delay_reg [0]),
        .I2(\freq_low_46.freq_rd_delay_reg [2]),
        .O(\freq_low_46.freq_rd_delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \freq_low_46.freq_rd_delay[3]_i_1 
       (.I0(\freq_low_46.freq_rd_delay_reg [2]),
        .I1(\freq_low_46.freq_rd_delay_reg [0]),
        .I2(\freq_low_46.freq_rd_delay_reg [1]),
        .I3(\freq_low_46.freq_rd_delay_reg [3]),
        .O(\freq_low_46.freq_rd_delay[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_low_46.freq_rd_delay[4]_i_1 
       (.I0(\freq_low_46.freq_rd_delay_reg [3]),
        .I1(\freq_low_46.freq_rd_delay_reg [1]),
        .I2(\freq_low_46.freq_rd_delay_reg [0]),
        .I3(\freq_low_46.freq_rd_delay_reg [2]),
        .I4(\freq_low_46.freq_rd_delay_reg [4]),
        .O(\freq_low_46.freq_rd_delay[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \freq_low_46.freq_rd_delay[4]_i_2 
       (.I0(\freq_low_46.freq_rd_delay_reg [3]),
        .I1(\freq_low_46.freq_rd_delay_reg [1]),
        .I2(\freq_low_46.freq_rd_delay_reg [0]),
        .I3(\freq_low_46.freq_rd_delay_reg [2]),
        .I4(\freq_low_46.freq_rd_delay_reg [4]),
        .O(\freq_low_46.freq_rd_delay[4]_i_2_n_0 ));
  FDSE \freq_low_46.freq_rd_delay_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.freq_rd_delay[4]_i_1_n_0 ),
        .D(freq_rd_delay0),
        .Q(\freq_low_46.freq_rd_delay_reg [0]),
        .S(freq_fifo_empty));
  FDSE \freq_low_46.freq_rd_delay_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.freq_rd_delay[4]_i_1_n_0 ),
        .D(\freq_low_46.freq_rd_delay[1]_i_1_n_0 ),
        .Q(\freq_low_46.freq_rd_delay_reg [1]),
        .S(freq_fifo_empty));
  FDSE \freq_low_46.freq_rd_delay_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.freq_rd_delay[4]_i_1_n_0 ),
        .D(\freq_low_46.freq_rd_delay[2]_i_1_n_0 ),
        .Q(\freq_low_46.freq_rd_delay_reg [2]),
        .S(freq_fifo_empty));
  FDSE \freq_low_46.freq_rd_delay_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.freq_rd_delay[4]_i_1_n_0 ),
        .D(\freq_low_46.freq_rd_delay[3]_i_1_n_0 ),
        .Q(\freq_low_46.freq_rd_delay_reg [3]),
        .S(freq_fifo_empty));
  FDSE \freq_low_46.freq_rd_delay_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.freq_rd_delay[4]_i_1_n_0 ),
        .D(\freq_low_46.freq_rd_delay[4]_i_2_n_0 ),
        .Q(\freq_low_46.freq_rd_delay_reg [4]),
        .S(freq_fifo_empty));
  LUT3 #(
    .INIT(8'h54)) 
    \freq_low_46.morlet_active_i_1 
       (.I0(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I1(freq_fifo_valid),
        .I2(data0),
        .O(\freq_low_46.morlet_active_i_1_n_0 ));
  FDRE \freq_low_46.morlet_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.morlet_active_i_1_n_0 ),
        .Q(\freq_low_46.morlet_active_reg_n_0 ),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[0]),
        .Q(phase_E[0]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[10]),
        .Q(phase_E[10]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[11]),
        .Q(phase_E[11]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[12] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[12]),
        .Q(phase_E[12]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[13] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[13]),
        .Q(phase_E[13]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[14] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[14]),
        .Q(phase_E[14]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[15] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[15]),
        .Q(phase_E[15]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[16] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[16]),
        .Q(phase_E[16]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[17] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[17]),
        .Q(phase_E[17]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[18] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[18]),
        .Q(phase_E[18]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[19] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[19]),
        .Q(phase_E[19]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[1]),
        .Q(phase_E[1]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[2]),
        .Q(phase_E[2]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[3]),
        .Q(phase_E[3]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[4]),
        .Q(phase_E[4]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[5]),
        .Q(phase_E[5]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[6]),
        .Q(phase_E[6]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[7]),
        .Q(phase_E[7]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[8]),
        .Q(phase_E[8]),
        .R(1'b0));
  FDRE \freq_low_46.phase_E_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_E[9]),
        .Q(phase_E[9]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[0]),
        .Q(phase_N[0]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[10]),
        .Q(phase_N[10]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[11]),
        .Q(phase_N[11]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[12] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[12]),
        .Q(phase_N[12]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[13] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[13]),
        .Q(phase_N[13]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[14] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[14]),
        .Q(phase_N[14]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[15] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[15]),
        .Q(phase_N[15]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[16] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[16]),
        .Q(phase_N[16]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[17] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[17]),
        .Q(phase_N[17]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[18] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[18]),
        .Q(phase_N[18]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[19] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[19]),
        .Q(phase_N[19]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[1]),
        .Q(phase_N[1]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[2]),
        .Q(phase_N[2]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[3]),
        .Q(phase_N[3]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[4]),
        .Q(phase_N[4]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[5]),
        .Q(phase_N[5]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[6]),
        .Q(phase_N[6]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[7]),
        .Q(phase_N[7]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[8]),
        .Q(phase_N[8]),
        .R(1'b0));
  FDRE \freq_low_46.phase_N_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_N[9]),
        .Q(phase_N[9]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[0] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[0]),
        .Q(phase_W[0]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[10] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[10]),
        .Q(phase_W[10]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[11] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[11]),
        .Q(phase_W[11]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[12] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[12]),
        .Q(phase_W[12]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[13] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[13]),
        .Q(phase_W[13]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[14] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[14]),
        .Q(phase_W[14]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[15] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[15]),
        .Q(phase_W[15]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[16] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[16]),
        .Q(phase_W[16]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[17] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[17]),
        .Q(phase_W[17]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[18] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[18]),
        .Q(phase_W[18]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[19] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[19]),
        .Q(phase_W[19]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[1] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[1]),
        .Q(phase_W[1]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[2] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[2]),
        .Q(phase_W[2]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[3] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[3]),
        .Q(phase_W[3]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[4] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[4]),
        .Q(phase_W[4]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[5] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[5]),
        .Q(phase_W[5]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[6] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[6]),
        .Q(phase_W[6]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[7] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[7]),
        .Q(phase_W[7]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[8] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[8]),
        .Q(phase_W[8]),
        .R(1'b0));
  FDRE \freq_low_46.phase_W_reg[9] 
       (.C(clk),
        .CE(valid),
        .D(phase_out_W[9]),
        .Q(phase_W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00100010FFFFAAAA)) 
    \freq_low_46.start_delay[0]_i_1 
       (.I0(\freq_low_46.start_delay[7]_i_4_n_0 ),
        .I1(\freq_low_46.start_delay[7]_i_7_n_0 ),
        .I2(\freq_low_46.start_delay_reg [2]),
        .I3(\freq_low_46.start_delay[7]_i_6_n_0 ),
        .I4(\freq_low_46.curr_delay[7]_i_4_n_0 ),
        .I5(\freq_low_46.start_delay_reg [0]),
        .O(\freq_low_46.start_delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \freq_low_46.start_delay[1]_i_1 
       (.I0(\freq_low_46.start_delay_reg [0]),
        .I1(\freq_low_46.start_delay_reg [1]),
        .O(start_delay0[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \freq_low_46.start_delay[2]_i_1 
       (.I0(\freq_low_46.start_delay_reg [1]),
        .I1(\freq_low_46.start_delay_reg [0]),
        .I2(\freq_low_46.start_delay_reg [2]),
        .O(start_delay0[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \freq_low_46.start_delay[3]_i_1 
       (.I0(\freq_low_46.start_delay_reg [0]),
        .I1(\freq_low_46.start_delay_reg [2]),
        .I2(\freq_low_46.start_delay_reg [1]),
        .I3(\freq_low_46.start_delay_reg [3]),
        .O(start_delay0[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \freq_low_46.start_delay[4]_i_1 
       (.I0(\freq_low_46.start_delay_reg [3]),
        .I1(\freq_low_46.start_delay_reg [1]),
        .I2(\freq_low_46.start_delay_reg [2]),
        .I3(\freq_low_46.start_delay_reg [0]),
        .I4(\freq_low_46.start_delay_reg [4]),
        .O(start_delay0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \freq_low_46.start_delay[5]_i_1 
       (.I0(\freq_low_46.start_delay_reg [4]),
        .I1(\freq_low_46.start_delay_reg [0]),
        .I2(\freq_low_46.start_delay_reg [2]),
        .I3(\freq_low_46.start_delay_reg [1]),
        .I4(\freq_low_46.start_delay_reg [3]),
        .I5(\freq_low_46.start_delay_reg [5]),
        .O(start_delay0[5]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \freq_low_46.start_delay[6]_i_1 
       (.I0(\freq_low_46.start_delay[7]_i_8_n_0 ),
        .I1(\freq_low_46.start_delay_reg [4]),
        .I2(\freq_low_46.start_delay_reg [5]),
        .I3(\freq_low_46.start_delay_reg [6]),
        .O(start_delay0[6]));
  LUT6 #(
    .INIT(64'h000000000000EFEE)) 
    \freq_low_46.start_delay[7]_i_1 
       (.I0(\freq_low_46.start_delay[7]_i_4_n_0 ),
        .I1(\freq_low_46.start_delay[7]_i_5_n_0 ),
        .I2(\freq_low_46.start_delay_reg [0]),
        .I3(\freq_low_46.curr_delay[7]_i_4_n_0 ),
        .I4(freq_fifo_valid),
        .I5(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .O(\freq_low_46.start_delay[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEE2EE)) 
    \freq_low_46.start_delay[7]_i_2 
       (.I0(\freq_low_46.curr_delay[7]_i_4_n_0 ),
        .I1(\freq_low_46.start_delay_reg [0]),
        .I2(\freq_low_46.start_delay[7]_i_6_n_0 ),
        .I3(\freq_low_46.start_delay_reg [2]),
        .I4(\freq_low_46.start_delay[7]_i_7_n_0 ),
        .I5(\freq_low_46.start_delay[7]_i_4_n_0 ),
        .O(\freq_low_46.start_delay[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \freq_low_46.start_delay[7]_i_3 
       (.I0(\freq_low_46.start_delay[7]_i_8_n_0 ),
        .I1(\freq_low_46.start_delay_reg [4]),
        .I2(\freq_low_46.start_delay_reg [6]),
        .I3(\freq_low_46.start_delay_reg [5]),
        .I4(\freq_low_46.start_delay_reg [7]),
        .O(start_delay0[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    \freq_low_46.start_delay[7]_i_4 
       (.I0(\freq_low_46.start_delay_reg [4]),
        .I1(\freq_low_46.start_delay_reg [3]),
        .I2(\freq_low_46.start_delay_reg [1]),
        .O(\freq_low_46.start_delay[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000001FF0000)) 
    \freq_low_46.start_delay[7]_i_5 
       (.I0(freq_fifo_valid),
        .I1(\freq_low_46.start_delay[7]_i_9_n_0 ),
        .I2(\freq_low_46.curr_delay[7]_i_14_n_0 ),
        .I3(\freq_low_46.start_delay_reg [2]),
        .I4(\freq_low_46.start_delay_reg [0]),
        .I5(\freq_low_46.start_delay[7]_i_7_n_0 ),
        .O(\freq_low_46.start_delay[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \freq_low_46.start_delay[7]_i_6 
       (.I0(\freq_low_46.curr_delay[7]_i_14_n_0 ),
        .I1(\freq_low_46.curr_delay_reg [1]),
        .I2(\freq_low_46.curr_delay_reg [0]),
        .I3(\freq_low_46.curr_delay_reg [3]),
        .I4(\freq_low_46.curr_delay_reg [2]),
        .I5(freq_fifo_valid),
        .O(\freq_low_46.start_delay[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \freq_low_46.start_delay[7]_i_7 
       (.I0(\freq_low_46.start_delay_reg [6]),
        .I1(\freq_low_46.start_delay_reg [5]),
        .I2(\freq_low_46.start_delay_reg [7]),
        .O(\freq_low_46.start_delay[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \freq_low_46.start_delay[7]_i_8 
       (.I0(\freq_low_46.start_delay_reg [0]),
        .I1(\freq_low_46.start_delay_reg [2]),
        .I2(\freq_low_46.start_delay_reg [1]),
        .I3(\freq_low_46.start_delay_reg [3]),
        .O(\freq_low_46.start_delay[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_low_46.start_delay[7]_i_9 
       (.I0(\freq_low_46.curr_delay_reg [1]),
        .I1(\freq_low_46.curr_delay_reg [0]),
        .I2(\freq_low_46.curr_delay_reg [3]),
        .I3(\freq_low_46.curr_delay_reg [2]),
        .O(\freq_low_46.start_delay[7]_i_9_n_0 ));
  FDRE \freq_low_46.start_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.start_delay[0]_i_1_n_0 ),
        .Q(\freq_low_46.start_delay_reg [0]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[1]),
        .Q(\freq_low_46.start_delay_reg [1]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.start_delay_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[2]),
        .Q(\freq_low_46.start_delay_reg [2]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.start_delay_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[3]),
        .Q(\freq_low_46.start_delay_reg [3]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.start_delay_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[4]),
        .Q(\freq_low_46.start_delay_reg [4]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.start_delay_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[5]),
        .Q(\freq_low_46.start_delay_reg [5]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.start_delay_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[6]),
        .Q(\freq_low_46.start_delay_reg [6]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  FDRE \freq_low_46.start_delay_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_2_n_0 ),
        .D(start_delay0[7]),
        .Q(\freq_low_46.start_delay_reg [7]),
        .R(\freq_low_46.start_delay[7]_i_1_n_0 ));
  ps_freq_low_46_0_0_phase_err phase_err_i
       (.D(env_out_N),
        .E(valid),
        .Q(phase),
        .S({freq_N_i_n_1,freq_N_i_n_2,freq_N_i_n_3,freq_N_i_n_4,freq_N_i_n_5,freq_N_i_n_6,freq_N_i_n_7,freq_N_i_n_8}),
        .active0(active0),
        .clk(clk),
        .\freq_low_46.env_E_reg[14] ({freq_E_i_n_41,freq_E_i_n_42,freq_E_i_n_43,freq_E_i_n_44,freq_E_i_n_45,freq_E_i_n_46,freq_E_i_n_47,freq_E_i_n_48,freq_E_i_n_49,freq_E_i_n_50,freq_E_i_n_51,freq_E_i_n_52,freq_E_i_n_53,freq_E_i_n_54,freq_E_i_n_55}),
        .\freq_low_46.env_N_reg[14] (env),
        .\freq_low_46.env_W_reg[14] ({freq_W_i_n_41,freq_W_i_n_42,freq_W_i_n_43,freq_W_i_n_44,freq_W_i_n_45,freq_W_i_n_46,freq_W_i_n_47,freq_W_i_n_48,freq_W_i_n_49,freq_W_i_n_50,freq_W_i_n_51,freq_W_i_n_52,freq_W_i_n_53,freq_W_i_n_54,freq_W_i_n_55}),
        .\freq_low_46.phase_E_reg[19] ({freq_E_i_n_9,freq_E_i_n_10,freq_E_i_n_11,freq_E_i_n_12,freq_E_i_n_13,freq_E_i_n_14,freq_E_i_n_15,freq_E_i_n_16,freq_E_i_n_17,freq_E_i_n_18,freq_E_i_n_19,freq_E_i_n_20,freq_E_i_n_21,freq_E_i_n_22,freq_E_i_n_23,freq_E_i_n_24,freq_E_i_n_25,freq_E_i_n_26,freq_E_i_n_27,freq_E_i_n_28}),
        .\freq_low_46.phase_W_reg[19] ({freq_W_i_n_9,freq_W_i_n_10,freq_W_i_n_11,freq_W_i_n_12,freq_W_i_n_13,freq_W_i_n_14,freq_W_i_n_15,freq_W_i_n_16,freq_W_i_n_17,freq_W_i_n_18,freq_W_i_n_19,freq_W_i_n_20,freq_W_i_n_21,freq_W_i_n_22,freq_W_i_n_23,freq_W_i_n_24,freq_W_i_n_25,freq_W_i_n_26,freq_W_i_n_27,freq_W_i_n_28}),
        .\morlet_to_phase_env.env_reg[14] (env_out_E),
        .\morlet_to_phase_env.env_reg[14]_0 (env_out_W),
        .\morlet_to_phase_env.phase_reg[19] (phase_out_N),
        .\morlet_to_phase_env.phase_reg[19]_0 (phase_out_E),
        .\morlet_to_phase_env.phase_reg[19]_1 (phase_out_W),
        .\phase_err.err_EW_reg[11]_0 ({phase_err_i_n_118,phase_err_i_n_119,phase_err_i_n_120,phase_err_i_n_121,phase_err_i_n_122,phase_err_i_n_123,phase_err_i_n_124,phase_err_i_n_125,phase_err_i_n_126,phase_err_i_n_127,phase_err_i_n_128,phase_err_i_n_129}),
        .\phase_err.err_NE_reg[11]_0 ({phase_err_i_n_106,phase_err_i_n_107,phase_err_i_n_108,phase_err_i_n_109,phase_err_i_n_110,phase_err_i_n_111,phase_err_i_n_112,phase_err_i_n_113,phase_err_i_n_114,phase_err_i_n_115,phase_err_i_n_116,phase_err_i_n_117}),
        .\phase_err.err_WN_reg[11]_0 ({phase_err_i_n_130,phase_err_i_n_131,phase_err_i_n_132,phase_err_i_n_133,phase_err_i_n_134,phase_err_i_n_135,phase_err_i_n_136,phase_err_i_n_137,phase_err_i_n_138,phase_err_i_n_139,phase_err_i_n_140,phase_err_i_n_141}),
        .\phase_err.raw_diff_EW_reg[15]_0 ({freq_E_i_n_29,freq_E_i_n_30,freq_E_i_n_31,freq_E_i_n_32,freq_E_i_n_33,freq_E_i_n_34,freq_E_i_n_35,freq_E_i_n_36}),
        .\phase_err.raw_diff_EW_reg[19]_0 ({freq_E_i_n_37,freq_E_i_n_38,freq_E_i_n_39,freq_E_i_n_40}),
        .\phase_err.raw_diff_EW_reg[7]_0 ({freq_E_i_n_1,freq_E_i_n_2,freq_E_i_n_3,freq_E_i_n_4,freq_E_i_n_5,freq_E_i_n_6,freq_E_i_n_7,freq_E_i_n_8}),
        .\phase_err.raw_diff_NE_reg[15]_0 ({freq_N_i_n_29,freq_N_i_n_30,freq_N_i_n_31,freq_N_i_n_32,freq_N_i_n_33,freq_N_i_n_34,freq_N_i_n_35,freq_N_i_n_36}),
        .\phase_err.raw_diff_NE_reg[19]_0 ({freq_N_i_n_37,freq_N_i_n_38,freq_N_i_n_39,freq_N_i_n_40}),
        .\phase_err.raw_diff_WN_reg[15]_0 ({freq_W_i_n_29,freq_W_i_n_30,freq_W_i_n_31,freq_W_i_n_32,freq_W_i_n_33,freq_W_i_n_34,freq_W_i_n_35,freq_W_i_n_36}),
        .\phase_err.raw_diff_WN_reg[19]_0 ({freq_W_i_n_37,freq_W_i_n_38,freq_W_i_n_39,freq_W_i_n_40}),
        .\phase_err.raw_diff_WN_reg[7]_0 ({freq_W_i_n_1,freq_W_i_n_2,freq_W_i_n_3,freq_W_i_n_4,freq_W_i_n_5,freq_W_i_n_6,freq_W_i_n_7,freq_W_i_n_8}));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env
   (valid_W,
    S,
    Q,
    \morlet_to_phase_env.phase_reg[15]_0 ,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    \morlet_to_phase_env.env_reg[14]_0 ,
    clk,
    s_axis_cartesian_tdata,
    \morlet_to_phase_env.phase_reg[19]_1 ,
    \phase_err.raw_diff_WN_reg[19] );
  output valid_W;
  output [7:0]S;
  output [19:0]Q;
  output [7:0]\morlet_to_phase_env.phase_reg[15]_0 ;
  output [3:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  output [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  input clk;
  input [47:0]s_axis_cartesian_tdata;
  input \morlet_to_phase_env.phase_reg[19]_1 ;
  input [19:0]\phase_err.raw_diff_WN_reg[19] ;

  wire [19:0]Q;
  wire [7:0]S;
  wire clk;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[0] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[10] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[11] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[12] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[13] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[14] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[1] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[2] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[3] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[4] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[5] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[6] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[7] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[8] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[9] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[0] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[10] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[11] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[12] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[13] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[14] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[1] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[2] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[3] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[4] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[5] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[6] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[7] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[8] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[9] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[0] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[10] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[11] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[12] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[13] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[14] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[1] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[2] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[3] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[4] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[5] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[6] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[7] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[8] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[9] ;
  wire \morlet_to_phase_env.delay[0]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2__1_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[14]_i_1__1_n_0 ;
  wire [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[0] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[10] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[11] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[12] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[13] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[14] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[15] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[1] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[2] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[3] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[4] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[5] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[6] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[7] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[8] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[9] ;
  wire \morlet_to_phase_env.p2_low[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_low_reg[16]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[0] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[10] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[11] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[12] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[13] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[14] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[15] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[16] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[1] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[2] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[3] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[4] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[5] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[6] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[7] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[8] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[9] ;
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
  wire [7:0]\morlet_to_phase_env.phase_reg[15]_0 ;
  wire [3:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  wire \morlet_to_phase_env.phase_reg[19]_1 ;
  wire \morlet_to_phase_env.valid_i_1__1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2__1_n_0 ;
  wire \morlet_to_phase_env.valid_i_3__1_n_0 ;
  wire [31:0]p2;
  wire [19:0]\phase_err.raw_diff_WN_reg[19] ;
  wire [31:0]re2;
  wire [47:0]s_axis_cartesian_tdata;
  wire valid_W;
  wire [7:7]\NLW_morlet_to_phase_env.p2_high_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  FDSE \morlet_to_phase_env.amp_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[0] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[10] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[11] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[12] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[13] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[14] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[1] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[2] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[3] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[4] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[5] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[6] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[7] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[8] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[9] ),
        .S(lenv[15]));
  FDRE \morlet_to_phase_env.amp_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[0] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[10] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[11] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[12] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[13] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[14] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[1] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[2] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[3] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[4] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[5] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[6] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[7] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[8] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[9] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[0] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[10] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[11] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[12] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[13] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[14] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[1] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[2] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[3] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[4] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[5] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[6] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[7] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[8] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[9] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1__1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1__1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1__1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_1__1 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \morlet_to_phase_env.delay[4]_i_2__1 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.delay[4]_i_2__1_n_0 ));
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.delay[0]_i_1__1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.delay[1]_i_1__1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.delay[2]_i_1__1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.delay[3]_i_1__1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.delay[4]_i_2__1_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7555555555555554)) 
    \morlet_to_phase_env.env[14]_i_1__1 
       (.I0(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I1(\morlet_to_phase_env.delay_reg [2]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.env[14]_i_1__1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[0] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[10] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[11] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[12] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[13] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[14] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[1] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[2] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[3] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[4] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[5] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[6] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[7] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[8] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[9] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(\morlet_to_phase_env.p2_high_reg_n_0_[0] ),
        .I1(\morlet_to_phase_env.p2_low_reg_n_0_[16] ),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2_high[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2_high[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2_high[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2_high[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2_high[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2_high[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2_high[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2_high[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2_high[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2_high[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2_high[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2_high[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2_high[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2_high[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2_high[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2_high[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_high_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_high_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_high_reg[15]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_high_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O({\morlet_to_phase_env.p2_high_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high[15]_i_2_n_0 ,\morlet_to_phase_env.p2_high[15]_i_3_n_0 ,\morlet_to_phase_env.p2_high[15]_i_4_n_0 ,\morlet_to_phase_env.p2_high[15]_i_5_n_0 ,\morlet_to_phase_env.p2_high[15]_i_6_n_0 ,\morlet_to_phase_env.p2_high[15]_i_7_n_0 ,\morlet_to_phase_env.p2_high[15]_i_8_n_0 ,\morlet_to_phase_env.p2_high[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_high_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_high_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O({\morlet_to_phase_env.p2_high_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high[7]_i_2_n_0 ,\morlet_to_phase_env.p2_high[7]_i_3_n_0 ,\morlet_to_phase_env.p2_high[7]_i_4_n_0 ,\morlet_to_phase_env.p2_high[7]_i_5_n_0 ,\morlet_to_phase_env.p2_high[7]_i_6_n_0 ,\morlet_to_phase_env.p2_high[7]_i_7_n_0 ,\morlet_to_phase_env.p2_high[7]_i_8_n_0 ,\morlet_to_phase_env.p2_high[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_high_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2_low[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2_low[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2_low[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2_low[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2_low[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2_low[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2_low[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2_low[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2_low[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2_low[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2_low[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2_low[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2_low[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2_low[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2_low[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2_low[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_low_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[15] ),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O({\morlet_to_phase_env.p2_low_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_low[15]_i_2_n_0 ,\morlet_to_phase_env.p2_low[15]_i_3_n_0 ,\morlet_to_phase_env.p2_low[15]_i_4_n_0 ,\morlet_to_phase_env.p2_low[15]_i_5_n_0 ,\morlet_to_phase_env.p2_low[15]_i_6_n_0 ,\morlet_to_phase_env.p2_low[15]_i_7_n_0 ,\morlet_to_phase_env.p2_low[15]_i_8_n_0 ,\morlet_to_phase_env.p2_low[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_low_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[16]_i_1_n_7 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[16] ),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[16]_i_1 
       (.CI(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_CO_UNCONNECTED [7:1],\morlet_to_phase_env.p2_low_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \morlet_to_phase_env.p2_low_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[7] ),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O({\morlet_to_phase_env.p2_low_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_low[7]_i_2_n_0 ,\morlet_to_phase_env.p2_low[7]_i_3_n_0 ,\morlet_to_phase_env.p2_low[7]_i_4_n_0 ,\morlet_to_phase_env.p2_low[7]_i_5_n_0 ,\morlet_to_phase_env.p2_low[7]_i_6_n_0 ,\morlet_to_phase_env.p2_low[7]_i_7_n_0 ,\morlet_to_phase_env.p2_low[7]_i_8_n_0 ,\morlet_to_phase_env.p2_low[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_low_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[0] ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[10] ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[11] ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[12] ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[13] ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[14] ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[15] ),
        .Q(p2[15]),
        .R(1'b0));
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
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[1] ),
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
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\morlet_to_phase_env.p2_high_reg_n_0_[0] }),
        .O({\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high_reg_n_0_[7] ,\morlet_to_phase_env.p2_high_reg_n_0_[6] ,\morlet_to_phase_env.p2_high_reg_n_0_[5] ,\morlet_to_phase_env.p2_high_reg_n_0_[4] ,\morlet_to_phase_env.p2_high_reg_n_0_[3] ,\morlet_to_phase_env.p2_high_reg_n_0_[2] ,\morlet_to_phase_env.p2_high_reg_n_0_[1] ,\morlet_to_phase_env.p2[23]_i_2_n_0 }));
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
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[2] ),
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
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high_reg_n_0_[15] ,\morlet_to_phase_env.p2_high_reg_n_0_[14] ,\morlet_to_phase_env.p2_high_reg_n_0_[13] ,\morlet_to_phase_env.p2_high_reg_n_0_[12] ,\morlet_to_phase_env.p2_high_reg_n_0_[11] ,\morlet_to_phase_env.p2_high_reg_n_0_[10] ,\morlet_to_phase_env.p2_high_reg_n_0_[9] ,\morlet_to_phase_env.p2_high_reg_n_0_[8] }));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[3] ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[4] ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[5] ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[6] ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[7] ),
        .Q(p2[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[8] ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[9] ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__1_n_0 ),
        .D(lphase[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF040404FF04)) 
    \morlet_to_phase_env.valid_i_1__1 
       (.I0(\morlet_to_phase_env.valid_i_2__1_n_0 ),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.valid_i_3__1_n_0 ),
        .I4(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I5(valid_W),
        .O(\morlet_to_phase_env.valid_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \morlet_to_phase_env.valid_i_2__1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.valid_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_3__1 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.valid_i_3__1_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1__1_n_0 ),
        .Q(valid_W),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  mult_16_16_HD5 mult_im_i
       (.A(s_axis_cartesian_tdata[47:32]),
        .B(s_axis_cartesian_tdata[47:32]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_re_i
       (.A(s_axis_cartesian_tdata[23:8]),
        .B(s_axis_cartesian_tdata[23:8]),
        .CLK(clk),
        .P(re2));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_1
       (.I0(Q[15]),
        .I1(\phase_err.raw_diff_WN_reg[19] [15]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [7]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_2
       (.I0(Q[14]),
        .I1(\phase_err.raw_diff_WN_reg[19] [14]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [6]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_3
       (.I0(Q[13]),
        .I1(\phase_err.raw_diff_WN_reg[19] [13]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_4
       (.I0(Q[12]),
        .I1(\phase_err.raw_diff_WN_reg[19] [12]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [4]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_5
       (.I0(Q[11]),
        .I1(\phase_err.raw_diff_WN_reg[19] [11]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_6
       (.I0(Q[10]),
        .I1(\phase_err.raw_diff_WN_reg[19] [10]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_7
       (.I0(Q[9]),
        .I1(\phase_err.raw_diff_WN_reg[19] [9]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__0_i_8
       (.I0(Q[8]),
        .I1(\phase_err.raw_diff_WN_reg[19] [8]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__1_i_1
       (.I0(Q[19]),
        .I1(\phase_err.raw_diff_WN_reg[19] [19]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__1_i_2
       (.I0(Q[18]),
        .I1(\phase_err.raw_diff_WN_reg[19] [18]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__1_i_3
       (.I0(Q[17]),
        .I1(\phase_err.raw_diff_WN_reg[19] [17]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry__1_i_4
       (.I0(Q[16]),
        .I1(\phase_err.raw_diff_WN_reg[19] [16]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_1
       (.I0(Q[7]),
        .I1(\phase_err.raw_diff_WN_reg[19] [7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_2
       (.I0(Q[6]),
        .I1(\phase_err.raw_diff_WN_reg[19] [6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_3
       (.I0(Q[5]),
        .I1(\phase_err.raw_diff_WN_reg[19] [5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_4
       (.I0(Q[4]),
        .I1(\phase_err.raw_diff_WN_reg[19] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_5
       (.I0(Q[3]),
        .I1(\phase_err.raw_diff_WN_reg[19] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_6
       (.I0(Q[2]),
        .I1(\phase_err.raw_diff_WN_reg[19] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_7
       (.I0(Q[1]),
        .I1(\phase_err.raw_diff_WN_reg[19] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_WN0_carry_i_8
       (.I0(Q[0]),
        .I1(\phase_err.raw_diff_WN_reg[19] [0]),
        .O(S[0]));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_sqrt_16_HD6 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_1 ));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_atan2_16_HD7 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(s_axis_cartesian_tdata),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_1 ));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1
   (active0,
    S,
    Q,
    \morlet_to_phase_env.phase_reg[15]_0 ,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    \morlet_to_phase_env.env_reg[14]_0 ,
    clk,
    s_axis_cartesian_tdata,
    \morlet_to_phase_env.phase_reg[19]_1 ,
    valid_E,
    valid_W,
    \phase_err.raw_diff_NE_reg[19] );
  output active0;
  output [7:0]S;
  output [19:0]Q;
  output [7:0]\morlet_to_phase_env.phase_reg[15]_0 ;
  output [3:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  output [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  input clk;
  input [47:0]s_axis_cartesian_tdata;
  input \morlet_to_phase_env.phase_reg[19]_1 ;
  input valid_E;
  input valid_W;
  input [19:0]\phase_err.raw_diff_NE_reg[19] ;

  wire [19:0]Q;
  wire [7:0]S;
  wire active0;
  wire [14:0]amp_1;
  wire [14:0]amp_2;
  wire [14:0]amp_3;
  wire clk;
  wire delay0;
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
  wire \morlet_to_phase_env.env[14]_i_1_n_0 ;
  wire [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[23]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_reg[31]_i_1_n_7 ;
  wire [7:0]\morlet_to_phase_env.phase_reg[15]_0 ;
  wire [3:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  wire \morlet_to_phase_env.phase_reg[19]_1 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  wire \morlet_to_phase_env.valid_i_3_n_0 ;
  wire [31:0]p2;
  wire [15:0]p20;
  wire [15:0]p2_high;
  wire [15:0]p2_high0;
  wire [16:0]p2_low;
  wire [16:0]p2_low0;
  wire [19:0]\phase_err.raw_diff_NE_reg[19] ;
  wire [31:0]re2;
  wire [47:0]s_axis_cartesian_tdata;
  wire valid_E;
  wire valid_N;
  wire valid_W;
  wire [7:7]\NLW_morlet_to_phase_env.p2_high_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  FDSE \morlet_to_phase_env.amp_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[0]),
        .Q(amp_1[0]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[10]),
        .Q(amp_1[10]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[11]),
        .Q(amp_1[11]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[12]),
        .Q(amp_1[12]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[13]),
        .Q(amp_1[13]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[14]),
        .Q(amp_1[14]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[1]),
        .Q(amp_1[1]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[2]),
        .Q(amp_1[2]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[3]),
        .Q(amp_1[3]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[4]),
        .Q(amp_1[4]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[5]),
        .Q(amp_1[5]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[6]),
        .Q(amp_1[6]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[7]),
        .Q(amp_1[7]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[8]),
        .Q(amp_1[8]),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[9]),
        .Q(amp_1[9]),
        .S(lenv[15]));
  FDRE \morlet_to_phase_env.amp_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[0]),
        .Q(amp_2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[10]),
        .Q(amp_2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[11]),
        .Q(amp_2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[12]),
        .Q(amp_2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[13]),
        .Q(amp_2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[14]),
        .Q(amp_2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[1]),
        .Q(amp_2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[2]),
        .Q(amp_2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[3]),
        .Q(amp_2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[4]),
        .Q(amp_2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[5]),
        .Q(amp_2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[6]),
        .Q(amp_2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[7]),
        .Q(amp_2[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[8]),
        .Q(amp_2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_1[9]),
        .Q(amp_2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[0]),
        .Q(amp_3[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[10]),
        .Q(amp_3[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[11]),
        .Q(amp_3[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[12]),
        .Q(amp_3[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[13]),
        .Q(amp_3[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[14]),
        .Q(amp_3[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[1]),
        .Q(amp_3[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[2]),
        .Q(amp_3[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[3]),
        .Q(amp_3[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[4]),
        .Q(amp_3[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[5]),
        .Q(amp_3[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[6]),
        .Q(amp_3[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[7]),
        .Q(amp_3[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[8]),
        .Q(amp_3[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(amp_2[9]),
        .Q(amp_3[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [0]),
        .O(delay0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.phase_reg[19]_1 ),
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
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.phase_reg[19]_1 ),
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
    .INIT(64'h7555555555555554)) 
    \morlet_to_phase_env.env[14]_i_1 
       (.I0(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I1(\morlet_to_phase_env.delay_reg [2]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.env[14]_i_1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[0]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[10]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[11]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[12]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[13]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[14]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[1]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[2]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[3]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[4]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[5]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[6]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[7]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[8]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(amp_3[9]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(p2_high[0]),
        .I1(p2_low[16]),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2_high[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2_high[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2_high[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2_high[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2_high[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2_high[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2_high[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2_high[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2_high[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2_high[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2_high[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2_high[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2_high[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2_high[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2_high[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2_high[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_high_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[0]),
        .Q(p2_high[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[10]),
        .Q(p2_high[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[11]),
        .Q(p2_high[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[12]),
        .Q(p2_high[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[13]),
        .Q(p2_high[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[14]),
        .Q(p2_high[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[15]),
        .Q(p2_high[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_high_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_high_reg[15]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_high_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O(p2_high0[15:8]),
        .S({\morlet_to_phase_env.p2_high[15]_i_2_n_0 ,\morlet_to_phase_env.p2_high[15]_i_3_n_0 ,\morlet_to_phase_env.p2_high[15]_i_4_n_0 ,\morlet_to_phase_env.p2_high[15]_i_5_n_0 ,\morlet_to_phase_env.p2_high[15]_i_6_n_0 ,\morlet_to_phase_env.p2_high[15]_i_7_n_0 ,\morlet_to_phase_env.p2_high[15]_i_8_n_0 ,\morlet_to_phase_env.p2_high[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_high_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[1]),
        .Q(p2_high[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[2]),
        .Q(p2_high[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[3]),
        .Q(p2_high[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[4]),
        .Q(p2_high[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[5]),
        .Q(p2_high[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[6]),
        .Q(p2_high[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[7]),
        .Q(p2_high[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_high_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O(p2_high0[7:0]),
        .S({\morlet_to_phase_env.p2_high[7]_i_2_n_0 ,\morlet_to_phase_env.p2_high[7]_i_3_n_0 ,\morlet_to_phase_env.p2_high[7]_i_4_n_0 ,\morlet_to_phase_env.p2_high[7]_i_5_n_0 ,\morlet_to_phase_env.p2_high[7]_i_6_n_0 ,\morlet_to_phase_env.p2_high[7]_i_7_n_0 ,\morlet_to_phase_env.p2_high[7]_i_8_n_0 ,\morlet_to_phase_env.p2_high[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_high_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[8]),
        .Q(p2_high[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_high0[9]),
        .Q(p2_high[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2_low[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2_low[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2_low[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2_low[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2_low[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2_low[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2_low[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2_low[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2_low[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2_low[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2_low[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2_low[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2_low[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2_low[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2_low[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2_low[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_low_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[0]),
        .Q(p2_low[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[10]),
        .Q(p2_low[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[11]),
        .Q(p2_low[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[12]),
        .Q(p2_low[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[13]),
        .Q(p2_low[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[14]),
        .Q(p2_low[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[15]),
        .Q(p2_low[15]),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O(p2_low0[15:8]),
        .S({\morlet_to_phase_env.p2_low[15]_i_2_n_0 ,\morlet_to_phase_env.p2_low[15]_i_3_n_0 ,\morlet_to_phase_env.p2_low[15]_i_4_n_0 ,\morlet_to_phase_env.p2_low[15]_i_5_n_0 ,\morlet_to_phase_env.p2_low[15]_i_6_n_0 ,\morlet_to_phase_env.p2_low[15]_i_7_n_0 ,\morlet_to_phase_env.p2_low[15]_i_8_n_0 ,\morlet_to_phase_env.p2_low[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_low_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[16]),
        .Q(p2_low[16]),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[16]_i_1 
       (.CI(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_CO_UNCONNECTED [7:1],p2_low0[16]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \morlet_to_phase_env.p2_low_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[1]),
        .Q(p2_low[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[2]),
        .Q(p2_low[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[3]),
        .Q(p2_low[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[4]),
        .Q(p2_low[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[5]),
        .Q(p2_low[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[6]),
        .Q(p2_low[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[7]),
        .Q(p2_low[7]),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O(p2_low0[7:0]),
        .S({\morlet_to_phase_env.p2_low[7]_i_2_n_0 ,\morlet_to_phase_env.p2_low[7]_i_3_n_0 ,\morlet_to_phase_env.p2_low[7]_i_4_n_0 ,\morlet_to_phase_env.p2_low[7]_i_5_n_0 ,\morlet_to_phase_env.p2_low[7]_i_6_n_0 ,\morlet_to_phase_env.p2_low[7]_i_7_n_0 ,\morlet_to_phase_env.p2_low[7]_i_8_n_0 ,\morlet_to_phase_env.p2_low[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_low_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[8]),
        .Q(p2_low[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low0[9]),
        .Q(p2_low[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[0]),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[10]),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[11]),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[12]),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[13]),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[14]),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[15]),
        .Q(p2[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[0]),
        .Q(p2[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[1]),
        .Q(p2[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[2]),
        .Q(p2[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[3]),
        .Q(p2[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[1]),
        .Q(p2[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[4]),
        .Q(p2[20]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[5]),
        .Q(p2[21]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[6]),
        .Q(p2[22]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[7]),
        .Q(p2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[23]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p2_high[0]}),
        .O(p20[7:0]),
        .S({p2_high[7:1],\morlet_to_phase_env.p2[23]_i_2_n_0 }));
  FDRE \morlet_to_phase_env.p2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[8]),
        .Q(p2[24]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[9]),
        .Q(p2[25]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[10]),
        .Q(p2[26]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[11]),
        .Q(p2[27]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[12]),
        .Q(p2[28]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[13]),
        .Q(p2[29]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[2]),
        .Q(p2[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[14]),
        .Q(p2[30]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(p20[15]),
        .Q(p2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_reg[31]_i_1 
       (.CI(\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_reg[31]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p20[15:8]),
        .S(p2_high[15:8]));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[3]),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[4]),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[5]),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[6]),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[7]),
        .Q(p2[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[8]),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_low[9]),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1_n_0 ),
        .D(lphase[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF040404FF04)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.valid_i_3_n_0 ),
        .I4(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I5(valid_N),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.phase_reg[19]_1 ),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_3 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.valid_i_3_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(valid_N),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_im_i
       (.A(s_axis_cartesian_tdata[47:32]),
        .B(s_axis_cartesian_tdata[47:32]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_re_i
       (.A(s_axis_cartesian_tdata[23:8]),
        .B(s_axis_cartesian_tdata[23:8]),
        .CLK(clk),
        .P(re2));
  LUT3 #(
    .INIT(8'h80)) 
    \phase_err.valid_1_i_1 
       (.I0(valid_N),
        .I1(valid_E),
        .I2(valid_W),
        .O(active0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_1
       (.I0(Q[15]),
        .I1(\phase_err.raw_diff_NE_reg[19] [15]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [7]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_2
       (.I0(Q[14]),
        .I1(\phase_err.raw_diff_NE_reg[19] [14]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [6]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_3
       (.I0(Q[13]),
        .I1(\phase_err.raw_diff_NE_reg[19] [13]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_4
       (.I0(Q[12]),
        .I1(\phase_err.raw_diff_NE_reg[19] [12]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [4]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_5
       (.I0(Q[11]),
        .I1(\phase_err.raw_diff_NE_reg[19] [11]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_6
       (.I0(Q[10]),
        .I1(\phase_err.raw_diff_NE_reg[19] [10]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_7
       (.I0(Q[9]),
        .I1(\phase_err.raw_diff_NE_reg[19] [9]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__0_i_8
       (.I0(Q[8]),
        .I1(\phase_err.raw_diff_NE_reg[19] [8]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__1_i_1
       (.I0(Q[19]),
        .I1(\phase_err.raw_diff_NE_reg[19] [19]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__1_i_2
       (.I0(Q[18]),
        .I1(\phase_err.raw_diff_NE_reg[19] [18]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__1_i_3
       (.I0(Q[17]),
        .I1(\phase_err.raw_diff_NE_reg[19] [17]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry__1_i_4
       (.I0(Q[16]),
        .I1(\phase_err.raw_diff_NE_reg[19] [16]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_1
       (.I0(Q[7]),
        .I1(\phase_err.raw_diff_NE_reg[19] [7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_2
       (.I0(Q[6]),
        .I1(\phase_err.raw_diff_NE_reg[19] [6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_3
       (.I0(Q[5]),
        .I1(\phase_err.raw_diff_NE_reg[19] [5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_4
       (.I0(Q[4]),
        .I1(\phase_err.raw_diff_NE_reg[19] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_5
       (.I0(Q[3]),
        .I1(\phase_err.raw_diff_NE_reg[19] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_6
       (.I0(Q[2]),
        .I1(\phase_err.raw_diff_NE_reg[19] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_7
       (.I0(Q[1]),
        .I1(\phase_err.raw_diff_NE_reg[19] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_NE0_carry_i_8
       (.I0(Q[0]),
        .I1(\phase_err.raw_diff_NE_reg[19] [0]),
        .O(S[0]));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_1 ));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(s_axis_cartesian_tdata),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_1 ));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2
   (valid_E,
    S,
    Q,
    \morlet_to_phase_env.phase_reg[15]_0 ,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    \morlet_to_phase_env.env_reg[14]_0 ,
    clk,
    s_axis_cartesian_tdata,
    \morlet_to_phase_env.amp_1_reg[0]_0 ,
    \phase_err.raw_diff_EW_reg[19] );
  output valid_E;
  output [7:0]S;
  output [19:0]Q;
  output [7:0]\morlet_to_phase_env.phase_reg[15]_0 ;
  output [3:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  output [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  input clk;
  input [47:0]s_axis_cartesian_tdata;
  input \morlet_to_phase_env.amp_1_reg[0]_0 ;
  input [19:0]\phase_err.raw_diff_EW_reg[19] ;

  wire [19:0]Q;
  wire [7:0]S;
  wire clk;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.amp_1_reg[0]_0 ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[0] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[10] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[11] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[12] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[13] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[14] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[1] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[2] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[3] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[4] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[5] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[6] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[7] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[8] ;
  wire \morlet_to_phase_env.amp_1_reg_n_0_[9] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[0] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[10] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[11] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[12] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[13] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[14] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[1] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[2] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[3] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[4] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[5] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[6] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[7] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[8] ;
  wire \morlet_to_phase_env.amp_2_reg_n_0_[9] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[0] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[10] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[11] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[12] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[13] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[14] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[1] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[2] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[3] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[4] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[5] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[6] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[7] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[8] ;
  wire \morlet_to_phase_env.amp_3_reg_n_0_[9] ;
  wire \morlet_to_phase_env.delay[0]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2__0_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[14]_i_1__0_n_0 ;
  wire [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  wire \morlet_to_phase_env.p2[23]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_high[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_high[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_high_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_high_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[0] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[10] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[11] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[12] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[13] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[14] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[15] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[1] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[2] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[3] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[4] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[5] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[6] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[7] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[8] ;
  wire \morlet_to_phase_env.p2_high_reg_n_0_[9] ;
  wire \morlet_to_phase_env.p2_low[15]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_low[15]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_2_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_3_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_4_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_5_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_6_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_7_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_8_n_0 ;
  wire \morlet_to_phase_env.p2_low[7]_i_9_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_low_reg[15]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_low_reg[16]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_1 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_10 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_11 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_12 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_13 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_14 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_15 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_2 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_3 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_4 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_5 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_6 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_7 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_8 ;
  wire \morlet_to_phase_env.p2_low_reg[7]_i_1_n_9 ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[0] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[10] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[11] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[12] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[13] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[14] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[15] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[16] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[1] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[2] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[3] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[4] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[5] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[6] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[7] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[8] ;
  wire \morlet_to_phase_env.p2_low_reg_n_0_[9] ;
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
  wire [7:0]\morlet_to_phase_env.phase_reg[15]_0 ;
  wire [3:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  wire \morlet_to_phase_env.valid_i_1__0_n_0 ;
  wire \morlet_to_phase_env.valid_i_2__0_n_0 ;
  wire \morlet_to_phase_env.valid_i_3__0_n_0 ;
  wire [31:0]p2;
  wire [19:0]\phase_err.raw_diff_EW_reg[19] ;
  wire [31:0]re2;
  wire [47:0]s_axis_cartesian_tdata;
  wire valid_E;
  wire [7:7]\NLW_morlet_to_phase_env.p2_high_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  FDSE \morlet_to_phase_env.amp_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[0] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[10] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[11] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[12] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[13] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[14] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[1] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[2] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[3] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[4] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[5] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[6] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[7] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[8] ),
        .S(lenv[15]));
  FDSE \morlet_to_phase_env.amp_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_1_reg_n_0_[9] ),
        .S(lenv[15]));
  FDRE \morlet_to_phase_env.amp_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[0] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[10] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[11] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[12] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[13] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[14] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[1] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[2] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[3] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[4] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[5] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[6] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[7] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[8] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_1_reg_n_0_[9] ),
        .Q(\morlet_to_phase_env.amp_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[0] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[10] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[11] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[12] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[13] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[14] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[1] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[2] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[3] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[4] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[5] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[6] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[7] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[8] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.amp_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.amp_2_reg_n_0_[9] ),
        .Q(\morlet_to_phase_env.amp_3_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \morlet_to_phase_env.delay[0]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \morlet_to_phase_env.delay[1]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \morlet_to_phase_env.delay[2]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [0]),
        .I1(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.delay[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \morlet_to_phase_env.delay[3]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I3(\morlet_to_phase_env.delay_reg [3]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \morlet_to_phase_env.delay[4]_i_2__0 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.delay[4]_i_2__0_n_0 ));
  FDRE \morlet_to_phase_env.delay_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.delay[0]_i_1__0_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.delay[1]_i_1__0_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.delay[2]_i_1__0_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.delay[3]_i_1__0_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.delay_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.delay[4]_i_1_n_0 ),
        .D(\morlet_to_phase_env.delay[4]_i_2__0_n_0 ),
        .Q(\morlet_to_phase_env.delay_reg [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7555555555555554)) 
    \morlet_to_phase_env.env[14]_i_1__0 
       (.I0(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I1(\morlet_to_phase_env.delay_reg [2]),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.env[14]_i_1__0_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[0] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[10] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[11] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[12] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[13] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[14] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[1] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[2] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[3] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[4] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[5] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[6] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[7] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[8] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_3_reg_n_0_[9] ),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2[23]_i_2 
       (.I0(\morlet_to_phase_env.p2_high_reg_n_0_[0] ),
        .I1(\morlet_to_phase_env.p2_low_reg_n_0_[16] ),
        .O(\morlet_to_phase_env.p2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_2 
       (.I0(re2[31]),
        .I1(im2[31]),
        .O(\morlet_to_phase_env.p2_high[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_3 
       (.I0(re2[30]),
        .I1(im2[30]),
        .O(\morlet_to_phase_env.p2_high[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_4 
       (.I0(re2[29]),
        .I1(im2[29]),
        .O(\morlet_to_phase_env.p2_high[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_5 
       (.I0(re2[28]),
        .I1(im2[28]),
        .O(\morlet_to_phase_env.p2_high[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_6 
       (.I0(re2[27]),
        .I1(im2[27]),
        .O(\morlet_to_phase_env.p2_high[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_7 
       (.I0(re2[26]),
        .I1(im2[26]),
        .O(\morlet_to_phase_env.p2_high[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_8 
       (.I0(re2[25]),
        .I1(im2[25]),
        .O(\morlet_to_phase_env.p2_high[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[15]_i_9 
       (.I0(re2[24]),
        .I1(im2[24]),
        .O(\morlet_to_phase_env.p2_high[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_2 
       (.I0(re2[23]),
        .I1(im2[23]),
        .O(\morlet_to_phase_env.p2_high[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_3 
       (.I0(re2[22]),
        .I1(im2[22]),
        .O(\morlet_to_phase_env.p2_high[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_4 
       (.I0(re2[21]),
        .I1(im2[21]),
        .O(\morlet_to_phase_env.p2_high[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_5 
       (.I0(re2[20]),
        .I1(im2[20]),
        .O(\morlet_to_phase_env.p2_high[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_6 
       (.I0(re2[19]),
        .I1(im2[19]),
        .O(\morlet_to_phase_env.p2_high[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_7 
       (.I0(re2[18]),
        .I1(im2[18]),
        .O(\morlet_to_phase_env.p2_high[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_8 
       (.I0(re2[17]),
        .I1(im2[17]),
        .O(\morlet_to_phase_env.p2_high[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_high[7]_i_9 
       (.I0(re2[16]),
        .I1(im2[16]),
        .O(\morlet_to_phase_env.p2_high[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_high_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_high_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_high_reg[15]_i_1_CO_UNCONNECTED [7],\morlet_to_phase_env.p2_high_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_7 }),
        .DI({1'b0,re2[30:24]}),
        .O({\morlet_to_phase_env.p2_high_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_high_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high[15]_i_2_n_0 ,\morlet_to_phase_env.p2_high[15]_i_3_n_0 ,\morlet_to_phase_env.p2_high[15]_i_4_n_0 ,\morlet_to_phase_env.p2_high[15]_i_5_n_0 ,\morlet_to_phase_env.p2_high[15]_i_6_n_0 ,\morlet_to_phase_env.p2_high[15]_i_7_n_0 ,\morlet_to_phase_env.p2_high[15]_i_8_n_0 ,\morlet_to_phase_env.p2_high[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_high_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[7]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \morlet_to_phase_env.p2_high_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_high_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_7 }),
        .DI(re2[23:16]),
        .O({\morlet_to_phase_env.p2_high_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_high_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high[7]_i_2_n_0 ,\morlet_to_phase_env.p2_high[7]_i_3_n_0 ,\morlet_to_phase_env.p2_high[7]_i_4_n_0 ,\morlet_to_phase_env.p2_high[7]_i_5_n_0 ,\morlet_to_phase_env.p2_high[7]_i_6_n_0 ,\morlet_to_phase_env.p2_high[7]_i_7_n_0 ,\morlet_to_phase_env.p2_high[7]_i_8_n_0 ,\morlet_to_phase_env.p2_high[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_high_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_high_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_high_reg[15]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_high_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_2 
       (.I0(re2[15]),
        .I1(im2[15]),
        .O(\morlet_to_phase_env.p2_low[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_3 
       (.I0(re2[14]),
        .I1(im2[14]),
        .O(\morlet_to_phase_env.p2_low[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_4 
       (.I0(re2[13]),
        .I1(im2[13]),
        .O(\morlet_to_phase_env.p2_low[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_5 
       (.I0(re2[12]),
        .I1(im2[12]),
        .O(\morlet_to_phase_env.p2_low[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_6 
       (.I0(re2[11]),
        .I1(im2[11]),
        .O(\morlet_to_phase_env.p2_low[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_7 
       (.I0(re2[10]),
        .I1(im2[10]),
        .O(\morlet_to_phase_env.p2_low[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_8 
       (.I0(re2[9]),
        .I1(im2[9]),
        .O(\morlet_to_phase_env.p2_low[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[15]_i_9 
       (.I0(re2[8]),
        .I1(im2[8]),
        .O(\morlet_to_phase_env.p2_low[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_2 
       (.I0(re2[7]),
        .I1(im2[7]),
        .O(\morlet_to_phase_env.p2_low[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_3 
       (.I0(re2[6]),
        .I1(im2[6]),
        .O(\morlet_to_phase_env.p2_low[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_4 
       (.I0(re2[5]),
        .I1(im2[5]),
        .O(\morlet_to_phase_env.p2_low[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_5 
       (.I0(re2[4]),
        .I1(im2[4]),
        .O(\morlet_to_phase_env.p2_low[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_6 
       (.I0(re2[3]),
        .I1(im2[3]),
        .O(\morlet_to_phase_env.p2_low[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_7 
       (.I0(re2[2]),
        .I1(im2[2]),
        .O(\morlet_to_phase_env.p2_low[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_8 
       (.I0(re2[1]),
        .I1(im2[1]),
        .O(\morlet_to_phase_env.p2_low[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \morlet_to_phase_env.p2_low[7]_i_9 
       (.I0(re2[0]),
        .I1(im2[0]),
        .O(\morlet_to_phase_env.p2_low[7]_i_9_n_0 ));
  FDRE \morlet_to_phase_env.p2_low_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[15] ),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[15]_i_1 
       (.CI(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_1 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_2 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_3 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_4 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_5 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_6 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_7 }),
        .DI(re2[15:8]),
        .O({\morlet_to_phase_env.p2_low_reg[15]_i_1_n_8 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_9 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_10 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_11 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_12 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_13 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_14 ,\morlet_to_phase_env.p2_low_reg[15]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_low[15]_i_2_n_0 ,\morlet_to_phase_env.p2_low[15]_i_3_n_0 ,\morlet_to_phase_env.p2_low[15]_i_4_n_0 ,\morlet_to_phase_env.p2_low[15]_i_5_n_0 ,\morlet_to_phase_env.p2_low[15]_i_6_n_0 ,\morlet_to_phase_env.p2_low[15]_i_7_n_0 ,\morlet_to_phase_env.p2_low[15]_i_8_n_0 ,\morlet_to_phase_env.p2_low[15]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_low_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[16]_i_1_n_7 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[16] ),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[16]_i_1 
       (.CI(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_CO_UNCONNECTED [7:1],\morlet_to_phase_env.p2_low_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_morlet_to_phase_env.p2_low_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \morlet_to_phase_env.p2_low_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_13 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_12 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_11 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_10 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_9 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[7]_i_1_n_8 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[7] ),
        .R(1'b0));
  CARRY8 \morlet_to_phase_env.p2_low_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_low_reg[7]_i_1_n_0 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_1 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_2 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_3 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_4 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_5 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_6 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_7 }),
        .DI(re2[7:0]),
        .O({\morlet_to_phase_env.p2_low_reg[7]_i_1_n_8 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_9 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_10 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_11 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_12 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_13 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_14 ,\morlet_to_phase_env.p2_low_reg[7]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_low[7]_i_2_n_0 ,\morlet_to_phase_env.p2_low[7]_i_3_n_0 ,\morlet_to_phase_env.p2_low[7]_i_4_n_0 ,\morlet_to_phase_env.p2_low[7]_i_5_n_0 ,\morlet_to_phase_env.p2_low[7]_i_6_n_0 ,\morlet_to_phase_env.p2_low[7]_i_7_n_0 ,\morlet_to_phase_env.p2_low[7]_i_8_n_0 ,\morlet_to_phase_env.p2_low[7]_i_9_n_0 }));
  FDRE \morlet_to_phase_env.p2_low_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_15 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_low_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg[15]_i_1_n_14 ),
        .Q(\morlet_to_phase_env.p2_low_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[0] ),
        .Q(p2[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[10] ),
        .Q(p2[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[11] ),
        .Q(p2[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[12] ),
        .Q(p2[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[13] ),
        .Q(p2[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[14] ),
        .Q(p2[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[15] ),
        .Q(p2[15]),
        .R(1'b0));
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
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[1] ),
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
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\morlet_to_phase_env.p2_reg[23]_i_1_n_0 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_1 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_2 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_3 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_4 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_5 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_6 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\morlet_to_phase_env.p2_high_reg_n_0_[0] }),
        .O({\morlet_to_phase_env.p2_reg[23]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[23]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high_reg_n_0_[7] ,\morlet_to_phase_env.p2_high_reg_n_0_[6] ,\morlet_to_phase_env.p2_high_reg_n_0_[5] ,\morlet_to_phase_env.p2_high_reg_n_0_[4] ,\morlet_to_phase_env.p2_high_reg_n_0_[3] ,\morlet_to_phase_env.p2_high_reg_n_0_[2] ,\morlet_to_phase_env.p2_high_reg_n_0_[1] ,\morlet_to_phase_env.p2[23]_i_2_n_0 }));
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
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[2] ),
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
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\morlet_to_phase_env.p2_reg[31]_i_1_n_8 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_9 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_10 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_11 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_12 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_13 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_14 ,\morlet_to_phase_env.p2_reg[31]_i_1_n_15 }),
        .S({\morlet_to_phase_env.p2_high_reg_n_0_[15] ,\morlet_to_phase_env.p2_high_reg_n_0_[14] ,\morlet_to_phase_env.p2_high_reg_n_0_[13] ,\morlet_to_phase_env.p2_high_reg_n_0_[12] ,\morlet_to_phase_env.p2_high_reg_n_0_[11] ,\morlet_to_phase_env.p2_high_reg_n_0_[10] ,\morlet_to_phase_env.p2_high_reg_n_0_[9] ,\morlet_to_phase_env.p2_high_reg_n_0_[8] }));
  FDRE \morlet_to_phase_env.p2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[3] ),
        .Q(p2[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[4] ),
        .Q(p2[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[5] ),
        .Q(p2[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[6] ),
        .Q(p2[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[7] ),
        .Q(p2[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[8] ),
        .Q(p2[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.p2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.p2_low_reg_n_0_[9] ),
        .Q(p2[9]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[14]_i_1__0_n_0 ),
        .D(lphase[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF040404FF04)) 
    \morlet_to_phase_env.valid_i_1__0 
       (.I0(\morlet_to_phase_env.valid_i_2__0_n_0 ),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.valid_i_3__0_n_0 ),
        .I4(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I5(valid_E),
        .O(\morlet_to_phase_env.valid_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \morlet_to_phase_env.valid_i_2__0 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.amp_1_reg[0]_0 ),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.valid_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_3__0 
       (.I0(\morlet_to_phase_env.delay_reg [2]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [4]),
        .I4(\morlet_to_phase_env.delay_reg [3]),
        .O(\morlet_to_phase_env.valid_i_3__0_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1__0_n_0 ),
        .Q(valid_E),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_im_i
       (.A(s_axis_cartesian_tdata[47:32]),
        .B(s_axis_cartesian_tdata[47:32]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_mult_16_16 mult_re_i
       (.A(s_axis_cartesian_tdata[23:8]),
        .B(s_axis_cartesian_tdata[23:8]),
        .CLK(clk),
        .P(re2));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_1
       (.I0(Q[15]),
        .I1(\phase_err.raw_diff_EW_reg[19] [15]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [7]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_2
       (.I0(Q[14]),
        .I1(\phase_err.raw_diff_EW_reg[19] [14]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [6]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_3
       (.I0(Q[13]),
        .I1(\phase_err.raw_diff_EW_reg[19] [13]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_4
       (.I0(Q[12]),
        .I1(\phase_err.raw_diff_EW_reg[19] [12]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [4]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_5
       (.I0(Q[11]),
        .I1(\phase_err.raw_diff_EW_reg[19] [11]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_6
       (.I0(Q[10]),
        .I1(\phase_err.raw_diff_EW_reg[19] [10]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_7
       (.I0(Q[9]),
        .I1(\phase_err.raw_diff_EW_reg[19] [9]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__0_i_8
       (.I0(Q[8]),
        .I1(\phase_err.raw_diff_EW_reg[19] [8]),
        .O(\morlet_to_phase_env.phase_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__1_i_1
       (.I0(Q[19]),
        .I1(\phase_err.raw_diff_EW_reg[19] [19]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__1_i_2
       (.I0(Q[18]),
        .I1(\phase_err.raw_diff_EW_reg[19] [18]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__1_i_3
       (.I0(Q[17]),
        .I1(\phase_err.raw_diff_EW_reg[19] [17]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry__1_i_4
       (.I0(Q[16]),
        .I1(\phase_err.raw_diff_EW_reg[19] [16]),
        .O(\morlet_to_phase_env.phase_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_1
       (.I0(Q[7]),
        .I1(\phase_err.raw_diff_EW_reg[19] [7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_2
       (.I0(Q[6]),
        .I1(\phase_err.raw_diff_EW_reg[19] [6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_3
       (.I0(Q[5]),
        .I1(\phase_err.raw_diff_EW_reg[19] [5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_4
       (.I0(Q[4]),
        .I1(\phase_err.raw_diff_EW_reg[19] [4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_5
       (.I0(Q[3]),
        .I1(\phase_err.raw_diff_EW_reg[19] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_6
       (.I0(Q[2]),
        .I1(\phase_err.raw_diff_EW_reg[19] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_7
       (.I0(Q[1]),
        .I1(\phase_err.raw_diff_EW_reg[19] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    raw_diff_EW0_carry_i_8
       (.I0(Q[0]),
        .I1(\phase_err.raw_diff_EW_reg[19] [0]),
        .O(S[0]));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.amp_1_reg[0]_0 ));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(s_axis_cartesian_tdata),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.amp_1_reg[0]_0 ));
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

(* ORIG_REF_NAME = "phase_err" *) 
module ps_freq_low_46_0_0_phase_err
   (E,
    D,
    \morlet_to_phase_env.env_reg[14] ,
    \morlet_to_phase_env.env_reg[14]_0 ,
    \morlet_to_phase_env.phase_reg[19] ,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    \morlet_to_phase_env.phase_reg[19]_1 ,
    \phase_err.err_NE_reg[11]_0 ,
    \phase_err.err_EW_reg[11]_0 ,
    \phase_err.err_WN_reg[11]_0 ,
    active0,
    clk,
    \freq_low_46.env_N_reg[14] ,
    \freq_low_46.env_E_reg[14] ,
    \freq_low_46.env_W_reg[14] ,
    Q,
    \freq_low_46.phase_E_reg[19] ,
    \freq_low_46.phase_W_reg[19] ,
    S,
    \phase_err.raw_diff_NE_reg[15]_0 ,
    \phase_err.raw_diff_NE_reg[19]_0 ,
    \phase_err.raw_diff_EW_reg[7]_0 ,
    \phase_err.raw_diff_EW_reg[15]_0 ,
    \phase_err.raw_diff_EW_reg[19]_0 ,
    \phase_err.raw_diff_WN_reg[7]_0 ,
    \phase_err.raw_diff_WN_reg[15]_0 ,
    \phase_err.raw_diff_WN_reg[19]_0 );
  output [0:0]E;
  output [14:0]D;
  output [14:0]\morlet_to_phase_env.env_reg[14] ;
  output [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  output [19:0]\morlet_to_phase_env.phase_reg[19] ;
  output [19:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  output [19:0]\morlet_to_phase_env.phase_reg[19]_1 ;
  output [11:0]\phase_err.err_NE_reg[11]_0 ;
  output [11:0]\phase_err.err_EW_reg[11]_0 ;
  output [11:0]\phase_err.err_WN_reg[11]_0 ;
  input active0;
  input clk;
  input [14:0]\freq_low_46.env_N_reg[14] ;
  input [14:0]\freq_low_46.env_E_reg[14] ;
  input [14:0]\freq_low_46.env_W_reg[14] ;
  input [19:0]Q;
  input [19:0]\freq_low_46.phase_E_reg[19] ;
  input [19:0]\freq_low_46.phase_W_reg[19] ;
  input [7:0]S;
  input [7:0]\phase_err.raw_diff_NE_reg[15]_0 ;
  input [3:0]\phase_err.raw_diff_NE_reg[19]_0 ;
  input [7:0]\phase_err.raw_diff_EW_reg[7]_0 ;
  input [7:0]\phase_err.raw_diff_EW_reg[15]_0 ;
  input [3:0]\phase_err.raw_diff_EW_reg[19]_0 ;
  input [7:0]\phase_err.raw_diff_WN_reg[7]_0 ;
  input [7:0]\phase_err.raw_diff_WN_reg[15]_0 ;
  input [3:0]\phase_err.raw_diff_WN_reg[19]_0 ;

  wire [14:0]D;
  wire [0:0]E;
  wire [19:0]Q;
  wire [7:0]S;
  wire active0;
  wire clk;
  wire [18:0]diff_EW;
  wire [18:0]diff_NE;
  wire [18:0]diff_WN;
  wire [14:0]\freq_low_46.env_E_reg[14] ;
  wire [14:0]\freq_low_46.env_N_reg[14] ;
  wire [14:0]\freq_low_46.env_W_reg[14] ;
  wire [19:0]\freq_low_46.phase_E_reg[19] ;
  wire [19:0]\freq_low_46.phase_W_reg[19] ;
  wire [14:0]\morlet_to_phase_env.env_reg[14] ;
  wire [14:0]\morlet_to_phase_env.env_reg[14]_0 ;
  wire [19:0]\morlet_to_phase_env.phase_reg[19] ;
  wire [19:0]\morlet_to_phase_env.phase_reg[19]_0 ;
  wire [19:0]\morlet_to_phase_env.phase_reg[19]_1 ;
  wire \phase_err.diff_EW[0]_i_1_n_0 ;
  wire \phase_err.diff_EW[10]_i_1_n_0 ;
  wire \phase_err.diff_EW[11]_i_1_n_0 ;
  wire \phase_err.diff_EW[12]_i_1_n_0 ;
  wire \phase_err.diff_EW[13]_i_1_n_0 ;
  wire \phase_err.diff_EW[14]_i_1_n_0 ;
  wire \phase_err.diff_EW[15]_i_1_n_0 ;
  wire \phase_err.diff_EW[16]_i_1_n_0 ;
  wire \phase_err.diff_EW[17]_i_1_n_0 ;
  wire \phase_err.diff_EW[18]_i_1_n_0 ;
  wire \phase_err.diff_EW[1]_i_1_n_0 ;
  wire \phase_err.diff_EW[2]_i_1_n_0 ;
  wire \phase_err.diff_EW[3]_i_1_n_0 ;
  wire \phase_err.diff_EW[4]_i_1_n_0 ;
  wire \phase_err.diff_EW[5]_i_1_n_0 ;
  wire \phase_err.diff_EW[6]_i_1_n_0 ;
  wire \phase_err.diff_EW[7]_i_1_n_0 ;
  wire \phase_err.diff_EW[8]_i_1_n_0 ;
  wire \phase_err.diff_EW[9]_i_1_n_0 ;
  wire \phase_err.diff_NE[0]_i_1_n_0 ;
  wire \phase_err.diff_NE[10]_i_1_n_0 ;
  wire \phase_err.diff_NE[11]_i_1_n_0 ;
  wire \phase_err.diff_NE[12]_i_1_n_0 ;
  wire \phase_err.diff_NE[13]_i_1_n_0 ;
  wire \phase_err.diff_NE[14]_i_1_n_0 ;
  wire \phase_err.diff_NE[15]_i_1_n_0 ;
  wire \phase_err.diff_NE[16]_i_1_n_0 ;
  wire \phase_err.diff_NE[17]_i_1_n_0 ;
  wire \phase_err.diff_NE[18]_i_1_n_0 ;
  wire \phase_err.diff_NE[1]_i_1_n_0 ;
  wire \phase_err.diff_NE[2]_i_1_n_0 ;
  wire \phase_err.diff_NE[3]_i_1_n_0 ;
  wire \phase_err.diff_NE[4]_i_1_n_0 ;
  wire \phase_err.diff_NE[5]_i_1_n_0 ;
  wire \phase_err.diff_NE[6]_i_1_n_0 ;
  wire \phase_err.diff_NE[7]_i_1_n_0 ;
  wire \phase_err.diff_NE[8]_i_1_n_0 ;
  wire \phase_err.diff_NE[9]_i_1_n_0 ;
  wire \phase_err.diff_WN[0]_i_1_n_0 ;
  wire \phase_err.diff_WN[10]_i_1_n_0 ;
  wire \phase_err.diff_WN[11]_i_1_n_0 ;
  wire \phase_err.diff_WN[12]_i_1_n_0 ;
  wire \phase_err.diff_WN[13]_i_1_n_0 ;
  wire \phase_err.diff_WN[14]_i_1_n_0 ;
  wire \phase_err.diff_WN[15]_i_1_n_0 ;
  wire \phase_err.diff_WN[16]_i_1_n_0 ;
  wire \phase_err.diff_WN[17]_i_1_n_0 ;
  wire \phase_err.diff_WN[18]_i_1_n_0 ;
  wire \phase_err.diff_WN[1]_i_1_n_0 ;
  wire \phase_err.diff_WN[2]_i_1_n_0 ;
  wire \phase_err.diff_WN[3]_i_1_n_0 ;
  wire \phase_err.diff_WN[4]_i_1_n_0 ;
  wire \phase_err.diff_WN[5]_i_1_n_0 ;
  wire \phase_err.diff_WN[6]_i_1_n_0 ;
  wire \phase_err.diff_WN[7]_i_1_n_0 ;
  wire \phase_err.diff_WN[8]_i_1_n_0 ;
  wire \phase_err.diff_WN[9]_i_1_n_0 ;
  wire \phase_err.err_EW[0]_i_1_n_0 ;
  wire \phase_err.err_EW[10]_i_1_n_0 ;
  wire \phase_err.err_EW[11]_i_1_n_0 ;
  wire \phase_err.err_EW[11]_i_2_n_0 ;
  wire \phase_err.err_EW[11]_i_3_n_0 ;
  wire \phase_err.err_EW[1]_i_1_n_0 ;
  wire \phase_err.err_EW[2]_i_1_n_0 ;
  wire \phase_err.err_EW[3]_i_1_n_0 ;
  wire \phase_err.err_EW[4]_i_1_n_0 ;
  wire \phase_err.err_EW[5]_i_1_n_0 ;
  wire \phase_err.err_EW[6]_i_1_n_0 ;
  wire \phase_err.err_EW[7]_i_1_n_0 ;
  wire \phase_err.err_EW[8]_i_1_n_0 ;
  wire \phase_err.err_EW[9]_i_1_n_0 ;
  wire [11:0]\phase_err.err_EW_reg[11]_0 ;
  wire \phase_err.err_NE[0]_i_1_n_0 ;
  wire \phase_err.err_NE[10]_i_1_n_0 ;
  wire \phase_err.err_NE[11]_i_1_n_0 ;
  wire \phase_err.err_NE[11]_i_2_n_0 ;
  wire \phase_err.err_NE[11]_i_3_n_0 ;
  wire \phase_err.err_NE[1]_i_1_n_0 ;
  wire \phase_err.err_NE[2]_i_1_n_0 ;
  wire \phase_err.err_NE[3]_i_1_n_0 ;
  wire \phase_err.err_NE[4]_i_1_n_0 ;
  wire \phase_err.err_NE[5]_i_1_n_0 ;
  wire \phase_err.err_NE[6]_i_1_n_0 ;
  wire \phase_err.err_NE[7]_i_1_n_0 ;
  wire \phase_err.err_NE[8]_i_1_n_0 ;
  wire \phase_err.err_NE[9]_i_1_n_0 ;
  wire [11:0]\phase_err.err_NE_reg[11]_0 ;
  wire \phase_err.err_WN[0]_i_1_n_0 ;
  wire \phase_err.err_WN[10]_i_1_n_0 ;
  wire \phase_err.err_WN[11]_i_1_n_0 ;
  wire \phase_err.err_WN[11]_i_2_n_0 ;
  wire \phase_err.err_WN[11]_i_3_n_0 ;
  wire \phase_err.err_WN[1]_i_1_n_0 ;
  wire \phase_err.err_WN[2]_i_1_n_0 ;
  wire \phase_err.err_WN[3]_i_1_n_0 ;
  wire \phase_err.err_WN[4]_i_1_n_0 ;
  wire \phase_err.err_WN[5]_i_1_n_0 ;
  wire \phase_err.err_WN[6]_i_1_n_0 ;
  wire \phase_err.err_WN[7]_i_1_n_0 ;
  wire \phase_err.err_WN[8]_i_1_n_0 ;
  wire \phase_err.err_WN[9]_i_1_n_0 ;
  wire [11:0]\phase_err.err_WN_reg[11]_0 ;
  wire \phase_err.prev_NE[18]_i_1_n_0 ;
  wire [7:0]\phase_err.raw_diff_EW_reg[15]_0 ;
  wire [3:0]\phase_err.raw_diff_EW_reg[19]_0 ;
  wire [7:0]\phase_err.raw_diff_EW_reg[7]_0 ;
  wire [7:0]\phase_err.raw_diff_NE_reg[15]_0 ;
  wire [3:0]\phase_err.raw_diff_NE_reg[19]_0 ;
  wire [7:0]\phase_err.raw_diff_WN_reg[15]_0 ;
  wire [3:0]\phase_err.raw_diff_WN_reg[19]_0 ;
  wire [7:0]\phase_err.raw_diff_WN_reg[7]_0 ;
  wire \phase_err.raw_err_EW_reg_n_0_[0] ;
  wire \phase_err.raw_err_EW_reg_n_0_[10] ;
  wire \phase_err.raw_err_EW_reg_n_0_[11] ;
  wire \phase_err.raw_err_EW_reg_n_0_[12] ;
  wire \phase_err.raw_err_EW_reg_n_0_[13] ;
  wire \phase_err.raw_err_EW_reg_n_0_[14] ;
  wire \phase_err.raw_err_EW_reg_n_0_[15] ;
  wire \phase_err.raw_err_EW_reg_n_0_[16] ;
  wire \phase_err.raw_err_EW_reg_n_0_[17] ;
  wire \phase_err.raw_err_EW_reg_n_0_[18] ;
  wire \phase_err.raw_err_EW_reg_n_0_[1] ;
  wire \phase_err.raw_err_EW_reg_n_0_[2] ;
  wire \phase_err.raw_err_EW_reg_n_0_[3] ;
  wire \phase_err.raw_err_EW_reg_n_0_[4] ;
  wire \phase_err.raw_err_EW_reg_n_0_[5] ;
  wire \phase_err.raw_err_EW_reg_n_0_[6] ;
  wire \phase_err.raw_err_EW_reg_n_0_[7] ;
  wire \phase_err.raw_err_EW_reg_n_0_[8] ;
  wire \phase_err.raw_err_EW_reg_n_0_[9] ;
  wire \phase_err.raw_err_NE_reg_n_0_[0] ;
  wire \phase_err.raw_err_NE_reg_n_0_[10] ;
  wire \phase_err.raw_err_NE_reg_n_0_[11] ;
  wire \phase_err.raw_err_NE_reg_n_0_[12] ;
  wire \phase_err.raw_err_NE_reg_n_0_[13] ;
  wire \phase_err.raw_err_NE_reg_n_0_[14] ;
  wire \phase_err.raw_err_NE_reg_n_0_[15] ;
  wire \phase_err.raw_err_NE_reg_n_0_[16] ;
  wire \phase_err.raw_err_NE_reg_n_0_[17] ;
  wire \phase_err.raw_err_NE_reg_n_0_[18] ;
  wire \phase_err.raw_err_NE_reg_n_0_[1] ;
  wire \phase_err.raw_err_NE_reg_n_0_[2] ;
  wire \phase_err.raw_err_NE_reg_n_0_[3] ;
  wire \phase_err.raw_err_NE_reg_n_0_[4] ;
  wire \phase_err.raw_err_NE_reg_n_0_[5] ;
  wire \phase_err.raw_err_NE_reg_n_0_[6] ;
  wire \phase_err.raw_err_NE_reg_n_0_[7] ;
  wire \phase_err.raw_err_NE_reg_n_0_[8] ;
  wire \phase_err.raw_err_NE_reg_n_0_[9] ;
  wire \phase_err.raw_err_WN_reg_n_0_[0] ;
  wire \phase_err.raw_err_WN_reg_n_0_[10] ;
  wire \phase_err.raw_err_WN_reg_n_0_[11] ;
  wire \phase_err.raw_err_WN_reg_n_0_[12] ;
  wire \phase_err.raw_err_WN_reg_n_0_[13] ;
  wire \phase_err.raw_err_WN_reg_n_0_[14] ;
  wire \phase_err.raw_err_WN_reg_n_0_[15] ;
  wire \phase_err.raw_err_WN_reg_n_0_[16] ;
  wire \phase_err.raw_err_WN_reg_n_0_[17] ;
  wire \phase_err.raw_err_WN_reg_n_0_[18] ;
  wire \phase_err.raw_err_WN_reg_n_0_[1] ;
  wire \phase_err.raw_err_WN_reg_n_0_[2] ;
  wire \phase_err.raw_err_WN_reg_n_0_[3] ;
  wire \phase_err.raw_err_WN_reg_n_0_[4] ;
  wire \phase_err.raw_err_WN_reg_n_0_[5] ;
  wire \phase_err.raw_err_WN_reg_n_0_[6] ;
  wire \phase_err.raw_err_WN_reg_n_0_[7] ;
  wire \phase_err.raw_err_WN_reg_n_0_[8] ;
  wire \phase_err.raw_err_WN_reg_n_0_[9] ;
  wire [18:0]prev_EW;
  wire [18:0]prev_NE;
  wire [18:0]prev_WN;
  wire [19:0]raw_diff_EW;
  wire [19:0]raw_diff_EW01_out;
  wire raw_diff_EW0_carry__0_n_0;
  wire raw_diff_EW0_carry__0_n_1;
  wire raw_diff_EW0_carry__0_n_2;
  wire raw_diff_EW0_carry__0_n_3;
  wire raw_diff_EW0_carry__0_n_4;
  wire raw_diff_EW0_carry__0_n_5;
  wire raw_diff_EW0_carry__0_n_6;
  wire raw_diff_EW0_carry__0_n_7;
  wire raw_diff_EW0_carry__1_n_5;
  wire raw_diff_EW0_carry__1_n_6;
  wire raw_diff_EW0_carry__1_n_7;
  wire raw_diff_EW0_carry_n_0;
  wire raw_diff_EW0_carry_n_1;
  wire raw_diff_EW0_carry_n_2;
  wire raw_diff_EW0_carry_n_3;
  wire raw_diff_EW0_carry_n_4;
  wire raw_diff_EW0_carry_n_5;
  wire raw_diff_EW0_carry_n_6;
  wire raw_diff_EW0_carry_n_7;
  wire [19:0]raw_diff_NE;
  wire [19:0]raw_diff_NE02_out;
  wire raw_diff_NE0_carry__0_n_0;
  wire raw_diff_NE0_carry__0_n_1;
  wire raw_diff_NE0_carry__0_n_2;
  wire raw_diff_NE0_carry__0_n_3;
  wire raw_diff_NE0_carry__0_n_4;
  wire raw_diff_NE0_carry__0_n_5;
  wire raw_diff_NE0_carry__0_n_6;
  wire raw_diff_NE0_carry__0_n_7;
  wire raw_diff_NE0_carry__1_n_5;
  wire raw_diff_NE0_carry__1_n_6;
  wire raw_diff_NE0_carry__1_n_7;
  wire raw_diff_NE0_carry_n_0;
  wire raw_diff_NE0_carry_n_1;
  wire raw_diff_NE0_carry_n_2;
  wire raw_diff_NE0_carry_n_3;
  wire raw_diff_NE0_carry_n_4;
  wire raw_diff_NE0_carry_n_5;
  wire raw_diff_NE0_carry_n_6;
  wire raw_diff_NE0_carry_n_7;
  wire [19:0]raw_diff_WN;
  wire [19:0]raw_diff_WN00_out;
  wire raw_diff_WN0_carry__0_n_0;
  wire raw_diff_WN0_carry__0_n_1;
  wire raw_diff_WN0_carry__0_n_2;
  wire raw_diff_WN0_carry__0_n_3;
  wire raw_diff_WN0_carry__0_n_4;
  wire raw_diff_WN0_carry__0_n_5;
  wire raw_diff_WN0_carry__0_n_6;
  wire raw_diff_WN0_carry__0_n_7;
  wire raw_diff_WN0_carry__1_n_5;
  wire raw_diff_WN0_carry__1_n_6;
  wire raw_diff_WN0_carry__1_n_7;
  wire raw_diff_WN0_carry_n_0;
  wire raw_diff_WN0_carry_n_1;
  wire raw_diff_WN0_carry_n_2;
  wire raw_diff_WN0_carry_n_3;
  wire raw_diff_WN0_carry_n_4;
  wire raw_diff_WN0_carry_n_5;
  wire raw_diff_WN0_carry_n_6;
  wire raw_diff_WN0_carry_n_7;
  wire [18:0]raw_err_EW01_out;
  wire raw_err_EW0_carry__0_i_1_n_0;
  wire raw_err_EW0_carry__0_i_2_n_0;
  wire raw_err_EW0_carry__0_i_3_n_0;
  wire raw_err_EW0_carry__0_i_4_n_0;
  wire raw_err_EW0_carry__0_i_5_n_0;
  wire raw_err_EW0_carry__0_i_6_n_0;
  wire raw_err_EW0_carry__0_i_7_n_0;
  wire raw_err_EW0_carry__0_i_8_n_0;
  wire raw_err_EW0_carry__0_n_0;
  wire raw_err_EW0_carry__0_n_1;
  wire raw_err_EW0_carry__0_n_2;
  wire raw_err_EW0_carry__0_n_3;
  wire raw_err_EW0_carry__0_n_4;
  wire raw_err_EW0_carry__0_n_5;
  wire raw_err_EW0_carry__0_n_6;
  wire raw_err_EW0_carry__0_n_7;
  wire raw_err_EW0_carry__1_i_1_n_0;
  wire raw_err_EW0_carry__1_i_2_n_0;
  wire raw_err_EW0_carry__1_i_3_n_0;
  wire raw_err_EW0_carry__1_n_6;
  wire raw_err_EW0_carry__1_n_7;
  wire raw_err_EW0_carry_i_1_n_0;
  wire raw_err_EW0_carry_i_2_n_0;
  wire raw_err_EW0_carry_i_3_n_0;
  wire raw_err_EW0_carry_i_4_n_0;
  wire raw_err_EW0_carry_i_5_n_0;
  wire raw_err_EW0_carry_i_6_n_0;
  wire raw_err_EW0_carry_i_7_n_0;
  wire raw_err_EW0_carry_i_8_n_0;
  wire raw_err_EW0_carry_n_0;
  wire raw_err_EW0_carry_n_1;
  wire raw_err_EW0_carry_n_2;
  wire raw_err_EW0_carry_n_3;
  wire raw_err_EW0_carry_n_4;
  wire raw_err_EW0_carry_n_5;
  wire raw_err_EW0_carry_n_6;
  wire raw_err_EW0_carry_n_7;
  wire [18:0]raw_err_NE02_out;
  wire raw_err_NE0_carry__0_i_1_n_0;
  wire raw_err_NE0_carry__0_i_2_n_0;
  wire raw_err_NE0_carry__0_i_3_n_0;
  wire raw_err_NE0_carry__0_i_4_n_0;
  wire raw_err_NE0_carry__0_i_5_n_0;
  wire raw_err_NE0_carry__0_i_6_n_0;
  wire raw_err_NE0_carry__0_i_7_n_0;
  wire raw_err_NE0_carry__0_i_8_n_0;
  wire raw_err_NE0_carry__0_n_0;
  wire raw_err_NE0_carry__0_n_1;
  wire raw_err_NE0_carry__0_n_2;
  wire raw_err_NE0_carry__0_n_3;
  wire raw_err_NE0_carry__0_n_4;
  wire raw_err_NE0_carry__0_n_5;
  wire raw_err_NE0_carry__0_n_6;
  wire raw_err_NE0_carry__0_n_7;
  wire raw_err_NE0_carry__1_i_1_n_0;
  wire raw_err_NE0_carry__1_i_2_n_0;
  wire raw_err_NE0_carry__1_i_3_n_0;
  wire raw_err_NE0_carry__1_n_6;
  wire raw_err_NE0_carry__1_n_7;
  wire raw_err_NE0_carry_i_1_n_0;
  wire raw_err_NE0_carry_i_2_n_0;
  wire raw_err_NE0_carry_i_3_n_0;
  wire raw_err_NE0_carry_i_4_n_0;
  wire raw_err_NE0_carry_i_5_n_0;
  wire raw_err_NE0_carry_i_6_n_0;
  wire raw_err_NE0_carry_i_7_n_0;
  wire raw_err_NE0_carry_i_8_n_0;
  wire raw_err_NE0_carry_n_0;
  wire raw_err_NE0_carry_n_1;
  wire raw_err_NE0_carry_n_2;
  wire raw_err_NE0_carry_n_3;
  wire raw_err_NE0_carry_n_4;
  wire raw_err_NE0_carry_n_5;
  wire raw_err_NE0_carry_n_6;
  wire raw_err_NE0_carry_n_7;
  wire [18:0]raw_err_WN00_out;
  wire raw_err_WN0_carry__0_i_1_n_0;
  wire raw_err_WN0_carry__0_i_2_n_0;
  wire raw_err_WN0_carry__0_i_3_n_0;
  wire raw_err_WN0_carry__0_i_4_n_0;
  wire raw_err_WN0_carry__0_i_5_n_0;
  wire raw_err_WN0_carry__0_i_6_n_0;
  wire raw_err_WN0_carry__0_i_7_n_0;
  wire raw_err_WN0_carry__0_i_8_n_0;
  wire raw_err_WN0_carry__0_n_0;
  wire raw_err_WN0_carry__0_n_1;
  wire raw_err_WN0_carry__0_n_2;
  wire raw_err_WN0_carry__0_n_3;
  wire raw_err_WN0_carry__0_n_4;
  wire raw_err_WN0_carry__0_n_5;
  wire raw_err_WN0_carry__0_n_6;
  wire raw_err_WN0_carry__0_n_7;
  wire raw_err_WN0_carry__1_i_1_n_0;
  wire raw_err_WN0_carry__1_i_2_n_0;
  wire raw_err_WN0_carry__1_i_3_n_0;
  wire raw_err_WN0_carry__1_n_6;
  wire raw_err_WN0_carry__1_n_7;
  wire raw_err_WN0_carry_i_1_n_0;
  wire raw_err_WN0_carry_i_2_n_0;
  wire raw_err_WN0_carry_i_3_n_0;
  wire raw_err_WN0_carry_i_4_n_0;
  wire raw_err_WN0_carry_i_5_n_0;
  wire raw_err_WN0_carry_i_6_n_0;
  wire raw_err_WN0_carry_i_7_n_0;
  wire raw_err_WN0_carry_i_8_n_0;
  wire raw_err_WN0_carry_n_0;
  wire raw_err_WN0_carry_n_1;
  wire raw_err_WN0_carry_n_2;
  wire raw_err_WN0_carry_n_3;
  wire raw_err_WN0_carry_n_4;
  wire raw_err_WN0_carry_n_5;
  wire raw_err_WN0_carry_n_6;
  wire raw_err_WN0_carry_n_7;
  wire valid_1;
  wire valid_2;
  wire valid_3;
  wire [7:3]NLW_raw_diff_EW0_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_raw_diff_EW0_carry__1_O_UNCONNECTED;
  wire [7:3]NLW_raw_diff_NE0_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_raw_diff_NE0_carry__1_O_UNCONNECTED;
  wire [7:3]NLW_raw_diff_WN0_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_raw_diff_WN0_carry__1_O_UNCONNECTED;
  wire [7:2]NLW_raw_err_EW0_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_raw_err_EW0_carry__1_O_UNCONNECTED;
  wire [7:2]NLW_raw_err_NE0_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_raw_err_NE0_carry__1_O_UNCONNECTED;
  wire [7:2]NLW_raw_err_WN0_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_raw_err_WN0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[0]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[0]),
        .O(\phase_err.diff_EW[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[10]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[10]),
        .O(\phase_err.diff_EW[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[11]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[11]),
        .O(\phase_err.diff_EW[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[12]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[12]),
        .O(\phase_err.diff_EW[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[13]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[13]),
        .O(\phase_err.diff_EW[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[14]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[14]),
        .O(\phase_err.diff_EW[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[15]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[15]),
        .O(\phase_err.diff_EW[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[16]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[16]),
        .O(\phase_err.diff_EW[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[17]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[17]),
        .O(\phase_err.diff_EW[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[18]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[18]),
        .O(\phase_err.diff_EW[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[1]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[1]),
        .O(\phase_err.diff_EW[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[2]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[2]),
        .O(\phase_err.diff_EW[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[3]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[3]),
        .O(\phase_err.diff_EW[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[4]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[4]),
        .O(\phase_err.diff_EW[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[5]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[5]),
        .O(\phase_err.diff_EW[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[6]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[6]),
        .O(\phase_err.diff_EW[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[7]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[7]),
        .O(\phase_err.diff_EW[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[8]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[8]),
        .O(\phase_err.diff_EW[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_EW[9]_i_1 
       (.I0(raw_diff_EW[19]),
        .I1(raw_diff_EW[9]),
        .O(\phase_err.diff_EW[9]_i_1_n_0 ));
  FDRE \phase_err.diff_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[0]_i_1_n_0 ),
        .Q(diff_EW[0]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[10]_i_1_n_0 ),
        .Q(diff_EW[10]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[11]_i_1_n_0 ),
        .Q(diff_EW[11]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[12]_i_1_n_0 ),
        .Q(diff_EW[12]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[13]_i_1_n_0 ),
        .Q(diff_EW[13]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[14]_i_1_n_0 ),
        .Q(diff_EW[14]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[15]_i_1_n_0 ),
        .Q(diff_EW[15]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[16]_i_1_n_0 ),
        .Q(diff_EW[16]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[17]_i_1_n_0 ),
        .Q(diff_EW[17]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[18]_i_1_n_0 ),
        .Q(diff_EW[18]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[1]_i_1_n_0 ),
        .Q(diff_EW[1]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[2]_i_1_n_0 ),
        .Q(diff_EW[2]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[3]_i_1_n_0 ),
        .Q(diff_EW[3]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[4]_i_1_n_0 ),
        .Q(diff_EW[4]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[5]_i_1_n_0 ),
        .Q(diff_EW[5]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[6]_i_1_n_0 ),
        .Q(diff_EW[6]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[7]_i_1_n_0 ),
        .Q(diff_EW[7]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[8]_i_1_n_0 ),
        .Q(diff_EW[8]),
        .R(1'b0));
  FDRE \phase_err.diff_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_EW[9]_i_1_n_0 ),
        .Q(diff_EW[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[0]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[0]),
        .O(\phase_err.diff_NE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[10]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[10]),
        .O(\phase_err.diff_NE[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[11]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[11]),
        .O(\phase_err.diff_NE[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[12]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[12]),
        .O(\phase_err.diff_NE[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[13]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[13]),
        .O(\phase_err.diff_NE[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[14]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[14]),
        .O(\phase_err.diff_NE[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[15]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[15]),
        .O(\phase_err.diff_NE[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[16]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[16]),
        .O(\phase_err.diff_NE[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[17]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[17]),
        .O(\phase_err.diff_NE[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[18]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[18]),
        .O(\phase_err.diff_NE[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[1]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[1]),
        .O(\phase_err.diff_NE[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[2]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[2]),
        .O(\phase_err.diff_NE[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[3]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[3]),
        .O(\phase_err.diff_NE[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[4]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[4]),
        .O(\phase_err.diff_NE[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[5]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[5]),
        .O(\phase_err.diff_NE[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[6]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[6]),
        .O(\phase_err.diff_NE[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[7]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[7]),
        .O(\phase_err.diff_NE[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[8]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[8]),
        .O(\phase_err.diff_NE[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_NE[9]_i_1 
       (.I0(raw_diff_NE[19]),
        .I1(raw_diff_NE[9]),
        .O(\phase_err.diff_NE[9]_i_1_n_0 ));
  FDRE \phase_err.diff_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[0]_i_1_n_0 ),
        .Q(diff_NE[0]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[10]_i_1_n_0 ),
        .Q(diff_NE[10]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[11]_i_1_n_0 ),
        .Q(diff_NE[11]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[12]_i_1_n_0 ),
        .Q(diff_NE[12]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[13]_i_1_n_0 ),
        .Q(diff_NE[13]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[14]_i_1_n_0 ),
        .Q(diff_NE[14]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[15]_i_1_n_0 ),
        .Q(diff_NE[15]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[16]_i_1_n_0 ),
        .Q(diff_NE[16]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[17]_i_1_n_0 ),
        .Q(diff_NE[17]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[18]_i_1_n_0 ),
        .Q(diff_NE[18]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[1]_i_1_n_0 ),
        .Q(diff_NE[1]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[2]_i_1_n_0 ),
        .Q(diff_NE[2]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[3]_i_1_n_0 ),
        .Q(diff_NE[3]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[4]_i_1_n_0 ),
        .Q(diff_NE[4]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[5]_i_1_n_0 ),
        .Q(diff_NE[5]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[6]_i_1_n_0 ),
        .Q(diff_NE[6]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[7]_i_1_n_0 ),
        .Q(diff_NE[7]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[8]_i_1_n_0 ),
        .Q(diff_NE[8]),
        .R(1'b0));
  FDRE \phase_err.diff_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_NE[9]_i_1_n_0 ),
        .Q(diff_NE[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[0]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[0]),
        .O(\phase_err.diff_WN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[10]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[10]),
        .O(\phase_err.diff_WN[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[11]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[11]),
        .O(\phase_err.diff_WN[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[12]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[12]),
        .O(\phase_err.diff_WN[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[13]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[13]),
        .O(\phase_err.diff_WN[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[14]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[14]),
        .O(\phase_err.diff_WN[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[15]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[15]),
        .O(\phase_err.diff_WN[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[16]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[16]),
        .O(\phase_err.diff_WN[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[17]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[17]),
        .O(\phase_err.diff_WN[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[18]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[18]),
        .O(\phase_err.diff_WN[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[1]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[1]),
        .O(\phase_err.diff_WN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[2]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[2]),
        .O(\phase_err.diff_WN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[3]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[3]),
        .O(\phase_err.diff_WN[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[4]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[4]),
        .O(\phase_err.diff_WN[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[5]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[5]),
        .O(\phase_err.diff_WN[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[6]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[6]),
        .O(\phase_err.diff_WN[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[7]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[7]),
        .O(\phase_err.diff_WN[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[8]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[8]),
        .O(\phase_err.diff_WN[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.diff_WN[9]_i_1 
       (.I0(raw_diff_WN[19]),
        .I1(raw_diff_WN[9]),
        .O(\phase_err.diff_WN[9]_i_1_n_0 ));
  FDRE \phase_err.diff_WN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[0]_i_1_n_0 ),
        .Q(diff_WN[0]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[10]_i_1_n_0 ),
        .Q(diff_WN[10]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[11]_i_1_n_0 ),
        .Q(diff_WN[11]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[12]_i_1_n_0 ),
        .Q(diff_WN[12]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[13]_i_1_n_0 ),
        .Q(diff_WN[13]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[14]_i_1_n_0 ),
        .Q(diff_WN[14]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[15]_i_1_n_0 ),
        .Q(diff_WN[15]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[16]_i_1_n_0 ),
        .Q(diff_WN[16]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[17]_i_1_n_0 ),
        .Q(diff_WN[17]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[18]_i_1_n_0 ),
        .Q(diff_WN[18]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[1]_i_1_n_0 ),
        .Q(diff_WN[1]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[2]_i_1_n_0 ),
        .Q(diff_WN[2]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[3]_i_1_n_0 ),
        .Q(diff_WN[3]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[4]_i_1_n_0 ),
        .Q(diff_WN[4]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[5]_i_1_n_0 ),
        .Q(diff_WN[5]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[6]_i_1_n_0 ),
        .Q(diff_WN[6]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[7]_i_1_n_0 ),
        .Q(diff_WN[7]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[8]_i_1_n_0 ),
        .Q(diff_WN[8]),
        .R(1'b0));
  FDRE \phase_err.diff_WN_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.diff_WN[9]_i_1_n_0 ),
        .Q(diff_WN[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[0]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [0]),
        .Q(\morlet_to_phase_env.env_reg[14] [0]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[10]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [10]),
        .Q(\morlet_to_phase_env.env_reg[14] [10]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[11]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [11]),
        .Q(\morlet_to_phase_env.env_reg[14] [11]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[12]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [12]),
        .Q(\morlet_to_phase_env.env_reg[14] [12]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[13]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [13]),
        .Q(\morlet_to_phase_env.env_reg[14] [13]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[14]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [14]),
        .Q(\morlet_to_phase_env.env_reg[14] [14]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[1]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [1]),
        .Q(\morlet_to_phase_env.env_reg[14] [1]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[2]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [2]),
        .Q(\morlet_to_phase_env.env_reg[14] [2]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[3]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [3]),
        .Q(\morlet_to_phase_env.env_reg[14] [3]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[4]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [4]),
        .Q(\morlet_to_phase_env.env_reg[14] [4]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[5]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [5]),
        .Q(\morlet_to_phase_env.env_reg[14] [5]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[6]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [6]),
        .Q(\morlet_to_phase_env.env_reg[14] [6]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[7]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [7]),
        .Q(\morlet_to_phase_env.env_reg[14] [7]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[8]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [8]),
        .Q(\morlet_to_phase_env.env_reg[14] [8]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_E_reg[9]_srl4 " *) 
  SRL16E \phase_err.env_out_E_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_E_reg[14] [9]),
        .Q(\morlet_to_phase_env.env_reg[14] [9]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[0]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [0]),
        .Q(D[0]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[10]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [10]),
        .Q(D[10]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[11]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [11]),
        .Q(D[11]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[12]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [12]),
        .Q(D[12]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[13]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [13]),
        .Q(D[13]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[14]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [14]),
        .Q(D[14]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[1]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [1]),
        .Q(D[1]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[2]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [2]),
        .Q(D[2]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[3]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [3]),
        .Q(D[3]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[4]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [4]),
        .Q(D[4]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[5]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [5]),
        .Q(D[5]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[6]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [6]),
        .Q(D[6]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[7]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [7]),
        .Q(D[7]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[8]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [8]),
        .Q(D[8]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_N_reg[9]_srl4 " *) 
  SRL16E \phase_err.env_out_N_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_N_reg[14] [9]),
        .Q(D[9]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[0]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [0]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [0]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[10]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [10]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [10]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[11]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [11]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [11]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[12]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [12]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [12]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[13]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [13]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [13]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[14]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [14]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [14]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[1]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [1]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [1]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[2]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [2]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [2]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[3]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [3]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [3]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[4]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [4]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [4]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[5]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [5]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [5]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[6]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [6]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [6]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[7]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [7]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [7]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[8]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [8]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [8]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.env_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.env_out_W_reg[9]_srl4 " *) 
  SRL16E \phase_err.env_out_W_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.env_W_reg[14] [9]),
        .Q(\morlet_to_phase_env.env_reg[14]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[0]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[0] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[10]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[10] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFE)) 
    \phase_err.err_EW[11]_i_1 
       (.I0(\phase_err.err_EW[11]_i_3_n_0 ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .I2(\phase_err.raw_err_EW_reg_n_0_[14] ),
        .I3(\phase_err.raw_err_EW_reg_n_0_[13] ),
        .O(\phase_err.err_EW[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[11]_i_2 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[11] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \phase_err.err_EW[11]_i_3 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[16] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[15] ),
        .I2(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .I3(\phase_err.raw_err_EW_reg_n_0_[18] ),
        .I4(\phase_err.raw_err_EW_reg_n_0_[17] ),
        .O(\phase_err.err_EW[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[1]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[1] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[2]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[2] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[3]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[3] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[4]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[4] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[5]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[5] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[6]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[6] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[7]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[7] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[8]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[8] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_EW[9]_i_1 
       (.I0(\phase_err.raw_err_EW_reg_n_0_[9] ),
        .I1(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .O(\phase_err.err_EW[9]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[0]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [0]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[10]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [10]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[11]_i_2_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [11]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[1]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [1]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[2]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [2]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[3]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [3]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[4]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [4]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[5]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [5]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[6]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [6]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[7]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [7]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[8]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [8]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  FDSE \phase_err.err_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_EW[9]_i_1_n_0 ),
        .Q(\phase_err.err_EW_reg[11]_0 [9]),
        .S(\phase_err.err_EW[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[0]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[0] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[10]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[10] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFE)) 
    \phase_err.err_NE[11]_i_1 
       (.I0(\phase_err.err_NE[11]_i_3_n_0 ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .I2(\phase_err.raw_err_NE_reg_n_0_[14] ),
        .I3(\phase_err.raw_err_NE_reg_n_0_[13] ),
        .O(\phase_err.err_NE[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[11]_i_2 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[11] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \phase_err.err_NE[11]_i_3 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[16] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[15] ),
        .I2(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .I3(\phase_err.raw_err_NE_reg_n_0_[18] ),
        .I4(\phase_err.raw_err_NE_reg_n_0_[17] ),
        .O(\phase_err.err_NE[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[1]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[1] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[2]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[2] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[3]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[3] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[4]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[4] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[5]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[5] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[6]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[6] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[7]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[7] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[8]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[8] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_NE[9]_i_1 
       (.I0(\phase_err.raw_err_NE_reg_n_0_[9] ),
        .I1(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .O(\phase_err.err_NE[9]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[0]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [0]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[10]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [10]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[11]_i_2_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [11]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[1]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [1]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[2]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [2]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[3]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [3]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[4]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [4]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[5]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [5]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[6]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [6]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[7]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [7]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[8]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [8]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  FDSE \phase_err.err_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_NE[9]_i_1_n_0 ),
        .Q(\phase_err.err_NE_reg[11]_0 [9]),
        .S(\phase_err.err_NE[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[0]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[0] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[10]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[10] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFE)) 
    \phase_err.err_WN[11]_i_1 
       (.I0(\phase_err.err_WN[11]_i_3_n_0 ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .I2(\phase_err.raw_err_WN_reg_n_0_[14] ),
        .I3(\phase_err.raw_err_WN_reg_n_0_[13] ),
        .O(\phase_err.err_WN[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[11]_i_2 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[11] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \phase_err.err_WN[11]_i_3 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[16] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[15] ),
        .I2(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .I3(\phase_err.raw_err_WN_reg_n_0_[18] ),
        .I4(\phase_err.raw_err_WN_reg_n_0_[17] ),
        .O(\phase_err.err_WN[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[1]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[1] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[2]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[2] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[3]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[3] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[4]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[4] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[5]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[5] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[6]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[6] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[7]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[7] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[8]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[8] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_err.err_WN[9]_i_1 
       (.I0(\phase_err.raw_err_WN_reg_n_0_[9] ),
        .I1(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .O(\phase_err.err_WN[9]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[0]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [0]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[10]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [10]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[11]_i_2_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [11]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[1]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [1]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[2]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [2]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[3]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [3]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[4]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [4]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[5]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [5]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[6]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [6]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[7]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [7]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[8]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [8]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  FDSE \phase_err.err_WN_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase_err.err_WN[9]_i_1_n_0 ),
        .Q(\phase_err.err_WN_reg[11]_0 [9]),
        .S(\phase_err.err_WN[11]_i_1_n_0 ));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[0]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [0]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [0]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[10]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [10]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [10]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[11]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [11]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [11]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[12]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [12]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [12]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[13]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [13]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [13]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[14]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [14]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [14]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[15]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [15]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [15]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[16]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[16]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [16]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [16]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[17]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[17]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [17]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [17]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[18]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[18]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [18]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [18]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[19]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[19]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [19]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [19]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[1]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [1]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [1]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[2]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [2]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [2]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[3]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [3]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [3]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[4]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [4]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [4]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[5]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [5]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [5]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[6]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [6]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [6]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[7]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [7]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [7]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[8]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [8]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [8]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_E_reg[9]_srl4 " *) 
  SRL16E \phase_err.phase_out_E_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_E_reg[19] [9]),
        .Q(\morlet_to_phase_env.phase_reg[19]_0 [9]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[0]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[0]),
        .Q(\morlet_to_phase_env.phase_reg[19] [0]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[10]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[10]),
        .Q(\morlet_to_phase_env.phase_reg[19] [10]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[11]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[11]),
        .Q(\morlet_to_phase_env.phase_reg[19] [11]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[12]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[12]),
        .Q(\morlet_to_phase_env.phase_reg[19] [12]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[13]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[13]),
        .Q(\morlet_to_phase_env.phase_reg[19] [13]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[14]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[14]),
        .Q(\morlet_to_phase_env.phase_reg[19] [14]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[15]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[15]),
        .Q(\morlet_to_phase_env.phase_reg[19] [15]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[16]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[16]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[16]),
        .Q(\morlet_to_phase_env.phase_reg[19] [16]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[17]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[17]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[17]),
        .Q(\morlet_to_phase_env.phase_reg[19] [17]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[18]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[18]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[18]),
        .Q(\morlet_to_phase_env.phase_reg[19] [18]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[19]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[19]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[19]),
        .Q(\morlet_to_phase_env.phase_reg[19] [19]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[1]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[1]),
        .Q(\morlet_to_phase_env.phase_reg[19] [1]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[2]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[2]),
        .Q(\morlet_to_phase_env.phase_reg[19] [2]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[3]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[3]),
        .Q(\morlet_to_phase_env.phase_reg[19] [3]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[4]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[4]),
        .Q(\morlet_to_phase_env.phase_reg[19] [4]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[5]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[5]),
        .Q(\morlet_to_phase_env.phase_reg[19] [5]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[6]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[6]),
        .Q(\morlet_to_phase_env.phase_reg[19] [6]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[7]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[7]),
        .Q(\morlet_to_phase_env.phase_reg[19] [7]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[8]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[8]),
        .Q(\morlet_to_phase_env.phase_reg[19] [8]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_N_reg[9]_srl4 " *) 
  SRL16E \phase_err.phase_out_N_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[9]),
        .Q(\morlet_to_phase_env.phase_reg[19] [9]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[0]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [0]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [0]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[10]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [10]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [10]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[11]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [11]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [11]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[12]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [12]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [12]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[13]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [13]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [13]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[14]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [14]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [14]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[15]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [15]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [15]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[16]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[16]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [16]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [16]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[17]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[17]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [17]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [17]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[18]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[18]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [18]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [18]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[19]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[19]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [19]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [19]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[1]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [1]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [1]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[2]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [2]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [2]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[3]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [3]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [3]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[4]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [4]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [4]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[5]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [5]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [5]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[6]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [6]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [6]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[7]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [7]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [7]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[8]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [8]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [8]));
  (* srl_bus_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg " *) 
  (* srl_name = "inst/\\phase_err_i/phase_err.phase_out_W_reg[9]_srl4 " *) 
  SRL16E \phase_err.phase_out_W_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\freq_low_46.phase_W_reg[19] [9]),
        .Q(\morlet_to_phase_env.phase_reg[19]_1 [9]));
  FDRE \phase_err.prev_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[0]),
        .Q(prev_EW[0]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[10]),
        .Q(prev_EW[10]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[11]),
        .Q(prev_EW[11]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[12]),
        .Q(prev_EW[12]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[13]),
        .Q(prev_EW[13]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[14]),
        .Q(prev_EW[14]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[15]),
        .Q(prev_EW[15]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[16]),
        .Q(prev_EW[16]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[17]),
        .Q(prev_EW[17]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[18]),
        .Q(prev_EW[18]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[1]),
        .Q(prev_EW[1]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[2]),
        .Q(prev_EW[2]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[3]),
        .Q(prev_EW[3]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[4]),
        .Q(prev_EW[4]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[5]),
        .Q(prev_EW[5]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[6]),
        .Q(prev_EW[6]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[7]),
        .Q(prev_EW[7]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[8]),
        .Q(prev_EW[8]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_EW[9]),
        .Q(prev_EW[9]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_err.prev_NE[18]_i_1 
       (.I0(valid_2),
        .O(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[0]),
        .Q(prev_NE[0]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[10]),
        .Q(prev_NE[10]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[11]),
        .Q(prev_NE[11]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[12]),
        .Q(prev_NE[12]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[13]),
        .Q(prev_NE[13]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[14]),
        .Q(prev_NE[14]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[15]),
        .Q(prev_NE[15]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[16]),
        .Q(prev_NE[16]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[17]),
        .Q(prev_NE[17]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[18]),
        .Q(prev_NE[18]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[1]),
        .Q(prev_NE[1]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[2]),
        .Q(prev_NE[2]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[3]),
        .Q(prev_NE[3]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[4]),
        .Q(prev_NE[4]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[5]),
        .Q(prev_NE[5]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[6]),
        .Q(prev_NE[6]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[7]),
        .Q(prev_NE[7]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[8]),
        .Q(prev_NE[8]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_NE[9]),
        .Q(prev_NE[9]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[0]),
        .Q(prev_WN[0]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[10]),
        .Q(prev_WN[10]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[11]),
        .Q(prev_WN[11]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[12]),
        .Q(prev_WN[12]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[13]),
        .Q(prev_WN[13]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[14]),
        .Q(prev_WN[14]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[15]),
        .Q(prev_WN[15]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[16]),
        .Q(prev_WN[16]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[17]),
        .Q(prev_WN[17]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[18]),
        .Q(prev_WN[18]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[1]),
        .Q(prev_WN[1]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[2]),
        .Q(prev_WN[2]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[3]),
        .Q(prev_WN[3]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[4]),
        .Q(prev_WN[4]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[5]),
        .Q(prev_WN[5]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[6]),
        .Q(prev_WN[6]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[7]),
        .Q(prev_WN[7]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[8]),
        .Q(prev_WN[8]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.prev_WN_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_WN[9]),
        .Q(prev_WN[9]),
        .R(\phase_err.prev_NE[18]_i_1_n_0 ));
  FDRE \phase_err.raw_diff_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[0]),
        .Q(raw_diff_EW[0]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[10]),
        .Q(raw_diff_EW[10]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[11]),
        .Q(raw_diff_EW[11]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[12]),
        .Q(raw_diff_EW[12]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[13]),
        .Q(raw_diff_EW[13]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[14]),
        .Q(raw_diff_EW[14]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[15]),
        .Q(raw_diff_EW[15]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[16]),
        .Q(raw_diff_EW[16]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[17]),
        .Q(raw_diff_EW[17]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[18]),
        .Q(raw_diff_EW[18]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[19]),
        .Q(raw_diff_EW[19]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[1]),
        .Q(raw_diff_EW[1]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[2]),
        .Q(raw_diff_EW[2]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[3]),
        .Q(raw_diff_EW[3]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[4]),
        .Q(raw_diff_EW[4]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[5]),
        .Q(raw_diff_EW[5]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[6]),
        .Q(raw_diff_EW[6]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[7]),
        .Q(raw_diff_EW[7]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[8]),
        .Q(raw_diff_EW[8]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_EW01_out[9]),
        .Q(raw_diff_EW[9]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[0]),
        .Q(raw_diff_NE[0]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[10]),
        .Q(raw_diff_NE[10]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[11]),
        .Q(raw_diff_NE[11]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[12]),
        .Q(raw_diff_NE[12]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[13]),
        .Q(raw_diff_NE[13]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[14]),
        .Q(raw_diff_NE[14]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[15]),
        .Q(raw_diff_NE[15]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[16]),
        .Q(raw_diff_NE[16]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[17]),
        .Q(raw_diff_NE[17]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[18]),
        .Q(raw_diff_NE[18]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[19]),
        .Q(raw_diff_NE[19]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[1]),
        .Q(raw_diff_NE[1]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[2]),
        .Q(raw_diff_NE[2]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[3]),
        .Q(raw_diff_NE[3]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[4]),
        .Q(raw_diff_NE[4]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[5]),
        .Q(raw_diff_NE[5]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[6]),
        .Q(raw_diff_NE[6]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[7]),
        .Q(raw_diff_NE[7]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[8]),
        .Q(raw_diff_NE[8]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_NE02_out[9]),
        .Q(raw_diff_NE[9]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[0]),
        .Q(raw_diff_WN[0]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[10]),
        .Q(raw_diff_WN[10]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[11]),
        .Q(raw_diff_WN[11]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[12]),
        .Q(raw_diff_WN[12]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[13]),
        .Q(raw_diff_WN[13]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[14]),
        .Q(raw_diff_WN[14]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[15]),
        .Q(raw_diff_WN[15]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[16]),
        .Q(raw_diff_WN[16]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[17]),
        .Q(raw_diff_WN[17]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[18]),
        .Q(raw_diff_WN[18]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[19]),
        .Q(raw_diff_WN[19]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[1]),
        .Q(raw_diff_WN[1]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[2]),
        .Q(raw_diff_WN[2]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[3]),
        .Q(raw_diff_WN[3]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[4]),
        .Q(raw_diff_WN[4]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[5]),
        .Q(raw_diff_WN[5]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[6]),
        .Q(raw_diff_WN[6]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[7]),
        .Q(raw_diff_WN[7]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[8]),
        .Q(raw_diff_WN[8]),
        .R(1'b0));
  FDRE \phase_err.raw_diff_WN_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_diff_WN00_out[9]),
        .Q(raw_diff_WN[9]),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[0]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[10]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[11]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[12]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[13]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[14]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[15]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[16]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[17]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[18]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[1]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[2]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[3]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[4]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[5]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[6]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[7]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[8]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_EW01_out[9]),
        .Q(\phase_err.raw_err_EW_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[0]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[10]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[11]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[12]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[13]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[14]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[15]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[16]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[17]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[18]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[1]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[2]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[3]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[4]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[5]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[6]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[7]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[8]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_NE02_out[9]),
        .Q(\phase_err.raw_err_NE_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[0]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[10]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[11]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[12]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[13]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[14]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[15]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[16]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[17]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[18]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[1]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[2]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[3]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[4]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[5]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[6]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[7]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[8]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \phase_err.raw_err_WN_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(raw_err_WN00_out[9]),
        .Q(\phase_err.raw_err_WN_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \phase_err.valid_1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active0),
        .Q(valid_1),
        .R(1'b0));
  FDRE \phase_err.valid_2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(valid_1),
        .Q(valid_2),
        .R(1'b0));
  FDRE \phase_err.valid_3_reg 
       (.C(clk),
        .CE(1'b1),
        .D(valid_2),
        .Q(valid_3),
        .R(1'b0));
  FDRE \phase_err.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(valid_3),
        .Q(E),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_EW0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({raw_diff_EW0_carry_n_0,raw_diff_EW0_carry_n_1,raw_diff_EW0_carry_n_2,raw_diff_EW0_carry_n_3,raw_diff_EW0_carry_n_4,raw_diff_EW0_carry_n_5,raw_diff_EW0_carry_n_6,raw_diff_EW0_carry_n_7}),
        .DI(\freq_low_46.phase_E_reg[19] [7:0]),
        .O(raw_diff_EW01_out[7:0]),
        .S(\phase_err.raw_diff_EW_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_EW0_carry__0
       (.CI(raw_diff_EW0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({raw_diff_EW0_carry__0_n_0,raw_diff_EW0_carry__0_n_1,raw_diff_EW0_carry__0_n_2,raw_diff_EW0_carry__0_n_3,raw_diff_EW0_carry__0_n_4,raw_diff_EW0_carry__0_n_5,raw_diff_EW0_carry__0_n_6,raw_diff_EW0_carry__0_n_7}),
        .DI(\freq_low_46.phase_E_reg[19] [15:8]),
        .O(raw_diff_EW01_out[15:8]),
        .S(\phase_err.raw_diff_EW_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_EW0_carry__1
       (.CI(raw_diff_EW0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raw_diff_EW0_carry__1_CO_UNCONNECTED[7:3],raw_diff_EW0_carry__1_n_5,raw_diff_EW0_carry__1_n_6,raw_diff_EW0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\freq_low_46.phase_E_reg[19] [18:16]}),
        .O({NLW_raw_diff_EW0_carry__1_O_UNCONNECTED[7:4],raw_diff_EW01_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\phase_err.raw_diff_EW_reg[19]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_NE0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({raw_diff_NE0_carry_n_0,raw_diff_NE0_carry_n_1,raw_diff_NE0_carry_n_2,raw_diff_NE0_carry_n_3,raw_diff_NE0_carry_n_4,raw_diff_NE0_carry_n_5,raw_diff_NE0_carry_n_6,raw_diff_NE0_carry_n_7}),
        .DI(Q[7:0]),
        .O(raw_diff_NE02_out[7:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_NE0_carry__0
       (.CI(raw_diff_NE0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({raw_diff_NE0_carry__0_n_0,raw_diff_NE0_carry__0_n_1,raw_diff_NE0_carry__0_n_2,raw_diff_NE0_carry__0_n_3,raw_diff_NE0_carry__0_n_4,raw_diff_NE0_carry__0_n_5,raw_diff_NE0_carry__0_n_6,raw_diff_NE0_carry__0_n_7}),
        .DI(Q[15:8]),
        .O(raw_diff_NE02_out[15:8]),
        .S(\phase_err.raw_diff_NE_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_NE0_carry__1
       (.CI(raw_diff_NE0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raw_diff_NE0_carry__1_CO_UNCONNECTED[7:3],raw_diff_NE0_carry__1_n_5,raw_diff_NE0_carry__1_n_6,raw_diff_NE0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,Q[18:16]}),
        .O({NLW_raw_diff_NE0_carry__1_O_UNCONNECTED[7:4],raw_diff_NE02_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\phase_err.raw_diff_NE_reg[19]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_WN0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({raw_diff_WN0_carry_n_0,raw_diff_WN0_carry_n_1,raw_diff_WN0_carry_n_2,raw_diff_WN0_carry_n_3,raw_diff_WN0_carry_n_4,raw_diff_WN0_carry_n_5,raw_diff_WN0_carry_n_6,raw_diff_WN0_carry_n_7}),
        .DI(\freq_low_46.phase_W_reg[19] [7:0]),
        .O(raw_diff_WN00_out[7:0]),
        .S(\phase_err.raw_diff_WN_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_WN0_carry__0
       (.CI(raw_diff_WN0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({raw_diff_WN0_carry__0_n_0,raw_diff_WN0_carry__0_n_1,raw_diff_WN0_carry__0_n_2,raw_diff_WN0_carry__0_n_3,raw_diff_WN0_carry__0_n_4,raw_diff_WN0_carry__0_n_5,raw_diff_WN0_carry__0_n_6,raw_diff_WN0_carry__0_n_7}),
        .DI(\freq_low_46.phase_W_reg[19] [15:8]),
        .O(raw_diff_WN00_out[15:8]),
        .S(\phase_err.raw_diff_WN_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_diff_WN0_carry__1
       (.CI(raw_diff_WN0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raw_diff_WN0_carry__1_CO_UNCONNECTED[7:3],raw_diff_WN0_carry__1_n_5,raw_diff_WN0_carry__1_n_6,raw_diff_WN0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\freq_low_46.phase_W_reg[19] [18:16]}),
        .O({NLW_raw_diff_WN0_carry__1_O_UNCONNECTED[7:4],raw_diff_WN00_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\phase_err.raw_diff_WN_reg[19]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_EW0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({raw_err_EW0_carry_n_0,raw_err_EW0_carry_n_1,raw_err_EW0_carry_n_2,raw_err_EW0_carry_n_3,raw_err_EW0_carry_n_4,raw_err_EW0_carry_n_5,raw_err_EW0_carry_n_6,raw_err_EW0_carry_n_7}),
        .DI(diff_EW[7:0]),
        .O(raw_err_EW01_out[7:0]),
        .S({raw_err_EW0_carry_i_1_n_0,raw_err_EW0_carry_i_2_n_0,raw_err_EW0_carry_i_3_n_0,raw_err_EW0_carry_i_4_n_0,raw_err_EW0_carry_i_5_n_0,raw_err_EW0_carry_i_6_n_0,raw_err_EW0_carry_i_7_n_0,raw_err_EW0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_EW0_carry__0
       (.CI(raw_err_EW0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({raw_err_EW0_carry__0_n_0,raw_err_EW0_carry__0_n_1,raw_err_EW0_carry__0_n_2,raw_err_EW0_carry__0_n_3,raw_err_EW0_carry__0_n_4,raw_err_EW0_carry__0_n_5,raw_err_EW0_carry__0_n_6,raw_err_EW0_carry__0_n_7}),
        .DI(diff_EW[15:8]),
        .O(raw_err_EW01_out[15:8]),
        .S({raw_err_EW0_carry__0_i_1_n_0,raw_err_EW0_carry__0_i_2_n_0,raw_err_EW0_carry__0_i_3_n_0,raw_err_EW0_carry__0_i_4_n_0,raw_err_EW0_carry__0_i_5_n_0,raw_err_EW0_carry__0_i_6_n_0,raw_err_EW0_carry__0_i_7_n_0,raw_err_EW0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_1
       (.I0(diff_EW[15]),
        .I1(prev_EW[15]),
        .O(raw_err_EW0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_2
       (.I0(diff_EW[14]),
        .I1(prev_EW[14]),
        .O(raw_err_EW0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_3
       (.I0(diff_EW[13]),
        .I1(prev_EW[13]),
        .O(raw_err_EW0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_4
       (.I0(diff_EW[12]),
        .I1(prev_EW[12]),
        .O(raw_err_EW0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_5
       (.I0(diff_EW[11]),
        .I1(prev_EW[11]),
        .O(raw_err_EW0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_6
       (.I0(diff_EW[10]),
        .I1(prev_EW[10]),
        .O(raw_err_EW0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_7
       (.I0(diff_EW[9]),
        .I1(prev_EW[9]),
        .O(raw_err_EW0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__0_i_8
       (.I0(diff_EW[8]),
        .I1(prev_EW[8]),
        .O(raw_err_EW0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_EW0_carry__1
       (.CI(raw_err_EW0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raw_err_EW0_carry__1_CO_UNCONNECTED[7:2],raw_err_EW0_carry__1_n_6,raw_err_EW0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,diff_EW[17:16]}),
        .O({NLW_raw_err_EW0_carry__1_O_UNCONNECTED[7:3],raw_err_EW01_out[18:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,raw_err_EW0_carry__1_i_1_n_0,raw_err_EW0_carry__1_i_2_n_0,raw_err_EW0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__1_i_1
       (.I0(diff_EW[18]),
        .I1(prev_EW[18]),
        .O(raw_err_EW0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__1_i_2
       (.I0(diff_EW[17]),
        .I1(prev_EW[17]),
        .O(raw_err_EW0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry__1_i_3
       (.I0(diff_EW[16]),
        .I1(prev_EW[16]),
        .O(raw_err_EW0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_1
       (.I0(diff_EW[7]),
        .I1(prev_EW[7]),
        .O(raw_err_EW0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_2
       (.I0(diff_EW[6]),
        .I1(prev_EW[6]),
        .O(raw_err_EW0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_3
       (.I0(diff_EW[5]),
        .I1(prev_EW[5]),
        .O(raw_err_EW0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_4
       (.I0(diff_EW[4]),
        .I1(prev_EW[4]),
        .O(raw_err_EW0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_5
       (.I0(diff_EW[3]),
        .I1(prev_EW[3]),
        .O(raw_err_EW0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_6
       (.I0(diff_EW[2]),
        .I1(prev_EW[2]),
        .O(raw_err_EW0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_7
       (.I0(diff_EW[1]),
        .I1(prev_EW[1]),
        .O(raw_err_EW0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_EW0_carry_i_8
       (.I0(diff_EW[0]),
        .I1(prev_EW[0]),
        .O(raw_err_EW0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_NE0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({raw_err_NE0_carry_n_0,raw_err_NE0_carry_n_1,raw_err_NE0_carry_n_2,raw_err_NE0_carry_n_3,raw_err_NE0_carry_n_4,raw_err_NE0_carry_n_5,raw_err_NE0_carry_n_6,raw_err_NE0_carry_n_7}),
        .DI(diff_NE[7:0]),
        .O(raw_err_NE02_out[7:0]),
        .S({raw_err_NE0_carry_i_1_n_0,raw_err_NE0_carry_i_2_n_0,raw_err_NE0_carry_i_3_n_0,raw_err_NE0_carry_i_4_n_0,raw_err_NE0_carry_i_5_n_0,raw_err_NE0_carry_i_6_n_0,raw_err_NE0_carry_i_7_n_0,raw_err_NE0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_NE0_carry__0
       (.CI(raw_err_NE0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({raw_err_NE0_carry__0_n_0,raw_err_NE0_carry__0_n_1,raw_err_NE0_carry__0_n_2,raw_err_NE0_carry__0_n_3,raw_err_NE0_carry__0_n_4,raw_err_NE0_carry__0_n_5,raw_err_NE0_carry__0_n_6,raw_err_NE0_carry__0_n_7}),
        .DI(diff_NE[15:8]),
        .O(raw_err_NE02_out[15:8]),
        .S({raw_err_NE0_carry__0_i_1_n_0,raw_err_NE0_carry__0_i_2_n_0,raw_err_NE0_carry__0_i_3_n_0,raw_err_NE0_carry__0_i_4_n_0,raw_err_NE0_carry__0_i_5_n_0,raw_err_NE0_carry__0_i_6_n_0,raw_err_NE0_carry__0_i_7_n_0,raw_err_NE0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_1
       (.I0(diff_NE[15]),
        .I1(prev_NE[15]),
        .O(raw_err_NE0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_2
       (.I0(diff_NE[14]),
        .I1(prev_NE[14]),
        .O(raw_err_NE0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_3
       (.I0(diff_NE[13]),
        .I1(prev_NE[13]),
        .O(raw_err_NE0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_4
       (.I0(diff_NE[12]),
        .I1(prev_NE[12]),
        .O(raw_err_NE0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_5
       (.I0(diff_NE[11]),
        .I1(prev_NE[11]),
        .O(raw_err_NE0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_6
       (.I0(diff_NE[10]),
        .I1(prev_NE[10]),
        .O(raw_err_NE0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_7
       (.I0(diff_NE[9]),
        .I1(prev_NE[9]),
        .O(raw_err_NE0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__0_i_8
       (.I0(diff_NE[8]),
        .I1(prev_NE[8]),
        .O(raw_err_NE0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_NE0_carry__1
       (.CI(raw_err_NE0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raw_err_NE0_carry__1_CO_UNCONNECTED[7:2],raw_err_NE0_carry__1_n_6,raw_err_NE0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,diff_NE[17:16]}),
        .O({NLW_raw_err_NE0_carry__1_O_UNCONNECTED[7:3],raw_err_NE02_out[18:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,raw_err_NE0_carry__1_i_1_n_0,raw_err_NE0_carry__1_i_2_n_0,raw_err_NE0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__1_i_1
       (.I0(diff_NE[18]),
        .I1(prev_NE[18]),
        .O(raw_err_NE0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__1_i_2
       (.I0(diff_NE[17]),
        .I1(prev_NE[17]),
        .O(raw_err_NE0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry__1_i_3
       (.I0(diff_NE[16]),
        .I1(prev_NE[16]),
        .O(raw_err_NE0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_1
       (.I0(diff_NE[7]),
        .I1(prev_NE[7]),
        .O(raw_err_NE0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_2
       (.I0(diff_NE[6]),
        .I1(prev_NE[6]),
        .O(raw_err_NE0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_3
       (.I0(diff_NE[5]),
        .I1(prev_NE[5]),
        .O(raw_err_NE0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_4
       (.I0(diff_NE[4]),
        .I1(prev_NE[4]),
        .O(raw_err_NE0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_5
       (.I0(diff_NE[3]),
        .I1(prev_NE[3]),
        .O(raw_err_NE0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_6
       (.I0(diff_NE[2]),
        .I1(prev_NE[2]),
        .O(raw_err_NE0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_7
       (.I0(diff_NE[1]),
        .I1(prev_NE[1]),
        .O(raw_err_NE0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_NE0_carry_i_8
       (.I0(diff_NE[0]),
        .I1(prev_NE[0]),
        .O(raw_err_NE0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_WN0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({raw_err_WN0_carry_n_0,raw_err_WN0_carry_n_1,raw_err_WN0_carry_n_2,raw_err_WN0_carry_n_3,raw_err_WN0_carry_n_4,raw_err_WN0_carry_n_5,raw_err_WN0_carry_n_6,raw_err_WN0_carry_n_7}),
        .DI(diff_WN[7:0]),
        .O(raw_err_WN00_out[7:0]),
        .S({raw_err_WN0_carry_i_1_n_0,raw_err_WN0_carry_i_2_n_0,raw_err_WN0_carry_i_3_n_0,raw_err_WN0_carry_i_4_n_0,raw_err_WN0_carry_i_5_n_0,raw_err_WN0_carry_i_6_n_0,raw_err_WN0_carry_i_7_n_0,raw_err_WN0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_WN0_carry__0
       (.CI(raw_err_WN0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({raw_err_WN0_carry__0_n_0,raw_err_WN0_carry__0_n_1,raw_err_WN0_carry__0_n_2,raw_err_WN0_carry__0_n_3,raw_err_WN0_carry__0_n_4,raw_err_WN0_carry__0_n_5,raw_err_WN0_carry__0_n_6,raw_err_WN0_carry__0_n_7}),
        .DI(diff_WN[15:8]),
        .O(raw_err_WN00_out[15:8]),
        .S({raw_err_WN0_carry__0_i_1_n_0,raw_err_WN0_carry__0_i_2_n_0,raw_err_WN0_carry__0_i_3_n_0,raw_err_WN0_carry__0_i_4_n_0,raw_err_WN0_carry__0_i_5_n_0,raw_err_WN0_carry__0_i_6_n_0,raw_err_WN0_carry__0_i_7_n_0,raw_err_WN0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_1
       (.I0(diff_WN[15]),
        .I1(prev_WN[15]),
        .O(raw_err_WN0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_2
       (.I0(diff_WN[14]),
        .I1(prev_WN[14]),
        .O(raw_err_WN0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_3
       (.I0(diff_WN[13]),
        .I1(prev_WN[13]),
        .O(raw_err_WN0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_4
       (.I0(diff_WN[12]),
        .I1(prev_WN[12]),
        .O(raw_err_WN0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_5
       (.I0(diff_WN[11]),
        .I1(prev_WN[11]),
        .O(raw_err_WN0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_6
       (.I0(diff_WN[10]),
        .I1(prev_WN[10]),
        .O(raw_err_WN0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_7
       (.I0(diff_WN[9]),
        .I1(prev_WN[9]),
        .O(raw_err_WN0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__0_i_8
       (.I0(diff_WN[8]),
        .I1(prev_WN[8]),
        .O(raw_err_WN0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raw_err_WN0_carry__1
       (.CI(raw_err_WN0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raw_err_WN0_carry__1_CO_UNCONNECTED[7:2],raw_err_WN0_carry__1_n_6,raw_err_WN0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,diff_WN[17:16]}),
        .O({NLW_raw_err_WN0_carry__1_O_UNCONNECTED[7:3],raw_err_WN00_out[18:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,raw_err_WN0_carry__1_i_1_n_0,raw_err_WN0_carry__1_i_2_n_0,raw_err_WN0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__1_i_1
       (.I0(diff_WN[18]),
        .I1(prev_WN[18]),
        .O(raw_err_WN0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__1_i_2
       (.I0(diff_WN[17]),
        .I1(prev_WN[17]),
        .O(raw_err_WN0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry__1_i_3
       (.I0(diff_WN[16]),
        .I1(prev_WN[16]),
        .O(raw_err_WN0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_1
       (.I0(diff_WN[7]),
        .I1(prev_WN[7]),
        .O(raw_err_WN0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_2
       (.I0(diff_WN[6]),
        .I1(prev_WN[6]),
        .O(raw_err_WN0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_3
       (.I0(diff_WN[5]),
        .I1(prev_WN[5]),
        .O(raw_err_WN0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_4
       (.I0(diff_WN[4]),
        .I1(prev_WN[4]),
        .O(raw_err_WN0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_5
       (.I0(diff_WN[3]),
        .I1(prev_WN[3]),
        .O(raw_err_WN0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_6
       (.I0(diff_WN[2]),
        .I1(prev_WN[2]),
        .O(raw_err_WN0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_7
       (.I0(diff_WN[1]),
        .I1(prev_WN[1]),
        .O(raw_err_WN0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_err_WN0_carry_i_8
       (.I0(diff_WN[0]),
        .I1(prev_WN[0]),
        .O(raw_err_WN0_carry_i_8_n_0));
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
