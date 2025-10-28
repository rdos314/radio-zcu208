-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Oct 28 19:01:39 2025
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
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_doa_0_0_ila_0;
  component ps_doa_0_0_ila_0_HD1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component ps_doa_0_0_ila_0_HD1;
  signal E0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E0 : signal is std.standard.true;
  signal E1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E1 : signal is std.standard.true;
  signal E2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E2 : signal is std.standard.true;
  signal E3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E3 : signal is std.standard.true;
  signal E4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E4 : signal is std.standard.true;
  signal E5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E5 : signal is std.standard.true;
  signal E6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E6 : signal is std.standard.true;
  signal E7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E7 : signal is std.standard.true;
  signal E8 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E8 : signal is std.standard.true;
  signal E9 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E9 : signal is std.standard.true;
  signal N0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N0 : signal is std.standard.true;
  signal N1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N1 : signal is std.standard.true;
  signal N2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N2 : signal is std.standard.true;
  signal N3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N3 : signal is std.standard.true;
  signal N4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N4 : signal is std.standard.true;
  signal N5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N5 : signal is std.standard.true;
  signal N6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N6 : signal is std.standard.true;
  signal N7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N7 : signal is std.standard.true;
  signal N8 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N8 : signal is std.standard.true;
  signal N9 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N9 : signal is std.standard.true;
  signal W0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W0 : signal is std.standard.true;
  signal W1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W1 : signal is std.standard.true;
  signal W2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W2 : signal is std.standard.true;
  signal W3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W3 : signal is std.standard.true;
  signal W4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W4 : signal is std.standard.true;
  signal W5 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W5 : signal is std.standard.true;
  signal W6 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W6 : signal is std.standard.true;
  signal W7 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W7 : signal is std.standard.true;
  signal W8 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W8 : signal is std.standard.true;
  signal W9 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W9 : signal is std.standard.true;
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
  E0(13 downto 0) <= data_E(15 downto 2);
  E1(13 downto 0) <= data_E(31 downto 18);
  E2(13 downto 0) <= data_E(47 downto 34);
  E3(13 downto 0) <= data_E(63 downto 50);
  E4(13 downto 0) <= data_E(79 downto 66);
  E5(13 downto 0) <= data_E(95 downto 82);
  E6(13 downto 0) <= data_E(111 downto 98);
  E7(13 downto 0) <= data_E(127 downto 114);
  E8(13 downto 0) <= data_E(143 downto 130);
  E9(13 downto 0) <= data_E(159 downto 146);
  N0(13 downto 0) <= data_N(15 downto 2);
  N1(13 downto 0) <= data_N(31 downto 18);
  N2(13 downto 0) <= data_N(47 downto 34);
  N3(13 downto 0) <= data_N(63 downto 50);
  N4(13 downto 0) <= data_N(79 downto 66);
  N5(13 downto 0) <= data_N(95 downto 82);
  N6(13 downto 0) <= data_N(111 downto 98);
  N7(13 downto 0) <= data_N(127 downto 114);
  N8(13 downto 0) <= data_N(143 downto 130);
  N9(13 downto 0) <= data_N(159 downto 146);
  W0(13 downto 0) <= data_W(15 downto 2);
  W1(13 downto 0) <= data_W(31 downto 18);
  W2(13 downto 0) <= data_W(47 downto 34);
  W3(13 downto 0) <= data_W(63 downto 50);
  W4(13 downto 0) <= data_W(79 downto 66);
  W5(13 downto 0) <= data_W(95 downto 82);
  W6(13 downto 0) <= data_W(111 downto 98);
  W7(13 downto 0) <= data_W(127 downto 114);
  W8(13 downto 0) <= data_W(143 downto 130);
  W9(13 downto 0) <= data_W(159 downto 146);
ila_E: component ps_doa_0_0_ila_0
     port map (
      clk => clk,
      probe0(13 downto 0) => E0(13 downto 0),
      probe1(13 downto 0) => E1(13 downto 0),
      probe10(0) => ready_E,
      probe11(0) => resetn,
      probe2(13 downto 0) => E2(13 downto 0),
      probe3(13 downto 0) => E3(13 downto 0),
      probe4(13 downto 0) => E4(13 downto 0),
      probe5(13 downto 0) => E5(13 downto 0),
      probe6(13 downto 0) => E6(13 downto 0),
      probe7(13 downto 0) => E7(13 downto 0),
      probe8(13 downto 0) => E8(13 downto 0),
      probe9(13 downto 0) => E9(13 downto 0)
    );
ila_N: component ps_doa_0_0_ila_0
     port map (
      clk => clk,
      probe0(13 downto 0) => N0(13 downto 0),
      probe1(13 downto 0) => N1(13 downto 0),
      probe10(0) => ready_N,
      probe11(0) => resetn,
      probe2(13 downto 0) => N2(13 downto 0),
      probe3(13 downto 0) => N3(13 downto 0),
      probe4(13 downto 0) => N4(13 downto 0),
      probe5(13 downto 0) => N5(13 downto 0),
      probe6(13 downto 0) => N6(13 downto 0),
      probe7(13 downto 0) => N7(13 downto 0),
      probe8(13 downto 0) => N8(13 downto 0),
      probe9(13 downto 0) => N9(13 downto 0)
    );
ila_W: component ps_doa_0_0_ila_0_HD1
     port map (
      clk => clk,
      probe0(13 downto 0) => W0(13 downto 0),
      probe1(13 downto 0) => W1(13 downto 0),
      probe10(0) => ready_W,
      probe11(0) => resetn,
      probe2(13 downto 0) => W2(13 downto 0),
      probe3(13 downto 0) => W3(13 downto 0),
      probe4(13 downto 0) => W4(13 downto 0),
      probe5(13 downto 0) => W5(13 downto 0),
      probe6(13 downto 0) => W6(13 downto 0),
      probe7(13 downto 0) => W7(13 downto 0),
      probe8(13 downto 0) => W8(13 downto 0),
      probe9(13 downto 0) => W9(13 downto 0)
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
      data_E(159 downto 146) => data_E(159 downto 146),
      data_E(145 downto 144) => B"00",
      data_E(143 downto 130) => data_E(143 downto 130),
      data_E(129 downto 128) => B"00",
      data_E(127 downto 114) => data_E(127 downto 114),
      data_E(113 downto 112) => B"00",
      data_E(111 downto 98) => data_E(111 downto 98),
      data_E(97 downto 96) => B"00",
      data_E(95 downto 82) => data_E(95 downto 82),
      data_E(81 downto 80) => B"00",
      data_E(79 downto 66) => data_E(79 downto 66),
      data_E(65 downto 64) => B"00",
      data_E(63 downto 50) => data_E(63 downto 50),
      data_E(49 downto 48) => B"00",
      data_E(47 downto 34) => data_E(47 downto 34),
      data_E(33 downto 32) => B"00",
      data_E(31 downto 18) => data_E(31 downto 18),
      data_E(17 downto 16) => B"00",
      data_E(15 downto 2) => data_E(15 downto 2),
      data_E(1 downto 0) => B"00",
      data_N(159 downto 146) => data_N(159 downto 146),
      data_N(145 downto 144) => B"00",
      data_N(143 downto 130) => data_N(143 downto 130),
      data_N(129 downto 128) => B"00",
      data_N(127 downto 114) => data_N(127 downto 114),
      data_N(113 downto 112) => B"00",
      data_N(111 downto 98) => data_N(111 downto 98),
      data_N(97 downto 96) => B"00",
      data_N(95 downto 82) => data_N(95 downto 82),
      data_N(81 downto 80) => B"00",
      data_N(79 downto 66) => data_N(79 downto 66),
      data_N(65 downto 64) => B"00",
      data_N(63 downto 50) => data_N(63 downto 50),
      data_N(49 downto 48) => B"00",
      data_N(47 downto 34) => data_N(47 downto 34),
      data_N(33 downto 32) => B"00",
      data_N(31 downto 18) => data_N(31 downto 18),
      data_N(17 downto 16) => B"00",
      data_N(15 downto 2) => data_N(15 downto 2),
      data_N(1 downto 0) => B"00",
      data_W(159 downto 146) => data_W(159 downto 146),
      data_W(145 downto 144) => B"00",
      data_W(143 downto 130) => data_W(143 downto 130),
      data_W(129 downto 128) => B"00",
      data_W(127 downto 114) => data_W(127 downto 114),
      data_W(113 downto 112) => B"00",
      data_W(111 downto 98) => data_W(111 downto 98),
      data_W(97 downto 96) => B"00",
      data_W(95 downto 82) => data_W(95 downto 82),
      data_W(81 downto 80) => B"00",
      data_W(79 downto 66) => data_W(79 downto 66),
      data_W(65 downto 64) => B"00",
      data_W(63 downto 50) => data_W(63 downto 50),
      data_W(49 downto 48) => B"00",
      data_W(47 downto 34) => data_W(47 downto 34),
      data_W(33 downto 32) => B"00",
      data_W(31 downto 18) => data_W(31 downto 18),
      data_W(17 downto 16) => B"00",
      data_W(15 downto 2) => data_W(15 downto 2),
      data_W(1 downto 0) => B"00",
      ready_E => ready_E,
      ready_N => ready_N,
      ready_W => ready_W,
      resetn => resetn
    );
end STRUCTURE;
