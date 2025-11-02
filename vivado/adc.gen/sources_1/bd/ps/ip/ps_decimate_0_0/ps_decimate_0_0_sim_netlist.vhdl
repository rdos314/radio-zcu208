-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Nov  2 17:44:18 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_decimate_0_0/ps_decimate_0_0_sim_netlist.vhdl
-- Design      : ps_decimate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_decimate_0_0_decimate is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_W : in STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    fifo : out STD_LOGIC_VECTOR ( 447 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_decimate_0_0_decimate : entity is "decimate";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_decimate_0_0_decimate : entity is "soft";
end ps_decimate_0_0_decimate;

architecture STRUCTURE of ps_decimate_0_0_decimate is
  component ps_decimate_0_0_ila_0 is
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
  end component ps_decimate_0_0_ila_0;
  component ps_decimate_0_0_ila_0_HD1 is
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
  end component ps_decimate_0_0_ila_0_HD1;
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
  signal active : STD_LOGIC;
  signal active_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of active_1 : signal is "true";
  signal active_2 : STD_LOGIC;
  attribute async_reg of active_2 : signal is "true";
  signal clear : STD_LOGIC;
  signal \decimate.active_i_1_n_0\ : STD_LOGIC;
  signal \decimate.counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \decimate.counter_reg\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \decimate.counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \decimate.counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \decimate.counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \decimate.counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \decimate.counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_decimate.counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_decimate.counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \decimate.counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \decimate.counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \decimate.counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \decimate.counter_reg[8]_i_1\ : label is 16;
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
\decimate.active_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ready_W,
      I1 => resetn,
      I2 => ready_N,
      I3 => ready_E,
      O => \decimate.active_i_1_n_0\
    );
\decimate.active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.active_i_1_n_0\,
      Q => active,
      R => '0'
    );
\decimate.counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active,
      O => clear
    );
\decimate.counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \decimate.counter_reg\(0),
      O => \decimate.counter[0]_i_3_n_0\
    );
\decimate.counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_15\,
      Q => \decimate.counter_reg\(0),
      R => clear
    );
\decimate.counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \decimate.counter_reg[0]_i_2_n_0\,
      CO(6) => \decimate.counter_reg[0]_i_2_n_1\,
      CO(5) => \decimate.counter_reg[0]_i_2_n_2\,
      CO(4) => \decimate.counter_reg[0]_i_2_n_3\,
      CO(3) => \decimate.counter_reg[0]_i_2_n_4\,
      CO(2) => \decimate.counter_reg[0]_i_2_n_5\,
      CO(1) => \decimate.counter_reg[0]_i_2_n_6\,
      CO(0) => \decimate.counter_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \decimate.counter_reg[0]_i_2_n_8\,
      O(6) => \decimate.counter_reg[0]_i_2_n_9\,
      O(5) => \decimate.counter_reg[0]_i_2_n_10\,
      O(4) => \decimate.counter_reg[0]_i_2_n_11\,
      O(3) => \decimate.counter_reg[0]_i_2_n_12\,
      O(2) => \decimate.counter_reg[0]_i_2_n_13\,
      O(1) => \decimate.counter_reg[0]_i_2_n_14\,
      O(0) => \decimate.counter_reg[0]_i_2_n_15\,
      S(7 downto 1) => \decimate.counter_reg\(7 downto 1),
      S(0) => \decimate.counter[0]_i_3_n_0\
    );
\decimate.counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_13\,
      Q => \decimate.counter_reg\(10),
      R => clear
    );
\decimate.counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_12\,
      Q => \decimate.counter_reg\(11),
      R => clear
    );
\decimate.counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_11\,
      Q => \decimate.counter_reg\(12),
      R => clear
    );
\decimate.counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_10\,
      Q => \decimate.counter_reg\(13),
      R => clear
    );
\decimate.counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_9\,
      Q => \decimate.counter_reg\(14),
      R => clear
    );
\decimate.counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_8\,
      Q => \decimate.counter_reg\(15),
      R => clear
    );
\decimate.counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_15\,
      Q => \decimate.counter_reg\(16),
      R => clear
    );
\decimate.counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \decimate.counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \decimate.counter_reg[16]_i_1_n_0\,
      CO(6) => \decimate.counter_reg[16]_i_1_n_1\,
      CO(5) => \decimate.counter_reg[16]_i_1_n_2\,
      CO(4) => \decimate.counter_reg[16]_i_1_n_3\,
      CO(3) => \decimate.counter_reg[16]_i_1_n_4\,
      CO(2) => \decimate.counter_reg[16]_i_1_n_5\,
      CO(1) => \decimate.counter_reg[16]_i_1_n_6\,
      CO(0) => \decimate.counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \decimate.counter_reg[16]_i_1_n_8\,
      O(6) => \decimate.counter_reg[16]_i_1_n_9\,
      O(5) => \decimate.counter_reg[16]_i_1_n_10\,
      O(4) => \decimate.counter_reg[16]_i_1_n_11\,
      O(3) => \decimate.counter_reg[16]_i_1_n_12\,
      O(2) => \decimate.counter_reg[16]_i_1_n_13\,
      O(1) => \decimate.counter_reg[16]_i_1_n_14\,
      O(0) => \decimate.counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => \decimate.counter_reg\(23 downto 16)
    );
\decimate.counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_14\,
      Q => \decimate.counter_reg\(17),
      R => clear
    );
\decimate.counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_13\,
      Q => \decimate.counter_reg\(18),
      R => clear
    );
\decimate.counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_12\,
      Q => \decimate.counter_reg\(19),
      R => clear
    );
\decimate.counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_14\,
      Q => \decimate.counter_reg\(1),
      R => clear
    );
\decimate.counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_11\,
      Q => \decimate.counter_reg\(20),
      R => clear
    );
\decimate.counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_10\,
      Q => \decimate.counter_reg\(21),
      R => clear
    );
\decimate.counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_9\,
      Q => \decimate.counter_reg\(22),
      R => clear
    );
\decimate.counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[16]_i_1_n_8\,
      Q => \decimate.counter_reg\(23),
      R => clear
    );
\decimate.counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[24]_i_1_n_15\,
      Q => \decimate.counter_reg\(24),
      R => clear
    );
\decimate.counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \decimate.counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_decimate.counter_reg[24]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \decimate.counter_reg[24]_i_1_n_5\,
      CO(1) => \decimate.counter_reg[24]_i_1_n_6\,
      CO(0) => \decimate.counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_decimate.counter_reg[24]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \decimate.counter_reg[24]_i_1_n_12\,
      O(2) => \decimate.counter_reg[24]_i_1_n_13\,
      O(1) => \decimate.counter_reg[24]_i_1_n_14\,
      O(0) => \decimate.counter_reg[24]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => \decimate.counter_reg\(27 downto 24)
    );
\decimate.counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[24]_i_1_n_14\,
      Q => \decimate.counter_reg\(25),
      R => clear
    );
\decimate.counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[24]_i_1_n_13\,
      Q => \decimate.counter_reg\(26),
      R => clear
    );
\decimate.counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[24]_i_1_n_12\,
      Q => \decimate.counter_reg\(27),
      R => clear
    );
\decimate.counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_13\,
      Q => \decimate.counter_reg\(2),
      R => clear
    );
\decimate.counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_12\,
      Q => \decimate.counter_reg\(3),
      R => clear
    );
\decimate.counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_11\,
      Q => \decimate.counter_reg\(4),
      R => clear
    );
\decimate.counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_10\,
      Q => \decimate.counter_reg\(5),
      R => clear
    );
\decimate.counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_9\,
      Q => \decimate.counter_reg\(6),
      R => clear
    );
\decimate.counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[0]_i_2_n_8\,
      Q => \decimate.counter_reg\(7),
      R => clear
    );
\decimate.counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_15\,
      Q => \decimate.counter_reg\(8),
      R => clear
    );
\decimate.counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \decimate.counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \decimate.counter_reg[8]_i_1_n_0\,
      CO(6) => \decimate.counter_reg[8]_i_1_n_1\,
      CO(5) => \decimate.counter_reg[8]_i_1_n_2\,
      CO(4) => \decimate.counter_reg[8]_i_1_n_3\,
      CO(3) => \decimate.counter_reg[8]_i_1_n_4\,
      CO(2) => \decimate.counter_reg[8]_i_1_n_5\,
      CO(1) => \decimate.counter_reg[8]_i_1_n_6\,
      CO(0) => \decimate.counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \decimate.counter_reg[8]_i_1_n_8\,
      O(6) => \decimate.counter_reg[8]_i_1_n_9\,
      O(5) => \decimate.counter_reg[8]_i_1_n_10\,
      O(4) => \decimate.counter_reg[8]_i_1_n_11\,
      O(3) => \decimate.counter_reg[8]_i_1_n_12\,
      O(2) => \decimate.counter_reg[8]_i_1_n_13\,
      O(1) => \decimate.counter_reg[8]_i_1_n_14\,
      O(0) => \decimate.counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => \decimate.counter_reg\(15 downto 8)
    );
\decimate.counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \decimate.counter_reg[8]_i_1_n_14\,
      Q => \decimate.counter_reg\(9),
      R => clear
    );
\decimate.fifo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(0),
      Q => fifo(0),
      R => '0'
    );
\decimate.fifo_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(2),
      Q => fifo(100),
      R => '0'
    );
\decimate.fifo_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(3),
      Q => fifo(101),
      R => '0'
    );
\decimate.fifo_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(4),
      Q => fifo(102),
      R => '0'
    );
\decimate.fifo_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(5),
      Q => fifo(103),
      R => '0'
    );
\decimate.fifo_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(6),
      Q => fifo(104),
      R => '0'
    );
\decimate.fifo_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(7),
      Q => fifo(105),
      R => '0'
    );
\decimate.fifo_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(8),
      Q => fifo(106),
      R => '0'
    );
\decimate.fifo_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(9),
      Q => fifo(107),
      R => '0'
    );
\decimate.fifo_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(10),
      Q => fifo(108),
      R => '0'
    );
\decimate.fifo_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(11),
      Q => fifo(109),
      R => '0'
    );
\decimate.fifo_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(10),
      Q => fifo(10),
      R => '0'
    );
\decimate.fifo_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(12),
      Q => fifo(110),
      R => '0'
    );
\decimate.fifo_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(13),
      Q => fifo(111),
      R => '0'
    );
\decimate.fifo_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(0),
      Q => fifo(112),
      R => '0'
    );
\decimate.fifo_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(1),
      Q => fifo(113),
      R => '0'
    );
\decimate.fifo_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(2),
      Q => fifo(114),
      R => '0'
    );
\decimate.fifo_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(3),
      Q => fifo(115),
      R => '0'
    );
\decimate.fifo_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(4),
      Q => fifo(116),
      R => '0'
    );
\decimate.fifo_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(5),
      Q => fifo(117),
      R => '0'
    );
\decimate.fifo_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(6),
      Q => fifo(118),
      R => '0'
    );
\decimate.fifo_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(7),
      Q => fifo(119),
      R => '0'
    );
\decimate.fifo_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(11),
      Q => fifo(11),
      R => '0'
    );
\decimate.fifo_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(8),
      Q => fifo(120),
      R => '0'
    );
\decimate.fifo_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(9),
      Q => fifo(121),
      R => '0'
    );
\decimate.fifo_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(10),
      Q => fifo(122),
      R => '0'
    );
\decimate.fifo_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(11),
      Q => fifo(123),
      R => '0'
    );
\decimate.fifo_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(12),
      Q => fifo(124),
      R => '0'
    );
\decimate.fifo_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N6(13),
      Q => fifo(125),
      R => '0'
    );
\decimate.fifo_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(0),
      Q => fifo(126),
      R => '0'
    );
\decimate.fifo_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(1),
      Q => fifo(127),
      R => '0'
    );
\decimate.fifo_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(2),
      Q => fifo(128),
      R => '0'
    );
\decimate.fifo_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(3),
      Q => fifo(129),
      R => '0'
    );
\decimate.fifo_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(12),
      Q => fifo(12),
      R => '0'
    );
\decimate.fifo_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(4),
      Q => fifo(130),
      R => '0'
    );
\decimate.fifo_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(5),
      Q => fifo(131),
      R => '0'
    );
\decimate.fifo_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(6),
      Q => fifo(132),
      R => '0'
    );
\decimate.fifo_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(7),
      Q => fifo(133),
      R => '0'
    );
\decimate.fifo_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(8),
      Q => fifo(134),
      R => '0'
    );
\decimate.fifo_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(9),
      Q => fifo(135),
      R => '0'
    );
\decimate.fifo_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(10),
      Q => fifo(136),
      R => '0'
    );
\decimate.fifo_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(11),
      Q => fifo(137),
      R => '0'
    );
\decimate.fifo_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(12),
      Q => fifo(138),
      R => '0'
    );
\decimate.fifo_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N7(13),
      Q => fifo(139),
      R => '0'
    );
\decimate.fifo_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(13),
      Q => fifo(13),
      R => '0'
    );
\decimate.fifo_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(0),
      Q => fifo(140),
      R => '0'
    );
\decimate.fifo_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(1),
      Q => fifo(141),
      R => '0'
    );
\decimate.fifo_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(2),
      Q => fifo(142),
      R => '0'
    );
\decimate.fifo_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(3),
      Q => fifo(143),
      R => '0'
    );
\decimate.fifo_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(4),
      Q => fifo(144),
      R => '0'
    );
\decimate.fifo_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(5),
      Q => fifo(145),
      R => '0'
    );
\decimate.fifo_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(6),
      Q => fifo(146),
      R => '0'
    );
\decimate.fifo_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(7),
      Q => fifo(147),
      R => '0'
    );
\decimate.fifo_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(8),
      Q => fifo(148),
      R => '0'
    );
\decimate.fifo_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(9),
      Q => fifo(149),
      R => '0'
    );
\decimate.fifo_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(14),
      Q => fifo(14),
      R => '0'
    );
\decimate.fifo_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(10),
      Q => fifo(150),
      R => '0'
    );
\decimate.fifo_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(11),
      Q => fifo(151),
      R => '0'
    );
\decimate.fifo_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(12),
      Q => fifo(152),
      R => '0'
    );
\decimate.fifo_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N8(13),
      Q => fifo(153),
      R => '0'
    );
\decimate.fifo_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(0),
      Q => fifo(154),
      R => '0'
    );
\decimate.fifo_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(1),
      Q => fifo(155),
      R => '0'
    );
\decimate.fifo_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(2),
      Q => fifo(156),
      R => '0'
    );
\decimate.fifo_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(3),
      Q => fifo(157),
      R => '0'
    );
\decimate.fifo_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(4),
      Q => fifo(158),
      R => '0'
    );
\decimate.fifo_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(5),
      Q => fifo(159),
      R => '0'
    );
\decimate.fifo_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(15),
      Q => fifo(15),
      R => '0'
    );
\decimate.fifo_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(6),
      Q => fifo(160),
      R => '0'
    );
\decimate.fifo_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(7),
      Q => fifo(161),
      R => '0'
    );
\decimate.fifo_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(8),
      Q => fifo(162),
      R => '0'
    );
\decimate.fifo_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(9),
      Q => fifo(163),
      R => '0'
    );
\decimate.fifo_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(10),
      Q => fifo(164),
      R => '0'
    );
\decimate.fifo_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(11),
      Q => fifo(165),
      R => '0'
    );
\decimate.fifo_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(12),
      Q => fifo(166),
      R => '0'
    );
\decimate.fifo_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N9(13),
      Q => fifo(167),
      R => '0'
    );
\decimate.fifo_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(0),
      Q => fifo(168),
      R => '0'
    );
\decimate.fifo_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(1),
      Q => fifo(169),
      R => '0'
    );
\decimate.fifo_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(16),
      Q => fifo(16),
      R => '0'
    );
\decimate.fifo_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(2),
      Q => fifo(170),
      R => '0'
    );
\decimate.fifo_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(3),
      Q => fifo(171),
      R => '0'
    );
\decimate.fifo_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(4),
      Q => fifo(172),
      R => '0'
    );
\decimate.fifo_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(5),
      Q => fifo(173),
      R => '0'
    );
\decimate.fifo_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(6),
      Q => fifo(174),
      R => '0'
    );
\decimate.fifo_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(7),
      Q => fifo(175),
      R => '0'
    );
\decimate.fifo_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(8),
      Q => fifo(176),
      R => '0'
    );
\decimate.fifo_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(9),
      Q => fifo(177),
      R => '0'
    );
\decimate.fifo_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(10),
      Q => fifo(178),
      R => '0'
    );
\decimate.fifo_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(11),
      Q => fifo(179),
      R => '0'
    );
\decimate.fifo_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(17),
      Q => fifo(17),
      R => '0'
    );
\decimate.fifo_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(12),
      Q => fifo(180),
      R => '0'
    );
\decimate.fifo_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E0(13),
      Q => fifo(181),
      R => '0'
    );
\decimate.fifo_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(0),
      Q => fifo(182),
      R => '0'
    );
\decimate.fifo_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(1),
      Q => fifo(183),
      R => '0'
    );
\decimate.fifo_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(2),
      Q => fifo(184),
      R => '0'
    );
\decimate.fifo_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(3),
      Q => fifo(185),
      R => '0'
    );
\decimate.fifo_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(4),
      Q => fifo(186),
      R => '0'
    );
\decimate.fifo_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(5),
      Q => fifo(187),
      R => '0'
    );
\decimate.fifo_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(6),
      Q => fifo(188),
      R => '0'
    );
\decimate.fifo_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(7),
      Q => fifo(189),
      R => '0'
    );
\decimate.fifo_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(18),
      Q => fifo(18),
      R => '0'
    );
\decimate.fifo_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(8),
      Q => fifo(190),
      R => '0'
    );
\decimate.fifo_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(9),
      Q => fifo(191),
      R => '0'
    );
\decimate.fifo_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(10),
      Q => fifo(192),
      R => '0'
    );
\decimate.fifo_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(11),
      Q => fifo(193),
      R => '0'
    );
\decimate.fifo_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(12),
      Q => fifo(194),
      R => '0'
    );
\decimate.fifo_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E1(13),
      Q => fifo(195),
      R => '0'
    );
\decimate.fifo_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(0),
      Q => fifo(196),
      R => '0'
    );
\decimate.fifo_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(1),
      Q => fifo(197),
      R => '0'
    );
\decimate.fifo_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(2),
      Q => fifo(198),
      R => '0'
    );
\decimate.fifo_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(3),
      Q => fifo(199),
      R => '0'
    );
\decimate.fifo_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(19),
      Q => fifo(19),
      R => '0'
    );
\decimate.fifo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(1),
      Q => fifo(1),
      R => '0'
    );
\decimate.fifo_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(4),
      Q => fifo(200),
      R => '0'
    );
\decimate.fifo_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(5),
      Q => fifo(201),
      R => '0'
    );
\decimate.fifo_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(6),
      Q => fifo(202),
      R => '0'
    );
\decimate.fifo_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(7),
      Q => fifo(203),
      R => '0'
    );
\decimate.fifo_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(8),
      Q => fifo(204),
      R => '0'
    );
\decimate.fifo_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(9),
      Q => fifo(205),
      R => '0'
    );
\decimate.fifo_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(10),
      Q => fifo(206),
      R => '0'
    );
\decimate.fifo_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(11),
      Q => fifo(207),
      R => '0'
    );
\decimate.fifo_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(12),
      Q => fifo(208),
      R => '0'
    );
\decimate.fifo_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E2(13),
      Q => fifo(209),
      R => '0'
    );
\decimate.fifo_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(20),
      Q => fifo(20),
      R => '0'
    );
\decimate.fifo_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(0),
      Q => fifo(210),
      R => '0'
    );
\decimate.fifo_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(1),
      Q => fifo(211),
      R => '0'
    );
\decimate.fifo_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(2),
      Q => fifo(212),
      R => '0'
    );
\decimate.fifo_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(3),
      Q => fifo(213),
      R => '0'
    );
\decimate.fifo_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(4),
      Q => fifo(214),
      R => '0'
    );
\decimate.fifo_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(5),
      Q => fifo(215),
      R => '0'
    );
\decimate.fifo_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(6),
      Q => fifo(216),
      R => '0'
    );
\decimate.fifo_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(7),
      Q => fifo(217),
      R => '0'
    );
\decimate.fifo_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(8),
      Q => fifo(218),
      R => '0'
    );
\decimate.fifo_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(9),
      Q => fifo(219),
      R => '0'
    );
\decimate.fifo_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(21),
      Q => fifo(21),
      R => '0'
    );
\decimate.fifo_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(10),
      Q => fifo(220),
      R => '0'
    );
\decimate.fifo_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(11),
      Q => fifo(221),
      R => '0'
    );
\decimate.fifo_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(12),
      Q => fifo(222),
      R => '0'
    );
\decimate.fifo_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E3(13),
      Q => fifo(223),
      R => '0'
    );
\decimate.fifo_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(0),
      Q => fifo(224),
      R => '0'
    );
\decimate.fifo_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(1),
      Q => fifo(225),
      R => '0'
    );
\decimate.fifo_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(2),
      Q => fifo(226),
      R => '0'
    );
\decimate.fifo_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(3),
      Q => fifo(227),
      R => '0'
    );
\decimate.fifo_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(4),
      Q => fifo(228),
      R => '0'
    );
\decimate.fifo_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(5),
      Q => fifo(229),
      R => '0'
    );
\decimate.fifo_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(22),
      Q => fifo(22),
      R => '0'
    );
\decimate.fifo_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(6),
      Q => fifo(230),
      R => '0'
    );
\decimate.fifo_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(7),
      Q => fifo(231),
      R => '0'
    );
\decimate.fifo_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(8),
      Q => fifo(232),
      R => '0'
    );
\decimate.fifo_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(9),
      Q => fifo(233),
      R => '0'
    );
\decimate.fifo_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(10),
      Q => fifo(234),
      R => '0'
    );
\decimate.fifo_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(11),
      Q => fifo(235),
      R => '0'
    );
\decimate.fifo_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(12),
      Q => fifo(236),
      R => '0'
    );
\decimate.fifo_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E4(13),
      Q => fifo(237),
      R => '0'
    );
\decimate.fifo_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(0),
      Q => fifo(238),
      R => '0'
    );
\decimate.fifo_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(1),
      Q => fifo(239),
      R => '0'
    );
\decimate.fifo_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(23),
      Q => fifo(23),
      R => '0'
    );
\decimate.fifo_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(2),
      Q => fifo(240),
      R => '0'
    );
\decimate.fifo_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(3),
      Q => fifo(241),
      R => '0'
    );
\decimate.fifo_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(4),
      Q => fifo(242),
      R => '0'
    );
\decimate.fifo_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(5),
      Q => fifo(243),
      R => '0'
    );
\decimate.fifo_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(6),
      Q => fifo(244),
      R => '0'
    );
\decimate.fifo_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(7),
      Q => fifo(245),
      R => '0'
    );
\decimate.fifo_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(8),
      Q => fifo(246),
      R => '0'
    );
\decimate.fifo_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(9),
      Q => fifo(247),
      R => '0'
    );
\decimate.fifo_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(10),
      Q => fifo(248),
      R => '0'
    );
\decimate.fifo_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(11),
      Q => fifo(249),
      R => '0'
    );
\decimate.fifo_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(24),
      Q => fifo(24),
      R => '0'
    );
\decimate.fifo_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(12),
      Q => fifo(250),
      R => '0'
    );
\decimate.fifo_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E5(13),
      Q => fifo(251),
      R => '0'
    );
\decimate.fifo_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(0),
      Q => fifo(252),
      R => '0'
    );
\decimate.fifo_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(1),
      Q => fifo(253),
      R => '0'
    );
\decimate.fifo_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(2),
      Q => fifo(254),
      R => '0'
    );
\decimate.fifo_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(3),
      Q => fifo(255),
      R => '0'
    );
\decimate.fifo_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(4),
      Q => fifo(256),
      R => '0'
    );
\decimate.fifo_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(5),
      Q => fifo(257),
      R => '0'
    );
\decimate.fifo_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(6),
      Q => fifo(258),
      R => '0'
    );
\decimate.fifo_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(7),
      Q => fifo(259),
      R => '0'
    );
\decimate.fifo_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(25),
      Q => fifo(25),
      R => '0'
    );
\decimate.fifo_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(8),
      Q => fifo(260),
      R => '0'
    );
\decimate.fifo_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(9),
      Q => fifo(261),
      R => '0'
    );
\decimate.fifo_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(10),
      Q => fifo(262),
      R => '0'
    );
\decimate.fifo_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(11),
      Q => fifo(263),
      R => '0'
    );
\decimate.fifo_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(12),
      Q => fifo(264),
      R => '0'
    );
\decimate.fifo_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E6(13),
      Q => fifo(265),
      R => '0'
    );
\decimate.fifo_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(0),
      Q => fifo(266),
      R => '0'
    );
\decimate.fifo_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(1),
      Q => fifo(267),
      R => '0'
    );
\decimate.fifo_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(2),
      Q => fifo(268),
      R => '0'
    );
\decimate.fifo_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(3),
      Q => fifo(269),
      R => '0'
    );
\decimate.fifo_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(26),
      Q => fifo(26),
      R => '0'
    );
\decimate.fifo_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(4),
      Q => fifo(270),
      R => '0'
    );
\decimate.fifo_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(5),
      Q => fifo(271),
      R => '0'
    );
\decimate.fifo_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(6),
      Q => fifo(272),
      R => '0'
    );
\decimate.fifo_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(7),
      Q => fifo(273),
      R => '0'
    );
\decimate.fifo_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(8),
      Q => fifo(274),
      R => '0'
    );
\decimate.fifo_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(9),
      Q => fifo(275),
      R => '0'
    );
\decimate.fifo_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(10),
      Q => fifo(276),
      R => '0'
    );
\decimate.fifo_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(11),
      Q => fifo(277),
      R => '0'
    );
\decimate.fifo_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(12),
      Q => fifo(278),
      R => '0'
    );
\decimate.fifo_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E7(13),
      Q => fifo(279),
      R => '0'
    );
\decimate.fifo_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(27),
      Q => fifo(27),
      R => '0'
    );
\decimate.fifo_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(0),
      Q => fifo(280),
      R => '0'
    );
\decimate.fifo_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(1),
      Q => fifo(281),
      R => '0'
    );
\decimate.fifo_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(2),
      Q => fifo(282),
      R => '0'
    );
\decimate.fifo_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(3),
      Q => fifo(283),
      R => '0'
    );
\decimate.fifo_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(4),
      Q => fifo(284),
      R => '0'
    );
\decimate.fifo_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(5),
      Q => fifo(285),
      R => '0'
    );
\decimate.fifo_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(6),
      Q => fifo(286),
      R => '0'
    );
\decimate.fifo_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(7),
      Q => fifo(287),
      R => '0'
    );
\decimate.fifo_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(8),
      Q => fifo(288),
      R => '0'
    );
\decimate.fifo_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(9),
      Q => fifo(289),
      R => '0'
    );
\decimate.fifo_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(0),
      Q => fifo(28),
      R => '0'
    );
\decimate.fifo_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(10),
      Q => fifo(290),
      R => '0'
    );
\decimate.fifo_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(11),
      Q => fifo(291),
      R => '0'
    );
\decimate.fifo_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(12),
      Q => fifo(292),
      R => '0'
    );
\decimate.fifo_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E8(13),
      Q => fifo(293),
      R => '0'
    );
\decimate.fifo_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(0),
      Q => fifo(294),
      R => '0'
    );
\decimate.fifo_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(1),
      Q => fifo(295),
      R => '0'
    );
\decimate.fifo_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(2),
      Q => fifo(296),
      R => '0'
    );
\decimate.fifo_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(3),
      Q => fifo(297),
      R => '0'
    );
\decimate.fifo_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(4),
      Q => fifo(298),
      R => '0'
    );
\decimate.fifo_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(5),
      Q => fifo(299),
      R => '0'
    );
\decimate.fifo_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(1),
      Q => fifo(29),
      R => '0'
    );
\decimate.fifo_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(2),
      Q => fifo(2),
      R => '0'
    );
\decimate.fifo_reg[300]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(6),
      Q => fifo(300),
      R => '0'
    );
\decimate.fifo_reg[301]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(7),
      Q => fifo(301),
      R => '0'
    );
\decimate.fifo_reg[302]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(8),
      Q => fifo(302),
      R => '0'
    );
\decimate.fifo_reg[303]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(9),
      Q => fifo(303),
      R => '0'
    );
\decimate.fifo_reg[304]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(10),
      Q => fifo(304),
      R => '0'
    );
\decimate.fifo_reg[305]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(11),
      Q => fifo(305),
      R => '0'
    );
\decimate.fifo_reg[306]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(12),
      Q => fifo(306),
      R => '0'
    );
\decimate.fifo_reg[307]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => E9(13),
      Q => fifo(307),
      R => '0'
    );
\decimate.fifo_reg[308]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(0),
      Q => fifo(308),
      R => '0'
    );
\decimate.fifo_reg[309]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(1),
      Q => fifo(309),
      R => '0'
    );
\decimate.fifo_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(2),
      Q => fifo(30),
      R => '0'
    );
\decimate.fifo_reg[310]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(2),
      Q => fifo(310),
      R => '0'
    );
\decimate.fifo_reg[311]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(3),
      Q => fifo(311),
      R => '0'
    );
\decimate.fifo_reg[312]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(4),
      Q => fifo(312),
      R => '0'
    );
\decimate.fifo_reg[313]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(5),
      Q => fifo(313),
      R => '0'
    );
\decimate.fifo_reg[314]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(6),
      Q => fifo(314),
      R => '0'
    );
\decimate.fifo_reg[315]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(7),
      Q => fifo(315),
      R => '0'
    );
\decimate.fifo_reg[316]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(8),
      Q => fifo(316),
      R => '0'
    );
\decimate.fifo_reg[317]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(9),
      Q => fifo(317),
      R => '0'
    );
\decimate.fifo_reg[318]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(10),
      Q => fifo(318),
      R => '0'
    );
\decimate.fifo_reg[319]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(11),
      Q => fifo(319),
      R => '0'
    );
\decimate.fifo_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(3),
      Q => fifo(31),
      R => '0'
    );
\decimate.fifo_reg[320]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(12),
      Q => fifo(320),
      R => '0'
    );
\decimate.fifo_reg[321]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W0(13),
      Q => fifo(321),
      R => '0'
    );
\decimate.fifo_reg[322]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(0),
      Q => fifo(322),
      R => '0'
    );
\decimate.fifo_reg[323]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(1),
      Q => fifo(323),
      R => '0'
    );
\decimate.fifo_reg[324]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(2),
      Q => fifo(324),
      R => '0'
    );
\decimate.fifo_reg[325]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(3),
      Q => fifo(325),
      R => '0'
    );
\decimate.fifo_reg[326]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(4),
      Q => fifo(326),
      R => '0'
    );
\decimate.fifo_reg[327]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(5),
      Q => fifo(327),
      R => '0'
    );
\decimate.fifo_reg[328]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(6),
      Q => fifo(328),
      R => '0'
    );
\decimate.fifo_reg[329]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(7),
      Q => fifo(329),
      R => '0'
    );
\decimate.fifo_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(4),
      Q => fifo(32),
      R => '0'
    );
\decimate.fifo_reg[330]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(8),
      Q => fifo(330),
      R => '0'
    );
\decimate.fifo_reg[331]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(9),
      Q => fifo(331),
      R => '0'
    );
\decimate.fifo_reg[332]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(10),
      Q => fifo(332),
      R => '0'
    );
\decimate.fifo_reg[333]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(11),
      Q => fifo(333),
      R => '0'
    );
\decimate.fifo_reg[334]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(12),
      Q => fifo(334),
      R => '0'
    );
\decimate.fifo_reg[335]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W1(13),
      Q => fifo(335),
      R => '0'
    );
\decimate.fifo_reg[336]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(0),
      Q => fifo(336),
      R => '0'
    );
\decimate.fifo_reg[337]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(1),
      Q => fifo(337),
      R => '0'
    );
\decimate.fifo_reg[338]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(2),
      Q => fifo(338),
      R => '0'
    );
\decimate.fifo_reg[339]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(3),
      Q => fifo(339),
      R => '0'
    );
\decimate.fifo_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(5),
      Q => fifo(33),
      R => '0'
    );
\decimate.fifo_reg[340]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(4),
      Q => fifo(340),
      R => '0'
    );
\decimate.fifo_reg[341]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(5),
      Q => fifo(341),
      R => '0'
    );
\decimate.fifo_reg[342]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(6),
      Q => fifo(342),
      R => '0'
    );
\decimate.fifo_reg[343]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(7),
      Q => fifo(343),
      R => '0'
    );
\decimate.fifo_reg[344]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(8),
      Q => fifo(344),
      R => '0'
    );
\decimate.fifo_reg[345]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(9),
      Q => fifo(345),
      R => '0'
    );
\decimate.fifo_reg[346]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(10),
      Q => fifo(346),
      R => '0'
    );
\decimate.fifo_reg[347]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(11),
      Q => fifo(347),
      R => '0'
    );
\decimate.fifo_reg[348]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(12),
      Q => fifo(348),
      R => '0'
    );
\decimate.fifo_reg[349]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W2(13),
      Q => fifo(349),
      R => '0'
    );
\decimate.fifo_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(6),
      Q => fifo(34),
      R => '0'
    );
\decimate.fifo_reg[350]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(0),
      Q => fifo(350),
      R => '0'
    );
\decimate.fifo_reg[351]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(1),
      Q => fifo(351),
      R => '0'
    );
\decimate.fifo_reg[352]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(2),
      Q => fifo(352),
      R => '0'
    );
\decimate.fifo_reg[353]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(3),
      Q => fifo(353),
      R => '0'
    );
\decimate.fifo_reg[354]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(4),
      Q => fifo(354),
      R => '0'
    );
\decimate.fifo_reg[355]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(5),
      Q => fifo(355),
      R => '0'
    );
\decimate.fifo_reg[356]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(6),
      Q => fifo(356),
      R => '0'
    );
\decimate.fifo_reg[357]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(7),
      Q => fifo(357),
      R => '0'
    );
\decimate.fifo_reg[358]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(8),
      Q => fifo(358),
      R => '0'
    );
\decimate.fifo_reg[359]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(9),
      Q => fifo(359),
      R => '0'
    );
\decimate.fifo_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(7),
      Q => fifo(35),
      R => '0'
    );
\decimate.fifo_reg[360]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(10),
      Q => fifo(360),
      R => '0'
    );
\decimate.fifo_reg[361]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(11),
      Q => fifo(361),
      R => '0'
    );
\decimate.fifo_reg[362]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(12),
      Q => fifo(362),
      R => '0'
    );
\decimate.fifo_reg[363]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W3(13),
      Q => fifo(363),
      R => '0'
    );
\decimate.fifo_reg[364]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(0),
      Q => fifo(364),
      R => '0'
    );
\decimate.fifo_reg[365]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(1),
      Q => fifo(365),
      R => '0'
    );
\decimate.fifo_reg[366]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(2),
      Q => fifo(366),
      R => '0'
    );
\decimate.fifo_reg[367]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(3),
      Q => fifo(367),
      R => '0'
    );
\decimate.fifo_reg[368]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(4),
      Q => fifo(368),
      R => '0'
    );
\decimate.fifo_reg[369]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(5),
      Q => fifo(369),
      R => '0'
    );
\decimate.fifo_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(8),
      Q => fifo(36),
      R => '0'
    );
\decimate.fifo_reg[370]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(6),
      Q => fifo(370),
      R => '0'
    );
\decimate.fifo_reg[371]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(7),
      Q => fifo(371),
      R => '0'
    );
\decimate.fifo_reg[372]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(8),
      Q => fifo(372),
      R => '0'
    );
\decimate.fifo_reg[373]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(9),
      Q => fifo(373),
      R => '0'
    );
\decimate.fifo_reg[374]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(10),
      Q => fifo(374),
      R => '0'
    );
\decimate.fifo_reg[375]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(11),
      Q => fifo(375),
      R => '0'
    );
\decimate.fifo_reg[376]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(12),
      Q => fifo(376),
      R => '0'
    );
\decimate.fifo_reg[377]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W4(13),
      Q => fifo(377),
      R => '0'
    );
\decimate.fifo_reg[378]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(0),
      Q => fifo(378),
      R => '0'
    );
\decimate.fifo_reg[379]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(1),
      Q => fifo(379),
      R => '0'
    );
\decimate.fifo_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(9),
      Q => fifo(37),
      R => '0'
    );
\decimate.fifo_reg[380]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(2),
      Q => fifo(380),
      R => '0'
    );
\decimate.fifo_reg[381]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(3),
      Q => fifo(381),
      R => '0'
    );
\decimate.fifo_reg[382]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(4),
      Q => fifo(382),
      R => '0'
    );
\decimate.fifo_reg[383]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(5),
      Q => fifo(383),
      R => '0'
    );
\decimate.fifo_reg[384]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(6),
      Q => fifo(384),
      R => '0'
    );
\decimate.fifo_reg[385]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(7),
      Q => fifo(385),
      R => '0'
    );
\decimate.fifo_reg[386]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(8),
      Q => fifo(386),
      R => '0'
    );
\decimate.fifo_reg[387]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(9),
      Q => fifo(387),
      R => '0'
    );
\decimate.fifo_reg[388]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(10),
      Q => fifo(388),
      R => '0'
    );
\decimate.fifo_reg[389]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(11),
      Q => fifo(389),
      R => '0'
    );
\decimate.fifo_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(10),
      Q => fifo(38),
      R => '0'
    );
\decimate.fifo_reg[390]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(12),
      Q => fifo(390),
      R => '0'
    );
\decimate.fifo_reg[391]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W5(13),
      Q => fifo(391),
      R => '0'
    );
\decimate.fifo_reg[392]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(0),
      Q => fifo(392),
      R => '0'
    );
\decimate.fifo_reg[393]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(1),
      Q => fifo(393),
      R => '0'
    );
\decimate.fifo_reg[394]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(2),
      Q => fifo(394),
      R => '0'
    );
\decimate.fifo_reg[395]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(3),
      Q => fifo(395),
      R => '0'
    );
\decimate.fifo_reg[396]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(4),
      Q => fifo(396),
      R => '0'
    );
\decimate.fifo_reg[397]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(5),
      Q => fifo(397),
      R => '0'
    );
\decimate.fifo_reg[398]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(6),
      Q => fifo(398),
      R => '0'
    );
\decimate.fifo_reg[399]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(7),
      Q => fifo(399),
      R => '0'
    );
\decimate.fifo_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(11),
      Q => fifo(39),
      R => '0'
    );
\decimate.fifo_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(3),
      Q => fifo(3),
      R => '0'
    );
\decimate.fifo_reg[400]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(8),
      Q => fifo(400),
      R => '0'
    );
\decimate.fifo_reg[401]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(9),
      Q => fifo(401),
      R => '0'
    );
\decimate.fifo_reg[402]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(10),
      Q => fifo(402),
      R => '0'
    );
\decimate.fifo_reg[403]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(11),
      Q => fifo(403),
      R => '0'
    );
\decimate.fifo_reg[404]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(12),
      Q => fifo(404),
      R => '0'
    );
\decimate.fifo_reg[405]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W6(13),
      Q => fifo(405),
      R => '0'
    );
\decimate.fifo_reg[406]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(0),
      Q => fifo(406),
      R => '0'
    );
\decimate.fifo_reg[407]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(1),
      Q => fifo(407),
      R => '0'
    );
\decimate.fifo_reg[408]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(2),
      Q => fifo(408),
      R => '0'
    );
\decimate.fifo_reg[409]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(3),
      Q => fifo(409),
      R => '0'
    );
\decimate.fifo_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(12),
      Q => fifo(40),
      R => '0'
    );
\decimate.fifo_reg[410]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(4),
      Q => fifo(410),
      R => '0'
    );
\decimate.fifo_reg[411]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(5),
      Q => fifo(411),
      R => '0'
    );
\decimate.fifo_reg[412]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(6),
      Q => fifo(412),
      R => '0'
    );
\decimate.fifo_reg[413]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(7),
      Q => fifo(413),
      R => '0'
    );
\decimate.fifo_reg[414]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(8),
      Q => fifo(414),
      R => '0'
    );
\decimate.fifo_reg[415]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(9),
      Q => fifo(415),
      R => '0'
    );
\decimate.fifo_reg[416]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(10),
      Q => fifo(416),
      R => '0'
    );
\decimate.fifo_reg[417]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(11),
      Q => fifo(417),
      R => '0'
    );
\decimate.fifo_reg[418]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(12),
      Q => fifo(418),
      R => '0'
    );
\decimate.fifo_reg[419]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W7(13),
      Q => fifo(419),
      R => '0'
    );
\decimate.fifo_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N0(13),
      Q => fifo(41),
      R => '0'
    );
\decimate.fifo_reg[420]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(0),
      Q => fifo(420),
      R => '0'
    );
\decimate.fifo_reg[421]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(1),
      Q => fifo(421),
      R => '0'
    );
\decimate.fifo_reg[422]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(2),
      Q => fifo(422),
      R => '0'
    );
\decimate.fifo_reg[423]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(3),
      Q => fifo(423),
      R => '0'
    );
\decimate.fifo_reg[424]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(4),
      Q => fifo(424),
      R => '0'
    );
\decimate.fifo_reg[425]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(5),
      Q => fifo(425),
      R => '0'
    );
\decimate.fifo_reg[426]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(6),
      Q => fifo(426),
      R => '0'
    );
\decimate.fifo_reg[427]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(7),
      Q => fifo(427),
      R => '0'
    );
\decimate.fifo_reg[428]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(8),
      Q => fifo(428),
      R => '0'
    );
\decimate.fifo_reg[429]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(9),
      Q => fifo(429),
      R => '0'
    );
\decimate.fifo_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(0),
      Q => fifo(42),
      R => '0'
    );
\decimate.fifo_reg[430]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(10),
      Q => fifo(430),
      R => '0'
    );
\decimate.fifo_reg[431]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(11),
      Q => fifo(431),
      R => '0'
    );
\decimate.fifo_reg[432]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(12),
      Q => fifo(432),
      R => '0'
    );
\decimate.fifo_reg[433]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W8(13),
      Q => fifo(433),
      R => '0'
    );
\decimate.fifo_reg[434]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(0),
      Q => fifo(434),
      R => '0'
    );
\decimate.fifo_reg[435]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(1),
      Q => fifo(435),
      R => '0'
    );
\decimate.fifo_reg[436]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(2),
      Q => fifo(436),
      R => '0'
    );
\decimate.fifo_reg[437]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(3),
      Q => fifo(437),
      R => '0'
    );
\decimate.fifo_reg[438]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(4),
      Q => fifo(438),
      R => '0'
    );
\decimate.fifo_reg[439]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(5),
      Q => fifo(439),
      R => '0'
    );
\decimate.fifo_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(1),
      Q => fifo(43),
      R => '0'
    );
\decimate.fifo_reg[440]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(6),
      Q => fifo(440),
      R => '0'
    );
\decimate.fifo_reg[441]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(7),
      Q => fifo(441),
      R => '0'
    );
\decimate.fifo_reg[442]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(8),
      Q => fifo(442),
      R => '0'
    );
\decimate.fifo_reg[443]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(9),
      Q => fifo(443),
      R => '0'
    );
\decimate.fifo_reg[444]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(10),
      Q => fifo(444),
      R => '0'
    );
\decimate.fifo_reg[445]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(11),
      Q => fifo(445),
      R => '0'
    );
\decimate.fifo_reg[446]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(12),
      Q => fifo(446),
      R => '0'
    );
\decimate.fifo_reg[447]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => W9(13),
      Q => fifo(447),
      R => '0'
    );
\decimate.fifo_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(2),
      Q => fifo(44),
      R => '0'
    );
\decimate.fifo_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(3),
      Q => fifo(45),
      R => '0'
    );
\decimate.fifo_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(4),
      Q => fifo(46),
      R => '0'
    );
\decimate.fifo_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(5),
      Q => fifo(47),
      R => '0'
    );
\decimate.fifo_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(6),
      Q => fifo(48),
      R => '0'
    );
\decimate.fifo_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(7),
      Q => fifo(49),
      R => '0'
    );
\decimate.fifo_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(4),
      Q => fifo(4),
      R => '0'
    );
\decimate.fifo_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(8),
      Q => fifo(50),
      R => '0'
    );
\decimate.fifo_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(9),
      Q => fifo(51),
      R => '0'
    );
\decimate.fifo_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(10),
      Q => fifo(52),
      R => '0'
    );
\decimate.fifo_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(11),
      Q => fifo(53),
      R => '0'
    );
\decimate.fifo_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(12),
      Q => fifo(54),
      R => '0'
    );
\decimate.fifo_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N1(13),
      Q => fifo(55),
      R => '0'
    );
\decimate.fifo_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(0),
      Q => fifo(56),
      R => '0'
    );
\decimate.fifo_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(1),
      Q => fifo(57),
      R => '0'
    );
\decimate.fifo_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(2),
      Q => fifo(58),
      R => '0'
    );
\decimate.fifo_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(3),
      Q => fifo(59),
      R => '0'
    );
\decimate.fifo_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(5),
      Q => fifo(5),
      R => '0'
    );
\decimate.fifo_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(4),
      Q => fifo(60),
      R => '0'
    );
\decimate.fifo_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(5),
      Q => fifo(61),
      R => '0'
    );
\decimate.fifo_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(6),
      Q => fifo(62),
      R => '0'
    );
\decimate.fifo_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(7),
      Q => fifo(63),
      R => '0'
    );
\decimate.fifo_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(8),
      Q => fifo(64),
      R => '0'
    );
\decimate.fifo_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(9),
      Q => fifo(65),
      R => '0'
    );
\decimate.fifo_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(10),
      Q => fifo(66),
      R => '0'
    );
\decimate.fifo_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(11),
      Q => fifo(67),
      R => '0'
    );
\decimate.fifo_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(12),
      Q => fifo(68),
      R => '0'
    );
\decimate.fifo_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N2(13),
      Q => fifo(69),
      R => '0'
    );
\decimate.fifo_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(6),
      Q => fifo(6),
      R => '0'
    );
\decimate.fifo_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(0),
      Q => fifo(70),
      R => '0'
    );
\decimate.fifo_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(1),
      Q => fifo(71),
      R => '0'
    );
\decimate.fifo_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(2),
      Q => fifo(72),
      R => '0'
    );
\decimate.fifo_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(3),
      Q => fifo(73),
      R => '0'
    );
\decimate.fifo_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(4),
      Q => fifo(74),
      R => '0'
    );
\decimate.fifo_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(5),
      Q => fifo(75),
      R => '0'
    );
\decimate.fifo_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(6),
      Q => fifo(76),
      R => '0'
    );
\decimate.fifo_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(7),
      Q => fifo(77),
      R => '0'
    );
\decimate.fifo_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(8),
      Q => fifo(78),
      R => '0'
    );
\decimate.fifo_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(9),
      Q => fifo(79),
      R => '0'
    );
\decimate.fifo_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(7),
      Q => fifo(7),
      R => '0'
    );
\decimate.fifo_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(10),
      Q => fifo(80),
      R => '0'
    );
\decimate.fifo_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(11),
      Q => fifo(81),
      R => '0'
    );
\decimate.fifo_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(12),
      Q => fifo(82),
      R => '0'
    );
\decimate.fifo_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N3(13),
      Q => fifo(83),
      R => '0'
    );
\decimate.fifo_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(0),
      Q => fifo(84),
      R => '0'
    );
\decimate.fifo_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(1),
      Q => fifo(85),
      R => '0'
    );
\decimate.fifo_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(2),
      Q => fifo(86),
      R => '0'
    );
\decimate.fifo_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(3),
      Q => fifo(87),
      R => '0'
    );
\decimate.fifo_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(4),
      Q => fifo(88),
      R => '0'
    );
\decimate.fifo_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(5),
      Q => fifo(89),
      R => '0'
    );
\decimate.fifo_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(8),
      Q => fifo(8),
      R => '0'
    );
\decimate.fifo_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(6),
      Q => fifo(90),
      R => '0'
    );
\decimate.fifo_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(7),
      Q => fifo(91),
      R => '0'
    );
\decimate.fifo_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(8),
      Q => fifo(92),
      R => '0'
    );
\decimate.fifo_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(9),
      Q => fifo(93),
      R => '0'
    );
\decimate.fifo_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(10),
      Q => fifo(94),
      R => '0'
    );
\decimate.fifo_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(11),
      Q => fifo(95),
      R => '0'
    );
\decimate.fifo_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(12),
      Q => fifo(96),
      R => '0'
    );
\decimate.fifo_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N4(13),
      Q => fifo(97),
      R => '0'
    );
\decimate.fifo_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(0),
      Q => fifo(98),
      R => '0'
    );
\decimate.fifo_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => N5(1),
      Q => fifo(99),
      R => '0'
    );
\decimate.fifo_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \decimate.counter_reg\(9),
      Q => fifo(9),
      R => '0'
    );
\decimate.fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active,
      Q => fifo_wr,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => active_1
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => active_2
    );
ila_E: component ps_decimate_0_0_ila_0
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
ila_N: component ps_decimate_0_0_ila_0
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
ila_W: component ps_decimate_0_0_ila_0_HD1
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
entity ps_decimate_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_W : in STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    fifo : out STD_LOGIC_VECTOR ( 447 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_decimate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_decimate_0_0 : entity is "ps_decimate_0_0,decimate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_decimate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_decimate_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_decimate_0_0 : entity is "decimate,Vivado 2025.1";
end ps_decimate_0_0;

architecture STRUCTURE of ps_decimate_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_decimate_0_0_decimate
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
      fifo(447 downto 0) => fifo(447 downto 0),
      fifo_wr => fifo_wr,
      ready_E => ready_E,
      ready_N => ready_N,
      ready_W => ready_W,
      resetn => resetn
    );
end STRUCTURE;
