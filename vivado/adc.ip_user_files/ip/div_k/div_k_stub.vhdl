-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Dec 22 21:30:01 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub c:/radio-zcu208/vivado/adc.gen/sources_1/ip/div_k/div_k_stub.vhdl
-- Design      : div_k
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_k is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of div_k : entity is "div_k,div_gen_v5_1_24,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of div_k : entity is "div_k,div_gen_v5_1_24,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=div_gen,x_ipVersion=5.1,x_ipCoreRevision=24,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynquplus,C_HAS_ARESETN=0,C_HAS_ACLKEN=0,C_LATENCY=36,ALGORITHM_TYPE=1,DIVISOR_WIDTH=20,DIVIDEND_WIDTH=32,SIGNED_B=1,DIVCLK_SEL=1,FRACTIONAL_B=0,FRACTIONAL_WIDTH=20,C_HAS_DIV_BY_ZERO=0,C_THROTTLE_SCHEME=3,C_TLAST_RESOLUTION=0,C_HAS_S_AXIS_DIVISOR_TUSER=0,C_HAS_S_AXIS_DIVISOR_TLAST=0,C_S_AXIS_DIVISOR_TDATA_WIDTH=24,C_S_AXIS_DIVISOR_TUSER_WIDTH=1,C_HAS_S_AXIS_DIVIDEND_TUSER=0,C_HAS_S_AXIS_DIVIDEND_TLAST=0,C_S_AXIS_DIVIDEND_TDATA_WIDTH=32,C_S_AXIS_DIVIDEND_TUSER_WIDTH=1,C_M_AXIS_DOUT_TDATA_WIDTH=56,C_M_AXIS_DOUT_TUSER_WIDTH=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of div_k : entity is "yes";
end div_k;

architecture stub of div_k is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_divisor_tvalid,s_axis_divisor_tdata[23:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[31:0],m_axis_dout_tvalid,m_axis_dout_tdata[55:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of aclk : signal is "slave aclk_intf";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_divisor_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID";
  attribute x_interface_mode of s_axis_divisor_tvalid : signal is "slave S_AXIS_DIVISOR";
  attribute x_interface_parameter of s_axis_divisor_tvalid : signal is "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_divisor_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA";
  attribute x_interface_info of s_axis_dividend_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID";
  attribute x_interface_mode of s_axis_dividend_tvalid : signal is "slave S_AXIS_DIVIDEND";
  attribute x_interface_parameter of s_axis_dividend_tvalid : signal is "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_dividend_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA";
  attribute x_interface_info of m_axis_dout_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID";
  attribute x_interface_mode of m_axis_dout_tvalid : signal is "master M_AXIS_DOUT";
  attribute x_interface_parameter of m_axis_dout_tvalid : signal is "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 7, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_dout_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "div_gen_v5_1_24,Vivado 2025.1";
begin
end;
