// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Dec 13 00:58:47 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_freq_high_189_0_0/ps_freq_high_189_0_0_sim_netlist.v
// Design      : ps_freq_high_189_0_0
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

(* CHECK_LICENSE_TYPE = "ps_freq_high_189_0_0,freq_high_189,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "freq_high_189,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_freq_high_189_0_0
   (fifo_clk,
    raw_wr,
    raw_data,
    freq_wr,
    freq_data,
    clk,
    reset,
    doa_wr,
    doa_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input fifo_clk;
  input raw_wr;
  input [383:0]raw_data;
  input freq_wr;
  input [95:0]freq_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output doa_wr;
  output [491:0]doa_data;

  wire clk;
  wire [491:0]doa_data;
  wire doa_wr;
  wire fifo_clk;
  wire [95:0]freq_data;
  wire freq_wr;
  wire [383:0]raw_data;
  wire raw_wr;
  wire reset;

  ps_freq_high_189_0_0_freq_high_189 inst
       (.clk(clk),
        .doa_data(doa_data),
        .doa_wr(doa_wr),
        .fifo_clk(fifo_clk),
        .freq_data(freq_data),
        .freq_wr(freq_wr),
        .raw_data(raw_data),
        .raw_wr(raw_wr),
        .reset(reset));
endmodule

(* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan2_16" *) 
(* X_CORE_INFO = "cordic_v6_0_24,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_cordic_atan2_16
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
module ps_freq_high_189_0_0_cordic_sqrt_16
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

(* CHECK_LICENSE_TYPE = "fifo_doa_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_doa_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_fifo_doa_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [95:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [95:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_fifo_raw_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [383:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [383:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_im_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_fir_doa_high_im_189
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_im_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_fir_doa_high_im_189_HD3
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_re_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_fir_doa_high_re_189
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_re_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_fir_doa_high_re_189_HD4
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "freq_high_189" *) (* keep_hierarchy = "soft" *) 
module ps_freq_high_189_0_0_freq_high_189
   (fifo_clk,
    raw_wr,
    raw_data,
    freq_wr,
    freq_data,
    clk,
    reset,
    doa_wr,
    doa_data);
  input fifo_clk;
  input raw_wr;
  input [383:0]raw_data;
  input freq_wr;
  input [95:0]freq_data;
  input clk;
  input reset;
  output doa_wr;
  output [491:0]doa_data;

  wire [31:16]E;
  (* MARK_DEBUG *) wire [15:0]E0;
  wire [31:16]N;
  (* MARK_DEBUG *) wire [15:0]N0;
  wire [31:16]W;
  (* MARK_DEBUG *) wire [15:0]W0;
  wire clk;
  (* MARK_DEBUG *) wire [7:0]curr_delay;
  wire [5:4]curr_delay__0;
  wire data0;
  wire [491:0]doa_data;
  wire doa_data0;
  (* MARK_DEBUG *) wire doa_wr;
  (* MARK_DEBUG *) wire [15:0]envE;
  (* MARK_DEBUG *) wire [15:0]envN;
  (* MARK_DEBUG *) wire [15:0]envW;
  wire fifo_clk;
  wire fir_doa_high_re_N_i_i_1_n_0;
  (* MARK_DEBUG *) wire [39:0]fir_im_E;
  (* MARK_DEBUG *) wire [39:0]fir_im_N;
  (* MARK_DEBUG *) wire [39:0]fir_im_W;
  (* MARK_DEBUG *) wire [39:0]fir_re_E;
  (* MARK_DEBUG *) wire [39:0]fir_re_N;
  (* MARK_DEBUG *) wire [39:0]fir_re_W;
  wire [95:0]freq_data;
  wire [95:0]freq_fifo_data;
  (* MARK_DEBUG *) wire freq_fifo_empty;
  (* MARK_DEBUG *) wire freq_fifo_rd;
  wire freq_fifo_valid;
  wire freq_fifo_valid0;
  wire \freq_high_189.curr_delay[0]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[1]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[2]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[2]_i_3_n_0 ;
  wire \freq_high_189.curr_delay[3]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[3]_i_2_n_0 ;
  wire \freq_high_189.curr_delay[3]_i_3_n_0 ;
  wire \freq_high_189.curr_delay[3]_i_4_n_0 ;
  wire \freq_high_189.curr_delay[3]_i_5_n_0 ;
  wire \freq_high_189.curr_delay[4]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[5]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[5]_i_3_n_0 ;
  wire \freq_high_189.curr_delay[6]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[6]_i_2_n_0 ;
  wire \freq_high_189.curr_delay[6]_i_3_n_0 ;
  wire \freq_high_189.curr_delay[6]_i_4_n_0 ;
  wire \freq_high_189.curr_delay[7]_i_1_n_0 ;
  wire \freq_high_189.curr_delay[7]_i_2_n_0 ;
  wire \freq_high_189.curr_delay[7]_i_3_n_0 ;
  wire \freq_high_189.curr_delay[7]_i_4_n_0 ;
  wire \freq_high_189.curr_delay[7]_i_5_n_0 ;
  wire \freq_high_189.freq_fifo_rd_i_1_n_0 ;
  wire \freq_high_189.freq_rd_delay[1]_i_1_n_0 ;
  wire \freq_high_189.freq_rd_delay[1]_i_2_n_0 ;
  wire \freq_high_189.freq_rd_delay[2]_i_1_n_0 ;
  wire \freq_high_189.morlet_active_i_1_n_0 ;
  wire \freq_high_189.start_delay[1]_i_1_n_0 ;
  wire \freq_high_189.start_delay[2]_i_1_n_0 ;
  wire \freq_high_189.start_delay[4]_i_1_n_0 ;
  wire \freq_high_189.start_delay[5]_i_2_n_0 ;
  wire \freq_high_189.start_delay[6]_i_1_n_0 ;
  wire \freq_high_189.start_delay[6]_i_2_n_0 ;
  wire \freq_high_189.start_delay[7]_i_1_n_0 ;
  wire \freq_high_189.start_delay[7]_i_3_n_0 ;
  wire \freq_high_189.start_delay[7]_i_4_n_0 ;
  wire [2:0]freq_rd_delay;
  wire [0:0]freq_rd_delay0;
  wire freq_wr;
  (* MARK_DEBUG *) wire morlet_active;
  wire morlet_active__0;
  wire [7:0]p_1_in__0;
  (* MARK_DEBUG *) wire [19:0]phaseE;
  (* MARK_DEBUG *) wire [19:0]phaseN;
  (* MARK_DEBUG *) wire [19:0]phaseW;
  (* MARK_DEBUG *) wire [15:0]raw_E0;
  (* MARK_DEBUG *) wire [15:0]raw_N0;
  (* MARK_DEBUG *) wire [15:0]raw_W0;
  wire [383:0]raw_data;
  wire [383:16]raw_fifo_data;
  (* MARK_DEBUG *) wire raw_fifo_empty;
  wire raw_wr;
  wire reset;
  (* MARK_DEBUG *) wire [7:0]start_delay;
  wire validE;
  wire validN;
  wire validW;
  wire NLW_fifo_freq_i_full_UNCONNECTED;
  wire NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fir_doa_high_im_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_high_im_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_high_im_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_high_im_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_high_im_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_high_im_W_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_high_re_E_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_high_re_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_high_re_N_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_high_re_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_high_re_W_i_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_doa_high_re_W_i_s_axis_data_tready_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "fifo_doa_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fifo_doa_high fifo_freq_i
       (.din(freq_data),
        .dout(freq_fifo_data),
        .empty(freq_fifo_empty),
        .full(NLW_fifo_freq_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(freq_fifo_rd),
        .rd_rst_busy(NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(freq_wr),
        .wr_rst_busy(NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fifo_raw_high fifo_raw_i
       (.din(raw_data),
        .dout({raw_fifo_data[383:272],raw_W0,raw_fifo_data[255:144],raw_E0,raw_fifo_data[127:16],raw_N0}),
        .empty(raw_fifo_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(doa_wr),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(raw_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fir_doa_high_im_189 fir_doa_high_im_E_i
       (.aclk(clk),
        .aresetn(fir_doa_high_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_E),
        .m_axis_data_tvalid(NLW_fir_doa_high_im_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({E,E0}),
        .s_axis_data_tready(NLW_fir_doa_high_im_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fir_doa_high_im_189 fir_doa_high_im_N_i
       (.aclk(clk),
        .aresetn(fir_doa_high_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_N),
        .m_axis_data_tvalid(NLW_fir_doa_high_im_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({N,N0}),
        .s_axis_data_tready(NLW_fir_doa_high_im_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fir_doa_high_im_189_HD3 fir_doa_high_im_W_i
       (.aclk(clk),
        .aresetn(fir_doa_high_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_W),
        .m_axis_data_tvalid(NLW_fir_doa_high_im_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({W,W0}),
        .s_axis_data_tready(NLW_fir_doa_high_im_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fir_doa_high_re_189 fir_doa_high_re_E_i
       (.aclk(clk),
        .aresetn(fir_doa_high_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_E),
        .m_axis_data_tvalid(NLW_fir_doa_high_re_E_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({E,E0}),
        .s_axis_data_tready(NLW_fir_doa_high_re_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fir_doa_high_re_189 fir_doa_high_re_N_i
       (.aclk(clk),
        .aresetn(fir_doa_high_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_N),
        .m_axis_data_tvalid(NLW_fir_doa_high_re_N_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({N,N0}),
        .s_axis_data_tready(NLW_fir_doa_high_re_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  LUT1 #(
    .INIT(2'h1)) 
    fir_doa_high_re_N_i_i_1
       (.I0(reset),
        .O(fir_doa_high_re_N_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_fir_doa_high_re_189_HD4 fir_doa_high_re_W_i
       (.aclk(clk),
        .aresetn(fir_doa_high_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_W),
        .m_axis_data_tvalid(NLW_fir_doa_high_re_W_i_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({W,W0}),
        .s_axis_data_tready(NLW_fir_doa_high_re_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(freq_fifo_valid));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2 freq_E_i
       (.active(morlet_active),
        .clk(clk),
        .env(envE),
        .im(fir_im_E[34:11]),
        .phase(phaseE),
        .re(fir_re_E[34:11]),
        .valid(validE));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1 freq_N_i
       (.active(morlet_active),
        .clk(clk),
        .env(envN),
        .im(fir_im_N[34:11]),
        .phase(phaseN),
        .re(fir_re_N[34:11]),
        .valid(validN));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_freq_high_189_0_0_morlet_to_phase_env freq_W_i
       (.active(morlet_active),
        .clk(clk),
        .env(envW),
        .im(fir_im_W[34:11]),
        .phase(phaseW),
        .re(fir_re_W[34:11]),
        .valid(validW));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[32]),
        .Q(E0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[42]),
        .Q(E0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[43]),
        .Q(E0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[44]),
        .Q(E0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[45]),
        .Q(E0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[46]),
        .Q(E0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[47]),
        .Q(E0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[33]),
        .Q(E0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[34]),
        .Q(E0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[35]),
        .Q(E0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[36]),
        .Q(E0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[37]),
        .Q(E0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[38]),
        .Q(E0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[39]),
        .Q(E0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[40]),
        .Q(E0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.E0_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[41]),
        .Q(E0[9]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[48]),
        .Q(E[16]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[58]),
        .Q(E[26]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[59]),
        .Q(E[27]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[60]),
        .Q(E[28]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[61]),
        .Q(E[29]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[62]),
        .Q(E[30]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[63]),
        .Q(E[31]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[49]),
        .Q(E[17]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[50]),
        .Q(E[18]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[51]),
        .Q(E[19]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[52]),
        .Q(E[20]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[53]),
        .Q(E[21]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[54]),
        .Q(E[22]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[55]),
        .Q(E[23]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[56]),
        .Q(E[24]),
        .R(1'b0));
  FDRE \freq_high_189.E1_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[57]),
        .Q(E[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[0]),
        .Q(N0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[10]),
        .Q(N0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[11]),
        .Q(N0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[12]),
        .Q(N0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[13]),
        .Q(N0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[14]),
        .Q(N0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[15]),
        .Q(N0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[1]),
        .Q(N0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[2]),
        .Q(N0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[3]),
        .Q(N0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[4]),
        .Q(N0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[5]),
        .Q(N0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[6]),
        .Q(N0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[7]),
        .Q(N0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[8]),
        .Q(N0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.N0_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[9]),
        .Q(N0[9]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[16]),
        .Q(N[16]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[26]),
        .Q(N[26]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[27]),
        .Q(N[27]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[28]),
        .Q(N[28]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[29]),
        .Q(N[29]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[30]),
        .Q(N[30]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[31]),
        .Q(N[31]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[17]),
        .Q(N[17]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[18]),
        .Q(N[18]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[19]),
        .Q(N[19]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[20]),
        .Q(N[20]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[21]),
        .Q(N[21]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[22]),
        .Q(N[22]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[23]),
        .Q(N[23]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[24]),
        .Q(N[24]),
        .R(1'b0));
  FDRE \freq_high_189.N1_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[25]),
        .Q(N[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[64]),
        .Q(W0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[74]),
        .Q(W0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[75]),
        .Q(W0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[76]),
        .Q(W0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[77]),
        .Q(W0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[78]),
        .Q(W0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[79]),
        .Q(W0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[65]),
        .Q(W0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[66]),
        .Q(W0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[67]),
        .Q(W0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[68]),
        .Q(W0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[69]),
        .Q(W0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[70]),
        .Q(W0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[71]),
        .Q(W0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[72]),
        .Q(W0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.W0_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[73]),
        .Q(W0[9]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[0] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[80]),
        .Q(W[16]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[10] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[90]),
        .Q(W[26]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[11] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[91]),
        .Q(W[27]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[12] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[92]),
        .Q(W[28]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[13] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[93]),
        .Q(W[29]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[14] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[94]),
        .Q(W[30]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[15] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[95]),
        .Q(W[31]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[1] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[81]),
        .Q(W[17]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[2] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[82]),
        .Q(W[18]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[3] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[83]),
        .Q(W[19]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[4] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[84]),
        .Q(W[20]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[5] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[85]),
        .Q(W[21]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[6] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[86]),
        .Q(W[22]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[7] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[87]),
        .Q(W[23]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[8] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[88]),
        .Q(W[24]),
        .R(1'b0));
  FDRE \freq_high_189.W1_reg[9] 
       (.C(clk),
        .CE(freq_fifo_valid0),
        .D(freq_fifo_data[89]),
        .Q(W[25]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEBC2288)) 
    \freq_high_189.curr_delay[0]_i_1 
       (.I0(freq_fifo_valid),
        .I1(curr_delay[0]),
        .I2(data0),
        .I3(morlet_active__0),
        .I4(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .O(\freq_high_189.curr_delay[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8E3F8BC28A028A0)) 
    \freq_high_189.curr_delay[1]_i_1 
       (.I0(freq_fifo_valid),
        .I1(curr_delay[0]),
        .I2(curr_delay[1]),
        .I3(morlet_active__0),
        .I4(data0),
        .I5(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .O(\freq_high_189.curr_delay[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \freq_high_189.curr_delay[1]_i_2 
       (.I0(curr_delay[1]),
        .I1(curr_delay[0]),
        .I2(curr_delay[2]),
        .I3(\freq_high_189.curr_delay[3]_i_5_n_0 ),
        .I4(curr_delay[7]),
        .I5(curr_delay[6]),
        .O(data0));
  LUT6 #(
    .INIT(64'hFFFFFFFF2AAA8000)) 
    \freq_high_189.curr_delay[2]_i_1 
       (.I0(freq_fifo_valid),
        .I1(curr_delay[1]),
        .I2(morlet_active__0),
        .I3(curr_delay[0]),
        .I4(curr_delay[2]),
        .I5(\freq_high_189.curr_delay[2]_i_3_n_0 ),
        .O(\freq_high_189.curr_delay[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_high_189.curr_delay[2]_i_2 
       (.I0(\freq_high_189.start_delay[7]_i_4_n_0 ),
        .I1(start_delay[0]),
        .I2(start_delay[7]),
        .I3(start_delay[5]),
        .I4(start_delay[3]),
        .O(morlet_active__0));
  LUT6 #(
    .INIT(64'hA802A802A802A208)) 
    \freq_high_189.curr_delay[2]_i_3 
       (.I0(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .I1(data0),
        .I2(morlet_active__0),
        .I3(curr_delay[2]),
        .I4(curr_delay[1]),
        .I5(curr_delay[0]),
        .O(\freq_high_189.curr_delay[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FF8F28F22882288)) 
    \freq_high_189.curr_delay[3]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_high_189.curr_delay[3]_i_2_n_0 ),
        .I2(\freq_high_189.curr_delay[3]_i_3_n_0 ),
        .I3(curr_delay[3]),
        .I4(curr_delay[2]),
        .I5(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .O(\freq_high_189.curr_delay[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \freq_high_189.curr_delay[3]_i_2 
       (.I0(curr_delay[1]),
        .I1(morlet_active__0),
        .I2(curr_delay[0]),
        .I3(curr_delay[2]),
        .O(\freq_high_189.curr_delay[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00AB)) 
    \freq_high_189.curr_delay[3]_i_3 
       (.I0(morlet_active__0),
        .I1(\freq_high_189.curr_delay[3]_i_4_n_0 ),
        .I2(\freq_high_189.curr_delay[3]_i_5_n_0 ),
        .I3(curr_delay[2]),
        .I4(curr_delay[0]),
        .I5(curr_delay[1]),
        .O(\freq_high_189.curr_delay[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \freq_high_189.curr_delay[3]_i_4 
       (.I0(curr_delay[6]),
        .I1(curr_delay[7]),
        .O(\freq_high_189.curr_delay[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \freq_high_189.curr_delay[3]_i_5 
       (.I0(curr_delay[4]),
        .I1(curr_delay[3]),
        .I2(curr_delay[5]),
        .O(\freq_high_189.curr_delay[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF282828)) 
    \freq_high_189.curr_delay[4]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_high_189.curr_delay[7]_i_2_n_0 ),
        .I2(curr_delay[4]),
        .I3(curr_delay__0[4]),
        .I4(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .O(\freq_high_189.curr_delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAAA5554)) 
    \freq_high_189.curr_delay[4]_i_2 
       (.I0(\freq_high_189.curr_delay[6]_i_3_n_0 ),
        .I1(curr_delay[5]),
        .I2(curr_delay[7]),
        .I3(curr_delay[6]),
        .I4(curr_delay[4]),
        .I5(curr_delay[3]),
        .O(curr_delay__0[4]));
  LUT6 #(
    .INIT(64'hFFFF2A802A802A80)) 
    \freq_high_189.curr_delay[5]_i_1 
       (.I0(freq_fifo_valid),
        .I1(curr_delay[4]),
        .I2(\freq_high_189.curr_delay[7]_i_2_n_0 ),
        .I3(curr_delay[5]),
        .I4(curr_delay__0[5]),
        .I5(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .O(\freq_high_189.curr_delay[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFAA0054)) 
    \freq_high_189.curr_delay[5]_i_2 
       (.I0(curr_delay[3]),
        .I1(curr_delay[6]),
        .I2(curr_delay[7]),
        .I3(\freq_high_189.curr_delay[6]_i_3_n_0 ),
        .I4(curr_delay[5]),
        .I5(curr_delay[4]),
        .O(curr_delay__0[5]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \freq_high_189.curr_delay[5]_i_3 
       (.I0(\freq_high_189.start_delay[7]_i_3_n_0 ),
        .I1(start_delay[2]),
        .I2(start_delay[1]),
        .I3(start_delay[6]),
        .I4(start_delay[4]),
        .I5(freq_fifo_valid),
        .O(\freq_high_189.curr_delay[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2AAA8000)) 
    \freq_high_189.curr_delay[6]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_high_189.curr_delay[7]_i_2_n_0 ),
        .I2(curr_delay[4]),
        .I3(curr_delay[5]),
        .I4(curr_delay[6]),
        .I5(\freq_high_189.curr_delay[6]_i_2_n_0 ),
        .O(\freq_high_189.curr_delay[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A082A080)) 
    \freq_high_189.curr_delay[6]_i_2 
       (.I0(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .I1(curr_delay[5]),
        .I2(curr_delay[6]),
        .I3(\freq_high_189.curr_delay[6]_i_3_n_0 ),
        .I4(curr_delay[7]),
        .I5(\freq_high_189.curr_delay[6]_i_4_n_0 ),
        .O(\freq_high_189.curr_delay[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \freq_high_189.curr_delay[6]_i_3 
       (.I0(curr_delay[2]),
        .I1(curr_delay[0]),
        .I2(curr_delay[1]),
        .I3(\freq_high_189.start_delay[7]_i_3_n_0 ),
        .I4(\freq_high_189.start_delay[7]_i_4_n_0 ),
        .O(\freq_high_189.curr_delay[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \freq_high_189.curr_delay[6]_i_4 
       (.I0(curr_delay[3]),
        .I1(curr_delay[4]),
        .O(\freq_high_189.curr_delay[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2A80)) 
    \freq_high_189.curr_delay[7]_i_1 
       (.I0(freq_fifo_valid),
        .I1(\freq_high_189.curr_delay[7]_i_2_n_0 ),
        .I2(\freq_high_189.curr_delay[7]_i_3_n_0 ),
        .I3(curr_delay[7]),
        .I4(\freq_high_189.curr_delay[7]_i_4_n_0 ),
        .O(\freq_high_189.curr_delay[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \freq_high_189.curr_delay[7]_i_2 
       (.I0(curr_delay[2]),
        .I1(curr_delay[0]),
        .I2(morlet_active__0),
        .I3(curr_delay[1]),
        .I4(curr_delay[3]),
        .O(\freq_high_189.curr_delay[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \freq_high_189.curr_delay[7]_i_3 
       (.I0(curr_delay[6]),
        .I1(curr_delay[5]),
        .I2(curr_delay[4]),
        .O(\freq_high_189.curr_delay[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A080)) 
    \freq_high_189.curr_delay[7]_i_4 
       (.I0(\freq_high_189.curr_delay[5]_i_3_n_0 ),
        .I1(curr_delay[6]),
        .I2(curr_delay[7]),
        .I3(\freq_high_189.curr_delay[7]_i_5_n_0 ),
        .I4(morlet_active__0),
        .O(\freq_high_189.curr_delay[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \freq_high_189.curr_delay[7]_i_5 
       (.I0(curr_delay[5]),
        .I1(curr_delay[3]),
        .I2(curr_delay[4]),
        .I3(curr_delay[2]),
        .I4(curr_delay[0]),
        .I5(curr_delay[1]),
        .O(\freq_high_189.curr_delay[7]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[0]_i_1_n_0 ),
        .Q(curr_delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[1]_i_1_n_0 ),
        .Q(curr_delay[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[2]_i_1_n_0 ),
        .Q(curr_delay[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[3]_i_1_n_0 ),
        .Q(curr_delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[4]_i_1_n_0 ),
        .Q(curr_delay[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[5]_i_1_n_0 ),
        .Q(curr_delay[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[6]_i_1_n_0 ),
        .Q(curr_delay[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.curr_delay_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.curr_delay[7]_i_1_n_0 ),
        .Q(curr_delay[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \freq_high_189.doa_data[491]_i_1 
       (.I0(validN),
        .I1(validE),
        .I2(validW),
        .O(doa_data0));
  FDRE \freq_high_189.doa_data_reg[0] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[0]),
        .Q(doa_data[0]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[100] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[64]),
        .Q(doa_data[100]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[101] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[65]),
        .Q(doa_data[101]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[102] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[66]),
        .Q(doa_data[102]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[103] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[67]),
        .Q(doa_data[103]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[104] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[68]),
        .Q(doa_data[104]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[105] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[69]),
        .Q(doa_data[105]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[106] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[70]),
        .Q(doa_data[106]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[107] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[71]),
        .Q(doa_data[107]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[108] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[72]),
        .Q(doa_data[108]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[109] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[73]),
        .Q(doa_data[109]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[10] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[10]),
        .Q(doa_data[10]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[110] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[74]),
        .Q(doa_data[110]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[111] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[75]),
        .Q(doa_data[111]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[112] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[76]),
        .Q(doa_data[112]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[113] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[77]),
        .Q(doa_data[113]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[114] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[78]),
        .Q(doa_data[114]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[115] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[79]),
        .Q(doa_data[115]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[116] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[80]),
        .Q(doa_data[116]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[117] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[81]),
        .Q(doa_data[117]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[118] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[82]),
        .Q(doa_data[118]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[119] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[83]),
        .Q(doa_data[119]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[11] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[11]),
        .Q(doa_data[11]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[120] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[84]),
        .Q(doa_data[120]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[121] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[85]),
        .Q(doa_data[121]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[122] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[86]),
        .Q(doa_data[122]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[123] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[87]),
        .Q(doa_data[123]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[124] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[88]),
        .Q(doa_data[124]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[125] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[89]),
        .Q(doa_data[125]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[126] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[90]),
        .Q(doa_data[126]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[127] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[91]),
        .Q(doa_data[127]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[128] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[92]),
        .Q(doa_data[128]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[129] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[93]),
        .Q(doa_data[129]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[12] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[12]),
        .Q(doa_data[12]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[130] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[94]),
        .Q(doa_data[130]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[131] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[95]),
        .Q(doa_data[131]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[132] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[96]),
        .Q(doa_data[132]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[133] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[97]),
        .Q(doa_data[133]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[134] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[98]),
        .Q(doa_data[134]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[135] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[99]),
        .Q(doa_data[135]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[136] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[100]),
        .Q(doa_data[136]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[137] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[101]),
        .Q(doa_data[137]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[138] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[102]),
        .Q(doa_data[138]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[139] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[103]),
        .Q(doa_data[139]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[13] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[13]),
        .Q(doa_data[13]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[140] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[104]),
        .Q(doa_data[140]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[141] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[105]),
        .Q(doa_data[141]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[142] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[106]),
        .Q(doa_data[142]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[143] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[107]),
        .Q(doa_data[143]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[144] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[108]),
        .Q(doa_data[144]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[145] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[109]),
        .Q(doa_data[145]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[146] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[110]),
        .Q(doa_data[146]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[147] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[111]),
        .Q(doa_data[147]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[148] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[112]),
        .Q(doa_data[148]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[149] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[113]),
        .Q(doa_data[149]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[14] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[14]),
        .Q(doa_data[14]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[150] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[114]),
        .Q(doa_data[150]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[151] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[115]),
        .Q(doa_data[151]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[152] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[116]),
        .Q(doa_data[152]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[153] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[117]),
        .Q(doa_data[153]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[154] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[118]),
        .Q(doa_data[154]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[155] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[119]),
        .Q(doa_data[155]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[156] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[120]),
        .Q(doa_data[156]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[157] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[121]),
        .Q(doa_data[157]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[158] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[122]),
        .Q(doa_data[158]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[159] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[123]),
        .Q(doa_data[159]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[15] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[15]),
        .Q(doa_data[15]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[160] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[124]),
        .Q(doa_data[160]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[161] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[125]),
        .Q(doa_data[161]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[162] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[126]),
        .Q(doa_data[162]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[163] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[127]),
        .Q(doa_data[163]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[164] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[0]),
        .Q(doa_data[164]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[165] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[1]),
        .Q(doa_data[165]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[166] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[2]),
        .Q(doa_data[166]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[167] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[3]),
        .Q(doa_data[167]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[168] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[4]),
        .Q(doa_data[168]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[169] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[5]),
        .Q(doa_data[169]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[16] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[0]),
        .Q(doa_data[16]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[170] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[6]),
        .Q(doa_data[170]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[171] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[7]),
        .Q(doa_data[171]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[172] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[8]),
        .Q(doa_data[172]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[173] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[9]),
        .Q(doa_data[173]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[174] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[10]),
        .Q(doa_data[174]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[175] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[11]),
        .Q(doa_data[175]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[176] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[12]),
        .Q(doa_data[176]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[177] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[13]),
        .Q(doa_data[177]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[178] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[14]),
        .Q(doa_data[178]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[179] 
       (.C(clk),
        .CE(doa_data0),
        .D(envE[15]),
        .Q(doa_data[179]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[17] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[1]),
        .Q(doa_data[17]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[180] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[0]),
        .Q(doa_data[180]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[181] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[1]),
        .Q(doa_data[181]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[182] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[2]),
        .Q(doa_data[182]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[183] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[3]),
        .Q(doa_data[183]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[184] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[4]),
        .Q(doa_data[184]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[185] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[5]),
        .Q(doa_data[185]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[186] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[6]),
        .Q(doa_data[186]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[187] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[7]),
        .Q(doa_data[187]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[188] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[8]),
        .Q(doa_data[188]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[189] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[9]),
        .Q(doa_data[189]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[18] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[2]),
        .Q(doa_data[18]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[190] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[10]),
        .Q(doa_data[190]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[191] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[11]),
        .Q(doa_data[191]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[192] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[12]),
        .Q(doa_data[192]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[193] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[13]),
        .Q(doa_data[193]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[194] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[14]),
        .Q(doa_data[194]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[195] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[15]),
        .Q(doa_data[195]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[196] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[16]),
        .Q(doa_data[196]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[197] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[17]),
        .Q(doa_data[197]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[198] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[18]),
        .Q(doa_data[198]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[199] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseE[19]),
        .Q(doa_data[199]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[19] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[3]),
        .Q(doa_data[19]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[1] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[1]),
        .Q(doa_data[1]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[200] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[0]),
        .Q(doa_data[200]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[201] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[1]),
        .Q(doa_data[201]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[202] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[2]),
        .Q(doa_data[202]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[203] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[3]),
        .Q(doa_data[203]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[204] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[4]),
        .Q(doa_data[204]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[205] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[5]),
        .Q(doa_data[205]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[206] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[6]),
        .Q(doa_data[206]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[207] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[7]),
        .Q(doa_data[207]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[208] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[8]),
        .Q(doa_data[208]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[209] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[9]),
        .Q(doa_data[209]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[20] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[4]),
        .Q(doa_data[20]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[210] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[10]),
        .Q(doa_data[210]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[211] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[11]),
        .Q(doa_data[211]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[212] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[12]),
        .Q(doa_data[212]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[213] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[13]),
        .Q(doa_data[213]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[214] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[14]),
        .Q(doa_data[214]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[215] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_E0[15]),
        .Q(doa_data[215]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[216] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[144]),
        .Q(doa_data[216]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[217] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[145]),
        .Q(doa_data[217]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[218] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[146]),
        .Q(doa_data[218]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[219] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[147]),
        .Q(doa_data[219]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[21] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[5]),
        .Q(doa_data[21]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[220] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[148]),
        .Q(doa_data[220]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[221] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[149]),
        .Q(doa_data[221]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[222] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[150]),
        .Q(doa_data[222]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[223] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[151]),
        .Q(doa_data[223]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[224] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[152]),
        .Q(doa_data[224]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[225] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[153]),
        .Q(doa_data[225]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[226] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[154]),
        .Q(doa_data[226]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[227] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[155]),
        .Q(doa_data[227]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[228] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[156]),
        .Q(doa_data[228]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[229] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[157]),
        .Q(doa_data[229]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[22] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[6]),
        .Q(doa_data[22]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[230] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[158]),
        .Q(doa_data[230]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[231] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[159]),
        .Q(doa_data[231]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[232] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[160]),
        .Q(doa_data[232]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[233] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[161]),
        .Q(doa_data[233]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[234] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[162]),
        .Q(doa_data[234]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[235] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[163]),
        .Q(doa_data[235]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[236] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[164]),
        .Q(doa_data[236]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[237] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[165]),
        .Q(doa_data[237]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[238] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[166]),
        .Q(doa_data[238]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[239] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[167]),
        .Q(doa_data[239]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[23] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[7]),
        .Q(doa_data[23]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[240] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[168]),
        .Q(doa_data[240]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[241] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[169]),
        .Q(doa_data[241]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[242] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[170]),
        .Q(doa_data[242]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[243] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[171]),
        .Q(doa_data[243]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[244] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[172]),
        .Q(doa_data[244]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[245] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[173]),
        .Q(doa_data[245]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[246] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[174]),
        .Q(doa_data[246]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[247] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[175]),
        .Q(doa_data[247]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[248] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[176]),
        .Q(doa_data[248]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[249] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[177]),
        .Q(doa_data[249]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[24] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[8]),
        .Q(doa_data[24]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[250] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[178]),
        .Q(doa_data[250]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[251] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[179]),
        .Q(doa_data[251]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[252] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[180]),
        .Q(doa_data[252]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[253] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[181]),
        .Q(doa_data[253]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[254] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[182]),
        .Q(doa_data[254]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[255] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[183]),
        .Q(doa_data[255]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[256] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[184]),
        .Q(doa_data[256]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[257] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[185]),
        .Q(doa_data[257]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[258] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[186]),
        .Q(doa_data[258]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[259] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[187]),
        .Q(doa_data[259]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[25] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[9]),
        .Q(doa_data[25]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[260] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[188]),
        .Q(doa_data[260]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[261] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[189]),
        .Q(doa_data[261]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[262] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[190]),
        .Q(doa_data[262]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[263] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[191]),
        .Q(doa_data[263]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[264] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[192]),
        .Q(doa_data[264]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[265] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[193]),
        .Q(doa_data[265]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[266] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[194]),
        .Q(doa_data[266]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[267] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[195]),
        .Q(doa_data[267]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[268] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[196]),
        .Q(doa_data[268]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[269] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[197]),
        .Q(doa_data[269]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[26] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[10]),
        .Q(doa_data[26]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[270] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[198]),
        .Q(doa_data[270]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[271] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[199]),
        .Q(doa_data[271]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[272] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[200]),
        .Q(doa_data[272]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[273] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[201]),
        .Q(doa_data[273]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[274] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[202]),
        .Q(doa_data[274]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[275] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[203]),
        .Q(doa_data[275]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[276] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[204]),
        .Q(doa_data[276]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[277] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[205]),
        .Q(doa_data[277]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[278] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[206]),
        .Q(doa_data[278]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[279] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[207]),
        .Q(doa_data[279]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[27] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[11]),
        .Q(doa_data[27]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[280] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[208]),
        .Q(doa_data[280]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[281] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[209]),
        .Q(doa_data[281]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[282] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[210]),
        .Q(doa_data[282]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[283] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[211]),
        .Q(doa_data[283]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[284] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[212]),
        .Q(doa_data[284]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[285] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[213]),
        .Q(doa_data[285]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[286] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[214]),
        .Q(doa_data[286]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[287] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[215]),
        .Q(doa_data[287]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[288] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[216]),
        .Q(doa_data[288]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[289] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[217]),
        .Q(doa_data[289]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[28] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[12]),
        .Q(doa_data[28]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[290] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[218]),
        .Q(doa_data[290]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[291] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[219]),
        .Q(doa_data[291]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[292] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[220]),
        .Q(doa_data[292]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[293] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[221]),
        .Q(doa_data[293]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[294] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[222]),
        .Q(doa_data[294]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[295] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[223]),
        .Q(doa_data[295]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[296] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[224]),
        .Q(doa_data[296]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[297] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[225]),
        .Q(doa_data[297]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[298] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[226]),
        .Q(doa_data[298]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[299] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[227]),
        .Q(doa_data[299]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[29] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[13]),
        .Q(doa_data[29]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[2] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[2]),
        .Q(doa_data[2]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[300] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[228]),
        .Q(doa_data[300]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[301] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[229]),
        .Q(doa_data[301]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[302] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[230]),
        .Q(doa_data[302]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[303] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[231]),
        .Q(doa_data[303]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[304] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[232]),
        .Q(doa_data[304]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[305] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[233]),
        .Q(doa_data[305]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[306] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[234]),
        .Q(doa_data[306]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[307] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[235]),
        .Q(doa_data[307]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[308] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[236]),
        .Q(doa_data[308]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[309] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[237]),
        .Q(doa_data[309]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[30] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[14]),
        .Q(doa_data[30]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[310] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[238]),
        .Q(doa_data[310]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[311] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[239]),
        .Q(doa_data[311]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[312] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[240]),
        .Q(doa_data[312]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[313] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[241]),
        .Q(doa_data[313]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[314] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[242]),
        .Q(doa_data[314]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[315] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[243]),
        .Q(doa_data[315]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[316] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[244]),
        .Q(doa_data[316]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[317] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[245]),
        .Q(doa_data[317]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[318] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[246]),
        .Q(doa_data[318]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[319] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[247]),
        .Q(doa_data[319]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[31] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[15]),
        .Q(doa_data[31]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[320] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[248]),
        .Q(doa_data[320]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[321] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[249]),
        .Q(doa_data[321]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[322] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[250]),
        .Q(doa_data[322]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[323] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[251]),
        .Q(doa_data[323]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[324] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[252]),
        .Q(doa_data[324]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[325] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[253]),
        .Q(doa_data[325]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[326] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[254]),
        .Q(doa_data[326]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[327] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[255]),
        .Q(doa_data[327]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[328] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[0]),
        .Q(doa_data[328]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[329] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[1]),
        .Q(doa_data[329]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[32] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[16]),
        .Q(doa_data[32]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[330] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[2]),
        .Q(doa_data[330]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[331] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[3]),
        .Q(doa_data[331]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[332] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[4]),
        .Q(doa_data[332]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[333] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[5]),
        .Q(doa_data[333]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[334] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[6]),
        .Q(doa_data[334]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[335] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[7]),
        .Q(doa_data[335]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[336] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[8]),
        .Q(doa_data[336]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[337] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[9]),
        .Q(doa_data[337]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[338] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[10]),
        .Q(doa_data[338]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[339] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[11]),
        .Q(doa_data[339]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[33] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[17]),
        .Q(doa_data[33]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[340] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[12]),
        .Q(doa_data[340]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[341] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[13]),
        .Q(doa_data[341]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[342] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[14]),
        .Q(doa_data[342]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[343] 
       (.C(clk),
        .CE(doa_data0),
        .D(envW[15]),
        .Q(doa_data[343]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[344] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[0]),
        .Q(doa_data[344]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[345] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[1]),
        .Q(doa_data[345]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[346] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[2]),
        .Q(doa_data[346]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[347] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[3]),
        .Q(doa_data[347]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[348] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[4]),
        .Q(doa_data[348]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[349] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[5]),
        .Q(doa_data[349]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[34] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[18]),
        .Q(doa_data[34]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[350] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[6]),
        .Q(doa_data[350]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[351] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[7]),
        .Q(doa_data[351]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[352] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[8]),
        .Q(doa_data[352]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[353] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[9]),
        .Q(doa_data[353]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[354] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[10]),
        .Q(doa_data[354]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[355] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[11]),
        .Q(doa_data[355]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[356] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[12]),
        .Q(doa_data[356]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[357] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[13]),
        .Q(doa_data[357]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[358] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[14]),
        .Q(doa_data[358]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[359] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[15]),
        .Q(doa_data[359]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[35] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseN[19]),
        .Q(doa_data[35]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[360] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[16]),
        .Q(doa_data[360]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[361] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[17]),
        .Q(doa_data[361]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[362] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[18]),
        .Q(doa_data[362]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[363] 
       (.C(clk),
        .CE(doa_data0),
        .D(phaseW[19]),
        .Q(doa_data[363]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[364] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[0]),
        .Q(doa_data[364]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[365] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[1]),
        .Q(doa_data[365]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[366] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[2]),
        .Q(doa_data[366]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[367] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[3]),
        .Q(doa_data[367]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[368] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[4]),
        .Q(doa_data[368]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[369] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[5]),
        .Q(doa_data[369]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[36] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[0]),
        .Q(doa_data[36]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[370] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[6]),
        .Q(doa_data[370]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[371] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[7]),
        .Q(doa_data[371]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[372] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[8]),
        .Q(doa_data[372]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[373] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[9]),
        .Q(doa_data[373]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[374] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[10]),
        .Q(doa_data[374]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[375] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[11]),
        .Q(doa_data[375]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[376] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[12]),
        .Q(doa_data[376]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[377] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[13]),
        .Q(doa_data[377]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[378] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[14]),
        .Q(doa_data[378]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[379] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_W0[15]),
        .Q(doa_data[379]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[37] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[1]),
        .Q(doa_data[37]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[380] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[272]),
        .Q(doa_data[380]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[381] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[273]),
        .Q(doa_data[381]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[382] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[274]),
        .Q(doa_data[382]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[383] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[275]),
        .Q(doa_data[383]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[384] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[276]),
        .Q(doa_data[384]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[385] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[277]),
        .Q(doa_data[385]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[386] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[278]),
        .Q(doa_data[386]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[387] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[279]),
        .Q(doa_data[387]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[388] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[280]),
        .Q(doa_data[388]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[389] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[281]),
        .Q(doa_data[389]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[38] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[2]),
        .Q(doa_data[38]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[390] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[282]),
        .Q(doa_data[390]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[391] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[283]),
        .Q(doa_data[391]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[392] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[284]),
        .Q(doa_data[392]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[393] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[285]),
        .Q(doa_data[393]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[394] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[286]),
        .Q(doa_data[394]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[395] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[287]),
        .Q(doa_data[395]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[396] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[288]),
        .Q(doa_data[396]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[397] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[289]),
        .Q(doa_data[397]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[398] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[290]),
        .Q(doa_data[398]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[399] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[291]),
        .Q(doa_data[399]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[39] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[3]),
        .Q(doa_data[39]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[3] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[3]),
        .Q(doa_data[3]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[400] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[292]),
        .Q(doa_data[400]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[401] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[293]),
        .Q(doa_data[401]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[402] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[294]),
        .Q(doa_data[402]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[403] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[295]),
        .Q(doa_data[403]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[404] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[296]),
        .Q(doa_data[404]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[405] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[297]),
        .Q(doa_data[405]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[406] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[298]),
        .Q(doa_data[406]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[407] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[299]),
        .Q(doa_data[407]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[408] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[300]),
        .Q(doa_data[408]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[409] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[301]),
        .Q(doa_data[409]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[40] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[4]),
        .Q(doa_data[40]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[410] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[302]),
        .Q(doa_data[410]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[411] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[303]),
        .Q(doa_data[411]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[412] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[304]),
        .Q(doa_data[412]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[413] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[305]),
        .Q(doa_data[413]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[414] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[306]),
        .Q(doa_data[414]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[415] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[307]),
        .Q(doa_data[415]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[416] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[308]),
        .Q(doa_data[416]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[417] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[309]),
        .Q(doa_data[417]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[418] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[310]),
        .Q(doa_data[418]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[419] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[311]),
        .Q(doa_data[419]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[41] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[5]),
        .Q(doa_data[41]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[420] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[312]),
        .Q(doa_data[420]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[421] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[313]),
        .Q(doa_data[421]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[422] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[314]),
        .Q(doa_data[422]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[423] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[315]),
        .Q(doa_data[423]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[424] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[316]),
        .Q(doa_data[424]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[425] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[317]),
        .Q(doa_data[425]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[426] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[318]),
        .Q(doa_data[426]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[427] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[319]),
        .Q(doa_data[427]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[428] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[320]),
        .Q(doa_data[428]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[429] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[321]),
        .Q(doa_data[429]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[42] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[6]),
        .Q(doa_data[42]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[430] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[322]),
        .Q(doa_data[430]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[431] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[323]),
        .Q(doa_data[431]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[432] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[324]),
        .Q(doa_data[432]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[433] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[325]),
        .Q(doa_data[433]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[434] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[326]),
        .Q(doa_data[434]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[435] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[327]),
        .Q(doa_data[435]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[436] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[328]),
        .Q(doa_data[436]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[437] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[329]),
        .Q(doa_data[437]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[438] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[330]),
        .Q(doa_data[438]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[439] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[331]),
        .Q(doa_data[439]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[43] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[7]),
        .Q(doa_data[43]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[440] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[332]),
        .Q(doa_data[440]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[441] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[333]),
        .Q(doa_data[441]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[442] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[334]),
        .Q(doa_data[442]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[443] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[335]),
        .Q(doa_data[443]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[444] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[336]),
        .Q(doa_data[444]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[445] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[337]),
        .Q(doa_data[445]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[446] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[338]),
        .Q(doa_data[446]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[447] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[339]),
        .Q(doa_data[447]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[448] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[340]),
        .Q(doa_data[448]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[449] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[341]),
        .Q(doa_data[449]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[44] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[8]),
        .Q(doa_data[44]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[450] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[342]),
        .Q(doa_data[450]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[451] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[343]),
        .Q(doa_data[451]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[452] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[344]),
        .Q(doa_data[452]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[453] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[345]),
        .Q(doa_data[453]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[454] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[346]),
        .Q(doa_data[454]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[455] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[347]),
        .Q(doa_data[455]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[456] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[348]),
        .Q(doa_data[456]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[457] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[349]),
        .Q(doa_data[457]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[458] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[350]),
        .Q(doa_data[458]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[459] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[351]),
        .Q(doa_data[459]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[45] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[9]),
        .Q(doa_data[45]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[460] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[352]),
        .Q(doa_data[460]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[461] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[353]),
        .Q(doa_data[461]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[462] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[354]),
        .Q(doa_data[462]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[463] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[355]),
        .Q(doa_data[463]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[464] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[356]),
        .Q(doa_data[464]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[465] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[357]),
        .Q(doa_data[465]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[466] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[358]),
        .Q(doa_data[466]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[467] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[359]),
        .Q(doa_data[467]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[468] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[360]),
        .Q(doa_data[468]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[469] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[361]),
        .Q(doa_data[469]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[46] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[10]),
        .Q(doa_data[46]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[470] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[362]),
        .Q(doa_data[470]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[471] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[363]),
        .Q(doa_data[471]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[472] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[364]),
        .Q(doa_data[472]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[473] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[365]),
        .Q(doa_data[473]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[474] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[366]),
        .Q(doa_data[474]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[475] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[367]),
        .Q(doa_data[475]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[476] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[368]),
        .Q(doa_data[476]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[477] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[369]),
        .Q(doa_data[477]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[478] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[370]),
        .Q(doa_data[478]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[479] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[371]),
        .Q(doa_data[479]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[47] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[11]),
        .Q(doa_data[47]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[480] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[372]),
        .Q(doa_data[480]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[481] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[373]),
        .Q(doa_data[481]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[482] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[374]),
        .Q(doa_data[482]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[483] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[375]),
        .Q(doa_data[483]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[484] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[376]),
        .Q(doa_data[484]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[485] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[377]),
        .Q(doa_data[485]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[486] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[378]),
        .Q(doa_data[486]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[487] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[379]),
        .Q(doa_data[487]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[488] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[380]),
        .Q(doa_data[488]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[489] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[381]),
        .Q(doa_data[489]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[48] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[12]),
        .Q(doa_data[48]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[490] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[382]),
        .Q(doa_data[490]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[491] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[383]),
        .Q(doa_data[491]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[49] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[13]),
        .Q(doa_data[49]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[4] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[4]),
        .Q(doa_data[4]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[50] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[14]),
        .Q(doa_data[50]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[51] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_N0[15]),
        .Q(doa_data[51]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[52] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[16]),
        .Q(doa_data[52]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[53] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[17]),
        .Q(doa_data[53]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[54] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[18]),
        .Q(doa_data[54]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[55] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[19]),
        .Q(doa_data[55]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[56] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[20]),
        .Q(doa_data[56]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[57] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[21]),
        .Q(doa_data[57]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[58] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[22]),
        .Q(doa_data[58]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[59] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[23]),
        .Q(doa_data[59]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[5] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[5]),
        .Q(doa_data[5]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[60] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[24]),
        .Q(doa_data[60]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[61] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[25]),
        .Q(doa_data[61]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[62] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[26]),
        .Q(doa_data[62]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[63] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[27]),
        .Q(doa_data[63]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[64] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[28]),
        .Q(doa_data[64]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[65] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[29]),
        .Q(doa_data[65]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[66] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[30]),
        .Q(doa_data[66]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[67] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[31]),
        .Q(doa_data[67]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[68] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[32]),
        .Q(doa_data[68]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[69] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[33]),
        .Q(doa_data[69]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[6] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[6]),
        .Q(doa_data[6]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[70] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[34]),
        .Q(doa_data[70]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[71] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[35]),
        .Q(doa_data[71]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[72] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[36]),
        .Q(doa_data[72]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[73] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[37]),
        .Q(doa_data[73]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[74] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[38]),
        .Q(doa_data[74]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[75] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[39]),
        .Q(doa_data[75]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[76] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[40]),
        .Q(doa_data[76]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[77] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[41]),
        .Q(doa_data[77]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[78] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[42]),
        .Q(doa_data[78]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[79] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[43]),
        .Q(doa_data[79]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[7] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[7]),
        .Q(doa_data[7]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[80] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[44]),
        .Q(doa_data[80]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[81] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[45]),
        .Q(doa_data[81]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[82] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[46]),
        .Q(doa_data[82]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[83] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[47]),
        .Q(doa_data[83]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[84] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[48]),
        .Q(doa_data[84]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[85] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[49]),
        .Q(doa_data[85]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[86] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[50]),
        .Q(doa_data[86]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[87] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[51]),
        .Q(doa_data[87]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[88] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[52]),
        .Q(doa_data[88]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[89] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[53]),
        .Q(doa_data[89]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[8] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[8]),
        .Q(doa_data[8]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[90] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[54]),
        .Q(doa_data[90]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[91] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[55]),
        .Q(doa_data[91]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[92] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[56]),
        .Q(doa_data[92]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[93] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[57]),
        .Q(doa_data[93]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[94] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[58]),
        .Q(doa_data[94]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[95] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[59]),
        .Q(doa_data[95]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[96] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[60]),
        .Q(doa_data[96]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[97] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[61]),
        .Q(doa_data[97]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[98] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[62]),
        .Q(doa_data[98]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[99] 
       (.C(clk),
        .CE(doa_data0),
        .D(raw_fifo_data[63]),
        .Q(doa_data[99]),
        .R(1'b0));
  FDRE \freq_high_189.doa_data_reg[9] 
       (.C(clk),
        .CE(doa_data0),
        .D(envN[9]),
        .Q(doa_data[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.doa_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(doa_data0),
        .Q(doa_wr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \freq_high_189.freq_fifo_rd_i_1 
       (.I0(freq_fifo_empty),
        .I1(freq_rd_delay[1]),
        .I2(freq_rd_delay[2]),
        .I3(freq_rd_delay[0]),
        .O(\freq_high_189.freq_fifo_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.freq_fifo_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.freq_fifo_rd_i_1_n_0 ),
        .Q(freq_fifo_rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \freq_high_189.freq_fifo_valid_i_1 
       (.I0(freq_fifo_rd),
        .I1(freq_fifo_empty),
        .O(freq_fifo_valid0));
  FDRE \freq_high_189.freq_fifo_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(freq_fifo_valid0),
        .Q(freq_fifo_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \freq_high_189.freq_rd_delay[0]_i_1 
       (.I0(freq_rd_delay[0]),
        .O(freq_rd_delay0));
  LUT3 #(
    .INIT(8'hFE)) 
    \freq_high_189.freq_rd_delay[1]_i_1 
       (.I0(freq_rd_delay[0]),
        .I1(freq_rd_delay[2]),
        .I2(freq_rd_delay[1]),
        .O(\freq_high_189.freq_rd_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \freq_high_189.freq_rd_delay[1]_i_2 
       (.I0(freq_rd_delay[0]),
        .I1(freq_rd_delay[1]),
        .O(\freq_high_189.freq_rd_delay[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \freq_high_189.freq_rd_delay[2]_i_1 
       (.I0(freq_rd_delay[0]),
        .I1(freq_rd_delay[2]),
        .I2(freq_rd_delay[1]),
        .O(\freq_high_189.freq_rd_delay[2]_i_1_n_0 ));
  FDSE \freq_high_189.freq_rd_delay_reg[0] 
       (.C(clk),
        .CE(\freq_high_189.freq_rd_delay[1]_i_1_n_0 ),
        .D(freq_rd_delay0),
        .Q(freq_rd_delay[0]),
        .S(freq_fifo_empty));
  FDSE \freq_high_189.freq_rd_delay_reg[1] 
       (.C(clk),
        .CE(\freq_high_189.freq_rd_delay[1]_i_1_n_0 ),
        .D(\freq_high_189.freq_rd_delay[1]_i_2_n_0 ),
        .Q(freq_rd_delay[1]),
        .S(freq_fifo_empty));
  FDSE \freq_high_189.freq_rd_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.freq_rd_delay[2]_i_1_n_0 ),
        .Q(freq_rd_delay[2]),
        .S(freq_fifo_empty));
  LUT3 #(
    .INIT(8'h54)) 
    \freq_high_189.morlet_active_i_1 
       (.I0(morlet_active__0),
        .I1(freq_fifo_valid),
        .I2(data0),
        .O(\freq_high_189.morlet_active_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \freq_high_189.morlet_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_high_189.morlet_active_i_1_n_0 ),
        .Q(morlet_active),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \freq_high_189.start_delay[0]_i_1 
       (.I0(start_delay[7]),
        .I1(start_delay[5]),
        .I2(start_delay[3]),
        .I3(start_delay[0]),
        .I4(\freq_high_189.start_delay[7]_i_4_n_0 ),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'h33333332CCCCCCCC)) 
    \freq_high_189.start_delay[1]_i_1 
       (.I0(\freq_high_189.start_delay[7]_i_4_n_0 ),
        .I1(start_delay[0]),
        .I2(start_delay[7]),
        .I3(start_delay[5]),
        .I4(start_delay[3]),
        .I5(start_delay[1]),
        .O(\freq_high_189.start_delay[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h54FEFE54FE54FE54)) 
    \freq_high_189.start_delay[2]_i_1 
       (.I0(morlet_active__0),
        .I1(data0),
        .I2(freq_fifo_valid),
        .I3(start_delay[2]),
        .I4(start_delay[0]),
        .I5(start_delay[1]),
        .O(\freq_high_189.start_delay[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \freq_high_189.start_delay[3]_i_1 
       (.I0(morlet_active__0),
        .I1(start_delay[3]),
        .I2(start_delay[0]),
        .I3(start_delay[2]),
        .I4(start_delay[1]),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \freq_high_189.start_delay[4]_i_1 
       (.I0(morlet_active__0),
        .I1(start_delay[4]),
        .I2(start_delay[3]),
        .I3(start_delay[0]),
        .I4(start_delay[2]),
        .I5(start_delay[1]),
        .O(\freq_high_189.start_delay[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \freq_high_189.start_delay[5]_i_1 
       (.I0(start_delay[5]),
        .I1(start_delay[3]),
        .I2(start_delay[0]),
        .I3(\freq_high_189.start_delay[5]_i_2_n_0 ),
        .O(p_1_in__0[5]));
  LUT3 #(
    .INIT(8'h7F)) 
    \freq_high_189.start_delay[5]_i_2 
       (.I0(start_delay[2]),
        .I1(start_delay[1]),
        .I2(start_delay[4]),
        .O(\freq_high_189.start_delay[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5400)) 
    \freq_high_189.start_delay[6]_i_1 
       (.I0(morlet_active__0),
        .I1(data0),
        .I2(freq_fifo_valid),
        .I3(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .O(\freq_high_189.start_delay[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC8)) 
    \freq_high_189.start_delay[6]_i_2 
       (.I0(start_delay[7]),
        .I1(start_delay[6]),
        .I2(start_delay[5]),
        .I3(start_delay[0]),
        .I4(start_delay[3]),
        .I5(\freq_high_189.start_delay[5]_i_2_n_0 ),
        .O(\freq_high_189.start_delay[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \freq_high_189.start_delay[7]_i_1 
       (.I0(\freq_high_189.start_delay[7]_i_3_n_0 ),
        .I1(start_delay[2]),
        .I2(start_delay[1]),
        .I3(start_delay[6]),
        .I4(start_delay[4]),
        .I5(freq_fifo_valid),
        .O(\freq_high_189.start_delay[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \freq_high_189.start_delay[7]_i_2 
       (.I0(start_delay[7]),
        .I1(start_delay[5]),
        .I2(start_delay[0]),
        .I3(start_delay[3]),
        .I4(\freq_high_189.start_delay[7]_i_4_n_0 ),
        .O(p_1_in__0[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \freq_high_189.start_delay[7]_i_3 
       (.I0(start_delay[3]),
        .I1(start_delay[5]),
        .I2(start_delay[7]),
        .I3(start_delay[0]),
        .O(\freq_high_189.start_delay[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \freq_high_189.start_delay[7]_i_4 
       (.I0(start_delay[4]),
        .I1(start_delay[1]),
        .I2(start_delay[2]),
        .I3(start_delay[6]),
        .O(\freq_high_189.start_delay[7]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.start_delay_reg[0] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(start_delay[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \freq_high_189.start_delay_reg[1] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(\freq_high_189.start_delay[1]_i_1_n_0 ),
        .Q(start_delay[1]),
        .S(\freq_high_189.start_delay[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \freq_high_189.start_delay_reg[2] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(\freq_high_189.start_delay[2]_i_1_n_0 ),
        .Q(start_delay[2]),
        .S(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.start_delay_reg[3] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(start_delay[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \freq_high_189.start_delay_reg[4] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(\freq_high_189.start_delay[4]_i_1_n_0 ),
        .Q(start_delay[4]),
        .S(\freq_high_189.start_delay[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.start_delay_reg[5] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(start_delay[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \freq_high_189.start_delay_reg[6] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(\freq_high_189.start_delay[6]_i_2_n_0 ),
        .Q(start_delay[6]),
        .S(\freq_high_189.start_delay[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \freq_high_189.start_delay_reg[7] 
       (.C(clk),
        .CE(\freq_high_189.start_delay[7]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(start_delay[7]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_ila_1 ila_1_i
       (.clk(clk),
        .probe0(doa_wr),
        .probe1(raw_fifo_empty),
        .probe10(envN),
        .probe11(phaseN),
        .probe12(raw_N0),
        .probe13(E0),
        .probe14(fir_re_E),
        .probe15(fir_im_E),
        .probe16(envE),
        .probe17(phaseE),
        .probe18(raw_E0),
        .probe19(W0),
        .probe2(freq_fifo_empty),
        .probe20(fir_re_W),
        .probe21(fir_im_W),
        .probe22({1'b0,1'b0,1'b0,1'b0,envW}),
        .probe23(phaseW[15:0]),
        .probe24(raw_W0),
        .probe3(freq_fifo_rd),
        .probe4(start_delay),
        .probe5(curr_delay),
        .probe6(morlet_active),
        .probe7(N0),
        .probe8(fir_re_N),
        .probe9(fir_im_N));
endmodule

(* CHECK_LICENSE_TYPE = "ila_1,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_1" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_ila_1
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
    probe24);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [7:0]probe4;
  input [7:0]probe5;
  input [0:0]probe6;
  input [15:0]probe7;
  input [39:0]probe8;
  input [39:0]probe9;
  input [15:0]probe10;
  input [19:0]probe11;
  input [15:0]probe12;
  input [15:0]probe13;
  input [39:0]probe14;
  input [39:0]probe15;
  input [15:0]probe16;
  input [19:0]probe17;
  input [15:0]probe18;
  input [15:0]probe19;
  input [39:0]probe20;
  input [39:0]probe21;
  input [19:0]probe22;
  input [15:0]probe23;
  input [15:0]probe24;


endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_high_189_0_0_morlet_to_phase_env
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

  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_W_i/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
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
  mult_16_16_HD5 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_mult_16_16 mult_re_i
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
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  cordic_atan2_16_HD7 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__1
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

  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_N_i/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
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
  ps_freq_high_189_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* ORIG_REF_NAME = "morlet_to_phase_env" *) 
module ps_freq_high_189_0_0_morlet_to_phase_env__xdcDup__2
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

  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[0]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[0]),
        .Q(amp_4[0]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[10]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[10]),
        .Q(amp_4[10]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[11]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[11]),
        .Q(amp_4[11]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[12]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[12]),
        .Q(amp_4[12]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[13]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[13]),
        .Q(amp_4[13]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[14]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[14]),
        .Q(amp_4[14]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[15]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[15]),
        .Q(amp_4[15]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[1]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[1]),
        .Q(amp_4[1]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[2]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[2]),
        .Q(amp_4[2]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[3]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[3]),
        .Q(amp_4[3]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[4]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[4]),
        .Q(amp_4[4]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[5]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[5]),
        .Q(amp_4[5]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[6]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[6]),
        .Q(amp_4[6]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[7]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[7]),
        .Q(amp_4[7]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[8]_srl4 " *) 
  SRL16E \morlet_to_phase_env.amp_4_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(lenv[8]),
        .Q(amp_4[8]));
  (* srl_bus_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg " *) 
  (* srl_name = "inst/freq_E_i/\\morlet_to_phase_env.amp_4_reg[9]_srl4 " *) 
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
  ps_freq_high_189_0_0_mult_16_16 mult_im_i
       (.A(im[23:8]),
        .B(im[23:8]),
        .CLK(clk),
        .P(im2));
  (* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_mult_16_16 mult_re_i
       (.A(re[23:8]),
        .B(re[23:8]),
        .CLK(clk),
        .P(re2));
  (* CHECK_LICENSE_TYPE = "cordic_sqrt_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_cordic_sqrt_16 sqrt_i
       (.aclk(clk),
        .m_axis_dout_tdata(lenv),
        .m_axis_dout_tvalid(NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata(p2),
        .s_axis_cartesian_tvalid(active));
  (* CHECK_LICENSE_TYPE = "cordic_atan2_16,cordic_v6_0_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_24,Vivado 2025.1" *) 
  ps_freq_high_189_0_0_cordic_atan2_16 tan2_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED[23:20],lphase}),
        .m_axis_dout_tvalid(NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_cartesian_tdata({im,re}),
        .s_axis_cartesian_tvalid(active));
endmodule

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_16_16" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_freq_high_189_0_0_mult_16_16
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
