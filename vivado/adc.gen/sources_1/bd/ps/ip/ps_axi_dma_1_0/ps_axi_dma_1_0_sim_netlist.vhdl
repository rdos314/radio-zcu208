-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Apr 21 22:55:13 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_dma_1_0/ps_axi_dma_1_0_sim_netlist.vhdl
-- Design      : ps_axi_dma_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_dma_1_0_xpm_counter_updn__parameterized0\ is
  port (
    ram_full_i0 : out STD_LOGIC;
    leaving_empty0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \count_value_i_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_dma_1_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \ps_axi_dma_1_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \ps_axi_dma_1_0_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[12]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[13]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair1";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__1_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__1_n_0\
    );
\count_value_i[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__1_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__1_n_0\
    );
\count_value_i[11]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__1_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__1_n_0\
    );
\count_value_i[12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i[13]_i_2__1_n_0\,
      I2 => \^q\(11),
      I3 => \^q\(12),
      O => \count_value_i[12]_i_1__1_n_0\
    );
\count_value_i[13]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i[13]_i_2__1_n_0\,
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(13),
      O => \count_value_i[13]_i_1__1_n_0\
    );
\count_value_i[13]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \count_value_i[9]_i_2__1_n_0\,
      I4 => \^q\(6),
      I5 => \^q\(8),
      O => \count_value_i[13]_i_2__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__1_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__1_n_0\
    );
\count_value_i[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[10]_i_1__1_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[11]_i_1__1_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[12]_i_1__1_n_0\,
      Q => \^q\(12),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[13]_i_1__1_n_0\,
      Q => \^q\(13),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[13]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[9]_i_1__1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[13]_0\(0)
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => ram_wr_en_pf,
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \count_value_i_reg[0]_0\,
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      O => ram_full_i0
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(12),
      I2 => \^q\(13),
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(13),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(9),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\,
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\,
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\,
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9_n_0\,
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10_n_0\,
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11_n_0\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12_n_0\,
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(12),
      I2 => \^q\(13),
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(13),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(9),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(6),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_i_2_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0\ : entity is "xpm_counter_updn";
end \ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0\;

architecture STRUCTURE of \ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[12]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[13]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair8";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__0_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__0_n_0\
    );
\count_value_i[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__0_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__0_n_0\
    );
\count_value_i[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__0_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__0_n_0\
    );
\count_value_i[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i[13]_i_2__0_n_0\,
      I2 => \^q\(11),
      I3 => \^q\(12),
      O => \count_value_i[12]_i_1__0_n_0\
    );
\count_value_i[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i[13]_i_2__0_n_0\,
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(13),
      O => \count_value_i[13]_i_1__0_n_0\
    );
\count_value_i[13]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \count_value_i[9]_i_2__0_n_0\,
      I4 => \^q\(6),
      I5 => \^q\(8),
      O => \count_value_i[13]_i_2__0_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[12]_i_1__0_n_0\,
      Q => \^q\(12),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[13]_i_1__0_n_0\,
      Q => \^q\(13),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_pf,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      I3 => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\,
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_7_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(12),
      I2 => \^q\(13),
      I3 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(13),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(9),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.ram_empty_i_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_dma_1_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_dma_1_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \ps_axi_dma_1_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \ps_axi_dma_1_0_xpm_counter_updn__parameterized1\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[12]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[13]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair5";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[10]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__2_n_0\
    );
\count_value_i[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__2_n_0\
    );
\count_value_i[11]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__2_n_0\
    );
\count_value_i[12]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i[13]_i_2__2_n_0\,
      I2 => \^q\(11),
      I3 => \^q\(12),
      O => \count_value_i[12]_i_1__2_n_0\
    );
\count_value_i[13]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i[13]_i_2__2_n_0\,
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(13),
      O => \count_value_i[13]_i_1__2_n_0\
    );
\count_value_i[13]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \count_value_i[9]_i_2__2_n_0\,
      I4 => \^q\(6),
      I5 => \^q\(8),
      O => \count_value_i[13]_i_2__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__2_n_0\
    );
\count_value_i[9]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[10]_i_1__2_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[11]_i_1__2_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[12]_i_1__2_n_0\,
      Q => \^q\(12),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[13]_i_1__2_n_0\,
      Q => \^q\(13),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[9]_i_1__2_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1\ : entity is "xpm_counter_updn";
end \ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1\;

architecture STRUCTURE of \ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair12";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1_n_0\
    );
\count_value_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1_n_0\
    );
\count_value_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2_n_0\
    );
\count_value_i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i[13]_i_2_n_0\,
      I2 => \^q\(11),
      I3 => \^q\(12),
      O => \count_value_i[12]_i_1_n_0\
    );
\count_value_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i[13]_i_2_n_0\,
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(13),
      O => \count_value_i[13]_i_1_n_0\
    );
\count_value_i[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \count_value_i[9]_i_2_n_0\,
      I4 => \^q\(6),
      I5 => \^q\(8),
      O => \count_value_i[13]_i_2_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[10]_i_1_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[11]_i_1_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[12]_i_1_n_0\,
      Q => \^q\(12),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[13]_i_1_n_0\,
      Q => \^q\(13),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_dma_1_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end ps_axi_dma_1_0_xpm_fifo_reg_bit;

architecture STRUCTURE of ps_axi_dma_1_0_xpm_fifo_reg_bit is
begin
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => rst_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0_xpm_fifo_rst is
  port (
    ram_wr_en_pf : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[13]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_dma_1_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end ps_axi_dma_1_0_xpm_fifo_rst;

architecture STRUCTURE of ps_axi_dma_1_0_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[13]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => ram_wr_en_pf
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of ps_axi_dma_1_0_xpm_memory_base : entity is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of ps_axi_dma_1_0_xpm_memory_base : entity is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of ps_axi_dma_1_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of ps_axi_dma_1_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of ps_axi_dma_1_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of ps_axi_dma_1_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of ps_axi_dma_1_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of ps_axi_dma_1_0_xpm_memory_base : entity is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of ps_axi_dma_1_0_xpm_memory_base : entity is 4194304;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_dma_1_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of ps_axi_dma_1_0_xpm_memory_base : entity is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of ps_axi_dma_1_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of ps_axi_dma_1_0_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of ps_axi_dma_1_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of ps_axi_dma_1_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of ps_axi_dma_1_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of ps_axi_dma_1_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of ps_axi_dma_1_0_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of ps_axi_dma_1_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of ps_axi_dma_1_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of ps_axi_dma_1_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of ps_axi_dma_1_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of ps_axi_dma_1_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of ps_axi_dma_1_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of ps_axi_dma_1_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of ps_axi_dma_1_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of ps_axi_dma_1_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of ps_axi_dma_1_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_axi_dma_1_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of ps_axi_dma_1_0_xpm_memory_base : entity is 256;
end ps_axi_dma_1_0_xpm_memory_base;

architecture STRUCTURE of ps_axi_dma_1_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_350\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_351\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_352\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_353\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_354\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_355\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_356\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_357\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_358\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_359\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_360\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_361\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_362\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_363\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_364\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_365\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_366\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_367\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_368\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_369\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_370\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_371\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_372\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_373\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_374\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_375\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_376\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_377\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_378\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_379\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_380\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_381\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_382\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_383\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_384\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_385\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_386\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_387\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_388\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_389\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_390\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_391\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_392\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_393\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_394\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_395\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_396\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_397\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_398\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_399\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_400\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_401\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_402\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_403\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_404\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_405\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_406\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_407\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_408\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_409\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_410\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_411\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_412\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_413\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_414\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_415\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_416\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_417\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_418\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_419\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_420\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_421\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_382\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_383\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_384\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_385\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_386\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_387\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_388\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_389\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_390\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_391\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_392\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_393\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_394\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_395\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_396\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_397\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_398\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_399\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_400\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_401\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_402\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_403\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_404\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_405\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_406\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_407\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_408\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_409\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_410\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_411\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_412\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_413\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_414\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_415\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_416\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_417\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_418\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_419\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_420\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_421\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_350\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_351\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_352\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_353\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_354\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_355\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_356\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_357\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_358\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_359\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_360\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_361\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_362\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_363\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_364\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_365\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_366\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_367\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_368\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_369\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_370\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_371\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_372\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_373\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_374\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_375\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_376\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_377\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_378\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_379\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_380\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_381\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_382\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_383\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_384\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_385\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_386\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_387\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_388\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_389\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_390\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_391\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_392\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_393\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_394\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_395\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_396\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_397\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_398\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_399\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_400\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_401\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_402\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_403\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_404\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_405\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_406\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_407\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_408\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_409\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_410\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_411\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_412\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_413\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_414\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_415\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_416\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_417\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_418\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_419\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_420\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_421\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_350\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_351\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_352\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_353\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_354\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_355\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_356\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_357\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_358\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_359\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_360\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_361\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_362\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_363\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_364\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_365\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_366\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_367\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_368\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_369\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_370\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_371\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_372\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_373\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_374\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_375\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_376\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_377\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_378\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_379\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_380\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_381\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_382\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_383\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_384\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_385\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_386\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_387\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_388\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_389\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_390\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_391\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_392\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_393\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_394\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_395\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_396\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_397\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_398\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_399\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_400\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_401\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_402\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_403\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_404\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_405\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_406\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_407\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_408\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_409\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_410\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_411\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_412\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_413\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_414\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_415\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_416\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_417\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_418\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_419\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_420\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_421\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_9\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 40 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4194304;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "ultra";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 215;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 8192;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 12287;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 144;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 144;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_10\ : label is 215;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 215;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 12288;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 16383;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 144;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 144;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_11\ : label is 215;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 216;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 255;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 216;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 255;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 4095;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 216;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_12\ : label is 255;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 216;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 255;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 4096;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 8191;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 216;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 255;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 216;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_13\ : label is 255;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 216;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 255;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 8192;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 12287;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 216;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 255;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 216;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_14\ : label is 255;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 216;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 255;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 12288;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 16383;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 216;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 255;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 216;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_15\ : label is 255;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 71;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 143;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 72;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 4095;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 72;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_4\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 143;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 4096;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 8191;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 72;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 72;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_5\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 143;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 8192;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 12287;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 72;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 72;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_6\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 72;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 143;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 12288;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 16383;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 72;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 143;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 72;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_7\ : label is 143;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 215;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 144;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 4095;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 144;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_8\ : label is 215;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 144;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 215;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 4096;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 8191;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 144;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 215;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 4194304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is "ultra";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 144;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_9\ : label is 215;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(255) <= \<const0>\;
  douta(254) <= \<const0>\;
  douta(253) <= \<const0>\;
  douta(252) <= \<const0>\;
  douta(251) <= \<const0>\;
  douta(250) <= \<const0>\;
  douta(249) <= \<const0>\;
  douta(248) <= \<const0>\;
  douta(247) <= \<const0>\;
  douta(246) <= \<const0>\;
  douta(245) <= \<const0>\;
  douta(244) <= \<const0>\;
  douta(243) <= \<const0>\;
  douta(242) <= \<const0>\;
  douta(241) <= \<const0>\;
  douta(240) <= \<const0>\;
  douta(239) <= \<const0>\;
  douta(238) <= \<const0>\;
  douta(237) <= \<const0>\;
  douta(236) <= \<const0>\;
  douta(235) <= \<const0>\;
  douta(234) <= \<const0>\;
  douta(233) <= \<const0>\;
  douta(232) <= \<const0>\;
  douta(231) <= \<const0>\;
  douta(230) <= \<const0>\;
  douta(229) <= \<const0>\;
  douta(228) <= \<const0>\;
  douta(227) <= \<const0>\;
  douta(226) <= \<const0>\;
  douta(225) <= \<const0>\;
  douta(224) <= \<const0>\;
  douta(223) <= \<const0>\;
  douta(222) <= \<const0>\;
  douta(221) <= \<const0>\;
  douta(220) <= \<const0>\;
  douta(219) <= \<const0>\;
  douta(218) <= \<const0>\;
  douta(217) <= \<const0>\;
  douta(216) <= \<const0>\;
  douta(215) <= \<const0>\;
  douta(214) <= \<const0>\;
  douta(213) <= \<const0>\;
  douta(212) <= \<const0>\;
  douta(211) <= \<const0>\;
  douta(210) <= \<const0>\;
  douta(209) <= \<const0>\;
  douta(208) <= \<const0>\;
  douta(207) <= \<const0>\;
  douta(206) <= \<const0>\;
  douta(205) <= \<const0>\;
  douta(204) <= \<const0>\;
  douta(203) <= \<const0>\;
  douta(202) <= \<const0>\;
  douta(201) <= \<const0>\;
  douta(200) <= \<const0>\;
  douta(199) <= \<const0>\;
  douta(198) <= \<const0>\;
  douta(197) <= \<const0>\;
  douta(196) <= \<const0>\;
  douta(195) <= \<const0>\;
  douta(194) <= \<const0>\;
  douta(193) <= \<const0>\;
  douta(192) <= \<const0>\;
  douta(191) <= \<const0>\;
  douta(190) <= \<const0>\;
  douta(189) <= \<const0>\;
  douta(188) <= \<const0>\;
  douta(187) <= \<const0>\;
  douta(186) <= \<const0>\;
  douta(185) <= \<const0>\;
  douta(184) <= \<const0>\;
  douta(183) <= \<const0>\;
  douta(182) <= \<const0>\;
  douta(181) <= \<const0>\;
  douta(180) <= \<const0>\;
  douta(179) <= \<const0>\;
  douta(178) <= \<const0>\;
  douta(177) <= \<const0>\;
  douta(176) <= \<const0>\;
  douta(175) <= \<const0>\;
  douta(174) <= \<const0>\;
  douta(173) <= \<const0>\;
  douta(172) <= \<const0>\;
  douta(171) <= \<const0>\;
  douta(170) <= \<const0>\;
  douta(169) <= \<const0>\;
  douta(168) <= \<const0>\;
  douta(167) <= \<const0>\;
  douta(166) <= \<const0>\;
  douta(165) <= \<const0>\;
  douta(164) <= \<const0>\;
  douta(163) <= \<const0>\;
  douta(162) <= \<const0>\;
  douta(161) <= \<const0>\;
  douta(160) <= \<const0>\;
  douta(159) <= \<const0>\;
  douta(158) <= \<const0>\;
  douta(157) <= \<const0>\;
  douta(156) <= \<const0>\;
  douta(155) <= \<const0>\;
  douta(154) <= \<const0>\;
  douta(153) <= \<const0>\;
  douta(152) <= \<const0>\;
  douta(151) <= \<const0>\;
  douta(150) <= \<const0>\;
  douta(149) <= \<const0>\;
  douta(148) <= \<const0>\;
  douta(147) <= \<const0>\;
  douta(146) <= \<const0>\;
  douta(145) <= \<const0>\;
  douta(144) <= \<const0>\;
  douta(143) <= \<const0>\;
  douta(142) <= \<const0>\;
  douta(141) <= \<const0>\;
  douta(140) <= \<const0>\;
  douta(139) <= \<const0>\;
  douta(138) <= \<const0>\;
  douta(137) <= \<const0>\;
  douta(136) <= \<const0>\;
  douta(135) <= \<const0>\;
  douta(134) <= \<const0>\;
  douta(133) <= \<const0>\;
  douta(132) <= \<const0>\;
  douta(131) <= \<const0>\;
  douta(130) <= \<const0>\;
  douta(129) <= \<const0>\;
  douta(128) <= \<const0>\;
  douta(127) <= \<const0>\;
  douta(126) <= \<const0>\;
  douta(125) <= \<const0>\;
  douta(124) <= \<const0>\;
  douta(123) <= \<const0>\;
  douta(122) <= \<const0>\;
  douta(121) <= \<const0>\;
  douta(120) <= \<const0>\;
  douta(119) <= \<const0>\;
  douta(118) <= \<const0>\;
  douta(117) <= \<const0>\;
  douta(116) <= \<const0>\;
  douta(115) <= \<const0>\;
  douta(114) <= \<const0>\;
  douta(113) <= \<const0>\;
  douta(112) <= \<const0>\;
  douta(111) <= \<const0>\;
  douta(110) <= \<const0>\;
  douta(109) <= \<const0>\;
  douta(108) <= \<const0>\;
  douta(107) <= \<const0>\;
  douta(106) <= \<const0>\;
  douta(105) <= \<const0>\;
  douta(104) <= \<const0>\;
  douta(103) <= \<const0>\;
  douta(102) <= \<const0>\;
  douta(101) <= \<const0>\;
  douta(100) <= \<const0>\;
  douta(99) <= \<const0>\;
  douta(98) <= \<const0>\;
  douta(97) <= \<const0>\;
  douta(96) <= \<const0>\;
  douta(95) <= \<const0>\;
  douta(94) <= \<const0>\;
  douta(93) <= \<const0>\;
  douta(92) <= \<const0>\;
  douta(91) <= \<const0>\;
  douta(90) <= \<const0>\;
  douta(89) <= \<const0>\;
  douta(88) <= \<const0>\;
  douta(87) <= \<const0>\;
  douta(86) <= \<const0>\;
  douta(85) <= \<const0>\;
  douta(84) <= \<const0>\;
  douta(83) <= \<const0>\;
  douta(82) <= \<const0>\;
  douta(81) <= \<const0>\;
  douta(80) <= \<const0>\;
  douta(79) <= \<const0>\;
  douta(78) <= \<const0>\;
  douta(77) <= \<const0>\;
  douta(76) <= \<const0>\;
  douta(75) <= \<const0>\;
  douta(74) <= \<const0>\;
  douta(73) <= \<const0>\;
  douta(72) <= \<const0>\;
  douta(71) <= \<const0>\;
  douta(70) <= \<const0>\;
  douta(69) <= \<const0>\;
  douta(68) <= \<const0>\;
  douta(67) <= \<const0>\;
  douta(66) <= \<const0>\;
  douta(65) <= \<const0>\;
  douta(64) <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_421\,
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_393\,
      Q => doutb(100),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_392\,
      Q => doutb(101),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_391\,
      Q => doutb(102),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_390\,
      Q => doutb(103),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_389\,
      Q => doutb(104),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_388\,
      Q => doutb(105),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_387\,
      Q => doutb(106),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_386\,
      Q => doutb(107),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_385\,
      Q => doutb(108),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_384\,
      Q => doutb(109),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_411\,
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_383\,
      Q => doutb(110),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_382\,
      Q => doutb(111),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_381\,
      Q => doutb(112),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_380\,
      Q => doutb(113),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_379\,
      Q => doutb(114),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_378\,
      Q => doutb(115),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_377\,
      Q => doutb(116),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_376\,
      Q => doutb(117),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_375\,
      Q => doutb(118),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_374\,
      Q => doutb(119),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_410\,
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_373\,
      Q => doutb(120),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_372\,
      Q => doutb(121),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_371\,
      Q => doutb(122),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_370\,
      Q => doutb(123),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_369\,
      Q => doutb(124),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_368\,
      Q => doutb(125),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_367\,
      Q => doutb(126),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_366\,
      Q => doutb(127),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][128]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_365\,
      Q => doutb(128),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][129]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_364\,
      Q => doutb(129),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_409\,
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][130]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_363\,
      Q => doutb(130),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][131]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_362\,
      Q => doutb(131),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][132]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_361\,
      Q => doutb(132),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][133]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_360\,
      Q => doutb(133),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][134]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_359\,
      Q => doutb(134),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][135]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_358\,
      Q => doutb(135),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][136]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_357\,
      Q => doutb(136),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][137]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_356\,
      Q => doutb(137),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][138]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_355\,
      Q => doutb(138),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][139]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_354\,
      Q => doutb(139),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_408\,
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][140]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_353\,
      Q => doutb(140),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][141]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_352\,
      Q => doutb(141),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][142]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_351\,
      Q => doutb(142),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][143]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_350\,
      Q => doutb(143),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][144]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_421\,
      Q => doutb(144),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][145]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_420\,
      Q => doutb(145),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][146]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_419\,
      Q => doutb(146),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][147]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_418\,
      Q => doutb(147),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][148]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_417\,
      Q => doutb(148),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][149]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_416\,
      Q => doutb(149),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_407\,
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][150]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_415\,
      Q => doutb(150),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][151]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_414\,
      Q => doutb(151),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][152]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_413\,
      Q => doutb(152),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][153]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_412\,
      Q => doutb(153),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][154]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_411\,
      Q => doutb(154),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][155]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_410\,
      Q => doutb(155),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][156]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_409\,
      Q => doutb(156),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][157]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_408\,
      Q => doutb(157),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][158]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_407\,
      Q => doutb(158),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][159]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_406\,
      Q => doutb(159),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_406\,
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][160]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_405\,
      Q => doutb(160),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][161]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_404\,
      Q => doutb(161),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][162]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_403\,
      Q => doutb(162),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][163]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_402\,
      Q => doutb(163),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][164]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_401\,
      Q => doutb(164),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][165]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_400\,
      Q => doutb(165),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][166]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_399\,
      Q => doutb(166),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][167]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_398\,
      Q => doutb(167),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][168]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_397\,
      Q => doutb(168),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][169]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_396\,
      Q => doutb(169),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_405\,
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][170]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_395\,
      Q => doutb(170),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][171]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_394\,
      Q => doutb(171),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][172]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_393\,
      Q => doutb(172),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][173]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_392\,
      Q => doutb(173),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][174]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_391\,
      Q => doutb(174),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][175]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_390\,
      Q => doutb(175),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][176]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_389\,
      Q => doutb(176),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][177]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_388\,
      Q => doutb(177),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][178]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_387\,
      Q => doutb(178),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][179]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_386\,
      Q => doutb(179),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_404\,
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][180]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_385\,
      Q => doutb(180),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][181]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_384\,
      Q => doutb(181),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][182]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_383\,
      Q => doutb(182),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][183]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_382\,
      Q => doutb(183),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][184]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_381\,
      Q => doutb(184),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][185]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_380\,
      Q => doutb(185),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][186]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_379\,
      Q => doutb(186),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][187]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_378\,
      Q => doutb(187),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][188]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_377\,
      Q => doutb(188),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][189]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_376\,
      Q => doutb(189),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_403\,
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][190]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_375\,
      Q => doutb(190),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][191]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_374\,
      Q => doutb(191),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][192]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_373\,
      Q => doutb(192),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][193]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_372\,
      Q => doutb(193),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][194]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_371\,
      Q => doutb(194),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][195]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_370\,
      Q => doutb(195),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][196]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_369\,
      Q => doutb(196),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][197]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_368\,
      Q => doutb(197),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][198]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_367\,
      Q => doutb(198),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][199]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_366\,
      Q => doutb(199),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_402\,
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_420\,
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][200]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_365\,
      Q => doutb(200),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][201]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_364\,
      Q => doutb(201),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][202]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_363\,
      Q => doutb(202),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][203]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_362\,
      Q => doutb(203),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][204]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_361\,
      Q => doutb(204),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][205]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_360\,
      Q => doutb(205),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][206]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_359\,
      Q => doutb(206),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][207]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_358\,
      Q => doutb(207),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][208]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_357\,
      Q => doutb(208),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][209]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_356\,
      Q => doutb(209),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_401\,
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][210]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_355\,
      Q => doutb(210),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][211]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_354\,
      Q => doutb(211),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][212]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_353\,
      Q => doutb(212),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][213]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_352\,
      Q => doutb(213),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][214]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_351\,
      Q => doutb(214),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][215]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_350\,
      Q => doutb(215),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][216]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_421\,
      Q => doutb(216),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][217]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_420\,
      Q => doutb(217),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][218]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_419\,
      Q => doutb(218),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][219]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_418\,
      Q => doutb(219),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_400\,
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][220]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_417\,
      Q => doutb(220),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][221]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_416\,
      Q => doutb(221),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][222]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_415\,
      Q => doutb(222),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][223]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_414\,
      Q => doutb(223),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][224]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_413\,
      Q => doutb(224),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][225]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_412\,
      Q => doutb(225),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][226]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_411\,
      Q => doutb(226),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][227]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_410\,
      Q => doutb(227),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][228]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_409\,
      Q => doutb(228),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][229]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_408\,
      Q => doutb(229),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_399\,
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][230]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_407\,
      Q => doutb(230),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][231]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_406\,
      Q => doutb(231),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][232]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_405\,
      Q => doutb(232),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][233]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_404\,
      Q => doutb(233),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][234]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_403\,
      Q => doutb(234),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][235]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_402\,
      Q => doutb(235),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][236]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_401\,
      Q => doutb(236),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][237]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_400\,
      Q => doutb(237),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][238]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_399\,
      Q => doutb(238),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][239]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_398\,
      Q => doutb(239),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_398\,
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][240]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_397\,
      Q => doutb(240),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][241]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_396\,
      Q => doutb(241),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][242]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_395\,
      Q => doutb(242),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][243]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_394\,
      Q => doutb(243),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][244]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_393\,
      Q => doutb(244),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][245]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_392\,
      Q => doutb(245),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][246]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_391\,
      Q => doutb(246),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][247]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_390\,
      Q => doutb(247),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][248]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_389\,
      Q => doutb(248),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][249]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_388\,
      Q => doutb(249),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_397\,
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][250]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_387\,
      Q => doutb(250),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][251]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_386\,
      Q => doutb(251),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][252]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_385\,
      Q => doutb(252),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][253]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_384\,
      Q => doutb(253),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][254]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_383\,
      Q => doutb(254),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][255]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_382\,
      Q => doutb(255),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_396\,
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_395\,
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_394\,
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_393\,
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_392\,
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_419\,
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_391\,
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_390\,
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_389\,
      Q => doutb(32),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_388\,
      Q => doutb(33),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_387\,
      Q => doutb(34),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_386\,
      Q => doutb(35),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_385\,
      Q => doutb(36),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_384\,
      Q => doutb(37),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_383\,
      Q => doutb(38),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_382\,
      Q => doutb(39),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_418\,
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_381\,
      Q => doutb(40),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_380\,
      Q => doutb(41),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_379\,
      Q => doutb(42),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_378\,
      Q => doutb(43),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_377\,
      Q => doutb(44),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_376\,
      Q => doutb(45),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_375\,
      Q => doutb(46),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_374\,
      Q => doutb(47),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_373\,
      Q => doutb(48),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_372\,
      Q => doutb(49),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_417\,
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_371\,
      Q => doutb(50),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_370\,
      Q => doutb(51),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_369\,
      Q => doutb(52),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_368\,
      Q => doutb(53),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_367\,
      Q => doutb(54),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_366\,
      Q => doutb(55),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_365\,
      Q => doutb(56),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_364\,
      Q => doutb(57),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_363\,
      Q => doutb(58),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_362\,
      Q => doutb(59),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_416\,
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_361\,
      Q => doutb(60),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_360\,
      Q => doutb(61),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_359\,
      Q => doutb(62),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_358\,
      Q => doutb(63),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_357\,
      Q => doutb(64),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_356\,
      Q => doutb(65),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_355\,
      Q => doutb(66),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_354\,
      Q => doutb(67),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_353\,
      Q => doutb(68),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_352\,
      Q => doutb(69),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_415\,
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_351\,
      Q => doutb(70),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_350\,
      Q => doutb(71),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_421\,
      Q => doutb(72),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_420\,
      Q => doutb(73),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_419\,
      Q => doutb(74),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_418\,
      Q => doutb(75),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_417\,
      Q => doutb(76),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_416\,
      Q => doutb(77),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_415\,
      Q => doutb(78),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_414\,
      Q => doutb(79),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_414\,
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_413\,
      Q => doutb(80),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_412\,
      Q => doutb(81),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_411\,
      Q => doutb(82),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_410\,
      Q => doutb(83),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_409\,
      Q => doutb(84),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_408\,
      Q => doutb(85),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_407\,
      Q => doutb(86),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_406\,
      Q => doutb(87),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_405\,
      Q => doutb(88),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_404\,
      Q => doutb(89),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_413\,
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_403\,
      Q => doutb(90),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_402\,
      Q => doutb(91),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_401\,
      Q => doutb(92),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_400\,
      Q => doutb(93),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_399\,
      Q => doutb(94),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_398\,
      Q => doutb(95),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_397\,
      Q => doutb(96),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_396\,
      Q => doutb(97),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_395\,
      Q => doutb(98),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_394\,
      Q => doutb(99),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_412\,
      Q => doutb(9),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 14) => B"000000000",
      ADDR_A(13 downto 0) => addrb(13 downto 0),
      ADDR_B(22 downto 14) => B"000000000",
      ADDR_B(13 downto 0) => addra(13 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8) => wea(0),
      BWE_B(7) => wea(0),
      BWE_B(6) => wea(0),
      BWE_B(5) => wea(0),
      BWE_B(4) => wea(0),
      BWE_B(3) => wea(0),
      BWE_B(2) => wea(0),
      BWE_B(1) => wea(0),
      BWE_B(0) => wea(0),
      CAS_IN_ADDR_A(22 downto 0) => B"00000000000000000000000",
      CAS_IN_ADDR_B(22 downto 0) => B"00000000000000000000000",
      CAS_IN_BWE_A(8 downto 0) => B"000000000",
      CAS_IN_BWE_B(8 downto 0) => B"000000000",
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => '0',
      CAS_IN_RDACCESS_B => '0',
      CAS_IN_RDB_WR_A => '0',
      CAS_IN_RDB_WR_B => '0',
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DIN_B(71 downto 0) => dina(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => enb,
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '0',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_1\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"01",
      SELF_ADDR_B => B"000" & X"01",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_10\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M2",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"02",
      SELF_ADDR_B => B"000" & X"02",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_11\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M2",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"03",
      SELF_ADDR_B => B"000" & X"03",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_350\,
      DOUT_A(70) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_351\,
      DOUT_A(69) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_352\,
      DOUT_A(68) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_353\,
      DOUT_A(67) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_354\,
      DOUT_A(66) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_355\,
      DOUT_A(65) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_356\,
      DOUT_A(64) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_357\,
      DOUT_A(63) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_358\,
      DOUT_A(62) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_359\,
      DOUT_A(61) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_360\,
      DOUT_A(60) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_361\,
      DOUT_A(59) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_362\,
      DOUT_A(58) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_363\,
      DOUT_A(57) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_364\,
      DOUT_A(56) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_365\,
      DOUT_A(55) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_366\,
      DOUT_A(54) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_367\,
      DOUT_A(53) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_368\,
      DOUT_A(52) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_369\,
      DOUT_A(51) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_370\,
      DOUT_A(50) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_371\,
      DOUT_A(49) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_372\,
      DOUT_A(48) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_373\,
      DOUT_A(47) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_374\,
      DOUT_A(46) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_375\,
      DOUT_A(45) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_376\,
      DOUT_A(44) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_377\,
      DOUT_A(43) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_378\,
      DOUT_A(42) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_379\,
      DOUT_A(41) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_380\,
      DOUT_A(40) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_381\,
      DOUT_A(39) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_382\,
      DOUT_A(38) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_383\,
      DOUT_A(37) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_384\,
      DOUT_A(36) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_385\,
      DOUT_A(35) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_386\,
      DOUT_A(34) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_387\,
      DOUT_A(33) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_388\,
      DOUT_A(32) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_389\,
      DOUT_A(31) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_390\,
      DOUT_A(30) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_391\,
      DOUT_A(29) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_392\,
      DOUT_A(28) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_393\,
      DOUT_A(27) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_394\,
      DOUT_A(26) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_395\,
      DOUT_A(25) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_396\,
      DOUT_A(24) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_397\,
      DOUT_A(23) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_398\,
      DOUT_A(22) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_399\,
      DOUT_A(21) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_400\,
      DOUT_A(20) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_401\,
      DOUT_A(19) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_402\,
      DOUT_A(18) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_403\,
      DOUT_A(17) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_404\,
      DOUT_A(16) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_405\,
      DOUT_A(15) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_406\,
      DOUT_A(14) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_407\,
      DOUT_A(13) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_408\,
      DOUT_A(12) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_409\,
      DOUT_A(11) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_410\,
      DOUT_A(10) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_411\,
      DOUT_A(9) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_412\,
      DOUT_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_413\,
      DOUT_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_414\,
      DOUT_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_415\,
      DOUT_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_416\,
      DOUT_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_417\,
      DOUT_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_418\,
      DOUT_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_419\,
      DOUT_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_420\,
      DOUT_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_421\,
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_12\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M3",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 14) => B"000000000",
      ADDR_A(13 downto 0) => addrb(13 downto 0),
      ADDR_B(22 downto 14) => B"000000000",
      ADDR_B(13 downto 0) => addra(13 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8) => wea(0),
      BWE_B(7) => wea(0),
      BWE_B(6) => wea(0),
      BWE_B(5) => wea(0),
      BWE_B(4) => wea(0),
      BWE_B(3) => wea(0),
      BWE_B(2) => wea(0),
      BWE_B(1) => wea(0),
      BWE_B(0) => wea(0),
      CAS_IN_ADDR_A(22 downto 0) => B"00000000000000000000000",
      CAS_IN_ADDR_B(22 downto 0) => B"00000000000000000000000",
      CAS_IN_BWE_A(8 downto 0) => B"000000000",
      CAS_IN_BWE_B(8 downto 0) => B"000000000",
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => '0',
      CAS_IN_RDACCESS_B => '0',
      CAS_IN_RDB_WR_A => '0',
      CAS_IN_RDB_WR_B => '0',
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DIN_B(71 downto 40) => B"00000000000000000000000000000000",
      DIN_B(39 downto 0) => dina(255 downto 216),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => enb,
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '0',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_13\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M3",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"01",
      SELF_ADDR_B => B"000" & X"01",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_14\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M3",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"02",
      SELF_ADDR_B => B"000" & X"02",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_15\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M3",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"03",
      SELF_ADDR_B => B"000" & X"03",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 40) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_A_UNCONNECTED\(71 downto 40),
      DOUT_A(39) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_382\,
      DOUT_A(38) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_383\,
      DOUT_A(37) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_384\,
      DOUT_A(36) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_385\,
      DOUT_A(35) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_386\,
      DOUT_A(34) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_387\,
      DOUT_A(33) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_388\,
      DOUT_A(32) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_389\,
      DOUT_A(31) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_390\,
      DOUT_A(30) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_391\,
      DOUT_A(29) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_392\,
      DOUT_A(28) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_393\,
      DOUT_A(27) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_394\,
      DOUT_A(26) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_395\,
      DOUT_A(25) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_396\,
      DOUT_A(24) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_397\,
      DOUT_A(23) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_398\,
      DOUT_A(22) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_399\,
      DOUT_A(21) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_400\,
      DOUT_A(20) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_401\,
      DOUT_A(19) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_402\,
      DOUT_A(18) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_403\,
      DOUT_A(17) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_404\,
      DOUT_A(16) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_405\,
      DOUT_A(15) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_406\,
      DOUT_A(14) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_407\,
      DOUT_A(13) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_408\,
      DOUT_A(12) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_409\,
      DOUT_A(11) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_410\,
      DOUT_A(10) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_411\,
      DOUT_A(9) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_412\,
      DOUT_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_413\,
      DOUT_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_414\,
      DOUT_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_415\,
      DOUT_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_416\,
      DOUT_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_417\,
      DOUT_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_418\,
      DOUT_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_419\,
      DOUT_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_420\,
      DOUT_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_421\,
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_2\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"02",
      SELF_ADDR_B => B"000" & X"02",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_3\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"03",
      SELF_ADDR_B => B"000" & X"03",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_350\,
      DOUT_A(70) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_351\,
      DOUT_A(69) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_352\,
      DOUT_A(68) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_353\,
      DOUT_A(67) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_354\,
      DOUT_A(66) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_355\,
      DOUT_A(65) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_356\,
      DOUT_A(64) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_357\,
      DOUT_A(63) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_358\,
      DOUT_A(62) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_359\,
      DOUT_A(61) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_360\,
      DOUT_A(60) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_361\,
      DOUT_A(59) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_362\,
      DOUT_A(58) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_363\,
      DOUT_A(57) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_364\,
      DOUT_A(56) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_365\,
      DOUT_A(55) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_366\,
      DOUT_A(54) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_367\,
      DOUT_A(53) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_368\,
      DOUT_A(52) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_369\,
      DOUT_A(51) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_370\,
      DOUT_A(50) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_371\,
      DOUT_A(49) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_372\,
      DOUT_A(48) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_373\,
      DOUT_A(47) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_374\,
      DOUT_A(46) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_375\,
      DOUT_A(45) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_376\,
      DOUT_A(44) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_377\,
      DOUT_A(43) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_378\,
      DOUT_A(42) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_379\,
      DOUT_A(41) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_380\,
      DOUT_A(40) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_381\,
      DOUT_A(39) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_382\,
      DOUT_A(38) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_383\,
      DOUT_A(37) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_384\,
      DOUT_A(36) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_385\,
      DOUT_A(35) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_386\,
      DOUT_A(34) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_387\,
      DOUT_A(33) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_388\,
      DOUT_A(32) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_389\,
      DOUT_A(31) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_390\,
      DOUT_A(30) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_391\,
      DOUT_A(29) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_392\,
      DOUT_A(28) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_393\,
      DOUT_A(27) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_394\,
      DOUT_A(26) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_395\,
      DOUT_A(25) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_396\,
      DOUT_A(24) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_397\,
      DOUT_A(23) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_398\,
      DOUT_A(22) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_399\,
      DOUT_A(21) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_400\,
      DOUT_A(20) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_401\,
      DOUT_A(19) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_402\,
      DOUT_A(18) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_403\,
      DOUT_A(17) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_404\,
      DOUT_A(16) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_405\,
      DOUT_A(15) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_406\,
      DOUT_A(14) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_407\,
      DOUT_A(13) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_408\,
      DOUT_A(12) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_409\,
      DOUT_A(11) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_410\,
      DOUT_A(10) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_411\,
      DOUT_A(9) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_412\,
      DOUT_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_413\,
      DOUT_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_414\,
      DOUT_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_415\,
      DOUT_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_416\,
      DOUT_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_417\,
      DOUT_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_418\,
      DOUT_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_419\,
      DOUT_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_420\,
      DOUT_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_421\,
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_4\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M1",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 14) => B"000000000",
      ADDR_A(13 downto 0) => addrb(13 downto 0),
      ADDR_B(22 downto 14) => B"000000000",
      ADDR_B(13 downto 0) => addra(13 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8) => wea(0),
      BWE_B(7) => wea(0),
      BWE_B(6) => wea(0),
      BWE_B(5) => wea(0),
      BWE_B(4) => wea(0),
      BWE_B(3) => wea(0),
      BWE_B(2) => wea(0),
      BWE_B(1) => wea(0),
      BWE_B(0) => wea(0),
      CAS_IN_ADDR_A(22 downto 0) => B"00000000000000000000000",
      CAS_IN_ADDR_B(22 downto 0) => B"00000000000000000000000",
      CAS_IN_BWE_A(8 downto 0) => B"000000000",
      CAS_IN_BWE_B(8 downto 0) => B"000000000",
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => '0',
      CAS_IN_RDACCESS_B => '0',
      CAS_IN_RDB_WR_A => '0',
      CAS_IN_RDB_WR_B => '0',
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DIN_B(71 downto 0) => dina(143 downto 72),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => enb,
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '0',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_5\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M1",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"01",
      SELF_ADDR_B => B"000" & X"01",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_6\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M1",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"02",
      SELF_ADDR_B => B"000" & X"02",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_7\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M1",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"03",
      SELF_ADDR_B => B"000" & X"03",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_350\,
      DOUT_A(70) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_351\,
      DOUT_A(69) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_352\,
      DOUT_A(68) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_353\,
      DOUT_A(67) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_354\,
      DOUT_A(66) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_355\,
      DOUT_A(65) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_356\,
      DOUT_A(64) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_357\,
      DOUT_A(63) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_358\,
      DOUT_A(62) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_359\,
      DOUT_A(61) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_360\,
      DOUT_A(60) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_361\,
      DOUT_A(59) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_362\,
      DOUT_A(58) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_363\,
      DOUT_A(57) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_364\,
      DOUT_A(56) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_365\,
      DOUT_A(55) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_366\,
      DOUT_A(54) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_367\,
      DOUT_A(53) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_368\,
      DOUT_A(52) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_369\,
      DOUT_A(51) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_370\,
      DOUT_A(50) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_371\,
      DOUT_A(49) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_372\,
      DOUT_A(48) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_373\,
      DOUT_A(47) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_374\,
      DOUT_A(46) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_375\,
      DOUT_A(45) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_376\,
      DOUT_A(44) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_377\,
      DOUT_A(43) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_378\,
      DOUT_A(42) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_379\,
      DOUT_A(41) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_380\,
      DOUT_A(40) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_381\,
      DOUT_A(39) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_382\,
      DOUT_A(38) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_383\,
      DOUT_A(37) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_384\,
      DOUT_A(36) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_385\,
      DOUT_A(35) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_386\,
      DOUT_A(34) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_387\,
      DOUT_A(33) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_388\,
      DOUT_A(32) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_389\,
      DOUT_A(31) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_390\,
      DOUT_A(30) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_391\,
      DOUT_A(29) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_392\,
      DOUT_A(28) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_393\,
      DOUT_A(27) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_394\,
      DOUT_A(26) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_395\,
      DOUT_A(25) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_396\,
      DOUT_A(24) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_397\,
      DOUT_A(23) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_398\,
      DOUT_A(22) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_399\,
      DOUT_A(21) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_400\,
      DOUT_A(20) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_401\,
      DOUT_A(19) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_402\,
      DOUT_A(18) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_403\,
      DOUT_A(17) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_404\,
      DOUT_A(16) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_405\,
      DOUT_A(15) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_406\,
      DOUT_A(14) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_407\,
      DOUT_A(13) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_408\,
      DOUT_A(12) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_409\,
      DOUT_A(11) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_410\,
      DOUT_A(10) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_411\,
      DOUT_A(9) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_412\,
      DOUT_A(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_413\,
      DOUT_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_414\,
      DOUT_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_415\,
      DOUT_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_416\,
      DOUT_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_417\,
      DOUT_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_418\,
      DOUT_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_419\,
      DOUT_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_420\,
      DOUT_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_421\,
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_8\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M2",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 14) => B"000000000",
      ADDR_A(13 downto 0) => addrb(13 downto 0),
      ADDR_B(22 downto 14) => B"000000000",
      ADDR_B(13 downto 0) => addra(13 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8) => wea(0),
      BWE_B(7) => wea(0),
      BWE_B(6) => wea(0),
      BWE_B(5) => wea(0),
      BWE_B(4) => wea(0),
      BWE_B(3) => wea(0),
      BWE_B(2) => wea(0),
      BWE_B(1) => wea(0),
      BWE_B(0) => wea(0),
      CAS_IN_ADDR_A(22 downto 0) => B"00000000000000000000000",
      CAS_IN_ADDR_B(22 downto 0) => B"00000000000000000000000",
      CAS_IN_BWE_A(8 downto 0) => B"000000000",
      CAS_IN_BWE_B(8 downto 0) => B"000000000",
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => '0',
      CAS_IN_RDACCESS_B => '0',
      CAS_IN_RDB_WR_A => '0',
      CAS_IN_RDB_WR_B => '0',
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DIN_B(71 downto 0) => dina(215 downto 144),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => enb,
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '0',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_9\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B4_M2",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"01",
      SELF_ADDR_B => B"000" & X"01",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 255 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 255 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of ps_axi_dma_1_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of ps_axi_dma_1_0_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of ps_axi_dma_1_0_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of ps_axi_dma_1_0_xpm_fifo_base : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of ps_axi_dma_1_0_xpm_fifo_base : entity is 3;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of ps_axi_dma_1_0_xpm_fifo_base : entity is 3;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 16384;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of ps_axi_dma_1_0_xpm_fifo_base : entity is 4194304;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 16384;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of ps_axi_dma_1_0_xpm_fifo_base : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_dma_1_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of ps_axi_dma_1_0_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of ps_axi_dma_1_0_xpm_fifo_base : entity is 16379;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of ps_axi_dma_1_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of ps_axi_dma_1_0_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of ps_axi_dma_1_0_xpm_fifo_base : entity is 16379;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of ps_axi_dma_1_0_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of ps_axi_dma_1_0_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of ps_axi_dma_1_0_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of ps_axi_dma_1_0_xpm_fifo_base : entity is 15;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of ps_axi_dma_1_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 14;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 256;
  attribute READ_MODE : integer;
  attribute READ_MODE of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of ps_axi_dma_1_0_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 256;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of ps_axi_dma_1_0_xpm_fifo_base : entity is 15;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of ps_axi_dma_1_0_xpm_fifo_base : entity is 14;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of ps_axi_dma_1_0_xpm_fifo_base : entity is 14;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of ps_axi_dma_1_0_xpm_fifo_base : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of ps_axi_dma_1_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of ps_axi_dma_1_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of ps_axi_dma_1_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_axi_dma_1_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of ps_axi_dma_1_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of ps_axi_dma_1_0_xpm_fifo_base : entity is 1;
end ps_axi_dma_1_0_xpm_fifo_base;

architecture STRUCTURE of ps_axi_dma_1_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^empty\ : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_11 : STD_LOGIC;
  signal rdpp1_inst_n_12 : STD_LOGIC;
  signal rdpp1_inst_n_13 : STD_LOGIC;
  signal rdpp1_inst_n_14 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_11 : STD_LOGIC;
  signal wrpp1_inst_n_12 : STD_LOGIC;
  signal wrpp1_inst_n_13 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair15";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 4194304;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair15";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \<const0>\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => empty_fwft_i0
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => empty_fwft_i0,
      Q => \^empty\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.ps_axi_dma_1_0_xpm_memory_base
     port map (
      addra(13 downto 0) => wr_pntr_ext(13 downto 0),
      addrb(13 downto 0) => rd_pntr_ext(13 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(255 downto 0) => din(255 downto 0),
      dinb(255 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(255 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(255 downto 0),
      doutb(255 downto 0) => dout(255 downto 0),
      ena => '0',
      enb => rdpp1_inst_n_14,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_pf,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\ps_axi_dma_1_0_xpm_counter_updn__parameterized0\
     port map (
      Q(13 downto 0) => rd_pntr_ext(13 downto 0),
      \count_value_i_reg[0]_0\ => rdpp1_inst_n_14,
      \count_value_i_reg[13]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(13) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(12) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(11) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(10) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(9) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(8) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(7) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(6) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(5) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(4) => wrpp1_inst_n_9,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(3) => wrpp1_inst_n_10,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(2) => wrpp1_inst_n_11,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(1) => wrpp1_inst_n_12,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0\(0) => wrpp1_inst_n_13,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0\(13 downto 0) => wr_pntr_ext(13 downto 0),
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0\,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_full_i0 => ram_full_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\ps_axi_dma_1_0_xpm_counter_updn__parameterized1\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdpp1_inst_n_14,
      Q(13) => rdpp1_inst_n_0,
      Q(12) => rdpp1_inst_n_1,
      Q(11) => rdpp1_inst_n_2,
      Q(10) => rdpp1_inst_n_3,
      Q(9) => rdpp1_inst_n_4,
      Q(8) => rdpp1_inst_n_5,
      Q(7) => rdpp1_inst_n_6,
      Q(6) => rdpp1_inst_n_7,
      Q(5) => rdpp1_inst_n_8,
      Q(4) => rdpp1_inst_n_9,
      Q(3) => rdpp1_inst_n_10,
      Q(2) => rdpp1_inst_n_11,
      Q(1) => rdpp1_inst_n_12,
      Q(0) => rdpp1_inst_n_13,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.ps_axi_dma_1_0_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0\
     port map (
      Q(13 downto 0) => wr_pntr_ext(13 downto 0),
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(13) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(12) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(11) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(10) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(9) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5) => rdpp1_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4) => rdpp1_inst_n_9,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3) => rdpp1_inst_n_10,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2) => rdpp1_inst_n_11,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1) => rdpp1_inst_n_12,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0) => rdpp1_inst_n_13,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdpp1_inst_n_14,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1\
     port map (
      Q(13) => wrpp1_inst_n_0,
      Q(12) => wrpp1_inst_n_1,
      Q(11) => wrpp1_inst_n_2,
      Q(10) => wrpp1_inst_n_3,
      Q(9) => wrpp1_inst_n_4,
      Q(8) => wrpp1_inst_n_5,
      Q(7) => wrpp1_inst_n_6,
      Q(6) => wrpp1_inst_n_7,
      Q(5) => wrpp1_inst_n_8,
      Q(4) => wrpp1_inst_n_9,
      Q(3) => wrpp1_inst_n_10,
      Q(2) => wrpp1_inst_n_11,
      Q(1) => wrpp1_inst_n_12,
      Q(0) => wrpp1_inst_n_13,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.ps_axi_dma_1_0_xpm_fifo_rst
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[13]\ => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_pf => ram_wr_en_pf,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0_xpm_fifo_sync is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 255 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 255 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of ps_axi_dma_1_0_xpm_fifo_sync : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of ps_axi_dma_1_0_xpm_fifo_sync : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of ps_axi_dma_1_0_xpm_fifo_sync : entity is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of ps_axi_dma_1_0_xpm_fifo_sync : entity is "16'b0000011100000111";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of ps_axi_dma_1_0_xpm_fifo_sync : entity is "warning";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of ps_axi_dma_1_0_xpm_fifo_sync : entity is "ultra";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of ps_axi_dma_1_0_xpm_fifo_sync : entity is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 16384;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of ps_axi_dma_1_0_xpm_fifo_sync : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_dma_1_0_xpm_fifo_sync : entity is "xpm_fifo_sync";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of ps_axi_dma_1_0_xpm_fifo_sync : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of ps_axi_dma_1_0_xpm_fifo_sync : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of ps_axi_dma_1_0_xpm_fifo_sync : entity is 3;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of ps_axi_dma_1_0_xpm_fifo_sync : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of ps_axi_dma_1_0_xpm_fifo_sync : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 256;
  attribute READ_MODE : string;
  attribute READ_MODE of ps_axi_dma_1_0_xpm_fifo_sync : entity is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of ps_axi_dma_1_0_xpm_fifo_sync : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of ps_axi_dma_1_0_xpm_fifo_sync : entity is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of ps_axi_dma_1_0_xpm_fifo_sync : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 256;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of ps_axi_dma_1_0_xpm_fifo_sync : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of ps_axi_dma_1_0_xpm_fifo_sync : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_axi_dma_1_0_xpm_fifo_sync : entity is "soft";
end ps_axi_dma_1_0_xpm_fifo_sync;

architecture STRUCTURE of ps_axi_dma_1_0_xpm_fifo_sync is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_SIM_ASSERT_ERR of xpm_fifo_base_inst : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 3;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 3;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 16384;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 4194304;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 16384;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b0";
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 16379;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 16379;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 15;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 14;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 256;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 256;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 15;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 14;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 14;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 8;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_fifo_base_inst: entity work.ps_axi_dma_1_0_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(255 downto 0) => din(255 downto 0),
      dout(255 downto 0) => dout(255 downto 0),
      empty => empty,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(0),
      rd_en => rd_en,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => sleep,
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(0),
      wr_en => wr_en,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0_axi_dma is
  port (
    lpd_clk : in STD_LOGIC;
    lpd_resetn : in STD_LOGIC;
    spy_wr : in STD_LOGIC;
    spy_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avail_size : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    rd_ptr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    wr_ptr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    M_AXI_TDATA_cmd : out STD_LOGIC_VECTOR ( 71 downto 0 );
    M_AXI_TVALID_cmd : out STD_LOGIC;
    M_AXI_TREADY_cmd : in STD_LOGIC;
    M_AXI_STS_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_STS_tvalid : in STD_LOGIC;
    M_AXI_STS_tready : out STD_LOGIC;
    M_AXI_TDATA_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_TVALID_in : in STD_LOGIC;
    M_AXI_TREADY_in : out STD_LOGIC;
    M_AXI_TDATA_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_TVALID_out : out STD_LOGIC;
    M_AXI_TLAST_out : out STD_LOGIC;
    M_AXI_TREADY_out : in STD_LOGIC
  );
  attribute CMD_ST_IDLE : string;
  attribute CMD_ST_IDLE of ps_axi_dma_1_0_axi_dma : entity is "3'b000";
  attribute CMD_ST_WAIT_DONE : string;
  attribute CMD_ST_WAIT_DONE of ps_axi_dma_1_0_axi_dma : entity is "3'b010";
  attribute CMD_ST_WAIT_HDR : string;
  attribute CMD_ST_WAIT_HDR of ps_axi_dma_1_0_axi_dma : entity is "3'b001";
  attribute CMD_ST_WAIT_SPACE : string;
  attribute CMD_ST_WAIT_SPACE of ps_axi_dma_1_0_axi_dma : entity is "3'b011";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_dma_1_0_axi_dma : entity is "axi_dma";
end ps_axi_dma_1_0_axi_dma;

architecture STRUCTURE of ps_axi_dma_1_0_axi_dma is
  component ps_axi_dma_1_0_fifo_ptr is
  port (
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component ps_axi_dma_1_0_fifo_ptr;
  component ps_axi_dma_1_0_fifo_spy is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component ps_axi_dma_1_0_fifo_spy;
  component ps_axi_dma_1_0_ila_7 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 26 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 26 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ps_axi_dma_1_0_ila_7;
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_sts_tready\ : STD_LOGIC;
  signal \^m_axi_tdata_cmd\ : STD_LOGIC_VECTOR ( 67 downto 5 );
  signal \^m_axi_tlast_out\ : STD_LOGIC;
  signal \^m_axi_tvalid_cmd\ : STD_LOGIC;
  signal adr : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of adr : signal is std.standard.true;
  signal \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_10_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_11_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TLAST_out_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.M_AXI_TVALID_cmd_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.avail_size[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.blocks[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_done_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_done_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_error_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.cmd_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.curr_beat[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \axi_dma.curr_beat_reg[13]_i_3_n_4\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[13]_i_3_n_5\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[13]_i_3_n_6\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[13]_i_3_n_7\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.curr_beat_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.dma_active_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.dma_active_reg_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[13]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[13]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_10_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count[8]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \axi_dma.fifo_count_reg[13]_i_2_n_4\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[13]_i_2_n_5\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[13]_i_2_n_6\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[13]_i_2_n_7\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.fifo_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.has_mig_size_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[13]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[13]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat[8]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[13]_i_2_n_4\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[13]_i_2_n_5\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[13]_i_2_n_6\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[13]_i_2_n_7\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_dma.last_beat_reg_n_0_[9]\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[15]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[23]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg0\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \axi_dma.mig_blocks_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \axi_dma.mig_diff[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_11_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_diff[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.mig_size[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_dma.r5_cmd_rd_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.r5_cmd_rd_reg_n_0\ : STD_LOGIC;
  signal \axi_dma.spy_reset_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.start_cmd_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.tag[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.tag[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.tag[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_dma.tag[3]_i_1_n_0\ : STD_LOGIC;
  signal blocks : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of blocks : signal is std.standard.true;
  signal clear : STD_LOGIC;
  signal cmd_done : STD_LOGIC;
  attribute MARK_DEBUG of cmd_done : signal is std.standard.true;
  signal cmd_done0 : STD_LOGIC;
  signal cmd_error : STD_LOGIC;
  attribute MARK_DEBUG of cmd_error : signal is std.standard.true;
  signal cmd_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of cmd_state : signal is std.standard.true;
  signal curr_beat : STD_LOGIC;
  signal fifo_chg : STD_LOGIC;
  signal fifo_count : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal fifo_empty : STD_LOGIC;
  signal fifo_rd_en : STD_LOGIC;
  signal fifo_size_empty : STD_LOGIC;
  signal fifo_size_out_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_size_rd : STD_LOGIC;
  signal has_mig_size : STD_LOGIC;
  attribute MARK_DEBUG of has_mig_size : signal is std.standard.true;
  signal in_data : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal in_wr : STD_LOGIC;
  signal last_beat : STD_LOGIC;
  signal last_beat0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal mig_blocks : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute MARK_DEBUG of mig_blocks : signal is std.standard.true;
  signal mig_diff : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of mig_diff : signal is std.standard.true;
  signal mig_size : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of mig_size : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal r5_cmd_data : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal r5_cmd_empty : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal spy_reset : STD_LOGIC;
  signal start_cmd : STD_LOGIC;
  attribute MARK_DEBUG of start_cmd : signal is std.standard.true;
  signal tag : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of tag : signal is std.standard.true;
  signal \NLW_axi_dma.curr_beat_reg[13]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_axi_dma.curr_beat_reg[13]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_axi_dma.fifo_count_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_axi_dma.fifo_count_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_axi_dma.last_beat_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_axi_dma.last_beat_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_axi_dma.mig_blocks_reg[26]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_axi_dma.mig_blocks_reg[26]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_fifo_i_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_i_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_i_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_size_ptr_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_spy_i_full_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of M_AXI_TVALID_out_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_dma.M_AXI_TLAST_out_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_dma.M_AXI_TLAST_out_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_dma.M_AXI_TLAST_out_i_9\ : label is "soft_lutpair19";
  attribute KEEP : string;
  attribute KEEP of \axi_dma.adr_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \axi_dma.adr_reg[0]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[10]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[10]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[11]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[11]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[12]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[12]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[13]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[13]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[14]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[14]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[15]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[15]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[16]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[16]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[17]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[17]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[18]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[18]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[19]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[19]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[1]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[20]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[20]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[21]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[21]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[22]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[22]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[23]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[23]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[24]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[24]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[25]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[25]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[26]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[26]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[2]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[3]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[4]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[5]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[6]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[7]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[8]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[8]\ : label is "yes";
  attribute KEEP of \axi_dma.adr_reg[9]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.adr_reg[9]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[0]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[1]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[2]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[3]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[4]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[5]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[6]\ : label is "yes";
  attribute KEEP of \axi_dma.blocks_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.blocks_reg[7]\ : label is "yes";
  attribute KEEP of \axi_dma.cmd_done_reg\ : label is "yes";
  attribute KEEP of \axi_dma.cmd_error_reg\ : label is "yes";
  attribute mark_debug_string of \axi_dma.cmd_error_reg\ : label is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \axi_dma.cmd_state_reg[0]\ : label is "CMD_ST_IDLE:000,CMD_ST_WAIT_HDR:001,CMD_ST_WAIT_DONE:010,CMD_ST_WAIT_SPACE:011";
  attribute KEEP of \axi_dma.cmd_state_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.cmd_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \axi_dma.cmd_state_reg[1]\ : label is "CMD_ST_IDLE:000,CMD_ST_WAIT_HDR:001,CMD_ST_WAIT_DONE:010,CMD_ST_WAIT_SPACE:011";
  attribute KEEP of \axi_dma.cmd_state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.cmd_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \axi_dma.cmd_state_reg[2]\ : label is "CMD_ST_IDLE:000,CMD_ST_WAIT_HDR:001,CMD_ST_WAIT_DONE:010,CMD_ST_WAIT_SPACE:011";
  attribute KEEP of \axi_dma.cmd_state_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.cmd_state_reg[2]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \axi_dma.curr_beat_reg[13]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_dma.curr_beat_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_dma.fifo_count_reg[13]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \axi_dma.fifo_count_reg[13]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \axi_dma.fifo_count_reg[8]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \axi_dma.fifo_count_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute KEEP of \axi_dma.has_mig_size_reg\ : label is "yes";
  attribute SOFT_HLUTNM of \axi_dma.last_beat[0]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD of \axi_dma.last_beat_reg[13]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_dma.last_beat_reg[8]_i_1\ : label is 35;
  attribute KEEP of \axi_dma.mig_blocks_reg[0]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[10]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[11]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[12]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[13]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[14]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_dma.mig_blocks_reg[15]_i_1\ : label is 35;
  attribute KEEP of \axi_dma.mig_blocks_reg[16]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[17]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[18]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[19]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[1]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[20]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[21]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[22]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[23]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_dma.mig_blocks_reg[23]_i_1\ : label is 35;
  attribute KEEP of \axi_dma.mig_blocks_reg[24]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[25]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[26]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_dma.mig_blocks_reg[26]_i_1\ : label is 35;
  attribute KEEP of \axi_dma.mig_blocks_reg[2]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[3]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[4]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[5]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[6]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_dma.mig_blocks_reg[7]_i_1\ : label is 35;
  attribute KEEP of \axi_dma.mig_blocks_reg[8]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_blocks_reg[9]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[0]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[1]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[2]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[3]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[4]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[5]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[6]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_diff_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.mig_diff_reg[7]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[0]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[1]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[2]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[3]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[4]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[5]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[6]\ : label is "yes";
  attribute KEEP of \axi_dma.mig_size_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM of \axi_dma.r5_cmd_rd_i_1\ : label is "soft_lutpair17";
  attribute KEEP of \axi_dma.start_cmd_reg\ : label is "yes";
  attribute mark_debug_string of \axi_dma.start_cmd_reg\ : label is "yes";
  attribute KEEP of \axi_dma.tag_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.tag_reg[0]\ : label is "yes";
  attribute KEEP of \axi_dma.tag_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.tag_reg[1]\ : label is "yes";
  attribute KEEP of \axi_dma.tag_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.tag_reg[2]\ : label is "yes";
  attribute KEEP of \axi_dma.tag_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_dma.tag_reg[3]\ : label is "yes";
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of fifo_i : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of fifo_i : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of fifo_i : label is 0;
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of fifo_i : label is "16'b0000011100000111";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of fifo_i : label is "warning";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of fifo_i : label is 0;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of fifo_i : label is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of fifo_i : label is 16384;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of fifo_i : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of fifo_i : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of fifo_i : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of fifo_i : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of fifo_i : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of fifo_i : label is 3;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of fifo_i : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of fifo_i : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of fifo_i : label is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of fifo_i : label is 256;
  attribute READ_MODE : integer;
  attribute READ_MODE of fifo_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of fifo_i : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of fifo_i : label is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of fifo_i : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of fifo_i : label is 256;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of fifo_i : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of fifo_i : label is "TRUE";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_size_ptr_i : label is "fifo_ptr,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_size_ptr_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_size_ptr_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_spy_i : label is "fifo_spy,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_spy_i : label is "yes";
  attribute x_core_info of fifo_spy_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_7,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
begin
  M_AXI_STS_tready <= \^m_axi_sts_tready\;
  M_AXI_TDATA_cmd(71) <= \<const0>\;
  M_AXI_TDATA_cmd(70) <= \<const0>\;
  M_AXI_TDATA_cmd(69) <= \<const0>\;
  M_AXI_TDATA_cmd(68) <= \<const0>\;
  M_AXI_TDATA_cmd(67 downto 37) <= \^m_axi_tdata_cmd\(67 downto 37);
  M_AXI_TDATA_cmd(36) <= \<const0>\;
  M_AXI_TDATA_cmd(35) <= \<const0>\;
  M_AXI_TDATA_cmd(34) <= \<const0>\;
  M_AXI_TDATA_cmd(33) <= \<const0>\;
  M_AXI_TDATA_cmd(32) <= \<const0>\;
  M_AXI_TDATA_cmd(31) <= \<const0>\;
  M_AXI_TDATA_cmd(30) <= \<const0>\;
  M_AXI_TDATA_cmd(29) <= \<const0>\;
  M_AXI_TDATA_cmd(28) <= \<const0>\;
  M_AXI_TDATA_cmd(27) <= \<const0>\;
  M_AXI_TDATA_cmd(26) <= \<const0>\;
  M_AXI_TDATA_cmd(25) <= \<const0>\;
  M_AXI_TDATA_cmd(24) <= \<const0>\;
  M_AXI_TDATA_cmd(23) <= \<const0>\;
  M_AXI_TDATA_cmd(22) <= \<const0>\;
  M_AXI_TDATA_cmd(21) <= \<const0>\;
  M_AXI_TDATA_cmd(20) <= \<const0>\;
  M_AXI_TDATA_cmd(19) <= \<const0>\;
  M_AXI_TDATA_cmd(18) <= \<const0>\;
  M_AXI_TDATA_cmd(17) <= \<const0>\;
  M_AXI_TDATA_cmd(16) <= \<const0>\;
  M_AXI_TDATA_cmd(15) <= \<const0>\;
  M_AXI_TDATA_cmd(14) <= \<const0>\;
  M_AXI_TDATA_cmd(13) <= \<const0>\;
  M_AXI_TDATA_cmd(12 downto 5) <= \^m_axi_tdata_cmd\(12 downto 5);
  M_AXI_TDATA_cmd(4) <= \<const0>\;
  M_AXI_TDATA_cmd(3) <= \<const0>\;
  M_AXI_TDATA_cmd(2) <= \<const0>\;
  M_AXI_TDATA_cmd(1) <= \<const0>\;
  M_AXI_TDATA_cmd(0) <= \<const0>\;
  M_AXI_TLAST_out <= \^m_axi_tlast_out\;
  M_AXI_TREADY_in <= \<const0>\;
  M_AXI_TVALID_cmd <= \^m_axi_tvalid_cmd\;
  rd_ptr(26) <= \<const0>\;
  rd_ptr(25) <= \<const0>\;
  rd_ptr(24) <= \<const0>\;
  rd_ptr(23) <= \<const0>\;
  rd_ptr(22) <= \<const0>\;
  rd_ptr(21) <= \<const0>\;
  rd_ptr(20) <= \<const0>\;
  rd_ptr(19) <= \<const0>\;
  rd_ptr(18) <= \<const0>\;
  rd_ptr(17) <= \<const0>\;
  rd_ptr(16) <= \<const0>\;
  rd_ptr(15) <= \<const0>\;
  rd_ptr(14) <= \<const0>\;
  rd_ptr(13) <= \<const0>\;
  rd_ptr(12) <= \<const0>\;
  rd_ptr(11) <= \<const0>\;
  rd_ptr(10) <= \<const0>\;
  rd_ptr(9) <= \<const0>\;
  rd_ptr(8) <= \<const0>\;
  rd_ptr(7) <= \<const0>\;
  rd_ptr(6) <= \<const0>\;
  rd_ptr(5) <= \<const0>\;
  rd_ptr(4) <= \<const0>\;
  rd_ptr(3) <= \<const0>\;
  rd_ptr(2) <= \<const0>\;
  rd_ptr(1) <= \<const0>\;
  rd_ptr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
M_AXI_TVALID_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_dma.dma_active_reg_n_0\,
      I1 => fifo_empty,
      O => M_AXI_TVALID_out
    );
\axi_dma.M_AXI_STS_tready_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => \^m_axi_sts_tready\,
      R => reset
    );
\axi_dma.M_AXI_TDATA_cmd[67]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => start_cmd,
      I1 => \^m_axi_tvalid_cmd\,
      O => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\
    );
\axi_dma.M_AXI_TDATA_cmd_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(5),
      Q => \^m_axi_tdata_cmd\(10),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(6),
      Q => \^m_axi_tdata_cmd\(11),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(7),
      Q => \^m_axi_tdata_cmd\(12),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(0),
      Q => \^m_axi_tdata_cmd\(37),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(1),
      Q => \^m_axi_tdata_cmd\(38),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(2),
      Q => \^m_axi_tdata_cmd\(39),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(3),
      Q => \^m_axi_tdata_cmd\(40),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(4),
      Q => \^m_axi_tdata_cmd\(41),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(5),
      Q => \^m_axi_tdata_cmd\(42),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(6),
      Q => \^m_axi_tdata_cmd\(43),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(7),
      Q => \^m_axi_tdata_cmd\(44),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(8),
      Q => \^m_axi_tdata_cmd\(45),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(9),
      Q => \^m_axi_tdata_cmd\(46),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(10),
      Q => \^m_axi_tdata_cmd\(47),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(11),
      Q => \^m_axi_tdata_cmd\(48),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(12),
      Q => \^m_axi_tdata_cmd\(49),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(13),
      Q => \^m_axi_tdata_cmd\(50),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(14),
      Q => \^m_axi_tdata_cmd\(51),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(15),
      Q => \^m_axi_tdata_cmd\(52),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(16),
      Q => \^m_axi_tdata_cmd\(53),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(17),
      Q => \^m_axi_tdata_cmd\(54),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(18),
      Q => \^m_axi_tdata_cmd\(55),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(19),
      Q => \^m_axi_tdata_cmd\(56),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(20),
      Q => \^m_axi_tdata_cmd\(57),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(21),
      Q => \^m_axi_tdata_cmd\(58),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(22),
      Q => \^m_axi_tdata_cmd\(59),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(0),
      Q => \^m_axi_tdata_cmd\(5),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(23),
      Q => \^m_axi_tdata_cmd\(60),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(24),
      Q => \^m_axi_tdata_cmd\(61),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(25),
      Q => \^m_axi_tdata_cmd\(62),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => adr(26),
      Q => \^m_axi_tdata_cmd\(63),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => tag(0),
      Q => \^m_axi_tdata_cmd\(64),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => tag(1),
      Q => \^m_axi_tdata_cmd\(65),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => tag(2),
      Q => \^m_axi_tdata_cmd\(66),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => tag(3),
      Q => \^m_axi_tdata_cmd\(67),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(1),
      Q => \^m_axi_tdata_cmd\(6),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(2),
      Q => \^m_axi_tdata_cmd\(7),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(3),
      Q => \^m_axi_tdata_cmd\(8),
      R => '0'
    );
\axi_dma.M_AXI_TDATA_cmd_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0\,
      D => blocks(4),
      Q => \^m_axi_tdata_cmd\(9),
      R => '0'
    );
\axi_dma.M_AXI_TLAST_out_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \axi_dma.M_AXI_TLAST_out_i_2_n_0\,
      I1 => r5_cmd_empty,
      I2 => \axi_dma.M_AXI_TLAST_out_i_3_n_0\,
      I3 => \axi_dma.dma_active_reg_n_0\,
      I4 => resetn,
      O => \axi_dma.M_AXI_TLAST_out_i_1_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \axi_dma.curr_beat_reg\(3),
      I1 => \axi_dma.last_beat_reg_n_0_[3]\,
      I2 => \axi_dma.last_beat_reg_n_0_[5]\,
      I3 => \axi_dma.curr_beat_reg\(5),
      I4 => \axi_dma.last_beat_reg_n_0_[4]\,
      I5 => \axi_dma.curr_beat_reg\(4),
      O => \axi_dma.M_AXI_TLAST_out_i_10_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \axi_dma.curr_beat_reg\(0),
      I1 => \axi_dma.last_beat_reg_n_0_[0]\,
      I2 => \axi_dma.last_beat_reg_n_0_[2]\,
      I3 => \axi_dma.curr_beat_reg\(2),
      I4 => \axi_dma.last_beat_reg_n_0_[1]\,
      I5 => \axi_dma.curr_beat_reg\(1),
      O => \axi_dma.M_AXI_TLAST_out_i_11_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00800000"
    )
        port map (
      I0 => \axi_dma.M_AXI_TLAST_out_i_4_n_0\,
      I1 => \axi_dma.M_AXI_TLAST_out_i_5_n_0\,
      I2 => \axi_dma.M_AXI_TLAST_out_i_6_n_0\,
      I3 => \axi_dma.curr_beat[13]_i_1_n_0\,
      I4 => \axi_dma.M_AXI_TLAST_out_i_7_n_0\,
      I5 => \^m_axi_tlast_out\,
      O => \axi_dma.M_AXI_TLAST_out_i_2_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_dma.M_AXI_TLAST_out_i_8_n_0\,
      I1 => \axi_dma.M_AXI_TLAST_out_i_9_n_0\,
      I2 => r5_cmd_data(6),
      I3 => r5_cmd_data(7),
      I4 => r5_cmd_data(4),
      I5 => r5_cmd_data(5),
      O => \axi_dma.M_AXI_TLAST_out_i_3_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \axi_dma.curr_beat_reg\(6),
      I1 => \axi_dma.last_beat_reg_n_0_[6]\,
      I2 => \axi_dma.last_beat_reg_n_0_[8]\,
      I3 => \axi_dma.curr_beat_reg\(8),
      I4 => \axi_dma.last_beat_reg_n_0_[7]\,
      I5 => \axi_dma.curr_beat_reg\(7),
      O => \axi_dma.M_AXI_TLAST_out_i_4_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \axi_dma.last_beat_reg_n_0_[13]\,
      I1 => \axi_dma.curr_beat_reg\(13),
      I2 => \axi_dma.last_beat_reg_n_0_[12]\,
      I3 => \axi_dma.curr_beat_reg\(12),
      I4 => \axi_dma.M_AXI_TLAST_out_i_10_n_0\,
      I5 => \axi_dma.M_AXI_TLAST_out_i_11_n_0\,
      O => \axi_dma.M_AXI_TLAST_out_i_5_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \axi_dma.curr_beat_reg\(9),
      I1 => \axi_dma.last_beat_reg_n_0_[9]\,
      I2 => \axi_dma.last_beat_reg_n_0_[11]\,
      I3 => \axi_dma.curr_beat_reg\(11),
      I4 => \axi_dma.last_beat_reg_n_0_[10]\,
      I5 => \axi_dma.curr_beat_reg\(10),
      O => \axi_dma.M_AXI_TLAST_out_i_6_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F0F2FFF"
    )
        port map (
      I0 => M_AXI_TREADY_out,
      I1 => fifo_empty,
      I2 => resetn,
      I3 => \axi_dma.dma_active_reg_n_0\,
      I4 => r5_cmd_empty,
      O => \axi_dma.M_AXI_TLAST_out_i_7_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r5_cmd_data(13),
      I1 => r5_cmd_data(12),
      I2 => r5_cmd_data(9),
      I3 => r5_cmd_data(8),
      I4 => r5_cmd_data(11),
      I5 => r5_cmd_data(10),
      O => \axi_dma.M_AXI_TLAST_out_i_8_n_0\
    );
\axi_dma.M_AXI_TLAST_out_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => r5_cmd_data(2),
      I1 => r5_cmd_data(3),
      I2 => r5_cmd_data(0),
      I3 => r5_cmd_data(1),
      O => \axi_dma.M_AXI_TLAST_out_i_9_n_0\
    );
\axi_dma.M_AXI_TLAST_out_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.M_AXI_TLAST_out_i_1_n_0\,
      Q => \^m_axi_tlast_out\,
      R => '0'
    );
\axi_dma.M_AXI_TVALID_cmd_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => start_cmd,
      I1 => M_AXI_TREADY_cmd,
      I2 => \^m_axi_tvalid_cmd\,
      O => \axi_dma.M_AXI_TVALID_cmd_i_1_n_0\
    );
\axi_dma.M_AXI_TVALID_cmd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.M_AXI_TVALID_cmd_i_1_n_0\,
      Q => \^m_axi_tvalid_cmd\,
      R => '0'
    );
\axi_dma.adr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(0),
      Q => adr(0),
      R => reset
    );
\axi_dma.adr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(10),
      Q => adr(10),
      R => reset
    );
\axi_dma.adr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(11),
      Q => adr(11),
      R => reset
    );
\axi_dma.adr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(12),
      Q => adr(12),
      R => reset
    );
\axi_dma.adr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(13),
      Q => adr(13),
      R => reset
    );
\axi_dma.adr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(14),
      Q => adr(14),
      R => reset
    );
\axi_dma.adr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(15),
      Q => adr(15),
      R => reset
    );
\axi_dma.adr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(16),
      Q => adr(16),
      R => reset
    );
\axi_dma.adr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(17),
      Q => adr(17),
      R => reset
    );
\axi_dma.adr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(18),
      Q => adr(18),
      R => reset
    );
\axi_dma.adr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(19),
      Q => adr(19),
      R => reset
    );
\axi_dma.adr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(1),
      Q => adr(1),
      R => reset
    );
\axi_dma.adr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(20),
      Q => adr(20),
      R => reset
    );
\axi_dma.adr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(21),
      Q => adr(21),
      R => reset
    );
\axi_dma.adr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(22),
      Q => adr(22),
      R => reset
    );
\axi_dma.adr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(23),
      Q => adr(23),
      R => reset
    );
\axi_dma.adr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(24),
      Q => adr(24),
      R => reset
    );
\axi_dma.adr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(25),
      Q => adr(25),
      R => reset
    );
\axi_dma.adr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(26),
      Q => adr(26),
      R => reset
    );
\axi_dma.adr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(2),
      Q => adr(2),
      R => reset
    );
\axi_dma.adr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(3),
      Q => adr(3),
      R => reset
    );
\axi_dma.adr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(4),
      Q => adr(4),
      R => reset
    );
\axi_dma.adr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(5),
      Q => adr(5),
      R => reset
    );
\axi_dma.adr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(6),
      Q => adr(6),
      R => reset
    );
\axi_dma.adr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(7),
      Q => adr(7),
      R => reset
    );
\axi_dma.adr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(8),
      Q => adr(8),
      R => reset
    );
\axi_dma.adr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adr(9),
      Q => adr(9),
      R => reset
    );
\axi_dma.avail_size[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_size_empty,
      O => \axi_dma.avail_size[31]_i_1_n_0\
    );
\axi_dma.avail_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(0),
      Q => avail_size(0),
      R => '0'
    );
\axi_dma.avail_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(10),
      Q => avail_size(10),
      R => '0'
    );
\axi_dma.avail_size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(11),
      Q => avail_size(11),
      R => '0'
    );
\axi_dma.avail_size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(12),
      Q => avail_size(12),
      R => '0'
    );
\axi_dma.avail_size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(13),
      Q => avail_size(13),
      R => '0'
    );
\axi_dma.avail_size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(14),
      Q => avail_size(14),
      R => '0'
    );
\axi_dma.avail_size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(15),
      Q => avail_size(15),
      R => '0'
    );
\axi_dma.avail_size_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(16),
      Q => avail_size(16),
      R => '0'
    );
\axi_dma.avail_size_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(17),
      Q => avail_size(17),
      R => '0'
    );
\axi_dma.avail_size_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(18),
      Q => avail_size(18),
      R => '0'
    );
\axi_dma.avail_size_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(19),
      Q => avail_size(19),
      R => '0'
    );
\axi_dma.avail_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(1),
      Q => avail_size(1),
      R => '0'
    );
\axi_dma.avail_size_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(20),
      Q => avail_size(20),
      R => '0'
    );
\axi_dma.avail_size_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(21),
      Q => avail_size(21),
      R => '0'
    );
\axi_dma.avail_size_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(22),
      Q => avail_size(22),
      R => '0'
    );
\axi_dma.avail_size_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(23),
      Q => avail_size(23),
      R => '0'
    );
\axi_dma.avail_size_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(24),
      Q => avail_size(24),
      R => '0'
    );
\axi_dma.avail_size_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(25),
      Q => avail_size(25),
      R => '0'
    );
\axi_dma.avail_size_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(26),
      Q => avail_size(26),
      R => '0'
    );
\axi_dma.avail_size_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(27),
      Q => avail_size(27),
      R => '0'
    );
\axi_dma.avail_size_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(28),
      Q => avail_size(28),
      R => '0'
    );
\axi_dma.avail_size_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(29),
      Q => avail_size(29),
      R => '0'
    );
\axi_dma.avail_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(2),
      Q => avail_size(2),
      R => '0'
    );
\axi_dma.avail_size_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(30),
      Q => avail_size(30),
      R => '0'
    );
\axi_dma.avail_size_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(31),
      Q => avail_size(31),
      R => '0'
    );
\axi_dma.avail_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(3),
      Q => avail_size(3),
      R => '0'
    );
\axi_dma.avail_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(4),
      Q => avail_size(4),
      R => '0'
    );
\axi_dma.avail_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(5),
      Q => avail_size(5),
      R => '0'
    );
\axi_dma.avail_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(6),
      Q => avail_size(6),
      R => '0'
    );
\axi_dma.avail_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(7),
      Q => avail_size(7),
      R => '0'
    );
\axi_dma.avail_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(8),
      Q => avail_size(8),
      R => '0'
    );
\axi_dma.avail_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => \axi_dma.avail_size[31]_i_1_n_0\,
      D => fifo_size_out_data(9),
      Q => avail_size(9),
      R => '0'
    );
\axi_dma.blocks[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.cmd_state[2]_i_3_n_0\,
      I2 => blocks(0),
      O => \axi_dma.blocks[0]_i_1_n_0\
    );
\axi_dma.blocks[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(1),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[1]_i_1_n_0\
    );
\axi_dma.blocks[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(2),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[2]_i_1_n_0\
    );
\axi_dma.blocks[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(3),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[3]_i_1_n_0\
    );
\axi_dma.blocks[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(4),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[4]_i_1_n_0\
    );
\axi_dma.blocks[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(5),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[5]_i_1_n_0\
    );
\axi_dma.blocks[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(6),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[6]_i_1_n_0\
    );
\axi_dma.blocks[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => reset,
      I1 => cmd_state(2),
      I2 => cmd_state(0),
      I3 => cmd_state(1),
      O => \axi_dma.blocks[7]_i_1_n_0\
    );
\axi_dma.blocks[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => reset,
      I1 => blocks(7),
      I2 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \axi_dma.blocks[7]_i_2_n_0\
    );
\axi_dma.blocks_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[0]_i_1_n_0\,
      Q => blocks(0),
      R => '0'
    );
\axi_dma.blocks_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[1]_i_1_n_0\,
      Q => blocks(1),
      R => '0'
    );
\axi_dma.blocks_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[2]_i_1_n_0\,
      Q => blocks(2),
      R => '0'
    );
\axi_dma.blocks_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[3]_i_1_n_0\,
      Q => blocks(3),
      R => '0'
    );
\axi_dma.blocks_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[4]_i_1_n_0\,
      Q => blocks(4),
      R => '0'
    );
\axi_dma.blocks_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[5]_i_1_n_0\,
      Q => blocks(5),
      R => '0'
    );
\axi_dma.blocks_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[6]_i_1_n_0\,
      Q => blocks(6),
      R => '0'
    );
\axi_dma.blocks_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.blocks[7]_i_1_n_0\,
      D => \axi_dma.blocks[7]_i_2_n_0\,
      Q => blocks(7),
      R => '0'
    );
\axi_dma.cmd_done_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_STS_tdata(7),
      I2 => cmd_done0,
      I3 => M_AXI_STS_tvalid,
      I4 => \^m_axi_sts_tready\,
      O => \axi_dma.cmd_done_i_1_n_0\
    );
\axi_dma.cmd_done_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => tag(3),
      I1 => M_AXI_STS_tdata(3),
      I2 => \axi_dma.cmd_done_i_3_n_0\,
      O => cmd_done0
    );
\axi_dma.cmd_done_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tag(0),
      I1 => M_AXI_STS_tdata(0),
      I2 => M_AXI_STS_tdata(2),
      I3 => tag(2),
      I4 => M_AXI_STS_tdata(1),
      I5 => tag(1),
      O => \axi_dma.cmd_done_i_3_n_0\
    );
\axi_dma.cmd_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.cmd_done_i_1_n_0\,
      Q => cmd_done,
      R => reset
    );
\axi_dma.cmd_error_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFDF000000"
    )
        port map (
      I0 => cmd_done0,
      I1 => cmd_error,
      I2 => M_AXI_STS_tdata(7),
      I3 => M_AXI_STS_tvalid,
      I4 => \^m_axi_sts_tready\,
      I5 => cmd_error,
      O => \axi_dma.cmd_error_i_1_n_0\
    );
\axi_dma.cmd_error_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.cmd_error_i_1_n_0\,
      Q => cmd_error,
      R => reset
    );
\axi_dma.cmd_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFBBCF88"
    )
        port map (
      I0 => cmd_done,
      I1 => cmd_state(1),
      I2 => has_mig_size,
      I3 => cmd_state(0),
      I4 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \p_0_in__0\(0)
    );
\axi_dma.cmd_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => cmd_state(1),
      I1 => has_mig_size,
      I2 => cmd_state(0),
      O => \p_0_in__0\(1)
    );
\axi_dma.cmd_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => cmd_state(1),
      I1 => cmd_state(0),
      I2 => cmd_state(2),
      O => \axi_dma.cmd_state[2]_i_1_n_0\
    );
\axi_dma.cmd_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744000047770000"
    )
        port map (
      I0 => cmd_done,
      I1 => cmd_state(1),
      I2 => has_mig_size,
      I3 => cmd_state(0),
      I4 => cmd_state(2),
      I5 => \axi_dma.cmd_state[2]_i_3_n_0\,
      O => \p_0_in__0\(2)
    );
\axi_dma.cmd_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \axi_dma.cmd_state[2]_i_4_n_0\,
      I1 => mig_blocks(0),
      I2 => mig_blocks(2),
      I3 => mig_blocks(1),
      I4 => \axi_dma.cmd_state[2]_i_5_n_0\,
      I5 => \axi_dma.cmd_state[2]_i_6_n_0\,
      O => \axi_dma.cmd_state[2]_i_3_n_0\
    );
\axi_dma.cmd_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mig_blocks(5),
      I1 => mig_blocks(6),
      I2 => mig_blocks(3),
      I3 => mig_blocks(4),
      I4 => \axi_dma.cmd_state[2]_i_7_n_0\,
      O => \axi_dma.cmd_state[2]_i_4_n_0\
    );
\axi_dma.cmd_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mig_blocks(21),
      I1 => mig_blocks(22),
      I2 => mig_blocks(19),
      I3 => mig_blocks(20),
      I4 => \axi_dma.cmd_state[2]_i_8_n_0\,
      O => \axi_dma.cmd_state[2]_i_5_n_0\
    );
\axi_dma.cmd_state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mig_blocks(13),
      I1 => mig_blocks(14),
      I2 => mig_blocks(11),
      I3 => mig_blocks(12),
      I4 => \axi_dma.cmd_state[2]_i_9_n_0\,
      O => \axi_dma.cmd_state[2]_i_6_n_0\
    );
\axi_dma.cmd_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mig_blocks(8),
      I1 => mig_blocks(7),
      I2 => mig_blocks(10),
      I3 => mig_blocks(9),
      O => \axi_dma.cmd_state[2]_i_7_n_0\
    );
\axi_dma.cmd_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mig_blocks(24),
      I1 => mig_blocks(23),
      I2 => mig_blocks(26),
      I3 => mig_blocks(25),
      O => \axi_dma.cmd_state[2]_i_8_n_0\
    );
\axi_dma.cmd_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mig_blocks(16),
      I1 => mig_blocks(15),
      I2 => mig_blocks(18),
      I3 => mig_blocks(17),
      O => \axi_dma.cmd_state[2]_i_9_n_0\
    );
\axi_dma.cmd_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.cmd_state[2]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => cmd_state(0),
      R => reset
    );
\axi_dma.cmd_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.cmd_state[2]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => cmd_state(1),
      R => reset
    );
\axi_dma.cmd_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.cmd_state[2]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => cmd_state(2),
      R => reset
    );
\axi_dma.curr_beat[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_dma.curr_beat_reg\(0),
      O => \p_0_in__1\(0)
    );
\axi_dma.curr_beat[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => r5_cmd_empty,
      I1 => \axi_dma.dma_active_reg_n_0\,
      I2 => resetn,
      O => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^m_axi_tlast_out\,
      I1 => fifo_empty,
      I2 => \axi_dma.dma_active_reg_n_0\,
      I3 => M_AXI_TREADY_out,
      O => curr_beat
    );
\axi_dma.curr_beat_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(0),
      Q => \axi_dma.curr_beat_reg\(0),
      S => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(10),
      Q => \axi_dma.curr_beat_reg\(10),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(11),
      Q => \axi_dma.curr_beat_reg\(11),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(12),
      Q => \axi_dma.curr_beat_reg\(12),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(13),
      Q => \axi_dma.curr_beat_reg\(13),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[13]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.curr_beat_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_axi_dma.curr_beat_reg[13]_i_3_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \axi_dma.curr_beat_reg[13]_i_3_n_4\,
      CO(2) => \axi_dma.curr_beat_reg[13]_i_3_n_5\,
      CO(1) => \axi_dma.curr_beat_reg[13]_i_3_n_6\,
      CO(0) => \axi_dma.curr_beat_reg[13]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_axi_dma.curr_beat_reg[13]_i_3_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => \p_0_in__1\(13 downto 9),
      S(7 downto 5) => B"000",
      S(4 downto 0) => \axi_dma.curr_beat_reg\(13 downto 9)
    );
\axi_dma.curr_beat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(1),
      Q => \axi_dma.curr_beat_reg\(1),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(2),
      Q => \axi_dma.curr_beat_reg\(2),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(3),
      Q => \axi_dma.curr_beat_reg\(3),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(4),
      Q => \axi_dma.curr_beat_reg\(4),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(5),
      Q => \axi_dma.curr_beat_reg\(5),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(6),
      Q => \axi_dma.curr_beat_reg\(6),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(7),
      Q => \axi_dma.curr_beat_reg\(7),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(8),
      Q => \axi_dma.curr_beat_reg\(8),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.curr_beat_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.curr_beat_reg\(0),
      CI_TOP => '0',
      CO(7) => \axi_dma.curr_beat_reg[8]_i_1_n_0\,
      CO(6) => \axi_dma.curr_beat_reg[8]_i_1_n_1\,
      CO(5) => \axi_dma.curr_beat_reg[8]_i_1_n_2\,
      CO(4) => \axi_dma.curr_beat_reg[8]_i_1_n_3\,
      CO(3) => \axi_dma.curr_beat_reg[8]_i_1_n_4\,
      CO(2) => \axi_dma.curr_beat_reg[8]_i_1_n_5\,
      CO(1) => \axi_dma.curr_beat_reg[8]_i_1_n_6\,
      CO(0) => \axi_dma.curr_beat_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__1\(8 downto 1),
      S(7 downto 0) => \axi_dma.curr_beat_reg\(8 downto 1)
    );
\axi_dma.curr_beat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => curr_beat,
      D => \p_0_in__1\(9),
      Q => \axi_dma.curr_beat_reg\(9),
      R => \axi_dma.curr_beat[13]_i_1_n_0\
    );
\axi_dma.dma_active_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FF5555"
    )
        port map (
      I0 => r5_cmd_empty,
      I1 => \^m_axi_tlast_out\,
      I2 => fifo_empty,
      I3 => M_AXI_TREADY_out,
      I4 => \axi_dma.dma_active_reg_n_0\,
      O => \axi_dma.dma_active_i_1_n_0\
    );
\axi_dma.dma_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.dma_active_i_1_n_0\,
      Q => \axi_dma.dma_active_reg_n_0\,
      R => clear
    );
\axi_dma.fifo_chg_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => in_wr,
      Q => fifo_chg,
      R => '0'
    );
\axi_dma.fifo_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40BFBF40"
    )
        port map (
      I0 => fifo_empty,
      I1 => \axi_dma.dma_active_reg_n_0\,
      I2 => M_AXI_TREADY_out,
      I3 => in_wr,
      I4 => \axi_dma.fifo_count_reg\(0),
      O => \axi_dma.fifo_count[0]_i_1_n_0\
    );
\axi_dma.fifo_count[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => in_wr,
      I1 => M_AXI_TREADY_out,
      I2 => \axi_dma.dma_active_reg_n_0\,
      I3 => fifo_empty,
      O => \axi_dma.fifo_count[13]_i_1_n_0\
    );
\axi_dma.fifo_count[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(12),
      I1 => \axi_dma.fifo_count_reg\(13),
      O => \axi_dma.fifo_count[13]_i_3_n_0\
    );
\axi_dma.fifo_count[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(11),
      I1 => \axi_dma.fifo_count_reg\(12),
      O => \axi_dma.fifo_count[13]_i_4_n_0\
    );
\axi_dma.fifo_count[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(10),
      I1 => \axi_dma.fifo_count_reg\(11),
      O => \axi_dma.fifo_count[13]_i_5_n_0\
    );
\axi_dma.fifo_count[13]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(9),
      I1 => \axi_dma.fifo_count_reg\(10),
      O => \axi_dma.fifo_count[13]_i_6_n_0\
    );
\axi_dma.fifo_count[13]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(8),
      I1 => \axi_dma.fifo_count_reg\(9),
      O => \axi_dma.fifo_count[13]_i_7_n_0\
    );
\axi_dma.fifo_count[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(1),
      I1 => M_AXI_TREADY_out,
      I2 => \axi_dma.dma_active_reg_n_0\,
      I3 => fifo_empty,
      O => \axi_dma.fifo_count[8]_i_10_n_0\
    );
\axi_dma.fifo_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(1),
      O => \axi_dma.fifo_count[8]_i_2_n_0\
    );
\axi_dma.fifo_count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(7),
      I1 => \axi_dma.fifo_count_reg\(8),
      O => \axi_dma.fifo_count[8]_i_3_n_0\
    );
\axi_dma.fifo_count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(6),
      I1 => \axi_dma.fifo_count_reg\(7),
      O => \axi_dma.fifo_count[8]_i_4_n_0\
    );
\axi_dma.fifo_count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(5),
      I1 => \axi_dma.fifo_count_reg\(6),
      O => \axi_dma.fifo_count[8]_i_5_n_0\
    );
\axi_dma.fifo_count[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(4),
      I1 => \axi_dma.fifo_count_reg\(5),
      O => \axi_dma.fifo_count[8]_i_6_n_0\
    );
\axi_dma.fifo_count[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(3),
      I1 => \axi_dma.fifo_count_reg\(4),
      O => \axi_dma.fifo_count[8]_i_7_n_0\
    );
\axi_dma.fifo_count[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(2),
      I1 => \axi_dma.fifo_count_reg\(3),
      O => \axi_dma.fifo_count[8]_i_8_n_0\
    );
\axi_dma.fifo_count[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.fifo_count_reg\(1),
      I1 => \axi_dma.fifo_count_reg\(2),
      O => \axi_dma.fifo_count[8]_i_9_n_0\
    );
\axi_dma.fifo_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.fifo_count[0]_i_1_n_0\,
      Q => \axi_dma.fifo_count_reg\(0),
      R => clear
    );
\axi_dma.fifo_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(10),
      Q => \axi_dma.fifo_count_reg\(10),
      R => clear
    );
\axi_dma.fifo_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(11),
      Q => \axi_dma.fifo_count_reg\(11),
      R => clear
    );
\axi_dma.fifo_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(12),
      Q => \axi_dma.fifo_count_reg\(12),
      R => clear
    );
\axi_dma.fifo_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(13),
      Q => \axi_dma.fifo_count_reg\(13),
      R => clear
    );
\axi_dma.fifo_count_reg[13]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.fifo_count_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_axi_dma.fifo_count_reg[13]_i_2_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \axi_dma.fifo_count_reg[13]_i_2_n_4\,
      CO(2) => \axi_dma.fifo_count_reg[13]_i_2_n_5\,
      CO(1) => \axi_dma.fifo_count_reg[13]_i_2_n_6\,
      CO(0) => \axi_dma.fifo_count_reg[13]_i_2_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => \axi_dma.fifo_count_reg\(11 downto 8),
      O(7 downto 5) => \NLW_axi_dma.fifo_count_reg[13]_i_2_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => fifo_count(13 downto 9),
      S(7 downto 5) => B"000",
      S(4) => \axi_dma.fifo_count[13]_i_3_n_0\,
      S(3) => \axi_dma.fifo_count[13]_i_4_n_0\,
      S(2) => \axi_dma.fifo_count[13]_i_5_n_0\,
      S(1) => \axi_dma.fifo_count[13]_i_6_n_0\,
      S(0) => \axi_dma.fifo_count[13]_i_7_n_0\
    );
\axi_dma.fifo_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(1),
      Q => \axi_dma.fifo_count_reg\(1),
      R => clear
    );
\axi_dma.fifo_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(2),
      Q => \axi_dma.fifo_count_reg\(2),
      R => clear
    );
\axi_dma.fifo_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(3),
      Q => \axi_dma.fifo_count_reg\(3),
      R => clear
    );
\axi_dma.fifo_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(4),
      Q => \axi_dma.fifo_count_reg\(4),
      R => clear
    );
\axi_dma.fifo_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(5),
      Q => \axi_dma.fifo_count_reg\(5),
      R => clear
    );
\axi_dma.fifo_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(6),
      Q => \axi_dma.fifo_count_reg\(6),
      R => clear
    );
\axi_dma.fifo_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(7),
      Q => \axi_dma.fifo_count_reg\(7),
      R => clear
    );
\axi_dma.fifo_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(8),
      Q => \axi_dma.fifo_count_reg\(8),
      R => clear
    );
\axi_dma.fifo_count_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.fifo_count_reg\(0),
      CI_TOP => '0',
      CO(7) => \axi_dma.fifo_count_reg[8]_i_1_n_0\,
      CO(6) => \axi_dma.fifo_count_reg[8]_i_1_n_1\,
      CO(5) => \axi_dma.fifo_count_reg[8]_i_1_n_2\,
      CO(4) => \axi_dma.fifo_count_reg[8]_i_1_n_3\,
      CO(3) => \axi_dma.fifo_count_reg[8]_i_1_n_4\,
      CO(2) => \axi_dma.fifo_count_reg[8]_i_1_n_5\,
      CO(1) => \axi_dma.fifo_count_reg[8]_i_1_n_6\,
      CO(0) => \axi_dma.fifo_count_reg[8]_i_1_n_7\,
      DI(7 downto 1) => \axi_dma.fifo_count_reg\(7 downto 1),
      DI(0) => \axi_dma.fifo_count[8]_i_2_n_0\,
      O(7 downto 0) => fifo_count(8 downto 1),
      S(7) => \axi_dma.fifo_count[8]_i_3_n_0\,
      S(6) => \axi_dma.fifo_count[8]_i_4_n_0\,
      S(5) => \axi_dma.fifo_count[8]_i_5_n_0\,
      S(4) => \axi_dma.fifo_count[8]_i_6_n_0\,
      S(3) => \axi_dma.fifo_count[8]_i_7_n_0\,
      S(2) => \axi_dma.fifo_count[8]_i_8_n_0\,
      S(1) => \axi_dma.fifo_count[8]_i_9_n_0\,
      S(0) => \axi_dma.fifo_count[8]_i_10_n_0\
    );
\axi_dma.fifo_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.fifo_count[13]_i_1_n_0\,
      D => fifo_count(9),
      Q => \axi_dma.fifo_count_reg\(9),
      R => clear
    );
\axi_dma.fifo_size_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => '1',
      D => \axi_dma.avail_size[31]_i_1_n_0\,
      Q => fifo_size_rd,
      R => '0'
    );
\axi_dma.has_mig_size_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => M_AXI_TVALID_in,
      I1 => M_AXI_TDATA_in(79),
      I2 => has_mig_size,
      I3 => cmd_done,
      I4 => reset,
      O => \axi_dma.has_mig_size_i_1_n_0\
    );
\axi_dma.has_mig_size_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.has_mig_size_i_1_n_0\,
      Q => has_mig_size,
      R => '0'
    );
\axi_dma.in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(0),
      Q => in_data(0),
      R => '0'
    );
\axi_dma.in_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(100),
      Q => in_data(100),
      R => '0'
    );
\axi_dma.in_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(101),
      Q => in_data(101),
      R => '0'
    );
\axi_dma.in_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(102),
      Q => in_data(102),
      R => '0'
    );
\axi_dma.in_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(103),
      Q => in_data(103),
      R => '0'
    );
\axi_dma.in_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(104),
      Q => in_data(104),
      R => '0'
    );
\axi_dma.in_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(105),
      Q => in_data(105),
      R => '0'
    );
\axi_dma.in_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(106),
      Q => in_data(106),
      R => '0'
    );
\axi_dma.in_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(107),
      Q => in_data(107),
      R => '0'
    );
\axi_dma.in_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(108),
      Q => in_data(108),
      R => '0'
    );
\axi_dma.in_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(109),
      Q => in_data(109),
      R => '0'
    );
\axi_dma.in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(10),
      Q => in_data(10),
      R => '0'
    );
\axi_dma.in_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(110),
      Q => in_data(110),
      R => '0'
    );
\axi_dma.in_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(111),
      Q => in_data(111),
      R => '0'
    );
\axi_dma.in_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(112),
      Q => in_data(112),
      R => '0'
    );
\axi_dma.in_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(113),
      Q => in_data(113),
      R => '0'
    );
\axi_dma.in_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(114),
      Q => in_data(114),
      R => '0'
    );
\axi_dma.in_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(115),
      Q => in_data(115),
      R => '0'
    );
\axi_dma.in_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(116),
      Q => in_data(116),
      R => '0'
    );
\axi_dma.in_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(117),
      Q => in_data(117),
      R => '0'
    );
\axi_dma.in_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(118),
      Q => in_data(118),
      R => '0'
    );
\axi_dma.in_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(119),
      Q => in_data(119),
      R => '0'
    );
\axi_dma.in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(11),
      Q => in_data(11),
      R => '0'
    );
\axi_dma.in_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(120),
      Q => in_data(120),
      R => '0'
    );
\axi_dma.in_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(121),
      Q => in_data(121),
      R => '0'
    );
\axi_dma.in_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(122),
      Q => in_data(122),
      R => '0'
    );
\axi_dma.in_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(123),
      Q => in_data(123),
      R => '0'
    );
\axi_dma.in_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(124),
      Q => in_data(124),
      R => '0'
    );
\axi_dma.in_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(125),
      Q => in_data(125),
      R => '0'
    );
\axi_dma.in_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(126),
      Q => in_data(126),
      R => '0'
    );
\axi_dma.in_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(127),
      Q => in_data(127),
      R => '0'
    );
\axi_dma.in_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(128),
      Q => in_data(128),
      R => '0'
    );
\axi_dma.in_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(129),
      Q => in_data(129),
      R => '0'
    );
\axi_dma.in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(12),
      Q => in_data(12),
      R => '0'
    );
\axi_dma.in_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(130),
      Q => in_data(130),
      R => '0'
    );
\axi_dma.in_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(131),
      Q => in_data(131),
      R => '0'
    );
\axi_dma.in_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(132),
      Q => in_data(132),
      R => '0'
    );
\axi_dma.in_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(133),
      Q => in_data(133),
      R => '0'
    );
\axi_dma.in_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(134),
      Q => in_data(134),
      R => '0'
    );
\axi_dma.in_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(135),
      Q => in_data(135),
      R => '0'
    );
\axi_dma.in_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(136),
      Q => in_data(136),
      R => '0'
    );
\axi_dma.in_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(137),
      Q => in_data(137),
      R => '0'
    );
\axi_dma.in_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(138),
      Q => in_data(138),
      R => '0'
    );
\axi_dma.in_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(139),
      Q => in_data(139),
      R => '0'
    );
\axi_dma.in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(13),
      Q => in_data(13),
      R => '0'
    );
\axi_dma.in_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(140),
      Q => in_data(140),
      R => '0'
    );
\axi_dma.in_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(141),
      Q => in_data(141),
      R => '0'
    );
\axi_dma.in_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(142),
      Q => in_data(142),
      R => '0'
    );
\axi_dma.in_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(143),
      Q => in_data(143),
      R => '0'
    );
\axi_dma.in_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(144),
      Q => in_data(144),
      R => '0'
    );
\axi_dma.in_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(145),
      Q => in_data(145),
      R => '0'
    );
\axi_dma.in_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(146),
      Q => in_data(146),
      R => '0'
    );
\axi_dma.in_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(147),
      Q => in_data(147),
      R => '0'
    );
\axi_dma.in_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(148),
      Q => in_data(148),
      R => '0'
    );
\axi_dma.in_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(149),
      Q => in_data(149),
      R => '0'
    );
\axi_dma.in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(14),
      Q => in_data(14),
      R => '0'
    );
\axi_dma.in_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(150),
      Q => in_data(150),
      R => '0'
    );
\axi_dma.in_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(151),
      Q => in_data(151),
      R => '0'
    );
\axi_dma.in_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(152),
      Q => in_data(152),
      R => '0'
    );
\axi_dma.in_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(153),
      Q => in_data(153),
      R => '0'
    );
\axi_dma.in_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(154),
      Q => in_data(154),
      R => '0'
    );
\axi_dma.in_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(155),
      Q => in_data(155),
      R => '0'
    );
\axi_dma.in_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(156),
      Q => in_data(156),
      R => '0'
    );
\axi_dma.in_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(157),
      Q => in_data(157),
      R => '0'
    );
\axi_dma.in_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(158),
      Q => in_data(158),
      R => '0'
    );
\axi_dma.in_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(159),
      Q => in_data(159),
      R => '0'
    );
\axi_dma.in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(15),
      Q => in_data(15),
      R => '0'
    );
\axi_dma.in_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(160),
      Q => in_data(160),
      R => '0'
    );
\axi_dma.in_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(161),
      Q => in_data(161),
      R => '0'
    );
\axi_dma.in_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(162),
      Q => in_data(162),
      R => '0'
    );
\axi_dma.in_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(163),
      Q => in_data(163),
      R => '0'
    );
\axi_dma.in_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(164),
      Q => in_data(164),
      R => '0'
    );
\axi_dma.in_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(165),
      Q => in_data(165),
      R => '0'
    );
\axi_dma.in_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(166),
      Q => in_data(166),
      R => '0'
    );
\axi_dma.in_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(167),
      Q => in_data(167),
      R => '0'
    );
\axi_dma.in_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(168),
      Q => in_data(168),
      R => '0'
    );
\axi_dma.in_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(169),
      Q => in_data(169),
      R => '0'
    );
\axi_dma.in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(16),
      Q => in_data(16),
      R => '0'
    );
\axi_dma.in_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(170),
      Q => in_data(170),
      R => '0'
    );
\axi_dma.in_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(171),
      Q => in_data(171),
      R => '0'
    );
\axi_dma.in_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(172),
      Q => in_data(172),
      R => '0'
    );
\axi_dma.in_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(173),
      Q => in_data(173),
      R => '0'
    );
\axi_dma.in_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(174),
      Q => in_data(174),
      R => '0'
    );
\axi_dma.in_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(175),
      Q => in_data(175),
      R => '0'
    );
\axi_dma.in_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(176),
      Q => in_data(176),
      R => '0'
    );
\axi_dma.in_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(177),
      Q => in_data(177),
      R => '0'
    );
\axi_dma.in_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(178),
      Q => in_data(178),
      R => '0'
    );
\axi_dma.in_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(179),
      Q => in_data(179),
      R => '0'
    );
\axi_dma.in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(17),
      Q => in_data(17),
      R => '0'
    );
\axi_dma.in_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(180),
      Q => in_data(180),
      R => '0'
    );
\axi_dma.in_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(181),
      Q => in_data(181),
      R => '0'
    );
\axi_dma.in_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(182),
      Q => in_data(182),
      R => '0'
    );
\axi_dma.in_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(183),
      Q => in_data(183),
      R => '0'
    );
\axi_dma.in_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(184),
      Q => in_data(184),
      R => '0'
    );
\axi_dma.in_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(185),
      Q => in_data(185),
      R => '0'
    );
\axi_dma.in_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(186),
      Q => in_data(186),
      R => '0'
    );
\axi_dma.in_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(187),
      Q => in_data(187),
      R => '0'
    );
\axi_dma.in_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(188),
      Q => in_data(188),
      R => '0'
    );
\axi_dma.in_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(189),
      Q => in_data(189),
      R => '0'
    );
\axi_dma.in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(18),
      Q => in_data(18),
      R => '0'
    );
\axi_dma.in_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(190),
      Q => in_data(190),
      R => '0'
    );
\axi_dma.in_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(191),
      Q => in_data(191),
      R => '0'
    );
\axi_dma.in_data_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(192),
      Q => in_data(192),
      R => '0'
    );
\axi_dma.in_data_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(193),
      Q => in_data(193),
      R => '0'
    );
\axi_dma.in_data_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(194),
      Q => in_data(194),
      R => '0'
    );
\axi_dma.in_data_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(195),
      Q => in_data(195),
      R => '0'
    );
\axi_dma.in_data_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(196),
      Q => in_data(196),
      R => '0'
    );
\axi_dma.in_data_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(197),
      Q => in_data(197),
      R => '0'
    );
\axi_dma.in_data_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(198),
      Q => in_data(198),
      R => '0'
    );
\axi_dma.in_data_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(199),
      Q => in_data(199),
      R => '0'
    );
\axi_dma.in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(19),
      Q => in_data(19),
      R => '0'
    );
\axi_dma.in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(1),
      Q => in_data(1),
      R => '0'
    );
\axi_dma.in_data_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(200),
      Q => in_data(200),
      R => '0'
    );
\axi_dma.in_data_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(201),
      Q => in_data(201),
      R => '0'
    );
\axi_dma.in_data_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(202),
      Q => in_data(202),
      R => '0'
    );
\axi_dma.in_data_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(203),
      Q => in_data(203),
      R => '0'
    );
\axi_dma.in_data_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(204),
      Q => in_data(204),
      R => '0'
    );
\axi_dma.in_data_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(205),
      Q => in_data(205),
      R => '0'
    );
\axi_dma.in_data_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(206),
      Q => in_data(206),
      R => '0'
    );
\axi_dma.in_data_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(207),
      Q => in_data(207),
      R => '0'
    );
\axi_dma.in_data_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(208),
      Q => in_data(208),
      R => '0'
    );
\axi_dma.in_data_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(209),
      Q => in_data(209),
      R => '0'
    );
\axi_dma.in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(20),
      Q => in_data(20),
      R => '0'
    );
\axi_dma.in_data_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(210),
      Q => in_data(210),
      R => '0'
    );
\axi_dma.in_data_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(211),
      Q => in_data(211),
      R => '0'
    );
\axi_dma.in_data_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(212),
      Q => in_data(212),
      R => '0'
    );
\axi_dma.in_data_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(213),
      Q => in_data(213),
      R => '0'
    );
\axi_dma.in_data_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(214),
      Q => in_data(214),
      R => '0'
    );
\axi_dma.in_data_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(215),
      Q => in_data(215),
      R => '0'
    );
\axi_dma.in_data_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(216),
      Q => in_data(216),
      R => '0'
    );
\axi_dma.in_data_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(217),
      Q => in_data(217),
      R => '0'
    );
\axi_dma.in_data_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(218),
      Q => in_data(218),
      R => '0'
    );
\axi_dma.in_data_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(219),
      Q => in_data(219),
      R => '0'
    );
\axi_dma.in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(21),
      Q => in_data(21),
      R => '0'
    );
\axi_dma.in_data_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(220),
      Q => in_data(220),
      R => '0'
    );
\axi_dma.in_data_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(221),
      Q => in_data(221),
      R => '0'
    );
\axi_dma.in_data_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(222),
      Q => in_data(222),
      R => '0'
    );
\axi_dma.in_data_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(223),
      Q => in_data(223),
      R => '0'
    );
\axi_dma.in_data_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(224),
      Q => in_data(224),
      R => '0'
    );
\axi_dma.in_data_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(225),
      Q => in_data(225),
      R => '0'
    );
\axi_dma.in_data_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(226),
      Q => in_data(226),
      R => '0'
    );
\axi_dma.in_data_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(227),
      Q => in_data(227),
      R => '0'
    );
\axi_dma.in_data_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(228),
      Q => in_data(228),
      R => '0'
    );
\axi_dma.in_data_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(229),
      Q => in_data(229),
      R => '0'
    );
\axi_dma.in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(22),
      Q => in_data(22),
      R => '0'
    );
\axi_dma.in_data_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(230),
      Q => in_data(230),
      R => '0'
    );
\axi_dma.in_data_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(231),
      Q => in_data(231),
      R => '0'
    );
\axi_dma.in_data_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(232),
      Q => in_data(232),
      R => '0'
    );
\axi_dma.in_data_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(233),
      Q => in_data(233),
      R => '0'
    );
\axi_dma.in_data_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(234),
      Q => in_data(234),
      R => '0'
    );
\axi_dma.in_data_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(235),
      Q => in_data(235),
      R => '0'
    );
\axi_dma.in_data_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(236),
      Q => in_data(236),
      R => '0'
    );
\axi_dma.in_data_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(237),
      Q => in_data(237),
      R => '0'
    );
\axi_dma.in_data_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(238),
      Q => in_data(238),
      R => '0'
    );
\axi_dma.in_data_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(239),
      Q => in_data(239),
      R => '0'
    );
\axi_dma.in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(23),
      Q => in_data(23),
      R => '0'
    );
\axi_dma.in_data_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(240),
      Q => in_data(240),
      R => '0'
    );
\axi_dma.in_data_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(241),
      Q => in_data(241),
      R => '0'
    );
\axi_dma.in_data_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(242),
      Q => in_data(242),
      R => '0'
    );
\axi_dma.in_data_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(243),
      Q => in_data(243),
      R => '0'
    );
\axi_dma.in_data_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(244),
      Q => in_data(244),
      R => '0'
    );
\axi_dma.in_data_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(245),
      Q => in_data(245),
      R => '0'
    );
\axi_dma.in_data_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(246),
      Q => in_data(246),
      R => '0'
    );
\axi_dma.in_data_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(247),
      Q => in_data(247),
      R => '0'
    );
\axi_dma.in_data_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(248),
      Q => in_data(248),
      R => '0'
    );
\axi_dma.in_data_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(249),
      Q => in_data(249),
      R => '0'
    );
\axi_dma.in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(24),
      Q => in_data(24),
      R => '0'
    );
\axi_dma.in_data_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(250),
      Q => in_data(250),
      R => '0'
    );
\axi_dma.in_data_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(251),
      Q => in_data(251),
      R => '0'
    );
\axi_dma.in_data_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(252),
      Q => in_data(252),
      R => '0'
    );
\axi_dma.in_data_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(253),
      Q => in_data(253),
      R => '0'
    );
\axi_dma.in_data_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(254),
      Q => in_data(254),
      R => '0'
    );
\axi_dma.in_data_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(255),
      Q => in_data(255),
      R => '0'
    );
\axi_dma.in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(25),
      Q => in_data(25),
      R => '0'
    );
\axi_dma.in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(26),
      Q => in_data(26),
      R => '0'
    );
\axi_dma.in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(27),
      Q => in_data(27),
      R => '0'
    );
\axi_dma.in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(28),
      Q => in_data(28),
      R => '0'
    );
\axi_dma.in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(29),
      Q => in_data(29),
      R => '0'
    );
\axi_dma.in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(2),
      Q => in_data(2),
      R => '0'
    );
\axi_dma.in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(30),
      Q => in_data(30),
      R => '0'
    );
\axi_dma.in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(31),
      Q => in_data(31),
      R => '0'
    );
\axi_dma.in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(32),
      Q => in_data(32),
      R => '0'
    );
\axi_dma.in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(33),
      Q => in_data(33),
      R => '0'
    );
\axi_dma.in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(34),
      Q => in_data(34),
      R => '0'
    );
\axi_dma.in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(35),
      Q => in_data(35),
      R => '0'
    );
\axi_dma.in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(36),
      Q => in_data(36),
      R => '0'
    );
\axi_dma.in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(37),
      Q => in_data(37),
      R => '0'
    );
\axi_dma.in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(38),
      Q => in_data(38),
      R => '0'
    );
\axi_dma.in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(39),
      Q => in_data(39),
      R => '0'
    );
\axi_dma.in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(3),
      Q => in_data(3),
      R => '0'
    );
\axi_dma.in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(40),
      Q => in_data(40),
      R => '0'
    );
\axi_dma.in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(41),
      Q => in_data(41),
      R => '0'
    );
\axi_dma.in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(42),
      Q => in_data(42),
      R => '0'
    );
\axi_dma.in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(43),
      Q => in_data(43),
      R => '0'
    );
\axi_dma.in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(44),
      Q => in_data(44),
      R => '0'
    );
\axi_dma.in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(45),
      Q => in_data(45),
      R => '0'
    );
\axi_dma.in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(46),
      Q => in_data(46),
      R => '0'
    );
\axi_dma.in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(47),
      Q => in_data(47),
      R => '0'
    );
\axi_dma.in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(48),
      Q => in_data(48),
      R => '0'
    );
\axi_dma.in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(49),
      Q => in_data(49),
      R => '0'
    );
\axi_dma.in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(4),
      Q => in_data(4),
      R => '0'
    );
\axi_dma.in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(50),
      Q => in_data(50),
      R => '0'
    );
\axi_dma.in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(51),
      Q => in_data(51),
      R => '0'
    );
\axi_dma.in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(52),
      Q => in_data(52),
      R => '0'
    );
\axi_dma.in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(53),
      Q => in_data(53),
      R => '0'
    );
\axi_dma.in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(54),
      Q => in_data(54),
      R => '0'
    );
\axi_dma.in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(55),
      Q => in_data(55),
      R => '0'
    );
\axi_dma.in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(56),
      Q => in_data(56),
      R => '0'
    );
\axi_dma.in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(57),
      Q => in_data(57),
      R => '0'
    );
\axi_dma.in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(58),
      Q => in_data(58),
      R => '0'
    );
\axi_dma.in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(59),
      Q => in_data(59),
      R => '0'
    );
\axi_dma.in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(5),
      Q => in_data(5),
      R => '0'
    );
\axi_dma.in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(60),
      Q => in_data(60),
      R => '0'
    );
\axi_dma.in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(61),
      Q => in_data(61),
      R => '0'
    );
\axi_dma.in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(62),
      Q => in_data(62),
      R => '0'
    );
\axi_dma.in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(63),
      Q => in_data(63),
      R => '0'
    );
\axi_dma.in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(64),
      Q => in_data(64),
      R => '0'
    );
\axi_dma.in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(65),
      Q => in_data(65),
      R => '0'
    );
\axi_dma.in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(66),
      Q => in_data(66),
      R => '0'
    );
\axi_dma.in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(67),
      Q => in_data(67),
      R => '0'
    );
\axi_dma.in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(68),
      Q => in_data(68),
      R => '0'
    );
\axi_dma.in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(69),
      Q => in_data(69),
      R => '0'
    );
\axi_dma.in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(6),
      Q => in_data(6),
      R => '0'
    );
\axi_dma.in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(70),
      Q => in_data(70),
      R => '0'
    );
\axi_dma.in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(71),
      Q => in_data(71),
      R => '0'
    );
\axi_dma.in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(72),
      Q => in_data(72),
      R => '0'
    );
\axi_dma.in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(73),
      Q => in_data(73),
      R => '0'
    );
\axi_dma.in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(74),
      Q => in_data(74),
      R => '0'
    );
\axi_dma.in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(75),
      Q => in_data(75),
      R => '0'
    );
\axi_dma.in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(76),
      Q => in_data(76),
      R => '0'
    );
\axi_dma.in_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(77),
      Q => in_data(77),
      R => '0'
    );
\axi_dma.in_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(78),
      Q => in_data(78),
      R => '0'
    );
\axi_dma.in_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(79),
      Q => in_data(79),
      R => '0'
    );
\axi_dma.in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(7),
      Q => in_data(7),
      R => '0'
    );
\axi_dma.in_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(80),
      Q => in_data(80),
      R => '0'
    );
\axi_dma.in_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(81),
      Q => in_data(81),
      R => '0'
    );
\axi_dma.in_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(82),
      Q => in_data(82),
      R => '0'
    );
\axi_dma.in_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(83),
      Q => in_data(83),
      R => '0'
    );
\axi_dma.in_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(84),
      Q => in_data(84),
      R => '0'
    );
\axi_dma.in_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(85),
      Q => in_data(85),
      R => '0'
    );
\axi_dma.in_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(86),
      Q => in_data(86),
      R => '0'
    );
\axi_dma.in_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(87),
      Q => in_data(87),
      R => '0'
    );
\axi_dma.in_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(88),
      Q => in_data(88),
      R => '0'
    );
\axi_dma.in_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(89),
      Q => in_data(89),
      R => '0'
    );
\axi_dma.in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(8),
      Q => in_data(8),
      R => '0'
    );
\axi_dma.in_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(90),
      Q => in_data(90),
      R => '0'
    );
\axi_dma.in_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(91),
      Q => in_data(91),
      R => '0'
    );
\axi_dma.in_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(92),
      Q => in_data(92),
      R => '0'
    );
\axi_dma.in_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(93),
      Q => in_data(93),
      R => '0'
    );
\axi_dma.in_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(94),
      Q => in_data(94),
      R => '0'
    );
\axi_dma.in_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(95),
      Q => in_data(95),
      R => '0'
    );
\axi_dma.in_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(96),
      Q => in_data(96),
      R => '0'
    );
\axi_dma.in_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(97),
      Q => in_data(97),
      R => '0'
    );
\axi_dma.in_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(98),
      Q => in_data(98),
      R => '0'
    );
\axi_dma.in_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(99),
      Q => in_data(99),
      R => '0'
    );
\axi_dma.in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_TVALID_in,
      D => M_AXI_TDATA_in(9),
      Q => in_data(9),
      R => '0'
    );
\axi_dma.in_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_TVALID_in,
      Q => in_wr,
      R => '0'
    );
\axi_dma.last_beat[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(0),
      O => last_beat0(0)
    );
\axi_dma.last_beat[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => resetn,
      I1 => r5_cmd_empty,
      I2 => \axi_dma.dma_active_reg_n_0\,
      O => last_beat
    );
\axi_dma.last_beat[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(13),
      O => \axi_dma.last_beat[13]_i_3_n_0\
    );
\axi_dma.last_beat[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(12),
      O => \axi_dma.last_beat[13]_i_4_n_0\
    );
\axi_dma.last_beat[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(11),
      O => \axi_dma.last_beat[13]_i_5_n_0\
    );
\axi_dma.last_beat[13]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(10),
      O => \axi_dma.last_beat[13]_i_6_n_0\
    );
\axi_dma.last_beat[13]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(9),
      O => \axi_dma.last_beat[13]_i_7_n_0\
    );
\axi_dma.last_beat[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(8),
      O => \axi_dma.last_beat[8]_i_2_n_0\
    );
\axi_dma.last_beat[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(7),
      O => \axi_dma.last_beat[8]_i_3_n_0\
    );
\axi_dma.last_beat[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(6),
      O => \axi_dma.last_beat[8]_i_4_n_0\
    );
\axi_dma.last_beat[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(5),
      O => \axi_dma.last_beat[8]_i_5_n_0\
    );
\axi_dma.last_beat[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(4),
      O => \axi_dma.last_beat[8]_i_6_n_0\
    );
\axi_dma.last_beat[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(3),
      O => \axi_dma.last_beat[8]_i_7_n_0\
    );
\axi_dma.last_beat[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(2),
      O => \axi_dma.last_beat[8]_i_8_n_0\
    );
\axi_dma.last_beat[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r5_cmd_data(1),
      O => \axi_dma.last_beat[8]_i_9_n_0\
    );
\axi_dma.last_beat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(0),
      Q => \axi_dma.last_beat_reg_n_0_[0]\,
      R => '0'
    );
\axi_dma.last_beat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(10),
      Q => \axi_dma.last_beat_reg_n_0_[10]\,
      R => '0'
    );
\axi_dma.last_beat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(11),
      Q => \axi_dma.last_beat_reg_n_0_[11]\,
      R => '0'
    );
\axi_dma.last_beat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(12),
      Q => \axi_dma.last_beat_reg_n_0_[12]\,
      R => '0'
    );
\axi_dma.last_beat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(13),
      Q => \axi_dma.last_beat_reg_n_0_[13]\,
      R => '0'
    );
\axi_dma.last_beat_reg[13]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.last_beat_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_axi_dma.last_beat_reg[13]_i_2_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \axi_dma.last_beat_reg[13]_i_2_n_4\,
      CO(2) => \axi_dma.last_beat_reg[13]_i_2_n_5\,
      CO(1) => \axi_dma.last_beat_reg[13]_i_2_n_6\,
      CO(0) => \axi_dma.last_beat_reg[13]_i_2_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => r5_cmd_data(12 downto 9),
      O(7 downto 5) => \NLW_axi_dma.last_beat_reg[13]_i_2_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => last_beat0(13 downto 9),
      S(7 downto 5) => B"000",
      S(4) => \axi_dma.last_beat[13]_i_3_n_0\,
      S(3) => \axi_dma.last_beat[13]_i_4_n_0\,
      S(2) => \axi_dma.last_beat[13]_i_5_n_0\,
      S(1) => \axi_dma.last_beat[13]_i_6_n_0\,
      S(0) => \axi_dma.last_beat[13]_i_7_n_0\
    );
\axi_dma.last_beat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(1),
      Q => \axi_dma.last_beat_reg_n_0_[1]\,
      R => '0'
    );
\axi_dma.last_beat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(2),
      Q => \axi_dma.last_beat_reg_n_0_[2]\,
      R => '0'
    );
\axi_dma.last_beat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(3),
      Q => \axi_dma.last_beat_reg_n_0_[3]\,
      R => '0'
    );
\axi_dma.last_beat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(4),
      Q => \axi_dma.last_beat_reg_n_0_[4]\,
      R => '0'
    );
\axi_dma.last_beat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(5),
      Q => \axi_dma.last_beat_reg_n_0_[5]\,
      R => '0'
    );
\axi_dma.last_beat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(6),
      Q => \axi_dma.last_beat_reg_n_0_[6]\,
      R => '0'
    );
\axi_dma.last_beat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(7),
      Q => \axi_dma.last_beat_reg_n_0_[7]\,
      R => '0'
    );
\axi_dma.last_beat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(8),
      Q => \axi_dma.last_beat_reg_n_0_[8]\,
      R => '0'
    );
\axi_dma.last_beat_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => r5_cmd_data(0),
      CI_TOP => '0',
      CO(7) => \axi_dma.last_beat_reg[8]_i_1_n_0\,
      CO(6) => \axi_dma.last_beat_reg[8]_i_1_n_1\,
      CO(5) => \axi_dma.last_beat_reg[8]_i_1_n_2\,
      CO(4) => \axi_dma.last_beat_reg[8]_i_1_n_3\,
      CO(3) => \axi_dma.last_beat_reg[8]_i_1_n_4\,
      CO(2) => \axi_dma.last_beat_reg[8]_i_1_n_5\,
      CO(1) => \axi_dma.last_beat_reg[8]_i_1_n_6\,
      CO(0) => \axi_dma.last_beat_reg[8]_i_1_n_7\,
      DI(7 downto 0) => r5_cmd_data(8 downto 1),
      O(7 downto 0) => last_beat0(8 downto 1),
      S(7) => \axi_dma.last_beat[8]_i_2_n_0\,
      S(6) => \axi_dma.last_beat[8]_i_3_n_0\,
      S(5) => \axi_dma.last_beat[8]_i_4_n_0\,
      S(4) => \axi_dma.last_beat[8]_i_5_n_0\,
      S(3) => \axi_dma.last_beat[8]_i_6_n_0\,
      S(2) => \axi_dma.last_beat[8]_i_7_n_0\,
      S(1) => \axi_dma.last_beat[8]_i_8_n_0\,
      S(0) => \axi_dma.last_beat[8]_i_9_n_0\
    );
\axi_dma.last_beat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => last_beat,
      D => last_beat0(9),
      Q => \axi_dma.last_beat_reg_n_0_[9]\,
      R => '0'
    );
\axi_dma.mig_blocks[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(15),
      I1 => adr(15),
      O => \axi_dma.mig_blocks[15]_i_2_n_0\
    );
\axi_dma.mig_blocks[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(14),
      I1 => adr(14),
      O => \axi_dma.mig_blocks[15]_i_3_n_0\
    );
\axi_dma.mig_blocks[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(13),
      I1 => adr(13),
      O => \axi_dma.mig_blocks[15]_i_4_n_0\
    );
\axi_dma.mig_blocks[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(12),
      I1 => adr(12),
      O => \axi_dma.mig_blocks[15]_i_5_n_0\
    );
\axi_dma.mig_blocks[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(11),
      I1 => adr(11),
      O => \axi_dma.mig_blocks[15]_i_6_n_0\
    );
\axi_dma.mig_blocks[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(10),
      I1 => adr(10),
      O => \axi_dma.mig_blocks[15]_i_7_n_0\
    );
\axi_dma.mig_blocks[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(9),
      I1 => adr(9),
      O => \axi_dma.mig_blocks[15]_i_8_n_0\
    );
\axi_dma.mig_blocks[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(8),
      I1 => adr(8),
      O => \axi_dma.mig_blocks[15]_i_9_n_0\
    );
\axi_dma.mig_blocks[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(23),
      I1 => adr(23),
      O => \axi_dma.mig_blocks[23]_i_2_n_0\
    );
\axi_dma.mig_blocks[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(22),
      I1 => adr(22),
      O => \axi_dma.mig_blocks[23]_i_3_n_0\
    );
\axi_dma.mig_blocks[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(21),
      I1 => adr(21),
      O => \axi_dma.mig_blocks[23]_i_4_n_0\
    );
\axi_dma.mig_blocks[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(20),
      I1 => adr(20),
      O => \axi_dma.mig_blocks[23]_i_5_n_0\
    );
\axi_dma.mig_blocks[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(19),
      I1 => adr(19),
      O => \axi_dma.mig_blocks[23]_i_6_n_0\
    );
\axi_dma.mig_blocks[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(18),
      I1 => adr(18),
      O => \axi_dma.mig_blocks[23]_i_7_n_0\
    );
\axi_dma.mig_blocks[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(17),
      I1 => adr(17),
      O => \axi_dma.mig_blocks[23]_i_8_n_0\
    );
\axi_dma.mig_blocks[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(16),
      I1 => adr(16),
      O => \axi_dma.mig_blocks[23]_i_9_n_0\
    );
\axi_dma.mig_blocks[26]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(26),
      I1 => adr(26),
      O => \axi_dma.mig_blocks[26]_i_2_n_0\
    );
\axi_dma.mig_blocks[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(25),
      I1 => adr(25),
      O => \axi_dma.mig_blocks[26]_i_3_n_0\
    );
\axi_dma.mig_blocks[26]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(24),
      I1 => adr(24),
      O => \axi_dma.mig_blocks[26]_i_4_n_0\
    );
\axi_dma.mig_blocks[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(7),
      I1 => adr(7),
      O => \axi_dma.mig_blocks[7]_i_2_n_0\
    );
\axi_dma.mig_blocks[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(6),
      I1 => adr(6),
      O => \axi_dma.mig_blocks[7]_i_3_n_0\
    );
\axi_dma.mig_blocks[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(5),
      I1 => adr(5),
      O => \axi_dma.mig_blocks[7]_i_4_n_0\
    );
\axi_dma.mig_blocks[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(4),
      I1 => adr(4),
      O => \axi_dma.mig_blocks[7]_i_5_n_0\
    );
\axi_dma.mig_blocks[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(3),
      I1 => adr(3),
      O => \axi_dma.mig_blocks[7]_i_6_n_0\
    );
\axi_dma.mig_blocks[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(2),
      I1 => adr(2),
      O => \axi_dma.mig_blocks[7]_i_7_n_0\
    );
\axi_dma.mig_blocks[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(1),
      I1 => adr(1),
      O => \axi_dma.mig_blocks[7]_i_8_n_0\
    );
\axi_dma.mig_blocks[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr(0),
      I1 => adr(0),
      O => \axi_dma.mig_blocks[7]_i_9_n_0\
    );
\axi_dma.mig_blocks_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(0),
      Q => mig_blocks(0),
      R => '0'
    );
\axi_dma.mig_blocks_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(10),
      Q => mig_blocks(10),
      R => '0'
    );
\axi_dma.mig_blocks_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(11),
      Q => mig_blocks(11),
      R => '0'
    );
\axi_dma.mig_blocks_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(12),
      Q => mig_blocks(12),
      R => '0'
    );
\axi_dma.mig_blocks_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(13),
      Q => mig_blocks(13),
      R => '0'
    );
\axi_dma.mig_blocks_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(14),
      Q => mig_blocks(14),
      R => '0'
    );
\axi_dma.mig_blocks_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(15),
      Q => mig_blocks(15),
      R => '0'
    );
\axi_dma.mig_blocks_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.mig_blocks_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_dma.mig_blocks_reg[15]_i_1_n_0\,
      CO(6) => \axi_dma.mig_blocks_reg[15]_i_1_n_1\,
      CO(5) => \axi_dma.mig_blocks_reg[15]_i_1_n_2\,
      CO(4) => \axi_dma.mig_blocks_reg[15]_i_1_n_3\,
      CO(3) => \axi_dma.mig_blocks_reg[15]_i_1_n_4\,
      CO(2) => \axi_dma.mig_blocks_reg[15]_i_1_n_5\,
      CO(1) => \axi_dma.mig_blocks_reg[15]_i_1_n_6\,
      CO(0) => \axi_dma.mig_blocks_reg[15]_i_1_n_7\,
      DI(7 downto 0) => wr_ptr(15 downto 8),
      O(7 downto 0) => \axi_dma.mig_blocks_reg0\(15 downto 8),
      S(7) => \axi_dma.mig_blocks[15]_i_2_n_0\,
      S(6) => \axi_dma.mig_blocks[15]_i_3_n_0\,
      S(5) => \axi_dma.mig_blocks[15]_i_4_n_0\,
      S(4) => \axi_dma.mig_blocks[15]_i_5_n_0\,
      S(3) => \axi_dma.mig_blocks[15]_i_6_n_0\,
      S(2) => \axi_dma.mig_blocks[15]_i_7_n_0\,
      S(1) => \axi_dma.mig_blocks[15]_i_8_n_0\,
      S(0) => \axi_dma.mig_blocks[15]_i_9_n_0\
    );
\axi_dma.mig_blocks_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(16),
      Q => mig_blocks(16),
      R => '0'
    );
\axi_dma.mig_blocks_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(17),
      Q => mig_blocks(17),
      R => '0'
    );
\axi_dma.mig_blocks_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(18),
      Q => mig_blocks(18),
      R => '0'
    );
\axi_dma.mig_blocks_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(19),
      Q => mig_blocks(19),
      R => '0'
    );
\axi_dma.mig_blocks_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(1),
      Q => mig_blocks(1),
      R => '0'
    );
\axi_dma.mig_blocks_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(20),
      Q => mig_blocks(20),
      R => '0'
    );
\axi_dma.mig_blocks_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(21),
      Q => mig_blocks(21),
      R => '0'
    );
\axi_dma.mig_blocks_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(22),
      Q => mig_blocks(22),
      R => '0'
    );
\axi_dma.mig_blocks_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(23),
      Q => mig_blocks(23),
      R => '0'
    );
\axi_dma.mig_blocks_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.mig_blocks_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_dma.mig_blocks_reg[23]_i_1_n_0\,
      CO(6) => \axi_dma.mig_blocks_reg[23]_i_1_n_1\,
      CO(5) => \axi_dma.mig_blocks_reg[23]_i_1_n_2\,
      CO(4) => \axi_dma.mig_blocks_reg[23]_i_1_n_3\,
      CO(3) => \axi_dma.mig_blocks_reg[23]_i_1_n_4\,
      CO(2) => \axi_dma.mig_blocks_reg[23]_i_1_n_5\,
      CO(1) => \axi_dma.mig_blocks_reg[23]_i_1_n_6\,
      CO(0) => \axi_dma.mig_blocks_reg[23]_i_1_n_7\,
      DI(7 downto 0) => wr_ptr(23 downto 16),
      O(7 downto 0) => \axi_dma.mig_blocks_reg0\(23 downto 16),
      S(7) => \axi_dma.mig_blocks[23]_i_2_n_0\,
      S(6) => \axi_dma.mig_blocks[23]_i_3_n_0\,
      S(5) => \axi_dma.mig_blocks[23]_i_4_n_0\,
      S(4) => \axi_dma.mig_blocks[23]_i_5_n_0\,
      S(3) => \axi_dma.mig_blocks[23]_i_6_n_0\,
      S(2) => \axi_dma.mig_blocks[23]_i_7_n_0\,
      S(1) => \axi_dma.mig_blocks[23]_i_8_n_0\,
      S(0) => \axi_dma.mig_blocks[23]_i_9_n_0\
    );
\axi_dma.mig_blocks_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(24),
      Q => mig_blocks(24),
      R => '0'
    );
\axi_dma.mig_blocks_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(25),
      Q => mig_blocks(25),
      R => '0'
    );
\axi_dma.mig_blocks_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(26),
      Q => mig_blocks(26),
      R => '0'
    );
\axi_dma.mig_blocks_reg[26]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_dma.mig_blocks_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_axi_dma.mig_blocks_reg[26]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \axi_dma.mig_blocks_reg[26]_i_1_n_6\,
      CO(0) => \axi_dma.mig_blocks_reg[26]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => wr_ptr(25 downto 24),
      O(7 downto 3) => \NLW_axi_dma.mig_blocks_reg[26]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \axi_dma.mig_blocks_reg0\(26 downto 24),
      S(7 downto 3) => B"00000",
      S(2) => \axi_dma.mig_blocks[26]_i_2_n_0\,
      S(1) => \axi_dma.mig_blocks[26]_i_3_n_0\,
      S(0) => \axi_dma.mig_blocks[26]_i_4_n_0\
    );
\axi_dma.mig_blocks_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(2),
      Q => mig_blocks(2),
      R => '0'
    );
\axi_dma.mig_blocks_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(3),
      Q => mig_blocks(3),
      R => '0'
    );
\axi_dma.mig_blocks_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(4),
      Q => mig_blocks(4),
      R => '0'
    );
\axi_dma.mig_blocks_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(5),
      Q => mig_blocks(5),
      R => '0'
    );
\axi_dma.mig_blocks_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(6),
      Q => mig_blocks(6),
      R => '0'
    );
\axi_dma.mig_blocks_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(7),
      Q => mig_blocks(7),
      R => '0'
    );
\axi_dma.mig_blocks_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \axi_dma.mig_blocks_reg[7]_i_1_n_0\,
      CO(6) => \axi_dma.mig_blocks_reg[7]_i_1_n_1\,
      CO(5) => \axi_dma.mig_blocks_reg[7]_i_1_n_2\,
      CO(4) => \axi_dma.mig_blocks_reg[7]_i_1_n_3\,
      CO(3) => \axi_dma.mig_blocks_reg[7]_i_1_n_4\,
      CO(2) => \axi_dma.mig_blocks_reg[7]_i_1_n_5\,
      CO(1) => \axi_dma.mig_blocks_reg[7]_i_1_n_6\,
      CO(0) => \axi_dma.mig_blocks_reg[7]_i_1_n_7\,
      DI(7 downto 0) => wr_ptr(7 downto 0),
      O(7 downto 0) => \axi_dma.mig_blocks_reg0\(7 downto 0),
      S(7) => \axi_dma.mig_blocks[7]_i_2_n_0\,
      S(6) => \axi_dma.mig_blocks[7]_i_3_n_0\,
      S(5) => \axi_dma.mig_blocks[7]_i_4_n_0\,
      S(4) => \axi_dma.mig_blocks[7]_i_5_n_0\,
      S(3) => \axi_dma.mig_blocks[7]_i_6_n_0\,
      S(2) => \axi_dma.mig_blocks[7]_i_7_n_0\,
      S(1) => \axi_dma.mig_blocks[7]_i_8_n_0\,
      S(0) => \axi_dma.mig_blocks[7]_i_9_n_0\
    );
\axi_dma.mig_blocks_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(8),
      Q => mig_blocks(8),
      R => '0'
    );
\axi_dma.mig_blocks_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.mig_blocks_reg0\(9),
      Q => mig_blocks(9),
      R => '0'
    );
\axi_dma.mig_diff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF4100"
    )
        port map (
      I0 => reset,
      I1 => mig_size(0),
      I2 => mig_blocks(0),
      I3 => cmd_done,
      I4 => mig_diff(0),
      O => \axi_dma.mig_diff[0]_i_1_n_0\
    );
\axi_dma.mig_diff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEBFFFF14410000"
    )
        port map (
      I0 => reset,
      I1 => mig_size(0),
      I2 => mig_blocks(0),
      I3 => \axi_dma.mig_diff[1]_i_2_n_0\,
      I4 => cmd_done,
      I5 => mig_diff(1),
      O => \axi_dma.mig_diff[1]_i_1_n_0\
    );
\axi_dma.mig_diff[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => mig_blocks(0),
      I1 => mig_size(0),
      I2 => mig_size(1),
      I3 => mig_blocks(1),
      O => \axi_dma.mig_diff[1]_i_2_n_0\
    );
\axi_dma.mig_diff[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.mig_diff[2]_i_2_n_0\,
      I2 => cmd_done,
      I3 => mig_diff(2),
      O => \axi_dma.mig_diff[2]_i_1_n_0\
    );
\axi_dma.mig_diff[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666999696969999"
    )
        port map (
      I0 => mig_blocks(2),
      I1 => mig_size(2),
      I2 => mig_size(1),
      I3 => mig_size(0),
      I4 => mig_blocks(1),
      I5 => mig_blocks(0),
      O => \axi_dma.mig_diff[2]_i_2_n_0\
    );
\axi_dma.mig_diff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF4100"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.mig_diff[3]_i_2_n_0\,
      I2 => \axi_dma.mig_diff[3]_i_3_n_0\,
      I3 => cmd_done,
      I4 => mig_diff(3),
      O => \axi_dma.mig_diff[3]_i_1_n_0\
    );
\axi_dma.mig_diff[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFF6FFFF6FFFF6"
    )
        port map (
      I0 => mig_blocks(2),
      I1 => mig_size(2),
      I2 => mig_size(1),
      I3 => mig_size(0),
      I4 => mig_blocks(1),
      I5 => mig_blocks(0),
      O => \axi_dma.mig_diff[3]_i_2_n_0\
    );
\axi_dma.mig_diff[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5556AAA9AAA95556"
    )
        port map (
      I0 => \axi_dma.mig_diff[5]_i_6_n_0\,
      I1 => mig_size(2),
      I2 => mig_size(1),
      I3 => mig_size(0),
      I4 => mig_size(3),
      I5 => mig_blocks(3),
      O => \axi_dma.mig_diff[3]_i_3_n_0\
    );
\axi_dma.mig_diff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF4100"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.mig_diff[4]_i_2_n_0\,
      I2 => \axi_dma.mig_diff[4]_i_3_n_0\,
      I3 => cmd_done,
      I4 => mig_diff(4),
      O => \axi_dma.mig_diff[4]_i_1_n_0\
    );
\axi_dma.mig_diff[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBBE"
    )
        port map (
      I0 => \axi_dma.mig_diff[3]_i_2_n_0\,
      I1 => mig_blocks(3),
      I2 => \axi_dma.mig_diff[5]_i_5_n_0\,
      I3 => \axi_dma.mig_diff[5]_i_6_n_0\,
      O => \axi_dma.mig_diff[4]_i_2_n_0\
    );
\axi_dma.mig_diff[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1871E78EE78E1871"
    )
        port map (
      I0 => \axi_dma.mig_diff[5]_i_6_n_0\,
      I1 => mig_blocks(3),
      I2 => mig_size(3),
      I3 => \axi_dma.mig_diff[4]_i_4_n_0\,
      I4 => mig_size(4),
      I5 => mig_blocks(4),
      O => \axi_dma.mig_diff[4]_i_3_n_0\
    );
\axi_dma.mig_diff[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => mig_size(0),
      I1 => mig_size(1),
      I2 => mig_size(2),
      O => \axi_dma.mig_diff[4]_i_4_n_0\
    );
\axi_dma.mig_diff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF4100"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.mig_diff[5]_i_2_n_0\,
      I2 => \axi_dma.mig_diff[5]_i_3_n_0\,
      I3 => cmd_done,
      I4 => mig_diff(5),
      O => \axi_dma.mig_diff[5]_i_1_n_0\
    );
\axi_dma.mig_diff[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBEBFFEBFFFFBE"
    )
        port map (
      I0 => \axi_dma.mig_diff[3]_i_2_n_0\,
      I1 => mig_blocks(4),
      I2 => \axi_dma.mig_diff[5]_i_4_n_0\,
      I3 => \axi_dma.mig_diff[5]_i_5_n_0\,
      I4 => mig_blocks(3),
      I5 => \axi_dma.mig_diff[5]_i_6_n_0\,
      O => \axi_dma.mig_diff[5]_i_2_n_0\
    );
\axi_dma.mig_diff[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \axi_dma.mig_diff[7]_i_6_n_0\,
      I1 => \axi_dma.mig_diff[7]_i_8_n_0\,
      I2 => mig_blocks(5),
      O => \axi_dma.mig_diff[5]_i_3_n_0\
    );
\axi_dma.mig_diff[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => mig_size(3),
      I1 => mig_size(0),
      I2 => mig_size(1),
      I3 => mig_size(2),
      I4 => mig_size(4),
      O => \axi_dma.mig_diff[5]_i_4_n_0\
    );
\axi_dma.mig_diff[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => mig_size(2),
      I1 => mig_size(1),
      I2 => mig_size(0),
      I3 => mig_size(3),
      O => \axi_dma.mig_diff[5]_i_5_n_0\
    );
\axi_dma.mig_diff[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE547E1476105600"
    )
        port map (
      I0 => mig_size(2),
      I1 => mig_size(1),
      I2 => mig_size(0),
      I3 => mig_blocks(2),
      I4 => mig_blocks(0),
      I5 => mig_blocks(1),
      O => \axi_dma.mig_diff[5]_i_6_n_0\
    );
\axi_dma.mig_diff[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF4100"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.mig_diff[7]_i_4_n_0\,
      I2 => \axi_dma.mig_diff[7]_i_3_n_0\,
      I3 => cmd_done,
      I4 => mig_diff(6),
      O => \axi_dma.mig_diff[6]_i_1_n_0\
    );
\axi_dma.mig_diff[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => reset,
      I1 => cmd_state(2),
      I2 => cmd_state(0),
      I3 => cmd_state(1),
      O => \axi_dma.mig_diff[7]_i_1_n_0\
    );
\axi_dma.mig_diff[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => mig_blocks(7),
      I1 => mig_size(7),
      I2 => \axi_dma.mig_diff[7]_i_11_n_0\,
      I3 => mig_size(6),
      O => \axi_dma.mig_diff[7]_i_10_n_0\
    );
\axi_dma.mig_diff[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => mig_size(4),
      I1 => mig_size(2),
      I2 => mig_size(1),
      I3 => mig_size(0),
      I4 => mig_size(3),
      I5 => mig_size(5),
      O => \axi_dma.mig_diff[7]_i_11_n_0\
    );
\axi_dma.mig_diff[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEABFFFF54010000"
    )
        port map (
      I0 => reset,
      I1 => \axi_dma.mig_diff[7]_i_3_n_0\,
      I2 => \axi_dma.mig_diff[7]_i_4_n_0\,
      I3 => \axi_dma.mig_diff[7]_i_5_n_0\,
      I4 => cmd_done,
      I5 => mig_diff(7),
      O => \axi_dma.mig_diff[7]_i_2_n_0\
    );
\axi_dma.mig_diff[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1871E78EE78E1871"
    )
        port map (
      I0 => \axi_dma.mig_diff[7]_i_6_n_0\,
      I1 => mig_blocks(5),
      I2 => mig_size(5),
      I3 => \axi_dma.mig_diff[7]_i_7_n_0\,
      I4 => mig_size(6),
      I5 => mig_blocks(6),
      O => \axi_dma.mig_diff[7]_i_3_n_0\
    );
\axi_dma.mig_diff[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBBE"
    )
        port map (
      I0 => \axi_dma.mig_diff[5]_i_2_n_0\,
      I1 => mig_blocks(5),
      I2 => \axi_dma.mig_diff[7]_i_8_n_0\,
      I3 => \axi_dma.mig_diff[7]_i_6_n_0\,
      O => \axi_dma.mig_diff[7]_i_4_n_0\
    );
\axi_dma.mig_diff[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \axi_dma.mig_diff[7]_i_8_n_0\,
      I1 => mig_blocks(5),
      I2 => \axi_dma.mig_diff[7]_i_6_n_0\,
      I3 => mig_blocks(6),
      I4 => \axi_dma.mig_diff[7]_i_9_n_0\,
      I5 => \axi_dma.mig_diff[7]_i_10_n_0\,
      O => \axi_dma.mig_diff[7]_i_5_n_0\
    );
\axi_dma.mig_diff[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF59DB41DB415900"
    )
        port map (
      I0 => mig_size(4),
      I1 => \axi_dma.mig_diff[4]_i_4_n_0\,
      I2 => mig_size(3),
      I3 => mig_blocks(4),
      I4 => \axi_dma.mig_diff[5]_i_6_n_0\,
      I5 => mig_blocks(3),
      O => \axi_dma.mig_diff[7]_i_6_n_0\
    );
\axi_dma.mig_diff[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => mig_size(3),
      I1 => mig_size(0),
      I2 => mig_size(1),
      I3 => mig_size(2),
      I4 => mig_size(4),
      O => \axi_dma.mig_diff[7]_i_7_n_0\
    );
\axi_dma.mig_diff[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => mig_size(4),
      I1 => mig_size(2),
      I2 => mig_size(1),
      I3 => mig_size(0),
      I4 => mig_size(3),
      I5 => mig_size(5),
      O => \axi_dma.mig_diff[7]_i_8_n_0\
    );
\axi_dma.mig_diff[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_dma.mig_diff[7]_i_11_n_0\,
      I1 => mig_size(6),
      O => \axi_dma.mig_diff[7]_i_9_n_0\
    );
\axi_dma.mig_diff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[0]_i_1_n_0\,
      Q => mig_diff(0),
      R => '0'
    );
\axi_dma.mig_diff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[1]_i_1_n_0\,
      Q => mig_diff(1),
      R => '0'
    );
\axi_dma.mig_diff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[2]_i_1_n_0\,
      Q => mig_diff(2),
      R => '0'
    );
\axi_dma.mig_diff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[3]_i_1_n_0\,
      Q => mig_diff(3),
      R => '0'
    );
\axi_dma.mig_diff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[4]_i_1_n_0\,
      Q => mig_diff(4),
      R => '0'
    );
\axi_dma.mig_diff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[5]_i_1_n_0\,
      Q => mig_diff(5),
      R => '0'
    );
\axi_dma.mig_diff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[6]_i_1_n_0\,
      Q => mig_diff(6),
      R => '0'
    );
\axi_dma.mig_diff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_diff[7]_i_1_n_0\,
      D => \axi_dma.mig_diff[7]_i_2_n_0\,
      Q => mig_diff(7),
      R => '0'
    );
\axi_dma.mig_size[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(64),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(0),
      O => \axi_dma.mig_size[0]_i_1_n_0\
    );
\axi_dma.mig_size[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(65),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(1),
      O => \axi_dma.mig_size[1]_i_1_n_0\
    );
\axi_dma.mig_size[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(66),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(2),
      O => \axi_dma.mig_size[2]_i_1_n_0\
    );
\axi_dma.mig_size[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(67),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(3),
      O => \axi_dma.mig_size[3]_i_1_n_0\
    );
\axi_dma.mig_size[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(68),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(4),
      O => \axi_dma.mig_size[4]_i_1_n_0\
    );
\axi_dma.mig_size[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(69),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(5),
      O => \axi_dma.mig_size[5]_i_1_n_0\
    );
\axi_dma.mig_size[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(70),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(6),
      O => \axi_dma.mig_size[6]_i_1_n_0\
    );
\axi_dma.mig_size[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \axi_dma.mig_size[7]_i_1_n_0\
    );
\axi_dma.mig_size[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => cmd_done,
      I1 => M_AXI_TDATA_in(71),
      I2 => M_AXI_TVALID_in,
      I3 => M_AXI_TDATA_in(79),
      I4 => mig_size(7),
      O => \axi_dma.mig_size[7]_i_2_n_0\
    );
\axi_dma.mig_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[0]_i_1_n_0\,
      Q => mig_size(0),
      R => '0'
    );
\axi_dma.mig_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[1]_i_1_n_0\,
      Q => mig_size(1),
      R => '0'
    );
\axi_dma.mig_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[2]_i_1_n_0\,
      Q => mig_size(2),
      R => '0'
    );
\axi_dma.mig_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[3]_i_1_n_0\,
      Q => mig_size(3),
      R => '0'
    );
\axi_dma.mig_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[4]_i_1_n_0\,
      Q => mig_size(4),
      R => '0'
    );
\axi_dma.mig_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[5]_i_1_n_0\,
      Q => mig_size(5),
      R => '0'
    );
\axi_dma.mig_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[6]_i_1_n_0\,
      Q => mig_size(6),
      R => '0'
    );
\axi_dma.mig_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_dma.mig_size[7]_i_1_n_0\,
      D => \axi_dma.mig_size[7]_i_2_n_0\,
      Q => mig_size(7),
      R => '0'
    );
\axi_dma.r5_cmd_rd_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => r5_cmd_empty,
      I1 => \axi_dma.dma_active_reg_n_0\,
      I2 => resetn,
      O => \axi_dma.r5_cmd_rd_i_1_n_0\
    );
\axi_dma.r5_cmd_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.r5_cmd_rd_i_1_n_0\,
      Q => \axi_dma.r5_cmd_rd_reg_n_0\,
      R => '0'
    );
\axi_dma.reset_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => clear
    );
\axi_dma.reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clear,
      Q => reset,
      R => '0'
    );
\axi_dma.spy_reset_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lpd_resetn,
      O => \axi_dma.spy_reset_i_1_n_0\
    );
\axi_dma.spy_reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => lpd_clk,
      CE => '1',
      D => \axi_dma.spy_reset_i_1_n_0\,
      Q => spy_reset,
      R => '0'
    );
\axi_dma.start_cmd_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20002"
    )
        port map (
      I0 => \axi_dma.cmd_state[2]_i_3_n_0\,
      I1 => cmd_state(0),
      I2 => cmd_state(2),
      I3 => cmd_state(1),
      I4 => start_cmd,
      O => \axi_dma.start_cmd_i_1_n_0\
    );
\axi_dma.start_cmd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_dma.start_cmd_i_1_n_0\,
      Q => start_cmd,
      R => reset
    );
\axi_dma.tag[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag(0),
      O => \axi_dma.tag[0]_i_1_n_0\
    );
\axi_dma.tag[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tag(0),
      I1 => tag(1),
      O => \axi_dma.tag[1]_i_1_n_0\
    );
\axi_dma.tag[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tag(0),
      I1 => tag(1),
      I2 => tag(2),
      O => \axi_dma.tag[2]_i_1_n_0\
    );
\axi_dma.tag[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tag(1),
      I1 => tag(0),
      I2 => tag(2),
      I3 => tag(3),
      O => \axi_dma.tag[3]_i_1_n_0\
    );
\axi_dma.tag_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_done,
      D => \axi_dma.tag[0]_i_1_n_0\,
      Q => tag(0),
      R => reset
    );
\axi_dma.tag_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_done,
      D => \axi_dma.tag[1]_i_1_n_0\,
      Q => tag(1),
      R => reset
    );
\axi_dma.tag_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_done,
      D => \axi_dma.tag[2]_i_1_n_0\,
      Q => tag(2),
      R => reset
    );
\axi_dma.tag_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_done,
      D => \axi_dma.tag[3]_i_1_n_0\,
      Q => tag(3),
      R => reset
    );
fifo_i: entity work.ps_axi_dma_1_0_xpm_fifo_sync
     port map (
      almost_empty => NLW_fifo_i_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_i_almost_full_UNCONNECTED,
      data_valid => NLW_fifo_i_data_valid_UNCONNECTED,
      dbiterr => NLW_fifo_i_dbiterr_UNCONNECTED,
      din(255 downto 0) => in_data(255 downto 0),
      dout(255 downto 0) => M_AXI_TDATA_out(255 downto 0),
      empty => fifo_empty,
      full => NLW_fifo_i_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_fifo_i_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_i_prog_empty_UNCONNECTED,
      prog_full => NLW_fifo_i_prog_full_UNCONNECTED,
      rd_data_count(0) => NLW_fifo_i_rd_data_count_UNCONNECTED(0),
      rd_en => fifo_rd_en,
      rd_rst_busy => NLW_fifo_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      sbiterr => NLW_fifo_i_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_fifo_i_underflow_UNCONNECTED,
      wr_ack => NLW_fifo_i_wr_ack_UNCONNECTED,
      wr_clk => clk,
      wr_data_count(0) => NLW_fifo_i_wr_data_count_UNCONNECTED(0),
      wr_en => in_wr,
      wr_rst_busy => NLW_fifo_i_wr_rst_busy_UNCONNECTED
    );
fifo_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => fifo_empty,
      I1 => \axi_dma.dma_active_reg_n_0\,
      I2 => M_AXI_TREADY_out,
      O => fifo_rd_en
    );
fifo_size_ptr_i: component ps_axi_dma_1_0_fifo_ptr
     port map (
      din(31 downto 14) => B"000000000000000000",
      din(13 downto 0) => \axi_dma.fifo_count_reg\(13 downto 0),
      dout(31 downto 0) => fifo_size_out_data(31 downto 0),
      empty => fifo_size_empty,
      full => NLW_fifo_size_ptr_i_full_UNCONNECTED,
      rd_clk => lpd_clk,
      rd_en => fifo_size_rd,
      wr_clk => clk,
      wr_en => fifo_chg
    );
fifo_spy_i: component ps_axi_dma_1_0_fifo_spy
     port map (
      din(13 downto 0) => spy_data(18 downto 5),
      dout(13 downto 0) => r5_cmd_data(13 downto 0),
      empty => r5_cmd_empty,
      full => NLW_fifo_spy_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => \axi_dma.r5_cmd_rd_reg_n_0\,
      rst => spy_reset,
      wr_clk => lpd_clk,
      wr_en => spy_wr
    );
ila_i: component ps_axi_dma_1_0_ila_7
     port map (
      clk => clk,
      probe0(2 downto 0) => cmd_state(2 downto 0),
      probe1(26 downto 0) => adr(26 downto 0),
      probe10(7 downto 0) => mig_diff(7 downto 0),
      probe2(26 downto 0) => mig_blocks(26 downto 0),
      probe3(0) => start_cmd,
      probe4(0) => cmd_done,
      probe5(0) => cmd_error,
      probe6(7 downto 0) => blocks(7 downto 0),
      probe7(3 downto 0) => tag(3 downto 0),
      probe8(0) => has_mig_size,
      probe9(7 downto 0) => mig_size(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_dma_1_0 is
  port (
    lpd_clk : in STD_LOGIC;
    lpd_resetn : in STD_LOGIC;
    spy_wr : in STD_LOGIC;
    spy_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avail_size : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    rd_ptr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    wr_ptr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    M_AXI_TDATA_cmd : out STD_LOGIC_VECTOR ( 71 downto 0 );
    M_AXI_TVALID_cmd : out STD_LOGIC;
    M_AXI_TREADY_cmd : in STD_LOGIC;
    M_AXI_STS_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_STS_tvalid : in STD_LOGIC;
    M_AXI_STS_tready : out STD_LOGIC;
    M_AXI_TDATA_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_TVALID_in : in STD_LOGIC;
    M_AXI_TREADY_in : out STD_LOGIC;
    M_AXI_TDATA_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_TVALID_out : out STD_LOGIC;
    M_AXI_TLAST_out : out STD_LOGIC;
    M_AXI_TREADY_out : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_axi_dma_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_dma_1_0 : entity is "ps_axi_dma_1_0,axi_dma,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_axi_dma_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_axi_dma_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_axi_dma_1_0 : entity is "axi_dma,Vivado 2025.1";
end ps_axi_dma_1_0;

architecture STRUCTURE of ps_axi_dma_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_tdata_cmd\ : STD_LOGIC_VECTOR ( 67 downto 5 );
  signal NLW_inst_M_AXI_TREADY_in_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal NLW_inst_rd_ptr_UNCONNECTED : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute CMD_ST_IDLE : string;
  attribute CMD_ST_IDLE of inst : label is "3'b000";
  attribute CMD_ST_WAIT_DONE : string;
  attribute CMD_ST_WAIT_DONE of inst : label is "3'b010";
  attribute CMD_ST_WAIT_HDR : string;
  attribute CMD_ST_WAIT_HDR of inst : label is "3'b001";
  attribute CMD_ST_WAIT_SPACE : string;
  attribute CMD_ST_WAIT_SPACE of inst : label is "3'b011";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_STS_tready : signal is "xilinx.com:interface:axis:1.0 M_AXI_STS TREADY";
  attribute X_INTERFACE_INFO of M_AXI_STS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXI_STS TVALID";
  attribute X_INTERFACE_INFO of M_AXI_TLAST_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TLAST";
  attribute X_INTERFACE_INFO of M_AXI_TREADY_cmd : signal is "xilinx.com:interface:axis:1.0 M_AXI_cmd TREADY";
  attribute X_INTERFACE_INFO of M_AXI_TREADY_in : signal is "xilinx.com:interface:axis:1.0 M_AXI_in TREADY";
  attribute X_INTERFACE_INFO of M_AXI_TREADY_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TREADY";
  attribute X_INTERFACE_INFO of M_AXI_TVALID_cmd : signal is "xilinx.com:interface:axis:1.0 M_AXI_cmd TVALID";
  attribute X_INTERFACE_INFO of M_AXI_TVALID_in : signal is "xilinx.com:interface:axis:1.0 M_AXI_in TVALID";
  attribute X_INTERFACE_INFO of M_AXI_TVALID_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI_STS:M_AXI_cmd:M_AXI_in:M_AXI_out, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lpd_clk : signal is "xilinx.com:signal:clock:1.0 lpd_clk CLK";
  attribute X_INTERFACE_MODE of lpd_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of lpd_clk : signal is "XIL_INTERFACENAME lpd_clk, ASSOCIATED_RESET lpd_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lpd_resetn : signal is "xilinx.com:signal:reset:1.0 lpd_resetn RST";
  attribute X_INTERFACE_MODE of lpd_resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of lpd_resetn : signal is "XIL_INTERFACENAME lpd_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_STS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXI_STS TDATA";
  attribute X_INTERFACE_MODE of M_AXI_STS_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of M_AXI_STS_tdata : signal is "XIL_INTERFACENAME M_AXI_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TDATA_cmd : signal is "xilinx.com:interface:axis:1.0 M_AXI_cmd TDATA";
  attribute X_INTERFACE_MODE of M_AXI_TDATA_cmd : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXI_TDATA_cmd : signal is "XIL_INTERFACENAME M_AXI_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TDATA_in : signal is "xilinx.com:interface:axis:1.0 M_AXI_in TDATA";
  attribute X_INTERFACE_MODE of M_AXI_TDATA_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of M_AXI_TDATA_in : signal is "XIL_INTERFACENAME M_AXI_in, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TDATA_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TDATA";
  attribute X_INTERFACE_MODE of M_AXI_TDATA_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXI_TDATA_out : signal is "XIL_INTERFACENAME M_AXI_out, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  M_AXI_TDATA_cmd(71) <= \<const0>\;
  M_AXI_TDATA_cmd(70) <= \<const0>\;
  M_AXI_TDATA_cmd(69) <= \<const0>\;
  M_AXI_TDATA_cmd(68) <= \<const0>\;
  M_AXI_TDATA_cmd(67 downto 37) <= \^m_axi_tdata_cmd\(67 downto 37);
  M_AXI_TDATA_cmd(36) <= \<const0>\;
  M_AXI_TDATA_cmd(35) <= \<const0>\;
  M_AXI_TDATA_cmd(34) <= \<const0>\;
  M_AXI_TDATA_cmd(33) <= \<const0>\;
  M_AXI_TDATA_cmd(32) <= \<const0>\;
  M_AXI_TDATA_cmd(31) <= \<const0>\;
  M_AXI_TDATA_cmd(30) <= \<const0>\;
  M_AXI_TDATA_cmd(29) <= \<const0>\;
  M_AXI_TDATA_cmd(28) <= \<const0>\;
  M_AXI_TDATA_cmd(27) <= \<const0>\;
  M_AXI_TDATA_cmd(26) <= \<const0>\;
  M_AXI_TDATA_cmd(25) <= \<const0>\;
  M_AXI_TDATA_cmd(24) <= \<const0>\;
  M_AXI_TDATA_cmd(23) <= \<const1>\;
  M_AXI_TDATA_cmd(22) <= \<const0>\;
  M_AXI_TDATA_cmd(21) <= \<const0>\;
  M_AXI_TDATA_cmd(20) <= \<const0>\;
  M_AXI_TDATA_cmd(19) <= \<const0>\;
  M_AXI_TDATA_cmd(18) <= \<const0>\;
  M_AXI_TDATA_cmd(17) <= \<const0>\;
  M_AXI_TDATA_cmd(16) <= \<const0>\;
  M_AXI_TDATA_cmd(15) <= \<const0>\;
  M_AXI_TDATA_cmd(14) <= \<const0>\;
  M_AXI_TDATA_cmd(13) <= \<const0>\;
  M_AXI_TDATA_cmd(12 downto 5) <= \^m_axi_tdata_cmd\(12 downto 5);
  M_AXI_TDATA_cmd(4) <= \<const0>\;
  M_AXI_TDATA_cmd(3) <= \<const0>\;
  M_AXI_TDATA_cmd(2) <= \<const0>\;
  M_AXI_TDATA_cmd(1) <= \<const0>\;
  M_AXI_TDATA_cmd(0) <= \<const0>\;
  M_AXI_TREADY_in <= \<const1>\;
  rd_ptr(26) <= \<const0>\;
  rd_ptr(25) <= \<const0>\;
  rd_ptr(24) <= \<const0>\;
  rd_ptr(23) <= \<const0>\;
  rd_ptr(22) <= \<const0>\;
  rd_ptr(21) <= \<const0>\;
  rd_ptr(20) <= \<const0>\;
  rd_ptr(19) <= \<const0>\;
  rd_ptr(18) <= \<const0>\;
  rd_ptr(17) <= \<const0>\;
  rd_ptr(16) <= \<const0>\;
  rd_ptr(15) <= \<const0>\;
  rd_ptr(14) <= \<const0>\;
  rd_ptr(13) <= \<const0>\;
  rd_ptr(12) <= \<const0>\;
  rd_ptr(11) <= \<const0>\;
  rd_ptr(10) <= \<const0>\;
  rd_ptr(9) <= \<const0>\;
  rd_ptr(8) <= \<const0>\;
  rd_ptr(7) <= \<const0>\;
  rd_ptr(6) <= \<const0>\;
  rd_ptr(5) <= \<const0>\;
  rd_ptr(4) <= \<const0>\;
  rd_ptr(3) <= \<const0>\;
  rd_ptr(2) <= \<const0>\;
  rd_ptr(1) <= \<const0>\;
  rd_ptr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.ps_axi_dma_1_0_axi_dma
     port map (
      M_AXI_STS_tdata(7) => M_AXI_STS_tdata(7),
      M_AXI_STS_tdata(6 downto 4) => B"000",
      M_AXI_STS_tdata(3 downto 0) => M_AXI_STS_tdata(3 downto 0),
      M_AXI_STS_tready => M_AXI_STS_tready,
      M_AXI_STS_tvalid => M_AXI_STS_tvalid,
      M_AXI_TDATA_cmd(71 downto 68) => NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED(71 downto 68),
      M_AXI_TDATA_cmd(67 downto 37) => \^m_axi_tdata_cmd\(67 downto 37),
      M_AXI_TDATA_cmd(36 downto 13) => NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED(36 downto 13),
      M_AXI_TDATA_cmd(12 downto 5) => \^m_axi_tdata_cmd\(12 downto 5),
      M_AXI_TDATA_cmd(4 downto 0) => NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED(4 downto 0),
      M_AXI_TDATA_in(255 downto 0) => M_AXI_TDATA_in(255 downto 0),
      M_AXI_TDATA_out(255 downto 0) => M_AXI_TDATA_out(255 downto 0),
      M_AXI_TLAST_out => M_AXI_TLAST_out,
      M_AXI_TREADY_cmd => M_AXI_TREADY_cmd,
      M_AXI_TREADY_in => NLW_inst_M_AXI_TREADY_in_UNCONNECTED,
      M_AXI_TREADY_out => M_AXI_TREADY_out,
      M_AXI_TVALID_cmd => M_AXI_TVALID_cmd,
      M_AXI_TVALID_in => M_AXI_TVALID_in,
      M_AXI_TVALID_out => M_AXI_TVALID_out,
      avail_size(31 downto 0) => avail_size(31 downto 0),
      clk => clk,
      lpd_clk => lpd_clk,
      lpd_resetn => lpd_resetn,
      rd_ptr(26 downto 0) => NLW_inst_rd_ptr_UNCONNECTED(26 downto 0),
      resetn => resetn,
      spy_data(31 downto 19) => B"0000000000000",
      spy_data(18 downto 5) => spy_data(18 downto 5),
      spy_data(4 downto 0) => B"00000",
      spy_wr => spy_wr,
      wr_ptr(26 downto 0) => wr_ptr(26 downto 0)
    );
end STRUCTURE;
