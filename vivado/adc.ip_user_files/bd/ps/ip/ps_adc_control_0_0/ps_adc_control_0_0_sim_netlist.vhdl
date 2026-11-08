-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Fri May 15 18:56:53 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_adc_control_0_0/ps_adc_control_0_0_sim_netlist.vhdl
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
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    bram_adr_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_adr_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sim_start : out STD_LOGIC;
    sim_active : in STD_LOGIC;
    config_low_wr : out STD_LOGIC;
    config_high_wr : out STD_LOGIC;
    config_adr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sim_low_wr : out STD_LOGIC;
    sim_high_wr : out STD_LOGIC;
    sim_channel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_adc_control_0_0_adc_control : entity is "adc_control";
end ps_adc_control_0_0_adc_control;

architecture STRUCTURE of ps_adc_control_0_0_adc_control is
  signal \<const0>\ : STD_LOGIC;
  signal \adc_control.address[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.address[10]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.address[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[1]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.address[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.address[9]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.cdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.cdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[10]\ : STD_LOGIC;
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
  signal \adc_control.cdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \adc_control.cdata_reg_n_0_[9]\ : STD_LOGIC;
  signal \adc_control.cmd_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.cmd_start_reg_n_0\ : STD_LOGIC;
  signal \adc_control.config_adr[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_adr[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.config_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_high_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_low_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_low_wr_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_count_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \adc_control.config_wr_done_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_pend_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.config_wr_start_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_12_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_14_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_15_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_16_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_17_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_18_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_19_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_20_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_21_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_22_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_23_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_24_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \adc_control.pdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_1\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_2\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_3\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_4\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_5\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_6\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_13_n_7\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_6_n_5\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_6_n_6\ : STD_LOGIC;
  signal \adc_control.pdata_reg[31]_i_6_n_7\ : STD_LOGIC;
  signal \adc_control.sim_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_high_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_low_wr_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_start_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_start_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_count_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \adc_control.sim_wr_done_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_pend_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.sim_wr_start_i_1_n_0\ : STD_LOGIC;
  signal \adc_control.wr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^bram_adr_in\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^config_adr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^config_high_wr\ : STD_LOGIC;
  signal \^config_low_wr\ : STD_LOGIC;
  signal config_wr_done : STD_LOGIC;
  signal config_wr_pend : STD_LOGIC;
  signal config_wr_start : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal data_out0_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal padr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal pdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sim_high_wr\ : STD_LOGIC;
  signal \^sim_low_wr\ : STD_LOGIC;
  signal \^sim_start\ : STD_LOGIC;
  signal sim_wr_done : STD_LOGIC;
  signal sim_wr_pend : STD_LOGIC;
  signal sim_wr_start : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal wr_en0 : STD_LOGIC;
  signal \NLW_adc_control.pdata_reg[31]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_adc_control.pdata_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_adc_control.pdata_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc_control.address[10]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \adc_control.address[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adc_control.address[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_control.address[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_control.address[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_control.address[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_control.config_adr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adc_control.config_adr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adc_control.config_adr[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc_control.config_adr[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc_control.config_adr[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adc_control.config_adr[7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc_control.config_wr_count[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc_control.data_out[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adc_control.data_out[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \adc_control.data_out[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adc_control.data_out[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adc_control.data_out[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \adc_control.data_out[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_control.data_out[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_control.data_out[9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adc_control.pdata[31]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc_control.pdata[31]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc_control.sim_start_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[8]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_count[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_pend_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adc_control.sim_wr_start_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adc_control.wr_en[0]_i_2\ : label is "soft_lutpair13";
begin
  \^bram_adr_in\(12 downto 2) <= bram_adr_in(12 downto 2);
  address(10 downto 0) <= \^address\(10 downto 0);
  bram_adr_out(10 downto 0) <= \^bram_adr_in\(12 downto 2);
  config_adr(7 downto 0) <= \^config_adr\(7 downto 0);
  config_high_wr <= \^config_high_wr\;
  config_low_wr <= \^config_low_wr\;
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
  data_out(9) <= \^data_out\(9);
  data_out(8) <= \<const0>\;
  data_out(7 downto 0) <= \^data_out\(7 downto 0);
  sim_high_wr <= \^sim_high_wr\;
  sim_low_wr <= \^sim_low_wr\;
  sim_start <= \^sim_start\;
  wr_en(3) <= \^wr_en\(3);
  wr_en(2) <= \^wr_en\(3);
  wr_en(1) <= \^wr_en\(3);
  wr_en(0) <= \^wr_en\(3);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\adc_control.address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF1FFFF"
    )
        port map (
      I0 => \adc_control.address[1]_i_2_n_0\,
      I1 => \^address\(0),
      I2 => sim_wr_done,
      I3 => config_wr_done,
      I4 => resetn,
      I5 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.address[0]_i_1_n_0\
    );
\adc_control.address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \^address\(9),
      I1 => \adc_control.address[10]_i_2_n_0\,
      I2 => \^address\(8),
      I3 => \^address\(10),
      I4 => \adc_control.address[10]_i_3_n_0\,
      O => \adc_control.address[10]_i_1_n_0\
    );
\adc_control.address[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \^address\(7),
      I1 => \^address\(6),
      I2 => \adc_control.address[6]_i_2_n_0\,
      I3 => \^address\(4),
      I4 => \^address\(3),
      I5 => \^address\(5),
      O => \adc_control.address[10]_i_2_n_0\
    );
\adc_control.address[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => \adc_control.cmd_start_reg_n_0\,
      I1 => \adc_control.address[10]_i_4_n_0\,
      I2 => config_wr_pend,
      I3 => config_wr_start,
      I4 => sim_wr_start,
      I5 => sim_wr_pend,
      O => \adc_control.address[10]_i_3_n_0\
    );
\adc_control.address[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => sim_wr_done,
      I1 => config_wr_done,
      I2 => resetn,
      O => \adc_control.address[10]_i_4_n_0\
    );
\adc_control.address[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000060000"
    )
        port map (
      I0 => \^address\(1),
      I1 => \^address\(0),
      I2 => sim_wr_done,
      I3 => config_wr_done,
      I4 => resetn,
      I5 => \adc_control.address[1]_i_2_n_0\,
      O => \adc_control.address[1]_i_1_n_0\
    );
\adc_control.address[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => sim_wr_start,
      I2 => config_wr_start,
      I3 => config_wr_pend,
      O => \adc_control.address[1]_i_2_n_0\
    );
\adc_control.address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(1),
      I2 => \^address\(0),
      I3 => \^address\(2),
      O => \adc_control.address[2]_i_1_n_0\
    );
\adc_control.address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(2),
      I2 => \^address\(0),
      I3 => \^address\(1),
      I4 => \^address\(3),
      O => \adc_control.address[3]_i_1_n_0\
    );
\adc_control.address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(4),
      I2 => \^address\(3),
      I3 => \^address\(2),
      I4 => \^address\(0),
      I5 => \^address\(1),
      O => \adc_control.address[4]_i_1_n_0\
    );
\adc_control.address[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(3),
      I2 => \^address\(4),
      I3 => \adc_control.address[6]_i_2_n_0\,
      I4 => \^address\(5),
      O => \adc_control.address[5]_i_1_n_0\
    );
\adc_control.address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \adc_control.address[6]_i_2_n_0\,
      I2 => \^address\(4),
      I3 => \^address\(3),
      I4 => \^address\(5),
      I5 => \^address\(6),
      O => \adc_control.address[6]_i_1_n_0\
    );
\adc_control.address[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^address\(1),
      I1 => \^address\(0),
      I2 => \^address\(2),
      O => \adc_control.address[6]_i_2_n_0\
    );
\adc_control.address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \adc_control.address[9]_i_2_n_0\,
      I2 => \^address\(6),
      I3 => \^address\(7),
      O => \adc_control.address[7]_i_1_n_0\
    );
\adc_control.address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(7),
      I2 => \^address\(6),
      I3 => \adc_control.address[9]_i_2_n_0\,
      I4 => \^address\(8),
      O => \adc_control.address[8]_i_1_n_0\
    );
\adc_control.address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \adc_control.address[10]_i_3_n_0\,
      I1 => \^address\(8),
      I2 => \adc_control.address[9]_i_2_n_0\,
      I3 => \^address\(6),
      I4 => \^address\(7),
      I5 => \^address\(9),
      O => \adc_control.address[9]_i_1_n_0\
    );
\adc_control.address[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^address\(1),
      I1 => \^address\(0),
      I2 => \^address\(2),
      I3 => \^address\(4),
      I4 => \^address\(3),
      I5 => \^address\(5),
      O => \adc_control.address[9]_i_2_n_0\
    );
\adc_control.address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[0]_i_1_n_0\,
      Q => \^address\(0),
      R => '0'
    );
\adc_control.address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[10]_i_1_n_0\,
      Q => \^address\(10),
      R => '0'
    );
\adc_control.address_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[1]_i_1_n_0\,
      Q => \^address\(1),
      S => \adc_control.cmd_start_reg_n_0\
    );
\adc_control.address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[2]_i_1_n_0\,
      Q => \^address\(2),
      R => '0'
    );
\adc_control.address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[3]_i_1_n_0\,
      Q => \^address\(3),
      R => '0'
    );
\adc_control.address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[4]_i_1_n_0\,
      Q => \^address\(4),
      R => '0'
    );
\adc_control.address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[5]_i_1_n_0\,
      Q => \^address\(5),
      R => '0'
    );
\adc_control.address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[6]_i_1_n_0\,
      Q => \^address\(6),
      R => '0'
    );
\adc_control.address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[7]_i_1_n_0\,
      Q => \^address\(7),
      R => '0'
    );
\adc_control.address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[8]_i_1_n_0\,
      Q => \^address\(8),
      R => '0'
    );
\adc_control.address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.address[9]_i_1_n_0\,
      Q => \^address\(9),
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
      Q => \adc_control.cdata_reg_n_0_[10]\,
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
      Q => p_0_in(0),
      R => '0'
    );
\adc_control.cdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(17),
      Q => p_0_in(1),
      R => '0'
    );
\adc_control.cdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(18),
      Q => p_0_in(2),
      R => '0'
    );
\adc_control.cdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(19),
      Q => p_0_in(3),
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
      Q => p_0_in(4),
      R => '0'
    );
\adc_control.cdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(21),
      Q => p_0_in(5),
      R => '0'
    );
\adc_control.cdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(22),
      Q => p_0_in(6),
      R => '0'
    );
\adc_control.cdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(23),
      Q => p_0_in(7),
      R => '0'
    );
\adc_control.cdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(24),
      Q => p_0_in(8),
      R => '0'
    );
\adc_control.cdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(25),
      Q => p_0_in(9),
      R => '0'
    );
\adc_control.cdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(26),
      Q => p_0_in(10),
      R => '0'
    );
\adc_control.cdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(27),
      Q => p_0_in(11),
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
      Q => \adc_control.cdata_reg_n_0_[8]\,
      R => '0'
    );
\adc_control.cdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cdata[31]_i_1_n_0\,
      D => data_in(9),
      Q => \adc_control.cdata_reg_n_0_[9]\,
      R => '0'
    );
\adc_control.cmd_start_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404040404040"
    )
        port map (
      I0 => \adc_control.pdata_reg[31]_i_6_n_5\,
      I1 => \adc_control.pdata[31]_i_7_n_0\,
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
\adc_control.config_adr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^config_adr\(0),
      O => \p_0_in__2\(0)
    );
\adc_control.config_adr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^config_adr\(0),
      I1 => \^config_adr\(1),
      O => \p_0_in__2\(1)
    );
\adc_control.config_adr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^config_adr\(2),
      I1 => \^config_adr\(1),
      I2 => \^config_adr\(0),
      O => \p_0_in__2\(2)
    );
\adc_control.config_adr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^config_adr\(3),
      I1 => \^config_adr\(0),
      I2 => \^config_adr\(1),
      I3 => \^config_adr\(2),
      O => \p_0_in__2\(3)
    );
\adc_control.config_adr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^config_adr\(4),
      I1 => \^config_adr\(2),
      I2 => \^config_adr\(1),
      I3 => \^config_adr\(0),
      I4 => \^config_adr\(3),
      O => \p_0_in__2\(4)
    );
\adc_control.config_adr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^config_adr\(5),
      I1 => \^config_adr\(3),
      I2 => \^config_adr\(0),
      I3 => \^config_adr\(1),
      I4 => \^config_adr\(2),
      I5 => \^config_adr\(4),
      O => \p_0_in__2\(5)
    );
\adc_control.config_adr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^config_adr\(6),
      I1 => \adc_control.config_adr[7]_i_3_n_0\,
      O => \p_0_in__2\(6)
    );
\adc_control.config_adr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5557"
    )
        port map (
      I0 => config_wr_pend,
      I1 => \adc_control.config_wr_count_reg\(7),
      I2 => \adc_control.config_wr_count_reg\(6),
      I3 => \adc_control.config_low_wr_i_2_n_0\,
      I4 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^config_adr\(7),
      I1 => \adc_control.config_adr[7]_i_3_n_0\,
      I2 => \^config_adr\(6),
      O => \p_0_in__2\(7)
    );
\adc_control.config_adr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^config_adr\(5),
      I1 => \^config_adr\(3),
      I2 => \^config_adr\(0),
      I3 => \^config_adr\(1),
      I4 => \^config_adr\(2),
      I5 => \^config_adr\(4),
      O => \adc_control.config_adr[7]_i_3_n_0\
    );
\adc_control.config_adr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(0),
      Q => \^config_adr\(0),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(1),
      Q => \^config_adr\(1),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(2),
      Q => \^config_adr\(2),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(3),
      Q => \^config_adr\(3),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(4),
      Q => \^config_adr\(4),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(5),
      Q => \^config_adr\(5),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(6),
      Q => \^config_adr\(6),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_adr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__2\(7),
      Q => \^config_adr\(7),
      S => \adc_control.config_adr[7]_i_1_n_0\
    );
\adc_control.config_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => config_wr_pend,
      I1 => \adc_control.config_wr_count_reg\(7),
      I2 => \adc_control.config_wr_count_reg\(6),
      I3 => \adc_control.config_low_wr_i_2_n_0\,
      I4 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.config_data[31]_i_1_n_0\
    );
\adc_control.config_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(0),
      Q => config_data(0),
      R => '0'
    );
\adc_control.config_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(10),
      Q => config_data(10),
      R => '0'
    );
\adc_control.config_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(11),
      Q => config_data(11),
      R => '0'
    );
\adc_control.config_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(12),
      Q => config_data(12),
      R => '0'
    );
\adc_control.config_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(13),
      Q => config_data(13),
      R => '0'
    );
\adc_control.config_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(14),
      Q => config_data(14),
      R => '0'
    );
\adc_control.config_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(15),
      Q => config_data(15),
      R => '0'
    );
\adc_control.config_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(16),
      Q => config_data(16),
      R => '0'
    );
\adc_control.config_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(17),
      Q => config_data(17),
      R => '0'
    );
\adc_control.config_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(18),
      Q => config_data(18),
      R => '0'
    );
\adc_control.config_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(19),
      Q => config_data(19),
      R => '0'
    );
\adc_control.config_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(1),
      Q => config_data(1),
      R => '0'
    );
\adc_control.config_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(20),
      Q => config_data(20),
      R => '0'
    );
\adc_control.config_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(21),
      Q => config_data(21),
      R => '0'
    );
\adc_control.config_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(22),
      Q => config_data(22),
      R => '0'
    );
\adc_control.config_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(23),
      Q => config_data(23),
      R => '0'
    );
\adc_control.config_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(24),
      Q => config_data(24),
      R => '0'
    );
\adc_control.config_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(25),
      Q => config_data(25),
      R => '0'
    );
\adc_control.config_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(26),
      Q => config_data(26),
      R => '0'
    );
\adc_control.config_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(27),
      Q => config_data(27),
      R => '0'
    );
\adc_control.config_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(28),
      Q => config_data(28),
      R => '0'
    );
\adc_control.config_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(29),
      Q => config_data(29),
      R => '0'
    );
\adc_control.config_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(2),
      Q => config_data(2),
      R => '0'
    );
\adc_control.config_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(30),
      Q => config_data(30),
      R => '0'
    );
\adc_control.config_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(31),
      Q => config_data(31),
      R => '0'
    );
\adc_control.config_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(3),
      Q => config_data(3),
      R => '0'
    );
\adc_control.config_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(4),
      Q => config_data(4),
      R => '0'
    );
\adc_control.config_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(5),
      Q => config_data(5),
      R => '0'
    );
\adc_control.config_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(6),
      Q => config_data(6),
      R => '0'
    );
\adc_control.config_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(7),
      Q => config_data(7),
      R => '0'
    );
\adc_control.config_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(8),
      Q => config_data(8),
      R => '0'
    );
\adc_control.config_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_data[31]_i_1_n_0\,
      D => data_in(9),
      Q => config_data(9),
      R => '0'
    );
\adc_control.config_high_wr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA80000"
    )
        port map (
      I0 => config_wr_pend,
      I1 => \adc_control.config_wr_count_reg\(7),
      I2 => \adc_control.config_wr_count_reg\(6),
      I3 => \adc_control.config_low_wr_i_2_n_0\,
      I4 => \adc_control.cdata_reg_n_0_[8]\,
      I5 => \^config_high_wr\,
      O => \adc_control.config_high_wr_i_1_n_0\
    );
\adc_control.config_high_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_high_wr_i_1_n_0\,
      Q => \^config_high_wr\,
      R => \adc_control.cmd_start_reg_n_0\
    );
\adc_control.config_low_wr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA80000AAA8"
    )
        port map (
      I0 => config_wr_pend,
      I1 => \adc_control.config_wr_count_reg\(7),
      I2 => \adc_control.config_wr_count_reg\(6),
      I3 => \adc_control.config_low_wr_i_2_n_0\,
      I4 => \adc_control.cdata_reg_n_0_[8]\,
      I5 => \^config_low_wr\,
      O => \adc_control.config_low_wr_i_1_n_0\
    );
\adc_control.config_low_wr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \adc_control.config_wr_count_reg\(3),
      I1 => \adc_control.config_wr_count_reg\(2),
      I2 => \adc_control.config_wr_count_reg\(0),
      I3 => \adc_control.config_wr_count_reg\(1),
      I4 => \adc_control.config_wr_count_reg\(4),
      I5 => \adc_control.config_wr_count_reg\(5),
      O => \adc_control.config_low_wr_i_2_n_0\
    );
\adc_control.config_low_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_low_wr_i_1_n_0\,
      Q => \^config_low_wr\,
      R => \adc_control.cmd_start_reg_n_0\
    );
\adc_control.config_wr_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => \adc_control.config_wr_count_reg\(0),
      O => \p_0_in__1\(0)
    );
\adc_control.config_wr_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \adc_control.config_wr_count_reg\(1),
      I1 => \adc_control.config_wr_count_reg\(0),
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => p_0_in(1),
      O => \p_0_in__1\(1)
    );
\adc_control.config_wr_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => \adc_control.config_wr_count_reg\(2),
      I3 => \adc_control.config_wr_count_reg\(0),
      I4 => \adc_control.config_wr_count_reg\(1),
      O => \p_0_in__1\(2)
    );
\adc_control.config_wr_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE010000FE01"
    )
        port map (
      I0 => \adc_control.config_wr_count_reg\(1),
      I1 => \adc_control.config_wr_count_reg\(0),
      I2 => \adc_control.config_wr_count_reg\(2),
      I3 => \adc_control.config_wr_count_reg\(3),
      I4 => \adc_control.cmd_start_reg_n_0\,
      I5 => p_0_in(3),
      O => \p_0_in__1\(3)
    );
\adc_control.config_wr_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => \adc_control.config_wr_count_reg\(4),
      I3 => \adc_control.config_wr_count[4]_i_2_n_0\,
      O => \p_0_in__1\(4)
    );
\adc_control.config_wr_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \adc_control.config_wr_count_reg\(3),
      I1 => \adc_control.config_wr_count_reg\(2),
      I2 => \adc_control.config_wr_count_reg\(0),
      I3 => \adc_control.config_wr_count_reg\(1),
      O => \adc_control.config_wr_count[4]_i_2_n_0\
    );
\adc_control.config_wr_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => \adc_control.config_wr_count_reg\(5),
      I3 => \adc_control.config_wr_count[5]_i_2_n_0\,
      O => \p_0_in__1\(5)
    );
\adc_control.config_wr_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \adc_control.config_wr_count_reg\(4),
      I1 => \adc_control.config_wr_count_reg\(1),
      I2 => \adc_control.config_wr_count_reg\(0),
      I3 => \adc_control.config_wr_count_reg\(2),
      I4 => \adc_control.config_wr_count_reg\(3),
      O => \adc_control.config_wr_count[5]_i_2_n_0\
    );
\adc_control.config_wr_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \adc_control.config_low_wr_i_2_n_0\,
      I1 => \adc_control.config_wr_count_reg\(6),
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => p_0_in(6),
      O => \p_0_in__1\(6)
    );
\adc_control.config_wr_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => config_wr_start,
      I1 => config_wr_pend,
      I2 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => config_wr_pend,
      I1 => \adc_control.config_wr_count_reg\(7),
      I2 => \adc_control.config_wr_count_reg\(6),
      I3 => \adc_control.config_low_wr_i_2_n_0\,
      I4 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.config_wr_count[7]_i_2_n_0\
    );
\adc_control.config_wr_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => \adc_control.config_wr_count_reg\(7),
      I1 => \adc_control.config_low_wr_i_2_n_0\,
      I2 => \adc_control.config_wr_count_reg\(6),
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => p_0_in(7),
      O => \p_0_in__1\(7)
    );
\adc_control.config_wr_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => \adc_control.config_wr_count_reg\(0),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => \adc_control.config_wr_count_reg\(1),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => \adc_control.config_wr_count_reg\(2),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => \adc_control.config_wr_count_reg\(3),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => \adc_control.config_wr_count_reg\(4),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => \adc_control.config_wr_count_reg\(5),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => \adc_control.config_wr_count_reg\(6),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.config_wr_count[7]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => \adc_control.config_wr_count_reg\(7),
      R => \adc_control.config_wr_count[7]_i_1_n_0\
    );
\adc_control.config_wr_done_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000054"
    )
        port map (
      I0 => config_wr_done,
      I1 => config_wr_pend,
      I2 => config_wr_start,
      I3 => \adc_control.config_wr_count_reg\(7),
      I4 => \adc_control.config_wr_count_reg\(6),
      I5 => \adc_control.config_low_wr_i_2_n_0\,
      O => \adc_control.config_wr_done_i_1_n_0\
    );
\adc_control.config_wr_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_wr_done_i_1_n_0\,
      Q => config_wr_done,
      R => '0'
    );
\adc_control.config_wr_pend_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => config_wr_done,
      I1 => config_wr_start,
      I2 => config_wr_pend,
      O => \adc_control.config_wr_pend_i_1_n_0\
    );
\adc_control.config_wr_pend_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_wr_pend_i_1_n_0\,
      Q => config_wr_pend,
      R => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.config_wr_start_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[0]\,
      I1 => \adc_control.cdata_reg_n_0_[1]\,
      I2 => \adc_control.cdata_reg_n_0_[2]\,
      I3 => \adc_control.cdata_reg_n_0_[3]\,
      I4 => \adc_control.config_wr_start_i_2_n_0\,
      I5 => config_wr_start,
      O => \adc_control.config_wr_start_i_1_n_0\
    );
\adc_control.config_wr_start_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[7]\,
      I1 => \adc_control.cdata_reg_n_0_[6]\,
      I2 => \adc_control.cdata_reg_n_0_[5]\,
      I3 => \adc_control.cdata_reg_n_0_[4]\,
      O => \adc_control.config_wr_start_i_2_n_0\
    );
\adc_control.config_wr_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.config_wr_start_i_1_n_0\,
      Q => config_wr_start,
      R => \adc_control.sim_start_i_1_n_0\
    );
\adc_control.data_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => resetn,
      I1 => \^data_out\(0),
      O => data_out0_out(0)
    );
\adc_control.data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \^data_out\(0),
      I1 => resetn,
      I2 => \^data_out\(1),
      O => data_out0_out(1)
    );
\adc_control.data_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^data_out\(0),
      I1 => \^data_out\(1),
      I2 => resetn,
      I3 => \^data_out\(2),
      O => data_out0_out(2)
    );
\adc_control.data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^data_out\(1),
      I1 => \^data_out\(0),
      I2 => \^data_out\(2),
      I3 => resetn,
      I4 => \^data_out\(3),
      O => data_out0_out(3)
    );
\adc_control.data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => \^data_out\(0),
      I2 => \^data_out\(1),
      I3 => \^data_out\(3),
      I4 => resetn,
      I5 => \^data_out\(4),
      O => data_out0_out(4)
    );
\adc_control.data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \adc_control.data_out[5]_i_2_n_0\,
      I1 => resetn,
      I2 => \^data_out\(5),
      O => data_out0_out(5)
    );
\adc_control.data_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^data_out\(3),
      I1 => \^data_out\(1),
      I2 => \^data_out\(0),
      I3 => \^data_out\(2),
      I4 => \^data_out\(4),
      O => \adc_control.data_out[5]_i_2_n_0\
    );
\adc_control.data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \adc_control.data_out[7]_i_2_n_0\,
      I1 => \^data_out\(6),
      I2 => resetn,
      O => data_out0_out(6)
    );
\adc_control.data_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^data_out\(6),
      I1 => \adc_control.data_out[7]_i_2_n_0\,
      I2 => resetn,
      I3 => \^data_out\(7),
      O => data_out0_out(7)
    );
\adc_control.data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^data_out\(4),
      I1 => \^data_out\(2),
      I2 => \^data_out\(0),
      I3 => \^data_out\(1),
      I4 => \^data_out\(3),
      I5 => \^data_out\(5),
      O => \adc_control.data_out[7]_i_2_n_0\
    );
\adc_control.data_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => resetn,
      I1 => config_wr_done,
      I2 => sim_wr_done,
      O => \adc_control.data_out[9]_i_1_n_0\
    );
\adc_control.data_out[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => sim_active,
      O => data_out0_out(9)
    );
\adc_control.data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(0),
      Q => \^data_out\(0),
      R => '0'
    );
\adc_control.data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(1),
      Q => \^data_out\(1),
      R => '0'
    );
\adc_control.data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(2),
      Q => \^data_out\(2),
      R => '0'
    );
\adc_control.data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(3),
      Q => \^data_out\(3),
      R => '0'
    );
\adc_control.data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(4),
      Q => \^data_out\(4),
      R => '0'
    );
\adc_control.data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(5),
      Q => \^data_out\(5),
      R => '0'
    );
\adc_control.data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(6),
      Q => \^data_out\(6),
      R => '0'
    );
\adc_control.data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(7),
      Q => \^data_out\(7),
      R => '0'
    );
\adc_control.data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.data_out[9]_i_1_n_0\,
      D => data_out0_out(9),
      Q => \^data_out\(9),
      R => '0'
    );
\adc_control.padr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(0),
      Q => padr(0),
      R => '0'
    );
\adc_control.padr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(10),
      Q => padr(10),
      R => '0'
    );
\adc_control.padr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(1),
      Q => padr(1),
      R => '0'
    );
\adc_control.padr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(2),
      Q => padr(2),
      R => '0'
    );
\adc_control.padr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(3),
      Q => padr(3),
      R => '0'
    );
\adc_control.padr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(4),
      Q => padr(4),
      R => '0'
    );
\adc_control.padr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(5),
      Q => padr(5),
      R => '0'
    );
\adc_control.padr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(6),
      Q => padr(6),
      R => '0'
    );
\adc_control.padr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(7),
      Q => padr(7),
      R => '0'
    );
\adc_control.padr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(8),
      Q => padr(8),
      R => '0'
    );
\adc_control.padr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^address\(9),
      Q => padr(9),
      R => '0'
    );
\adc_control.pdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
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
      INIT => X"0001"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[30]\,
      I1 => p_0_in(8),
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      O => \adc_control.pdata[31]_i_10_n_0\
    );
\adc_control.pdata[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \adc_control.cdata_reg_n_0_[15]\,
      I3 => \adc_control.cdata_reg_n_0_[12]\,
      O => \adc_control.pdata[31]_i_11_n_0\
    );
\adc_control.pdata[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(10),
      I1 => p_0_in(9),
      I2 => p_0_in(5),
      I3 => p_0_in(2),
      O => \adc_control.pdata[31]_i_12_n_0\
    );
\adc_control.pdata[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[31]\,
      I1 => pdata(31),
      I2 => pdata(30),
      I3 => \adc_control.cdata_reg_n_0_[30]\,
      O => \adc_control.pdata[31]_i_14_n_0\
    );
\adc_control.pdata[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[28]\,
      I1 => pdata(28),
      I2 => pdata(27),
      I3 => p_0_in(11),
      I4 => pdata(29),
      I5 => \adc_control.cdata_reg_n_0_[29]\,
      O => \adc_control.pdata[31]_i_15_n_0\
    );
\adc_control.pdata[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(24),
      I1 => p_0_in(8),
      I2 => pdata(25),
      I3 => p_0_in(9),
      I4 => pdata(26),
      I5 => p_0_in(10),
      O => \adc_control.pdata[31]_i_16_n_0\
    );
\adc_control.pdata[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(21),
      I1 => p_0_in(5),
      I2 => pdata(22),
      I3 => p_0_in(6),
      I4 => pdata(23),
      I5 => p_0_in(7),
      O => \adc_control.pdata[31]_i_17_n_0\
    );
\adc_control.pdata[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(18),
      I1 => p_0_in(2),
      I2 => pdata(19),
      I3 => p_0_in(3),
      I4 => pdata(20),
      I5 => p_0_in(4),
      O => \adc_control.pdata[31]_i_18_n_0\
    );
\adc_control.pdata[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_in(0),
      I1 => pdata(16),
      I2 => pdata(15),
      I3 => \adc_control.cdata_reg_n_0_[15]\,
      I4 => pdata(17),
      I5 => p_0_in(1),
      O => \adc_control.pdata[31]_i_19_n_0\
    );
\adc_control.pdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \adc_control.pdata[31]_i_5_n_0\,
      I1 => \adc_control.pdata[31]_i_4_n_0\,
      I2 => \adc_control.pdata[31]_i_3_n_0\,
      I3 => \adc_control.pdata_reg[31]_i_6_n_5\,
      I4 => \adc_control.pdata[31]_i_7_n_0\,
      O => \adc_control.pdata[31]_i_2_n_0\
    );
\adc_control.pdata[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[13]\,
      I1 => pdata(13),
      I2 => pdata(12),
      I3 => \adc_control.cdata_reg_n_0_[12]\,
      I4 => pdata(14),
      I5 => \adc_control.cdata_reg_n_0_[14]\,
      O => \adc_control.pdata[31]_i_20_n_0\
    );
\adc_control.pdata[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pdata(11),
      I1 => \adc_control.cdata_reg_n_0_[11]\,
      I2 => pdata(9),
      I3 => \adc_control.cdata_reg_n_0_[9]\,
      I4 => pdata(10),
      I5 => \adc_control.cdata_reg_n_0_[10]\,
      O => \adc_control.pdata[31]_i_21_n_0\
    );
\adc_control.pdata[31]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[6]\,
      I1 => pdata(6),
      I2 => pdata(8),
      I3 => \adc_control.cdata_reg_n_0_[8]\,
      I4 => pdata(7),
      I5 => \adc_control.cdata_reg_n_0_[7]\,
      O => \adc_control.pdata[31]_i_22_n_0\
    );
\adc_control.pdata[31]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[4]\,
      I1 => pdata(4),
      I2 => pdata(3),
      I3 => \adc_control.cdata_reg_n_0_[3]\,
      I4 => pdata(5),
      I5 => \adc_control.cdata_reg_n_0_[5]\,
      O => \adc_control.pdata[31]_i_23_n_0\
    );
\adc_control.pdata[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[1]\,
      I1 => pdata(1),
      I2 => pdata(0),
      I3 => \adc_control.cdata_reg_n_0_[0]\,
      I4 => pdata(2),
      I5 => \adc_control.cdata_reg_n_0_[2]\,
      O => \adc_control.pdata[31]_i_24_n_0\
    );
\adc_control.pdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \adc_control.config_wr_start_i_2_n_0\,
      I1 => \adc_control.pdata[31]_i_8_n_0\,
      I2 => \adc_control.pdata[31]_i_9_n_0\,
      I3 => \adc_control.pdata[31]_i_10_n_0\,
      O => \adc_control.pdata[31]_i_3_n_0\
    );
\adc_control.pdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[9]\,
      I1 => \adc_control.cdata_reg_n_0_[10]\,
      I2 => \adc_control.cdata_reg_n_0_[0]\,
      I3 => \adc_control.cdata_reg_n_0_[8]\,
      I4 => \adc_control.pdata[31]_i_11_n_0\,
      O => \adc_control.pdata[31]_i_4_n_0\
    );
\adc_control.pdata[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \adc_control.cdata_reg_n_0_[28]\,
      I2 => \adc_control.cdata_reg_n_0_[29]\,
      I3 => \adc_control.cdata_reg_n_0_[31]\,
      I4 => \adc_control.pdata[31]_i_12_n_0\,
      O => \adc_control.pdata[31]_i_5_n_0\
    );
\adc_control.pdata[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \adc_control.cmd_start_reg_n_0\,
      I1 => sim_wr_pend,
      O => \adc_control.pdata[31]_i_7_n_0\
    );
\adc_control.pdata[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[2]\,
      I1 => \adc_control.cdata_reg_n_0_[1]\,
      I2 => \adc_control.cdata_reg_n_0_[11]\,
      I3 => \adc_control.cdata_reg_n_0_[3]\,
      O => \adc_control.pdata[31]_i_8_n_0\
    );
\adc_control.pdata[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(3),
      I2 => \adc_control.cdata_reg_n_0_[14]\,
      I3 => \adc_control.cdata_reg_n_0_[13]\,
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
\adc_control.pdata_reg[31]_i_13\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \adc_control.pdata_reg[31]_i_13_n_0\,
      CO(6) => \adc_control.pdata_reg[31]_i_13_n_1\,
      CO(5) => \adc_control.pdata_reg[31]_i_13_n_2\,
      CO(4) => \adc_control.pdata_reg[31]_i_13_n_3\,
      CO(3) => \adc_control.pdata_reg[31]_i_13_n_4\,
      CO(2) => \adc_control.pdata_reg[31]_i_13_n_5\,
      CO(1) => \adc_control.pdata_reg[31]_i_13_n_6\,
      CO(0) => \adc_control.pdata_reg[31]_i_13_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_adc_control.pdata_reg[31]_i_13_O_UNCONNECTED\(7 downto 0),
      S(7) => \adc_control.pdata[31]_i_17_n_0\,
      S(6) => \adc_control.pdata[31]_i_18_n_0\,
      S(5) => \adc_control.pdata[31]_i_19_n_0\,
      S(4) => \adc_control.pdata[31]_i_20_n_0\,
      S(3) => \adc_control.pdata[31]_i_21_n_0\,
      S(2) => \adc_control.pdata[31]_i_22_n_0\,
      S(1) => \adc_control.pdata[31]_i_23_n_0\,
      S(0) => \adc_control.pdata[31]_i_24_n_0\
    );
\adc_control.pdata_reg[31]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \adc_control.pdata_reg[31]_i_13_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_adc_control.pdata_reg[31]_i_6_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \adc_control.pdata_reg[31]_i_6_n_5\,
      CO(1) => \adc_control.pdata_reg[31]_i_6_n_6\,
      CO(0) => \adc_control.pdata_reg[31]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_adc_control.pdata_reg[31]_i_6_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \adc_control.pdata[31]_i_14_n_0\,
      S(1) => \adc_control.pdata[31]_i_15_n_0\,
      S(0) => \adc_control.pdata[31]_i_16_n_0\
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
      D => \adc_control.cdata_reg_n_0_[8]\,
      Q => sim_channel(0),
      R => '0'
    );
\adc_control.sim_channel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.cmd_start_reg_n_0\,
      D => \adc_control.cdata_reg_n_0_[9]\,
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
      I0 => \adc_control.cdata_reg_n_0_[10]\,
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
      I0 => \adc_control.cdata_reg_n_0_[10]\,
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
      I2 => \adc_control.sim_wr_count[6]_i_2_n_0\,
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
\adc_control.sim_start_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \adc_control.cmd_start_reg_n_0\,
      O => \adc_control.sim_start_i_1_n_0\
    );
\adc_control.sim_start_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[1]\,
      I1 => \adc_control.cdata_reg_n_0_[0]\,
      I2 => \adc_control.sim_start_i_3_n_0\,
      I3 => \^sim_start\,
      O => \adc_control.sim_start_i_2_n_0\
    );
\adc_control.sim_start_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[3]\,
      I1 => \adc_control.cdata_reg_n_0_[2]\,
      I2 => \adc_control.cdata_reg_n_0_[4]\,
      I3 => \adc_control.cdata_reg_n_0_[5]\,
      I4 => \adc_control.cdata_reg_n_0_[6]\,
      I5 => \adc_control.cdata_reg_n_0_[7]\,
      O => \adc_control.sim_start_i_3_n_0\
    );
\adc_control.sim_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_start_i_2_n_0\,
      Q => \^sim_start\,
      R => \adc_control.sim_start_i_1_n_0\
    );
\adc_control.sim_wr_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DD1"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(0),
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \p_0_in__0\(0)
    );
\adc_control.sim_wr_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sim_wr_pend,
      I1 => \adc_control.cmd_start_reg_n_0\,
      I2 => sim_wr_start,
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
      I0 => p_0_in(11),
      I1 => p_0_in(10),
      I2 => \adc_control.sim_wr_count[10]_i_4_n_0\,
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(10),
      I5 => \adc_control.sim_low_wr_i_2_n_0\,
      O => \p_0_in__0\(10)
    );
\adc_control.sim_wr_count[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => p_0_in(9),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      I3 => \adc_control.sim_wr_count[5]_i_2_n_0\,
      I4 => p_0_in(8),
      O => \adc_control.sim_wr_count[10]_i_4_n_0\
    );
\adc_control.sim_wr_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0F0F099999999"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(1),
      I1 => \adc_control.sim_wr_count_reg\(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \adc_control.cmd_start_reg_n_0\,
      O => \p_0_in__0\(1)
    );
\adc_control.sim_wr_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F909F90909F"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \adc_control.sim_wr_count[2]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(2),
      I4 => \adc_control.sim_wr_count_reg\(0),
      I5 => \adc_control.sim_wr_count_reg\(1),
      O => \p_0_in__0\(2)
    );
\adc_control.sim_wr_count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      O => \adc_control.sim_wr_count[2]_i_2_n_0\
    );
\adc_control.sim_wr_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \adc_control.sim_wr_count[4]_i_3_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count[3]_i_2_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(3),
      O => \p_0_in__0\(3)
    );
\adc_control.sim_wr_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(1),
      I1 => \adc_control.sim_wr_count_reg\(0),
      I2 => \adc_control.sim_wr_count_reg\(2),
      O => \adc_control.sim_wr_count[3]_i_2_n_0\
    );
\adc_control.sim_wr_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF0F0099999999"
    )
        port map (
      I0 => \adc_control.sim_wr_count[4]_i_2_n_0\,
      I1 => \adc_control.sim_wr_count_reg\(4),
      I2 => \adc_control.sim_wr_count[4]_i_3_n_0\,
      I3 => p_0_in(4),
      I4 => p_0_in(5),
      I5 => \adc_control.cmd_start_reg_n_0\,
      O => \p_0_in__0\(4)
    );
\adc_control.sim_wr_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(3),
      I1 => \adc_control.sim_wr_count_reg\(2),
      I2 => \adc_control.sim_wr_count_reg\(0),
      I3 => \adc_control.sim_wr_count_reg\(1),
      O => \adc_control.sim_wr_count[4]_i_2_n_0\
    );
\adc_control.sim_wr_count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(3),
      O => \adc_control.sim_wr_count[4]_i_3_n_0\
    );
\adc_control.sim_wr_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F9999"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(5),
      I1 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I2 => p_0_in(6),
      I3 => \adc_control.sim_wr_count[5]_i_2_n_0\,
      I4 => \adc_control.cmd_start_reg_n_0\,
      O => \p_0_in__0\(5)
    );
\adc_control.sim_wr_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \adc_control.sim_wr_count[5]_i_2_n_0\
    );
\adc_control.sim_wr_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999FFF0000F"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \adc_control.sim_wr_count[7]_i_2_n_0\,
      I2 => \adc_control.sim_wr_count_reg\(5),
      I3 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(6),
      I5 => \adc_control.cmd_start_reg_n_0\,
      O => \p_0_in__0\(6)
    );
\adc_control.sim_wr_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(4),
      I1 => \adc_control.sim_wr_count_reg\(1),
      I2 => \adc_control.sim_wr_count_reg\(0),
      I3 => \adc_control.sim_wr_count_reg\(2),
      I4 => \adc_control.sim_wr_count_reg\(3),
      O => \adc_control.sim_wr_count[6]_i_2_n_0\
    );
\adc_control.sim_wr_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A009AFF9AFF9A00"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \adc_control.sim_wr_count[7]_i_2_n_0\,
      I2 => p_0_in(7),
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(7),
      I5 => \adc_control.sim_wr_count[8]_i_2_n_0\,
      O => \p_0_in__0\(7)
    );
\adc_control.sim_wr_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \adc_control.sim_wr_count[4]_i_3_n_0\,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(6),
      O => \adc_control.sim_wr_count[7]_i_2_n_0\
    );
\adc_control.sim_wr_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60606F6F606F60"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \adc_control.sim_wr_count[9]_i_2_n_0\,
      I2 => \adc_control.cmd_start_reg_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(8),
      I4 => \adc_control.sim_wr_count_reg\(7),
      I5 => \adc_control.sim_wr_count[8]_i_2_n_0\,
      O => \p_0_in__0\(8)
    );
\adc_control.sim_wr_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(6),
      I1 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I2 => \adc_control.sim_wr_count_reg\(5),
      O => \adc_control.sim_wr_count[8]_i_2_n_0\
    );
\adc_control.sim_wr_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A006AFF6AFF6A00"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \adc_control.sim_wr_count[9]_i_2_n_0\,
      I2 => p_0_in(9),
      I3 => \adc_control.cmd_start_reg_n_0\,
      I4 => \adc_control.sim_wr_count_reg\(9),
      I5 => \adc_control.sim_wr_count[9]_i_3_n_0\,
      O => \p_0_in__0\(9)
    );
\adc_control.sim_wr_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \adc_control.sim_wr_count[4]_i_3_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => p_0_in(6),
      I5 => p_0_in(7),
      O => \adc_control.sim_wr_count[9]_i_2_n_0\
    );
\adc_control.sim_wr_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(7),
      I1 => \adc_control.sim_wr_count_reg\(6),
      I2 => \adc_control.sim_wr_count[6]_i_2_n_0\,
      I3 => \adc_control.sim_wr_count_reg\(5),
      I4 => \adc_control.sim_wr_count_reg\(8),
      O => \adc_control.sim_wr_count[9]_i_3_n_0\
    );
\adc_control.sim_wr_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => \adc_control.sim_wr_count_reg\(0),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(10),
      Q => \adc_control.sim_wr_count_reg\(10),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => \adc_control.sim_wr_count_reg\(1),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => \adc_control.sim_wr_count_reg\(2),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(3),
      Q => \adc_control.sim_wr_count_reg\(3),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(4),
      Q => \adc_control.sim_wr_count_reg\(4),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(5),
      Q => \adc_control.sim_wr_count_reg\(5),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(6),
      Q => \adc_control.sim_wr_count_reg\(6),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(7),
      Q => \adc_control.sim_wr_count_reg\(7),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(8),
      Q => \adc_control.sim_wr_count_reg\(8),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \adc_control.sim_wr_count[10]_i_2_n_0\,
      D => \p_0_in__0\(9),
      Q => \adc_control.sim_wr_count_reg\(9),
      R => \adc_control.sim_wr_count[10]_i_1_n_0\
    );
\adc_control.sim_wr_done_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040400"
    )
        port map (
      I0 => \adc_control.sim_wr_count_reg\(10),
      I1 => \adc_control.sim_low_wr_i_2_n_0\,
      I2 => sim_wr_done,
      I3 => sim_wr_start,
      I4 => sim_wr_pend,
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
      INIT => X"BA"
    )
        port map (
      I0 => sim_wr_start,
      I1 => sim_wr_done,
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
      INIT => X"FF40"
    )
        port map (
      I0 => \adc_control.cdata_reg_n_0_[1]\,
      I1 => \adc_control.cdata_reg_n_0_[0]\,
      I2 => \adc_control.sim_start_i_3_n_0\,
      I3 => sim_wr_start,
      O => \adc_control.sim_wr_start_i_1_n_0\
    );
\adc_control.sim_wr_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \adc_control.sim_wr_start_i_1_n_0\,
      Q => sim_wr_start,
      R => \adc_control.sim_start_i_1_n_0\
    );
\adc_control.wr_en[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \adc_control.wr_en[0]_i_1_n_0\
    );
\adc_control.wr_en[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sim_wr_done,
      I1 => config_wr_done,
      O => wr_en0
    );
\adc_control.wr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_en0,
      Q => \^wr_en\(3),
      R => \adc_control.wr_en[0]_i_1_n_0\
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
    sim_start : out STD_LOGIC;
    sim_active : in STD_LOGIC;
    config_low_wr : out STD_LOGIC;
    config_high_wr : out STD_LOGIC;
    config_adr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \^data_out\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
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
  data_out(9) <= \^data_out\(9);
  data_out(8) <= \<const0>\;
  data_out(7 downto 0) <= \^data_out\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ps_adc_control_0_0_adc_control
     port map (
      address(10 downto 0) => address(10 downto 0),
      bram_adr_in(12 downto 2) => bram_adr_in(12 downto 2),
      bram_adr_in(1 downto 0) => B"00",
      bram_adr_out(10 downto 0) => bram_adr_out(10 downto 0),
      clk => clk,
      config_adr(7 downto 0) => config_adr(7 downto 0),
      config_data(31 downto 0) => config_data(31 downto 0),
      config_high_wr => config_high_wr,
      config_low_wr => config_low_wr,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(31 downto 10) => NLW_inst_data_out_UNCONNECTED(31 downto 10),
      data_out(9) => \^data_out\(9),
      data_out(8) => NLW_inst_data_out_UNCONNECTED(8),
      data_out(7 downto 0) => \^data_out\(7 downto 0),
      resetn => resetn,
      sim_active => sim_active,
      sim_channel(1 downto 0) => sim_channel(1 downto 0),
      sim_data(31 downto 0) => sim_data(31 downto 0),
      sim_high_wr => sim_high_wr,
      sim_low_wr => sim_low_wr,
      sim_start => sim_start,
      wr_en(3 downto 0) => wr_en(3 downto 0)
    );
end STRUCTURE;
