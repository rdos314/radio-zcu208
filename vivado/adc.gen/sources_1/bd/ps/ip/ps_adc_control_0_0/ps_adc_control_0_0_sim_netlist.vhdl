-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Nov 25 20:19:43 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_adc_control_0_0/ps_adc_control_0_0_sim_netlist.vhdl
-- Design      : ps_adc_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_adc_control_0_0_adc_control is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \adc_control.data_out_reg[2]_0\ : out STD_LOGIC;
    \adc_control.data_out_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \adc_control.data_out_reg[0]_0\ : out STD_LOGIC;
    \adc_control.data_out_reg[3]_0\ : out STD_LOGIC;
    \adc_control.data_out_reg[4]_0\ : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    adc_stop : out STD_LOGIC;
    \adc_control.address_reg[1]_0\ : out STD_LOGIC;
    wr_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    sim_channel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sim_low_wr : out STD_LOGIC;
    sim_high_wr : out STD_LOGIC;
    adc_start : out STD_LOGIC;
    sim_start : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sim_active : in STD_LOGIC;
    adc_active : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_adc_control_0_0_adc_control : entity is "adc_control";
end ps_adc_control_0_0_adc_control;

architecture STRUCTURE of ps_adc_control_0_0_adc_control is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal adc_chan : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \adc_control.adc_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.adc_start_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.adc_start_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.adc_stop_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.adc_stop_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.address[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[9]_i_2_n_0\ : STD_LOGIC;
  signal \^adc_control.address_reg[1]_0\ : STD_LOGIC;
  signal \adc_control.cdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.cdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \adc_control.cmd_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.cmd_start_reg_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \^adc_control.data_out_reg[0]_0\ : STD_LOGIC;
  signal \^adc_control.data_out_reg[2]_0\ : STD_LOGIC;
  signal \^adc_control.data_out_reg[3]_0\ : STD_LOGIC;
  signal \^adc_control.data_out_reg[4]_0\ : STD_LOGIC;
  signal \^adc_control.data_out_reg[6]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \adc_control.pdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \adc_control.sim_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_high_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \adc_control.sim_wr_done_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_pend_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \^adc_start\ : STD_LOGIC;
  signal \^adc_stop\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \cmd_start0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal padr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal pdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sim_high_wr\ : STD_LOGIC;
  signal \^sim_low_wr\ : STD_LOGIC;
  signal \^sim_start\ : STD_LOGIC;
  signal sim_wr_done : STD_LOGIC;
  signal sim_wr_pend : STD_LOGIC;
  signal sim_wr_start : STD_LOGIC;
  signal \NLW_cmd_start0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_cmd_start0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_cmd_start0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc_control.adc_start_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adc_control.address[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adc_control.address[10]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adc_control.address[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc_control.address[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc_control.address[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adc_control.address[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_control.address[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_control.data_out[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_control.data_out[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adc_control.data_out[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_control.data_out[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_control.data_out[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_control.data_out[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adc_control.pdata[31]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[10]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[8]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[9]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_pend_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_start_i_1\ : label is "soft_lutpair9";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \adc_control.address_reg[1]_0\ <= \^adc_control.address_reg[1]_0\;
  \adc_control.data_out_reg[0]_0\ <= \^adc_control.data_out_reg[0]_0\;
  \adc_control.data_out_reg[2]_0\ <= \^adc_control.data_out_reg[2]_0\;
  \adc_control.data_out_reg[3]_0\ <= \^adc_control.data_out_reg[3]_0\;
  \adc_control.data_out_reg[4]_0\ <= \^adc_control.data_out_reg[4]_0\;
  \adc_control.data_out_reg[6]_0\(1 downto 0) <= \^adc_control.data_out_reg[6]_0\(1 downto 0);
  adc_start <= \^adc_start\;
  adc_stop <= \^adc_stop\;
  data_out(3 downto 0) <= \^data_out\(3 downto 0);
  sim_high_wr <= \^sim_high_wr\;
  sim_low_wr <= \^sim_low_wr\;
  sim_start <= \^sim_start\;
\adc_control.adc_start_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.adc_start_i_1_n_0\
    );
\adc_control.adc_start_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[0]\,
      I1 => \adc_control.adc_start_i_3_n_0\,
      I2 => \adc_control.cdata_reg_n_0_[1]\,
      I3 => \^adc_start\,
      O => \adc_control.adc_start_i_2_n_0\
    );
\adc_control.adc_start_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[6]\,
      I1 => \adc_control.cdata_reg_n_0_[7]\,
      I2 => \adc_control.cdata_reg_n_0_[4]\,
      I3 => \adc_control.cdata_reg_n_0_[5]\,
      I4 => \adc_control.cdata_reg_n_0_[3]\,
      I5 => \adc_control.cdata_reg_n_0_[2]\,
      O => \adc_control.adc_start_i_3_n_0\
    );
\adc_control.adc_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.adc_start_i_2_n_0\,
      Q => \^adc_start\,
      R => \adc_control.adc_start_i_1_n_0\
    );
\adc_control.adc_stop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[0]\,
      I1 => \adc_control.cdata_reg_n_0_[1]\,
      I2 => \adc_control.adc_stop_i_2_n_0\,
      I3 => \adc_control.cdata_reg_n_0_[3]\,
      I4 => \adc_control.cdata_reg_n_0_[2]\,
      I5 => \^adc_stop\,
      O => \adc_control.adc_stop_i_1_n_0\
    );
\adc_control.adc_stop_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[5]\,
      I1 => \adc_control.cdata_reg_n_0_[4]\,
      I2 => \adc_control.cdata_reg_n_0_[7]\,
      I3 => \adc_control.cdata_reg_n_0_[6]\,
      O => \adc_control.adc_stop_i_2_n_0\
    );
\adc_control.adc_stop_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.adc_stop_i_1_n_0\,
      Q => \^adc_stop\,
      R => \adc_control.adc_start_i_1_n_0\
    );
\adc_control.address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511105555"
    )
        port map (
      I0 => \adc_control.cmd_start_reg_n_0\,
      I1 => \^q\(0),
      I2 => sim_wr_start,
      I3 => sim_wr_pend,
      I4 => resetn,
      I5 => sim_wr_done,
      O => \adc_control.address[0]_i_1_n_0\
    );
\adc_control.address[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^q\(9),
      I2 => \adc_control.address[10]_i_3_n_0\,
      O => \adc_control.address[10]_i_1_n_0\
    );
\adc_control.address[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => sim_wr_start,
      I2 => resetn,
      I3 => sim_wr_done,
      I4 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.address[10]_i_2_n_0\
    );
\adc_control.address[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \adc_control.address[9]_i_2_n_0\,
      I4 => \^q\(7),
      O => \adc_control.address[10]_i_3_n_0\
    );
\adc_control.address[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000E00000"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => sim_wr_start,
      I2 => resetn,
      I3 => sim_wr_done,
      I4 => \^adc_control.address_reg[1]_0\,
      I5 => \^q\(0),
      O => \adc_control.address[1]_i_1_n_0\
    );
\adc_control.address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^adc_control.address_reg[1]_0\,
      I3 => \^q\(1),
      O => \adc_control.address[2]_i_1_n_0\
    );
\adc_control.address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^adc_control.address_reg[1]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \adc_control.address[3]_i_1_n_0\
    );
\adc_control.address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^adc_control.address_reg[1]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \adc_control.address[4]_i_1_n_0\
    );
\adc_control.address[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \adc_control.address[5]_i_2_n_0\,
      I2 => \^q\(4),
      O => \adc_control.address[5]_i_1_n_0\
    );
\adc_control.address[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^adc_control.address_reg[1]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \adc_control.address[5]_i_2_n_0\
    );
\adc_control.address[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \adc_control.address[9]_i_2_n_0\,
      I2 => \^q\(5),
      O => \adc_control.address[6]_i_1_n_0\
    );
\adc_control.address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \adc_control.address[9]_i_2_n_0\,
      O => \adc_control.address[7]_i_1_n_0\
    );
\adc_control.address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^q\(7),
      I2 => \adc_control.address[9]_i_2_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \adc_control.address[8]_i_1_n_0\
    );
\adc_control.address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888288888888888"
    )
        port map (
      I0 => \adc_control.address[10]_i_2_n_0\,
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \adc_control.address[9]_i_2_n_0\,
      I5 => \^q\(7),
      O => \adc_control.address[9]_i_1_n_0\
    );
\adc_control.address[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^adc_control.address_reg[1]_0\,
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \adc_control.address[9]_i_2_n_0\
    );
\adc_control.address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\adc_control.address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[10]_i_1_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\adc_control.address_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[1]_i_1_n_0\,
      Q => \^adc_control.address_reg[1]_0\,
      S => \adc_control.cmd_start_reg_n_0\
    );
\adc_control.address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[2]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\adc_control.address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[3]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\adc_control.address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[4]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\adc_control.address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[5]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\adc_control.address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[6]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\adc_control.address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[7]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\adc_control.address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[8]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\adc_control.address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[9]_i_1_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\adc_control.cdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => padr(9),
      I1 => padr(6),
      I2 => \adc_control.cdata[31]_i_2_n_0\,
      I3 => padr(8),
      I4 => padr(7),
      I5 => padr(10),
      O => \adc_control.cdata[31]_i_1_n_0\
    );
\adc_control.cdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => padr(3),
      I1 => padr(0),
      I2 => padr(1),
      I3 => padr(2),
      I4 => padr(5),
      I5 => padr(4),
      O => \adc_control.cdata[31]_i_2_n_0\
    );
\adc_control.cdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(0),
      Q => \adc_control.cdata_reg_n_0_[0]\,
      R => '0'
    );
\adc_control.cdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(10),
      Q => adc_chan(2),
      R => '0'
    );
\adc_control.cdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(11),
      Q => \adc_control.cdata_reg_n_0_[11]\,
      R => '0'
    );
\adc_control.cdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(12),
      Q => \adc_control.cdata_reg_n_0_[12]\,
      R => '0'
    );
\adc_control.cdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(13),
      Q => \adc_control.cdata_reg_n_0_[13]\,
      R => '0'
    );
\adc_control.cdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(14),
      Q => \adc_control.cdata_reg_n_0_[14]\,
      R => '0'
    );
\adc_control.cdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(15),
      Q => \adc_control.cdata_reg_n_0_[15]\,
      R => '0'
    );
\adc_control.cdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(16),
      Q => p_0_in_0(0),
      R => '0'
    );
\adc_control.cdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(17),
      Q => p_0_in_0(1),
      R => '0'
    );
\adc_control.cdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(18),
      Q => p_0_in_0(2),
      R => '0'
    );
\adc_control.cdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(19),
      Q => p_0_in_0(3),
      R => '0'
    );
\adc_control.cdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(1),
      Q => \adc_control.cdata_reg_n_0_[1]\,
      R => '0'
    );
\adc_control.cdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(20),
      Q => p_0_in_0(4),
      R => '0'
    );
\adc_control.cdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(21),
      Q => p_0_in_0(5),
      R => '0'
    );
\adc_control.cdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(22),
      Q => p_0_in_0(6),
      R => '0'
    );
\adc_control.cdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(23),
      Q => p_0_in_0(7),
      R => '0'
    );
\adc_control.cdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(24),
      Q => p_0_in_0(8),
      R => '0'
    );
\adc_control.cdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(25),
      Q => p_0_in_0(9),
      R => '0'
    );
\adc_control.cdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(26),
      Q => p_0_in_0(10),
      R => '0'
    );
\adc_control.cdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(27),
      Q => p_0_in_0(11),
      R => '0'
    );
\adc_control.cdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(28),
      Q => \adc_control.cdata_reg_n_0_[28]\,
      R => '0'
    );
\adc_control.cdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(29),
      Q => \adc_control.cdata_reg_n_0_[29]\,
      R => '0'
    );
\adc_control.cdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(2),
      Q => \adc_control.cdata_reg_n_0_[2]\,
      R => '0'
    );
\adc_control.cdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(30),
      Q => \adc_control.cdata_reg_n_0_[30]\,
      R => '0'
    );
\adc_control.cdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(31),
      Q => \adc_control.cdata_reg_n_0_[31]\,
      R => '0'
    );
\adc_control.cdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(3),
      Q => \adc_control.cdata_reg_n_0_[3]\,
      R => '0'
    );
\adc_control.cdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(4),
      Q => \adc_control.cdata_reg_n_0_[4]\,
      R => '0'
    );
\adc_control.cdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(5),
      Q => \adc_control.cdata_reg_n_0_[5]\,
      R => '0'
    );
\adc_control.cdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(6),
      Q => \adc_control.cdata_reg_n_0_[6]\,
      R => '0'
    );
\adc_control.cdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(7),
      Q => \adc_control.cdata_reg_n_0_[7]\,
      R => '0'
    );
\adc_control.cdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(8),
      Q => adc_chan(0),
      R => '0'
    );
\adc_control.cdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(9),
      Q => adc_chan(1),
      R => '0'
    );
\adc_control.cmd_start_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010001010"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_6_n_0\,
      I1 => \cmd_start0_inferred__0/i__carry__0_n_5\,
      I2 => resetn,
      I3 => \adc_control.pdata[31]_i_5_n_0\,
      I4 => \adc_control.pdata[31]_i_4_n_0\,
      I5 => \adc_control.pdata[31]_i_3_n_0\,
      O => \adc_control.cmd_start_i_1_n_0\
    );
\adc_control.cmd_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.cmd_start_i_1_n_0\,
      Q => \adc_control.cmd_start_reg_n_0\,
      R => '0'
    );
\adc_control.data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^adc_control.data_out_reg[0]_0\,
      O => \adc_control.data_out[0]_i_1_n_0\
    );
\adc_control.data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^adc_control.data_out_reg[6]_0\(0),
      I1 => \^adc_control.data_out_reg[0]_0\,
      I2 => resetn,
      O => \adc_control.data_out[1]_i_1_n_0\
    );
\adc_control.data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^adc_control.data_out_reg[2]_0\,
      I1 => \^adc_control.data_out_reg[6]_0\(0),
      I2 => \^adc_control.data_out_reg[0]_0\,
      O => \adc_control.data_out[2]_i_1_n_0\
    );
\adc_control.data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^adc_control.data_out_reg[3]_0\,
      I1 => \^adc_control.data_out_reg[2]_0\,
      I2 => \^adc_control.data_out_reg[0]_0\,
      I3 => \^adc_control.data_out_reg[6]_0\(0),
      O => \adc_control.data_out[3]_i_1_n_0\
    );
\adc_control.data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^adc_control.data_out_reg[4]_0\,
      I1 => \^adc_control.data_out_reg[3]_0\,
      I2 => \^adc_control.data_out_reg[6]_0\(0),
      I3 => \^adc_control.data_out_reg[0]_0\,
      I4 => \^adc_control.data_out_reg[2]_0\,
      O => \adc_control.data_out[4]_i_1_n_0\
    );
\adc_control.data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^data_out\(0),
      I1 => \^adc_control.data_out_reg[4]_0\,
      I2 => \^adc_control.data_out_reg[2]_0\,
      I3 => \^adc_control.data_out_reg[0]_0\,
      I4 => \^adc_control.data_out_reg[6]_0\(0),
      I5 => \^adc_control.data_out_reg[3]_0\,
      O => \adc_control.data_out[5]_i_1_n_0\
    );
\adc_control.data_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sim_wr_done,
      I1 => resetn,
      O => \adc_control.data_out[6]_i_1_n_0\
    );
\adc_control.data_out[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \adc_control.data_out[7]_i_2_n_0\,
      I1 => \^adc_control.data_out_reg[6]_0\(1),
      I2 => resetn,
      O => \adc_control.data_out[6]_i_2_n_0\
    );
\adc_control.data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data_out\(1),
      I1 => \adc_control.data_out[7]_i_2_n_0\,
      I2 => \^adc_control.data_out_reg[6]_0\(1),
      O => \adc_control.data_out[7]_i_1_n_0\
    );
\adc_control.data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^adc_control.data_out_reg[4]_0\,
      I1 => \^adc_control.data_out_reg[2]_0\,
      I2 => \^adc_control.data_out_reg[0]_0\,
      I3 => \^adc_control.data_out_reg[6]_0\(0),
      I4 => \^adc_control.data_out_reg[3]_0\,
      I5 => \^data_out\(0),
      O => \adc_control.data_out[7]_i_2_n_0\
    );
\adc_control.data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => \adc_control.data_out[0]_i_1_n_0\,
      Q => \^adc_control.data_out_reg[0]_0\,
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[6]_i_1_n_0\,
      D => \adc_control.data_out[1]_i_1_n_0\,
      Q => \^adc_control.data_out_reg[6]_0\(0),
      R => '0'
    );
\adc_control.data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => \adc_control.data_out[2]_i_1_n_0\,
      Q => \^adc_control.data_out_reg[2]_0\,
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => \adc_control.data_out[3]_i_1_n_0\,
      Q => \^adc_control.data_out_reg[3]_0\,
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => \adc_control.data_out[4]_i_1_n_0\,
      Q => \^adc_control.data_out_reg[4]_0\,
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => \adc_control.data_out[5]_i_1_n_0\,
      Q => \^data_out\(0),
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[6]_i_1_n_0\,
      D => \adc_control.data_out[6]_i_2_n_0\,
      Q => \^adc_control.data_out_reg[6]_0\(1),
      R => '0'
    );
\adc_control.data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => \adc_control.data_out[7]_i_1_n_0\,
      Q => \^data_out\(1),
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => adc_active,
      Q => \^data_out\(2),
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sim_wr_done,
      D => sim_active,
      Q => \^data_out\(3),
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.padr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(0),
      Q => padr(0),
      R => '0'
    );
\adc_control.padr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(9),
      Q => padr(10),
      R => '0'
    );
\adc_control.padr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^adc_control.address_reg[1]_0\,
      Q => padr(1),
      R => '0'
    );
\adc_control.padr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(1),
      Q => padr(2),
      R => '0'
    );
\adc_control.padr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(2),
      Q => padr(3),
      R => '0'
    );
\adc_control.padr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(3),
      Q => padr(4),
      R => '0'
    );
\adc_control.padr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(4),
      Q => padr(5),
      R => '0'
    );
\adc_control.padr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(5),
      Q => padr(6),
      R => '0'
    );
\adc_control.padr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(6),
      Q => padr(7),
      R => '0'
    );
\adc_control.padr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(7),
      Q => padr(8),
      R => '0'
    );
\adc_control.padr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(8),
      Q => padr(9),
      R => '0'
    );
\adc_control.pdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_3_n_0\,
      I1 => \adc_control.pdata[31]_i_4_n_0\,
      I2 => \adc_control.pdata[31]_i_5_n_0\,
      I3 => resetn,
      O => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => p_0_in_0(10),
      I2 => p_0_in_0(9),
      I3 => p_0_in_0(8),
      O => \adc_control.pdata[31]_i_10_n_0\
    );
\adc_control.pdata[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(2),
      O => \adc_control.pdata[31]_i_11_n_0\
    );
\adc_control.pdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040404FF"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_5_n_0\,
      I1 => \adc_control.pdata[31]_i_4_n_0\,
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => \adc_control.pdata[31]_i_6_n_0\,
      I4 => \cmd_start0_inferred__0/i__carry__0_n_5\,
      O => \adc_control.pdata[31]_i_2_n_0\
    );
\adc_control.pdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_7_n_0\,
      I1 => \adc_control.pdata[31]_i_8_n_0\,
      I2 => \adc_control.cdata_reg_n_0_[1]\,
      I3 => \adc_control.cdata_reg_n_0_[0]\,
      I4 => \adc_control.pdata[31]_i_9_n_0\,
      I5 => \adc_control.adc_stop_i_2_n_0\,
      O => \adc_control.pdata[31]_i_3_n_0\
    );
\adc_control.pdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[28]\,
      I1 => \adc_control.cdata_reg_n_0_[29]\,
      I2 => \adc_control.cdata_reg_n_0_[30]\,
      I3 => \adc_control.cdata_reg_n_0_[31]\,
      I4 => \adc_control.pdata[31]_i_10_n_0\,
      O => \adc_control.pdata[31]_i_4_n_0\
    );
\adc_control.pdata[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(5),
      I2 => p_0_in_0(6),
      I3 => p_0_in_0(7),
      I4 => \adc_control.pdata[31]_i_11_n_0\,
      O => \adc_control.pdata[31]_i_5_n_0\
    );
\adc_control.pdata[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.pdata[31]_i_6_n_0\
    );
\adc_control.pdata[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[11]\,
      I1 => adc_chan(2),
      I2 => adc_chan(1),
      I3 => adc_chan(0),
      O => \adc_control.pdata[31]_i_7_n_0\
    );
\adc_control.pdata[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[14]\,
      I1 => \adc_control.cdata_reg_n_0_[13]\,
      I2 => \adc_control.cdata_reg_n_0_[15]\,
      I3 => \adc_control.cdata_reg_n_0_[12]\,
      O => \adc_control.pdata[31]_i_8_n_0\
    );
\adc_control.pdata[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[2]\,
      I1 => \adc_control.cdata_reg_n_0_[3]\,
      O => \adc_control.pdata[31]_i_9_n_0\
    );
\adc_control.pdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(0),
      Q => pdata(0),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(10),
      Q => pdata(10),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(11),
      Q => pdata(11),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(12),
      Q => pdata(12),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(13),
      Q => pdata(13),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(14),
      Q => pdata(14),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(15),
      Q => pdata(15),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(16),
      Q => pdata(16),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(17),
      Q => pdata(17),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(18),
      Q => pdata(18),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(19),
      Q => pdata(19),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(1),
      Q => pdata(1),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(20),
      Q => pdata(20),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(21),
      Q => pdata(21),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(22),
      Q => pdata(22),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(23),
      Q => pdata(23),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(24),
      Q => pdata(24),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(25),
      Q => pdata(25),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(26),
      Q => pdata(26),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(27),
      Q => pdata(27),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(28),
      Q => pdata(28),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(29),
      Q => pdata(29),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(2),
      Q => pdata(2),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(30),
      Q => pdata(30),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(31),
      Q => pdata(31),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(3),
      Q => pdata(3),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(4),
      Q => pdata(4),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(5),
      Q => pdata(5),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(6),
      Q => pdata(6),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(7),
      Q => pdata(7),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(8),
      Q => pdata(8),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.pdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.pdata[31]_i_2_n_0\,
      D => data_in(9),
      Q => pdata(9),
      R => \adc_control.pdata[31]_i_1_n_0\
    );
\adc_control.sim_channel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cmd_start_reg_n_0\,
      D => adc_chan(0),
      Q => sim_channel(0),
      R => '0'
    );
\adc_control.sim_channel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cmd_start_reg_n_0\,
      D => adc_chan(1),
      Q => sim_channel(1),
      R => '0'
    );
\adc_control.sim_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => \adc_control.sim_low_wr_i_2_n_0\,
      I1 => \adc_control.sim_wr_count_reg\(10),
      I2 => sim_wr_pend,
      I3 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.sim_data[31]_i_1_n_0\
    );
\adc_control.sim_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(0),
      Q => sim_data(0),
      R => '0'
    );
\adc_control.sim_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(10),
      Q => sim_data(10),
      R => '0'
    );
\adc_control.sim_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(11),
      Q => sim_data(11),
      R => '0'
    );
\adc_control.sim_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(12),
      Q => sim_data(12),
      R => '0'
    );
\adc_control.sim_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(13),
      Q => sim_data(13),
      R => '0'
    );
\adc_control.sim_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(14),
      Q => sim_data(14),
      R => '0'
    );
\adc_control.sim_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(15),
      Q => sim_data(15),
      R => '0'
    );
\adc_control.sim_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(16),
      Q => sim_data(16),
      R => '0'
    );
\adc_control.sim_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(17),
      Q => sim_data(17),
      R => '0'
    );
\adc_control.sim_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(18),
      Q => sim_data(18),
      R => '0'
    );
\adc_control.sim_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(19),
      Q => sim_data(19),
      R => '0'
    );
\adc_control.sim_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(1),
      Q => sim_data(1),
      R => '0'
    );
\adc_control.sim_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(20),
      Q => sim_data(20),
      R => '0'
    );
\adc_control.sim_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(21),
      Q => sim_data(21),
      R => '0'
    );
\adc_control.sim_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(22),
      Q => sim_data(22),
      R => '0'
    );
\adc_control.sim_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(23),
      Q => sim_data(23),
      R => '0'
    );
\adc_control.sim_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(24),
      Q => sim_data(24),
      R => '0'
    );
\adc_control.sim_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(25),
      Q => sim_data(25),
      R => '0'
    );
\adc_control.sim_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(26),
      Q => sim_data(26),
      R => '0'
    );
\adc_control.sim_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(27),
      Q => sim_data(27),
      R => '0'
    );
\adc_control.sim_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(28),
      Q => sim_data(28),
      R => '0'
    );
\adc_control.sim_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(29),
      Q => sim_data(29),
      R => '0'
    );
\adc_control.sim_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(2),
      Q => sim_data(2),
      R => '0'
    );
\adc_control.sim_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(30),
      Q => sim_data(30),
      R => '0'
    );
\adc_control.sim_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(31),
      Q => sim_data(31),
      R => '0'
    );
\adc_control.sim_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(3),
      Q => sim_data(3),
      R => '0'
    );
\adc_control.sim_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(4),
      Q => sim_data(4),
      R => '0'
    );
\adc_control.sim_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(5),
      Q => sim_data(5),
      R => '0'
    );
\adc_control.sim_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(6),
      Q => sim_data(6),
      R => '0'
    );
\adc_control.sim_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(7),
      Q => sim_data(7),
      R => '0'
    );
\adc_control.sim_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(8),
      Q => sim_data(8),
      R => '0'
    );
\adc_control.sim_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_data[31]_i_1_n_0\,
      D => data_in(9),
      Q => sim_data(9),
      R => '0'
    );
\adc_control.sim_high_wr_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F300A200"
    )
        port map (
      I0 => adc_chan(2),
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => \adc_control.sim_wr_count_reg\(10),
      I3 => sim_wr_pend,
      I4 => \^sim_high_wr\,
      O => \adc_control.sim_high_wr_i_1_n_0\
    );
\adc_control.sim_high_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_high_wr_i_1_n_0\,
      Q => \^sim_high_wr\,
      R => \adc_control.cmd_start_reg_n_0\
    );
\adc_control.sim_low_wr_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3005100"
    )
        port map (
      I0 => adc_chan(2),
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => \adc_control.sim_wr_count_reg\(10),
      I3 => sim_wr_pend,
      I4 => \^sim_low_wr\,
      O => \adc_control.sim_low_wr_i_1_n_0\
    );
\adc_control.sim_low_wr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(8),
      I1 => \adc_control.sim_wr_count_reg\(5),
      I2 => \adc_control.sim_wr_count[5]_i_2_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(6),
      I4 => \adc_control.sim_wr_count_reg\(7),
      I5 => \adc_control.sim_wr_count_reg\(9),
      O => \adc_control.sim_low_wr_i_2_n_0\
    );
\adc_control.sim_low_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_low_wr_i_1_n_0\,
      Q => \^sim_low_wr\,
      R => \adc_control.cmd_start_reg_n_0\
    );
\adc_control.sim_start_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[0]\,
      I1 => \adc_control.adc_start_i_3_n_0\,
      I2 => \adc_control.cdata_reg_n_0_[1]\,
      I3 => \^sim_start\,
      O => \adc_control.sim_start_i_1_n_0\
    );
\adc_control.sim_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_start_i_1_n_0\,
      Q => \^sim_start\,
      R => \adc_control.adc_start_i_1_n_0\
    );
\adc_control.sim_wr_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"606F"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(0),
      O => p_0_in(0)
    );
\adc_control.sim_wr_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sim_wr_start,
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => sim_wr_pend,
      O => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \adc_control.cmd_start_reg_n_0\,
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => \adc_control.sim_wr_count_reg\(10),
      I3 => sim_wr_pend,
      O => \adc_control.sim_wr_count[10]_i_2_n_0\
    );
\adc_control.sim_wr_count[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A006AFF6AFF6A00"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => p_0_in_0(10),
      I2 => \adc_control.sim_wr_count[10]_i_4_n_0\,
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(10),
      I5 => \adc_control.sim_low_wr_i_2_n_0\,
      O => p_0_in(10)
    );
\adc_control.sim_wr_count[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => p_0_in_0(7),
      I2 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I3 => p_0_in_0(6),
      I4 => p_0_in_0(8),
      O => \adc_control.sim_wr_count[10]_i_4_n_0\
    );
\adc_control.sim_wr_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFF6A006A006AFF"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(0),
      I5 => \adc_control.sim_wr_count_reg\(1),
      O => p_0_in(1)
    );
\adc_control.sim_wr_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F909090909F"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \adc_control.sim_wr_count[2]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(0),
      I4 => \adc_control.sim_wr_count_reg\(1),
      I5 => \adc_control.sim_wr_count_reg\(2),
      O => p_0_in(2)
    );
\adc_control.sim_wr_count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      O => \adc_control.sim_wr_count[2]_i_2_n_0\
    );
\adc_control.sim_wr_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => \adc_control.sim_wr_count[4]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count[3]_i_2_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(3),
      O => p_0_in(3)
    );
\adc_control.sim_wr_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(2),
      I1 => \adc_control.sim_wr_count_reg\(1),
      I2 => \adc_control.sim_wr_count_reg\(0),
      O => \adc_control.sim_wr_count[3]_i_2_n_0\
    );
\adc_control.sim_wr_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AFF9A009A009AFF"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => \adc_control.sim_wr_count[4]_i_2_n_0\,
      I2 => p_0_in_0(4),
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count[4]_i_3_n_0\,
      I5 => \adc_control.sim_wr_count_reg\(4),
      O => p_0_in(4)
    );
\adc_control.sim_wr_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      O => \adc_control.sim_wr_count[4]_i_2_n_0\
    );
\adc_control.sim_wr_count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(3),
      I1 => \adc_control.sim_wr_count_reg\(0),
      I2 => \adc_control.sim_wr_count_reg\(1),
      I3 => \adc_control.sim_wr_count_reg\(2),
      O => \adc_control.sim_wr_count[4]_i_3_n_0\
    );
\adc_control.sim_wr_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(5),
      I4 => \adc_control.sim_wr_count[5]_i_2_n_0\,
      O => p_0_in(5)
    );
\adc_control.sim_wr_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(4),
      I1 => \adc_control.sim_wr_count_reg\(2),
      I2 => \adc_control.sim_wr_count_reg\(1),
      I3 => \adc_control.sim_wr_count_reg\(0),
      I4 => \adc_control.sim_wr_count_reg\(3),
      O => \adc_control.sim_wr_count[5]_i_2_n_0\
    );
\adc_control.sim_wr_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AFF9A009A009AFF"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I2 => p_0_in_0(6),
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count[6]_i_3_n_0\,
      I5 => \adc_control.sim_wr_count_reg\(6),
      O => p_0_in(6)
    );
\adc_control.sim_wr_count[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(5),
      O => \adc_control.sim_wr_count[6]_i_2_n_0\
    );
\adc_control.sim_wr_count[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(5),
      I1 => \adc_control.sim_wr_count_reg\(3),
      I2 => \adc_control.sim_wr_count_reg\(0),
      I3 => \adc_control.sim_wr_count_reg\(1),
      I4 => \adc_control.sim_wr_count_reg\(2),
      I5 => \adc_control.sim_wr_count_reg\(4),
      O => \adc_control.sim_wr_count[6]_i_3_n_0\
    );
\adc_control.sim_wr_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => p_0_in_0(8),
      I1 => \adc_control.sim_wr_count[7]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(7),
      I4 => \adc_control.sim_wr_count[8]_i_3_n_0\,
      O => p_0_in(7)
    );
\adc_control.sim_wr_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I2 => p_0_in_0(6),
      O => \adc_control.sim_wr_count[7]_i_2_n_0\
    );
\adc_control.sim_wr_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60606F6F606F60"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => \adc_control.sim_wr_count[8]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(8),
      I4 => \adc_control.sim_wr_count_reg\(7),
      I5 => \adc_control.sim_wr_count[8]_i_3_n_0\,
      O => p_0_in(8)
    );
\adc_control.sim_wr_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in_0(8),
      I1 => p_0_in_0(6),
      I2 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I3 => p_0_in_0(7),
      O => \adc_control.sim_wr_count[8]_i_2_n_0\
    );
\adc_control.sim_wr_count[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(6),
      I1 => \adc_control.sim_wr_count[5]_i_2_n_0\,
      I2 => \adc_control.sim_wr_count_reg\(5),
      O => \adc_control.sim_wr_count[8]_i_3_n_0\
    );
\adc_control.sim_wr_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => p_0_in_0(10),
      I1 => \adc_control.sim_wr_count[10]_i_4_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(9),
      I4 => \adc_control.sim_wr_count[9]_i_2_n_0\,
      O => p_0_in(9)
    );
\adc_control.sim_wr_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(7),
      I1 => \adc_control.sim_wr_count_reg\(6),
      I2 => \adc_control.sim_wr_count[5]_i_2_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(5),
      I4 => \adc_control.sim_wr_count_reg\(8),
      O => \adc_control.sim_wr_count[9]_i_2_n_0\
    );
\adc_control.sim_wr_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(0),
      Q => \adc_control.sim_wr_count_reg\(0),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(10),
      Q => \adc_control.sim_wr_count_reg\(10),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(1),
      Q => \adc_control.sim_wr_count_reg\(1),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(2),
      Q => \adc_control.sim_wr_count_reg\(2),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(3),
      Q => \adc_control.sim_wr_count_reg\(3),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(4),
      Q => \adc_control.sim_wr_count_reg\(4),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(5),
      Q => \adc_control.sim_wr_count_reg\(5),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(6),
      Q => \adc_control.sim_wr_count_reg\(6),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(7),
      Q => \adc_control.sim_wr_count_reg\(7),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(8),
      Q => \adc_control.sim_wr_count_reg\(8),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => p_0_in(9),
      Q => \adc_control.sim_wr_count_reg\(9),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_done_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004440"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(10),
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => sim_wr_pend,
      I3 => sim_wr_start,
      I4 => sim_wr_done,
      O => \adc_control.sim_wr_done_i_1_n_0\
    );
\adc_control.sim_wr_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_done_i_1_n_0\,
      Q => sim_wr_done,
      R => '0'
    );
\adc_control.sim_wr_pend_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => sim_wr_done,
      I1 => sim_wr_start,
      I2 => sim_wr_pend,
      O => \adc_control.sim_wr_pend_i_1_n_0\
    );
\adc_control.sim_wr_pend_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_pend_i_1_n_0\,
      Q => sim_wr_pend,
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.sim_wr_start_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \adc_control.adc_start_i_3_n_0\,
      I1 => \adc_control.cdata_reg_n_0_[0]\,
      I2 => \adc_control.cdata_reg_n_0_[1]\,
      I3 => sim_wr_start,
      O => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.sim_wr_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_start_i_1_n_0\,
      Q => sim_wr_start,
      R => \adc_control.adc_start_i_1_n_0\
    );
\adc_control.wr_en[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.wr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sim_wr_done,
      Q => wr_en(0),
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\cmd_start0_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \cmd_start0_inferred__0/i__carry_n_0\,
      CO(6) => \cmd_start0_inferred__0/i__carry_n_1\,
      CO(5) => \cmd_start0_inferred__0/i__carry_n_2\,
      CO(4) => \cmd_start0_inferred__0/i__carry_n_3\,
      CO(3) => \cmd_start0_inferred__0/i__carry_n_4\,
      CO(2) => \cmd_start0_inferred__0/i__carry_n_5\,
      CO(1) => \cmd_start0_inferred__0/i__carry_n_6\,
      CO(0) => \cmd_start0_inferred__0/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_cmd_start0_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_1_n_0\,
      S(6) => \i__carry_i_2_n_0\,
      S(5) => \i__carry_i_3_n_0\,
      S(4) => \i__carry_i_4_n_0\,
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\cmd_start0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \cmd_start0_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_cmd_start0_inferred__0/i__carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \cmd_start0_inferred__0/i__carry__0_n_5\,
      CO(1) => \cmd_start0_inferred__0/i__carry__0_n_6\,
      CO(0) => \cmd_start0_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_cmd_start0_inferred__0/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \i__carry__0_i_1_n_0\,
      S(1) => \i__carry__0_i_2_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pdata(31),
      I1 => \adc_control.cdata_reg_n_0_[31]\,
      I2 => pdata(30),
      I3 => \adc_control.cdata_reg_n_0_[30]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => pdata(27),
      I2 => \adc_control.cdata_reg_n_0_[28]\,
      I3 => pdata(28),
      I4 => pdata(29),
      I5 => \adc_control.cdata_reg_n_0_[29]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(26),
      I1 => p_0_in_0(10),
      I2 => p_0_in_0(8),
      I3 => pdata(24),
      I4 => p_0_in_0(9),
      I5 => pdata(25),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(22),
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(7),
      I3 => pdata(23),
      I4 => p_0_in_0(5),
      I5 => pdata(21),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(20),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(3),
      I3 => pdata(19),
      I4 => p_0_in_0(2),
      I5 => pdata(18),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[15]\,
      I1 => pdata(15),
      I2 => p_0_in_0(0),
      I3 => pdata(16),
      I4 => pdata(17),
      I5 => p_0_in_0(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[14]\,
      I1 => pdata(14),
      I2 => \adc_control.cdata_reg_n_0_[12]\,
      I3 => pdata(12),
      I4 => pdata(13),
      I5 => \adc_control.cdata_reg_n_0_[13]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(10),
      I1 => adc_chan(2),
      I2 => \adc_control.cdata_reg_n_0_[11]\,
      I3 => pdata(11),
      I4 => adc_chan(1),
      I5 => pdata(9),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => adc_chan(0),
      I1 => pdata(8),
      I2 => \adc_control.cdata_reg_n_0_[6]\,
      I3 => pdata(6),
      I4 => pdata(7),
      I5 => \adc_control.cdata_reg_n_0_[7]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[4]\,
      I1 => pdata(4),
      I2 => \adc_control.cdata_reg_n_0_[3]\,
      I3 => pdata(3),
      I4 => pdata(5),
      I5 => \adc_control.cdata_reg_n_0_[5]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(2),
      I1 => \adc_control.cdata_reg_n_0_[2]\,
      I2 => \adc_control.cdata_reg_n_0_[1]\,
      I3 => pdata(1),
      I4 => \adc_control.cdata_reg_n_0_[0]\,
      I5 => pdata(0),
      O => \i__carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_adc_control_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    bram_adr_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_adr_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_start : out STD_LOGIC;
    adc_stop : out STD_LOGIC;
    sim_start : out STD_LOGIC;
    adc_active : in STD_LOGIC;
    sim_active : in STD_LOGIC;
    sim_low_wr : out STD_LOGIC;
    sim_high_wr : out STD_LOGIC;
    sim_channel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_adc_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_adc_control_0_0 : entity is "ps_adc_control_0_0,adc_control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_adc_control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_adc_control_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_adc_control_0_0 : entity is "adc_control,Vivado 2025.1";
end ps_adc_control_0_0;

architecture STRUCTURE of ps_adc_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_adr_in\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^data_out\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal n_0_88 : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^bram_adr_in\(12 downto 2) <= bram_adr_in(12 downto 2);
  bram_adr_out(10 downto 0) <= \^bram_adr_in\(12 downto 2);
  data_out(31) <= \<const0>\;
  data_out(30) <= \<const0>\;
  data_out(29) <= \<const0>\;
  data_out(28) <= \<const0>\;
  data_out(27) <= \<const0>\;
  data_out(26) <= \<const0>\;
  data_out(25) <= \<const0>\;
  data_out(24) <= \<const0>\;
  data_out(23) <= \<const0>\;
  data_out(22) <= \<const0>\;
  data_out(21) <= \<const0>\;
  data_out(20) <= \<const0>\;
  data_out(19) <= \<const0>\;
  data_out(18) <= \<const0>\;
  data_out(17) <= \<const0>\;
  data_out(16) <= \<const0>\;
  data_out(15) <= \<const0>\;
  data_out(14) <= \<const0>\;
  data_out(13) <= \<const0>\;
  data_out(12) <= \<const0>\;
  data_out(11) <= \<const0>\;
  data_out(10) <= \<const0>\;
  data_out(9 downto 0) <= \^data_out\(9 downto 0);
  wr_en(3) <= \^wr_en\(0);
  wr_en(2) <= \^wr_en\(0);
  wr_en(1) <= \^wr_en\(0);
  wr_en(0) <= \^wr_en\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_88: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => n_0_88
    );
inst: entity work.ps_adc_control_0_0_adc_control
     port map (
      Q(9 downto 1) => address(10 downto 2),
      Q(0) => address(0),
      adc_active => adc_active,
      \adc_control.address_reg[1]_0\ => address(1),
      \adc_control.data_out_reg[0]_0\ => \^data_out\(0),
      \adc_control.data_out_reg[2]_0\ => \^data_out\(2),
      \adc_control.data_out_reg[3]_0\ => \^data_out\(3),
      \adc_control.data_out_reg[4]_0\ => \^data_out\(4),
      \adc_control.data_out_reg[6]_0\(1) => \^data_out\(6),
      \adc_control.data_out_reg[6]_0\(0) => \^data_out\(1),
      adc_start => adc_start,
      adc_stop => adc_stop,
      clk => clk,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(3 downto 1) => \^data_out\(9 downto 7),
      data_out(0) => \^data_out\(5),
      resetn => resetn,
      sim_active => sim_active,
      sim_channel(1 downto 0) => sim_channel(1 downto 0),
      sim_data(31 downto 0) => sim_data(31 downto 0),
      sim_high_wr => sim_high_wr,
      sim_low_wr => sim_low_wr,
      sim_start => sim_start,
      wr_en(0) => \^wr_en\(0)
    );
end STRUCTURE;
