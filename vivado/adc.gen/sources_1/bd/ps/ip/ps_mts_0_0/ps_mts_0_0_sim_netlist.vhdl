-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Oct  2 00:57:19 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_sim_netlist.vhdl
-- Design      : ps_mts_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_mts_0_0_mts is
  port (
    pl_clk : out STD_LOGIC;
    pl_sysref : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    pl_clk_p : in STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_sysref_p : in STD_LOGIC;
    pl_sysref_n : in STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_mts_0_0_mts : entity is "mts";
end ps_mts_0_0_mts;

architecture STRUCTURE of ps_mts_0_0_mts is
  signal \^pl_clk\ : STD_LOGIC;
  signal \^pl_sysref\ : STD_LOGIC;
  signal pl_sysref_r : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \mts.pl_clk_i\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \mts.pl_clk_i\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \mts.pl_clk_i\ : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \mts.pl_clk_i\ : label is "IBUFGDS";
  attribute BOX_TYPE of \mts.pl_sysref_i\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \mts.pl_sysref_i\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \mts.pl_sysref_i\ : label is "0";
  attribute XILINX_LEGACY_PRIM of \mts.pl_sysref_i\ : label is "IBUFGDS";
begin
  pl_clk <= \^pl_clk\;
  pl_sysref <= \^pl_sysref\;
\mts.pl_clk_i\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pl_clk_p,
      IB => pl_clk_n,
      O => \^pl_clk\
    );
\mts.pl_sysref_i\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pl_sysref_p,
      IB => pl_sysref_n,
      O => \^pl_sysref\
    );
\mts.pl_sysref_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^pl_clk\,
      CE => '1',
      D => \^pl_sysref\,
      Q => pl_sysref_r,
      R => '0'
    );
\mts.user_sysref_adc_reg\: unisim.vcomponents.FDRE
     port map (
      C => m0_axis_aclk,
      CE => '1',
      D => pl_sysref_r,
      Q => user_sysref_adc,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_mts_0_0 is
  port (
    pl_clk_p : in STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_clk : out STD_LOGIC;
    pl_sysref_p : in STD_LOGIC;
    pl_sysref_n : in STD_LOGIC;
    pl_sysref : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_mts_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_mts_0_0 : entity is "ps_mts_0_0,mts,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_mts_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_mts_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_mts_0_0 : entity is "mts,Vivado 2025.1";
end ps_mts_0_0;

architecture STRUCTURE of ps_mts_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m0_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m0_axis_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of m0_axis_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m0_axis_aclk : signal is "XIL_INTERFACENAME m0_axis_aclk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc0_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE of pl_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_pl_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk_n : signal is "xilinx.com:signal:clock:1.0 pl_clk_n CLK";
  attribute X_INTERFACE_MODE of pl_clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk_n : signal is "XIL_INTERFACENAME pl_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk_p : signal is "xilinx.com:signal:clock:1.0 pl_clk_p CLK";
  attribute X_INTERFACE_MODE of pl_clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk_p : signal is "XIL_INTERFACENAME pl_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_p, INSERT_VIP 0";
begin
inst: entity work.ps_mts_0_0_mts
     port map (
      m0_axis_aclk => m0_axis_aclk,
      pl_clk => pl_clk,
      pl_clk_n => pl_clk_n,
      pl_clk_p => pl_clk_p,
      pl_sysref => pl_sysref,
      pl_sysref_n => pl_sysref_n,
      pl_sysref_p => pl_sysref_p,
      user_sysref_adc => user_sysref_adc
    );
end STRUCTURE;
