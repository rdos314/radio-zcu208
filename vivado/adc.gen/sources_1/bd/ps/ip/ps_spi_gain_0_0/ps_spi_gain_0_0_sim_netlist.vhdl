-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Nov  7 21:30:11 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_spi_gain_0_0/ps_spi_gain_0_0_sim_netlist.vhdl
-- Design      : ps_spi_gain_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_spi_gain_0_0_spi_gain is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    axi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_clk : out STD_LOGIC;
    spi_in : in STD_LOGIC;
    spi_out : out STD_LOGIC;
    spi_sel : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_spi_gain_0_0_spi_gain : entity is "spi_gain";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_spi_gain_0_0_spi_gain : entity is "soft";
end ps_spi_gain_0_0_spi_gain;

architecture STRUCTURE of ps_spi_gain_0_0_spi_gain is
  component ps_spi_gain_0_0_ila_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component ps_spi_gain_0_0_ila_2;
  signal \^axi_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^axi_out\ : signal is std.standard.true;
  signal \^spi_clk\ : STD_LOGIC;
  attribute MARK_DEBUG of spi_clk : signal is std.standard.true;
  signal \spi_gain.axi_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \^spi_out\ : STD_LOGIC;
  attribute MARK_DEBUG of spi_out : signal is std.standard.true;
  signal \^spi_sel\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of \^spi_sel\ : signal is std.standard.true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_2,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_i : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_i : label is "ila,Vivado 2025.1";
  attribute KEEP : string;
  attribute KEEP of \spi_gain.axi_out_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[10]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[11]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[12]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[13]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[14]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[15]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[16]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[17]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[18]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[19]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[20]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[21]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[22]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[23]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[24]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[25]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[26]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[27]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[28]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[29]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[2]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[30]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[31]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[3]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[4]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[5]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[6]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[7]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[8]\ : label is "yes";
  attribute KEEP of \spi_gain.axi_out_reg[9]\ : label is "yes";
  attribute KEEP of \spi_gain.spi_clk_reg\ : label is "yes";
  attribute KEEP of \spi_gain.spi_out_reg\ : label is "yes";
  attribute KEEP of \spi_gain.spi_sel_reg[0]\ : label is "yes";
  attribute KEEP of \spi_gain.spi_sel_reg[1]\ : label is "yes";
  attribute KEEP of \spi_gain.spi_sel_reg[2]\ : label is "yes";
begin
  axi_out(31 downto 0) <= \^axi_out\(31 downto 0);
  spi_clk <= \^spi_clk\;
  spi_out <= \^spi_out\;
  spi_sel(2 downto 0) <= \^spi_sel\(2 downto 0);
ila_i: component ps_spi_gain_0_0_ila_2
     port map (
      clk => clk,
      probe0(31 downto 0) => axi_in(31 downto 0),
      probe1(31 downto 0) => \^axi_out\(31 downto 0),
      probe2(0) => \^spi_clk\,
      probe3(0) => spi_in,
      probe4(0) => \^spi_out\,
      probe5(2 downto 0) => \^spi_sel\(2 downto 0)
    );
\spi_gain.axi_out[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(0),
      Q => \^axi_out\(0),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(10),
      Q => \^axi_out\(10),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(11),
      Q => \^axi_out\(11),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(12),
      Q => \^axi_out\(12),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(13),
      Q => \^axi_out\(13),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(14),
      Q => \^axi_out\(14),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(15),
      Q => \^axi_out\(15),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(16),
      Q => \^axi_out\(16),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(17),
      Q => \^axi_out\(17),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(18),
      Q => \^axi_out\(18),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(19),
      Q => \^axi_out\(19),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(1),
      Q => \^axi_out\(1),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(20),
      Q => \^axi_out\(20),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(21),
      Q => \^axi_out\(21),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(22),
      Q => \^axi_out\(22),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(23),
      Q => \^axi_out\(23),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(24),
      Q => \^axi_out\(24),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(25),
      Q => \^axi_out\(25),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(26),
      Q => \^axi_out\(26),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(27),
      Q => \^axi_out\(27),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(28),
      Q => \^axi_out\(28),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(29),
      Q => \^axi_out\(29),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(2),
      Q => \^axi_out\(2),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(30),
      Q => \^axi_out\(30),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(31),
      Q => \^axi_out\(31),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(3),
      Q => \^axi_out\(3),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(4),
      Q => \^axi_out\(4),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(5),
      Q => \^axi_out\(5),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(6),
      Q => \^axi_out\(6),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(7),
      Q => \^axi_out\(7),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(8),
      Q => \^axi_out\(8),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.axi_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^axi_out\(9),
      Q => \^axi_out\(9),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.spi_clk_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^spi_clk\,
      Q => \^spi_clk\,
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.spi_out_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^spi_out\,
      Q => \^spi_out\,
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.spi_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^spi_sel\(0),
      Q => \^spi_sel\(0),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.spi_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^spi_sel\(1),
      Q => \^spi_sel\(1),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
\spi_gain.spi_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^spi_sel\(2),
      Q => \^spi_sel\(2),
      R => \spi_gain.axi_out[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_spi_gain_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    axi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_clk : out STD_LOGIC;
    spi_in : in STD_LOGIC;
    spi_out : out STD_LOGIC;
    spi_sel : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_spi_gain_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_spi_gain_0_0 : entity is "ps_spi_gain_0_0,spi_gain,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_spi_gain_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_spi_gain_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_spi_gain_0_0 : entity is "spi_gain,Vivado 2025.1";
end ps_spi_gain_0_0;

architecture STRUCTURE of ps_spi_gain_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute X_INTERFACE_MODE of spi_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_spi_gain_0_0_spi_clk, INSERT_VIP 0";
begin
inst: entity work.ps_spi_gain_0_0_spi_gain
     port map (
      axi_in(31 downto 0) => axi_in(31 downto 0),
      axi_out(31 downto 0) => axi_out(31 downto 0),
      clk => clk,
      resetn => resetn,
      spi_clk => spi_clk,
      spi_in => spi_in,
      spi_out => spi_out,
      spi_sel(2 downto 0) => spi_sel(2 downto 0)
    );
end STRUCTURE;
