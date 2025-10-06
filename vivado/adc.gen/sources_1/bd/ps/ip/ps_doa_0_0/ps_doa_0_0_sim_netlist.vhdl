-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Oct  6 21:38:46 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_0_0/ps_doa_0_0_sim_netlist.vhdl
-- Design      : ps_doa_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_0_0_doa is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_W : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_doa_0_0_doa : entity is "doa";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_doa_0_0_doa : entity is "soft";
end ps_doa_0_0_doa;

architecture STRUCTURE of ps_doa_0_0_doa is
  component ps_doa_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_doa_0_0_ila_0;
  component ps_doa_0_0_ila_0_HD1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_doa_0_0_ila_0_HD1;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_E : label is "ila_0,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_E : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_E : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_N : label is "ila_0,ila,{}";
  attribute DowngradeIPIdentifiedWarnings of ila_N : label is "yes";
  attribute X_CORE_INFO of ila_N : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_W : label is "ila_0,ila,{}";
  attribute DowngradeIPIdentifiedWarnings of ila_W : label is "yes";
  attribute X_CORE_INFO of ila_W : label is "ila,Vivado 2025.1";
begin
ila_E: component ps_doa_0_0_ila_0
     port map (
      clk => clk,
      probe0(15 downto 0) => data_E(15 downto 0),
      probe1(15 downto 0) => data_E(31 downto 16),
      probe10(0) => ready_E,
      probe2(15 downto 0) => data_E(47 downto 32),
      probe3(15 downto 0) => data_E(63 downto 48),
      probe4(15 downto 0) => data_E(79 downto 64),
      probe5(15 downto 0) => data_E(95 downto 80),
      probe6(15 downto 0) => data_E(111 downto 96),
      probe7(15 downto 0) => data_E(127 downto 112),
      probe8(15 downto 0) => data_E(143 downto 128),
      probe9(15 downto 0) => data_E(159 downto 144)
    );
ila_N: component ps_doa_0_0_ila_0
     port map (
      clk => clk,
      probe0(15 downto 0) => data_N(15 downto 0),
      probe1(15 downto 0) => data_N(31 downto 16),
      probe10(0) => ready_N,
      probe2(15 downto 0) => data_N(47 downto 32),
      probe3(15 downto 0) => data_N(63 downto 48),
      probe4(15 downto 0) => data_N(79 downto 64),
      probe5(15 downto 0) => data_N(95 downto 80),
      probe6(15 downto 0) => data_N(111 downto 96),
      probe7(15 downto 0) => data_N(127 downto 112),
      probe8(15 downto 0) => data_N(143 downto 128),
      probe9(15 downto 0) => data_N(159 downto 144)
    );
ila_W: component ps_doa_0_0_ila_0_HD1
     port map (
      clk => clk,
      probe0(15 downto 0) => data_W(15 downto 0),
      probe1(15 downto 0) => data_W(31 downto 16),
      probe10(0) => ready_W,
      probe2(15 downto 0) => data_W(47 downto 32),
      probe3(15 downto 0) => data_W(63 downto 48),
      probe4(15 downto 0) => data_W(79 downto 64),
      probe5(15 downto 0) => data_W(95 downto 80),
      probe6(15 downto 0) => data_W(111 downto 96),
      probe7(15 downto 0) => data_W(127 downto 112),
      probe8(15 downto 0) => data_W(143 downto 128),
      probe9(15 downto 0) => data_W(159 downto 144)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_doa_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_W : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_doa_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_doa_0_0 : entity is "ps_doa_0_0,doa,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_doa_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_doa_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_doa_0_0 : entity is "doa,Vivado 2025.1";
end ps_doa_0_0;

architecture STRUCTURE of ps_doa_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_doa_0_0_doa
     port map (
      clk => clk,
      data_E(159 downto 0) => data_E(159 downto 0),
      data_N(159 downto 0) => data_N(159 downto 0),
      data_W(159 downto 0) => data_W(159 downto 0),
      ready_E => ready_E,
      ready_N => ready_N,
      ready_W => ready_W,
      resetn => '0'
    );
end STRUCTURE;
