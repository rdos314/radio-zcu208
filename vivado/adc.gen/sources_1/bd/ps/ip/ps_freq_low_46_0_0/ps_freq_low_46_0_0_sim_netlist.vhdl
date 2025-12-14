-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Dec 14 18:28:59 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_freq_low_46_0_0/ps_freq_low_46_0_0_sim_netlist.vhdl
-- Design      : ps_freq_low_46_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0_morlet_to_phase_env is
  port (
    valid_W : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_morlet_to_phase_env : entity is "morlet_to_phase_env";
end ps_freq_low_46_0_0_morlet_to_phase_env;

architecture STRUCTURE of ps_freq_low_46_0_0_morlet_to_phase_env is
  component mult_16_16_HD5 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mult_16_16_HD5;
  component ps_freq_low_46_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_low_46_0_0_mult_16_16;
  component cordic_sqrt_16_HD6 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component cordic_sqrt_16_HD6;
  component cordic_atan2_16_HD7 is
  port (
    aclk : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component cordic_atan2_16_HD7;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \morlet_to_phase_env.env[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_1__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_2__1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_3__1_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^valid_w\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/\freq_W_i/morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_1__1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_im_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_im_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_im_i : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of mult_re_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings of mult_re_i : label is "yes";
  attribute x_core_info of mult_re_i : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of sqrt_i : label is "cordic_sqrt_16,cordic_v6_0_24,{}";
  attribute downgradeipidentifiedwarnings of sqrt_i : label is "yes";
  attribute x_core_info of sqrt_i : label is "cordic_v6_0_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of tan2_i : label is "cordic_atan2_16,cordic_v6_0_24,{}";
  attribute downgradeipidentifiedwarnings of tan2_i : label is "yes";
  attribute x_core_info of tan2_i : label is "cordic_v6_0_24,Vivado 2025.1";
begin
  valid_W <= \^valid_w\;
\morlet_to_phase_env.amp_4_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(0),
      Q => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[10]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(10),
      Q => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[11]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(11),
      Q => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[12]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(12),
      Q => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[13]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(13),
      Q => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(14),
      Q => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[15]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(15),
      Q => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[1]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(1),
      Q => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[2]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(2),
      Q => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(3),
      Q => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(4),
      Q => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[5]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(5),
      Q => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(6),
      Q => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[7]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(7),
      Q => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[8]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(8),
      Q => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[9]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(9),
      Q => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\
    );
\morlet_to_phase_env.delay[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[0]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[4]_i_1__1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_1\,
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.delay[4]_i_2__1_n_0\
    );
\morlet_to_phase_env.delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__1_n_0\,
      D => \morlet_to_phase_env.delay[0]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(0),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__1_n_0\,
      D => \morlet_to_phase_env.delay[1]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(1),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__1_n_0\,
      D => \morlet_to_phase_env.delay[2]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(2),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__1_n_0\,
      D => \morlet_to_phase_env.delay[3]_i_1__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(3),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__1_n_0\,
      D => \morlet_to_phase_env.delay[4]_i_2__1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(4),
      R => '0'
    );
\morlet_to_phase_env.env[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7555555555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_1\,
      I1 => \morlet_to_phase_env.delay_reg\(2),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.env[15]_i_1__1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\,
      Q => Q(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\,
      Q => Q(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\,
      Q => Q(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\,
      Q => Q(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\,
      Q => Q(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\,
      Q => Q(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\,
      Q => Q(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\,
      Q => Q(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\,
      Q => Q(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\,
      Q => Q(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\,
      Q => Q(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\,
      Q => Q(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\,
      Q => Q(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\,
      Q => Q(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\,
      Q => Q(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\,
      Q => Q(9),
      R => '0'
    );
\morlet_to_phase_env.p2[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(15),
      I1 => im2(15),
      O => \morlet_to_phase_env.p2[15]_i_2_n_0\
    );
\morlet_to_phase_env.p2[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(14),
      I1 => im2(14),
      O => \morlet_to_phase_env.p2[15]_i_3_n_0\
    );
\morlet_to_phase_env.p2[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(13),
      I1 => im2(13),
      O => \morlet_to_phase_env.p2[15]_i_4_n_0\
    );
\morlet_to_phase_env.p2[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(12),
      I1 => im2(12),
      O => \morlet_to_phase_env.p2[15]_i_5_n_0\
    );
\morlet_to_phase_env.p2[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(11),
      I1 => im2(11),
      O => \morlet_to_phase_env.p2[15]_i_6_n_0\
    );
\morlet_to_phase_env.p2[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(10),
      I1 => im2(10),
      O => \morlet_to_phase_env.p2[15]_i_7_n_0\
    );
\morlet_to_phase_env.p2[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(9),
      I1 => im2(9),
      O => \morlet_to_phase_env.p2[15]_i_8_n_0\
    );
\morlet_to_phase_env.p2[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(8),
      I1 => im2(8),
      O => \morlet_to_phase_env.p2[15]_i_9_n_0\
    );
\morlet_to_phase_env.p2[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(23),
      I1 => im2(23),
      O => \morlet_to_phase_env.p2[23]_i_2_n_0\
    );
\morlet_to_phase_env.p2[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(22),
      I1 => im2(22),
      O => \morlet_to_phase_env.p2[23]_i_3_n_0\
    );
\morlet_to_phase_env.p2[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(21),
      I1 => im2(21),
      O => \morlet_to_phase_env.p2[23]_i_4_n_0\
    );
\morlet_to_phase_env.p2[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(20),
      I1 => im2(20),
      O => \morlet_to_phase_env.p2[23]_i_5_n_0\
    );
\morlet_to_phase_env.p2[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(19),
      I1 => im2(19),
      O => \morlet_to_phase_env.p2[23]_i_6_n_0\
    );
\morlet_to_phase_env.p2[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(18),
      I1 => im2(18),
      O => \morlet_to_phase_env.p2[23]_i_7_n_0\
    );
\morlet_to_phase_env.p2[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(17),
      I1 => im2(17),
      O => \morlet_to_phase_env.p2[23]_i_8_n_0\
    );
\morlet_to_phase_env.p2[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(16),
      I1 => im2(16),
      O => \morlet_to_phase_env.p2[23]_i_9_n_0\
    );
\morlet_to_phase_env.p2[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(31),
      I1 => im2(31),
      O => \morlet_to_phase_env.p2[31]_i_2_n_0\
    );
\morlet_to_phase_env.p2[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(30),
      I1 => im2(30),
      O => \morlet_to_phase_env.p2[31]_i_3_n_0\
    );
\morlet_to_phase_env.p2[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(29),
      I1 => im2(29),
      O => \morlet_to_phase_env.p2[31]_i_4_n_0\
    );
\morlet_to_phase_env.p2[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(28),
      I1 => im2(28),
      O => \morlet_to_phase_env.p2[31]_i_5_n_0\
    );
\morlet_to_phase_env.p2[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(27),
      I1 => im2(27),
      O => \morlet_to_phase_env.p2[31]_i_6_n_0\
    );
\morlet_to_phase_env.p2[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(26),
      I1 => im2(26),
      O => \morlet_to_phase_env.p2[31]_i_7_n_0\
    );
\morlet_to_phase_env.p2[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(25),
      I1 => im2(25),
      O => \morlet_to_phase_env.p2[31]_i_8_n_0\
    );
\morlet_to_phase_env.p2[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(24),
      I1 => im2(24),
      O => \morlet_to_phase_env.p2[31]_i_9_n_0\
    );
\morlet_to_phase_env.p2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(7),
      I1 => im2(7),
      O => \morlet_to_phase_env.p2[7]_i_2_n_0\
    );
\morlet_to_phase_env.p2[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(6),
      I1 => im2(6),
      O => \morlet_to_phase_env.p2[7]_i_3_n_0\
    );
\morlet_to_phase_env.p2[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(5),
      I1 => im2(5),
      O => \morlet_to_phase_env.p2[7]_i_4_n_0\
    );
\morlet_to_phase_env.p2[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(4),
      I1 => im2(4),
      O => \morlet_to_phase_env.p2[7]_i_5_n_0\
    );
\morlet_to_phase_env.p2[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(3),
      I1 => im2(3),
      O => \morlet_to_phase_env.p2[7]_i_6_n_0\
    );
\morlet_to_phase_env.p2[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(2),
      I1 => im2(2),
      O => \morlet_to_phase_env.p2[7]_i_7_n_0\
    );
\morlet_to_phase_env.p2[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(1),
      I1 => im2(1),
      O => \morlet_to_phase_env.p2[7]_i_8_n_0\
    );
\morlet_to_phase_env.p2[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(0),
      I1 => im2(0),
      O => \morlet_to_phase_env.p2[7]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_8\,
      Q => p2(15),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[15]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[15]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[15]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[15]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[15]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[15]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[15]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[15]_i_1_n_7\,
      DI(7 downto 0) => re2(15 downto 8),
      O(7) => \morlet_to_phase_env.p2_reg[15]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[15]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[15]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[15]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[15]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[15]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[15]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[15]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[15]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_8\,
      Q => p2(23),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[23]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[23]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[23]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[23]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[23]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[23]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[23]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[23]_i_1_n_7\,
      DI(7 downto 0) => re2(23 downto 16),
      O(7) => \morlet_to_phase_env.p2_reg[23]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[23]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[23]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[23]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[23]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[23]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[23]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[23]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[23]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_8\,
      Q => p2(31),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \morlet_to_phase_env.p2_reg[31]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[31]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[31]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[31]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[31]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[31]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[31]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => re2(30 downto 24),
      O(7) => \morlet_to_phase_env.p2_reg[31]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[31]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[31]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[31]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[31]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[31]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[31]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[31]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[31]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_8\,
      Q => p2(7),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[7]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[7]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[7]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[7]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[7]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[7]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[7]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[7]_i_1_n_7\,
      DI(7 downto 0) => re2(7 downto 0),
      O(7) => \morlet_to_phase_env.p2_reg[7]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[7]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[7]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[7]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[7]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[7]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[7]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[7]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[7]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(0),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(10),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(11),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(12),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(13),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(14),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(15),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(16),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(17),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(18),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(19),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(1),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(2),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(3),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(4),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(5),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(6),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(7),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(8),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__1_n_0\,
      D => lphase(9),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF040404FF04"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2__1_n_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.valid_i_3__1_n_0\,
      I4 => \morlet_to_phase_env.phase_reg[19]_1\,
      I5 => \^valid_w\,
      O => \morlet_to_phase_env.valid_i_1__1_n_0\
    );
\morlet_to_phase_env.valid_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_2__1_n_0\
    );
\morlet_to_phase_env.valid_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.valid_i_3__1_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1__1_n_0\,
      Q => \^valid_w\,
      R => '0'
    );
mult_im_i: component mult_16_16_HD5
     port map (
      A(15 downto 0) => s_axis_cartesian_tdata(47 downto 32),
      B(15 downto 0) => s_axis_cartesian_tdata(47 downto 32),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => s_axis_cartesian_tdata(23 downto 8),
      B(15 downto 0) => s_axis_cartesian_tdata(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component cordic_sqrt_16_HD6
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
tan2_i: component cordic_atan2_16_HD7
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ is
  port (
    active : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_1\ : in STD_LOGIC;
    valid_E : in STD_LOGIC;
    valid_W : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ : entity is "morlet_to_phase_env";
end \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\;

architecture STRUCTURE of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\ is
  component ps_freq_low_46_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_low_46_0_0_mult_16_16;
  component ps_freq_low_46_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_low_46_0_0_cordic_sqrt_16;
  component ps_freq_low_46_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_freq_low_46_0_0_cordic_atan2_16;
  signal amp_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delay0 : STD_LOGIC;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \morlet_to_phase_env.delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \morlet_to_phase_env.env[15]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_3_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal valid_N : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/\freq_N_i/morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_1\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_im_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_im_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_im_i : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of mult_re_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings of mult_re_i : label is "yes";
  attribute x_core_info of mult_re_i : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of sqrt_i : label is "cordic_sqrt_16,cordic_v6_0_24,{}";
  attribute downgradeipidentifiedwarnings of sqrt_i : label is "yes";
  attribute x_core_info of sqrt_i : label is "cordic_v6_0_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of tan2_i : label is "cordic_atan2_16,cordic_v6_0_24,{}";
  attribute downgradeipidentifiedwarnings of tan2_i : label is "yes";
  attribute x_core_info of tan2_i : label is "cordic_v6_0_24,Vivado 2025.1";
begin
\morlet_to_phase_env.amp_4_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(0),
      Q => amp_4(0)
    );
\morlet_to_phase_env.amp_4_reg[10]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(10),
      Q => amp_4(10)
    );
\morlet_to_phase_env.amp_4_reg[11]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(11),
      Q => amp_4(11)
    );
\morlet_to_phase_env.amp_4_reg[12]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(12),
      Q => amp_4(12)
    );
\morlet_to_phase_env.amp_4_reg[13]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(13),
      Q => amp_4(13)
    );
\morlet_to_phase_env.amp_4_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(14),
      Q => amp_4(14)
    );
\morlet_to_phase_env.amp_4_reg[15]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(15),
      Q => amp_4(15)
    );
\morlet_to_phase_env.amp_4_reg[1]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(1),
      Q => amp_4(1)
    );
\morlet_to_phase_env.amp_4_reg[2]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(2),
      Q => amp_4(2)
    );
\morlet_to_phase_env.amp_4_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(3),
      Q => amp_4(3)
    );
\morlet_to_phase_env.amp_4_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(4),
      Q => amp_4(4)
    );
\morlet_to_phase_env.amp_4_reg[5]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(5),
      Q => amp_4(5)
    );
\morlet_to_phase_env.amp_4_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(6),
      Q => amp_4(6)
    );
\morlet_to_phase_env.amp_4_reg[7]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(7),
      Q => amp_4(7)
    );
\morlet_to_phase_env.amp_4_reg[8]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(8),
      Q => amp_4(8)
    );
\morlet_to_phase_env.amp_4_reg[9]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(9),
      Q => amp_4(9)
    );
\morlet_to_phase_env.delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[0]_i_1_n_0\
    );
\morlet_to_phase_env.delay[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => delay0
    );
\morlet_to_phase_env.delay[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_1\,
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.delay[4]_i_2_n_0\
    );
\morlet_to_phase_env.delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => delay0,
      D => \morlet_to_phase_env.delay[0]_i_1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(0),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => delay0,
      D => \morlet_to_phase_env.delay[1]_i_1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(1),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => delay0,
      D => \morlet_to_phase_env.delay[2]_i_1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(2),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => delay0,
      D => \morlet_to_phase_env.delay[3]_i_1_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(3),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => delay0,
      D => \morlet_to_phase_env.delay[4]_i_2_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(4),
      R => '0'
    );
\morlet_to_phase_env.env[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7555555555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_1\,
      I1 => \morlet_to_phase_env.delay_reg\(2),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.env[15]_i_1_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(0),
      Q => Q(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(10),
      Q => Q(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(11),
      Q => Q(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(12),
      Q => Q(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(13),
      Q => Q(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(14),
      Q => Q(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(15),
      Q => Q(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(1),
      Q => Q(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(2),
      Q => Q(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(3),
      Q => Q(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(4),
      Q => Q(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(5),
      Q => Q(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(6),
      Q => Q(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(7),
      Q => Q(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(8),
      Q => Q(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => amp_4(9),
      Q => Q(9),
      R => '0'
    );
\morlet_to_phase_env.p2[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(15),
      I1 => im2(15),
      O => \morlet_to_phase_env.p2[15]_i_2_n_0\
    );
\morlet_to_phase_env.p2[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(14),
      I1 => im2(14),
      O => \morlet_to_phase_env.p2[15]_i_3_n_0\
    );
\morlet_to_phase_env.p2[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(13),
      I1 => im2(13),
      O => \morlet_to_phase_env.p2[15]_i_4_n_0\
    );
\morlet_to_phase_env.p2[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(12),
      I1 => im2(12),
      O => \morlet_to_phase_env.p2[15]_i_5_n_0\
    );
\morlet_to_phase_env.p2[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(11),
      I1 => im2(11),
      O => \morlet_to_phase_env.p2[15]_i_6_n_0\
    );
\morlet_to_phase_env.p2[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(10),
      I1 => im2(10),
      O => \morlet_to_phase_env.p2[15]_i_7_n_0\
    );
\morlet_to_phase_env.p2[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(9),
      I1 => im2(9),
      O => \morlet_to_phase_env.p2[15]_i_8_n_0\
    );
\morlet_to_phase_env.p2[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(8),
      I1 => im2(8),
      O => \morlet_to_phase_env.p2[15]_i_9_n_0\
    );
\morlet_to_phase_env.p2[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(23),
      I1 => im2(23),
      O => \morlet_to_phase_env.p2[23]_i_2_n_0\
    );
\morlet_to_phase_env.p2[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(22),
      I1 => im2(22),
      O => \morlet_to_phase_env.p2[23]_i_3_n_0\
    );
\morlet_to_phase_env.p2[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(21),
      I1 => im2(21),
      O => \morlet_to_phase_env.p2[23]_i_4_n_0\
    );
\morlet_to_phase_env.p2[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(20),
      I1 => im2(20),
      O => \morlet_to_phase_env.p2[23]_i_5_n_0\
    );
\morlet_to_phase_env.p2[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(19),
      I1 => im2(19),
      O => \morlet_to_phase_env.p2[23]_i_6_n_0\
    );
\morlet_to_phase_env.p2[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(18),
      I1 => im2(18),
      O => \morlet_to_phase_env.p2[23]_i_7_n_0\
    );
\morlet_to_phase_env.p2[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(17),
      I1 => im2(17),
      O => \morlet_to_phase_env.p2[23]_i_8_n_0\
    );
\morlet_to_phase_env.p2[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(16),
      I1 => im2(16),
      O => \morlet_to_phase_env.p2[23]_i_9_n_0\
    );
\morlet_to_phase_env.p2[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(31),
      I1 => im2(31),
      O => \morlet_to_phase_env.p2[31]_i_2_n_0\
    );
\morlet_to_phase_env.p2[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(30),
      I1 => im2(30),
      O => \morlet_to_phase_env.p2[31]_i_3_n_0\
    );
\morlet_to_phase_env.p2[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(29),
      I1 => im2(29),
      O => \morlet_to_phase_env.p2[31]_i_4_n_0\
    );
\morlet_to_phase_env.p2[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(28),
      I1 => im2(28),
      O => \morlet_to_phase_env.p2[31]_i_5_n_0\
    );
\morlet_to_phase_env.p2[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(27),
      I1 => im2(27),
      O => \morlet_to_phase_env.p2[31]_i_6_n_0\
    );
\morlet_to_phase_env.p2[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(26),
      I1 => im2(26),
      O => \morlet_to_phase_env.p2[31]_i_7_n_0\
    );
\morlet_to_phase_env.p2[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(25),
      I1 => im2(25),
      O => \morlet_to_phase_env.p2[31]_i_8_n_0\
    );
\morlet_to_phase_env.p2[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(24),
      I1 => im2(24),
      O => \morlet_to_phase_env.p2[31]_i_9_n_0\
    );
\morlet_to_phase_env.p2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(7),
      I1 => im2(7),
      O => \morlet_to_phase_env.p2[7]_i_2_n_0\
    );
\morlet_to_phase_env.p2[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(6),
      I1 => im2(6),
      O => \morlet_to_phase_env.p2[7]_i_3_n_0\
    );
\morlet_to_phase_env.p2[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(5),
      I1 => im2(5),
      O => \morlet_to_phase_env.p2[7]_i_4_n_0\
    );
\morlet_to_phase_env.p2[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(4),
      I1 => im2(4),
      O => \morlet_to_phase_env.p2[7]_i_5_n_0\
    );
\morlet_to_phase_env.p2[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(3),
      I1 => im2(3),
      O => \morlet_to_phase_env.p2[7]_i_6_n_0\
    );
\morlet_to_phase_env.p2[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(2),
      I1 => im2(2),
      O => \morlet_to_phase_env.p2[7]_i_7_n_0\
    );
\morlet_to_phase_env.p2[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(1),
      I1 => im2(1),
      O => \morlet_to_phase_env.p2[7]_i_8_n_0\
    );
\morlet_to_phase_env.p2[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(0),
      I1 => im2(0),
      O => \morlet_to_phase_env.p2[7]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_8\,
      Q => p2(15),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[15]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[15]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[15]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[15]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[15]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[15]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[15]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[15]_i_1_n_7\,
      DI(7 downto 0) => re2(15 downto 8),
      O(7) => \morlet_to_phase_env.p2_reg[15]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[15]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[15]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[15]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[15]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[15]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[15]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[15]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[15]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_8\,
      Q => p2(23),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[23]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[23]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[23]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[23]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[23]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[23]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[23]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[23]_i_1_n_7\,
      DI(7 downto 0) => re2(23 downto 16),
      O(7) => \morlet_to_phase_env.p2_reg[23]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[23]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[23]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[23]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[23]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[23]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[23]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[23]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[23]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_8\,
      Q => p2(31),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \morlet_to_phase_env.p2_reg[31]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[31]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[31]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[31]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[31]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[31]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[31]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => re2(30 downto 24),
      O(7) => \morlet_to_phase_env.p2_reg[31]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[31]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[31]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[31]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[31]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[31]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[31]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[31]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[31]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_8\,
      Q => p2(7),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[7]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[7]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[7]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[7]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[7]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[7]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[7]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[7]_i_1_n_7\,
      DI(7 downto 0) => re2(7 downto 0),
      O(7) => \morlet_to_phase_env.p2_reg[7]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[7]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[7]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[7]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[7]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[7]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[7]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[7]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[7]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(0),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(10),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(11),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(12),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(13),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(14),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(15),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(16),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(17),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(18),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(19),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(1),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(2),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(3),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(4),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(5),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(6),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(7),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(8),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1_n_0\,
      D => lphase(9),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF040404FF04"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2_n_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.valid_i_3_n_0\,
      I4 => \morlet_to_phase_env.phase_reg[19]_1\,
      I5 => valid_N,
      O => \morlet_to_phase_env.valid_i_1_n_0\
    );
\morlet_to_phase_env.valid_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_2_n_0\
    );
\morlet_to_phase_env.valid_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.valid_i_3_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1_n_0\,
      Q => valid_N,
      R => '0'
    );
mult_im_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => s_axis_cartesian_tdata(47 downto 32),
      B(15 downto 0) => s_axis_cartesian_tdata(47 downto 32),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => s_axis_cartesian_tdata(23 downto 8),
      B(15 downto 0) => s_axis_cartesian_tdata(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
phase_err_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => valid_N,
      I1 => valid_E,
      I2 => valid_W,
      O => active
    );
sqrt_i: component ps_freq_low_46_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ is
  port (
    valid_E : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \morlet_to_phase_env.phase_reg[19]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ : entity is "morlet_to_phase_env";
end \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\;

architecture STRUCTURE of \ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\ is
  component ps_freq_low_46_0_0_mult_16_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ps_freq_low_46_0_0_mult_16_16;
  component ps_freq_low_46_0_0_cordic_sqrt_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_low_46_0_0_cordic_sqrt_16;
  component ps_freq_low_46_0_0_cordic_atan2_16 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ps_freq_low_46_0_0_cordic_atan2_16;
  signal im2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lenv : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lphase : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.delay_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \morlet_to_phase_env.env[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[15]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[23]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[31]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_2_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_3_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_4_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_5_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_6_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_7_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_8_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2[7]_i_9_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \morlet_to_phase_env.p2_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_1__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_2__0_n_0\ : STD_LOGIC;
  signal \morlet_to_phase_env.valid_i_3__0_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal re2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^valid_e\ : STD_LOGIC;
  signal \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name : string;
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[0]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[0]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[10]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[10]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[11]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[11]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[12]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[12]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[13]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[13]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[14]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[14]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[15]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[15]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[1]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[1]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[2]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[2]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[3]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[3]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[4]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[4]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[5]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[5]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[6]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[6]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[7]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[7]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[8]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[8]_srl4 ";
  attribute srl_bus_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg ";
  attribute srl_name of \morlet_to_phase_env.amp_4_reg[9]_srl4\ : label is "inst/\freq_E_i/morlet_to_phase_env.amp_4_reg[9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[2]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \morlet_to_phase_env.delay[3]_i_1__0\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \morlet_to_phase_env.p2_reg[7]_i_1\ : label is 35;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_im_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_im_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_im_i : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of mult_re_i : label is "mult_16_16,mult_gen_v12_0_23,{}";
  attribute downgradeipidentifiedwarnings of mult_re_i : label is "yes";
  attribute x_core_info of mult_re_i : label is "mult_gen_v12_0_23,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of sqrt_i : label is "cordic_sqrt_16,cordic_v6_0_24,{}";
  attribute downgradeipidentifiedwarnings of sqrt_i : label is "yes";
  attribute x_core_info of sqrt_i : label is "cordic_v6_0_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of tan2_i : label is "cordic_atan2_16,cordic_v6_0_24,{}";
  attribute downgradeipidentifiedwarnings of tan2_i : label is "yes";
  attribute x_core_info of tan2_i : label is "cordic_v6_0_24,Vivado 2025.1";
begin
  valid_E <= \^valid_e\;
\morlet_to_phase_env.amp_4_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(0),
      Q => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[10]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(10),
      Q => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[11]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(11),
      Q => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[12]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(12),
      Q => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[13]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(13),
      Q => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(14),
      Q => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[15]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(15),
      Q => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[1]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(1),
      Q => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[2]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(2),
      Q => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(3),
      Q => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(4),
      Q => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[5]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(5),
      Q => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(6),
      Q => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[7]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(7),
      Q => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[8]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(8),
      Q => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\
    );
\morlet_to_phase_env.amp_4_reg[9]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => lenv(9),
      Q => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\
    );
\morlet_to_phase_env.delay[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[0]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[1]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(0),
      I1 => \morlet_to_phase_env.phase_reg[19]_1\,
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.delay[2]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(1),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(2),
      O => \morlet_to_phase_env.delay[3]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(1),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(3),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(0),
      O => \morlet_to_phase_env.delay[4]_i_1__0_n_0\
    );
\morlet_to_phase_env.delay[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.phase_reg[19]_1\,
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.delay[4]_i_2__0_n_0\
    );
\morlet_to_phase_env.delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[0]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(0),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[1]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(1),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[2]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(2),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[3]_i_1__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(3),
      R => '0'
    );
\morlet_to_phase_env.delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.delay[4]_i_1__0_n_0\,
      D => \morlet_to_phase_env.delay[4]_i_2__0_n_0\,
      Q => \morlet_to_phase_env.delay_reg\(4),
      R => '0'
    );
\morlet_to_phase_env.env[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7555555555555554"
    )
        port map (
      I0 => \morlet_to_phase_env.phase_reg[19]_1\,
      I1 => \morlet_to_phase_env.delay_reg\(2),
      I2 => \morlet_to_phase_env.delay_reg\(0),
      I3 => \morlet_to_phase_env.delay_reg\(1),
      I4 => \morlet_to_phase_env.delay_reg\(4),
      I5 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.env[15]_i_1__0_n_0\
    );
\morlet_to_phase_env.env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[0]_srl4_n_0\,
      Q => Q(0),
      R => '0'
    );
\morlet_to_phase_env.env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[10]_srl4_n_0\,
      Q => Q(10),
      R => '0'
    );
\morlet_to_phase_env.env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[11]_srl4_n_0\,
      Q => Q(11),
      R => '0'
    );
\morlet_to_phase_env.env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[12]_srl4_n_0\,
      Q => Q(12),
      R => '0'
    );
\morlet_to_phase_env.env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[13]_srl4_n_0\,
      Q => Q(13),
      R => '0'
    );
\morlet_to_phase_env.env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[14]_srl4_n_0\,
      Q => Q(14),
      R => '0'
    );
\morlet_to_phase_env.env_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[15]_srl4_n_0\,
      Q => Q(15),
      R => '0'
    );
\morlet_to_phase_env.env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[1]_srl4_n_0\,
      Q => Q(1),
      R => '0'
    );
\morlet_to_phase_env.env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[2]_srl4_n_0\,
      Q => Q(2),
      R => '0'
    );
\morlet_to_phase_env.env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[3]_srl4_n_0\,
      Q => Q(3),
      R => '0'
    );
\morlet_to_phase_env.env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[4]_srl4_n_0\,
      Q => Q(4),
      R => '0'
    );
\morlet_to_phase_env.env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[5]_srl4_n_0\,
      Q => Q(5),
      R => '0'
    );
\morlet_to_phase_env.env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[6]_srl4_n_0\,
      Q => Q(6),
      R => '0'
    );
\morlet_to_phase_env.env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[7]_srl4_n_0\,
      Q => Q(7),
      R => '0'
    );
\morlet_to_phase_env.env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[8]_srl4_n_0\,
      Q => Q(8),
      R => '0'
    );
\morlet_to_phase_env.env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => \morlet_to_phase_env.amp_4_reg[9]_srl4_n_0\,
      Q => Q(9),
      R => '0'
    );
\morlet_to_phase_env.p2[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(15),
      I1 => im2(15),
      O => \morlet_to_phase_env.p2[15]_i_2_n_0\
    );
\morlet_to_phase_env.p2[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(14),
      I1 => im2(14),
      O => \morlet_to_phase_env.p2[15]_i_3_n_0\
    );
\morlet_to_phase_env.p2[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(13),
      I1 => im2(13),
      O => \morlet_to_phase_env.p2[15]_i_4_n_0\
    );
\morlet_to_phase_env.p2[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(12),
      I1 => im2(12),
      O => \morlet_to_phase_env.p2[15]_i_5_n_0\
    );
\morlet_to_phase_env.p2[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(11),
      I1 => im2(11),
      O => \morlet_to_phase_env.p2[15]_i_6_n_0\
    );
\morlet_to_phase_env.p2[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(10),
      I1 => im2(10),
      O => \morlet_to_phase_env.p2[15]_i_7_n_0\
    );
\morlet_to_phase_env.p2[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(9),
      I1 => im2(9),
      O => \morlet_to_phase_env.p2[15]_i_8_n_0\
    );
\morlet_to_phase_env.p2[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(8),
      I1 => im2(8),
      O => \morlet_to_phase_env.p2[15]_i_9_n_0\
    );
\morlet_to_phase_env.p2[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(23),
      I1 => im2(23),
      O => \morlet_to_phase_env.p2[23]_i_2_n_0\
    );
\morlet_to_phase_env.p2[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(22),
      I1 => im2(22),
      O => \morlet_to_phase_env.p2[23]_i_3_n_0\
    );
\morlet_to_phase_env.p2[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(21),
      I1 => im2(21),
      O => \morlet_to_phase_env.p2[23]_i_4_n_0\
    );
\morlet_to_phase_env.p2[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(20),
      I1 => im2(20),
      O => \morlet_to_phase_env.p2[23]_i_5_n_0\
    );
\morlet_to_phase_env.p2[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(19),
      I1 => im2(19),
      O => \morlet_to_phase_env.p2[23]_i_6_n_0\
    );
\morlet_to_phase_env.p2[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(18),
      I1 => im2(18),
      O => \morlet_to_phase_env.p2[23]_i_7_n_0\
    );
\morlet_to_phase_env.p2[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(17),
      I1 => im2(17),
      O => \morlet_to_phase_env.p2[23]_i_8_n_0\
    );
\morlet_to_phase_env.p2[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(16),
      I1 => im2(16),
      O => \morlet_to_phase_env.p2[23]_i_9_n_0\
    );
\morlet_to_phase_env.p2[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(31),
      I1 => im2(31),
      O => \morlet_to_phase_env.p2[31]_i_2_n_0\
    );
\morlet_to_phase_env.p2[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(30),
      I1 => im2(30),
      O => \morlet_to_phase_env.p2[31]_i_3_n_0\
    );
\morlet_to_phase_env.p2[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(29),
      I1 => im2(29),
      O => \morlet_to_phase_env.p2[31]_i_4_n_0\
    );
\morlet_to_phase_env.p2[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(28),
      I1 => im2(28),
      O => \morlet_to_phase_env.p2[31]_i_5_n_0\
    );
\morlet_to_phase_env.p2[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(27),
      I1 => im2(27),
      O => \morlet_to_phase_env.p2[31]_i_6_n_0\
    );
\morlet_to_phase_env.p2[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(26),
      I1 => im2(26),
      O => \morlet_to_phase_env.p2[31]_i_7_n_0\
    );
\morlet_to_phase_env.p2[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(25),
      I1 => im2(25),
      O => \morlet_to_phase_env.p2[31]_i_8_n_0\
    );
\morlet_to_phase_env.p2[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(24),
      I1 => im2(24),
      O => \morlet_to_phase_env.p2[31]_i_9_n_0\
    );
\morlet_to_phase_env.p2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(7),
      I1 => im2(7),
      O => \morlet_to_phase_env.p2[7]_i_2_n_0\
    );
\morlet_to_phase_env.p2[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(6),
      I1 => im2(6),
      O => \morlet_to_phase_env.p2[7]_i_3_n_0\
    );
\morlet_to_phase_env.p2[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(5),
      I1 => im2(5),
      O => \morlet_to_phase_env.p2[7]_i_4_n_0\
    );
\morlet_to_phase_env.p2[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(4),
      I1 => im2(4),
      O => \morlet_to_phase_env.p2[7]_i_5_n_0\
    );
\morlet_to_phase_env.p2[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(3),
      I1 => im2(3),
      O => \morlet_to_phase_env.p2[7]_i_6_n_0\
    );
\morlet_to_phase_env.p2[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(2),
      I1 => im2(2),
      O => \morlet_to_phase_env.p2[7]_i_7_n_0\
    );
\morlet_to_phase_env.p2[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(1),
      I1 => im2(1),
      O => \morlet_to_phase_env.p2[7]_i_8_n_0\
    );
\morlet_to_phase_env.p2[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => re2(0),
      I1 => im2(0),
      O => \morlet_to_phase_env.p2[7]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      Q => p2(0),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      Q => p2(10),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      Q => p2(11),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      Q => p2(12),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      Q => p2(13),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      Q => p2(14),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_8\,
      Q => p2(15),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[15]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[15]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[15]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[15]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[15]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[15]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[15]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[15]_i_1_n_7\,
      DI(7 downto 0) => re2(15 downto 8),
      O(7) => \morlet_to_phase_env.p2_reg[15]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[15]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[15]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[15]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[15]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[15]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[15]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[15]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[15]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[15]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[15]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[15]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[15]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[15]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      Q => p2(16),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      Q => p2(17),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      Q => p2(18),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      Q => p2(19),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      Q => p2(1),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      Q => p2(20),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      Q => p2(21),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      Q => p2(22),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[23]_i_1_n_8\,
      Q => p2(23),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[23]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[23]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[23]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[23]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[23]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[23]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[23]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[23]_i_1_n_7\,
      DI(7 downto 0) => re2(23 downto 16),
      O(7) => \morlet_to_phase_env.p2_reg[23]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[23]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[23]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[23]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[23]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[23]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[23]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[23]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[23]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[23]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[23]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[23]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[23]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[23]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[23]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[23]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      Q => p2(24),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      Q => p2(25),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      Q => p2(26),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      Q => p2(27),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      Q => p2(28),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      Q => p2(29),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      Q => p2(2),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      Q => p2(30),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[31]_i_1_n_8\,
      Q => p2(31),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \morlet_to_phase_env.p2_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_morlet_to_phase_env.p2_reg[31]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \morlet_to_phase_env.p2_reg[31]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[31]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[31]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[31]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[31]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[31]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[31]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => re2(30 downto 24),
      O(7) => \morlet_to_phase_env.p2_reg[31]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[31]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[31]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[31]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[31]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[31]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[31]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[31]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[31]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[31]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[31]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[31]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[31]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[31]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[31]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[31]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      Q => p2(3),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      Q => p2(4),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      Q => p2(5),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      Q => p2(6),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[7]_i_1_n_8\,
      Q => p2(7),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \morlet_to_phase_env.p2_reg[7]_i_1_n_0\,
      CO(6) => \morlet_to_phase_env.p2_reg[7]_i_1_n_1\,
      CO(5) => \morlet_to_phase_env.p2_reg[7]_i_1_n_2\,
      CO(4) => \morlet_to_phase_env.p2_reg[7]_i_1_n_3\,
      CO(3) => \morlet_to_phase_env.p2_reg[7]_i_1_n_4\,
      CO(2) => \morlet_to_phase_env.p2_reg[7]_i_1_n_5\,
      CO(1) => \morlet_to_phase_env.p2_reg[7]_i_1_n_6\,
      CO(0) => \morlet_to_phase_env.p2_reg[7]_i_1_n_7\,
      DI(7 downto 0) => re2(7 downto 0),
      O(7) => \morlet_to_phase_env.p2_reg[7]_i_1_n_8\,
      O(6) => \morlet_to_phase_env.p2_reg[7]_i_1_n_9\,
      O(5) => \morlet_to_phase_env.p2_reg[7]_i_1_n_10\,
      O(4) => \morlet_to_phase_env.p2_reg[7]_i_1_n_11\,
      O(3) => \morlet_to_phase_env.p2_reg[7]_i_1_n_12\,
      O(2) => \morlet_to_phase_env.p2_reg[7]_i_1_n_13\,
      O(1) => \morlet_to_phase_env.p2_reg[7]_i_1_n_14\,
      O(0) => \morlet_to_phase_env.p2_reg[7]_i_1_n_15\,
      S(7) => \morlet_to_phase_env.p2[7]_i_2_n_0\,
      S(6) => \morlet_to_phase_env.p2[7]_i_3_n_0\,
      S(5) => \morlet_to_phase_env.p2[7]_i_4_n_0\,
      S(4) => \morlet_to_phase_env.p2[7]_i_5_n_0\,
      S(3) => \morlet_to_phase_env.p2[7]_i_6_n_0\,
      S(2) => \morlet_to_phase_env.p2[7]_i_7_n_0\,
      S(1) => \morlet_to_phase_env.p2[7]_i_8_n_0\,
      S(0) => \morlet_to_phase_env.p2[7]_i_9_n_0\
    );
\morlet_to_phase_env.p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_15\,
      Q => p2(8),
      R => '0'
    );
\morlet_to_phase_env.p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.p2_reg[15]_i_1_n_14\,
      Q => p2(9),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(0),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(0),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(10),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(10),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(11),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(11),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(12),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(12),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(13),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(13),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(14),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(14),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(15),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(15),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(16),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(16),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(17),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(17),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(18),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(18),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(19),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(19),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(1),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(1),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(2),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(2),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(3),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(3),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(4),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(4),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(5),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(5),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(6),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(6),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(7),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(7),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(8),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(8),
      R => '0'
    );
\morlet_to_phase_env.phase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \morlet_to_phase_env.env[15]_i_1__0_n_0\,
      D => lphase(9),
      Q => \morlet_to_phase_env.phase_reg[19]_0\(9),
      R => '0'
    );
\morlet_to_phase_env.valid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF040404FF04"
    )
        port map (
      I0 => \morlet_to_phase_env.valid_i_2__0_n_0\,
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(2),
      I3 => \morlet_to_phase_env.valid_i_3__0_n_0\,
      I4 => \morlet_to_phase_env.phase_reg[19]_1\,
      I5 => \^valid_e\,
      O => \morlet_to_phase_env.valid_i_1__0_n_0\
    );
\morlet_to_phase_env.valid_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(4),
      I1 => \morlet_to_phase_env.delay_reg\(3),
      I2 => \morlet_to_phase_env.phase_reg[19]_1\,
      I3 => \morlet_to_phase_env.delay_reg\(1),
      O => \morlet_to_phase_env.valid_i_2__0_n_0\
    );
\morlet_to_phase_env.valid_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \morlet_to_phase_env.delay_reg\(2),
      I1 => \morlet_to_phase_env.delay_reg\(0),
      I2 => \morlet_to_phase_env.delay_reg\(1),
      I3 => \morlet_to_phase_env.delay_reg\(4),
      I4 => \morlet_to_phase_env.delay_reg\(3),
      O => \morlet_to_phase_env.valid_i_3__0_n_0\
    );
\morlet_to_phase_env.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \morlet_to_phase_env.valid_i_1__0_n_0\,
      Q => \^valid_e\,
      R => '0'
    );
mult_im_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => s_axis_cartesian_tdata(47 downto 32),
      B(15 downto 0) => s_axis_cartesian_tdata(47 downto 32),
      CLK => clk,
      P(31 downto 0) => im2(31 downto 0)
    );
mult_re_i: component ps_freq_low_46_0_0_mult_16_16
     port map (
      A(15 downto 0) => s_axis_cartesian_tdata(23 downto 8),
      B(15 downto 0) => s_axis_cartesian_tdata(23 downto 8),
      CLK => clk,
      P(31 downto 0) => re2(31 downto 0)
    );
sqrt_i: component ps_freq_low_46_0_0_cordic_sqrt_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => lenv(15 downto 0),
      m_axis_dout_tvalid => NLW_sqrt_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => p2(31 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
tan2_i: component ps_freq_low_46_0_0_cordic_atan2_16
     port map (
      aclk => clk,
      m_axis_dout_tdata(23 downto 20) => NLW_tan2_i_m_axis_dout_tdata_UNCONNECTED(23 downto 20),
      m_axis_dout_tdata(19 downto 0) => lphase(19 downto 0),
      m_axis_dout_tvalid => NLW_tan2_i_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(47 downto 0) => s_axis_cartesian_tdata(47 downto 0),
      s_axis_cartesian_tvalid => \morlet_to_phase_env.phase_reg[19]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0_phase_err is
  port (
    clk : in STD_LOGIC;
    active : in STD_LOGIC;
    env_in_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_in_N : in STD_LOGIC_VECTOR ( 19 downto 0 );
    env_in_E : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_in_E : in STD_LOGIC_VECTOR ( 19 downto 0 );
    env_in_W : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_in_W : in STD_LOGIC_VECTOR ( 19 downto 0 );
    valid : out STD_LOGIC;
    env_out_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_out_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_out_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_out_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_out_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_out_W : out STD_LOGIC_VECTOR ( 19 downto 0 );
    err_NE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    err_NW : out STD_LOGIC_VECTOR ( 11 downto 0 );
    err_EW : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_phase_err : entity is "phase_err";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_freq_low_46_0_0_phase_err : entity is "soft";
end ps_freq_low_46_0_0_phase_err;

architecture STRUCTURE of ps_freq_low_46_0_0_phase_err is
  component ps_freq_low_46_0_0_ila_7 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component ps_freq_low_46_0_0_ila_7;
  signal diff_EW : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of diff_EW : signal is std.standard.true;
  signal diff_NE : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of diff_NE : signal is std.standard.true;
  signal diff_NW : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of diff_NW : signal is std.standard.true;
  signal \^err_ew\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of \^err_ew\ : signal is std.standard.true;
  signal \^err_ne\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of \^err_ne\ : signal is std.standard.true;
  signal \^err_nw\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of \^err_nw\ : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal phase_E_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_N_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_W_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \phase_err.diff_EW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[12]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[13]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[14]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[16]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[17]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_EW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[12]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[13]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[14]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[16]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[17]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.diff_NW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_E_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_N_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.env_W_3_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_EW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NE[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.err_NW[9]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[10]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[11]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[12]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[13]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[14]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[15]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[16]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[17]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[18]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[19]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[8]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_E_2_reg[9]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[10]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[11]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[12]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[13]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[14]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[15]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[16]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[17]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[18]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[19]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[8]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_N_2_reg[9]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[10]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[11]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[12]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[13]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[14]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[15]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[16]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[17]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[18]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[19]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[8]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.phase_W_2_reg[9]_srl2_n_0\ : STD_LOGIC;
  signal \phase_err.prev_NE[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg00_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg02_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_diff_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg00_out\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_EW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg04_out\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NE_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg02_out\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_err.raw_err_NW_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_err.valid_2_reg_srl2_n_0\ : STD_LOGIC;
  signal \^phase_out_e\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_out_e\ : signal is std.standard.true;
  signal \^phase_out_n\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_out_n\ : signal is std.standard.true;
  signal \^phase_out_w\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of \^phase_out_w\ : signal is std.standard.true;
  signal prev_EW : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of prev_EW : signal is std.standard.true;
  signal prev_NE : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of prev_NE : signal is std.standard.true;
  signal prev_NW : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of prev_NW : signal is std.standard.true;
  signal raw_diff_EW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of raw_diff_EW : signal is std.standard.true;
  signal raw_diff_NE : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of raw_diff_NE : signal is std.standard.true;
  signal raw_diff_NW : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute MARK_DEBUG of raw_diff_NW : signal is std.standard.true;
  signal raw_err_EW : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of raw_err_EW : signal is std.standard.true;
  signal raw_err_NE : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of raw_err_NE : signal is std.standard.true;
  signal raw_err_NW : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute MARK_DEBUG of raw_err_NW : signal is std.standard.true;
  signal \^valid\ : STD_LOGIC;
  attribute MARK_DEBUG of valid : signal is std.standard.true;
  signal valid_3 : STD_LOGIC;
  signal \NLW_phase_err.raw_diff_EW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_diff_EW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_phase_err.raw_diff_NE_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_diff_NE_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_phase_err.raw_diff_NW_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_diff_NW_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_phase_err.raw_err_EW_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_phase_err.raw_err_EW_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_err_NE_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_phase_err.raw_err_NE_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_phase_err.raw_err_NW_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_phase_err.raw_err_NW_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_7,ila,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
  attribute KEEP : string;
  attribute KEEP of \phase_err.diff_EW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.diff_EW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NE_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.diff_NW_reg[9]\ : label is "yes";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \phase_err.env_E_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name : string;
  attribute srl_name of \phase_err.env_E_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.env_E_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg ";
  attribute srl_name of \phase_err.env_E_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_E_3_reg[9]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.env_N_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg ";
  attribute srl_name of \phase_err.env_N_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_N_3_reg[9]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[0]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[0]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[10]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[10]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[11]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[11]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[12]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[12]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[13]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[13]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[14]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[14]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[15]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[15]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[1]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[1]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[2]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[2]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[3]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[3]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[4]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[4]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[5]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[5]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[6]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[6]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[7]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[7]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[8]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[8]_srl3 ";
  attribute srl_bus_name of \phase_err.env_W_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg ";
  attribute srl_name of \phase_err.env_W_3_reg[9]_srl3\ : label is "inst/phase_err_i/\phase_err.env_W_3_reg[9]_srl3 ";
  attribute KEEP of \phase_err.err_EW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.err_EW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.err_NE_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.err_NW_reg[9]\ : label is "yes";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[0]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[0]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[0]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[10]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[10]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[10]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[11]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[11]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[11]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[12]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[12]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[12]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[13]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[13]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[13]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[14]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[14]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[14]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[15]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[15]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[15]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[16]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[16]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[16]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[17]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[17]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[17]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[18]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[18]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[18]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[19]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[19]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[19]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[1]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[1]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[1]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[2]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[2]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[2]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[3]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[3]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[3]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[4]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[4]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[4]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[5]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[5]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[5]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[6]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[6]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[6]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[7]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[7]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[7]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[8]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[8]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[8]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_E_2_reg[9]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg ";
  attribute srl_name of \phase_err.phase_E_2_reg[9]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_E_2_reg[9]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[0]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[0]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[0]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[10]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[10]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[10]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[11]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[11]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[11]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[12]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[12]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[12]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[13]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[13]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[13]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[14]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[14]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[14]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[15]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[15]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[15]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[16]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[16]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[16]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[17]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[17]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[17]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[18]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[18]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[18]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[19]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[19]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[19]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[1]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[1]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[1]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[2]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[2]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[2]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[3]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[3]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[3]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[4]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[4]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[4]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[5]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[5]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[5]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[6]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[6]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[6]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[7]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[7]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[7]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[8]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[8]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[8]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_N_2_reg[9]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg ";
  attribute srl_name of \phase_err.phase_N_2_reg[9]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_N_2_reg[9]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[0]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[0]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[0]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[10]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[10]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[10]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[11]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[11]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[11]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[12]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[12]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[12]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[13]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[13]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[13]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[14]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[14]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[14]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[15]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[15]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[15]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[16]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[16]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[16]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[17]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[17]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[17]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[18]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[18]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[18]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[19]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[19]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[19]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[1]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[1]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[1]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[2]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[2]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[2]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[3]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[3]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[3]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[4]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[4]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[4]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[5]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[5]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[5]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[6]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[6]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[6]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[7]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[7]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[7]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[8]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[8]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[8]_srl2 ";
  attribute srl_bus_name of \phase_err.phase_W_2_reg[9]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg ";
  attribute srl_name of \phase_err.phase_W_2_reg[9]_srl2\ : label is "inst/phase_err_i/\phase_err.phase_W_2_reg[9]_srl2 ";
  attribute KEEP of \phase_err.phase_out_E_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[19]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_E_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[19]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_N_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[19]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.phase_out_W_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.prev_EW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NE_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[15]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[7]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.prev_NW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_EW_reg[15]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_EW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_EW_reg[19]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_EW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_EW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_EW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_EW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NE_reg[15]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_NE_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NE_reg[19]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_NE_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NE_reg[7]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_NE_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NE_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NW_reg[15]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_NW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[18]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[19]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NW_reg[19]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_NW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_diff_NW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_diff_NW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.raw_diff_NW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_EW_reg[15]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_EW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[18]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_EW_reg[18]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_EW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_EW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_EW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_EW_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NE_reg[15]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_NE_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[18]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NE_reg[18]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_NE_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NE_reg[7]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_NE_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NE_reg[9]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[0]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[10]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[11]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[12]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[13]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[14]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NW_reg[15]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_NW_reg[16]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[17]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[18]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NW_reg[18]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_NW_reg[1]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[2]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[3]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[4]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[5]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[6]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \phase_err.raw_err_NW_reg[7]_i_1\ : label is 35;
  attribute KEEP of \phase_err.raw_err_NW_reg[8]\ : label is "yes";
  attribute KEEP of \phase_err.raw_err_NW_reg[9]\ : label is "yes";
  attribute srl_name of \phase_err.valid_2_reg_srl2\ : label is "inst/phase_err_i/\phase_err.valid_2_reg_srl2 ";
  attribute KEEP of \phase_err.valid_reg\ : label is "yes";
begin
  err_EW(11 downto 0) <= \^err_ew\(11 downto 0);
  err_NE(11 downto 0) <= \^err_ne\(11 downto 0);
  err_NW(11 downto 0) <= \^err_nw\(11 downto 0);
  phase_out_E(19 downto 0) <= \^phase_out_e\(19 downto 0);
  phase_out_N(19 downto 0) <= \^phase_out_n\(19 downto 0);
  phase_out_W(19 downto 0) <= \^phase_out_w\(19 downto 0);
  valid <= \^valid\;
ila_i: component ps_freq_low_46_0_0_ila_7
     port map (
      clk => clk,
      probe0(0) => \^valid\,
      probe1(0) => active,
      probe10(19 downto 0) => raw_diff_EW(19 downto 0),
      probe11(19) => '0',
      probe11(18 downto 0) => prev_NE(18 downto 0),
      probe12(19) => '0',
      probe12(18 downto 0) => prev_NW(18 downto 0),
      probe13(19) => '0',
      probe13(18 downto 0) => prev_EW(18 downto 0),
      probe14(18 downto 0) => diff_NE(18 downto 0),
      probe15(18 downto 0) => diff_NW(18 downto 0),
      probe16(18 downto 0) => diff_EW(18 downto 0),
      probe17(18 downto 0) => raw_err_NE(18 downto 0),
      probe18(18 downto 0) => raw_err_NW(18 downto 0),
      probe19(18 downto 0) => raw_err_EW(18 downto 0),
      probe2(19 downto 0) => phase_in_N(19 downto 0),
      probe20(19 downto 12) => B"00000000",
      probe20(11 downto 0) => \^err_ne\(11 downto 0),
      probe21(19 downto 12) => B"00000000",
      probe21(11 downto 0) => \^err_nw\(11 downto 0),
      probe22(19 downto 12) => B"00000000",
      probe22(11 downto 0) => \^err_ew\(11 downto 0),
      probe3(19 downto 0) => phase_in_E(19 downto 0),
      probe4(19 downto 0) => phase_in_W(19 downto 0),
      probe5(19 downto 0) => \^phase_out_n\(19 downto 0),
      probe6(19 downto 0) => \^phase_out_e\(19 downto 0),
      probe7(19 downto 0) => \^phase_out_w\(19 downto 0),
      probe8(19 downto 0) => raw_diff_NE(19 downto 0),
      probe9(19 downto 0) => raw_diff_NW(19 downto 0)
    );
\phase_err.diff_EW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(0),
      O => \phase_err.diff_EW[0]_i_1_n_0\
    );
\phase_err.diff_EW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(10),
      O => \phase_err.diff_EW[10]_i_1_n_0\
    );
\phase_err.diff_EW[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(11),
      O => \phase_err.diff_EW[11]_i_1_n_0\
    );
\phase_err.diff_EW[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(12),
      O => \phase_err.diff_EW[12]_i_1_n_0\
    );
\phase_err.diff_EW[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(13),
      O => \phase_err.diff_EW[13]_i_1_n_0\
    );
\phase_err.diff_EW[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(14),
      O => \phase_err.diff_EW[14]_i_1_n_0\
    );
\phase_err.diff_EW[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(15),
      O => \phase_err.diff_EW[15]_i_1_n_0\
    );
\phase_err.diff_EW[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(16),
      O => \phase_err.diff_EW[16]_i_1_n_0\
    );
\phase_err.diff_EW[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(17),
      O => \phase_err.diff_EW[17]_i_1_n_0\
    );
\phase_err.diff_EW[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(18),
      O => \phase_err.diff_EW[18]_i_1_n_0\
    );
\phase_err.diff_EW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(1),
      O => \phase_err.diff_EW[1]_i_1_n_0\
    );
\phase_err.diff_EW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(2),
      O => \phase_err.diff_EW[2]_i_1_n_0\
    );
\phase_err.diff_EW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(3),
      O => \phase_err.diff_EW[3]_i_1_n_0\
    );
\phase_err.diff_EW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(4),
      O => \phase_err.diff_EW[4]_i_1_n_0\
    );
\phase_err.diff_EW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(5),
      O => \phase_err.diff_EW[5]_i_1_n_0\
    );
\phase_err.diff_EW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(6),
      O => \phase_err.diff_EW[6]_i_1_n_0\
    );
\phase_err.diff_EW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(7),
      O => \phase_err.diff_EW[7]_i_1_n_0\
    );
\phase_err.diff_EW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(8),
      O => \phase_err.diff_EW[8]_i_1_n_0\
    );
\phase_err.diff_EW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_EW(19),
      I1 => raw_diff_EW(9),
      O => \phase_err.diff_EW[9]_i_1_n_0\
    );
\phase_err.diff_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[0]_i_1_n_0\,
      Q => diff_EW(0),
      R => '0'
    );
\phase_err.diff_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[10]_i_1_n_0\,
      Q => diff_EW(10),
      R => '0'
    );
\phase_err.diff_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[11]_i_1_n_0\,
      Q => diff_EW(11),
      R => '0'
    );
\phase_err.diff_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[12]_i_1_n_0\,
      Q => diff_EW(12),
      R => '0'
    );
\phase_err.diff_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[13]_i_1_n_0\,
      Q => diff_EW(13),
      R => '0'
    );
\phase_err.diff_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[14]_i_1_n_0\,
      Q => diff_EW(14),
      R => '0'
    );
\phase_err.diff_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[15]_i_1_n_0\,
      Q => diff_EW(15),
      R => '0'
    );
\phase_err.diff_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[16]_i_1_n_0\,
      Q => diff_EW(16),
      R => '0'
    );
\phase_err.diff_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[17]_i_1_n_0\,
      Q => diff_EW(17),
      R => '0'
    );
\phase_err.diff_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[18]_i_1_n_0\,
      Q => diff_EW(18),
      R => '0'
    );
\phase_err.diff_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[1]_i_1_n_0\,
      Q => diff_EW(1),
      R => '0'
    );
\phase_err.diff_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[2]_i_1_n_0\,
      Q => diff_EW(2),
      R => '0'
    );
\phase_err.diff_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[3]_i_1_n_0\,
      Q => diff_EW(3),
      R => '0'
    );
\phase_err.diff_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[4]_i_1_n_0\,
      Q => diff_EW(4),
      R => '0'
    );
\phase_err.diff_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[5]_i_1_n_0\,
      Q => diff_EW(5),
      R => '0'
    );
\phase_err.diff_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[6]_i_1_n_0\,
      Q => diff_EW(6),
      R => '0'
    );
\phase_err.diff_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[7]_i_1_n_0\,
      Q => diff_EW(7),
      R => '0'
    );
\phase_err.diff_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[8]_i_1_n_0\,
      Q => diff_EW(8),
      R => '0'
    );
\phase_err.diff_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_EW[9]_i_1_n_0\,
      Q => diff_EW(9),
      R => '0'
    );
\phase_err.diff_NE[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(0),
      O => \p_0_in__0\(0)
    );
\phase_err.diff_NE[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(10),
      O => \p_0_in__0\(10)
    );
\phase_err.diff_NE[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(11),
      O => \p_0_in__0\(11)
    );
\phase_err.diff_NE[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(12),
      O => \p_0_in__0\(12)
    );
\phase_err.diff_NE[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(13),
      O => \p_0_in__0\(13)
    );
\phase_err.diff_NE[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(14),
      O => \p_0_in__0\(14)
    );
\phase_err.diff_NE[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(15),
      O => \p_0_in__0\(15)
    );
\phase_err.diff_NE[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(16),
      O => \p_0_in__0\(16)
    );
\phase_err.diff_NE[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(17),
      O => \p_0_in__0\(17)
    );
\phase_err.diff_NE[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(18),
      O => \p_0_in__0\(18)
    );
\phase_err.diff_NE[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(1),
      O => \p_0_in__0\(1)
    );
\phase_err.diff_NE[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(2),
      O => \p_0_in__0\(2)
    );
\phase_err.diff_NE[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(3),
      O => \p_0_in__0\(3)
    );
\phase_err.diff_NE[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(4),
      O => \p_0_in__0\(4)
    );
\phase_err.diff_NE[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(5),
      O => \p_0_in__0\(5)
    );
\phase_err.diff_NE[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(6),
      O => \p_0_in__0\(6)
    );
\phase_err.diff_NE[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(7),
      O => \p_0_in__0\(7)
    );
\phase_err.diff_NE[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(8),
      O => \p_0_in__0\(8)
    );
\phase_err.diff_NE[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NE(19),
      I1 => raw_diff_NE(9),
      O => \p_0_in__0\(9)
    );
\phase_err.diff_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => diff_NE(0),
      R => '0'
    );
\phase_err.diff_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => diff_NE(10),
      R => '0'
    );
\phase_err.diff_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(11),
      Q => diff_NE(11),
      R => '0'
    );
\phase_err.diff_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(12),
      Q => diff_NE(12),
      R => '0'
    );
\phase_err.diff_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(13),
      Q => diff_NE(13),
      R => '0'
    );
\phase_err.diff_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(14),
      Q => diff_NE(14),
      R => '0'
    );
\phase_err.diff_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(15),
      Q => diff_NE(15),
      R => '0'
    );
\phase_err.diff_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(16),
      Q => diff_NE(16),
      R => '0'
    );
\phase_err.diff_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(17),
      Q => diff_NE(17),
      R => '0'
    );
\phase_err.diff_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(18),
      Q => diff_NE(18),
      R => '0'
    );
\phase_err.diff_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => diff_NE(1),
      R => '0'
    );
\phase_err.diff_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => diff_NE(2),
      R => '0'
    );
\phase_err.diff_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => diff_NE(3),
      R => '0'
    );
\phase_err.diff_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => diff_NE(4),
      R => '0'
    );
\phase_err.diff_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => diff_NE(5),
      R => '0'
    );
\phase_err.diff_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => diff_NE(6),
      R => '0'
    );
\phase_err.diff_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => diff_NE(7),
      R => '0'
    );
\phase_err.diff_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => diff_NE(8),
      R => '0'
    );
\phase_err.diff_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => diff_NE(9),
      R => '0'
    );
\phase_err.diff_NW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(0),
      O => \phase_err.diff_NW[0]_i_1_n_0\
    );
\phase_err.diff_NW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(10),
      O => \phase_err.diff_NW[10]_i_1_n_0\
    );
\phase_err.diff_NW[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(11),
      O => \phase_err.diff_NW[11]_i_1_n_0\
    );
\phase_err.diff_NW[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(12),
      O => \phase_err.diff_NW[12]_i_1_n_0\
    );
\phase_err.diff_NW[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(13),
      O => \phase_err.diff_NW[13]_i_1_n_0\
    );
\phase_err.diff_NW[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(14),
      O => \phase_err.diff_NW[14]_i_1_n_0\
    );
\phase_err.diff_NW[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(15),
      O => \phase_err.diff_NW[15]_i_1_n_0\
    );
\phase_err.diff_NW[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(16),
      O => \phase_err.diff_NW[16]_i_1_n_0\
    );
\phase_err.diff_NW[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(17),
      O => \phase_err.diff_NW[17]_i_1_n_0\
    );
\phase_err.diff_NW[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(18),
      O => \phase_err.diff_NW[18]_i_1_n_0\
    );
\phase_err.diff_NW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(1),
      O => \phase_err.diff_NW[1]_i_1_n_0\
    );
\phase_err.diff_NW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(2),
      O => \phase_err.diff_NW[2]_i_1_n_0\
    );
\phase_err.diff_NW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(3),
      O => \phase_err.diff_NW[3]_i_1_n_0\
    );
\phase_err.diff_NW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(4),
      O => \phase_err.diff_NW[4]_i_1_n_0\
    );
\phase_err.diff_NW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(5),
      O => \phase_err.diff_NW[5]_i_1_n_0\
    );
\phase_err.diff_NW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(6),
      O => \phase_err.diff_NW[6]_i_1_n_0\
    );
\phase_err.diff_NW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(7),
      O => \phase_err.diff_NW[7]_i_1_n_0\
    );
\phase_err.diff_NW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(8),
      O => \phase_err.diff_NW[8]_i_1_n_0\
    );
\phase_err.diff_NW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_diff_NW(19),
      I1 => raw_diff_NW(9),
      O => \phase_err.diff_NW[9]_i_1_n_0\
    );
\phase_err.diff_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[0]_i_1_n_0\,
      Q => diff_NW(0),
      R => '0'
    );
\phase_err.diff_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[10]_i_1_n_0\,
      Q => diff_NW(10),
      R => '0'
    );
\phase_err.diff_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[11]_i_1_n_0\,
      Q => diff_NW(11),
      R => '0'
    );
\phase_err.diff_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[12]_i_1_n_0\,
      Q => diff_NW(12),
      R => '0'
    );
\phase_err.diff_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[13]_i_1_n_0\,
      Q => diff_NW(13),
      R => '0'
    );
\phase_err.diff_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[14]_i_1_n_0\,
      Q => diff_NW(14),
      R => '0'
    );
\phase_err.diff_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[15]_i_1_n_0\,
      Q => diff_NW(15),
      R => '0'
    );
\phase_err.diff_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[16]_i_1_n_0\,
      Q => diff_NW(16),
      R => '0'
    );
\phase_err.diff_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[17]_i_1_n_0\,
      Q => diff_NW(17),
      R => '0'
    );
\phase_err.diff_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[18]_i_1_n_0\,
      Q => diff_NW(18),
      R => '0'
    );
\phase_err.diff_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[1]_i_1_n_0\,
      Q => diff_NW(1),
      R => '0'
    );
\phase_err.diff_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[2]_i_1_n_0\,
      Q => diff_NW(2),
      R => '0'
    );
\phase_err.diff_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[3]_i_1_n_0\,
      Q => diff_NW(3),
      R => '0'
    );
\phase_err.diff_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[4]_i_1_n_0\,
      Q => diff_NW(4),
      R => '0'
    );
\phase_err.diff_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[5]_i_1_n_0\,
      Q => diff_NW(5),
      R => '0'
    );
\phase_err.diff_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[6]_i_1_n_0\,
      Q => diff_NW(6),
      R => '0'
    );
\phase_err.diff_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[7]_i_1_n_0\,
      Q => diff_NW(7),
      R => '0'
    );
\phase_err.diff_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[8]_i_1_n_0\,
      Q => diff_NW(8),
      R => '0'
    );
\phase_err.diff_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.diff_NW[9]_i_1_n_0\,
      Q => diff_NW(9),
      R => '0'
    );
\phase_err.env_E_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(0),
      Q => \phase_err.env_E_3_reg[0]_srl3_n_0\
    );
\phase_err.env_E_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(10),
      Q => \phase_err.env_E_3_reg[10]_srl3_n_0\
    );
\phase_err.env_E_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(11),
      Q => \phase_err.env_E_3_reg[11]_srl3_n_0\
    );
\phase_err.env_E_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(12),
      Q => \phase_err.env_E_3_reg[12]_srl3_n_0\
    );
\phase_err.env_E_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(13),
      Q => \phase_err.env_E_3_reg[13]_srl3_n_0\
    );
\phase_err.env_E_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(14),
      Q => \phase_err.env_E_3_reg[14]_srl3_n_0\
    );
\phase_err.env_E_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(15),
      Q => \phase_err.env_E_3_reg[15]_srl3_n_0\
    );
\phase_err.env_E_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(1),
      Q => \phase_err.env_E_3_reg[1]_srl3_n_0\
    );
\phase_err.env_E_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(2),
      Q => \phase_err.env_E_3_reg[2]_srl3_n_0\
    );
\phase_err.env_E_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(3),
      Q => \phase_err.env_E_3_reg[3]_srl3_n_0\
    );
\phase_err.env_E_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(4),
      Q => \phase_err.env_E_3_reg[4]_srl3_n_0\
    );
\phase_err.env_E_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(5),
      Q => \phase_err.env_E_3_reg[5]_srl3_n_0\
    );
\phase_err.env_E_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(6),
      Q => \phase_err.env_E_3_reg[6]_srl3_n_0\
    );
\phase_err.env_E_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(7),
      Q => \phase_err.env_E_3_reg[7]_srl3_n_0\
    );
\phase_err.env_E_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(8),
      Q => \phase_err.env_E_3_reg[8]_srl3_n_0\
    );
\phase_err.env_E_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_E(9),
      Q => \phase_err.env_E_3_reg[9]_srl3_n_0\
    );
\phase_err.env_N_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(0),
      Q => \phase_err.env_N_3_reg[0]_srl3_n_0\
    );
\phase_err.env_N_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(10),
      Q => \phase_err.env_N_3_reg[10]_srl3_n_0\
    );
\phase_err.env_N_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(11),
      Q => \phase_err.env_N_3_reg[11]_srl3_n_0\
    );
\phase_err.env_N_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(12),
      Q => \phase_err.env_N_3_reg[12]_srl3_n_0\
    );
\phase_err.env_N_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(13),
      Q => \phase_err.env_N_3_reg[13]_srl3_n_0\
    );
\phase_err.env_N_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(14),
      Q => \phase_err.env_N_3_reg[14]_srl3_n_0\
    );
\phase_err.env_N_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(15),
      Q => \phase_err.env_N_3_reg[15]_srl3_n_0\
    );
\phase_err.env_N_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(1),
      Q => \phase_err.env_N_3_reg[1]_srl3_n_0\
    );
\phase_err.env_N_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(2),
      Q => \phase_err.env_N_3_reg[2]_srl3_n_0\
    );
\phase_err.env_N_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(3),
      Q => \phase_err.env_N_3_reg[3]_srl3_n_0\
    );
\phase_err.env_N_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(4),
      Q => \phase_err.env_N_3_reg[4]_srl3_n_0\
    );
\phase_err.env_N_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(5),
      Q => \phase_err.env_N_3_reg[5]_srl3_n_0\
    );
\phase_err.env_N_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(6),
      Q => \phase_err.env_N_3_reg[6]_srl3_n_0\
    );
\phase_err.env_N_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(7),
      Q => \phase_err.env_N_3_reg[7]_srl3_n_0\
    );
\phase_err.env_N_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(8),
      Q => \phase_err.env_N_3_reg[8]_srl3_n_0\
    );
\phase_err.env_N_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_N(9),
      Q => \phase_err.env_N_3_reg[9]_srl3_n_0\
    );
\phase_err.env_W_3_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(0),
      Q => \phase_err.env_W_3_reg[0]_srl3_n_0\
    );
\phase_err.env_W_3_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(10),
      Q => \phase_err.env_W_3_reg[10]_srl3_n_0\
    );
\phase_err.env_W_3_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(11),
      Q => \phase_err.env_W_3_reg[11]_srl3_n_0\
    );
\phase_err.env_W_3_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(12),
      Q => \phase_err.env_W_3_reg[12]_srl3_n_0\
    );
\phase_err.env_W_3_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(13),
      Q => \phase_err.env_W_3_reg[13]_srl3_n_0\
    );
\phase_err.env_W_3_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(14),
      Q => \phase_err.env_W_3_reg[14]_srl3_n_0\
    );
\phase_err.env_W_3_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(15),
      Q => \phase_err.env_W_3_reg[15]_srl3_n_0\
    );
\phase_err.env_W_3_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(1),
      Q => \phase_err.env_W_3_reg[1]_srl3_n_0\
    );
\phase_err.env_W_3_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(2),
      Q => \phase_err.env_W_3_reg[2]_srl3_n_0\
    );
\phase_err.env_W_3_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(3),
      Q => \phase_err.env_W_3_reg[3]_srl3_n_0\
    );
\phase_err.env_W_3_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(4),
      Q => \phase_err.env_W_3_reg[4]_srl3_n_0\
    );
\phase_err.env_W_3_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(5),
      Q => \phase_err.env_W_3_reg[5]_srl3_n_0\
    );
\phase_err.env_W_3_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(6),
      Q => \phase_err.env_W_3_reg[6]_srl3_n_0\
    );
\phase_err.env_W_3_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(7),
      Q => \phase_err.env_W_3_reg[7]_srl3_n_0\
    );
\phase_err.env_W_3_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(8),
      Q => \phase_err.env_W_3_reg[8]_srl3_n_0\
    );
\phase_err.env_W_3_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => env_in_W(9),
      Q => \phase_err.env_W_3_reg[9]_srl3_n_0\
    );
\phase_err.env_out_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[0]_srl3_n_0\,
      Q => env_out_E(0),
      R => '0'
    );
\phase_err.env_out_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[10]_srl3_n_0\,
      Q => env_out_E(10),
      R => '0'
    );
\phase_err.env_out_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[11]_srl3_n_0\,
      Q => env_out_E(11),
      R => '0'
    );
\phase_err.env_out_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[12]_srl3_n_0\,
      Q => env_out_E(12),
      R => '0'
    );
\phase_err.env_out_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[13]_srl3_n_0\,
      Q => env_out_E(13),
      R => '0'
    );
\phase_err.env_out_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[14]_srl3_n_0\,
      Q => env_out_E(14),
      R => '0'
    );
\phase_err.env_out_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[15]_srl3_n_0\,
      Q => env_out_E(15),
      R => '0'
    );
\phase_err.env_out_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[1]_srl3_n_0\,
      Q => env_out_E(1),
      R => '0'
    );
\phase_err.env_out_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[2]_srl3_n_0\,
      Q => env_out_E(2),
      R => '0'
    );
\phase_err.env_out_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[3]_srl3_n_0\,
      Q => env_out_E(3),
      R => '0'
    );
\phase_err.env_out_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[4]_srl3_n_0\,
      Q => env_out_E(4),
      R => '0'
    );
\phase_err.env_out_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[5]_srl3_n_0\,
      Q => env_out_E(5),
      R => '0'
    );
\phase_err.env_out_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[6]_srl3_n_0\,
      Q => env_out_E(6),
      R => '0'
    );
\phase_err.env_out_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[7]_srl3_n_0\,
      Q => env_out_E(7),
      R => '0'
    );
\phase_err.env_out_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[8]_srl3_n_0\,
      Q => env_out_E(8),
      R => '0'
    );
\phase_err.env_out_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_E_3_reg[9]_srl3_n_0\,
      Q => env_out_E(9),
      R => '0'
    );
\phase_err.env_out_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[0]_srl3_n_0\,
      Q => env_out_N(0),
      R => '0'
    );
\phase_err.env_out_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[10]_srl3_n_0\,
      Q => env_out_N(10),
      R => '0'
    );
\phase_err.env_out_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[11]_srl3_n_0\,
      Q => env_out_N(11),
      R => '0'
    );
\phase_err.env_out_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[12]_srl3_n_0\,
      Q => env_out_N(12),
      R => '0'
    );
\phase_err.env_out_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[13]_srl3_n_0\,
      Q => env_out_N(13),
      R => '0'
    );
\phase_err.env_out_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[14]_srl3_n_0\,
      Q => env_out_N(14),
      R => '0'
    );
\phase_err.env_out_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[15]_srl3_n_0\,
      Q => env_out_N(15),
      R => '0'
    );
\phase_err.env_out_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[1]_srl3_n_0\,
      Q => env_out_N(1),
      R => '0'
    );
\phase_err.env_out_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[2]_srl3_n_0\,
      Q => env_out_N(2),
      R => '0'
    );
\phase_err.env_out_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[3]_srl3_n_0\,
      Q => env_out_N(3),
      R => '0'
    );
\phase_err.env_out_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[4]_srl3_n_0\,
      Q => env_out_N(4),
      R => '0'
    );
\phase_err.env_out_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[5]_srl3_n_0\,
      Q => env_out_N(5),
      R => '0'
    );
\phase_err.env_out_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[6]_srl3_n_0\,
      Q => env_out_N(6),
      R => '0'
    );
\phase_err.env_out_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[7]_srl3_n_0\,
      Q => env_out_N(7),
      R => '0'
    );
\phase_err.env_out_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[8]_srl3_n_0\,
      Q => env_out_N(8),
      R => '0'
    );
\phase_err.env_out_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_N_3_reg[9]_srl3_n_0\,
      Q => env_out_N(9),
      R => '0'
    );
\phase_err.env_out_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[0]_srl3_n_0\,
      Q => env_out_W(0),
      R => '0'
    );
\phase_err.env_out_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[10]_srl3_n_0\,
      Q => env_out_W(10),
      R => '0'
    );
\phase_err.env_out_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[11]_srl3_n_0\,
      Q => env_out_W(11),
      R => '0'
    );
\phase_err.env_out_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[12]_srl3_n_0\,
      Q => env_out_W(12),
      R => '0'
    );
\phase_err.env_out_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[13]_srl3_n_0\,
      Q => env_out_W(13),
      R => '0'
    );
\phase_err.env_out_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[14]_srl3_n_0\,
      Q => env_out_W(14),
      R => '0'
    );
\phase_err.env_out_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[15]_srl3_n_0\,
      Q => env_out_W(15),
      R => '0'
    );
\phase_err.env_out_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[1]_srl3_n_0\,
      Q => env_out_W(1),
      R => '0'
    );
\phase_err.env_out_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[2]_srl3_n_0\,
      Q => env_out_W(2),
      R => '0'
    );
\phase_err.env_out_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[3]_srl3_n_0\,
      Q => env_out_W(3),
      R => '0'
    );
\phase_err.env_out_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[4]_srl3_n_0\,
      Q => env_out_W(4),
      R => '0'
    );
\phase_err.env_out_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[5]_srl3_n_0\,
      Q => env_out_W(5),
      R => '0'
    );
\phase_err.env_out_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[6]_srl3_n_0\,
      Q => env_out_W(6),
      R => '0'
    );
\phase_err.env_out_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[7]_srl3_n_0\,
      Q => env_out_W(7),
      R => '0'
    );
\phase_err.env_out_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[8]_srl3_n_0\,
      Q => env_out_W(8),
      R => '0'
    );
\phase_err.env_out_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.env_W_3_reg[9]_srl3_n_0\,
      Q => env_out_W(9),
      R => '0'
    );
\phase_err.err_EW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(0),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[0]_i_1_n_0\
    );
\phase_err.err_EW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(10),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[10]_i_1_n_0\
    );
\phase_err.err_EW[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => \phase_err.err_EW[11]_i_3_n_0\,
      I1 => raw_err_EW(12),
      I2 => raw_err_EW(14),
      I3 => raw_err_EW(13),
      O => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(11),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[11]_i_2_n_0\
    );
\phase_err.err_EW[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => raw_err_EW(16),
      I1 => raw_err_EW(15),
      I2 => raw_err_EW(12),
      I3 => raw_err_EW(18),
      I4 => raw_err_EW(17),
      O => \phase_err.err_EW[11]_i_3_n_0\
    );
\phase_err.err_EW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(1),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[1]_i_1_n_0\
    );
\phase_err.err_EW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(2),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[2]_i_1_n_0\
    );
\phase_err.err_EW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(3),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[3]_i_1_n_0\
    );
\phase_err.err_EW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(4),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[4]_i_1_n_0\
    );
\phase_err.err_EW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(5),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[5]_i_1_n_0\
    );
\phase_err.err_EW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(6),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[6]_i_1_n_0\
    );
\phase_err.err_EW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(7),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[7]_i_1_n_0\
    );
\phase_err.err_EW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(8),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[8]_i_1_n_0\
    );
\phase_err.err_EW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_EW(9),
      I1 => raw_err_EW(12),
      O => \phase_err.err_EW[9]_i_1_n_0\
    );
\phase_err.err_EW_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[0]_i_1_n_0\,
      Q => \^err_ew\(0),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[10]_i_1_n_0\,
      Q => \^err_ew\(10),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[11]_i_2_n_0\,
      Q => \^err_ew\(11),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[1]_i_1_n_0\,
      Q => \^err_ew\(1),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[2]_i_1_n_0\,
      Q => \^err_ew\(2),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[3]_i_1_n_0\,
      Q => \^err_ew\(3),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[4]_i_1_n_0\,
      Q => \^err_ew\(4),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[5]_i_1_n_0\,
      Q => \^err_ew\(5),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[6]_i_1_n_0\,
      Q => \^err_ew\(6),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[7]_i_1_n_0\,
      Q => \^err_ew\(7),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[8]_i_1_n_0\,
      Q => \^err_ew\(8),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_EW_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_EW[9]_i_1_n_0\,
      Q => \^err_ew\(9),
      S => \phase_err.err_EW[11]_i_1_n_0\
    );
\phase_err.err_NE[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(0),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[0]_i_1_n_0\
    );
\phase_err.err_NE[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(10),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[10]_i_1_n_0\
    );
\phase_err.err_NE[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => \phase_err.err_NE[11]_i_3_n_0\,
      I1 => raw_err_NE(12),
      I2 => raw_err_NE(14),
      I3 => raw_err_NE(13),
      O => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(11),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[11]_i_2_n_0\
    );
\phase_err.err_NE[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => raw_err_NE(16),
      I1 => raw_err_NE(15),
      I2 => raw_err_NE(12),
      I3 => raw_err_NE(18),
      I4 => raw_err_NE(17),
      O => \phase_err.err_NE[11]_i_3_n_0\
    );
\phase_err.err_NE[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(1),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[1]_i_1_n_0\
    );
\phase_err.err_NE[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(2),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[2]_i_1_n_0\
    );
\phase_err.err_NE[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(3),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[3]_i_1_n_0\
    );
\phase_err.err_NE[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(4),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[4]_i_1_n_0\
    );
\phase_err.err_NE[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(5),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[5]_i_1_n_0\
    );
\phase_err.err_NE[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(6),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[6]_i_1_n_0\
    );
\phase_err.err_NE[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(7),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[7]_i_1_n_0\
    );
\phase_err.err_NE[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(8),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[8]_i_1_n_0\
    );
\phase_err.err_NE[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NE(9),
      I1 => raw_err_NE(12),
      O => \phase_err.err_NE[9]_i_1_n_0\
    );
\phase_err.err_NE_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[0]_i_1_n_0\,
      Q => \^err_ne\(0),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[10]_i_1_n_0\,
      Q => \^err_ne\(10),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[11]_i_2_n_0\,
      Q => \^err_ne\(11),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[1]_i_1_n_0\,
      Q => \^err_ne\(1),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[2]_i_1_n_0\,
      Q => \^err_ne\(2),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[3]_i_1_n_0\,
      Q => \^err_ne\(3),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[4]_i_1_n_0\,
      Q => \^err_ne\(4),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[5]_i_1_n_0\,
      Q => \^err_ne\(5),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[6]_i_1_n_0\,
      Q => \^err_ne\(6),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[7]_i_1_n_0\,
      Q => \^err_ne\(7),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[8]_i_1_n_0\,
      Q => \^err_ne\(8),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NE_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NE[9]_i_1_n_0\,
      Q => \^err_ne\(9),
      S => \phase_err.err_NE[11]_i_1_n_0\
    );
\phase_err.err_NW[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(0),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[0]_i_1_n_0\
    );
\phase_err.err_NW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(10),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[10]_i_1_n_0\
    );
\phase_err.err_NW[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => \phase_err.err_NW[11]_i_3_n_0\,
      I1 => raw_err_NW(12),
      I2 => raw_err_NW(14),
      I3 => raw_err_NW(13),
      O => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(11),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[11]_i_2_n_0\
    );
\phase_err.err_NW[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => raw_err_NW(16),
      I1 => raw_err_NW(15),
      I2 => raw_err_NW(12),
      I3 => raw_err_NW(18),
      I4 => raw_err_NW(17),
      O => \phase_err.err_NW[11]_i_3_n_0\
    );
\phase_err.err_NW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(1),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[1]_i_1_n_0\
    );
\phase_err.err_NW[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(2),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[2]_i_1_n_0\
    );
\phase_err.err_NW[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(3),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[3]_i_1_n_0\
    );
\phase_err.err_NW[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(4),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[4]_i_1_n_0\
    );
\phase_err.err_NW[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(5),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[5]_i_1_n_0\
    );
\phase_err.err_NW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(6),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[6]_i_1_n_0\
    );
\phase_err.err_NW[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(7),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[7]_i_1_n_0\
    );
\phase_err.err_NW[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(8),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[8]_i_1_n_0\
    );
\phase_err.err_NW[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raw_err_NW(9),
      I1 => raw_err_NW(12),
      O => \phase_err.err_NW[9]_i_1_n_0\
    );
\phase_err.err_NW_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[0]_i_1_n_0\,
      Q => \^err_nw\(0),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[10]_i_1_n_0\,
      Q => \^err_nw\(10),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[11]_i_2_n_0\,
      Q => \^err_nw\(11),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[1]_i_1_n_0\,
      Q => \^err_nw\(1),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[2]_i_1_n_0\,
      Q => \^err_nw\(2),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[3]_i_1_n_0\,
      Q => \^err_nw\(3),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[4]_i_1_n_0\,
      Q => \^err_nw\(4),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[5]_i_1_n_0\,
      Q => \^err_nw\(5),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[6]_i_1_n_0\,
      Q => \^err_nw\(6),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[7]_i_1_n_0\,
      Q => \^err_nw\(7),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[8]_i_1_n_0\,
      Q => \^err_nw\(8),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.err_NW_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.err_NW[9]_i_1_n_0\,
      Q => \^err_nw\(9),
      S => \phase_err.err_NW[11]_i_1_n_0\
    );
\phase_err.phase_E_2_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(0),
      Q => \phase_err.phase_E_2_reg[0]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[10]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(10),
      Q => \phase_err.phase_E_2_reg[10]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[11]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(11),
      Q => \phase_err.phase_E_2_reg[11]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[12]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(12),
      Q => \phase_err.phase_E_2_reg[12]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[13]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(13),
      Q => \phase_err.phase_E_2_reg[13]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[14]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(14),
      Q => \phase_err.phase_E_2_reg[14]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[15]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(15),
      Q => \phase_err.phase_E_2_reg[15]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[16]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(16),
      Q => \phase_err.phase_E_2_reg[16]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[17]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(17),
      Q => \phase_err.phase_E_2_reg[17]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[18]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(18),
      Q => \phase_err.phase_E_2_reg[18]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[19]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(19),
      Q => \phase_err.phase_E_2_reg[19]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(1),
      Q => \phase_err.phase_E_2_reg[1]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(2),
      Q => \phase_err.phase_E_2_reg[2]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(3),
      Q => \phase_err.phase_E_2_reg[3]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(4),
      Q => \phase_err.phase_E_2_reg[4]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(5),
      Q => \phase_err.phase_E_2_reg[5]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(6),
      Q => \phase_err.phase_E_2_reg[6]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(7),
      Q => \phase_err.phase_E_2_reg[7]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[8]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(8),
      Q => \phase_err.phase_E_2_reg[8]_srl2_n_0\
    );
\phase_err.phase_E_2_reg[9]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_E(9),
      Q => \phase_err.phase_E_2_reg[9]_srl2_n_0\
    );
\phase_err.phase_E_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[0]_srl2_n_0\,
      Q => phase_E_3(0),
      R => '0'
    );
\phase_err.phase_E_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[10]_srl2_n_0\,
      Q => phase_E_3(10),
      R => '0'
    );
\phase_err.phase_E_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[11]_srl2_n_0\,
      Q => phase_E_3(11),
      R => '0'
    );
\phase_err.phase_E_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[12]_srl2_n_0\,
      Q => phase_E_3(12),
      R => '0'
    );
\phase_err.phase_E_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[13]_srl2_n_0\,
      Q => phase_E_3(13),
      R => '0'
    );
\phase_err.phase_E_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[14]_srl2_n_0\,
      Q => phase_E_3(14),
      R => '0'
    );
\phase_err.phase_E_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[15]_srl2_n_0\,
      Q => phase_E_3(15),
      R => '0'
    );
\phase_err.phase_E_3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[16]_srl2_n_0\,
      Q => phase_E_3(16),
      R => '0'
    );
\phase_err.phase_E_3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[17]_srl2_n_0\,
      Q => phase_E_3(17),
      R => '0'
    );
\phase_err.phase_E_3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[18]_srl2_n_0\,
      Q => phase_E_3(18),
      R => '0'
    );
\phase_err.phase_E_3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[19]_srl2_n_0\,
      Q => phase_E_3(19),
      R => '0'
    );
\phase_err.phase_E_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[1]_srl2_n_0\,
      Q => phase_E_3(1),
      R => '0'
    );
\phase_err.phase_E_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[2]_srl2_n_0\,
      Q => phase_E_3(2),
      R => '0'
    );
\phase_err.phase_E_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[3]_srl2_n_0\,
      Q => phase_E_3(3),
      R => '0'
    );
\phase_err.phase_E_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[4]_srl2_n_0\,
      Q => phase_E_3(4),
      R => '0'
    );
\phase_err.phase_E_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[5]_srl2_n_0\,
      Q => phase_E_3(5),
      R => '0'
    );
\phase_err.phase_E_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[6]_srl2_n_0\,
      Q => phase_E_3(6),
      R => '0'
    );
\phase_err.phase_E_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[7]_srl2_n_0\,
      Q => phase_E_3(7),
      R => '0'
    );
\phase_err.phase_E_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[8]_srl2_n_0\,
      Q => phase_E_3(8),
      R => '0'
    );
\phase_err.phase_E_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_E_2_reg[9]_srl2_n_0\,
      Q => phase_E_3(9),
      R => '0'
    );
\phase_err.phase_N_2_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(0),
      Q => \phase_err.phase_N_2_reg[0]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[10]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(10),
      Q => \phase_err.phase_N_2_reg[10]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[11]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(11),
      Q => \phase_err.phase_N_2_reg[11]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[12]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(12),
      Q => \phase_err.phase_N_2_reg[12]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[13]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(13),
      Q => \phase_err.phase_N_2_reg[13]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[14]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(14),
      Q => \phase_err.phase_N_2_reg[14]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[15]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(15),
      Q => \phase_err.phase_N_2_reg[15]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[16]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(16),
      Q => \phase_err.phase_N_2_reg[16]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[17]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(17),
      Q => \phase_err.phase_N_2_reg[17]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[18]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(18),
      Q => \phase_err.phase_N_2_reg[18]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[19]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(19),
      Q => \phase_err.phase_N_2_reg[19]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(1),
      Q => \phase_err.phase_N_2_reg[1]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(2),
      Q => \phase_err.phase_N_2_reg[2]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(3),
      Q => \phase_err.phase_N_2_reg[3]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(4),
      Q => \phase_err.phase_N_2_reg[4]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(5),
      Q => \phase_err.phase_N_2_reg[5]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(6),
      Q => \phase_err.phase_N_2_reg[6]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(7),
      Q => \phase_err.phase_N_2_reg[7]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[8]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(8),
      Q => \phase_err.phase_N_2_reg[8]_srl2_n_0\
    );
\phase_err.phase_N_2_reg[9]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_N(9),
      Q => \phase_err.phase_N_2_reg[9]_srl2_n_0\
    );
\phase_err.phase_N_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[0]_srl2_n_0\,
      Q => phase_N_3(0),
      R => '0'
    );
\phase_err.phase_N_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[10]_srl2_n_0\,
      Q => phase_N_3(10),
      R => '0'
    );
\phase_err.phase_N_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[11]_srl2_n_0\,
      Q => phase_N_3(11),
      R => '0'
    );
\phase_err.phase_N_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[12]_srl2_n_0\,
      Q => phase_N_3(12),
      R => '0'
    );
\phase_err.phase_N_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[13]_srl2_n_0\,
      Q => phase_N_3(13),
      R => '0'
    );
\phase_err.phase_N_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[14]_srl2_n_0\,
      Q => phase_N_3(14),
      R => '0'
    );
\phase_err.phase_N_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[15]_srl2_n_0\,
      Q => phase_N_3(15),
      R => '0'
    );
\phase_err.phase_N_3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[16]_srl2_n_0\,
      Q => phase_N_3(16),
      R => '0'
    );
\phase_err.phase_N_3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[17]_srl2_n_0\,
      Q => phase_N_3(17),
      R => '0'
    );
\phase_err.phase_N_3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[18]_srl2_n_0\,
      Q => phase_N_3(18),
      R => '0'
    );
\phase_err.phase_N_3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[19]_srl2_n_0\,
      Q => phase_N_3(19),
      R => '0'
    );
\phase_err.phase_N_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[1]_srl2_n_0\,
      Q => phase_N_3(1),
      R => '0'
    );
\phase_err.phase_N_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[2]_srl2_n_0\,
      Q => phase_N_3(2),
      R => '0'
    );
\phase_err.phase_N_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[3]_srl2_n_0\,
      Q => phase_N_3(3),
      R => '0'
    );
\phase_err.phase_N_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[4]_srl2_n_0\,
      Q => phase_N_3(4),
      R => '0'
    );
\phase_err.phase_N_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[5]_srl2_n_0\,
      Q => phase_N_3(5),
      R => '0'
    );
\phase_err.phase_N_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[6]_srl2_n_0\,
      Q => phase_N_3(6),
      R => '0'
    );
\phase_err.phase_N_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[7]_srl2_n_0\,
      Q => phase_N_3(7),
      R => '0'
    );
\phase_err.phase_N_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[8]_srl2_n_0\,
      Q => phase_N_3(8),
      R => '0'
    );
\phase_err.phase_N_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_N_2_reg[9]_srl2_n_0\,
      Q => phase_N_3(9),
      R => '0'
    );
\phase_err.phase_W_2_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(0),
      Q => \phase_err.phase_W_2_reg[0]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[10]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(10),
      Q => \phase_err.phase_W_2_reg[10]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[11]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(11),
      Q => \phase_err.phase_W_2_reg[11]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[12]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(12),
      Q => \phase_err.phase_W_2_reg[12]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[13]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(13),
      Q => \phase_err.phase_W_2_reg[13]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[14]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(14),
      Q => \phase_err.phase_W_2_reg[14]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[15]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(15),
      Q => \phase_err.phase_W_2_reg[15]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[16]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(16),
      Q => \phase_err.phase_W_2_reg[16]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[17]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(17),
      Q => \phase_err.phase_W_2_reg[17]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[18]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(18),
      Q => \phase_err.phase_W_2_reg[18]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[19]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(19),
      Q => \phase_err.phase_W_2_reg[19]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(1),
      Q => \phase_err.phase_W_2_reg[1]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(2),
      Q => \phase_err.phase_W_2_reg[2]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(3),
      Q => \phase_err.phase_W_2_reg[3]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(4),
      Q => \phase_err.phase_W_2_reg[4]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(5),
      Q => \phase_err.phase_W_2_reg[5]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(6),
      Q => \phase_err.phase_W_2_reg[6]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(7),
      Q => \phase_err.phase_W_2_reg[7]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[8]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(8),
      Q => \phase_err.phase_W_2_reg[8]_srl2_n_0\
    );
\phase_err.phase_W_2_reg[9]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => phase_in_W(9),
      Q => \phase_err.phase_W_2_reg[9]_srl2_n_0\
    );
\phase_err.phase_W_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[0]_srl2_n_0\,
      Q => phase_W_3(0),
      R => '0'
    );
\phase_err.phase_W_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[10]_srl2_n_0\,
      Q => phase_W_3(10),
      R => '0'
    );
\phase_err.phase_W_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[11]_srl2_n_0\,
      Q => phase_W_3(11),
      R => '0'
    );
\phase_err.phase_W_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[12]_srl2_n_0\,
      Q => phase_W_3(12),
      R => '0'
    );
\phase_err.phase_W_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[13]_srl2_n_0\,
      Q => phase_W_3(13),
      R => '0'
    );
\phase_err.phase_W_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[14]_srl2_n_0\,
      Q => phase_W_3(14),
      R => '0'
    );
\phase_err.phase_W_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[15]_srl2_n_0\,
      Q => phase_W_3(15),
      R => '0'
    );
\phase_err.phase_W_3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[16]_srl2_n_0\,
      Q => phase_W_3(16),
      R => '0'
    );
\phase_err.phase_W_3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[17]_srl2_n_0\,
      Q => phase_W_3(17),
      R => '0'
    );
\phase_err.phase_W_3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[18]_srl2_n_0\,
      Q => phase_W_3(18),
      R => '0'
    );
\phase_err.phase_W_3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[19]_srl2_n_0\,
      Q => phase_W_3(19),
      R => '0'
    );
\phase_err.phase_W_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[1]_srl2_n_0\,
      Q => phase_W_3(1),
      R => '0'
    );
\phase_err.phase_W_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[2]_srl2_n_0\,
      Q => phase_W_3(2),
      R => '0'
    );
\phase_err.phase_W_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[3]_srl2_n_0\,
      Q => phase_W_3(3),
      R => '0'
    );
\phase_err.phase_W_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[4]_srl2_n_0\,
      Q => phase_W_3(4),
      R => '0'
    );
\phase_err.phase_W_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[5]_srl2_n_0\,
      Q => phase_W_3(5),
      R => '0'
    );
\phase_err.phase_W_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[6]_srl2_n_0\,
      Q => phase_W_3(6),
      R => '0'
    );
\phase_err.phase_W_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[7]_srl2_n_0\,
      Q => phase_W_3(7),
      R => '0'
    );
\phase_err.phase_W_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[8]_srl2_n_0\,
      Q => phase_W_3(8),
      R => '0'
    );
\phase_err.phase_W_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.phase_W_2_reg[9]_srl2_n_0\,
      Q => phase_W_3(9),
      R => '0'
    );
\phase_err.phase_out_E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(0),
      Q => \^phase_out_e\(0),
      R => '0'
    );
\phase_err.phase_out_E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(10),
      Q => \^phase_out_e\(10),
      R => '0'
    );
\phase_err.phase_out_E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(11),
      Q => \^phase_out_e\(11),
      R => '0'
    );
\phase_err.phase_out_E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(12),
      Q => \^phase_out_e\(12),
      R => '0'
    );
\phase_err.phase_out_E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(13),
      Q => \^phase_out_e\(13),
      R => '0'
    );
\phase_err.phase_out_E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(14),
      Q => \^phase_out_e\(14),
      R => '0'
    );
\phase_err.phase_out_E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(15),
      Q => \^phase_out_e\(15),
      R => '0'
    );
\phase_err.phase_out_E_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(16),
      Q => \^phase_out_e\(16),
      R => '0'
    );
\phase_err.phase_out_E_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(17),
      Q => \^phase_out_e\(17),
      R => '0'
    );
\phase_err.phase_out_E_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(18),
      Q => \^phase_out_e\(18),
      R => '0'
    );
\phase_err.phase_out_E_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(19),
      Q => \^phase_out_e\(19),
      R => '0'
    );
\phase_err.phase_out_E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(1),
      Q => \^phase_out_e\(1),
      R => '0'
    );
\phase_err.phase_out_E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(2),
      Q => \^phase_out_e\(2),
      R => '0'
    );
\phase_err.phase_out_E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(3),
      Q => \^phase_out_e\(3),
      R => '0'
    );
\phase_err.phase_out_E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(4),
      Q => \^phase_out_e\(4),
      R => '0'
    );
\phase_err.phase_out_E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(5),
      Q => \^phase_out_e\(5),
      R => '0'
    );
\phase_err.phase_out_E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(6),
      Q => \^phase_out_e\(6),
      R => '0'
    );
\phase_err.phase_out_E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(7),
      Q => \^phase_out_e\(7),
      R => '0'
    );
\phase_err.phase_out_E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(8),
      Q => \^phase_out_e\(8),
      R => '0'
    );
\phase_err.phase_out_E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_E_3(9),
      Q => \^phase_out_e\(9),
      R => '0'
    );
\phase_err.phase_out_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(0),
      Q => \^phase_out_n\(0),
      R => '0'
    );
\phase_err.phase_out_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(10),
      Q => \^phase_out_n\(10),
      R => '0'
    );
\phase_err.phase_out_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(11),
      Q => \^phase_out_n\(11),
      R => '0'
    );
\phase_err.phase_out_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(12),
      Q => \^phase_out_n\(12),
      R => '0'
    );
\phase_err.phase_out_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(13),
      Q => \^phase_out_n\(13),
      R => '0'
    );
\phase_err.phase_out_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(14),
      Q => \^phase_out_n\(14),
      R => '0'
    );
\phase_err.phase_out_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(15),
      Q => \^phase_out_n\(15),
      R => '0'
    );
\phase_err.phase_out_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(16),
      Q => \^phase_out_n\(16),
      R => '0'
    );
\phase_err.phase_out_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(17),
      Q => \^phase_out_n\(17),
      R => '0'
    );
\phase_err.phase_out_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(18),
      Q => \^phase_out_n\(18),
      R => '0'
    );
\phase_err.phase_out_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(19),
      Q => \^phase_out_n\(19),
      R => '0'
    );
\phase_err.phase_out_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(1),
      Q => \^phase_out_n\(1),
      R => '0'
    );
\phase_err.phase_out_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(2),
      Q => \^phase_out_n\(2),
      R => '0'
    );
\phase_err.phase_out_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(3),
      Q => \^phase_out_n\(3),
      R => '0'
    );
\phase_err.phase_out_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(4),
      Q => \^phase_out_n\(4),
      R => '0'
    );
\phase_err.phase_out_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(5),
      Q => \^phase_out_n\(5),
      R => '0'
    );
\phase_err.phase_out_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(6),
      Q => \^phase_out_n\(6),
      R => '0'
    );
\phase_err.phase_out_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(7),
      Q => \^phase_out_n\(7),
      R => '0'
    );
\phase_err.phase_out_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(8),
      Q => \^phase_out_n\(8),
      R => '0'
    );
\phase_err.phase_out_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_N_3(9),
      Q => \^phase_out_n\(9),
      R => '0'
    );
\phase_err.phase_out_W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(0),
      Q => \^phase_out_w\(0),
      R => '0'
    );
\phase_err.phase_out_W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(10),
      Q => \^phase_out_w\(10),
      R => '0'
    );
\phase_err.phase_out_W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(11),
      Q => \^phase_out_w\(11),
      R => '0'
    );
\phase_err.phase_out_W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(12),
      Q => \^phase_out_w\(12),
      R => '0'
    );
\phase_err.phase_out_W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(13),
      Q => \^phase_out_w\(13),
      R => '0'
    );
\phase_err.phase_out_W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(14),
      Q => \^phase_out_w\(14),
      R => '0'
    );
\phase_err.phase_out_W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(15),
      Q => \^phase_out_w\(15),
      R => '0'
    );
\phase_err.phase_out_W_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(16),
      Q => \^phase_out_w\(16),
      R => '0'
    );
\phase_err.phase_out_W_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(17),
      Q => \^phase_out_w\(17),
      R => '0'
    );
\phase_err.phase_out_W_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(18),
      Q => \^phase_out_w\(18),
      R => '0'
    );
\phase_err.phase_out_W_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(19),
      Q => \^phase_out_w\(19),
      R => '0'
    );
\phase_err.phase_out_W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(1),
      Q => \^phase_out_w\(1),
      R => '0'
    );
\phase_err.phase_out_W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(2),
      Q => \^phase_out_w\(2),
      R => '0'
    );
\phase_err.phase_out_W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(3),
      Q => \^phase_out_w\(3),
      R => '0'
    );
\phase_err.phase_out_W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(4),
      Q => \^phase_out_w\(4),
      R => '0'
    );
\phase_err.phase_out_W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(5),
      Q => \^phase_out_w\(5),
      R => '0'
    );
\phase_err.phase_out_W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(6),
      Q => \^phase_out_w\(6),
      R => '0'
    );
\phase_err.phase_out_W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(7),
      Q => \^phase_out_w\(7),
      R => '0'
    );
\phase_err.phase_out_W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(8),
      Q => \^phase_out_w\(8),
      R => '0'
    );
\phase_err.phase_out_W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => phase_W_3(9),
      Q => \^phase_out_w\(9),
      R => '0'
    );
\phase_err.prev_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(0),
      Q => prev_EW(0),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(10),
      Q => prev_EW(10),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(11),
      Q => prev_EW(11),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(12),
      Q => prev_EW(12),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(13),
      Q => prev_EW(13),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(14),
      Q => prev_EW(14),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(15),
      Q => prev_EW(15),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(16),
      Q => prev_EW(16),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(17),
      Q => prev_EW(17),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(18),
      Q => prev_EW(18),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(1),
      Q => prev_EW(1),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(2),
      Q => prev_EW(2),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(3),
      Q => prev_EW(3),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(4),
      Q => prev_EW(4),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(5),
      Q => prev_EW(5),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(6),
      Q => prev_EW(6),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(7),
      Q => prev_EW(7),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(8),
      Q => prev_EW(8),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_EW(9),
      Q => prev_EW(9),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^valid\,
      O => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(0),
      Q => prev_NE(0),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(10),
      Q => prev_NE(10),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(11),
      Q => prev_NE(11),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(12),
      Q => prev_NE(12),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(13),
      Q => prev_NE(13),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(14),
      Q => prev_NE(14),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(15),
      Q => prev_NE(15),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(16),
      Q => prev_NE(16),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(17),
      Q => prev_NE(17),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(18),
      Q => prev_NE(18),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(1),
      Q => prev_NE(1),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(2),
      Q => prev_NE(2),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(3),
      Q => prev_NE(3),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(4),
      Q => prev_NE(4),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(5),
      Q => prev_NE(5),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(6),
      Q => prev_NE(6),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(7),
      Q => prev_NE(7),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(8),
      Q => prev_NE(8),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NE(9),
      Q => prev_NE(9),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(0),
      Q => prev_NW(0),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(10),
      Q => prev_NW(10),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(11),
      Q => prev_NW(11),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(12),
      Q => prev_NW(12),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(13),
      Q => prev_NW(13),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(14),
      Q => prev_NW(14),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(15),
      Q => prev_NW(15),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(16),
      Q => prev_NW(16),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(17),
      Q => prev_NW(17),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(18),
      Q => prev_NW(18),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(1),
      Q => prev_NW(1),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(2),
      Q => prev_NW(2),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(3),
      Q => prev_NW(3),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(4),
      Q => prev_NW(4),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(5),
      Q => prev_NW(5),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(6),
      Q => prev_NW(6),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(7),
      Q => prev_NW(7),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(8),
      Q => prev_NW(8),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.prev_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => diff_NW(9),
      Q => prev_NW(9),
      R => \phase_err.prev_NE[18]_i_1_n_0\
    );
\phase_err.raw_diff_EW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(15),
      I1 => phase_in_W(15),
      O => \phase_err.raw_diff_EW[15]_i_2_n_0\
    );
\phase_err.raw_diff_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(14),
      I1 => phase_in_W(14),
      O => \phase_err.raw_diff_EW[15]_i_3_n_0\
    );
\phase_err.raw_diff_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(13),
      I1 => phase_in_W(13),
      O => \phase_err.raw_diff_EW[15]_i_4_n_0\
    );
\phase_err.raw_diff_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(12),
      I1 => phase_in_W(12),
      O => \phase_err.raw_diff_EW[15]_i_5_n_0\
    );
\phase_err.raw_diff_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(11),
      I1 => phase_in_W(11),
      O => \phase_err.raw_diff_EW[15]_i_6_n_0\
    );
\phase_err.raw_diff_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(10),
      I1 => phase_in_W(10),
      O => \phase_err.raw_diff_EW[15]_i_7_n_0\
    );
\phase_err.raw_diff_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(9),
      I1 => phase_in_W(9),
      O => \phase_err.raw_diff_EW[15]_i_8_n_0\
    );
\phase_err.raw_diff_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(8),
      I1 => phase_in_W(8),
      O => \phase_err.raw_diff_EW[15]_i_9_n_0\
    );
\phase_err.raw_diff_EW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(19),
      I1 => phase_in_W(19),
      O => \phase_err.raw_diff_EW[19]_i_2_n_0\
    );
\phase_err.raw_diff_EW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(18),
      I1 => phase_in_W(18),
      O => \phase_err.raw_diff_EW[19]_i_3_n_0\
    );
\phase_err.raw_diff_EW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(17),
      I1 => phase_in_W(17),
      O => \phase_err.raw_diff_EW[19]_i_4_n_0\
    );
\phase_err.raw_diff_EW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(16),
      I1 => phase_in_W(16),
      O => \phase_err.raw_diff_EW[19]_i_5_n_0\
    );
\phase_err.raw_diff_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(7),
      I1 => phase_in_W(7),
      O => \phase_err.raw_diff_EW[7]_i_2_n_0\
    );
\phase_err.raw_diff_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(6),
      I1 => phase_in_W(6),
      O => \phase_err.raw_diff_EW[7]_i_3_n_0\
    );
\phase_err.raw_diff_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(5),
      I1 => phase_in_W(5),
      O => \phase_err.raw_diff_EW[7]_i_4_n_0\
    );
\phase_err.raw_diff_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(4),
      I1 => phase_in_W(4),
      O => \phase_err.raw_diff_EW[7]_i_5_n_0\
    );
\phase_err.raw_diff_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(3),
      I1 => phase_in_W(3),
      O => \phase_err.raw_diff_EW[7]_i_6_n_0\
    );
\phase_err.raw_diff_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(2),
      I1 => phase_in_W(2),
      O => \phase_err.raw_diff_EW[7]_i_7_n_0\
    );
\phase_err.raw_diff_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(1),
      I1 => phase_in_W(1),
      O => \phase_err.raw_diff_EW[7]_i_8_n_0\
    );
\phase_err.raw_diff_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_E(0),
      I1 => phase_in_W(0),
      O => \phase_err.raw_diff_EW[7]_i_9_n_0\
    );
\phase_err.raw_diff_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(0),
      Q => raw_diff_EW(0),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(10),
      Q => raw_diff_EW(10),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(11),
      Q => raw_diff_EW(11),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(12),
      Q => raw_diff_EW(12),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(13),
      Q => raw_diff_EW(13),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(14),
      Q => raw_diff_EW(14),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(15),
      Q => raw_diff_EW(15),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_EW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_EW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_EW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_EW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_EW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_EW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_EW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_EW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_in_E(15 downto 8),
      O(7 downto 0) => \phase_err.raw_diff_EW_reg00_out\(15 downto 8),
      S(7) => \phase_err.raw_diff_EW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_EW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_EW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_EW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_EW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_EW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_EW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_EW[15]_i_9_n_0\
    );
\phase_err.raw_diff_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(16),
      Q => raw_diff_EW(16),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(17),
      Q => raw_diff_EW(17),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(18),
      Q => raw_diff_EW(18),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(19),
      Q => raw_diff_EW(19),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_EW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_phase_err.raw_diff_EW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \phase_err.raw_diff_EW_reg[19]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_EW_reg[19]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_EW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_in_E(18 downto 16),
      O(7 downto 4) => \NLW_phase_err.raw_diff_EW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \phase_err.raw_diff_EW_reg00_out\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \phase_err.raw_diff_EW[19]_i_2_n_0\,
      S(2) => \phase_err.raw_diff_EW[19]_i_3_n_0\,
      S(1) => \phase_err.raw_diff_EW[19]_i_4_n_0\,
      S(0) => \phase_err.raw_diff_EW[19]_i_5_n_0\
    );
\phase_err.raw_diff_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(1),
      Q => raw_diff_EW(1),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(2),
      Q => raw_diff_EW(2),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(3),
      Q => raw_diff_EW(3),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(4),
      Q => raw_diff_EW(4),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(5),
      Q => raw_diff_EW(5),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(6),
      Q => raw_diff_EW(6),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(7),
      Q => raw_diff_EW(7),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_EW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_EW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_EW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_EW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_EW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_EW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_EW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_in_E(7 downto 0),
      O(7 downto 0) => \phase_err.raw_diff_EW_reg00_out\(7 downto 0),
      S(7) => \phase_err.raw_diff_EW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_EW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_EW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_EW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_EW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_EW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_EW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_EW[7]_i_9_n_0\
    );
\phase_err.raw_diff_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(8),
      Q => raw_diff_EW(8),
      R => '0'
    );
\phase_err.raw_diff_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_EW_reg00_out\(9),
      Q => raw_diff_EW(9),
      R => '0'
    );
\phase_err.raw_diff_NE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(15),
      I1 => phase_in_E(15),
      O => \phase_err.raw_diff_NE[15]_i_2_n_0\
    );
\phase_err.raw_diff_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(14),
      I1 => phase_in_E(14),
      O => \phase_err.raw_diff_NE[15]_i_3_n_0\
    );
\phase_err.raw_diff_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(13),
      I1 => phase_in_E(13),
      O => \phase_err.raw_diff_NE[15]_i_4_n_0\
    );
\phase_err.raw_diff_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(12),
      I1 => phase_in_E(12),
      O => \phase_err.raw_diff_NE[15]_i_5_n_0\
    );
\phase_err.raw_diff_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(11),
      I1 => phase_in_E(11),
      O => \phase_err.raw_diff_NE[15]_i_6_n_0\
    );
\phase_err.raw_diff_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(10),
      I1 => phase_in_E(10),
      O => \phase_err.raw_diff_NE[15]_i_7_n_0\
    );
\phase_err.raw_diff_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(9),
      I1 => phase_in_E(9),
      O => \phase_err.raw_diff_NE[15]_i_8_n_0\
    );
\phase_err.raw_diff_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(8),
      I1 => phase_in_E(8),
      O => \phase_err.raw_diff_NE[15]_i_9_n_0\
    );
\phase_err.raw_diff_NE[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(19),
      I1 => phase_in_E(19),
      O => \phase_err.raw_diff_NE[19]_i_2_n_0\
    );
\phase_err.raw_diff_NE[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(18),
      I1 => phase_in_E(18),
      O => \phase_err.raw_diff_NE[19]_i_3_n_0\
    );
\phase_err.raw_diff_NE[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(17),
      I1 => phase_in_E(17),
      O => \phase_err.raw_diff_NE[19]_i_4_n_0\
    );
\phase_err.raw_diff_NE[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(16),
      I1 => phase_in_E(16),
      O => \phase_err.raw_diff_NE[19]_i_5_n_0\
    );
\phase_err.raw_diff_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(7),
      I1 => phase_in_E(7),
      O => \phase_err.raw_diff_NE[7]_i_2_n_0\
    );
\phase_err.raw_diff_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(6),
      I1 => phase_in_E(6),
      O => \phase_err.raw_diff_NE[7]_i_3_n_0\
    );
\phase_err.raw_diff_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(5),
      I1 => phase_in_E(5),
      O => \phase_err.raw_diff_NE[7]_i_4_n_0\
    );
\phase_err.raw_diff_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(4),
      I1 => phase_in_E(4),
      O => \phase_err.raw_diff_NE[7]_i_5_n_0\
    );
\phase_err.raw_diff_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(3),
      I1 => phase_in_E(3),
      O => \phase_err.raw_diff_NE[7]_i_6_n_0\
    );
\phase_err.raw_diff_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(2),
      I1 => phase_in_E(2),
      O => \phase_err.raw_diff_NE[7]_i_7_n_0\
    );
\phase_err.raw_diff_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(1),
      I1 => phase_in_E(1),
      O => \phase_err.raw_diff_NE[7]_i_8_n_0\
    );
\phase_err.raw_diff_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(0),
      I1 => phase_in_E(0),
      O => \phase_err.raw_diff_NE[7]_i_9_n_0\
    );
\phase_err.raw_diff_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(0),
      Q => raw_diff_NE(0),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(10),
      Q => raw_diff_NE(10),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(11),
      Q => raw_diff_NE(11),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(12),
      Q => raw_diff_NE(12),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(13),
      Q => raw_diff_NE(13),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(14),
      Q => raw_diff_NE(14),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(15),
      Q => raw_diff_NE(15),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NE_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NE_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NE_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NE_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NE_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NE_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NE_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(15 downto 8),
      O(7 downto 0) => \phase_err.raw_diff_NE_reg02_out\(15 downto 8),
      S(7) => \phase_err.raw_diff_NE[15]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NE[15]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NE[15]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NE[15]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NE[15]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NE[15]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NE[15]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NE[15]_i_9_n_0\
    );
\phase_err.raw_diff_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(16),
      Q => raw_diff_NE(16),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(17),
      Q => raw_diff_NE(17),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(18),
      Q => raw_diff_NE(18),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(19),
      Q => raw_diff_NE(19),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_phase_err.raw_diff_NE_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \phase_err.raw_diff_NE_reg[19]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NE_reg[19]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NE_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_in_N(18 downto 16),
      O(7 downto 4) => \NLW_phase_err.raw_diff_NE_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \phase_err.raw_diff_NE_reg02_out\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \phase_err.raw_diff_NE[19]_i_2_n_0\,
      S(2) => \phase_err.raw_diff_NE[19]_i_3_n_0\,
      S(1) => \phase_err.raw_diff_NE[19]_i_4_n_0\,
      S(0) => \phase_err.raw_diff_NE[19]_i_5_n_0\
    );
\phase_err.raw_diff_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(1),
      Q => raw_diff_NE(1),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(2),
      Q => raw_diff_NE(2),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(3),
      Q => raw_diff_NE(3),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(4),
      Q => raw_diff_NE(4),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(5),
      Q => raw_diff_NE(5),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(6),
      Q => raw_diff_NE(6),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(7),
      Q => raw_diff_NE(7),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NE_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NE_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NE_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NE_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NE_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NE_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NE_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(7 downto 0),
      O(7 downto 0) => \phase_err.raw_diff_NE_reg02_out\(7 downto 0),
      S(7) => \phase_err.raw_diff_NE[7]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NE[7]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NE[7]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NE[7]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NE[7]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NE[7]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NE[7]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NE[7]_i_9_n_0\
    );
\phase_err.raw_diff_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(8),
      Q => raw_diff_NE(8),
      R => '0'
    );
\phase_err.raw_diff_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NE_reg02_out\(9),
      Q => raw_diff_NE(9),
      R => '0'
    );
\phase_err.raw_diff_NW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(15),
      I1 => phase_in_W(15),
      O => \phase_err.raw_diff_NW[15]_i_2_n_0\
    );
\phase_err.raw_diff_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(14),
      I1 => phase_in_W(14),
      O => \phase_err.raw_diff_NW[15]_i_3_n_0\
    );
\phase_err.raw_diff_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(13),
      I1 => phase_in_W(13),
      O => \phase_err.raw_diff_NW[15]_i_4_n_0\
    );
\phase_err.raw_diff_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(12),
      I1 => phase_in_W(12),
      O => \phase_err.raw_diff_NW[15]_i_5_n_0\
    );
\phase_err.raw_diff_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(11),
      I1 => phase_in_W(11),
      O => \phase_err.raw_diff_NW[15]_i_6_n_0\
    );
\phase_err.raw_diff_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(10),
      I1 => phase_in_W(10),
      O => \phase_err.raw_diff_NW[15]_i_7_n_0\
    );
\phase_err.raw_diff_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(9),
      I1 => phase_in_W(9),
      O => \phase_err.raw_diff_NW[15]_i_8_n_0\
    );
\phase_err.raw_diff_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(8),
      I1 => phase_in_W(8),
      O => \phase_err.raw_diff_NW[15]_i_9_n_0\
    );
\phase_err.raw_diff_NW[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(19),
      I1 => phase_in_W(19),
      O => \phase_err.raw_diff_NW[19]_i_2_n_0\
    );
\phase_err.raw_diff_NW[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(18),
      I1 => phase_in_W(18),
      O => \phase_err.raw_diff_NW[19]_i_3_n_0\
    );
\phase_err.raw_diff_NW[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(17),
      I1 => phase_in_W(17),
      O => \phase_err.raw_diff_NW[19]_i_4_n_0\
    );
\phase_err.raw_diff_NW[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(16),
      I1 => phase_in_W(16),
      O => \phase_err.raw_diff_NW[19]_i_5_n_0\
    );
\phase_err.raw_diff_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(7),
      I1 => phase_in_W(7),
      O => \phase_err.raw_diff_NW[7]_i_2_n_0\
    );
\phase_err.raw_diff_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(6),
      I1 => phase_in_W(6),
      O => \phase_err.raw_diff_NW[7]_i_3_n_0\
    );
\phase_err.raw_diff_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(5),
      I1 => phase_in_W(5),
      O => \phase_err.raw_diff_NW[7]_i_4_n_0\
    );
\phase_err.raw_diff_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(4),
      I1 => phase_in_W(4),
      O => \phase_err.raw_diff_NW[7]_i_5_n_0\
    );
\phase_err.raw_diff_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(3),
      I1 => phase_in_W(3),
      O => \phase_err.raw_diff_NW[7]_i_6_n_0\
    );
\phase_err.raw_diff_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(2),
      I1 => phase_in_W(2),
      O => \phase_err.raw_diff_NW[7]_i_7_n_0\
    );
\phase_err.raw_diff_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(1),
      I1 => phase_in_W(1),
      O => \phase_err.raw_diff_NW[7]_i_8_n_0\
    );
\phase_err.raw_diff_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => phase_in_N(0),
      I1 => phase_in_W(0),
      O => \phase_err.raw_diff_NW[7]_i_9_n_0\
    );
\phase_err.raw_diff_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(0),
      Q => raw_diff_NW(0),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(10),
      Q => raw_diff_NW(10),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(11),
      Q => raw_diff_NW(11),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(12),
      Q => raw_diff_NW(12),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(13),
      Q => raw_diff_NW(13),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(14),
      Q => raw_diff_NW(14),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(15),
      Q => raw_diff_NW(15),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(15 downto 8),
      O(7 downto 0) => \phase_err.raw_diff_NW_reg0\(15 downto 8),
      S(7) => \phase_err.raw_diff_NW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NW[15]_i_9_n_0\
    );
\phase_err.raw_diff_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(16),
      Q => raw_diff_NW(16),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(17),
      Q => raw_diff_NW(17),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(18),
      Q => raw_diff_NW(18),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(19),
      Q => raw_diff_NW(19),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_diff_NW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_phase_err.raw_diff_NW_reg[19]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \phase_err.raw_diff_NW_reg[19]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NW_reg[19]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NW_reg[19]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => phase_in_N(18 downto 16),
      O(7 downto 4) => \NLW_phase_err.raw_diff_NW_reg[19]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \phase_err.raw_diff_NW_reg0\(19 downto 16),
      S(7 downto 4) => B"0000",
      S(3) => \phase_err.raw_diff_NW[19]_i_2_n_0\,
      S(2) => \phase_err.raw_diff_NW[19]_i_3_n_0\,
      S(1) => \phase_err.raw_diff_NW[19]_i_4_n_0\,
      S(0) => \phase_err.raw_diff_NW[19]_i_5_n_0\
    );
\phase_err.raw_diff_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(1),
      Q => raw_diff_NW(1),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(2),
      Q => raw_diff_NW(2),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(3),
      Q => raw_diff_NW(3),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(4),
      Q => raw_diff_NW(4),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(5),
      Q => raw_diff_NW(5),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(6),
      Q => raw_diff_NW(6),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(7),
      Q => raw_diff_NW(7),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_diff_NW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_diff_NW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_diff_NW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_diff_NW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_diff_NW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_diff_NW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_diff_NW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_diff_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => phase_in_N(7 downto 0),
      O(7 downto 0) => \phase_err.raw_diff_NW_reg0\(7 downto 0),
      S(7) => \phase_err.raw_diff_NW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_diff_NW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_diff_NW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_diff_NW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_diff_NW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_diff_NW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_diff_NW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_diff_NW[7]_i_9_n_0\
    );
\phase_err.raw_diff_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(8),
      Q => raw_diff_NW(8),
      R => '0'
    );
\phase_err.raw_diff_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_diff_NW_reg0\(9),
      Q => raw_diff_NW(9),
      R => '0'
    );
\phase_err.raw_err_EW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(15),
      I1 => prev_EW(15),
      O => \phase_err.raw_err_EW[15]_i_2_n_0\
    );
\phase_err.raw_err_EW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(14),
      I1 => prev_EW(14),
      O => \phase_err.raw_err_EW[15]_i_3_n_0\
    );
\phase_err.raw_err_EW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(13),
      I1 => prev_EW(13),
      O => \phase_err.raw_err_EW[15]_i_4_n_0\
    );
\phase_err.raw_err_EW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(12),
      I1 => prev_EW(12),
      O => \phase_err.raw_err_EW[15]_i_5_n_0\
    );
\phase_err.raw_err_EW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(11),
      I1 => prev_EW(11),
      O => \phase_err.raw_err_EW[15]_i_6_n_0\
    );
\phase_err.raw_err_EW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(10),
      I1 => prev_EW(10),
      O => \phase_err.raw_err_EW[15]_i_7_n_0\
    );
\phase_err.raw_err_EW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(9),
      I1 => prev_EW(9),
      O => \phase_err.raw_err_EW[15]_i_8_n_0\
    );
\phase_err.raw_err_EW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(8),
      I1 => prev_EW(8),
      O => \phase_err.raw_err_EW[15]_i_9_n_0\
    );
\phase_err.raw_err_EW[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(18),
      I1 => prev_EW(18),
      O => \phase_err.raw_err_EW[18]_i_2_n_0\
    );
\phase_err.raw_err_EW[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(17),
      I1 => prev_EW(17),
      O => \phase_err.raw_err_EW[18]_i_3_n_0\
    );
\phase_err.raw_err_EW[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(16),
      I1 => prev_EW(16),
      O => \phase_err.raw_err_EW[18]_i_4_n_0\
    );
\phase_err.raw_err_EW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(7),
      I1 => prev_EW(7),
      O => \phase_err.raw_err_EW[7]_i_2_n_0\
    );
\phase_err.raw_err_EW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(6),
      I1 => prev_EW(6),
      O => \phase_err.raw_err_EW[7]_i_3_n_0\
    );
\phase_err.raw_err_EW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(5),
      I1 => prev_EW(5),
      O => \phase_err.raw_err_EW[7]_i_4_n_0\
    );
\phase_err.raw_err_EW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(4),
      I1 => prev_EW(4),
      O => \phase_err.raw_err_EW[7]_i_5_n_0\
    );
\phase_err.raw_err_EW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(3),
      I1 => prev_EW(3),
      O => \phase_err.raw_err_EW[7]_i_6_n_0\
    );
\phase_err.raw_err_EW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(2),
      I1 => prev_EW(2),
      O => \phase_err.raw_err_EW[7]_i_7_n_0\
    );
\phase_err.raw_err_EW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(1),
      I1 => prev_EW(1),
      O => \phase_err.raw_err_EW[7]_i_8_n_0\
    );
\phase_err.raw_err_EW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_EW(0),
      I1 => prev_EW(0),
      O => \phase_err.raw_err_EW[7]_i_9_n_0\
    );
\phase_err.raw_err_EW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(0),
      Q => raw_err_EW(0),
      R => '0'
    );
\phase_err.raw_err_EW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(10),
      Q => raw_err_EW(10),
      R => '0'
    );
\phase_err.raw_err_EW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(11),
      Q => raw_err_EW(11),
      R => '0'
    );
\phase_err.raw_err_EW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(12),
      Q => raw_err_EW(12),
      R => '0'
    );
\phase_err.raw_err_EW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(13),
      Q => raw_err_EW(13),
      R => '0'
    );
\phase_err.raw_err_EW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(14),
      Q => raw_err_EW(14),
      R => '0'
    );
\phase_err.raw_err_EW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(15),
      Q => raw_err_EW(15),
      R => '0'
    );
\phase_err.raw_err_EW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_EW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_EW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_EW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_EW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_EW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_EW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_EW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_EW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_EW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => diff_EW(15 downto 8),
      O(7 downto 0) => \phase_err.raw_err_EW_reg00_out\(15 downto 8),
      S(7) => \phase_err.raw_err_EW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_err_EW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_err_EW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_err_EW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_err_EW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_err_EW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_err_EW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_err_EW[15]_i_9_n_0\
    );
\phase_err.raw_err_EW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(16),
      Q => raw_err_EW(16),
      R => '0'
    );
\phase_err.raw_err_EW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(17),
      Q => raw_err_EW(17),
      R => '0'
    );
\phase_err.raw_err_EW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(18),
      Q => raw_err_EW(18),
      R => '0'
    );
\phase_err.raw_err_EW_reg[18]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_EW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_phase_err.raw_err_EW_reg[18]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \phase_err.raw_err_EW_reg[18]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_EW_reg[18]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => diff_EW(17 downto 16),
      O(7 downto 3) => \NLW_phase_err.raw_err_EW_reg[18]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \phase_err.raw_err_EW_reg00_out\(18 downto 16),
      S(7 downto 3) => B"00000",
      S(2) => \phase_err.raw_err_EW[18]_i_2_n_0\,
      S(1) => \phase_err.raw_err_EW[18]_i_3_n_0\,
      S(0) => \phase_err.raw_err_EW[18]_i_4_n_0\
    );
\phase_err.raw_err_EW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(1),
      Q => raw_err_EW(1),
      R => '0'
    );
\phase_err.raw_err_EW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(2),
      Q => raw_err_EW(2),
      R => '0'
    );
\phase_err.raw_err_EW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(3),
      Q => raw_err_EW(3),
      R => '0'
    );
\phase_err.raw_err_EW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(4),
      Q => raw_err_EW(4),
      R => '0'
    );
\phase_err.raw_err_EW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(5),
      Q => raw_err_EW(5),
      R => '0'
    );
\phase_err.raw_err_EW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(6),
      Q => raw_err_EW(6),
      R => '0'
    );
\phase_err.raw_err_EW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(7),
      Q => raw_err_EW(7),
      R => '0'
    );
\phase_err.raw_err_EW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_EW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_EW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_EW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_EW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_EW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_EW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_EW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_EW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => diff_EW(7 downto 0),
      O(7 downto 0) => \phase_err.raw_err_EW_reg00_out\(7 downto 0),
      S(7) => \phase_err.raw_err_EW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_err_EW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_err_EW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_err_EW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_err_EW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_err_EW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_err_EW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_err_EW[7]_i_9_n_0\
    );
\phase_err.raw_err_EW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(8),
      Q => raw_err_EW(8),
      R => '0'
    );
\phase_err.raw_err_EW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_EW_reg00_out\(9),
      Q => raw_err_EW(9),
      R => '0'
    );
\phase_err.raw_err_NE[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(15),
      I1 => prev_NE(15),
      O => \phase_err.raw_err_NE[15]_i_2_n_0\
    );
\phase_err.raw_err_NE[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(14),
      I1 => prev_NE(14),
      O => \phase_err.raw_err_NE[15]_i_3_n_0\
    );
\phase_err.raw_err_NE[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(13),
      I1 => prev_NE(13),
      O => \phase_err.raw_err_NE[15]_i_4_n_0\
    );
\phase_err.raw_err_NE[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(12),
      I1 => prev_NE(12),
      O => \phase_err.raw_err_NE[15]_i_5_n_0\
    );
\phase_err.raw_err_NE[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(11),
      I1 => prev_NE(11),
      O => \phase_err.raw_err_NE[15]_i_6_n_0\
    );
\phase_err.raw_err_NE[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(10),
      I1 => prev_NE(10),
      O => \phase_err.raw_err_NE[15]_i_7_n_0\
    );
\phase_err.raw_err_NE[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(9),
      I1 => prev_NE(9),
      O => \phase_err.raw_err_NE[15]_i_8_n_0\
    );
\phase_err.raw_err_NE[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(8),
      I1 => prev_NE(8),
      O => \phase_err.raw_err_NE[15]_i_9_n_0\
    );
\phase_err.raw_err_NE[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(18),
      I1 => prev_NE(18),
      O => \phase_err.raw_err_NE[18]_i_2_n_0\
    );
\phase_err.raw_err_NE[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(17),
      I1 => prev_NE(17),
      O => \phase_err.raw_err_NE[18]_i_3_n_0\
    );
\phase_err.raw_err_NE[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(16),
      I1 => prev_NE(16),
      O => \phase_err.raw_err_NE[18]_i_4_n_0\
    );
\phase_err.raw_err_NE[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(7),
      I1 => prev_NE(7),
      O => \phase_err.raw_err_NE[7]_i_2_n_0\
    );
\phase_err.raw_err_NE[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(6),
      I1 => prev_NE(6),
      O => \phase_err.raw_err_NE[7]_i_3_n_0\
    );
\phase_err.raw_err_NE[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(5),
      I1 => prev_NE(5),
      O => \phase_err.raw_err_NE[7]_i_4_n_0\
    );
\phase_err.raw_err_NE[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(4),
      I1 => prev_NE(4),
      O => \phase_err.raw_err_NE[7]_i_5_n_0\
    );
\phase_err.raw_err_NE[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(3),
      I1 => prev_NE(3),
      O => \phase_err.raw_err_NE[7]_i_6_n_0\
    );
\phase_err.raw_err_NE[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(2),
      I1 => prev_NE(2),
      O => \phase_err.raw_err_NE[7]_i_7_n_0\
    );
\phase_err.raw_err_NE[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(1),
      I1 => prev_NE(1),
      O => \phase_err.raw_err_NE[7]_i_8_n_0\
    );
\phase_err.raw_err_NE[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NE(0),
      I1 => prev_NE(0),
      O => \phase_err.raw_err_NE[7]_i_9_n_0\
    );
\phase_err.raw_err_NE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(0),
      Q => raw_err_NE(0),
      R => '0'
    );
\phase_err.raw_err_NE_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(10),
      Q => raw_err_NE(10),
      R => '0'
    );
\phase_err.raw_err_NE_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(11),
      Q => raw_err_NE(11),
      R => '0'
    );
\phase_err.raw_err_NE_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(12),
      Q => raw_err_NE(12),
      R => '0'
    );
\phase_err.raw_err_NE_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(13),
      Q => raw_err_NE(13),
      R => '0'
    );
\phase_err.raw_err_NE_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(14),
      Q => raw_err_NE(14),
      R => '0'
    );
\phase_err.raw_err_NE_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(15),
      Q => raw_err_NE(15),
      R => '0'
    );
\phase_err.raw_err_NE_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NE_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NE_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NE_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NE_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NE_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NE_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NE_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NE_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NE_reg[15]_i_1_n_7\,
      DI(7 downto 0) => diff_NE(15 downto 8),
      O(7 downto 0) => \phase_err.raw_err_NE_reg04_out\(15 downto 8),
      S(7) => \phase_err.raw_err_NE[15]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NE[15]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NE[15]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NE[15]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NE[15]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NE[15]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NE[15]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NE[15]_i_9_n_0\
    );
\phase_err.raw_err_NE_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(16),
      Q => raw_err_NE(16),
      R => '0'
    );
\phase_err.raw_err_NE_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(17),
      Q => raw_err_NE(17),
      R => '0'
    );
\phase_err.raw_err_NE_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(18),
      Q => raw_err_NE(18),
      R => '0'
    );
\phase_err.raw_err_NE_reg[18]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NE_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_phase_err.raw_err_NE_reg[18]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \phase_err.raw_err_NE_reg[18]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NE_reg[18]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => diff_NE(17 downto 16),
      O(7 downto 3) => \NLW_phase_err.raw_err_NE_reg[18]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \phase_err.raw_err_NE_reg04_out\(18 downto 16),
      S(7 downto 3) => B"00000",
      S(2) => \phase_err.raw_err_NE[18]_i_2_n_0\,
      S(1) => \phase_err.raw_err_NE[18]_i_3_n_0\,
      S(0) => \phase_err.raw_err_NE[18]_i_4_n_0\
    );
\phase_err.raw_err_NE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(1),
      Q => raw_err_NE(1),
      R => '0'
    );
\phase_err.raw_err_NE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(2),
      Q => raw_err_NE(2),
      R => '0'
    );
\phase_err.raw_err_NE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(3),
      Q => raw_err_NE(3),
      R => '0'
    );
\phase_err.raw_err_NE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(4),
      Q => raw_err_NE(4),
      R => '0'
    );
\phase_err.raw_err_NE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(5),
      Q => raw_err_NE(5),
      R => '0'
    );
\phase_err.raw_err_NE_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(6),
      Q => raw_err_NE(6),
      R => '0'
    );
\phase_err.raw_err_NE_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(7),
      Q => raw_err_NE(7),
      R => '0'
    );
\phase_err.raw_err_NE_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NE_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NE_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NE_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NE_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NE_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NE_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NE_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NE_reg[7]_i_1_n_7\,
      DI(7 downto 0) => diff_NE(7 downto 0),
      O(7 downto 0) => \phase_err.raw_err_NE_reg04_out\(7 downto 0),
      S(7) => \phase_err.raw_err_NE[7]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NE[7]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NE[7]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NE[7]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NE[7]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NE[7]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NE[7]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NE[7]_i_9_n_0\
    );
\phase_err.raw_err_NE_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(8),
      Q => raw_err_NE(8),
      R => '0'
    );
\phase_err.raw_err_NE_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NE_reg04_out\(9),
      Q => raw_err_NE(9),
      R => '0'
    );
\phase_err.raw_err_NW[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(15),
      I1 => prev_NW(15),
      O => \phase_err.raw_err_NW[15]_i_2_n_0\
    );
\phase_err.raw_err_NW[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(14),
      I1 => prev_NW(14),
      O => \phase_err.raw_err_NW[15]_i_3_n_0\
    );
\phase_err.raw_err_NW[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(13),
      I1 => prev_NW(13),
      O => \phase_err.raw_err_NW[15]_i_4_n_0\
    );
\phase_err.raw_err_NW[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(12),
      I1 => prev_NW(12),
      O => \phase_err.raw_err_NW[15]_i_5_n_0\
    );
\phase_err.raw_err_NW[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(11),
      I1 => prev_NW(11),
      O => \phase_err.raw_err_NW[15]_i_6_n_0\
    );
\phase_err.raw_err_NW[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(10),
      I1 => prev_NW(10),
      O => \phase_err.raw_err_NW[15]_i_7_n_0\
    );
\phase_err.raw_err_NW[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(9),
      I1 => prev_NW(9),
      O => \phase_err.raw_err_NW[15]_i_8_n_0\
    );
\phase_err.raw_err_NW[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(8),
      I1 => prev_NW(8),
      O => \phase_err.raw_err_NW[15]_i_9_n_0\
    );
\phase_err.raw_err_NW[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(18),
      I1 => prev_NW(18),
      O => \phase_err.raw_err_NW[18]_i_2_n_0\
    );
\phase_err.raw_err_NW[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(17),
      I1 => prev_NW(17),
      O => \phase_err.raw_err_NW[18]_i_3_n_0\
    );
\phase_err.raw_err_NW[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(16),
      I1 => prev_NW(16),
      O => \phase_err.raw_err_NW[18]_i_4_n_0\
    );
\phase_err.raw_err_NW[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(7),
      I1 => prev_NW(7),
      O => \phase_err.raw_err_NW[7]_i_2_n_0\
    );
\phase_err.raw_err_NW[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(6),
      I1 => prev_NW(6),
      O => \phase_err.raw_err_NW[7]_i_3_n_0\
    );
\phase_err.raw_err_NW[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(5),
      I1 => prev_NW(5),
      O => \phase_err.raw_err_NW[7]_i_4_n_0\
    );
\phase_err.raw_err_NW[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(4),
      I1 => prev_NW(4),
      O => \phase_err.raw_err_NW[7]_i_5_n_0\
    );
\phase_err.raw_err_NW[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(3),
      I1 => prev_NW(3),
      O => \phase_err.raw_err_NW[7]_i_6_n_0\
    );
\phase_err.raw_err_NW[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(2),
      I1 => prev_NW(2),
      O => \phase_err.raw_err_NW[7]_i_7_n_0\
    );
\phase_err.raw_err_NW[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(1),
      I1 => prev_NW(1),
      O => \phase_err.raw_err_NW[7]_i_8_n_0\
    );
\phase_err.raw_err_NW[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => diff_NW(0),
      I1 => prev_NW(0),
      O => \phase_err.raw_err_NW[7]_i_9_n_0\
    );
\phase_err.raw_err_NW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(0),
      Q => raw_err_NW(0),
      R => '0'
    );
\phase_err.raw_err_NW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(10),
      Q => raw_err_NW(10),
      R => '0'
    );
\phase_err.raw_err_NW_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(11),
      Q => raw_err_NW(11),
      R => '0'
    );
\phase_err.raw_err_NW_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(12),
      Q => raw_err_NW(12),
      R => '0'
    );
\phase_err.raw_err_NW_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(13),
      Q => raw_err_NW(13),
      R => '0'
    );
\phase_err.raw_err_NW_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(14),
      Q => raw_err_NW(14),
      R => '0'
    );
\phase_err.raw_err_NW_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(15),
      Q => raw_err_NW(15),
      R => '0'
    );
\phase_err.raw_err_NW_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NW_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NW_reg[15]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NW_reg[15]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NW_reg[15]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NW_reg[15]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NW_reg[15]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NW_reg[15]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NW_reg[15]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NW_reg[15]_i_1_n_7\,
      DI(7 downto 0) => diff_NW(15 downto 8),
      O(7 downto 0) => \phase_err.raw_err_NW_reg02_out\(15 downto 8),
      S(7) => \phase_err.raw_err_NW[15]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NW[15]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NW[15]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NW[15]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NW[15]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NW[15]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NW[15]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NW[15]_i_9_n_0\
    );
\phase_err.raw_err_NW_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(16),
      Q => raw_err_NW(16),
      R => '0'
    );
\phase_err.raw_err_NW_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(17),
      Q => raw_err_NW(17),
      R => '0'
    );
\phase_err.raw_err_NW_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(18),
      Q => raw_err_NW(18),
      R => '0'
    );
\phase_err.raw_err_NW_reg[18]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \phase_err.raw_err_NW_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_phase_err.raw_err_NW_reg[18]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \phase_err.raw_err_NW_reg[18]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NW_reg[18]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => diff_NW(17 downto 16),
      O(7 downto 3) => \NLW_phase_err.raw_err_NW_reg[18]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \phase_err.raw_err_NW_reg02_out\(18 downto 16),
      S(7 downto 3) => B"00000",
      S(2) => \phase_err.raw_err_NW[18]_i_2_n_0\,
      S(1) => \phase_err.raw_err_NW[18]_i_3_n_0\,
      S(0) => \phase_err.raw_err_NW[18]_i_4_n_0\
    );
\phase_err.raw_err_NW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(1),
      Q => raw_err_NW(1),
      R => '0'
    );
\phase_err.raw_err_NW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(2),
      Q => raw_err_NW(2),
      R => '0'
    );
\phase_err.raw_err_NW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(3),
      Q => raw_err_NW(3),
      R => '0'
    );
\phase_err.raw_err_NW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(4),
      Q => raw_err_NW(4),
      R => '0'
    );
\phase_err.raw_err_NW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(5),
      Q => raw_err_NW(5),
      R => '0'
    );
\phase_err.raw_err_NW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(6),
      Q => raw_err_NW(6),
      R => '0'
    );
\phase_err.raw_err_NW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(7),
      Q => raw_err_NW(7),
      R => '0'
    );
\phase_err.raw_err_NW_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \phase_err.raw_err_NW_reg[7]_i_1_n_0\,
      CO(6) => \phase_err.raw_err_NW_reg[7]_i_1_n_1\,
      CO(5) => \phase_err.raw_err_NW_reg[7]_i_1_n_2\,
      CO(4) => \phase_err.raw_err_NW_reg[7]_i_1_n_3\,
      CO(3) => \phase_err.raw_err_NW_reg[7]_i_1_n_4\,
      CO(2) => \phase_err.raw_err_NW_reg[7]_i_1_n_5\,
      CO(1) => \phase_err.raw_err_NW_reg[7]_i_1_n_6\,
      CO(0) => \phase_err.raw_err_NW_reg[7]_i_1_n_7\,
      DI(7 downto 0) => diff_NW(7 downto 0),
      O(7 downto 0) => \phase_err.raw_err_NW_reg02_out\(7 downto 0),
      S(7) => \phase_err.raw_err_NW[7]_i_2_n_0\,
      S(6) => \phase_err.raw_err_NW[7]_i_3_n_0\,
      S(5) => \phase_err.raw_err_NW[7]_i_4_n_0\,
      S(4) => \phase_err.raw_err_NW[7]_i_5_n_0\,
      S(3) => \phase_err.raw_err_NW[7]_i_6_n_0\,
      S(2) => \phase_err.raw_err_NW[7]_i_7_n_0\,
      S(1) => \phase_err.raw_err_NW[7]_i_8_n_0\,
      S(0) => \phase_err.raw_err_NW[7]_i_9_n_0\
    );
\phase_err.raw_err_NW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(8),
      Q => raw_err_NW(8),
      R => '0'
    );
\phase_err.raw_err_NW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.raw_err_NW_reg02_out\(9),
      Q => raw_err_NW(9),
      R => '0'
    );
\phase_err.valid_2_reg_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => active,
      Q => \phase_err.valid_2_reg_srl2_n_0\
    );
\phase_err.valid_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phase_err.valid_2_reg_srl2_n_0\,
      Q => valid_3,
      R => '0'
    );
\phase_err.valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_3,
      Q => \^valid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0_freq_low_46 is
  port (
    fifo_clk : in STD_LOGIC;
    raw_wr : in STD_LOGIC;
    raw_data : in STD_LOGIC_VECTOR ( 191 downto 0 );
    freq_wr : in STD_LOGIC;
    freq_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doa_wr : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 299 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_freq_low_46_0_0_freq_low_46 : entity is "freq_low_46";
end ps_freq_low_46_0_0_freq_low_46;

architecture STRUCTURE of ps_freq_low_46_0_0_freq_low_46 is
  component ps_freq_low_46_0_0_fifo_doa_low is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 47 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 47 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_freq_low_46_0_0_fifo_doa_low;
  component ps_freq_low_46_0_0_fifo_raw_low is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 191 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 191 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_freq_low_46_0_0_fifo_raw_low;
  component ps_freq_low_46_0_0_fir_doa_low_im is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_freq_low_46_0_0_fir_doa_low_im;
  component ps_freq_low_46_0_0_fir_doa_low_im_HD3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_low_46_0_0_fir_doa_low_im_HD3;
  component ps_freq_low_46_0_0_fir_doa_low_re is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component ps_freq_low_46_0_0_fir_doa_low_re;
  component ps_freq_low_46_0_0_fir_doa_low_re_HD4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_freq_low_46_0_0_fir_doa_low_re_HD4;
  signal E : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal N : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal W : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal active0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal \^doa_wr\ : STD_LOGIC;
  signal envE : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal envN : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal envW : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_E : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_N : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal env_W : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_freq_low_re_N_i_i_1_n_0 : STD_LOGIC;
  signal fir_im_E : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_im_N : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_im_W : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_E : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_N : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal fir_re_W : STD_LOGIC_VECTOR ( 36 downto 13 );
  signal freq_fifo_data : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal freq_fifo_empty : STD_LOGIC;
  signal freq_fifo_rd : STD_LOGIC;
  signal freq_fifo_valid : STD_LOGIC;
  signal freq_fifo_valid0 : STD_LOGIC;
  signal \freq_low_46.curr_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_10_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_11_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_12_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_13_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_14_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay[7]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_10\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_11\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_12\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_13\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_14\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_15\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \freq_low_46.curr_delay_reg[7]_i_3_n_9\ : STD_LOGIC;
  signal \freq_low_46.freq_fifo_rd_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[1]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.freq_rd_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.morlet_active_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.morlet_active_reg_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_4_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_5_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_6_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_7_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_8_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay[7]_i_9_n_0\ : STD_LOGIC;
  signal \freq_low_46.start_delay_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal freq_rd_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal freq_rd_delay0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal phaseE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phaseN : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phaseW : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_E : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_N : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal phase_W : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal raw_fifo_data : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal start_delay0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal valid : STD_LOGIC;
  signal valid_E : STD_LOGIC;
  signal valid_W : STD_LOGIC;
  signal NLW_fifo_freq_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_E_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_N_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_im_W_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_E_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_N_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_freq_low_re_W_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \NLW_freq_low_46.curr_delay_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_freq_low_46.curr_delay_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_phase_err_i_err_EW_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_phase_err_i_err_NE_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_phase_err_i_err_NW_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_freq_i : label is "fifo_doa_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_freq_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_freq_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_freq_low_im_E_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_freq_low_im_E_i : label is "yes";
  attribute x_core_info of fir_freq_low_im_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_freq_low_im_N_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_freq_low_im_N_i : label is "yes";
  attribute x_core_info of fir_freq_low_im_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_freq_low_im_W_i : label is "fir_doa_low_im,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_freq_low_im_W_i : label is "yes";
  attribute x_core_info of fir_freq_low_im_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_freq_low_re_E_i : label is "fir_doa_low_re,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_freq_low_re_E_i : label is "yes";
  attribute x_core_info of fir_freq_low_re_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_freq_low_re_N_i : label is "fir_doa_low_re,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_freq_low_re_N_i : label is "yes";
  attribute x_core_info of fir_freq_low_re_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_freq_low_re_W_i : label is "fir_doa_low_re,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_freq_low_re_W_i : label is "yes";
  attribute x_core_info of fir_freq_low_re_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \freq_low_46.curr_delay_reg[7]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \freq_low_46.curr_delay_reg[7]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \freq_low_46.freq_rd_delay[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \freq_low_46.freq_rd_delay[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \freq_low_46.start_delay[4]_i_1\ : label is "soft_lutpair6";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of phase_err_i : label is "soft";
begin
  doa_wr <= \^doa_wr\;
fifo_freq_i: component ps_freq_low_46_0_0_fifo_doa_low
     port map (
      din(47 downto 0) => freq_data(47 downto 0),
      dout(47 downto 0) => freq_fifo_data(47 downto 0),
      empty => freq_fifo_empty,
      full => NLW_fifo_freq_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => freq_fifo_rd,
      rd_rst_busy => NLW_fifo_freq_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => freq_wr,
      wr_rst_busy => NLW_fifo_freq_i_wr_rst_busy_UNCONNECTED
    );
fifo_raw_i: component ps_freq_low_46_0_0_fifo_raw_low
     port map (
      din(191 downto 0) => raw_data(191 downto 0),
      dout(191 downto 0) => raw_fifo_data(191 downto 0),
      empty => NLW_fifo_raw_i_empty_UNCONNECTED,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => \^doa_wr\,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => fifo_clk,
      wr_en => raw_wr,
      wr_rst_busy => NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED
    );
fir_freq_low_im_E_i: component ps_freq_low_46_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 37) => NLW_fir_freq_low_im_E_i_m_axis_data_tdata_UNCONNECTED(39 downto 37),
      m_axis_data_tdata(36 downto 13) => fir_im_E(36 downto 13),
      m_axis_data_tdata(12 downto 0) => NLW_fir_freq_low_im_E_i_m_axis_data_tdata_UNCONNECTED(12 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_im_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_im_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_freq_low_im_N_i: component ps_freq_low_46_0_0_fir_doa_low_im
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 37) => NLW_fir_freq_low_im_N_i_m_axis_data_tdata_UNCONNECTED(39 downto 37),
      m_axis_data_tdata(36 downto 13) => fir_im_N(36 downto 13),
      m_axis_data_tdata(12 downto 0) => NLW_fir_freq_low_im_N_i_m_axis_data_tdata_UNCONNECTED(12 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_im_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_im_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_freq_low_im_W_i: component ps_freq_low_46_0_0_fir_doa_low_im_HD3
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 37) => NLW_fir_freq_low_im_W_i_m_axis_data_tdata_UNCONNECTED(39 downto 37),
      m_axis_data_tdata(36 downto 13) => fir_im_W(36 downto 13),
      m_axis_data_tdata(12 downto 0) => NLW_fir_freq_low_im_W_i_m_axis_data_tdata_UNCONNECTED(12 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_im_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_im_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_freq_low_re_E_i: component ps_freq_low_46_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 37) => NLW_fir_freq_low_re_E_i_m_axis_data_tdata_UNCONNECTED(39 downto 37),
      m_axis_data_tdata(36 downto 13) => fir_re_E(36 downto 13),
      m_axis_data_tdata(12 downto 0) => NLW_fir_freq_low_re_E_i_m_axis_data_tdata_UNCONNECTED(12 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_re_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => E(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_re_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_freq_low_re_N_i: component ps_freq_low_46_0_0_fir_doa_low_re
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 37) => NLW_fir_freq_low_re_N_i_m_axis_data_tdata_UNCONNECTED(39 downto 37),
      m_axis_data_tdata(36 downto 13) => fir_re_N(36 downto 13),
      m_axis_data_tdata(12 downto 0) => NLW_fir_freq_low_re_N_i_m_axis_data_tdata_UNCONNECTED(12 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_re_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => N(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_re_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
fir_freq_low_re_N_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => fir_freq_low_re_N_i_i_1_n_0
    );
fir_freq_low_re_W_i: component ps_freq_low_46_0_0_fir_doa_low_re_HD4
     port map (
      aclk => clk,
      aresetn => fir_freq_low_re_N_i_i_1_n_0,
      m_axis_data_tdata(39 downto 37) => NLW_fir_freq_low_re_W_i_m_axis_data_tdata_UNCONNECTED(39 downto 37),
      m_axis_data_tdata(36 downto 13) => fir_re_W(36 downto 13),
      m_axis_data_tdata(12 downto 0) => NLW_fir_freq_low_re_W_i_m_axis_data_tdata_UNCONNECTED(12 downto 0),
      m_axis_data_tvalid => NLW_fir_freq_low_re_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => W(15 downto 0),
      s_axis_data_tready => NLW_fir_freq_low_re_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => freq_fifo_valid
    );
freq_E_i: entity work.\ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__2\
     port map (
      Q(15 downto 0) => env_E(15 downto 0),
      clk => clk,
      \morlet_to_phase_env.phase_reg[19]_0\(19 downto 0) => phase_E(19 downto 0),
      \morlet_to_phase_env.phase_reg[19]_1\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_E(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_E(36 downto 13),
      valid_E => valid_E
    );
freq_N_i: entity work.\ps_freq_low_46_0_0_morlet_to_phase_env__xdcDup__1\
     port map (
      Q(15 downto 0) => env_N(15 downto 0),
      active => active0,
      clk => clk,
      \morlet_to_phase_env.phase_reg[19]_0\(19 downto 0) => phase_N(19 downto 0),
      \morlet_to_phase_env.phase_reg[19]_1\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_N(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_N(36 downto 13),
      valid_E => valid_E,
      valid_W => valid_W
    );
freq_W_i: entity work.ps_freq_low_46_0_0_morlet_to_phase_env
     port map (
      Q(15 downto 0) => env_W(15 downto 0),
      clk => clk,
      \morlet_to_phase_env.phase_reg[19]_0\(19 downto 0) => phase_W(19 downto 0),
      \morlet_to_phase_env.phase_reg[19]_1\ => \freq_low_46.morlet_active_reg_n_0\,
      s_axis_cartesian_tdata(47 downto 24) => fir_im_W(36 downto 13),
      s_axis_cartesian_tdata(23 downto 0) => fir_re_W(36 downto 13),
      valid_W => valid_W
    );
\freq_low_46.E_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(16),
      Q => E(0),
      R => '0'
    );
\freq_low_46.E_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(26),
      Q => E(10),
      R => '0'
    );
\freq_low_46.E_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(27),
      Q => E(11),
      R => '0'
    );
\freq_low_46.E_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(28),
      Q => E(12),
      R => '0'
    );
\freq_low_46.E_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(29),
      Q => E(13),
      R => '0'
    );
\freq_low_46.E_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(30),
      Q => E(14),
      R => '0'
    );
\freq_low_46.E_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(31),
      Q => E(15),
      R => '0'
    );
\freq_low_46.E_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(17),
      Q => E(1),
      R => '0'
    );
\freq_low_46.E_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(18),
      Q => E(2),
      R => '0'
    );
\freq_low_46.E_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(19),
      Q => E(3),
      R => '0'
    );
\freq_low_46.E_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(20),
      Q => E(4),
      R => '0'
    );
\freq_low_46.E_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(21),
      Q => E(5),
      R => '0'
    );
\freq_low_46.E_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(22),
      Q => E(6),
      R => '0'
    );
\freq_low_46.E_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(23),
      Q => E(7),
      R => '0'
    );
\freq_low_46.E_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(24),
      Q => E(8),
      R => '0'
    );
\freq_low_46.E_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(25),
      Q => E(9),
      R => '0'
    );
\freq_low_46.N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(0),
      Q => N(0),
      R => '0'
    );
\freq_low_46.N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(10),
      Q => N(10),
      R => '0'
    );
\freq_low_46.N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(11),
      Q => N(11),
      R => '0'
    );
\freq_low_46.N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(12),
      Q => N(12),
      R => '0'
    );
\freq_low_46.N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(13),
      Q => N(13),
      R => '0'
    );
\freq_low_46.N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(14),
      Q => N(14),
      R => '0'
    );
\freq_low_46.N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(15),
      Q => N(15),
      R => '0'
    );
\freq_low_46.N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(1),
      Q => N(1),
      R => '0'
    );
\freq_low_46.N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(2),
      Q => N(2),
      R => '0'
    );
\freq_low_46.N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(3),
      Q => N(3),
      R => '0'
    );
\freq_low_46.N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(4),
      Q => N(4),
      R => '0'
    );
\freq_low_46.N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(5),
      Q => N(5),
      R => '0'
    );
\freq_low_46.N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(6),
      Q => N(6),
      R => '0'
    );
\freq_low_46.N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(7),
      Q => N(7),
      R => '0'
    );
\freq_low_46.N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(8),
      Q => N(8),
      R => '0'
    );
\freq_low_46.N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(9),
      Q => N(9),
      R => '0'
    );
\freq_low_46.W_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(32),
      Q => W(0),
      R => '0'
    );
\freq_low_46.W_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(42),
      Q => W(10),
      R => '0'
    );
\freq_low_46.W_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(43),
      Q => W(11),
      R => '0'
    );
\freq_low_46.W_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(44),
      Q => W(12),
      R => '0'
    );
\freq_low_46.W_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(45),
      Q => W(13),
      R => '0'
    );
\freq_low_46.W_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(46),
      Q => W(14),
      R => '0'
    );
\freq_low_46.W_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(47),
      Q => W(15),
      R => '0'
    );
\freq_low_46.W_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(33),
      Q => W(1),
      R => '0'
    );
\freq_low_46.W_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(34),
      Q => W(2),
      R => '0'
    );
\freq_low_46.W_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(35),
      Q => W(3),
      R => '0'
    );
\freq_low_46.W_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(36),
      Q => W(4),
      R => '0'
    );
\freq_low_46.W_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(37),
      Q => W(5),
      R => '0'
    );
\freq_low_46.W_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(38),
      Q => W(6),
      R => '0'
    );
\freq_low_46.W_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(39),
      Q => W(7),
      R => '0'
    );
\freq_low_46.W_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(40),
      Q => W(8),
      R => '0'
    );
\freq_low_46.W_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => freq_fifo_valid0,
      D => freq_fifo_data(41),
      Q => W(9),
      R => '0'
    );
\freq_low_46.curr_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(0),
      O => \freq_low_46.curr_delay[0]_i_1_n_0\
    );
\freq_low_46.curr_delay[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(4),
      I2 => \freq_low_46.start_delay_reg\(3),
      I3 => \freq_low_46.start_delay_reg\(1),
      I4 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      O => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(3),
      I1 => \freq_low_46.curr_delay_reg\(4),
      O => \freq_low_46.curr_delay[7]_i_10_n_0\
    );
\freq_low_46.curr_delay[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(2),
      I1 => \freq_low_46.curr_delay_reg\(3),
      O => \freq_low_46.curr_delay[7]_i_11_n_0\
    );
\freq_low_46.curr_delay[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(1),
      I1 => \freq_low_46.curr_delay_reg\(2),
      O => \freq_low_46.curr_delay[7]_i_12_n_0\
    );
\freq_low_46.curr_delay[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(1),
      I1 => freq_fifo_valid,
      O => \freq_low_46.curr_delay[7]_i_13_n_0\
    );
\freq_low_46.curr_delay[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(5),
      I1 => \freq_low_46.curr_delay_reg\(4),
      I2 => \freq_low_46.curr_delay_reg\(7),
      I3 => \freq_low_46.curr_delay_reg\(6),
      O => \freq_low_46.curr_delay[7]_i_14_n_0\
    );
\freq_low_46.curr_delay[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I1 => freq_fifo_valid,
      I2 => data0,
      O => \freq_low_46.curr_delay[7]_i_2_n_0\
    );
\freq_low_46.curr_delay[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(2),
      I1 => \freq_low_46.start_delay_reg\(7),
      I2 => freq_fifo_valid,
      I3 => \freq_low_46.start_delay_reg\(6),
      I4 => \freq_low_46.start_delay_reg\(5),
      O => \freq_low_46.curr_delay[7]_i_4_n_0\
    );
\freq_low_46.curr_delay[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(6),
      I3 => \freq_low_46.start_delay_reg\(5),
      I4 => \freq_low_46.start_delay_reg\(7),
      I5 => \freq_low_46.start_delay[7]_i_4_n_0\,
      O => \freq_low_46.curr_delay[7]_i_5_n_0\
    );
\freq_low_46.curr_delay[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(2),
      I1 => \freq_low_46.curr_delay_reg\(3),
      I2 => \freq_low_46.curr_delay_reg\(0),
      I3 => \freq_low_46.curr_delay_reg\(1),
      I4 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      O => data0
    );
\freq_low_46.curr_delay[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(6),
      I1 => \freq_low_46.curr_delay_reg\(7),
      O => \freq_low_46.curr_delay[7]_i_7_n_0\
    );
\freq_low_46.curr_delay[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(5),
      I1 => \freq_low_46.curr_delay_reg\(6),
      O => \freq_low_46.curr_delay[7]_i_8_n_0\
    );
\freq_low_46.curr_delay[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(4),
      I1 => \freq_low_46.curr_delay_reg\(5),
      O => \freq_low_46.curr_delay[7]_i_9_n_0\
    );
\freq_low_46.curr_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay[0]_i_1_n_0\,
      Q => \freq_low_46.curr_delay_reg\(0),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_15\,
      Q => \freq_low_46.curr_delay_reg\(1),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_14\,
      Q => \freq_low_46.curr_delay_reg\(2),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_13\,
      Q => \freq_low_46.curr_delay_reg\(3),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_12\,
      Q => \freq_low_46.curr_delay_reg\(4),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_11\,
      Q => \freq_low_46.curr_delay_reg\(5),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_10\,
      Q => \freq_low_46.curr_delay_reg\(6),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.curr_delay[7]_i_2_n_0\,
      D => \freq_low_46.curr_delay_reg[7]_i_3_n_9\,
      Q => \freq_low_46.curr_delay_reg\(7),
      R => \freq_low_46.curr_delay[7]_i_1_n_0\
    );
\freq_low_46.curr_delay_reg[7]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \freq_low_46.curr_delay_reg\(0),
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_freq_low_46.curr_delay_reg[7]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \freq_low_46.curr_delay_reg[7]_i_3_n_2\,
      CO(4) => \freq_low_46.curr_delay_reg[7]_i_3_n_3\,
      CO(3) => \freq_low_46.curr_delay_reg[7]_i_3_n_4\,
      CO(2) => \freq_low_46.curr_delay_reg[7]_i_3_n_5\,
      CO(1) => \freq_low_46.curr_delay_reg[7]_i_3_n_6\,
      CO(0) => \freq_low_46.curr_delay_reg[7]_i_3_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 1) => \freq_low_46.curr_delay_reg\(5 downto 1),
      DI(0) => freq_fifo_valid,
      O(7) => \NLW_freq_low_46.curr_delay_reg[7]_i_3_O_UNCONNECTED\(7),
      O(6) => \freq_low_46.curr_delay_reg[7]_i_3_n_9\,
      O(5) => \freq_low_46.curr_delay_reg[7]_i_3_n_10\,
      O(4) => \freq_low_46.curr_delay_reg[7]_i_3_n_11\,
      O(3) => \freq_low_46.curr_delay_reg[7]_i_3_n_12\,
      O(2) => \freq_low_46.curr_delay_reg[7]_i_3_n_13\,
      O(1) => \freq_low_46.curr_delay_reg[7]_i_3_n_14\,
      O(0) => \freq_low_46.curr_delay_reg[7]_i_3_n_15\,
      S(7) => '0',
      S(6) => \freq_low_46.curr_delay[7]_i_7_n_0\,
      S(5) => \freq_low_46.curr_delay[7]_i_8_n_0\,
      S(4) => \freq_low_46.curr_delay[7]_i_9_n_0\,
      S(3) => \freq_low_46.curr_delay[7]_i_10_n_0\,
      S(2) => \freq_low_46.curr_delay[7]_i_11_n_0\,
      S(1) => \freq_low_46.curr_delay[7]_i_12_n_0\,
      S(0) => \freq_low_46.curr_delay[7]_i_13_n_0\
    );
\freq_low_46.doa_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(0),
      Q => doa_data(0),
      R => '0'
    );
\freq_low_46.doa_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(0),
      Q => doa_data(100),
      R => '0'
    );
\freq_low_46.doa_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(1),
      Q => doa_data(101),
      R => '0'
    );
\freq_low_46.doa_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(2),
      Q => doa_data(102),
      R => '0'
    );
\freq_low_46.doa_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(3),
      Q => doa_data(103),
      R => '0'
    );
\freq_low_46.doa_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(4),
      Q => doa_data(104),
      R => '0'
    );
\freq_low_46.doa_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(5),
      Q => doa_data(105),
      R => '0'
    );
\freq_low_46.doa_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(6),
      Q => doa_data(106),
      R => '0'
    );
\freq_low_46.doa_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(7),
      Q => doa_data(107),
      R => '0'
    );
\freq_low_46.doa_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(8),
      Q => doa_data(108),
      R => '0'
    );
\freq_low_46.doa_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(9),
      Q => doa_data(109),
      R => '0'
    );
\freq_low_46.doa_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(10),
      Q => doa_data(10),
      R => '0'
    );
\freq_low_46.doa_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(10),
      Q => doa_data(110),
      R => '0'
    );
\freq_low_46.doa_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(11),
      Q => doa_data(111),
      R => '0'
    );
\freq_low_46.doa_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(12),
      Q => doa_data(112),
      R => '0'
    );
\freq_low_46.doa_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(13),
      Q => doa_data(113),
      R => '0'
    );
\freq_low_46.doa_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(14),
      Q => doa_data(114),
      R => '0'
    );
\freq_low_46.doa_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envE(15),
      Q => doa_data(115),
      R => '0'
    );
\freq_low_46.doa_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(0),
      Q => doa_data(116),
      R => '0'
    );
\freq_low_46.doa_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(1),
      Q => doa_data(117),
      R => '0'
    );
\freq_low_46.doa_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(2),
      Q => doa_data(118),
      R => '0'
    );
\freq_low_46.doa_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(3),
      Q => doa_data(119),
      R => '0'
    );
\freq_low_46.doa_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(11),
      Q => doa_data(11),
      R => '0'
    );
\freq_low_46.doa_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(4),
      Q => doa_data(120),
      R => '0'
    );
\freq_low_46.doa_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(5),
      Q => doa_data(121),
      R => '0'
    );
\freq_low_46.doa_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(6),
      Q => doa_data(122),
      R => '0'
    );
\freq_low_46.doa_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(7),
      Q => doa_data(123),
      R => '0'
    );
\freq_low_46.doa_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(8),
      Q => doa_data(124),
      R => '0'
    );
\freq_low_46.doa_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(9),
      Q => doa_data(125),
      R => '0'
    );
\freq_low_46.doa_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(10),
      Q => doa_data(126),
      R => '0'
    );
\freq_low_46.doa_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(11),
      Q => doa_data(127),
      R => '0'
    );
\freq_low_46.doa_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(12),
      Q => doa_data(128),
      R => '0'
    );
\freq_low_46.doa_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(13),
      Q => doa_data(129),
      R => '0'
    );
\freq_low_46.doa_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(12),
      Q => doa_data(12),
      R => '0'
    );
\freq_low_46.doa_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(14),
      Q => doa_data(130),
      R => '0'
    );
\freq_low_46.doa_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(15),
      Q => doa_data(131),
      R => '0'
    );
\freq_low_46.doa_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(16),
      Q => doa_data(132),
      R => '0'
    );
\freq_low_46.doa_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(17),
      Q => doa_data(133),
      R => '0'
    );
\freq_low_46.doa_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(18),
      Q => doa_data(134),
      R => '0'
    );
\freq_low_46.doa_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseE(19),
      Q => doa_data(135),
      R => '0'
    );
\freq_low_46.doa_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(64),
      Q => doa_data(136),
      R => '0'
    );
\freq_low_46.doa_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(65),
      Q => doa_data(137),
      R => '0'
    );
\freq_low_46.doa_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(66),
      Q => doa_data(138),
      R => '0'
    );
\freq_low_46.doa_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(67),
      Q => doa_data(139),
      R => '0'
    );
\freq_low_46.doa_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(13),
      Q => doa_data(13),
      R => '0'
    );
\freq_low_46.doa_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(68),
      Q => doa_data(140),
      R => '0'
    );
\freq_low_46.doa_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(69),
      Q => doa_data(141),
      R => '0'
    );
\freq_low_46.doa_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(70),
      Q => doa_data(142),
      R => '0'
    );
\freq_low_46.doa_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(71),
      Q => doa_data(143),
      R => '0'
    );
\freq_low_46.doa_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(72),
      Q => doa_data(144),
      R => '0'
    );
\freq_low_46.doa_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(73),
      Q => doa_data(145),
      R => '0'
    );
\freq_low_46.doa_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(74),
      Q => doa_data(146),
      R => '0'
    );
\freq_low_46.doa_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(75),
      Q => doa_data(147),
      R => '0'
    );
\freq_low_46.doa_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(76),
      Q => doa_data(148),
      R => '0'
    );
\freq_low_46.doa_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(77),
      Q => doa_data(149),
      R => '0'
    );
\freq_low_46.doa_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(14),
      Q => doa_data(14),
      R => '0'
    );
\freq_low_46.doa_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(78),
      Q => doa_data(150),
      R => '0'
    );
\freq_low_46.doa_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(79),
      Q => doa_data(151),
      R => '0'
    );
\freq_low_46.doa_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(80),
      Q => doa_data(152),
      R => '0'
    );
\freq_low_46.doa_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(81),
      Q => doa_data(153),
      R => '0'
    );
\freq_low_46.doa_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(82),
      Q => doa_data(154),
      R => '0'
    );
\freq_low_46.doa_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(83),
      Q => doa_data(155),
      R => '0'
    );
\freq_low_46.doa_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(84),
      Q => doa_data(156),
      R => '0'
    );
\freq_low_46.doa_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(85),
      Q => doa_data(157),
      R => '0'
    );
\freq_low_46.doa_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(86),
      Q => doa_data(158),
      R => '0'
    );
\freq_low_46.doa_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(87),
      Q => doa_data(159),
      R => '0'
    );
\freq_low_46.doa_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(15),
      Q => doa_data(15),
      R => '0'
    );
\freq_low_46.doa_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(88),
      Q => doa_data(160),
      R => '0'
    );
\freq_low_46.doa_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(89),
      Q => doa_data(161),
      R => '0'
    );
\freq_low_46.doa_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(90),
      Q => doa_data(162),
      R => '0'
    );
\freq_low_46.doa_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(91),
      Q => doa_data(163),
      R => '0'
    );
\freq_low_46.doa_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(92),
      Q => doa_data(164),
      R => '0'
    );
\freq_low_46.doa_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(93),
      Q => doa_data(165),
      R => '0'
    );
\freq_low_46.doa_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(94),
      Q => doa_data(166),
      R => '0'
    );
\freq_low_46.doa_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(95),
      Q => doa_data(167),
      R => '0'
    );
\freq_low_46.doa_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(96),
      Q => doa_data(168),
      R => '0'
    );
\freq_low_46.doa_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(97),
      Q => doa_data(169),
      R => '0'
    );
\freq_low_46.doa_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(0),
      Q => doa_data(16),
      R => '0'
    );
\freq_low_46.doa_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(98),
      Q => doa_data(170),
      R => '0'
    );
\freq_low_46.doa_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(99),
      Q => doa_data(171),
      R => '0'
    );
\freq_low_46.doa_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(100),
      Q => doa_data(172),
      R => '0'
    );
\freq_low_46.doa_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(101),
      Q => doa_data(173),
      R => '0'
    );
\freq_low_46.doa_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(102),
      Q => doa_data(174),
      R => '0'
    );
\freq_low_46.doa_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(103),
      Q => doa_data(175),
      R => '0'
    );
\freq_low_46.doa_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(104),
      Q => doa_data(176),
      R => '0'
    );
\freq_low_46.doa_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(105),
      Q => doa_data(177),
      R => '0'
    );
\freq_low_46.doa_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(106),
      Q => doa_data(178),
      R => '0'
    );
\freq_low_46.doa_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(107),
      Q => doa_data(179),
      R => '0'
    );
\freq_low_46.doa_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(1),
      Q => doa_data(17),
      R => '0'
    );
\freq_low_46.doa_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(108),
      Q => doa_data(180),
      R => '0'
    );
\freq_low_46.doa_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(109),
      Q => doa_data(181),
      R => '0'
    );
\freq_low_46.doa_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(110),
      Q => doa_data(182),
      R => '0'
    );
\freq_low_46.doa_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(111),
      Q => doa_data(183),
      R => '0'
    );
\freq_low_46.doa_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(112),
      Q => doa_data(184),
      R => '0'
    );
\freq_low_46.doa_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(113),
      Q => doa_data(185),
      R => '0'
    );
\freq_low_46.doa_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(114),
      Q => doa_data(186),
      R => '0'
    );
\freq_low_46.doa_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(115),
      Q => doa_data(187),
      R => '0'
    );
\freq_low_46.doa_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(116),
      Q => doa_data(188),
      R => '0'
    );
\freq_low_46.doa_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(117),
      Q => doa_data(189),
      R => '0'
    );
\freq_low_46.doa_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(2),
      Q => doa_data(18),
      R => '0'
    );
\freq_low_46.doa_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(118),
      Q => doa_data(190),
      R => '0'
    );
\freq_low_46.doa_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(119),
      Q => doa_data(191),
      R => '0'
    );
\freq_low_46.doa_data_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(120),
      Q => doa_data(192),
      R => '0'
    );
\freq_low_46.doa_data_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(121),
      Q => doa_data(193),
      R => '0'
    );
\freq_low_46.doa_data_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(122),
      Q => doa_data(194),
      R => '0'
    );
\freq_low_46.doa_data_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(123),
      Q => doa_data(195),
      R => '0'
    );
\freq_low_46.doa_data_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(124),
      Q => doa_data(196),
      R => '0'
    );
\freq_low_46.doa_data_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(125),
      Q => doa_data(197),
      R => '0'
    );
\freq_low_46.doa_data_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(126),
      Q => doa_data(198),
      R => '0'
    );
\freq_low_46.doa_data_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(127),
      Q => doa_data(199),
      R => '0'
    );
\freq_low_46.doa_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(3),
      Q => doa_data(19),
      R => '0'
    );
\freq_low_46.doa_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(1),
      Q => doa_data(1),
      R => '0'
    );
\freq_low_46.doa_data_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(0),
      Q => doa_data(200),
      R => '0'
    );
\freq_low_46.doa_data_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(1),
      Q => doa_data(201),
      R => '0'
    );
\freq_low_46.doa_data_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(2),
      Q => doa_data(202),
      R => '0'
    );
\freq_low_46.doa_data_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(3),
      Q => doa_data(203),
      R => '0'
    );
\freq_low_46.doa_data_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(4),
      Q => doa_data(204),
      R => '0'
    );
\freq_low_46.doa_data_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(5),
      Q => doa_data(205),
      R => '0'
    );
\freq_low_46.doa_data_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(6),
      Q => doa_data(206),
      R => '0'
    );
\freq_low_46.doa_data_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(7),
      Q => doa_data(207),
      R => '0'
    );
\freq_low_46.doa_data_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(8),
      Q => doa_data(208),
      R => '0'
    );
\freq_low_46.doa_data_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(9),
      Q => doa_data(209),
      R => '0'
    );
\freq_low_46.doa_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(4),
      Q => doa_data(20),
      R => '0'
    );
\freq_low_46.doa_data_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(10),
      Q => doa_data(210),
      R => '0'
    );
\freq_low_46.doa_data_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(11),
      Q => doa_data(211),
      R => '0'
    );
\freq_low_46.doa_data_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(12),
      Q => doa_data(212),
      R => '0'
    );
\freq_low_46.doa_data_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(13),
      Q => doa_data(213),
      R => '0'
    );
\freq_low_46.doa_data_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(14),
      Q => doa_data(214),
      R => '0'
    );
\freq_low_46.doa_data_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envW(15),
      Q => doa_data(215),
      R => '0'
    );
\freq_low_46.doa_data_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(0),
      Q => doa_data(216),
      R => '0'
    );
\freq_low_46.doa_data_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(1),
      Q => doa_data(217),
      R => '0'
    );
\freq_low_46.doa_data_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(2),
      Q => doa_data(218),
      R => '0'
    );
\freq_low_46.doa_data_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(3),
      Q => doa_data(219),
      R => '0'
    );
\freq_low_46.doa_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(5),
      Q => doa_data(21),
      R => '0'
    );
\freq_low_46.doa_data_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(4),
      Q => doa_data(220),
      R => '0'
    );
\freq_low_46.doa_data_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(5),
      Q => doa_data(221),
      R => '0'
    );
\freq_low_46.doa_data_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(6),
      Q => doa_data(222),
      R => '0'
    );
\freq_low_46.doa_data_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(7),
      Q => doa_data(223),
      R => '0'
    );
\freq_low_46.doa_data_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(8),
      Q => doa_data(224),
      R => '0'
    );
\freq_low_46.doa_data_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(9),
      Q => doa_data(225),
      R => '0'
    );
\freq_low_46.doa_data_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(10),
      Q => doa_data(226),
      R => '0'
    );
\freq_low_46.doa_data_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(11),
      Q => doa_data(227),
      R => '0'
    );
\freq_low_46.doa_data_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(12),
      Q => doa_data(228),
      R => '0'
    );
\freq_low_46.doa_data_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(13),
      Q => doa_data(229),
      R => '0'
    );
\freq_low_46.doa_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(6),
      Q => doa_data(22),
      R => '0'
    );
\freq_low_46.doa_data_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(14),
      Q => doa_data(230),
      R => '0'
    );
\freq_low_46.doa_data_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(15),
      Q => doa_data(231),
      R => '0'
    );
\freq_low_46.doa_data_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(16),
      Q => doa_data(232),
      R => '0'
    );
\freq_low_46.doa_data_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(17),
      Q => doa_data(233),
      R => '0'
    );
\freq_low_46.doa_data_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(18),
      Q => doa_data(234),
      R => '0'
    );
\freq_low_46.doa_data_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseW(19),
      Q => doa_data(235),
      R => '0'
    );
\freq_low_46.doa_data_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(128),
      Q => doa_data(236),
      R => '0'
    );
\freq_low_46.doa_data_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(129),
      Q => doa_data(237),
      R => '0'
    );
\freq_low_46.doa_data_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(130),
      Q => doa_data(238),
      R => '0'
    );
\freq_low_46.doa_data_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(131),
      Q => doa_data(239),
      R => '0'
    );
\freq_low_46.doa_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(7),
      Q => doa_data(23),
      R => '0'
    );
\freq_low_46.doa_data_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(132),
      Q => doa_data(240),
      R => '0'
    );
\freq_low_46.doa_data_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(133),
      Q => doa_data(241),
      R => '0'
    );
\freq_low_46.doa_data_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(134),
      Q => doa_data(242),
      R => '0'
    );
\freq_low_46.doa_data_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(135),
      Q => doa_data(243),
      R => '0'
    );
\freq_low_46.doa_data_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(136),
      Q => doa_data(244),
      R => '0'
    );
\freq_low_46.doa_data_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(137),
      Q => doa_data(245),
      R => '0'
    );
\freq_low_46.doa_data_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(138),
      Q => doa_data(246),
      R => '0'
    );
\freq_low_46.doa_data_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(139),
      Q => doa_data(247),
      R => '0'
    );
\freq_low_46.doa_data_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(140),
      Q => doa_data(248),
      R => '0'
    );
\freq_low_46.doa_data_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(141),
      Q => doa_data(249),
      R => '0'
    );
\freq_low_46.doa_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(8),
      Q => doa_data(24),
      R => '0'
    );
\freq_low_46.doa_data_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(142),
      Q => doa_data(250),
      R => '0'
    );
\freq_low_46.doa_data_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(143),
      Q => doa_data(251),
      R => '0'
    );
\freq_low_46.doa_data_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(144),
      Q => doa_data(252),
      R => '0'
    );
\freq_low_46.doa_data_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(145),
      Q => doa_data(253),
      R => '0'
    );
\freq_low_46.doa_data_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(146),
      Q => doa_data(254),
      R => '0'
    );
\freq_low_46.doa_data_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(147),
      Q => doa_data(255),
      R => '0'
    );
\freq_low_46.doa_data_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(148),
      Q => doa_data(256),
      R => '0'
    );
\freq_low_46.doa_data_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(149),
      Q => doa_data(257),
      R => '0'
    );
\freq_low_46.doa_data_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(150),
      Q => doa_data(258),
      R => '0'
    );
\freq_low_46.doa_data_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(151),
      Q => doa_data(259),
      R => '0'
    );
\freq_low_46.doa_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(9),
      Q => doa_data(25),
      R => '0'
    );
\freq_low_46.doa_data_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(152),
      Q => doa_data(260),
      R => '0'
    );
\freq_low_46.doa_data_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(153),
      Q => doa_data(261),
      R => '0'
    );
\freq_low_46.doa_data_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(154),
      Q => doa_data(262),
      R => '0'
    );
\freq_low_46.doa_data_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(155),
      Q => doa_data(263),
      R => '0'
    );
\freq_low_46.doa_data_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(156),
      Q => doa_data(264),
      R => '0'
    );
\freq_low_46.doa_data_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(157),
      Q => doa_data(265),
      R => '0'
    );
\freq_low_46.doa_data_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(158),
      Q => doa_data(266),
      R => '0'
    );
\freq_low_46.doa_data_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(159),
      Q => doa_data(267),
      R => '0'
    );
\freq_low_46.doa_data_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(160),
      Q => doa_data(268),
      R => '0'
    );
\freq_low_46.doa_data_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(161),
      Q => doa_data(269),
      R => '0'
    );
\freq_low_46.doa_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(10),
      Q => doa_data(26),
      R => '0'
    );
\freq_low_46.doa_data_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(162),
      Q => doa_data(270),
      R => '0'
    );
\freq_low_46.doa_data_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(163),
      Q => doa_data(271),
      R => '0'
    );
\freq_low_46.doa_data_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(164),
      Q => doa_data(272),
      R => '0'
    );
\freq_low_46.doa_data_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(165),
      Q => doa_data(273),
      R => '0'
    );
\freq_low_46.doa_data_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(166),
      Q => doa_data(274),
      R => '0'
    );
\freq_low_46.doa_data_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(167),
      Q => doa_data(275),
      R => '0'
    );
\freq_low_46.doa_data_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(168),
      Q => doa_data(276),
      R => '0'
    );
\freq_low_46.doa_data_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(169),
      Q => doa_data(277),
      R => '0'
    );
\freq_low_46.doa_data_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(170),
      Q => doa_data(278),
      R => '0'
    );
\freq_low_46.doa_data_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(171),
      Q => doa_data(279),
      R => '0'
    );
\freq_low_46.doa_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(11),
      Q => doa_data(27),
      R => '0'
    );
\freq_low_46.doa_data_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(172),
      Q => doa_data(280),
      R => '0'
    );
\freq_low_46.doa_data_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(173),
      Q => doa_data(281),
      R => '0'
    );
\freq_low_46.doa_data_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(174),
      Q => doa_data(282),
      R => '0'
    );
\freq_low_46.doa_data_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(175),
      Q => doa_data(283),
      R => '0'
    );
\freq_low_46.doa_data_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(176),
      Q => doa_data(284),
      R => '0'
    );
\freq_low_46.doa_data_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(177),
      Q => doa_data(285),
      R => '0'
    );
\freq_low_46.doa_data_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(178),
      Q => doa_data(286),
      R => '0'
    );
\freq_low_46.doa_data_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(179),
      Q => doa_data(287),
      R => '0'
    );
\freq_low_46.doa_data_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(180),
      Q => doa_data(288),
      R => '0'
    );
\freq_low_46.doa_data_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(181),
      Q => doa_data(289),
      R => '0'
    );
\freq_low_46.doa_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(12),
      Q => doa_data(28),
      R => '0'
    );
\freq_low_46.doa_data_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(182),
      Q => doa_data(290),
      R => '0'
    );
\freq_low_46.doa_data_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(183),
      Q => doa_data(291),
      R => '0'
    );
\freq_low_46.doa_data_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(184),
      Q => doa_data(292),
      R => '0'
    );
\freq_low_46.doa_data_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(185),
      Q => doa_data(293),
      R => '0'
    );
\freq_low_46.doa_data_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(186),
      Q => doa_data(294),
      R => '0'
    );
\freq_low_46.doa_data_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(187),
      Q => doa_data(295),
      R => '0'
    );
\freq_low_46.doa_data_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(188),
      Q => doa_data(296),
      R => '0'
    );
\freq_low_46.doa_data_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(189),
      Q => doa_data(297),
      R => '0'
    );
\freq_low_46.doa_data_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(190),
      Q => doa_data(298),
      R => '0'
    );
\freq_low_46.doa_data_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(191),
      Q => doa_data(299),
      R => '0'
    );
\freq_low_46.doa_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(13),
      Q => doa_data(29),
      R => '0'
    );
\freq_low_46.doa_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(2),
      Q => doa_data(2),
      R => '0'
    );
\freq_low_46.doa_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(14),
      Q => doa_data(30),
      R => '0'
    );
\freq_low_46.doa_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(15),
      Q => doa_data(31),
      R => '0'
    );
\freq_low_46.doa_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(16),
      Q => doa_data(32),
      R => '0'
    );
\freq_low_46.doa_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(17),
      Q => doa_data(33),
      R => '0'
    );
\freq_low_46.doa_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(18),
      Q => doa_data(34),
      R => '0'
    );
\freq_low_46.doa_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => phaseN(19),
      Q => doa_data(35),
      R => '0'
    );
\freq_low_46.doa_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(0),
      Q => doa_data(36),
      R => '0'
    );
\freq_low_46.doa_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(1),
      Q => doa_data(37),
      R => '0'
    );
\freq_low_46.doa_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(2),
      Q => doa_data(38),
      R => '0'
    );
\freq_low_46.doa_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(3),
      Q => doa_data(39),
      R => '0'
    );
\freq_low_46.doa_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(3),
      Q => doa_data(3),
      R => '0'
    );
\freq_low_46.doa_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(4),
      Q => doa_data(40),
      R => '0'
    );
\freq_low_46.doa_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(5),
      Q => doa_data(41),
      R => '0'
    );
\freq_low_46.doa_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(6),
      Q => doa_data(42),
      R => '0'
    );
\freq_low_46.doa_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(7),
      Q => doa_data(43),
      R => '0'
    );
\freq_low_46.doa_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(8),
      Q => doa_data(44),
      R => '0'
    );
\freq_low_46.doa_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(9),
      Q => doa_data(45),
      R => '0'
    );
\freq_low_46.doa_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(10),
      Q => doa_data(46),
      R => '0'
    );
\freq_low_46.doa_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(11),
      Q => doa_data(47),
      R => '0'
    );
\freq_low_46.doa_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(12),
      Q => doa_data(48),
      R => '0'
    );
\freq_low_46.doa_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(13),
      Q => doa_data(49),
      R => '0'
    );
\freq_low_46.doa_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(4),
      Q => doa_data(4),
      R => '0'
    );
\freq_low_46.doa_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(14),
      Q => doa_data(50),
      R => '0'
    );
\freq_low_46.doa_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(15),
      Q => doa_data(51),
      R => '0'
    );
\freq_low_46.doa_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(16),
      Q => doa_data(52),
      R => '0'
    );
\freq_low_46.doa_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(17),
      Q => doa_data(53),
      R => '0'
    );
\freq_low_46.doa_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(18),
      Q => doa_data(54),
      R => '0'
    );
\freq_low_46.doa_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(19),
      Q => doa_data(55),
      R => '0'
    );
\freq_low_46.doa_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(20),
      Q => doa_data(56),
      R => '0'
    );
\freq_low_46.doa_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(21),
      Q => doa_data(57),
      R => '0'
    );
\freq_low_46.doa_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(22),
      Q => doa_data(58),
      R => '0'
    );
\freq_low_46.doa_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(23),
      Q => doa_data(59),
      R => '0'
    );
\freq_low_46.doa_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(5),
      Q => doa_data(5),
      R => '0'
    );
\freq_low_46.doa_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(24),
      Q => doa_data(60),
      R => '0'
    );
\freq_low_46.doa_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(25),
      Q => doa_data(61),
      R => '0'
    );
\freq_low_46.doa_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(26),
      Q => doa_data(62),
      R => '0'
    );
\freq_low_46.doa_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(27),
      Q => doa_data(63),
      R => '0'
    );
\freq_low_46.doa_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(28),
      Q => doa_data(64),
      R => '0'
    );
\freq_low_46.doa_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(29),
      Q => doa_data(65),
      R => '0'
    );
\freq_low_46.doa_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(30),
      Q => doa_data(66),
      R => '0'
    );
\freq_low_46.doa_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(31),
      Q => doa_data(67),
      R => '0'
    );
\freq_low_46.doa_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(32),
      Q => doa_data(68),
      R => '0'
    );
\freq_low_46.doa_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(33),
      Q => doa_data(69),
      R => '0'
    );
\freq_low_46.doa_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(6),
      Q => doa_data(6),
      R => '0'
    );
\freq_low_46.doa_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(34),
      Q => doa_data(70),
      R => '0'
    );
\freq_low_46.doa_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(35),
      Q => doa_data(71),
      R => '0'
    );
\freq_low_46.doa_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(36),
      Q => doa_data(72),
      R => '0'
    );
\freq_low_46.doa_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(37),
      Q => doa_data(73),
      R => '0'
    );
\freq_low_46.doa_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(38),
      Q => doa_data(74),
      R => '0'
    );
\freq_low_46.doa_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(39),
      Q => doa_data(75),
      R => '0'
    );
\freq_low_46.doa_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(40),
      Q => doa_data(76),
      R => '0'
    );
\freq_low_46.doa_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(41),
      Q => doa_data(77),
      R => '0'
    );
\freq_low_46.doa_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(42),
      Q => doa_data(78),
      R => '0'
    );
\freq_low_46.doa_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(43),
      Q => doa_data(79),
      R => '0'
    );
\freq_low_46.doa_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(7),
      Q => doa_data(7),
      R => '0'
    );
\freq_low_46.doa_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(44),
      Q => doa_data(80),
      R => '0'
    );
\freq_low_46.doa_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(45),
      Q => doa_data(81),
      R => '0'
    );
\freq_low_46.doa_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(46),
      Q => doa_data(82),
      R => '0'
    );
\freq_low_46.doa_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(47),
      Q => doa_data(83),
      R => '0'
    );
\freq_low_46.doa_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(48),
      Q => doa_data(84),
      R => '0'
    );
\freq_low_46.doa_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(49),
      Q => doa_data(85),
      R => '0'
    );
\freq_low_46.doa_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(50),
      Q => doa_data(86),
      R => '0'
    );
\freq_low_46.doa_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(51),
      Q => doa_data(87),
      R => '0'
    );
\freq_low_46.doa_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(52),
      Q => doa_data(88),
      R => '0'
    );
\freq_low_46.doa_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(53),
      Q => doa_data(89),
      R => '0'
    );
\freq_low_46.doa_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(8),
      Q => doa_data(8),
      R => '0'
    );
\freq_low_46.doa_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(54),
      Q => doa_data(90),
      R => '0'
    );
\freq_low_46.doa_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(55),
      Q => doa_data(91),
      R => '0'
    );
\freq_low_46.doa_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(56),
      Q => doa_data(92),
      R => '0'
    );
\freq_low_46.doa_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(57),
      Q => doa_data(93),
      R => '0'
    );
\freq_low_46.doa_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(58),
      Q => doa_data(94),
      R => '0'
    );
\freq_low_46.doa_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(59),
      Q => doa_data(95),
      R => '0'
    );
\freq_low_46.doa_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(60),
      Q => doa_data(96),
      R => '0'
    );
\freq_low_46.doa_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(61),
      Q => doa_data(97),
      R => '0'
    );
\freq_low_46.doa_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(62),
      Q => doa_data(98),
      R => '0'
    );
\freq_low_46.doa_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => raw_fifo_data(63),
      Q => doa_data(99),
      R => '0'
    );
\freq_low_46.doa_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid,
      D => envN(9),
      Q => doa_data(9),
      R => '0'
    );
\freq_low_46.doa_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid,
      Q => \^doa_wr\,
      R => '0'
    );
\freq_low_46.freq_fifo_rd_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => freq_fifo_empty,
      I1 => freq_rd_delay(1),
      I2 => freq_rd_delay(2),
      I3 => freq_rd_delay(0),
      O => \freq_low_46.freq_fifo_rd_i_1_n_0\
    );
\freq_low_46.freq_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.freq_fifo_rd_i_1_n_0\,
      Q => freq_fifo_rd,
      R => '0'
    );
\freq_low_46.freq_fifo_valid_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => freq_fifo_rd,
      I1 => freq_fifo_empty,
      O => freq_fifo_valid0
    );
\freq_low_46.freq_fifo_valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => freq_fifo_valid0,
      Q => freq_fifo_valid,
      R => '0'
    );
\freq_low_46.freq_rd_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_rd_delay(0),
      O => freq_rd_delay0(0)
    );
\freq_low_46.freq_rd_delay[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => freq_rd_delay(0),
      I1 => freq_rd_delay(2),
      I2 => freq_rd_delay(1),
      O => \freq_low_46.freq_rd_delay[1]_i_1_n_0\
    );
\freq_low_46.freq_rd_delay[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => freq_rd_delay(0),
      I1 => freq_rd_delay(1),
      O => \freq_low_46.freq_rd_delay[1]_i_2_n_0\
    );
\freq_low_46.freq_rd_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => freq_rd_delay(0),
      I1 => freq_rd_delay(2),
      I2 => freq_rd_delay(1),
      O => \freq_low_46.freq_rd_delay[2]_i_1_n_0\
    );
\freq_low_46.freq_rd_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[1]_i_1_n_0\,
      D => freq_rd_delay0(0),
      Q => freq_rd_delay(0),
      S => freq_fifo_empty
    );
\freq_low_46.freq_rd_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \freq_low_46.freq_rd_delay[1]_i_1_n_0\,
      D => \freq_low_46.freq_rd_delay[1]_i_2_n_0\,
      Q => freq_rd_delay(1),
      S => freq_fifo_empty
    );
\freq_low_46.freq_rd_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.freq_rd_delay[2]_i_1_n_0\,
      Q => freq_rd_delay(2),
      S => freq_fifo_empty
    );
\freq_low_46.morlet_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      I1 => freq_fifo_valid,
      I2 => data0,
      O => \freq_low_46.morlet_active_i_1_n_0\
    );
\freq_low_46.morlet_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.morlet_active_i_1_n_0\,
      Q => \freq_low_46.morlet_active_reg_n_0\,
      R => '0'
    );
\freq_low_46.start_delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100010FFFFAAAA"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_4_n_0\,
      I1 => \freq_low_46.start_delay[7]_i_7_n_0\,
      I2 => \freq_low_46.start_delay_reg\(2),
      I3 => \freq_low_46.start_delay[7]_i_6_n_0\,
      I4 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I5 => \freq_low_46.start_delay_reg\(0),
      O => \freq_low_46.start_delay[0]_i_1_n_0\
    );
\freq_low_46.start_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(1),
      O => start_delay0(1)
    );
\freq_low_46.start_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(1),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay_reg\(2),
      O => start_delay0(2)
    );
\freq_low_46.start_delay[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(1),
      I3 => \freq_low_46.start_delay_reg\(3),
      O => start_delay0(3)
    );
\freq_low_46.start_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(3),
      I1 => \freq_low_46.start_delay_reg\(1),
      I2 => \freq_low_46.start_delay_reg\(2),
      I3 => \freq_low_46.start_delay_reg\(0),
      I4 => \freq_low_46.start_delay_reg\(4),
      O => start_delay0(4)
    );
\freq_low_46.start_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(4),
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay_reg\(2),
      I3 => \freq_low_46.start_delay_reg\(1),
      I4 => \freq_low_46.start_delay_reg\(3),
      I5 => \freq_low_46.start_delay_reg\(5),
      O => start_delay0(5)
    );
\freq_low_46.start_delay[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_8_n_0\,
      I1 => \freq_low_46.start_delay_reg\(4),
      I2 => \freq_low_46.start_delay_reg\(5),
      I3 => \freq_low_46.start_delay_reg\(6),
      O => start_delay0(6)
    );
\freq_low_46.start_delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EFEE"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_4_n_0\,
      I1 => \freq_low_46.start_delay[7]_i_5_n_0\,
      I2 => \freq_low_46.start_delay_reg\(0),
      I3 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I4 => freq_fifo_valid,
      I5 => \freq_low_46.curr_delay[7]_i_5_n_0\,
      O => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEE2EE"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_4_n_0\,
      I1 => \freq_low_46.start_delay_reg\(0),
      I2 => \freq_low_46.start_delay[7]_i_6_n_0\,
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay[7]_i_7_n_0\,
      I5 => \freq_low_46.start_delay[7]_i_4_n_0\,
      O => \freq_low_46.start_delay[7]_i_2_n_0\
    );
\freq_low_46.start_delay[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \freq_low_46.start_delay[7]_i_8_n_0\,
      I1 => \freq_low_46.start_delay_reg\(4),
      I2 => \freq_low_46.start_delay_reg\(6),
      I3 => \freq_low_46.start_delay_reg\(5),
      I4 => \freq_low_46.start_delay_reg\(7),
      O => start_delay0(7)
    );
\freq_low_46.start_delay[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(4),
      I1 => \freq_low_46.start_delay_reg\(3),
      I2 => \freq_low_46.start_delay_reg\(1),
      O => \freq_low_46.start_delay[7]_i_4_n_0\
    );
\freq_low_46.start_delay[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000001FF0000"
    )
        port map (
      I0 => freq_fifo_valid,
      I1 => \freq_low_46.start_delay[7]_i_9_n_0\,
      I2 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      I3 => \freq_low_46.start_delay_reg\(2),
      I4 => \freq_low_46.start_delay_reg\(0),
      I5 => \freq_low_46.start_delay[7]_i_7_n_0\,
      O => \freq_low_46.start_delay[7]_i_5_n_0\
    );
\freq_low_46.start_delay[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \freq_low_46.curr_delay[7]_i_14_n_0\,
      I1 => \freq_low_46.curr_delay_reg\(1),
      I2 => \freq_low_46.curr_delay_reg\(0),
      I3 => \freq_low_46.curr_delay_reg\(3),
      I4 => \freq_low_46.curr_delay_reg\(2),
      I5 => freq_fifo_valid,
      O => \freq_low_46.start_delay[7]_i_6_n_0\
    );
\freq_low_46.start_delay[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(6),
      I1 => \freq_low_46.start_delay_reg\(5),
      I2 => \freq_low_46.start_delay_reg\(7),
      O => \freq_low_46.start_delay[7]_i_7_n_0\
    );
\freq_low_46.start_delay[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \freq_low_46.start_delay_reg\(0),
      I1 => \freq_low_46.start_delay_reg\(2),
      I2 => \freq_low_46.start_delay_reg\(1),
      I3 => \freq_low_46.start_delay_reg\(3),
      O => \freq_low_46.start_delay[7]_i_8_n_0\
    );
\freq_low_46.start_delay[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \freq_low_46.curr_delay_reg\(1),
      I1 => \freq_low_46.curr_delay_reg\(0),
      I2 => \freq_low_46.curr_delay_reg\(3),
      I3 => \freq_low_46.curr_delay_reg\(2),
      O => \freq_low_46.start_delay[7]_i_9_n_0\
    );
\freq_low_46.start_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_low_46.start_delay[0]_i_1_n_0\,
      Q => \freq_low_46.start_delay_reg\(0),
      R => '0'
    );
\freq_low_46.start_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(1),
      Q => \freq_low_46.start_delay_reg\(1),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(2),
      Q => \freq_low_46.start_delay_reg\(2),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(3),
      Q => \freq_low_46.start_delay_reg\(3),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(4),
      Q => \freq_low_46.start_delay_reg\(4),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(5),
      Q => \freq_low_46.start_delay_reg\(5),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(6),
      Q => \freq_low_46.start_delay_reg\(6),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
\freq_low_46.start_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \freq_low_46.start_delay[7]_i_2_n_0\,
      D => start_delay0(7),
      Q => \freq_low_46.start_delay_reg\(7),
      R => \freq_low_46.start_delay[7]_i_1_n_0\
    );
phase_err_i: entity work.ps_freq_low_46_0_0_phase_err
     port map (
      active => active0,
      clk => clk,
      env_in_E(15 downto 0) => env_E(15 downto 0),
      env_in_N(15 downto 0) => env_N(15 downto 0),
      env_in_W(15 downto 0) => env_W(15 downto 0),
      env_out_E(15 downto 0) => envE(15 downto 0),
      env_out_N(15 downto 0) => envN(15 downto 0),
      env_out_W(15 downto 0) => envW(15 downto 0),
      err_EW(11 downto 0) => NLW_phase_err_i_err_EW_UNCONNECTED(11 downto 0),
      err_NE(11 downto 0) => NLW_phase_err_i_err_NE_UNCONNECTED(11 downto 0),
      err_NW(11 downto 0) => NLW_phase_err_i_err_NW_UNCONNECTED(11 downto 0),
      phase_in_E(19 downto 0) => phase_E(19 downto 0),
      phase_in_N(19 downto 0) => phase_N(19 downto 0),
      phase_in_W(19 downto 0) => phase_W(19 downto 0),
      phase_out_E(19 downto 0) => phaseE(19 downto 0),
      phase_out_N(19 downto 0) => phaseN(19 downto 0),
      phase_out_W(19 downto 0) => phaseW(19 downto 0),
      valid => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_freq_low_46_0_0 is
  port (
    fifo_clk : in STD_LOGIC;
    raw_wr : in STD_LOGIC;
    raw_data : in STD_LOGIC_VECTOR ( 191 downto 0 );
    freq_wr : in STD_LOGIC;
    freq_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doa_wr : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 299 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_freq_low_46_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_freq_low_46_0_0 : entity is "ps_freq_low_46_0_0,freq_low_46,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_freq_low_46_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_freq_low_46_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_freq_low_46_0_0 : entity is "freq_low_46,Vivado 2025.1";
end ps_freq_low_46_0_0;

architecture STRUCTURE of ps_freq_low_46_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_freq_low_46_0_0_freq_low_46
     port map (
      clk => clk,
      doa_data(299 downto 0) => doa_data(299 downto 0),
      doa_wr => doa_wr,
      fifo_clk => fifo_clk,
      freq_data(47 downto 0) => freq_data(47 downto 0),
      freq_wr => freq_wr,
      raw_data(191 downto 0) => raw_data(191 downto 0),
      raw_wr => raw_wr,
      reset => reset
    );
end STRUCTURE;
