// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Dec 10 23:28:42 2025
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
   (deci_clk,
    deci_fifo_wr,
    deci_fifo_data,
    clk,
    reset,
    freq_fifo_valid,
    freq_fifo_data,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 deci_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME deci_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input deci_clk;
  input deci_fifo_wr;
  input deci_fifo_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input freq_fifo_valid;
  input [47:0]freq_fifo_data;
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
  wire deci_clk;
  wire deci_fifo_data;
  wire deci_fifo_wr;
  wire [19:0]diff_E;
  wire [19:0]diff_N;
  wire [19:0]diff_W;
  wire [15:0]env_E;
  wire [15:0]env_N;
  wire [15:0]env_W;
  wire [47:0]freq_fifo_data;
  wire freq_fifo_valid;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire reset;
  wire valid;

  ps_freq_low_46_0_0_freq_low_46 inst
       (.clk(clk),
        .deci_clk(deci_clk),
        .deci_fifo_data(deci_fifo_data),
        .deci_fifo_wr(deci_fifo_wr),
        .diff_E(diff_E),
        .diff_N(diff_N),
        .diff_W(diff_W),
        .env_E(env_E),
        .env_N(env_N),
        .env_W(env_W),
        .freq_fifo_data(freq_fifo_data),
        .freq_fifo_valid(freq_fifo_valid),
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

(* CHECK_LICENSE_TYPE = "fifo_raw_low,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_low" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_freq_low_46_0_0_fifo_raw_low
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [191:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [191:0]dout;
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

(* ORIG_REF_NAME = "freq_low_46" *) (* keep_hierarchy = "soft" *) 
module ps_freq_low_46_0_0_freq_low_46
   (deci_clk,
    deci_fifo_wr,
    deci_fifo_data,
    clk,
    reset,
    freq_fifo_valid,
    freq_fifo_data,
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
  input deci_clk;
  input deci_fifo_wr;
  input deci_fifo_data;
  input clk;
  input reset;
  input freq_fifo_valid;
  input [47:0]freq_fifo_data;
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

  wire [15:0]E;
  wire [15:0]N;
  wire [15:0]W;
  wire clk;
  wire deci_clk;
  wire deci_fifo_data;
  wire deci_fifo_wr;
  (* MARK_DEBUG *) wire [19:0]diff_E;
  (* MARK_DEBUG *) wire [19:0]diff_N;
  (* MARK_DEBUG *) wire [19:0]diff_W;
  wire [15:0]env;
  (* MARK_DEBUG *) wire [15:0]env_E;
  (* MARK_DEBUG *) wire [15:0]env_N;
  (* MARK_DEBUG *) wire [15:0]env_W;
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
  wire freq_E_i_n_4;
  wire freq_E_i_n_5;
  wire freq_E_i_n_6;
  wire freq_E_i_n_7;
  wire freq_E_i_n_8;
  wire freq_E_i_n_9;
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
  wire freq_W_i_n_4;
  wire freq_W_i_n_5;
  wire freq_W_i_n_6;
  wire freq_W_i_n_7;
  wire freq_W_i_n_8;
  wire freq_W_i_n_9;
  wire [47:0]freq_fifo_data;
  wire freq_fifo_valid;
  wire \freq_low_46.curr_delay[0]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_10_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_11_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_12_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_13_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_14_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_15_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_1_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_2_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_4_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_5_n_0 ;
  wire \freq_low_46.curr_delay[7]_i_6_n_0 ;
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
  wire [19:0]\freq_low_46.diff_E_reg01_out ;
  wire [19:0]\freq_low_46.diff_N_reg02_out ;
  wire [19:0]\freq_low_46.diff_W_reg00_out ;
  wire \freq_low_46.env_N_reg0 ;
  wire \freq_low_46.morlet_active_i_1_n_0 ;
  wire \freq_low_46.morlet_active_reg_n_0 ;
  wire \freq_low_46.raw_fifo_rd_i_1_n_0 ;
  wire \freq_low_46.start_delay[7]_i_1_n_0 ;
  wire \freq_low_46.start_delay[7]_i_3_n_0 ;
  wire [7:0]\freq_low_46.start_delay_reg ;
  wire [7:0]p_0_in;
  wire [19:0]phase;
  (* MARK_DEBUG *) wire [19:0]phase_E;
  (* MARK_DEBUG *) wire [19:0]phase_N;
  (* MARK_DEBUG *) wire [19:0]phase_W;
  wire [19:0]prevE;
  wire [19:0]prevN;
  wire [19:0]prevW;
  (* MARK_DEBUG *) wire [191:0]raw_fifo_data;
  (* MARK_DEBUG *) wire raw_fifo_empty;
  (* MARK_DEBUG *) wire raw_fifo_rd;
  wire reset;
  (* MARK_DEBUG *) wire valid;
  wire validE;
  wire validW;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
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

  (* CHECK_LICENSE_TYPE = "fifo_raw_low,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_fifo_raw_low fifo_raw_i
       (.din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,deci_fifo_data}),
        .dout(raw_fifo_data),
        .empty(raw_fifo_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(raw_fifo_rd),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(deci_clk),
        .wr_en(deci_fifo_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
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
       (.D(\freq_low_46.diff_E_reg01_out ),
        .Q({freq_E_i_n_1,freq_E_i_n_2,freq_E_i_n_3,freq_E_i_n_4,freq_E_i_n_5,freq_E_i_n_6,freq_E_i_n_7,freq_E_i_n_8,freq_E_i_n_9,freq_E_i_n_10,freq_E_i_n_11,freq_E_i_n_12,freq_E_i_n_13,freq_E_i_n_14,freq_E_i_n_15,freq_E_i_n_16,freq_E_i_n_17,freq_E_i_n_18,freq_E_i_n_19,freq_E_i_n_20}),
        .clk(clk),
        .\freq_low_46.diff_E_reg[19] (prevE),
        .\morlet_to_phase_env.env_reg[15]_0 ({freq_E_i_n_21,freq_E_i_n_22,freq_E_i_n_23,freq_E_i_n_24,freq_E_i_n_25,freq_E_i_n_26,freq_E_i_n_27,freq_E_i_n_28,freq_E_i_n_29,freq_E_i_n_30,freq_E_i_n_31,freq_E_i_n_32,freq_E_i_n_33,freq_E_i_n_34,freq_E_i_n_35,freq_E_i_n_36}),
        .\morlet_to_phase_env.phase_reg[19]_0 (\freq_low_46.morlet_active_reg_n_0 ),
        .s_axis_cartesian_tdata({fir_im_E,fir_re_E}),
        .validE(validE));
  ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1 freq_N_i
       (.D(\freq_low_46.diff_N_reg02_out ),
        .E(\freq_low_46.env_N_reg0 ),
        .Q(phase),
        .clk(clk),
        .\freq_low_46.diff_N_reg[19] (prevN),
        .\morlet_to_phase_env.env_reg[15]_0 (env),
        .\morlet_to_phase_env.phase_reg[19]_0 (\freq_low_46.morlet_active_reg_n_0 ),
        .s_axis_cartesian_tdata({fir_im_N,fir_re_N}),
        .validE(validE),
        .validW(validW));
  ps_freq_low_46_0_0_morlet_to_phase_env freq_W_i
       (.D(\freq_low_46.diff_W_reg00_out ),
        .Q({freq_W_i_n_1,freq_W_i_n_2,freq_W_i_n_3,freq_W_i_n_4,freq_W_i_n_5,freq_W_i_n_6,freq_W_i_n_7,freq_W_i_n_8,freq_W_i_n_9,freq_W_i_n_10,freq_W_i_n_11,freq_W_i_n_12,freq_W_i_n_13,freq_W_i_n_14,freq_W_i_n_15,freq_W_i_n_16,freq_W_i_n_17,freq_W_i_n_18,freq_W_i_n_19,freq_W_i_n_20}),
        .clk(clk),
        .\freq_low_46.diff_W_reg[19] (prevW),
        .\morlet_to_phase_env.env_reg[15]_0 ({freq_W_i_n_21,freq_W_i_n_22,freq_W_i_n_23,freq_W_i_n_24,freq_W_i_n_25,freq_W_i_n_26,freq_W_i_n_27,freq_W_i_n_28,freq_W_i_n_29,freq_W_i_n_30,freq_W_i_n_31,freq_W_i_n_32,freq_W_i_n_33,freq_W_i_n_34,freq_W_i_n_35,freq_W_i_n_36}),
        .\morlet_to_phase_env.phase_reg[19]_0 (\freq_low_46.morlet_active_reg_n_0 ),
        .s_axis_cartesian_tdata({fir_im_W,fir_re_W}),
        .validW(validW));
  FDRE \freq_low_46.E_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[16]),
        .Q(E[0]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[26]),
        .Q(E[10]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[27]),
        .Q(E[11]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[28]),
        .Q(E[12]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[29]),
        .Q(E[13]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[30]),
        .Q(E[14]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[31]),
        .Q(E[15]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[17]),
        .Q(E[1]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[18]),
        .Q(E[2]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[19]),
        .Q(E[3]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[20]),
        .Q(E[4]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[21]),
        .Q(E[5]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[22]),
        .Q(E[6]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[23]),
        .Q(E[7]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[24]),
        .Q(E[8]),
        .R(1'b0));
  FDRE \freq_low_46.E_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[25]),
        .Q(E[9]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[0]),
        .Q(N[0]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[10]),
        .Q(N[10]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[11]),
        .Q(N[11]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[12]),
        .Q(N[12]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[13]),
        .Q(N[13]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[14]),
        .Q(N[14]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[15]),
        .Q(N[15]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[1]),
        .Q(N[1]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[2]),
        .Q(N[2]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[3]),
        .Q(N[3]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[4]),
        .Q(N[4]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[5]),
        .Q(N[5]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[6]),
        .Q(N[6]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[7]),
        .Q(N[7]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[8]),
        .Q(N[8]),
        .R(1'b0));
  FDRE \freq_low_46.N_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[9]),
        .Q(N[9]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[32]),
        .Q(W[0]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[42]),
        .Q(W[10]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[43]),
        .Q(W[11]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[44]),
        .Q(W[12]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[45]),
        .Q(W[13]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[46]),
        .Q(W[14]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[47]),
        .Q(W[15]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[33]),
        .Q(W[1]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[34]),
        .Q(W[2]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[35]),
        .Q(W[3]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[36]),
        .Q(W[4]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[37]),
        .Q(W[5]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[38]),
        .Q(W[6]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[39]),
        .Q(W[7]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[40]),
        .Q(W[8]),
        .R(1'b0));
  FDRE \freq_low_46.W_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid),
        .D(freq_fifo_data[41]),
        .Q(W[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \freq_low_46.curr_delay[0]_i_1 
       (.I0(\freq_low_46.curr_delay_reg [0]),
        .O(\freq_low_46.curr_delay[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \freq_low_46.curr_delay[7]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_low_46.curr_delay[7]_i_4_n_0 ),
        .I2(\freq_low_46.start_delay_reg [3]),
        .I3(\freq_low_46.start_delay_reg [2]),
        .I4(\freq_low_46.start_delay_reg [6]),
        .I5(\freq_low_46.start_delay_reg [4]),
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
    .INIT(16'hFFFD)) 
    \freq_low_46.curr_delay[7]_i_14 
       (.I0(\freq_low_46.start_delay_reg [6]),
        .I1(\freq_low_46.start_delay_reg [2]),
        .I2(\freq_low_46.start_delay_reg [4]),
        .I3(\freq_low_46.start_delay_reg [0]),
        .O(\freq_low_46.curr_delay[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_low_46.curr_delay[7]_i_15 
       (.I0(\freq_low_46.curr_delay_reg [7]),
        .I1(\freq_low_46.curr_delay_reg [6]),
        .I2(\freq_low_46.curr_delay_reg [0]),
        .I3(\freq_low_46.curr_delay_reg [1]),
        .O(\freq_low_46.curr_delay[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h26)) 
    \freq_low_46.curr_delay[7]_i_2 
       (.I0(freq_fifo_valid),
        .I1(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I2(\freq_low_46.curr_delay[7]_i_6_n_0 ),
        .O(\freq_low_46.curr_delay[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_low_46.curr_delay[7]_i_4 
       (.I0(\freq_low_46.start_delay_reg [1]),
        .I1(\freq_low_46.start_delay_reg [0]),
        .I2(\freq_low_46.start_delay_reg [7]),
        .I3(\freq_low_46.start_delay_reg [5]),
        .O(\freq_low_46.curr_delay[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \freq_low_46.curr_delay[7]_i_5 
       (.I0(\freq_low_46.start_delay_reg [3]),
        .I1(\freq_low_46.start_delay_reg [5]),
        .I2(\freq_low_46.start_delay_reg [1]),
        .I3(\freq_low_46.start_delay_reg [7]),
        .I4(\freq_low_46.curr_delay[7]_i_14_n_0 ),
        .O(\freq_low_46.curr_delay[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \freq_low_46.curr_delay[7]_i_6 
       (.I0(\freq_low_46.curr_delay_reg [3]),
        .I1(\freq_low_46.curr_delay_reg [4]),
        .I2(\freq_low_46.curr_delay_reg [2]),
        .I3(\freq_low_46.curr_delay_reg [5]),
        .I4(\freq_low_46.curr_delay[7]_i_15_n_0 ),
        .O(\freq_low_46.curr_delay[7]_i_6_n_0 ));
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
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [0]),
        .Q(diff_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [10]),
        .Q(diff_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [11]),
        .Q(diff_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [12]),
        .Q(diff_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [13]),
        .Q(diff_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [14]),
        .Q(diff_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [15]),
        .Q(diff_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [16]),
        .Q(diff_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [17]),
        .Q(diff_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [18]),
        .Q(diff_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [19]),
        .Q(diff_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [1]),
        .Q(diff_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [2]),
        .Q(diff_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [3]),
        .Q(diff_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [4]),
        .Q(diff_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [5]),
        .Q(diff_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [6]),
        .Q(diff_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [7]),
        .Q(diff_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [8]),
        .Q(diff_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_E_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_E_reg01_out [9]),
        .Q(diff_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [0]),
        .Q(diff_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [10]),
        .Q(diff_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [11]),
        .Q(diff_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [12]),
        .Q(diff_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [13]),
        .Q(diff_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [14]),
        .Q(diff_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [15]),
        .Q(diff_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [16]),
        .Q(diff_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [17]),
        .Q(diff_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [18]),
        .Q(diff_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [19]),
        .Q(diff_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [1]),
        .Q(diff_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [2]),
        .Q(diff_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [3]),
        .Q(diff_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [4]),
        .Q(diff_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [5]),
        .Q(diff_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [6]),
        .Q(diff_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [7]),
        .Q(diff_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [8]),
        .Q(diff_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_N_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_N_reg02_out [9]),
        .Q(diff_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [0]),
        .Q(diff_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [10]),
        .Q(diff_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [11]),
        .Q(diff_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [12]),
        .Q(diff_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [13]),
        .Q(diff_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [14]),
        .Q(diff_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [15]),
        .Q(diff_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [16]),
        .Q(diff_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [17]),
        .Q(diff_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [18]),
        .Q(diff_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [19]),
        .Q(diff_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [1]),
        .Q(diff_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [2]),
        .Q(diff_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [3]),
        .Q(diff_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [4]),
        .Q(diff_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [5]),
        .Q(diff_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [6]),
        .Q(diff_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [7]),
        .Q(diff_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [8]),
        .Q(diff_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.diff_W_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(\freq_low_46.diff_W_reg00_out [9]),
        .Q(diff_W[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_36),
        .Q(env_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_26),
        .Q(env_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_25),
        .Q(env_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_24),
        .Q(env_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_23),
        .Q(env_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_22),
        .Q(env_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_21),
        .Q(env_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_35),
        .Q(env_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_34),
        .Q(env_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_33),
        .Q(env_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_32),
        .Q(env_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_31),
        .Q(env_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_30),
        .Q(env_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_29),
        .Q(env_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_28),
        .Q(env_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_E_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_27),
        .Q(env_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[0]),
        .Q(env_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[10]),
        .Q(env_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[11]),
        .Q(env_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[12]),
        .Q(env_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[13]),
        .Q(env_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[14]),
        .Q(env_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[15]),
        .Q(env_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[1]),
        .Q(env_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[2]),
        .Q(env_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[3]),
        .Q(env_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[4]),
        .Q(env_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[5]),
        .Q(env_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[6]),
        .Q(env_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[7]),
        .Q(env_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[8]),
        .Q(env_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_N_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(env[9]),
        .Q(env_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_36),
        .Q(env_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_26),
        .Q(env_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_25),
        .Q(env_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_24),
        .Q(env_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_23),
        .Q(env_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_22),
        .Q(env_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_21),
        .Q(env_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_35),
        .Q(env_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_34),
        .Q(env_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_33),
        .Q(env_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_32),
        .Q(env_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_31),
        .Q(env_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_30),
        .Q(env_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_29),
        .Q(env_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_28),
        .Q(env_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.env_W_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_27),
        .Q(env_W[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \freq_low_46.morlet_active_i_1 
       (.I0(\freq_low_46.curr_delay[7]_i_6_n_0 ),
        .I1(freq_fifo_valid),
        .I2(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .O(\freq_low_46.morlet_active_i_1_n_0 ));
  FDRE \freq_low_46.morlet_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.morlet_active_i_1_n_0 ),
        .Q(\freq_low_46.morlet_active_reg_n_0 ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_20),
        .Q(phase_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_10),
        .Q(phase_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_9),
        .Q(phase_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_8),
        .Q(phase_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_7),
        .Q(phase_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_6),
        .Q(phase_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_5),
        .Q(phase_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_4),
        .Q(phase_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_3),
        .Q(phase_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_2),
        .Q(phase_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_1),
        .Q(phase_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_19),
        .Q(phase_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_18),
        .Q(phase_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_17),
        .Q(phase_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_16),
        .Q(phase_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_15),
        .Q(phase_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_14),
        .Q(phase_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_13),
        .Q(phase_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_12),
        .Q(phase_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_E_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_11),
        .Q(phase_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[0]),
        .Q(phase_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[10]),
        .Q(phase_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[11]),
        .Q(phase_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[12]),
        .Q(phase_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[13]),
        .Q(phase_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[14]),
        .Q(phase_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[15]),
        .Q(phase_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[16]),
        .Q(phase_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[17]),
        .Q(phase_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[18]),
        .Q(phase_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[19]),
        .Q(phase_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[1]),
        .Q(phase_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[2]),
        .Q(phase_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[3]),
        .Q(phase_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[4]),
        .Q(phase_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[5]),
        .Q(phase_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[6]),
        .Q(phase_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[7]),
        .Q(phase_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[8]),
        .Q(phase_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_N_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[9]),
        .Q(phase_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_20),
        .Q(phase_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_10),
        .Q(phase_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_9),
        .Q(phase_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_8),
        .Q(phase_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_7),
        .Q(phase_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_6),
        .Q(phase_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_5),
        .Q(phase_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_4),
        .Q(phase_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_3),
        .Q(phase_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_2),
        .Q(phase_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_1),
        .Q(phase_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_19),
        .Q(phase_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_18),
        .Q(phase_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_17),
        .Q(phase_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_16),
        .Q(phase_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_15),
        .Q(phase_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_14),
        .Q(phase_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_13),
        .Q(phase_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_12),
        .Q(phase_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_low_46.phase_W_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_11),
        .Q(phase_W[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_20),
        .Q(prevE[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_10),
        .Q(prevE[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_9),
        .Q(prevE[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_8),
        .Q(prevE[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_7),
        .Q(prevE[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_6),
        .Q(prevE[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_5),
        .Q(prevE[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_4),
        .Q(prevE[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_3),
        .Q(prevE[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_2),
        .Q(prevE[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_1),
        .Q(prevE[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_19),
        .Q(prevE[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_18),
        .Q(prevE[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_17),
        .Q(prevE[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_16),
        .Q(prevE[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_15),
        .Q(prevE[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_14),
        .Q(prevE[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_13),
        .Q(prevE[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_12),
        .Q(prevE[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevE_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_E_i_n_11),
        .Q(prevE[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[0]),
        .Q(prevN[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[10]),
        .Q(prevN[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[11]),
        .Q(prevN[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[12]),
        .Q(prevN[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[13]),
        .Q(prevN[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[14]),
        .Q(prevN[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[15]),
        .Q(prevN[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[16]),
        .Q(prevN[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[17]),
        .Q(prevN[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[18]),
        .Q(prevN[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[19]),
        .Q(prevN[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[1]),
        .Q(prevN[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[2]),
        .Q(prevN[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[3]),
        .Q(prevN[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[4]),
        .Q(prevN[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[5]),
        .Q(prevN[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[6]),
        .Q(prevN[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[7]),
        .Q(prevN[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[8]),
        .Q(prevN[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevN_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(phase[9]),
        .Q(prevN[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_20),
        .Q(prevW[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[10] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_10),
        .Q(prevW[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[11] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_9),
        .Q(prevW[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[12] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_8),
        .Q(prevW[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[13] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_7),
        .Q(prevW[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[14] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_6),
        .Q(prevW[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[15] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_5),
        .Q(prevW[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[16] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_4),
        .Q(prevW[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[17] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_3),
        .Q(prevW[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[18] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_2),
        .Q(prevW[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[19] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_1),
        .Q(prevW[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_19),
        .Q(prevW[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_18),
        .Q(prevW[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_17),
        .Q(prevW[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_16),
        .Q(prevW[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_15),
        .Q(prevW[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_14),
        .Q(prevW[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_13),
        .Q(prevW[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[8] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_12),
        .Q(prevW[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \freq_low_46.prevW_reg[9] 
       (.C(clk),
        .CE(\freq_low_46.env_N_reg0 ),
        .D(freq_W_i_n_11),
        .Q(prevW[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h4)) 
    \freq_low_46.raw_fifo_rd_i_1 
       (.I0(raw_fifo_empty),
        .I1(valid),
        .O(\freq_low_46.raw_fifo_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.raw_fifo_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.raw_fifo_rd_i_1_n_0 ),
        .Q(raw_fifo_rd),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \freq_low_46.start_delay[0]_i_1 
       (.I0(\freq_low_46.start_delay_reg [0]),
        .I1(freq_fifo_valid),
        .I2(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h6066)) 
    \freq_low_46.start_delay[1]_i_1 
       (.I0(\freq_low_46.start_delay_reg [1]),
        .I1(\freq_low_46.start_delay_reg [0]),
        .I2(freq_fifo_valid),
        .I3(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \freq_low_46.start_delay[2]_i_1 
       (.I0(\freq_low_46.start_delay_reg [2]),
        .I1(\freq_low_46.start_delay_reg [0]),
        .I2(\freq_low_46.start_delay_reg [1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \freq_low_46.start_delay[3]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I2(\freq_low_46.start_delay_reg [1]),
        .I3(\freq_low_46.start_delay_reg [0]),
        .I4(\freq_low_46.start_delay_reg [2]),
        .I5(\freq_low_46.start_delay_reg [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \freq_low_46.start_delay[4]_i_1 
       (.I0(\freq_low_46.start_delay_reg [4]),
        .I1(\freq_low_46.start_delay_reg [1]),
        .I2(\freq_low_46.start_delay_reg [0]),
        .I3(\freq_low_46.start_delay_reg [2]),
        .I4(\freq_low_46.start_delay_reg [3]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h6606)) 
    \freq_low_46.start_delay[5]_i_1 
       (.I0(\freq_low_46.start_delay_reg [5]),
        .I1(\freq_low_46.start_delay[7]_i_3_n_0 ),
        .I2(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I3(freq_fifo_valid),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h0DD0DD00)) 
    \freq_low_46.start_delay[6]_i_1 
       (.I0(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I1(freq_fifo_valid),
        .I2(\freq_low_46.start_delay[7]_i_3_n_0 ),
        .I3(\freq_low_46.start_delay_reg [6]),
        .I4(\freq_low_46.start_delay_reg [5]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h004F)) 
    \freq_low_46.start_delay[7]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_low_46.curr_delay[7]_i_6_n_0 ),
        .I2(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I3(\freq_low_46.curr_delay[7]_i_1_n_0 ),
        .O(\freq_low_46.start_delay[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA00006AAA)) 
    \freq_low_46.start_delay[7]_i_2 
       (.I0(\freq_low_46.start_delay_reg [7]),
        .I1(\freq_low_46.start_delay_reg [5]),
        .I2(\freq_low_46.start_delay_reg [6]),
        .I3(\freq_low_46.start_delay[7]_i_3_n_0 ),
        .I4(\freq_low_46.curr_delay[7]_i_5_n_0 ),
        .I5(freq_fifo_valid),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \freq_low_46.start_delay[7]_i_3 
       (.I0(\freq_low_46.start_delay_reg [4]),
        .I1(\freq_low_46.start_delay_reg [1]),
        .I2(\freq_low_46.start_delay_reg [0]),
        .I3(\freq_low_46.start_delay_reg [2]),
        .I4(\freq_low_46.start_delay_reg [3]),
        .O(\freq_low_46.start_delay[7]_i_3_n_0 ));
  FDRE \freq_low_46.start_delay_reg[0] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\freq_low_46.start_delay_reg [0]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[1] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\freq_low_46.start_delay_reg [1]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[2] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\freq_low_46.start_delay_reg [2]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[3] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\freq_low_46.start_delay_reg [3]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[4] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\freq_low_46.start_delay_reg [4]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[5] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\freq_low_46.start_delay_reg [5]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[6] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\freq_low_46.start_delay_reg [6]),
        .R(1'b0));
  FDRE \freq_low_46.start_delay_reg[7] 
       (.C(clk),
        .CE(\freq_low_46.start_delay[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\freq_low_46.start_delay_reg [7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_low_46.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_low_46.env_N_reg0 ),
        .Q(valid),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_ila_0 ila_0_i
       (.clk(clk),
        .probe0(valid),
        .probe1(raw_fifo_rd),
        .probe10(env_W),
        .probe11(phase_W),
        .probe12(diff_W),
        .probe2(raw_fifo_empty),
        .probe3(raw_fifo_data[15:0]),
        .probe4(env_N),
        .probe5(phase_N),
        .probe6(diff_N),
        .probe7(env_E),
        .probe8(phase_E),
        .probe9(diff_E));
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
    probe12);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [15:0]probe3;
  input [15:0]probe4;
  input [19:0]probe5;
  input [19:0]probe6;
  input [15:0]probe7;
  input [19:0]probe8;
  input [19:0]probe9;
  input [15:0]probe10;
  input [19:0]probe11;
  input [19:0]probe12;


endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env
   (validW,
    Q,
    \morlet_to_phase_env.env_reg[15]_0 ,
    D,
    clk,
    s_axis_cartesian_tdata,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    \freq_low_46.diff_W_reg[19] );
  output validW;
  output [19:0]Q;
  output [15:0]\morlet_to_phase_env.env_reg[15]_0 ;
  output [19:0]D;
  input clk;
  input [47:0]s_axis_cartesian_tdata;
  input \morlet_to_phase_env.phase_reg[19]_0 ;
  input [19:0]\freq_low_46.diff_W_reg[19] ;

  wire [19:0]D;
  wire [19:0]Q;
  wire clk;
  wire \freq_low_46.diff_W[15]_i_2_n_0 ;
  wire \freq_low_46.diff_W[15]_i_3_n_0 ;
  wire \freq_low_46.diff_W[15]_i_4_n_0 ;
  wire \freq_low_46.diff_W[15]_i_5_n_0 ;
  wire \freq_low_46.diff_W[15]_i_6_n_0 ;
  wire \freq_low_46.diff_W[15]_i_7_n_0 ;
  wire \freq_low_46.diff_W[15]_i_8_n_0 ;
  wire \freq_low_46.diff_W[15]_i_9_n_0 ;
  wire \freq_low_46.diff_W[19]_i_2_n_0 ;
  wire \freq_low_46.diff_W[19]_i_3_n_0 ;
  wire \freq_low_46.diff_W[19]_i_4_n_0 ;
  wire \freq_low_46.diff_W[19]_i_5_n_0 ;
  wire \freq_low_46.diff_W[7]_i_2_n_0 ;
  wire \freq_low_46.diff_W[7]_i_3_n_0 ;
  wire \freq_low_46.diff_W[7]_i_4_n_0 ;
  wire \freq_low_46.diff_W[7]_i_5_n_0 ;
  wire \freq_low_46.diff_W[7]_i_6_n_0 ;
  wire \freq_low_46.diff_W[7]_i_7_n_0 ;
  wire \freq_low_46.diff_W[7]_i_8_n_0 ;
  wire \freq_low_46.diff_W[7]_i_9_n_0 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_0 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_1 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_2 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_3 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_4 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_5 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_6 ;
  wire \freq_low_46.diff_W_reg[15]_i_1_n_7 ;
  wire [19:0]\freq_low_46.diff_W_reg[19] ;
  wire \freq_low_46.diff_W_reg[19]_i_1_n_5 ;
  wire \freq_low_46.diff_W_reg[19]_i_1_n_6 ;
  wire \freq_low_46.diff_W_reg[19]_i_1_n_7 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_0 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_1 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_2 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_3 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_4 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_5 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_6 ;
  wire \freq_low_46.diff_W_reg[7]_i_1_n_7 ;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0 ;
  wire \morlet_to_phase_env.delay[0]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_1__1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2__1_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[15]_i_1__1_n_0 ;
  wire [15:0]\morlet_to_phase_env.env_reg[15]_0 ;
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
  wire \morlet_to_phase_env.phase_reg[19]_0 ;
  wire \morlet_to_phase_env.valid_i_1__1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2__1_n_0 ;
  wire \morlet_to_phase_env.valid_i_3__1_n_0 ;
  wire [31:0]p2;
  wire [31:0]re2;
  wire [47:0]s_axis_cartesian_tdata;
  wire validW;
  wire [7:3]\NLW_freq_low_46.diff_W_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_freq_low_46.diff_W_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_2 
       (.I0(Q[15]),
        .I1(\freq_low_46.diff_W_reg[19] [15]),
        .O(\freq_low_46.diff_W[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_3 
       (.I0(Q[14]),
        .I1(\freq_low_46.diff_W_reg[19] [14]),
        .O(\freq_low_46.diff_W[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_4 
       (.I0(Q[13]),
        .I1(\freq_low_46.diff_W_reg[19] [13]),
        .O(\freq_low_46.diff_W[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_5 
       (.I0(Q[12]),
        .I1(\freq_low_46.diff_W_reg[19] [12]),
        .O(\freq_low_46.diff_W[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_6 
       (.I0(Q[11]),
        .I1(\freq_low_46.diff_W_reg[19] [11]),
        .O(\freq_low_46.diff_W[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_7 
       (.I0(Q[10]),
        .I1(\freq_low_46.diff_W_reg[19] [10]),
        .O(\freq_low_46.diff_W[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_8 
       (.I0(Q[9]),
        .I1(\freq_low_46.diff_W_reg[19] [9]),
        .O(\freq_low_46.diff_W[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[15]_i_9 
       (.I0(Q[8]),
        .I1(\freq_low_46.diff_W_reg[19] [8]),
        .O(\freq_low_46.diff_W[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[19]_i_2 
       (.I0(Q[19]),
        .I1(\freq_low_46.diff_W_reg[19] [19]),
        .O(\freq_low_46.diff_W[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[19]_i_3 
       (.I0(Q[18]),
        .I1(\freq_low_46.diff_W_reg[19] [18]),
        .O(\freq_low_46.diff_W[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[19]_i_4 
       (.I0(Q[17]),
        .I1(\freq_low_46.diff_W_reg[19] [17]),
        .O(\freq_low_46.diff_W[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[19]_i_5 
       (.I0(Q[16]),
        .I1(\freq_low_46.diff_W_reg[19] [16]),
        .O(\freq_low_46.diff_W[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_2 
       (.I0(Q[7]),
        .I1(\freq_low_46.diff_W_reg[19] [7]),
        .O(\freq_low_46.diff_W[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_3 
       (.I0(Q[6]),
        .I1(\freq_low_46.diff_W_reg[19] [6]),
        .O(\freq_low_46.diff_W[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_4 
       (.I0(Q[5]),
        .I1(\freq_low_46.diff_W_reg[19] [5]),
        .O(\freq_low_46.diff_W[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_5 
       (.I0(Q[4]),
        .I1(\freq_low_46.diff_W_reg[19] [4]),
        .O(\freq_low_46.diff_W[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_6 
       (.I0(Q[3]),
        .I1(\freq_low_46.diff_W_reg[19] [3]),
        .O(\freq_low_46.diff_W[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_7 
       (.I0(Q[2]),
        .I1(\freq_low_46.diff_W_reg[19] [2]),
        .O(\freq_low_46.diff_W[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_8 
       (.I0(Q[1]),
        .I1(\freq_low_46.diff_W_reg[19] [1]),
        .O(\freq_low_46.diff_W[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_W[7]_i_9 
       (.I0(Q[0]),
        .I1(\freq_low_46.diff_W_reg[19] [0]),
        .O(\freq_low_46.diff_W[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_W_reg[15]_i_1 
       (.CI(\freq_low_46.diff_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diff_W_reg[15]_i_1_n_0 ,\freq_low_46.diff_W_reg[15]_i_1_n_1 ,\freq_low_46.diff_W_reg[15]_i_1_n_2 ,\freq_low_46.diff_W_reg[15]_i_1_n_3 ,\freq_low_46.diff_W_reg[15]_i_1_n_4 ,\freq_low_46.diff_W_reg[15]_i_1_n_5 ,\freq_low_46.diff_W_reg[15]_i_1_n_6 ,\freq_low_46.diff_W_reg[15]_i_1_n_7 }),
        .DI(Q[15:8]),
        .O(D[15:8]),
        .S({\freq_low_46.diff_W[15]_i_2_n_0 ,\freq_low_46.diff_W[15]_i_3_n_0 ,\freq_low_46.diff_W[15]_i_4_n_0 ,\freq_low_46.diff_W[15]_i_5_n_0 ,\freq_low_46.diff_W[15]_i_6_n_0 ,\freq_low_46.diff_W[15]_i_7_n_0 ,\freq_low_46.diff_W[15]_i_8_n_0 ,\freq_low_46.diff_W[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_W_reg[19]_i_1 
       (.CI(\freq_low_46.diff_W_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.diff_W_reg[19]_i_1_CO_UNCONNECTED [7:3],\freq_low_46.diff_W_reg[19]_i_1_n_5 ,\freq_low_46.diff_W_reg[19]_i_1_n_6 ,\freq_low_46.diff_W_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,Q[18:16]}),
        .O({\NLW_freq_low_46.diff_W_reg[19]_i_1_O_UNCONNECTED [7:4],D[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\freq_low_46.diff_W[19]_i_2_n_0 ,\freq_low_46.diff_W[19]_i_3_n_0 ,\freq_low_46.diff_W[19]_i_4_n_0 ,\freq_low_46.diff_W[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_W_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diff_W_reg[7]_i_1_n_0 ,\freq_low_46.diff_W_reg[7]_i_1_n_1 ,\freq_low_46.diff_W_reg[7]_i_1_n_2 ,\freq_low_46.diff_W_reg[7]_i_1_n_3 ,\freq_low_46.diff_W_reg[7]_i_1_n_4 ,\freq_low_46.diff_W_reg[7]_i_1_n_5 ,\freq_low_46.diff_W_reg[7]_i_1_n_6 ,\freq_low_46.diff_W_reg[7]_i_1_n_7 }),
        .DI(Q[7:0]),
        .O(D[7:0]),
        .S({\freq_low_46.diff_W[7]_i_2_n_0 ,\freq_low_46.diff_W[7]_i_3_n_0 ,\freq_low_46.diff_W[7]_i_4_n_0 ,\freq_low_46.diff_W[7]_i_5_n_0 ,\freq_low_46.diff_W[7]_i_6_n_0 ,\freq_low_46.diff_W[7]_i_7_n_0 ,\freq_low_46.diff_W[7]_i_8_n_0 ,\freq_low_46.diff_W[7]_i_9_n_0 }));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_4_reg[0]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_4_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_4_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_4_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_4_reg[13]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_4_reg[14]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(\morlet_to_phase_env.amp_4_reg[15]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_4_reg[1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_4_reg[2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_4_reg[3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_4_reg[4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_4_reg[5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_4_reg[6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_4_reg[7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_4_reg[8]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_W_i/morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_4_reg[9]_srl4_n_0 ));
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
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.delay[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \morlet_to_phase_env.delay[2]_i_1__1 
       (.I0(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \morlet_to_phase_env.delay[3]_i_1__1 
       (.I0(\morlet_to_phase_env.delay_reg [3]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [0]),
        .I5(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.delay[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \morlet_to_phase_env.delay[4]_i_2__1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
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
    .INIT(64'h5555D55555555554)) 
    \morlet_to_phase_env.env[15]_i_1__1 
       (.I0(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I1(\morlet_to_phase_env.delay_reg [4]),
        .I2(\morlet_to_phase_env.delay_reg [3]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .I5(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.env[15]_i_1__1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[0]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[10]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[11]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[12]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[13]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[14]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[15]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[1]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[2]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[3]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[4]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[5]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[6]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[7]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[8]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[9]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [9]),
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
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__1_n_0 ),
        .D(lphase[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \morlet_to_phase_env.valid_i_1__1 
       (.I0(\morlet_to_phase_env.valid_i_2__1_n_0 ),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(validW),
        .I3(\morlet_to_phase_env.valid_i_3__1_n_0 ),
        .O(\morlet_to_phase_env.valid_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2__1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.valid_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \morlet_to_phase_env.valid_i_3__1 
       (.I0(\morlet_to_phase_env.delay_reg [3]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.valid_i_3__1_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1__1_n_0 ),
        .Q(validW),
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
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_sqrt_16_HD6 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_0 ));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_atan2_16_HD7 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(s_axis_cartesian_tdata),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_0 ));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1
   (E,
    Q,
    \morlet_to_phase_env.env_reg[15]_0 ,
    D,
    clk,
    s_axis_cartesian_tdata,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    validE,
    validW,
    \freq_low_46.diff_N_reg[19] );
  output [0:0]E;
  output [19:0]Q;
  output [15:0]\morlet_to_phase_env.env_reg[15]_0 ;
  output [19:0]D;
  input clk;
  input [47:0]s_axis_cartesian_tdata;
  input \morlet_to_phase_env.phase_reg[19]_0 ;
  input validE;
  input validW;
  input [19:0]\freq_low_46.diff_N_reg[19] ;

  wire [19:0]D;
  wire [0:0]E;
  wire [19:0]Q;
  wire [15:0]amp_4;
  wire clk;
  wire delay0;
  wire \freq_low_46.diff_N[15]_i_2_n_0 ;
  wire \freq_low_46.diff_N[15]_i_3_n_0 ;
  wire \freq_low_46.diff_N[15]_i_4_n_0 ;
  wire \freq_low_46.diff_N[15]_i_5_n_0 ;
  wire \freq_low_46.diff_N[15]_i_6_n_0 ;
  wire \freq_low_46.diff_N[15]_i_7_n_0 ;
  wire \freq_low_46.diff_N[15]_i_8_n_0 ;
  wire \freq_low_46.diff_N[15]_i_9_n_0 ;
  wire \freq_low_46.diff_N[19]_i_2_n_0 ;
  wire \freq_low_46.diff_N[19]_i_3_n_0 ;
  wire \freq_low_46.diff_N[19]_i_4_n_0 ;
  wire \freq_low_46.diff_N[19]_i_5_n_0 ;
  wire \freq_low_46.diff_N[7]_i_2_n_0 ;
  wire \freq_low_46.diff_N[7]_i_3_n_0 ;
  wire \freq_low_46.diff_N[7]_i_4_n_0 ;
  wire \freq_low_46.diff_N[7]_i_5_n_0 ;
  wire \freq_low_46.diff_N[7]_i_6_n_0 ;
  wire \freq_low_46.diff_N[7]_i_7_n_0 ;
  wire \freq_low_46.diff_N[7]_i_8_n_0 ;
  wire \freq_low_46.diff_N[7]_i_9_n_0 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_0 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_1 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_2 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_3 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_4 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_5 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_6 ;
  wire \freq_low_46.diff_N_reg[15]_i_1_n_7 ;
  wire [19:0]\freq_low_46.diff_N_reg[19] ;
  wire \freq_low_46.diff_N_reg[19]_i_1_n_5 ;
  wire \freq_low_46.diff_N_reg[19]_i_1_n_6 ;
  wire \freq_low_46.diff_N_reg[19]_i_1_n_7 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_0 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_1 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_2 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_3 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_4 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_5 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_6 ;
  wire \freq_low_46.diff_N_reg[7]_i_1_n_7 ;
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
  wire [15:0]\morlet_to_phase_env.env_reg[15]_0 ;
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
  wire \morlet_to_phase_env.phase_reg[19]_0 ;
  wire \morlet_to_phase_env.valid_i_1_n_0 ;
  wire \morlet_to_phase_env.valid_i_2_n_0 ;
  wire \morlet_to_phase_env.valid_i_3_n_0 ;
  wire [31:0]p2;
  wire [31:0]re2;
  wire [47:0]s_axis_cartesian_tdata;
  wire validE;
  wire validN;
  wire validW;
  wire [7:3]\NLW_freq_low_46.diff_N_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_freq_low_46.diff_N_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_2 
       (.I0(Q[15]),
        .I1(\freq_low_46.diff_N_reg[19] [15]),
        .O(\freq_low_46.diff_N[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_3 
       (.I0(Q[14]),
        .I1(\freq_low_46.diff_N_reg[19] [14]),
        .O(\freq_low_46.diff_N[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_4 
       (.I0(Q[13]),
        .I1(\freq_low_46.diff_N_reg[19] [13]),
        .O(\freq_low_46.diff_N[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_5 
       (.I0(Q[12]),
        .I1(\freq_low_46.diff_N_reg[19] [12]),
        .O(\freq_low_46.diff_N[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_6 
       (.I0(Q[11]),
        .I1(\freq_low_46.diff_N_reg[19] [11]),
        .O(\freq_low_46.diff_N[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_7 
       (.I0(Q[10]),
        .I1(\freq_low_46.diff_N_reg[19] [10]),
        .O(\freq_low_46.diff_N[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_8 
       (.I0(Q[9]),
        .I1(\freq_low_46.diff_N_reg[19] [9]),
        .O(\freq_low_46.diff_N[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[15]_i_9 
       (.I0(Q[8]),
        .I1(\freq_low_46.diff_N_reg[19] [8]),
        .O(\freq_low_46.diff_N[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[19]_i_2 
       (.I0(Q[19]),
        .I1(\freq_low_46.diff_N_reg[19] [19]),
        .O(\freq_low_46.diff_N[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[19]_i_3 
       (.I0(Q[18]),
        .I1(\freq_low_46.diff_N_reg[19] [18]),
        .O(\freq_low_46.diff_N[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[19]_i_4 
       (.I0(Q[17]),
        .I1(\freq_low_46.diff_N_reg[19] [17]),
        .O(\freq_low_46.diff_N[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[19]_i_5 
       (.I0(Q[16]),
        .I1(\freq_low_46.diff_N_reg[19] [16]),
        .O(\freq_low_46.diff_N[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_2 
       (.I0(Q[7]),
        .I1(\freq_low_46.diff_N_reg[19] [7]),
        .O(\freq_low_46.diff_N[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_3 
       (.I0(Q[6]),
        .I1(\freq_low_46.diff_N_reg[19] [6]),
        .O(\freq_low_46.diff_N[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_4 
       (.I0(Q[5]),
        .I1(\freq_low_46.diff_N_reg[19] [5]),
        .O(\freq_low_46.diff_N[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_5 
       (.I0(Q[4]),
        .I1(\freq_low_46.diff_N_reg[19] [4]),
        .O(\freq_low_46.diff_N[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_6 
       (.I0(Q[3]),
        .I1(\freq_low_46.diff_N_reg[19] [3]),
        .O(\freq_low_46.diff_N[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_7 
       (.I0(Q[2]),
        .I1(\freq_low_46.diff_N_reg[19] [2]),
        .O(\freq_low_46.diff_N[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_8 
       (.I0(Q[1]),
        .I1(\freq_low_46.diff_N_reg[19] [1]),
        .O(\freq_low_46.diff_N[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_N[7]_i_9 
       (.I0(Q[0]),
        .I1(\freq_low_46.diff_N_reg[19] [0]),
        .O(\freq_low_46.diff_N[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_N_reg[15]_i_1 
       (.CI(\freq_low_46.diff_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diff_N_reg[15]_i_1_n_0 ,\freq_low_46.diff_N_reg[15]_i_1_n_1 ,\freq_low_46.diff_N_reg[15]_i_1_n_2 ,\freq_low_46.diff_N_reg[15]_i_1_n_3 ,\freq_low_46.diff_N_reg[15]_i_1_n_4 ,\freq_low_46.diff_N_reg[15]_i_1_n_5 ,\freq_low_46.diff_N_reg[15]_i_1_n_6 ,\freq_low_46.diff_N_reg[15]_i_1_n_7 }),
        .DI(Q[15:8]),
        .O(D[15:8]),
        .S({\freq_low_46.diff_N[15]_i_2_n_0 ,\freq_low_46.diff_N[15]_i_3_n_0 ,\freq_low_46.diff_N[15]_i_4_n_0 ,\freq_low_46.diff_N[15]_i_5_n_0 ,\freq_low_46.diff_N[15]_i_6_n_0 ,\freq_low_46.diff_N[15]_i_7_n_0 ,\freq_low_46.diff_N[15]_i_8_n_0 ,\freq_low_46.diff_N[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_N_reg[19]_i_1 
       (.CI(\freq_low_46.diff_N_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.diff_N_reg[19]_i_1_CO_UNCONNECTED [7:3],\freq_low_46.diff_N_reg[19]_i_1_n_5 ,\freq_low_46.diff_N_reg[19]_i_1_n_6 ,\freq_low_46.diff_N_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,Q[18:16]}),
        .O({\NLW_freq_low_46.diff_N_reg[19]_i_1_O_UNCONNECTED [7:4],D[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\freq_low_46.diff_N[19]_i_2_n_0 ,\freq_low_46.diff_N[19]_i_3_n_0 ,\freq_low_46.diff_N[19]_i_4_n_0 ,\freq_low_46.diff_N[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_N_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diff_N_reg[7]_i_1_n_0 ,\freq_low_46.diff_N_reg[7]_i_1_n_1 ,\freq_low_46.diff_N_reg[7]_i_1_n_2 ,\freq_low_46.diff_N_reg[7]_i_1_n_3 ,\freq_low_46.diff_N_reg[7]_i_1_n_4 ,\freq_low_46.diff_N_reg[7]_i_1_n_5 ,\freq_low_46.diff_N_reg[7]_i_1_n_6 ,\freq_low_46.diff_N_reg[7]_i_1_n_7 }),
        .DI(Q[7:0]),
        .O(D[7:0]),
        .S({\freq_low_46.diff_N[7]_i_2_n_0 ,\freq_low_46.diff_N[7]_i_3_n_0 ,\freq_low_46.diff_N[7]_i_4_n_0 ,\freq_low_46.diff_N[7]_i_5_n_0 ,\freq_low_46.diff_N[7]_i_6_n_0 ,\freq_low_46.diff_N[7]_i_7_n_0 ,\freq_low_46.diff_N[7]_i_8_n_0 ,\freq_low_46.diff_N[7]_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h80)) 
    \freq_low_46.valid_i_1 
       (.I0(validN),
        .I1(validE),
        .I2(validW),
        .O(E));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_N_i/morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(amp_4[9]));
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
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \morlet_to_phase_env.delay[2]_i_1 
       (.I0(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[3]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [3]),
        .I5(\morlet_to_phase_env.delay_reg [4]),
        .O(delay0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \morlet_to_phase_env.delay[3]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [3]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.phase_reg[19]_0 ),
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
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \morlet_to_phase_env.delay[4]_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
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
    .INIT(64'h33B3333333333332)) 
    \morlet_to_phase_env.env[15]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [1]),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [3]),
        .I5(\morlet_to_phase_env.delay_reg [4]),
        .O(\morlet_to_phase_env.env[15]_i_1_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[0]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[10]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[11]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[12]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[13]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[14]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[15]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[1]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[2]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[3]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[4]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[5]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[6]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[7]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[8]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(amp_4[9]),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [9]),
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
        .Q(Q[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1_n_0 ),
        .D(lphase[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \morlet_to_phase_env.valid_i_1 
       (.I0(\morlet_to_phase_env.valid_i_2_n_0 ),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(validN),
        .I3(\morlet_to_phase_env.valid_i_3_n_0 ),
        .O(\morlet_to_phase_env.valid_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.valid_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \morlet_to_phase_env.valid_i_3 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [0]),
        .I4(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I5(\morlet_to_phase_env.delay_reg [1]),
        .O(\morlet_to_phase_env.valid_i_3_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1_n_0 ),
        .Q(validN),
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
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_0 ));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(s_axis_cartesian_tdata),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_0 ));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2
   (validE,
    Q,
    \morlet_to_phase_env.env_reg[15]_0 ,
    D,
    clk,
    s_axis_cartesian_tdata,
    \morlet_to_phase_env.phase_reg[19]_0 ,
    \freq_low_46.diff_E_reg[19] );
  output validE;
  output [19:0]Q;
  output [15:0]\morlet_to_phase_env.env_reg[15]_0 ;
  output [19:0]D;
  input clk;
  input [47:0]s_axis_cartesian_tdata;
  input \morlet_to_phase_env.phase_reg[19]_0 ;
  input [19:0]\freq_low_46.diff_E_reg[19] ;

  wire [19:0]D;
  wire [19:0]Q;
  wire clk;
  wire \freq_low_46.diff_E[15]_i_2_n_0 ;
  wire \freq_low_46.diff_E[15]_i_3_n_0 ;
  wire \freq_low_46.diff_E[15]_i_4_n_0 ;
  wire \freq_low_46.diff_E[15]_i_5_n_0 ;
  wire \freq_low_46.diff_E[15]_i_6_n_0 ;
  wire \freq_low_46.diff_E[15]_i_7_n_0 ;
  wire \freq_low_46.diff_E[15]_i_8_n_0 ;
  wire \freq_low_46.diff_E[15]_i_9_n_0 ;
  wire \freq_low_46.diff_E[19]_i_2_n_0 ;
  wire \freq_low_46.diff_E[19]_i_3_n_0 ;
  wire \freq_low_46.diff_E[19]_i_4_n_0 ;
  wire \freq_low_46.diff_E[19]_i_5_n_0 ;
  wire \freq_low_46.diff_E[7]_i_2_n_0 ;
  wire \freq_low_46.diff_E[7]_i_3_n_0 ;
  wire \freq_low_46.diff_E[7]_i_4_n_0 ;
  wire \freq_low_46.diff_E[7]_i_5_n_0 ;
  wire \freq_low_46.diff_E[7]_i_6_n_0 ;
  wire \freq_low_46.diff_E[7]_i_7_n_0 ;
  wire \freq_low_46.diff_E[7]_i_8_n_0 ;
  wire \freq_low_46.diff_E[7]_i_9_n_0 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_0 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_1 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_2 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_3 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_4 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_5 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_6 ;
  wire \freq_low_46.diff_E_reg[15]_i_1_n_7 ;
  wire [19:0]\freq_low_46.diff_E_reg[19] ;
  wire \freq_low_46.diff_E_reg[19]_i_1_n_5 ;
  wire \freq_low_46.diff_E_reg[19]_i_1_n_6 ;
  wire \freq_low_46.diff_E_reg[19]_i_1_n_7 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_0 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_1 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_2 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_3 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_4 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_5 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_6 ;
  wire \freq_low_46.diff_E_reg[7]_i_1_n_7 ;
  wire [31:0]im2;
  wire [15:0]lenv;
  wire [19:0]lphase;
  wire \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0 ;
  wire \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0 ;
  wire \morlet_to_phase_env.delay[0]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[1]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[2]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[3]_i_1__0_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_1_n_0 ;
  wire \morlet_to_phase_env.delay[4]_i_2__0_n_0 ;
  wire [4:0]\morlet_to_phase_env.delay_reg ;
  wire \morlet_to_phase_env.env[15]_i_1__0_n_0 ;
  wire [15:0]\morlet_to_phase_env.env_reg[15]_0 ;
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
  wire \morlet_to_phase_env.phase_reg[19]_0 ;
  wire \morlet_to_phase_env.valid_i_1__0_n_0 ;
  wire \morlet_to_phase_env.valid_i_2__0_n_0 ;
  wire \morlet_to_phase_env.valid_i_3__0_n_0 ;
  wire [31:0]p2;
  wire [31:0]re2;
  wire [47:0]s_axis_cartesian_tdata;
  wire validE;
  wire [7:3]\NLW_freq_low_46.diff_E_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_freq_low_46.diff_E_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [23:20]NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_2 
       (.I0(Q[15]),
        .I1(\freq_low_46.diff_E_reg[19] [15]),
        .O(\freq_low_46.diff_E[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_3 
       (.I0(Q[14]),
        .I1(\freq_low_46.diff_E_reg[19] [14]),
        .O(\freq_low_46.diff_E[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_4 
       (.I0(Q[13]),
        .I1(\freq_low_46.diff_E_reg[19] [13]),
        .O(\freq_low_46.diff_E[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_5 
       (.I0(Q[12]),
        .I1(\freq_low_46.diff_E_reg[19] [12]),
        .O(\freq_low_46.diff_E[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_6 
       (.I0(Q[11]),
        .I1(\freq_low_46.diff_E_reg[19] [11]),
        .O(\freq_low_46.diff_E[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_7 
       (.I0(Q[10]),
        .I1(\freq_low_46.diff_E_reg[19] [10]),
        .O(\freq_low_46.diff_E[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_8 
       (.I0(Q[9]),
        .I1(\freq_low_46.diff_E_reg[19] [9]),
        .O(\freq_low_46.diff_E[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[15]_i_9 
       (.I0(Q[8]),
        .I1(\freq_low_46.diff_E_reg[19] [8]),
        .O(\freq_low_46.diff_E[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[19]_i_2 
       (.I0(Q[19]),
        .I1(\freq_low_46.diff_E_reg[19] [19]),
        .O(\freq_low_46.diff_E[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[19]_i_3 
       (.I0(Q[18]),
        .I1(\freq_low_46.diff_E_reg[19] [18]),
        .O(\freq_low_46.diff_E[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[19]_i_4 
       (.I0(Q[17]),
        .I1(\freq_low_46.diff_E_reg[19] [17]),
        .O(\freq_low_46.diff_E[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[19]_i_5 
       (.I0(Q[16]),
        .I1(\freq_low_46.diff_E_reg[19] [16]),
        .O(\freq_low_46.diff_E[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_2 
       (.I0(Q[7]),
        .I1(\freq_low_46.diff_E_reg[19] [7]),
        .O(\freq_low_46.diff_E[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_3 
       (.I0(Q[6]),
        .I1(\freq_low_46.diff_E_reg[19] [6]),
        .O(\freq_low_46.diff_E[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_4 
       (.I0(Q[5]),
        .I1(\freq_low_46.diff_E_reg[19] [5]),
        .O(\freq_low_46.diff_E[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_5 
       (.I0(Q[4]),
        .I1(\freq_low_46.diff_E_reg[19] [4]),
        .O(\freq_low_46.diff_E[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_6 
       (.I0(Q[3]),
        .I1(\freq_low_46.diff_E_reg[19] [3]),
        .O(\freq_low_46.diff_E[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_7 
       (.I0(Q[2]),
        .I1(\freq_low_46.diff_E_reg[19] [2]),
        .O(\freq_low_46.diff_E[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_8 
       (.I0(Q[1]),
        .I1(\freq_low_46.diff_E_reg[19] [1]),
        .O(\freq_low_46.diff_E[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \freq_low_46.diff_E[7]_i_9 
       (.I0(Q[0]),
        .I1(\freq_low_46.diff_E_reg[19] [0]),
        .O(\freq_low_46.diff_E[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_E_reg[15]_i_1 
       (.CI(\freq_low_46.diff_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diff_E_reg[15]_i_1_n_0 ,\freq_low_46.diff_E_reg[15]_i_1_n_1 ,\freq_low_46.diff_E_reg[15]_i_1_n_2 ,\freq_low_46.diff_E_reg[15]_i_1_n_3 ,\freq_low_46.diff_E_reg[15]_i_1_n_4 ,\freq_low_46.diff_E_reg[15]_i_1_n_5 ,\freq_low_46.diff_E_reg[15]_i_1_n_6 ,\freq_low_46.diff_E_reg[15]_i_1_n_7 }),
        .DI(Q[15:8]),
        .O(D[15:8]),
        .S({\freq_low_46.diff_E[15]_i_2_n_0 ,\freq_low_46.diff_E[15]_i_3_n_0 ,\freq_low_46.diff_E[15]_i_4_n_0 ,\freq_low_46.diff_E[15]_i_5_n_0 ,\freq_low_46.diff_E[15]_i_6_n_0 ,\freq_low_46.diff_E[15]_i_7_n_0 ,\freq_low_46.diff_E[15]_i_8_n_0 ,\freq_low_46.diff_E[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_E_reg[19]_i_1 
       (.CI(\freq_low_46.diff_E_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_freq_low_46.diff_E_reg[19]_i_1_CO_UNCONNECTED [7:3],\freq_low_46.diff_E_reg[19]_i_1_n_5 ,\freq_low_46.diff_E_reg[19]_i_1_n_6 ,\freq_low_46.diff_E_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,Q[18:16]}),
        .O({\NLW_freq_low_46.diff_E_reg[19]_i_1_O_UNCONNECTED [7:4],D[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\freq_low_46.diff_E[19]_i_2_n_0 ,\freq_low_46.diff_E[19]_i_3_n_0 ,\freq_low_46.diff_E[19]_i_4_n_0 ,\freq_low_46.diff_E[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \freq_low_46.diff_E_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\freq_low_46.diff_E_reg[7]_i_1_n_0 ,\freq_low_46.diff_E_reg[7]_i_1_n_1 ,\freq_low_46.diff_E_reg[7]_i_1_n_2 ,\freq_low_46.diff_E_reg[7]_i_1_n_3 ,\freq_low_46.diff_E_reg[7]_i_1_n_4 ,\freq_low_46.diff_E_reg[7]_i_1_n_5 ,\freq_low_46.diff_E_reg[7]_i_1_n_6 ,\freq_low_46.diff_E_reg[7]_i_1_n_7 }),
        .DI(Q[7:0]),
        .O(D[7:0]),
        .S({\freq_low_46.diff_E[7]_i_2_n_0 ,\freq_low_46.diff_E[7]_i_3_n_0 ,\freq_low_46.diff_E[7]_i_4_n_0 ,\freq_low_46.diff_E[7]_i_5_n_0 ,\freq_low_46.diff_E[7]_i_6_n_0 ,\freq_low_46.diff_E[7]_i_7_n_0 ,\freq_low_46.diff_E[7]_i_8_n_0 ,\freq_low_46.diff_E[7]_i_9_n_0 }));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(\morlet_to_phase_env.amp_4_reg[0]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(\morlet_to_phase_env.amp_4_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(\morlet_to_phase_env.amp_4_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(\morlet_to_phase_env.amp_4_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(\morlet_to_phase_env.amp_4_reg[13]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(\morlet_to_phase_env.amp_4_reg[14]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(\morlet_to_phase_env.amp_4_reg[15]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(\morlet_to_phase_env.amp_4_reg[1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(\morlet_to_phase_env.amp_4_reg[2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(\morlet_to_phase_env.amp_4_reg[3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(\morlet_to_phase_env.amp_4_reg[4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(\morlet_to_phase_env.amp_4_reg[5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(\morlet_to_phase_env.amp_4_reg[6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(\morlet_to_phase_env.amp_4_reg[7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(\morlet_to_phase_env.amp_4_reg[8]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/\\freq_E_i/morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[9]),
        .Q(\morlet_to_phase_env.amp_4_reg[9]_srl4_n_0 ));
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
        .I1(\morlet_to_phase_env.delay_reg [1]),
        .I2(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.delay[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \morlet_to_phase_env.delay[2]_i_1__0 
       (.I0(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \morlet_to_phase_env.delay[3]_i_1__0 
       (.I0(\morlet_to_phase_env.delay_reg [3]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .O(\morlet_to_phase_env.delay[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFE)) 
    \morlet_to_phase_env.delay[4]_i_1 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [0]),
        .I5(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \morlet_to_phase_env.delay[4]_i_2__0 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(\morlet_to_phase_env.delay_reg [0]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [1]),
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
    .INIT(64'h5555D55555555554)) 
    \morlet_to_phase_env.env[15]_i_1__0 
       (.I0(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I1(\morlet_to_phase_env.delay_reg [4]),
        .I2(\morlet_to_phase_env.delay_reg [3]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [2]),
        .I5(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.env[15]_i_1__0_n_0 ));
  FDRE \morlet_to_phase_env.env_reg[0] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[0]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[10]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[11]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[12]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[13]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[14]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[15]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[1]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[2]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[3]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[4]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[5]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[6]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[7]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[8]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.env_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(\morlet_to_phase_env.amp_4_reg[9]_srl4_n_0 ),
        .Q(\morlet_to_phase_env.env_reg[15]_0 [9]),
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
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[10] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[11] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[12] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[13] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[14] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[15] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[16] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[17] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[18] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[19] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[1] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[2] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[3] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[4] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[5] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[6] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[7] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[8] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \morlet_to_phase_env.phase_reg[9] 
       (.C(clk),
        .CE(\morlet_to_phase_env.env[15]_i_1__0_n_0 ),
        .D(lphase[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \morlet_to_phase_env.valid_i_1__0 
       (.I0(\morlet_to_phase_env.valid_i_2__0_n_0 ),
        .I1(\morlet_to_phase_env.phase_reg[19]_0 ),
        .I2(validE),
        .I3(\morlet_to_phase_env.valid_i_3__0_n_0 ),
        .O(\morlet_to_phase_env.valid_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \morlet_to_phase_env.valid_i_2__0 
       (.I0(\morlet_to_phase_env.delay_reg [4]),
        .I1(\morlet_to_phase_env.delay_reg [3]),
        .I2(\morlet_to_phase_env.delay_reg [1]),
        .I3(\morlet_to_phase_env.delay_reg [2]),
        .I4(\morlet_to_phase_env.delay_reg [0]),
        .O(\morlet_to_phase_env.valid_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \morlet_to_phase_env.valid_i_3__0 
       (.I0(\morlet_to_phase_env.delay_reg [3]),
        .I1(\morlet_to_phase_env.delay_reg [0]),
        .I2(\morlet_to_phase_env.delay_reg [2]),
        .I3(\morlet_to_phase_env.delay_reg [1]),
        .I4(\morlet_to_phase_env.delay_reg [4]),
        .I5(\morlet_to_phase_env.phase_reg[19]_0 ),
        .O(\morlet_to_phase_env.valid_i_3__0_n_0 ));
  FDRE \morlet_to_phase_env.valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\morlet_to_phase_env.valid_i_1__0_n_0 ),
        .Q(validE),
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
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_0 ));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_low_46_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(s_axis_cartesian_tdata),
        .s_axis_cartesian_tvalid(\morlet_to_phase_env.phase_reg[19]_0 ));
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
