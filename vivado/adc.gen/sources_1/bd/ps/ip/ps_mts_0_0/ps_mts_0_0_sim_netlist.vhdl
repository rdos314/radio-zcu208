-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Oct  3 00:39:27 2025
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
    pl_clk : in STD_LOGIC;
    m_clk : in STD_LOGIC;
    pl_sysref : in STD_LOGIC;
    user_sysref_adc : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_mts_0_0_mts : entity is "mts";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_mts_0_0_mts : entity is "soft";
end ps_mts_0_0_mts;

architecture STRUCTURE of ps_mts_0_0_mts is
  component ps_mts_0_0_ila_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_mts_0_0_ila_1;
  signal pl_sysref_r : STD_LOGIC;
  signal \^user_sysref_adc\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of user_sysref_adc : signal is std.standard.true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_1,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_i : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_i : label is "ila,Vivado 2025.1";
  attribute KEEP : string;
  attribute KEEP of \mts.user_sysref_adc_reg\ : label is "yes";
begin
  user_sysref_adc <= \^user_sysref_adc\;
ila_i: component ps_mts_0_0_ila_1
     port map (
      clk => m_clk,
      probe0(0) => \^user_sysref_adc\
    );
\mts.pl_sysref_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk,
      CE => '1',
      D => pl_sysref,
      Q => pl_sysref_r,
      R => '0'
    );
\mts.user_sysref_adc_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_clk,
      CE => '1',
      D => pl_sysref_r,
      Q => \^user_sysref_adc\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_mts_0_0 is
  port (
    pl_clk : in STD_LOGIC;
    m_clk : in STD_LOGIC;
    pl_sysref : in STD_LOGIC;
    user_sysref_adc : out STD_LOGIC
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
  attribute X_INTERFACE_INFO of m_clk : signal is "xilinx.com:signal:clock:1.0 m_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of m_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_clk : signal is "XIL_INTERFACENAME m_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE of pl_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
begin
inst: entity work.ps_mts_0_0_mts
     port map (
      m_clk => m_clk,
      pl_clk => pl_clk,
      pl_sysref => pl_sysref,
      user_sysref_adc => user_sysref_adc
    );
end STRUCTURE;
